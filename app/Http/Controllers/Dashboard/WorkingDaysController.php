<?php

namespace App\Http\Controllers\Dashboard;

use App\Models\Branch;
use App\Models\Offer;
use App\Models\Image;
use App\Models\Working_day;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;

class WorkingDaysController extends Controller
{

    public function index()
    {
        $workingDays = Working_day::all();
        return view('dashboard.workingDay.index', compact( 'workingDays'));
    }

    public function edit($id)
    {
        $branches = Branch::with('branch_en')->get();
        $workingDay = Working_day::with('working_days_en', 'working_days_ar')->find($id);
        return view('dashboard.workingDay.edit', compact('workingDay', 'branches'));
    }



    public function create()
    {
        $branches = Branch::with('branch_en')->get();
        return view('dashboard.workingDay.create', compact('branches'));
    }

    public function store(Request $request)
    {

        $input = $request->all();
        //$workingDay = Working_day::with('working_days_en', 'working_days_en')->first();
        $request->validate([
            'sat_en'          => 'bail|max:200',
            'sat_ar'          => 'bail|max:200',
            'sun_en'          => 'bail|max:200',
            'sun_ar'          => 'bail|max:200',
            'mon_en'          => 'bail|max:200',
            'mon_ar'          => 'bail|max:200',
            'tus_en'          => 'bail|max:200',
            'tus_ar'          => 'bail|max:200',
            'wed_en'          => 'bail|max:200',
            'wed_ar'          => 'bail|max:200',
            'thu_en'          => 'bail|max:200',
            'thu_ar'          => 'bail|max:200',
            'fri_en'          => 'bail|max:200',
            'fri_ar'          => 'bail|max:200',
            'closing_days_en' => 'bail|required|max:200',
            'closing_days_ar' => 'bail|required|max:200',
            'working_time_en' => 'bail|required|max:200',
            'working_time_ar' => 'bail|required|max:200',
            'working_hrs_ar'  => 'bail|required|max:200',
            'working_hrs_en'  => 'bail|required|max:200',
            'branch_id'       => 'bail|required|max:200',

        ], [], [
            'sat_en'          => 'Saturday Working Days in English',
            'sat_ar'          => 'Saturday Working Days in Arabic',
            'sun_en'          => 'Sunday Working Days in English',
            'sun_ar'          => 'Sunday Working Days in Arabic',
            'mon_en'          => 'Monday Working Days in English',
            'mon_ar'          => 'Monday Working Days in Arabic',
            'tus_en'          => 'Tuesday Working Days in English',
            'tus_ar'          => 'Tuesday Working Days in Arabic',
            'wed_en'          => 'Wednesday Working Days in English',
            'wed_ar'          => 'Wednesday Working Days in Arabic',
            'thu_en'          => 'Thursday Working Days in English',
            'thu_ar'          => 'Thursday Working Days in Arabic',
            'fri_en'          => 'Friday Working Days in English',
            'fri_ar'          => 'Friday Working Days in Arabic',
        ]);


        //$offer->created_by = $input['created_by'];
        $workingDay = new Working_day();
        $workingDay->branch_id = $input['branch_id'];
        $workingDay->save();


        $workingDay->working_days_ar()->create(
            [
                'working_days_id'   => $workingDay->id,
                /*'sat'               => $input['sat_ar'],
                'sun'               => $input['sun_ar'],
                'mon'               => $input['mon_ar'],
                'tus'               => $input['tus_ar'],
                'wed'               => $input['wed_ar'],
                'thu'               => $input['thu_ar'],
                'fri'               => $input['fri_ar'],*/
                'closing_days'      => $input['closing_days_ar'],
                'working_time'      => $input['working_time_ar'],
                'working_hrs'      => $input['working_hrs_ar'],
            ]
        );
        $workingDay->working_days_en()->create(
            [
                'working_days_id'   => $workingDay->id,
               /* 'sat'               => $input['sat_en'],
                'sun'               => $input['sun_en'],
                'mon'               => $input['mon_en'],
                'tus'               => $input['tus_en'],
                'wed'               => $input['wed_en'],
                'thu'               => $input['thu_en'],
                'fri'               => $input['fri_en'],*/
                'closing_days'      => $input['closing_days_en'],
                'working_time'      => $input['working_time_en'],
                'working_hrs'       => $input['working_hrs_en'],
            ]
        );

        Session::flash('create', 'Working Hours Has Been Updated Successfully');
        return redirect(adminUrl('working-days'));


    }

    public function show()
    {

    }

    public function update(Request $request, $id)
    {
        $input = $request->all();
        $workingDay = Working_day::with('working_days_en', 'working_days_en')->find($id);
        $request->validate([
            'sat_en'          => 'bail|max:200',
            'sat_ar'          => 'bail|max:200',
            'sun_en'          => 'bail|max:200',
            'sun_ar'          => 'bail|max:200',
            'mon_en'          => 'bail|max:200',
            'mon_ar'          => 'bail|max:200',
            'tus_en'          => 'bail|max:200',
            'tus_ar'          => 'bail|max:200',
            'wed_en'          => 'bail|max:200',
            'wed_ar'          => 'bail|max:200',
            'thu_en'          => 'bail|max:200',
            'thu_ar'          => 'bail|max:200',
            'fri_en'          => 'bail|max:200',
            'fri_ar'          => 'bail|max:200',
            'closing_days_en' => 'bail|required|max:200',
            'closing_days_ar' => 'bail|required|max:200',
            'working_time_en' => 'bail|required|max:200',
            'working_time_ar' => 'bail|required|max:200',
            'working_hrs_ar'  => 'bail|required|max:200',
            'working_hrs_en'  => 'bail|required|max:200',
            'branch_id'       => 'bail|required|max:200',
        ], [], [
            'sat_en'          => 'Saturday Working Days in English',
            'sat_ar'          => 'Saturday Working Days in Arabic',
            'sun_en'          => 'Sunday Working Days in English',
            'sun_ar'          => 'Sunday Working Days in Arabic',
            'mon_en'          => 'Monday Working Days in English',
            'mon_ar'          => 'Monday Working Days in Arabic',
            'tus_en'          => 'Tuesday Working Days in English',
            'tus_ar'          => 'Tuesday Working Days in Arabic',
            'wed_en'          => 'Wednesday Working Days in English',
            'wed_ar'          => 'Wednesday Working Days in Arabic',
            'thu_en'          => 'Thursday Working Days in English',
            'thu_ar'          => 'Thursday Working Days in Arabic',
            'fri_en'          => 'Friday Working Days in English',
            'fri_ar'          => 'Friday Working Days in Arabic',
        ]);


        //$offer->created_by = $input['created_by'];
        $workingDay->branch_id = $input['branch_id'];
        $workingDay->save();


        $workingDay->working_days_ar()->update(
            [
                'working_days_id'   => $workingDay->id,
                /*'sat'               => $input['sat_ar'],
                'sun'               => $input['sun_ar'],
                'mon'               => $input['mon_ar'],
                'tus'               => $input['tus_ar'],
                'wed'               => $input['wed_ar'],
                'thu'               => $input['thu_ar'],
                'fri'               => $input['fri_ar'],*/
                'closing_days'      => $input['closing_days_ar'],
                'working_time'      => $input['working_time_ar'],
                'working_hrs'      => $input['working_hrs_ar'],
            ]
        );
        $workingDay->working_days_en()->update(
            [
                'working_days_id'   => $workingDay->id,
                /*'sat'               => $input['sat_en'],
                'sun'               => $input['sun_en'],
                'mon'               => $input['mon_en'],
                'tus'               => $input['tus_en'],
                'wed'               => $input['wed_en'],
                'thu'               => $input['thu_en'],
                'fri'               => $input['fri_en'],*/
                'closing_days'      => $input['closing_days_en'],
                'working_time'      => $input['working_time_en'],
                'working_hrs'       => $input['working_hrs_en'],
            ]
        );

        Session::flash('create', 'Working Hours Has Been Updated Successfully');
        return redirect(adminUrl('working-days'));

    }

    public function destroy($id)
    {
        $workingDay = Working_day::find($id);

        $workingDay->delete();
        Session::flash('delete', 'Working Dyas Table Has Been Deleted Successfully');
        return redirect(adminUrl('working-days'));
    }
}
