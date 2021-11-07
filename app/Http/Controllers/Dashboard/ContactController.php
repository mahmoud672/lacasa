<?php

namespace App\Http\Controllers\Dashboard;

use App\Models\Contact;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Session;

class ContactController extends Controller
{
    public function edit()
    {
        $info = Contact::orderBy('created_at', 'desc')->first();
        return view('dashboard.contact.edit', compact('info'));
    }


    public function update(Request $request)
    {
        $input = $request->all();
        $this->validate($request,[
            'email'         => 'bail|required|email|max:100',
            'phone'         => 'bail|required|min:8|max:20',
            'email2'        => 'nullable|email|max:100',
            'phone2'        => 'nullable|min:8|max:20',
            'phone3'        => 'nullable|min:8|max:20',
            'phone_alt'     => 'bail|max:20',
            'address_en'    => 'bail|required|max:500',
            'address_ar'    => 'bail|required|max:500',
            'address_en2'   => 'bail|max:500',
            'address_ar2'   => 'bail|max:500',
            'facebook'      => 'bail|url|nullable|max:191',
            'twitter'       => 'bail|url|nullable|max:191',
            'instagram'     => 'bail|url|nullable|max:191',
            'youtube'       => 'bail|url|nullable|max:191',
            'linkedin'      => 'bail|url|nullable|max:191',
            'pintrest'      => 'bail|url|nullable|max:191',
            'behance'       => 'bail|url|nullable|max:191',
            'google_plus'   => 'bail|url|nullable|max:191',
            'whatsapp'      => 'bail|nullable|max:191',
            'snapchat'      => 'bail|nullable|max:191',
        ], [], [
            'email'         => 'Email',
            'phone'         => 'Phone',
            'address_en'    => 'Address in English',
            'address_ar'    => 'Address in Arabic',
            'facebook'      => 'Facebook',
            'twitter'       => 'Twitter',
            'instagram'     => 'Instagram',
            'youtube'       => 'Youtube',
            'linkedin'      => 'Linkedin',
            'pintrest'      => 'Pintrest',
            'behance'       => 'Behance',
            'whatsapp'      => 'Whatsapp',
            'google_plus'   => 'Google Plus',

        ]);

        $contact = Contact::orderBy('created_at', 'desc')->first();
        $contact->email         = $input['email'];
        $contact->phone         = $input['phone'];
        $contact->email2        = $input['email2'];
        $contact->phone2        = $input['phone2'];
        $contact->phone3        = $input['phone3'];
        $contact->phone_alt     = $input['phone_alt'];
        $contact->address_en    = $input['address_en'];
        $contact->address_ar    = $input['address_ar'];
        $contact->address_en2   = $input['address_en2'];
        $contact->address_ar2   = $input['address_ar2'];
        $contact->location      = $input['location'];
        $contact->facebook      = $input['facebook'];
        $contact->twitter       = $input['twitter'];
        $contact->instagram     = $input['instagram'];
        $contact->youtube       = $input['youtube'];
        $contact->linkedin      = $input['linkedin'];
        $contact->pintrest      = $input['pintrest'];
        $contact->behance       = $input['behance'];
        $contact->google_plus   = $input['google_plus'];
        $contact->whatsapp      = $input['whatsapp'];
        $contact->snapchat      = $input['snapchat'];
        $contact->save($input);

        Session::flash('update', 'Contact Info Has Been Updated Successfully');
        return redirect(adminUrl('contact/edit'));
    }
}
