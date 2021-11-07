<?php

namespace App\Http\Controllers\Dashboard;

use App\Models\About;
use App\Models\Image;
use App\Models\Video;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Session;

class AboutController extends Controller
{
    public function edit()
    {
        $about = About::orderBy('created_at', 'desc')->first();
        return view('dashboard.about.edit', compact('about'));
    }

    public function update(Request $request)
    {
        $about = About::with('about_en', 'about_ar', 'missionImage', 'visionImage', 'valuesImage')->orderBy('created_at', 'desc')->first();
        $input = $request->all();
        $this->validate($request,[
            'mission_en'        => 'bail|required|min:50|max:3000',
            'mission_ar'        => 'bail|required|min:50|max:3000',
            'vision_en'         => 'bail|required|min:50|max:3000',
            'vision_ar'         => 'bail|required|min:50|max:3000',
            //'values_en'         => 'bail|required|min:50|max:3000',
            //'values_ar'         => 'bail|required|min:50|max:3000',
            'description_en'    => 'bail|required|min:50|max:3000',
            'description_ar'    => 'bail|required|min:50|max:3000',
            //'bio_ar'            => 'bail|required',
            //'bio_en'            => 'bail|required',
            //'goals_ar'          => 'bail|min:50|max:3000',
            //'goals_en'          => 'bail|min:50|max:3000',
            //'approach_ar'       => 'bail|min:50|max:3000',
            //'approach_en'       => 'bail|min:50|max:3000',
            //'career_en'         => 'bail|min:50|max:3000',
            //'career_ar'         => 'bail|min:50|max:3000',
            'mission_image_id'  => '',
            'vision_image_id'   => '',
            'values_image_id'   => '',
            //'about_image_id'    => 'mimes:jpeg,jpg,png,gif',
            'about_image_id'    => '',
            //'goals_image_id'    => 'mimes:jpeg,jpg,png,gif',
            //'career_image_id'   => 'mimes:jpeg,jpg,png,gif',
        ], [], [
            'about_en'          => 'About in English',
            'about_ar'          => 'About in Arabic'
        ]);

        //Upload Slide Image
        if ($uploadedFile = $request->file('about_image_id'))
        {
            $fileName = time() . $uploadedFile->getClientOriginalName();
            $uploadedFile->move('dashboardImages/about', $fileName);
            $filePath = uploadedImagePath() . '/about/'.$fileName;
            $image = Image::create(['name' => $fileName, 'path' => $filePath]);
            $input['about_image_id'] = $image->id;
            $about->image_id = $input['about_image_id'];
        }

        if ($uploadedFile = $request->file('mission_image_id'))
        {
            $fileName = time() . $uploadedFile->getClientOriginalName();
            $uploadedFile->move('dashboardImages/about', $fileName);
            $filePath = uploadedImagePath() . '/about/'.$fileName;
            $image = Image::create(['name' => $fileName, 'path' => $filePath]);
            $input['mission_image_id'] = $image->id;
            $about->mission_image_id = $input['mission_image_id'];
        }

        if ($uploadedFile = $request->file('vision_image_id'))
        {
            $fileName = time() . $uploadedFile->getClientOriginalName();
            $uploadedFile->move('dashboardImages/about', $fileName);
            $filePath = uploadedImagePath() . '/about/'.$fileName;
            $image = Image::create(['name' => $fileName, 'path' => $filePath]);
            $input['vision_image_id'] = $image->id;
            $about->vision_image_id = $input['vision_image_id'];
        }

        if ($uploadedFile = $request->file('values_image_id'))
        {
            $fileName = time() . $uploadedFile->getClientOriginalName();
            $uploadedFile->move('dashboardImages/about', $fileName);
            $filePath = 'dashboardImages/about/'.$fileName;
            $image = Image::create(['name' => $fileName, 'path' => $filePath]);
            $input['values_image_id'] = $image->id;
            $about->values_image_id = $input['values_image_id'];
        }

        if ($uploadedFile = $request->file('goals_image_id'))
        {
            $fileName = time() . $uploadedFile->getClientOriginalName();
            $uploadedFile->move('dashboardImages/about', $fileName);
            $filePath = 'dashboardImages/about/'.$fileName;
            $image = Image::create(['name' => $fileName, 'path' => $filePath]);
            $input['goals_image_id'] = $image->id;
            $about->goals_image_id = $input['goals_image_id'];
        }

        if ($uploadedFile = $request->file('approach_image_id'))
        {
            $fileName = time() . $uploadedFile->getClientOriginalName();
            $uploadedFile->move('dashboardImages/about', $fileName);
            $filePath = 'dashboardImages/about/'.$fileName;
            $image = Image::create(['name' => $fileName, 'path' => $filePath]);
            $input['approach_image_id'] = $image->id;
            $about->approach_image_id = $input['approach_image_id'];
        }

        if ($uploadedFile = $request->file('bio_image_id'))
        {
            $fileName = time() . $uploadedFile->getClientOriginalName();
            $uploadedFile->move('dashboardImages/about', $fileName);
            $filePath = 'dashboardImages/about/'.$fileName;
            $image = Image::create(['name' => $fileName, 'path' => $filePath]);
            $input['bio_image_id'] = $image->id;
            $about->bio_image_id = $input['bio_image_id'];
        }

        if ($request->video_url)
        {
            $video = new Video();
            $video->created_by = auth()->user()->id;
            $video->url = $request->video_url;
            $video->save();
            $about->video_id = $video->id;
        }

        if ($request->bio_video_url)
        {
            $video = new Video();
            $video->created_by = auth()->user()->id;
            $video->url = $request->bio_video_url;
            $video->save();
            $about->bio_video_id = $video->id;
        }

        //Save Images
        $about->save();

        $about->about_ar()->update(['about_id' => $about->id,'mission' => $input['mission_ar'],'vision' => $input['vision_ar'], 'value' => $input['values_ar'],'description' => $input['description_ar'],'bio'=>$request->bio_ar,/* 'goals' => $input['goals_ar'],'career' => $input['career_ar'],*//* 'approach' => $input['approach_ar']*/]);
        $about->about_en()->update(['about_id' => $about->id, 'mission' => $input['mission_en'],'vision' => $input['vision_en'],'value' => $input['values_en'], 'description' => $input['description_en'],'bio'=>$request->bio_en,/* 'goals' => $input['goals_en'],'career' => $input['career_en'],*/ /*'approach' => $input['approach_en']*/]);

        Session::flash('create', 'About Website Has Been Updated Successfully');
        return redirect(adminUrl('about/edit'));
    }
}
