<?php

namespace App\Http\Controllers\Dashboard;

use App\Role;
use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Session;

class UsersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = User::all();
        return view('dashboard.employee.index', compact('users'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //$roles = Role::all();
        return view('dashboard.employee.create');
    }

    public function store(Request $request)
    {
        $input = $request->all();
        $input['password'] = bcrypt($request->password);
        $this->validate($request,[
            'name'      => 'required|max:100',
            'email'     => 'required|unique:users|max:100',
            'password'  => 'required|min:6|confirmed',
        ], [], [
            'email'     => 'Email',
            'password'  => 'Password'
        ]);

        $user = User::create($input);
        Session::flash('create', 'User ' . $user->name . ' Has Been Created Successfully');

        return redirect(adminUrl('users'));

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //$roles = Role::all();
        $user = User::find($id);
        return view('dashboard.employee.edit', compact('user'));
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
        $input['password'] = bcrypt($request->password);
        $user = User::find($id);

        $this->validate($request,[
            'name'      => 'required|max:100',
            'email'     => 'required|unique:users,id,'. $id .'|max:100',
            'password'  => 'required|min:6|confirmed',
        ], [], [
            'email'     => 'Email',
            'password'  => 'Password'
        ]);

        $user->update($input);

        Session::flash('update', 'User ' . $user->name . ' Has Been Updated Successfully');
        return redirect(adminUrl('/'));

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $user = User::find($id);

        try
        {
            $user->delete();
        }
        catch (\Exception $e)
        {
            Session::flash('exception', 'Error, Can\'t Delete User Because The user is related to another table');
            return redirect()->back();
        }

        Session::flash('delete', 'User ' . $user->name . ' Has Been Deleted Successfully');
        return redirect(adminUrl('users'));
    }
}
