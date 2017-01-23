<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SitesUrls extends Model
{


  protected $table = 'sites_urls';

  public function sites()
    {
        return $this->hasOne('App\Model\Sites');
    }

  public function urls()
      {
          return $this->hasMany('App\Model\Urls');
      }

}
