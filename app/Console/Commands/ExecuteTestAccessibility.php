<?php

namespace App\Console\Commands;
use Session;
use Request;
use DB;
use Illuminate\Console\Command;

use Symfony\Component\Process\Process;
use Symfony\Component\Process\Exception\ProcessFailedException;

use App\Helper\ExecutionHelper;


class ExecuteTestAccessibility extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'at:run {execution_id : Execution Id} {--d|debug=false}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'A command-line interface which loads web pages and highlights any accessibility issues it finds. Useful in CI, or for when you want to run a one-off test against a web page.';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        $execution = ExecutionHelper::begin_execution(1);
        if(!$execution){
           return false;
        }
    }
}
