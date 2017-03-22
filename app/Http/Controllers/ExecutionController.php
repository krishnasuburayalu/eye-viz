<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model\Execution;
// use Illuminate\Console\Application as Artisan;
use Artisan;
use CRUDBooster;

class ExecutionController extends Controller
{
    //

    public function begin_execution($execution_id = null)
    {
        if ($execution_id) {
            return false;
        }
      $execution = Execution::find($execution_id);
      if(!$execution){
        return false;
      }
      print_r($execution);

    }

    public function ExecuteTest($id=null){
      if(!$id){
        return false;
      }

      Artisan::call('at:run', ['site_id'=>$id]);
      
      CRUDBooster::redirect('/admin/sites?m=3','Test has been initiated.','success');
    }
}
