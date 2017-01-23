<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Sites extends Model
{
  const CREATED_AT = 'created_on';
  const UPDATED_AT = 'updated_on';

  protected $table = 'sites';

  public function urls()
      {
          return $this->hasMany('App\Model\Urls', 'id_sites' , 'id');
      }

}
