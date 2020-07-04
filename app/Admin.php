<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Admin extends Model
{

//    protected $fillable = [
//        'username', 'email', 'password',
//    ];
    protected $guarded=[];

    protected $casts = [
        'email_verified_at' => 'datetime',
    ];


}
