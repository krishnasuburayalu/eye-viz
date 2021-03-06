<?php 
namespace App\Helper;

use Session;
use Request;
use DB;
use App\Model\Execution;
use App\Model\Standards;
use App\Model\TestResults;
use App\Model\Sites;
use Carbon\Carbon;
use Exception;
use Storage;

use JonnyW\PhantomJs\Client;
use JonnyW\PhantomJs\DependencyInjection\ServiceContainer;

use App\Jobs\RunAccessibilityTests;
use App\Jobs\ScreenShotDaemon;

use Symfony\Component\Process\Process;
use Symfony\Component\Process\Exception\ProcessFailedException;

class ExecutionHelper extends Helper
{
    const DEFAULT_STANDARD = '{ "standard": "WCAG2AA"}';
    const QUEUE_ACTION_BEFORE = 0;// do this action at first
    const QUEUE_ACTION_DEFAULT = 1; //run the test
    const QUEUE_ACTION_DUMMY = 2; //just use this for dummy job, dont do anything
    const QUEUE_ACTION_AFTER = 3;// do this action after running an execution
    const QUEUE_CAPTURE_SCREEN = 4;// do this action at last

    /**
     * begin execution collect site urls from execution id
     * @param  [type] $execution_id [description]
     * @return [type]               [description]
     */
    public static function begin_execution($execution_id = null)
    {
        if (!$execution_id) {
            return false;
        }
        //get execution by id
       $execution = Execution::find($execution_id);
        if (!$execution) {
            throw new Exception('Instance not found');
        }
       //get site info for this execution
       $sites = $execution->sites;
        if (!$sites) {
            throw new Exception('Site not found');
        }

       //get url list for thie execution
       $urls = $execution->urls;
        if (!$urls) {
            throw new Exception('Url not found');
        }

       //get accessablity standard
       $standard = Standards::find($execution->sites->id_standards);
        if (!$standard) {
            $standard = ExecutionHelper::DEFAULT_STANDARD;
        } else {
            $standard = $standard->name;
        }
        $url_count = 0;
       //create job array;
       foreach ($urls as $url) {
           $data = array();
           if ($url->url || !empty($url->url)) {
               $data['action'] = ExecutionHelper::QUEUE_ACTION_DEFAULT;
               $data['url'] = $url->url;
               if($url->config || !empty($url->config)){$data['config'] = $url->config;}
               $data['site_id'] = $sites->id;
               $data['standard'] = $standard;
               $data['execution_id'] = $execution_id;

               dispatch((new RunAccessibilityTests($data)));
               $url_count++;
           }
       }

       //update pushed url counts to execution
       Execution::where('id', $execution_id)->update(array('t_pushed' => $urls->count()));

       //will add some dummy jobs later
       //once all urls pushed into queue send job for stats collection
       $data = array();
       $data['action'] = ExecutionHelper::QUEUE_ACTION_AFTER;
       $data['site_id'] = $sites->id;
       $data['standard'] = $standard;
       $data['execution_id'] = $execution_id;
       dispatch((new RunAccessibilityTests($data)));
       return true;
    }

    /**
     * run_test executes tests
     * @param  [type] $test_data [description]
     * @return [type]            [description]
     */
    public static function run_test($test_data = null){
        //run job
      if (!$test_data) {
          throw new Exception('Test data not found');
      }
       //get standard form job
      $standard = array_get($test_data, 'standard', ExecutionHelper::DEFAULT_STANDARD);

      //get config from job
      $config = str_random().'.json';
      Storage::put($config, array_get($test_data, 'config', ExecutionHelper::DEFAULT_STANDARD));

      //get execution_id form job
     $execution_id = array_get($test_data, 'execution_id', null);
        if (!$execution_id) {
            throw new Exception('Execution_id not found');
        }

        //get execution_id form job
       $site_id = array_get($test_data, 'site_id', null);
          if (!$site_id) {
              throw new Exception('Site id not found');
          }

      //get url form job
      $url = array_get($test_data, 'url', null);
        if (!$url) {
            throw new Exception('Url not found');
        }
      //get standard form job
      $command = '/usr/local/bin/pa11y';
      if($config || !empty($config)) { 
        $command .= ' --config '.storage_path().'/app/'.$config; 
      }
      $command .= ' --reporter json  '.  $url;
      
     $process = new Process($command);
     // $process = new Process('/usr/local/bin/pa11y --standard '. $standard .' --config'.$config.' --reporter json  '.  $url);
        $process->run();
        $result_raw = $process->getOutput();
        $results = json_decode($result_raw, true);
        foreach ($results as $result) {
          $res = new TestResults();
          $res->id_execution = $execution_id;
          $res->id_sites = $site_id;
          $res->url = $url;
          $res->standard = $standard;
          $res->code = array_get($result, 'code', null);
          $res->context = array_get($result, 'context', null);
          $res->message = array_get($result, 'message', null);
          $res->selector = array_get($result, 'selector', null);
          $res->type = array_get($result, 'type', null);
          $res->typeCode = array_get($result, 'typeCode', null);

          //$res->screenshot = \App\Helper\ExecutionHelper::captureElement($res);
          $res->save();

            $data = array();
            $data['action'] = ExecutionHelper::QUEUE_CAPTURE_SCREEN;
            $data['resource'] = $res;
            dispatch((new ScreenShotDaemon($data)));
        }
        Storage::delete($config);
    }
    

    /**
     * get_execution_id create execution ID
     * @param  [type] $site_id [description]
     * @return [type]          [description]
     */
    public static function get_execution_id($site_id = NULL){
      if (!$site_id) {
          throw new Exception('Require valid site name/id');
      }
      //get execution by id
      $site = Sites::where('id', '=', $site_id)
                ->where('is_active','=', 1)->first();
       if (!$site) {
          throw new Exception('Site not found');
      }
      $execution = new Execution();
      $execution->id_sites = $site->id;
      $execution->id_standards = $site->id_standards;
      $execution->is_active = 1;
      $execution->notes = 'Execution: ' . ExecutionHelper::get_formatted_now();
      $execution->save();
      if(!$execution->id){
          throw new Exception('Error creating execution ID');
      }
      return $execution->id;
    }

    /**
     * update_execution_stats delegates process of collecting stats of the execution
     * @param  [type] $execution [description]
     * @return [type]            [description]
     */
    public static function update_execution_stats($execution = NULL){
      //get standard form job
     $execution_id = array_get($execution, 'execution_id',NULL);
      if(!$execution_id){
          throw new Exception('Error creating execution ID');
      }

      $execution = Execution::find($execution_id);
       if (!$execution) {
           throw new Exception('Instance not found');
       }
      //get site info for this execution
      $sites = $execution->sites;
       if (!$sites) {
           throw new Exception('Site not found');
       }
       $site_count = $sites->count();
       $type_count = DB::table('test_results')
                 ->select('type', DB::raw('count(*) as total'))
                 ->where('id_execution' , '=', $execution_id)
                 ->groupBy('type')
                 ->get()->toArray();;
      $totals = array();
      foreach($type_count as $t_c){
            $type = $t_c->type;
            $count = $t_c->total;
            switch($type){
              case 'error' :
              $totals['t_error'] = $count;
              break;
              case 'notice' :
              $totals['t_notice'] = $count;
              break;
              case 'warning' :
              $totals['t_warning'] = $count;
              break;
              case 'none' :
              $totals['t_success'] = $count;
              break;
            }
      }
      if(!empty($totals)){
        Execution::where('id', $execution_id)->update($totals);
      }
      return true;
    }

    /**
     * captureElement executes the phantom script to capture screen and posts to DB
     * @param  [type] $resource [description]
     * @return [type]           [description]
     */
    public static function captureElement($resource = NULL){
        if(!$resource){
          return false;
        }
        
        $partialData = \App\Helper\ExecutionHelper::writeProcedure($resource);

        $location = storage_path().'/app/procs/';
        
        $serviceContainer = ServiceContainer::getInstance();
    
        $procedureLoader = $serviceContainer->get('procedure_loader_factory')
            ->createProcedureLoader($location);
        $client = Client::getInstance();
        $client->setProcedure($partialData['proc']);
        $client->getProcedureLoader()->addLoader($procedureLoader);
        $request  = $client->getMessageFactory()->createRequest();
        $response = $client->getMessageFactory()->createResponse();

        $client->send($request, $response);
        Storage::delete('/procs/'.$partialData['proc'].'.proc');
        return $partialData['image'];
    }

    /**
     * writeProcedure Creates the phantomjs procedure for taking screenshot
     * @param  [type] $resource [description]
     * @return [type]           [description]
     */
    public static function writeProcedure($resource = NULL){
        if(!$resource){
          return false;
        }
        $imagefilename = 'app/screenshots/'.$resource->id_execution.'/'.$resource->id_sites.'/'.$resource->code.'-'.$resource->id.'.jpeg';
        $procname = str_random();
        $filecontent = "// $procname.proc

        var page = require('webpage').create();
        page.settings.userAgent = 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36';
        page.viewportSize = { width: 1280, height: 720 };
        page.open('".$resource->url."', function(status) {
            if (status !== 'success') {
                console.log('Unable to load the address!');
                phantom.exit();
            }else{
              // setTimeout(function() {
                scrollpsn = page.evaluate(function(){
                  document.querySelector(\"".$resource->selector."\").setAttribute('style', document.querySelector(\"".$resource->selector."\").getAttribute('style') + ';border-color: #FF0000; border-style: dashed; border-width: 3px;');

                    return document.body.innerHTML = '<div style=\"position: absolute;z-index: 9990;background: rgba(0,0,0,.9); max-width:480px; top:'+(document.querySelector(\"".$resource->selector."\").getBoundingClientRect().bottom) +'px; left:'+document.querySelector(\"".$resource->selector."\").getBoundingClientRect().left+'px\"><p style=\"width:100%;color:#FFF200;vertical-align: top;\">".addslashes($resource->message).'<br><i>'.$resource->selector."</i></p></div>'+document.body.innerHTML;

                });

                // scrollpsn = page.evaluate(function(){
                //     return document.querySelector(\"".$resource->selector."\").setAttribute('style', document.querySelector(\"".$resource->selector."\").getAttribute('style') + ';border-color: #FF0000; border-style: dashed; border-width: 3px;');
                // }); 
                page.render('". storage_path().'/'.$imagefilename ."', {format: 'jpeg', quality: '40'});
              // }, 1000);

            }
            phantom.exit();
        });";

        Storage::put('/procs/'.$procname.'.proc', $filecontent);
        return ['proc' => $procname,
                'image' => Storage::url($imagefilename)];
                // 'image' => Storage::url($imagefilename)];
    }

    /**
     * capture_screen_queue delegates the screen capturing process to a queue.
     * @param  [type] $capturedata  [description]
     * @return [type]               [description]
     */
    public static function capture_screen_queue($capturedata = NULL){
        $res = TestResults::find($capturedata->id);

        $res->screenshot = \App\Helper\ExecutionHelper::captureElement($capturedata);
        $res->save();

        return true;
    }

}