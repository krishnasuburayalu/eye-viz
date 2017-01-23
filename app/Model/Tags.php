<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tags extends Model
{
  const CREATED_AT = 'created_on';
  const UPDATED_AT = 'updated_on';

  protected $table = 'tags';


}
