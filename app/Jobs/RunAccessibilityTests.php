<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;

use App\Helper\ExecutionHelper;


class RunAccessibilityTests implements ShouldQueue
{
    use InteractsWithQueue, Queueable, SerializesModels;

    protected $test_data;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct($test_data)
    {
         $this->test_data = $test_data;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        $action = array_get($this->test_data, 'action', ExecutionHelper::QUEUE_ACTION_DUMMY);
        switch($action){
            case ExecutionHelper::QUEUE_ACTION_DUMMY:
              return true;
            break;
            case ExecutionHelper::QUEUE_ACTION_DEFAULT:
              ExecutionHelper::run_test($this->test_data);
             break;
            case ExecutionHelper::QUEUE_ACTION_AFTER:
              ExecutionHelper::update_execution_stats($this->test_data);
            break;
            case ExecutionHelper::QUEUE_CAPTURE_SCREEN:
                $resource = array_get($this->test_data, 'resource', null);
                if($resource){      
                    ExecutionHelper::capture_screen_queue($resource);
                }
                break;
            default:
              return true;
        }

    }
}
