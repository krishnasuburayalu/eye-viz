<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Execution extends Model
{
    const CREATED_AT = 'created_on';
    const UPDATED_AT = 'updated_on';

    protected $table = 'execution';
    protected $primaryKey = 'id';

    public function urls()
    {
        return $this->hasMany('App\Model\Urls', 'id_sites', 'id_sites');
    }

    public function sites()
    {
        return $this->hasOne('App\Model\Sites', 'id', 'id_sites');
    }
}
