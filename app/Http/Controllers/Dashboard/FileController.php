<?php

namespace App\Http\Controllers\Dashboard;

use App\Models\Appointment;
use App\Models\File;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Session;

class FileController extends Controller
{
    public function index(){

    }

    public function displayFile($id)
    {
        $file   = File::find($id);
        $filPath=public_path($file->path);
        return response()->file($filPath);
    }
}
