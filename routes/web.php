<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });


//Route::get('/', 'HomeController@index')->name('home');

//用户功能
Auth::routes();

Route::group(['middleware' => ['auth']], function () {
	
	Route::get('main',function(){
		return view('main');
	});
	Route::resource('/', 'IndexController');
	//学生信息
	Route::get('/student/index/{id}',['as' => 'profile', 'uses' => 'StudentController@index']);
	//执行添加学生页面
	Route::post('/student/store','StudentController@store');
	//跳到学生编辑页面
	Route::get('/student/show/{id}','StudentController@show');
	//删除学生
	Route::get('/student/destroy','StudentController@destroy');
	//修改班级信息
	Route::post('/classs/store','ClasssController@store');

});