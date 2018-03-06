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
	//后台首页
	Route::get('/', 'IndexController@index');
	//注册功能
	Route::get('/register','Auth\RegisterController@showRegistrationForm');
	Route::post('/register','Auth\RegisterController@register');

	Route::get('/index/show','IndexController@show');
	
	//修改班主任密码
	Route::post('/index/update','IndexController@update');
	//修改班级信息
	Route::post('/classs/store','ClasssController@store');
	//新增班级信息
	Route::post('/classs/create','ClasssController@create');
	//添加班级
	Route::get('/classs/show/{id}','ClasssController@show');
	//学生信息
	Route::get('/student/index/{id}',['as' => 'profile', 'uses' => 'StudentController@index']);
	//执行添加学生页面
	Route::post('/student/store','StudentController@store');
	//修改学生信息
	Route::post('/student/update','StudentController@update');
	//学生留级
	Route::post('/student/liuji','StudentController@liuji');
	//删除学生
	Route::get('/student/destroy','StudentController@destroy');
	//修改学生分数
	Route::post('/score/update','ScoreController@update');
	//修改学生分数
	Route::post('/score/show','ScoreController@show');
	
});