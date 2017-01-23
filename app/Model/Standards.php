<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Standards extends Model
{
  const CREATED_AT = 'created_on';
  const UPDATED_AT = 'updated_on';

  protected $table = 'standards';


}
