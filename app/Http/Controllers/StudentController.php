<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Student;
use App\Classs;
class StudentController extends Controller
{

    private $rules = [
            'name' => 'required|max:255',
        ];
    private $message = [
            'name.required'=>'名字是必填项',
        ];

    
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($id)
    {
        //遍历首页
        $num = Student::where('classid', $id)->count();
        $class = Classs::where('id', $id)->first();
        $stu = Student::where('classid', $id)->get();
        return view('student', ['stu' => $stu,'class'=>$class,'num'=>$num]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //跳转添加页面
        return view('stu/add');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //执行添加
        //表单验证
        //$this->validate($request,$this->rules,$this->message);
        $Student = new Student;
        $Student->name = $request->name;
        $Student->sex = $request->sex;
        $Student->shenfenzheng = $request->shenfenzheng;
        $Student->address = $request->province.$request->city.$request->county.$request->s_address;
        $Student->classid = $request->classid;
        $Student->save();
        return redirect()->route('profile', ['classid' => $request->classid]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $stu = Student::where('id', $id)->first();
        //跳转修改学生页面
        $str = <<<EOF
        <div class="modal-dialog">
                <div class="modal-body">
                    <div class="row">
                        <div class="col-sm-12">
                            <form role="form" action="/student/store" method="post"  class="form-horizontal">
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">姓名：</label>
                                    <div class="col-sm-10">
                                      <input type="text" class="form-control" placeholder="姓名" name="name">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">性别：</label>
                                    <div class="col-sm-10">
                                        <select name="sex" class="form-control">
                                            <option value="男">男</option>
                                            <option value="女">女</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">身份证：</label>
                                    <div class="col-sm-10">
                                      <input type="text" class="form-control" placeholder="身份证" name="shenfenzheng">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label"></label>
                                    <div class="col-sm-10">
                                      <input type="text" class="form-control" placeholder="详细地址" name="address">
                                    </div>
                                </div>
                                <div>
                                    <button class="btn btn-sm btn-primary pull-right m-t-n-xs" type="submit"><strong>执行修改</strong>
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
    </div>
EOF;
        return $str;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //修改
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        //修改
        $Student = Student::find($request->id);
        //dd($request->all());
        $Student->name = $request->name;
        $Student->sex = $request->sex;
        $Student->shenfenzheng = $request->shenfenzheng;
        $Student->address = $request->address;
        $Student->classid = $request->classid;
        $Student->save();
        return redirect()->route('profile', ['classid' => $request->classid]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        //删除学生
        Student::destroy($request->id);
        //return redirect()->action('StudentController@index', [$request->classid]);
    }   
}
