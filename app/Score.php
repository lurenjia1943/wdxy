<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;

class Score extends Model
{
    //

    protected $table = 'score';


 	public function gettidAttribute($value)
	{
		$user = DB::table('users')->where('id', $value)->first();
		return $user->name;
	}
}