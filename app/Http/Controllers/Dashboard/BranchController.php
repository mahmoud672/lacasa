<?php

namespace App\Http\Controllers\Dashboard;

use App\Models\Branch;
use App\Models\Image;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Str;

class BranchController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $branches = Branch::with('branch_en')->get();
        return view('dashboard.branch.index', compact('branches'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.branch.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $input = $request->all();
        $input['created_by'] = Auth::user()->id;


        $request->validate([
            'phone'             => 'bail|required|max:18',
            'phone_alt'         => 'bail|max:18',
            'address_en'        => 'bail|required|max:200',
            'address_ar'        => 'bail|required|max:200',
            'name_en'           => 'bail|required|max:100',
            'name_ar'           => 'bail|required|max:100',
            'email'             => 'nullable|email',
            //'image_id'          => 'bail|required',
            //'description_en'    => 'bail|required',
            //'description_ar'    => 'bail|required',
            //'alt'               => 'bail|required',
        ], [], [
            'phone'             => ' Title in English',
            'phone_alt'         => ' Second Phone',
            'address_en'        => ' Address in English',
            'address_ar'        => ' Address in Arabic',
            'name_en'           => ' Name in English',
            'name_ar'           => ' Name in Arabic',
            'description_en'    => ' Description in English',
            'description_ar'    => ' Description in Arabic',
            'image_id'          => ' Image',
            'alt'               => ' Alt',
        ]);

        if ($uploadedFile = $request->file('image_id'))
        {
            $fileName = time() . $uploadedFile->getClientOriginalName();
            $uploadedFile->move(uploadedImagePath() . '/branch', $fileName);
            $filePath = uploadedImagePath() . '/branch/'.$fileName;
            $image = Image::create(['name' => $fileName, 'path' => $filePath, 'alt' => $input['alt']]);
            $request->image_id = $image->id;
        }

        $branch = new Branch();
        $branch->url = Str::slug($request->name_en).'-'.date('his');
        $branch->phone = $input['phone'];
        $branch->phone_alt = $input['phone_alt'];
        $branch->email = $request->email;
        $branch->location = $input['location'];
        $branch->image_id = $request->image_id;
        $branch->save();

        $branch->branch_ar()->create(['branch_id' => $branch->id, 'name' => $input['name_ar'],'description' => $request->description_ar,'address' => $input['address_ar']]);
        $branch->branch_en()->create(['branch_id' => $branch->id, 'name' => $input['name_en'],'description' => $request->description_en,'address' => $input['name_en']]);

        Session::flash('create', 'Branch Has Been Created Successfully');
        return redirect(adminUrl('branch'));
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
        $branch = Branch::with('branch_en')->find($id);
        return view('dashboard.branch.edit', compact('branch'));
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
        $input = $request->all();
        $input['created_by'] = Auth::user()->id;
        $branch = Branch::with('branch_en')->find($id);
        //$open_graph = Offer::with('offer_en', 'image')->find($id);
        $request->validate([
            'phone'             => 'bail|required|max:18',
            'phone_alt'         => 'bail|max:18',
            'email'             => 'nullable|email',
            'address_en'        => 'bail|required|max:200',
            'address_ar'        => 'bail|required|max:200',
            'name_en'           => 'bail|required|max:100',
            'name_ar'           => 'bail|required|max:100',
            //'description_en'    => 'bail|required',
            //'description_ar'    => 'bail|required',
            //'image_id'          => 'bail|required',
            //'alt'               => 'bail|required',
        ], [], [
            'phone'             => ' Title in English',
            'phone_alt'         => ' Second Phone',
            'address_en'        => ' Address in English',
            'address_ar'        => ' Address in Arabic',
            'name_en'           => ' Name in English',
            'name_ar'           => ' Name in Arabic',
            'description_en'    => ' Description in English',
            'description_ar'    => ' Description in Arabic',
            //'image_id'          => ' Image',
            'alt'               => ' Alt',
        ]);

        if ($uploadedFile = $request->file('image_id'))
        {
            $fileName = time() . $uploadedFile->getClientOriginalName();
            $uploadedFile->move(uploadedImagePath() . '/branch', $fileName);
            $filePath = uploadedImagePath() . '/branch/'.$fileName;
            $image = Image::create(['name' => $fileName, 'path' => $filePath, 'alt' => $input['alt']]);
            $branch->image_id = $image->id;
        }

        $branch->url = Str::slug($request->name_en).'-'.date('his');
        $branch->phone = $input['phone'];
        $branch->email = $request->email;
        $branch->phone_alt = $input['phone_alt'];
        $branch->location = $input['location'];

        $branch->save();


        $branch->branch_ar()->update(['branch_id' => $branch->id, 'name' => $input['name_ar'],'description' => $request->description_ar, 'address' => $input['address_ar']]);
        $branch->branch_en()->update(['branch_id' => $branch->id, 'name' => $input['name_en'],'description' => $request->description_en,'address' => $input['name_en']]);

        Session::flash('create', 'Branch Has Been Updated Successfully');
        return redirect(adminUrl('branch'));

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $branch = Branch::find($id);
        $branch->working_day()->delete();
        $branch->delete();
        Session::flash('delete', 'Branch Has Been Deleted Successfully');
        return redirect(adminUrl('branch'));
    }


    public function showImages($id){
        $branch=Branch::find($id);
        return view("dashboard.branch.show",compact('branch'));
    }
    public function destroyImage(Request $request, $id)
    {
        $branch=Branch::find($id);
        $image = $request->image;
        $image_id = $request->image_id;
        $image_path = public_path("/dashboardImages/branch/" . $image);
        if (\File::exists($image_path)) {
            unlink($image_path);
        } else {
        }
        $imageData=Image::where("id",$image_id)->where("name", $image)->delete();
        return back();
    }


    public function storeImages(Request $request, $id)
    {
        $branch=Branch::find($id);
        $request->validate([
            'image_id.*' => 'bail:required|image|mimes:jpeg,png'
        ]);
        if ($uploadFiles=$request->image_id) {
            $images_ids=array();
            foreach ($uploadFiles as $uploadFile){
                $image_name = time() . "_" .$uploadFile->getClientOriginalName();
                $filePath = 'dashboardImages/branch/'.$image_name;
                $uploadFile->move("dashboardImages/branch", $image_name);
                $image=Image::create(['name' => $image_name,'path'=>$filePath,'alt'=>$branch->branch_en->name]);
                array_push($images_ids,$image->id);
            }
            $branch->clientImages()->attach($images_ids);

            return back();
        }
        //dd($request->file('product_im'));

    }

}
