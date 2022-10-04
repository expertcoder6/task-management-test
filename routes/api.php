<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\TaskController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

//User 
Route::get('userlist',[UserController::class,'user_list']);
Route::post('save_user',[UserController::class,'save_user']);
Route::put('/user/{id}', [UserController::class , 'update']);
Route::delete('/user/{id}', [UserController::class , 'delete_user']);
Route::get('viewuser/{id}',[UserController::class,'view_user']);

//task
Route::get('tasklist',[TaskController::class,'task_list']);
Route::post('save_task',[TaskController::class,'save_task']);
Route::put('/task/{id}', [TaskController::class ,'update']);
Route::delete('/task/{id}', [TaskController::class ,'delete_task']);
Route::get('viewtask/{id}',[TaskController::class,'view_task']);
Route::get('search_task/{id}',[TaskController::class,'search_task']);