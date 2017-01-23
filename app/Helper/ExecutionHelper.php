<?php namespace App\Helper;
use Session;
use Request;
use DB;
use App\Model\Execution;
use App\Model\Standards;
use App\Model\TestResults;
use App\Model\Sites;
use Carbon\Carbon;
use Exception;

use App\Jobs\RunAccessibilityTests;
use Symfony\Component\Process\Process;
use Symfony\Component\Process\Exception\ProcessFailedException;

class ExecutionHelper extends Helper
{
    const DEFAULT_STANDARD = 'Section508';
    const QUEUE_ACTION_BEFORE = 0;// do this action at first
    const QUEUE_ACTION_DEFAULT = 1; //run the test
    const QUEUE_ACTION_DUMMY = 2; //just use this for dummy job, dont do anything
    const QUEUE_ACTION_AFTER = 3;// do this action at last

    // begin execution collect site urls from execution id
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
               $data['site_id'] = $sites->id;
               $data['standard'] = $standard;
               $data['execution_id'] = $execution_id;
               dispatch(new RunAccessibilityTests($data));
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
       dispatch(new RunAccessibilityTests($data));
       return true;
    }

    public static function run_test($test_data = null)
    {
        //run job
      if (!$test_data) {
          throw new Exception('Test data not found');
      }
       //get standard form job
      $standard = array_get($test_data, 'standard', ExecutionHelper::DEFAULT_STANDARD);

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
     $process = new Process('/usr/local/bin/pa11y --standard '. $standard .' --reporter json  '.  $url);
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
          $res->save();
        }
    }

    //create execution ID and
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


}
