<?php namespace App\Helper;

use Session;
use Request;
use DB;

use Carbon\Carbon;


class Helper
{
  //helper to create formated date and time
  public static function get_formatted_now(){
      $dt = Carbon::now();
      return $dt->toDayDateTimeString(); // Sat, Dec 19, 2015 10:10 AM
  }

}
