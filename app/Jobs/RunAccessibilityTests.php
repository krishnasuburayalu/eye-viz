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
         ExecutionHelper::run_test($this->test_data);
    }
}
