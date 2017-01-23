<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class TestResults extends Model
{
  const CREATED_AT = 'created_on';
  const UPDATED_AT = 'updated_on';

  protected $table = 'test_results';

  protected $fillable = ['code', 'context', 'message', 'selector', 'type','typeCode', 'id_execution', 'id_sites', 'url', 'standard'];

  public function sites()
    {
        return $this->hasOne('App\Model\Sites');
    }

}
