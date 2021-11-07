<?php

namespace App\Http\Controllers\Dashboard;

use App\Models\Album;
use App\Models\Gallery;
use App\Models\Service;
use App\Models\Video;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Session;

class VideoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $albumID = \request("album");
        //dd($albumID);
        if ($albumID)
        {
            $videos = Video::with('album')->where('album_id', $albumID)->get();
            //dd($videos);
            return view('dashboard.video.index', compact('videos'));
        }
        else
        {
            $videos = Video::all();
            return view('dashboard.video.index', compact('videos'));
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //$albums = Album::with('album_en')->where('type', 2)->get();
        $albums = Album::with('album_en')->where('type', 1)->get();
        return view('dashboard.video.create', compact('albums'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //request("album");

        //dd(request("album_id"));
        $input = $request->all();
        $input['created_by'] = Auth::user()->id;
        $request->validate([
            'url'               => 'bail|required|url|max:200',
            'type'              => 'bail|int|max:4',
        ], [], [

        ]);



        $video = new Video();
        $video->url = $input['url'];
        $video->album_id = request("album_id") ? request("album_id")  : 10;
        $video->created_by = $input['created_by'];
        $video->save();

        Session::flash('create', 'Video  Has Been Created Successfully');
        //return redirect(adminUrl('video'));
        return redirect(adminUrl('video?album='.$video->album_id));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $video = Video::find($id);
        //$albums = Album::with('album_en')->where('type', 2)->get();
        $albums = Album::with('album_en')->where('type', 1)->get();
        return view('dashboard.video.edit', compact('video', 'albums'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $video = Video::find($id);
        $input = $request->all();
        $input['created_by'] = Auth::user()->id;
        $request->validate([
            'url'               => 'bail|required|url|max:200',
            'type'              => 'bail|int|max:4',
        ], [], [

        ]);

        $video->url = $input['url'];
        $video->album_id = $input['album_id'];
        $video->created_by = $input['created_by'];
        $video->save();

        Session::flash('create', 'Video  Has Been Updated Successfully');
        //return redirect(adminUrl('video'));
        return redirect(adminUrl('video?album='.$video->album_id));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //================== edited new ==================================
        $video = Video::find($id);
        //$service=Service::where('video_id',$id)->first();
        if($video->service()->count() >0){
            Session::flash('exception', 'Video ' . $video->id . ' can`t be  Deleted , it`s related to service of '.$video->service->id);
            return redirect(adminUrl('video'));
        }else{
            $video->delete();
            Session::flash('delete', 'Video ' . $video->id . 'has been Deleted successfully.');
            //return redirect(adminUrl('video'));
            return redirect(adminUrl('video?album='.$video->album_id));
        }
    }
}
