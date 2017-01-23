<?php namespace App\Helper;

use App\Model\Execution;
use App\Model\Standards;
use App\Model\TestResults;

use App\Jobs\RunAccessibilityTests;
use Symfony\Component\Process\Process;
use Symfony\Component\Process\Exception\ProcessFailedException;

class ExecutionHelper extends Helper
{
    const DEFAULT_STANDARD = 'Section508';

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

       //create job array;
       foreach ($urls as $url) {
           $data = array();
           if ($url->url || !empty($url->url)) {
               $data['url'] = $url->url;
               $data['site_id'] = $sites->id;
               $data['standard'] = $standard;
               $data['execution_id'] = $execution_id;
               dispatch(new RunAccessibilityTests($data));
           }
       }
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
}
