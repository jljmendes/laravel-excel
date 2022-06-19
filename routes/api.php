<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Storage;

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

Route::post('/upload', function(Request $request){
    $array = ['error' => ''];

    $rules = [
        'name' => 'required|min:2',
        'arquivo' => 'required|mimes:xls,xmls,csv,xlsx'
    ];

    $validator = Validator::make($request->all(), $rules);

    if($validator->fails()){
        $array['error'] = $validator->messages();
        return $array;
    }

    if($request->hasFile('arquivo')){
        if($request->file('arquivo')->isValid()){

            $arquivo = $request->file('arquivo')->store('public');
            $url = asset(Storage::url($arquivo));
            echo $url;
        }
    }else{
        $array['error'] = 'Nao foi enviado arquivo';
    }
    // $name = $request->input('name');
    // $arquivo = $request->file('arquivo');



    return $array;
});
