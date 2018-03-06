<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\Student;
use App\Classs;
use App\User;
use App\Commuting;
use DB;
use Carbon\Carbon;
class CommutingController extends Controller
{
	
    public function index($id)
    {
      $class = Classs::where('id', $id)->first();
    	$student = DB::table('commuting')
              ->where('commuting.classid',$id)
              ->join('students', 'commuting.sid', '=', 'students.id')
              ->select('students.name','students.sex','students.iphone','commuting.*')
					    ->get(); 
      $stuname = DB::table('students')->where('classid',$id)->get();
      
         return view('commuting',['student'=>$student,'class'=>$class,'stuname'=>$stuname]);
    }
    //考勤记入
     public function store(Request $request)
     {
       $Commuting = new Commuting;
       $name = $request->name;     
       $classid = $request->classid;                
       $stu = DB::table('students')
              ->where('name',$name)
              ->where('classid',$classid)
              ->first();                                      
      if(empty($stu)){
         return view("404",['message'=>"这个班没有这个同学唷"]);
      }else{
         $Commuting->sid =  $stu->id;
         $Commuting->classid = $classid;
         $Commuting->commuting = $request->commuting;
         $Commuting->time = $request->time;
         $Commuting->describe = $request->describe;
         $Commuting->save();
          return redirect()->route('kaoqin', ['classid' => $request->classid]);
      }                                                                                  
     }
   //考勤记录删除
      public function destroy(Request $request)
    {
        //删除学生
        Commuting::destroy($request->id);
        //return redirect()->action('StudentController@index', [$request->classid]);
    }   
}


