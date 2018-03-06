<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;

class Liuji extends Model
{
    //

    protected $table = 'liuji';

    public function gettidAttribute($value)
	{
		$user = DB::table('users')->where('id', $value)->first();
		return $user->name;
	}
}