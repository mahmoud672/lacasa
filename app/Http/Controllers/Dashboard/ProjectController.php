<?php



namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use App\Models\Branch;
use App\Models\Project;
use Illuminate\Http\Request;
use Illuminate\Support\Str;


class ProjectController extends Controller
{

    public function index()
    {
       $projects = Project::with('project_ar','project_en')->get();
        return view('dashboard.project.index',compact('projects'));
    }

    public function create()
    {
        $branches = Branch::with('branch_ar')->get();
        return view('dashboard.project.create',compact('branches'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'client_name_en'        => 'bail|required|max:200',
            'client_name_ar'        => 'bail|required',
            'contract_subject_en'   => 'bail|required',
            'contract_subject_ar'   => 'bail|required',
            'capacity_en'           => 'bail|required',
            'capacity_ar'           => 'bail|required',
            'from_date'             => 'bail|required',
            'to_date'               => 'bail|required',
            'branch_id'             => 'bail|required|exists:branch,id',

        ], [], [
            'client_name_en'       => ' Name in English',
            'client_name_ar'       => ' Name in Arabic',
            'contract_subject_en'  => ' Subject in English',
            'contract_subject_ar'  => ' Subject in Arabic',
            'capacity_en'          => ' Capacity in English',
            'capacity_ar'          => ' Capacity in Arabic',
            'from_date'            => ' From Date',
            'to_date'              => ' To Date',
            'branch_id'            => ' Branch',

        ]);

        $project = new Project();
        $project->branch_id = $request->branch_id;
        $project->url = Str::slug($request->contract_subject_en).'-'.date('his');
        $project->from_date = $request->from_date;
        $project->to_date   = $request->to_date;
        $project->save();

        $project->project_ar()->create([
            //'project_id'        => $project->id,
            'client_name'       => $request->client_name_ar,
            'contract_subject'  => $request->contract_subject_ar,
            'capacity'          => $request->capacity_ar
        ]);

        $project->project_en()->create([
            //'project_id'        => $project->id,
            'client_name'       => $request->client_name_en,
            'contract_subject'  => $request->contract_subject_en,
            'capacity'          => $request->capacity_en
        ]);

        return redirect(adminUrl("project"))->with('create',"Project Created Successfully");

    }

    public function edit($id)
    {
        $project = Project::find($id);
        $branches = Branch::with('branch_ar')->get();
        return view('dashboard.project.edit',compact('branches','project'));
    }

    public function update(Request  $request, $id)
    {
        $project = Project::find($id);

        $request->validate([
            'client_name_en'        => 'bail|required|max:200',
            'client_name_ar'        => 'bail|required',
            'contract_subject_en'   => 'bail|required',
            'contract_subject_ar'   => 'bail|required',
            'capacity_en'           => 'bail|required',
            'capacity_ar'           => 'bail|required',
            'from_date'             => 'bail|required',
            'to_date'               => 'bail|required',
            'branch_id'             => 'bail|required|exists:branch,id',

        ], [], [
            'client_name_en'       => ' Name in English',
            'client_name_ar'       => ' Name in Arabic',
            'contract_subject_en'  => ' Subject in English',
            'contract_subject_ar'  => ' Subject in Arabic',
            'capacity_en'          => ' Capacity in English',
            'capacity_ar'          => ' Capacity in Arabic',
            'from_date'            => ' From Date',
            'to_date'              => ' To Date',
            'branch_id'            => ' Branch',

        ]);

        $project->url = Str::slug($request->contract_subject_en).'-'.date('his');
        $project->branch_id = $request->branch_id;
        $project->from_date = $request->from_date;
        $project->to_date   = $request->to_date;
        $project->save();

        $project->project_ar()->update([
            //'project_id'        => $project->id,
            'client_name'       => $request->client_name_ar,
            'contract_subject'  => $request->contract_subject_ar,
            'capacity'          => $request->capacity_ar
        ]);

        $project->project_en()->update([
            //'project_id'        => $project->id,
            'client_name'       => $request->client_name_en,
            'contract_subject'  => $request->contract_subject_en,
            'capacity'          => $request->capacity_en
        ]);

        return redirect(adminUrl("project"))->with('create',"Project Created Successfully");
    }


}
