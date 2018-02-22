<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;

class Commuting extends Model
{
    //

    protected $table = 'commuting';

    //tid转换人名
 	public function gettidAttribute($value)
	{
		$user = DB::table('users')->where('id', $value)->first();
		return $user->name;
	}

	// //sid转换人名
	// public function getsidAttribute($value)
	// {
	// 	$stu = DB::table('students')->where('id', $value)->first();
	// 	return $stu->name;
	// }
	//通勤字段0为请假，1为旷课，2为迟到，3为早退
	public function getcommutingAttribute($value)
	{
		switch ($value) {
			case '0':
					return "请假";
				break;
			case '1':
					return "旷课";
				break;
			case '2':
					return "迟到";
				break;
			case '3':
					return "早退";
				break;
			default:
				# code...
				break;
		}
		
	}
}