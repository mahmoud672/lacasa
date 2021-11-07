<?php

namespace App\Http\Controllers\Dashboard;

use App\Models\City;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Session;

class CityController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        //-------------- return countries -------------------------\\
            $cities = City::with('city_en', 'createdBy')->where('parent_city_id',null)->get();
            return view('dashboard.city.index', compact('cities'));

    }
    public function show_cities()
    {

        //-------------- return all cities -------------------------\\
        $cities = City::with('city_en', 'createdBy')->where('parent_city_id',"!=",null)->get();
        return view('dashboard.city.show-cities', compact('cities'));

    }

    public function show_country_cities($id)
    {

        //-------------- return countries -------------------------\\
        $cities = City::with('city_en', 'createdBy')->where('parent_city_id',$id)->get();
        return view('dashboard.city.show-cities', compact('cities'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        if($city_id=$request->route('id')){
            $country = City::with('city_en','city_ar')->where('id',$city_id)->first();
            return view('dashboard.city.create',compact('country'));
        }else{
            return view('dashboard.city.create');
        }
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
            'name_en'           => 'bail|required|max:200',
            'name_ar'           => 'bail|max:200',
            //'country_en'        => 'bail|max:200',
            //'country_ar'        => 'bail|max:200',

        ], [], [
            'name_en'           => 'Name in English',
            'name_ar'           => 'Name in Arabic',
            //'country_en'        => 'Country in English',
            //'country_ar'        => 'Country in Arabic',
        ]);

        $city = new City();
        $city->parent_city_id = $request->route('id') ? $request->route('id') : null;
        $city->created_by = $input['created_by'];
        $city->save();

        $city->city_ar()->create(['city_id' => $city->id, 'city_name' => $input['name_ar']]);
        $city->city_en()->create(['city_id' => $city->id, 'city_name' => $input['name_en']]);

        Session::flash('create', 'City  Has Been Created Successfully');
        return redirect(adminUrl('city'));
        //return back();

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

        $city = City::with('createdBy', 'city_en')->find($id);
        $country = City::with('createdBy', 'city_en','city_ar')->where('id',$city->parent_city_id)->first();

        return view('dashboard.city.edit', compact('city','country'));
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
        $city = City::with('createdBy', 'city_en')->find($id);
        $input = $request->all();
        $input['created_by'] = Auth::user()->id;
        $request->validate([
            'name_en'           => 'bail|required|max:200',
            'name_ar'           => 'bail|max:200',

        ], [], [
            'name_en'           => 'Name in English',
            'name_ar'           => 'Name in Arabic',

        ]);

        $city->created_by = $input['created_by'];
        $city->save();

        $city->city_ar()->update(['city_id' => $city->id,'city_name' => $input['name_ar']]);
        $city->city_en()->update(['city_id' => $city->id, 'city_name' => $input['name_en']]);

        Session::flash('update', 'City  Has Been Updated Successfully');
        //return redirect(adminUrl('city'));
        return back();

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $city = City::find($id);

        $city->delete();

        Session::flash('delete', 'City ' . $city->id . ' Has Been Deleted Successfully');
        return redirect(adminUrl('city'));
        //return back();
    }



    //-------------------- country -------------------\\

    public function createCountry(){

        return view('dashboard.city.create-country');
    }

    public function get_subCity(Request $request){
        $city_id=$request->city_id;
        if($city_id !=null){
        //return $city_id;
            $sub_cities= City::with('childCities','city_en','city_ar')->where('parent_city_id',$city_id)->get();
            if($sub_cities->count() > 0){
                return $sub_cities;
            }else{
                $city= City::with('city_en','city_ar')->where('id',$city_id)->first();
                return $city;
            }
        }
    }

}
