<?php

namespace App\Http\Controllers;
use Maatwebsite\Excel\Facades\Excel;
use App\Imports\ImportUser;
use App\Exports\ExportUser;
use App\Models\User;
use Illuminate\Http\Request;
use SebastianBergmann\Exporter\Exporter;

class UserController extends Controller
{
    public function exportUsers(Request $request){
        return Excel::download(new ExportUser, 'users.xlsx');
        // dd($request);
    }

    public function import(Request $request){
        Excel::import(new ImportUser, $request->file('file')->store('temp'));
        // dd($request);
        return "Os registros foram importados com sucesso!";
        // dd($request);
    }

    public function importView(Request $request){
        // dd($request);
        return view('importFile');
        // dd($request);

    }




}
