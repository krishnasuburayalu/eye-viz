<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Urls extends Model
{
    const CREATED_AT = 'created_on';
    const UPDATED_AT = 'updated_on';

    protected $table = 'urls';

    public function urls()
    {
        return $this->hasMany('App\Model\Urls', 'id', 'id_urls');
    }
}
