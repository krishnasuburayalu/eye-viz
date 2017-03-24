<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Intervention\Image\Facades\Image;
use Exception;

class ScreenshotController extends Controller
{
  public function render($execution_id = null, $site_id = NULL, $name = NULL)
  {
      $storagePath = storage_path('/app/screenshots/' . $execution_id . '/' . $site_id . '/' . $name);
      try{
            return Image::make($storagePath)->response();
      } catch( Exception $e){
          abort(404); //if the image was not found send back 404
      }

  }
}
