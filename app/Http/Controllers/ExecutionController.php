<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model\Execution;

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
      print_r($execution)

    }
}
