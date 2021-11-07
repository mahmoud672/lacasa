<?php

/**

MAIL_DRIVER=smtp
MAIL_HOST=drahmedabuzeid.com
MAIL_PORT="587"
MAIL_USERNAME="info@drahmedabuzeid.com"
MAIL_PASSWORD="j#{GX$jej&0R"
MAIL_ENCRYPTION=null


 */
namespace App\Classes;
use App\Models\Message;
use App\Models\Contact;
use App\Models\Service;
use Illuminate\Support\Facades\Mail;

class ContactMail
{
    protected $name      = null;
    protected $phone     = null;
    protected $email     = null;
    protected $title     = null;
    protected $message   = null;
    //protected $file      = null;


    public function __construct($name,$phone,$email,$title,$message)
    {
        $this->name=$name;
        $this->phone=$phone;
        $this->email=$email;
        $this->title=$title;
        $this->message=$message;
    }

    public static function submitForm($name,$phone,$email,$title,$message,$service_id=null){
        $data=Message::create([
            'name'=>$name,
            'email'=>$email,
            'phone'=>$phone,
            'title'=>$title,
            'message'=>$message,
        ]);
        $contact=Contact::first();

        //$website_email=$contact->email;

        //************** with php native mail function ************\\
        //ContactMail::sendMail($contact->email,$title,$message,$email);
        //**********************************************************\\

        //********************** with laravel  mail function *********************\\
        //$messageView = 'website.layouts.email-message';
        $messageView = 'website.layouts.email-message';
        $data['receiver'] = $contact->email;
        //self::send_mail($messageView,array('receiver'=>$data['receiver'],'name'=>$data->name,'email'=>$data->email,'phone'=>$data->phone,'title'=>$data->title,'body_message'=>$data->message));
        //self::send_mail($messageView,array('receiver'=>'mahmoudgad672@gmail.com','name'=>$data->name,'email'=>$data->email,'phone'=>$data->phone,'title'=>$data->title,'body_message'=>$data->message));
        //self::send_mail($messageView,array('receiver'=>'a.essam@be-group.com','name'=>$data->name,'email'=>$data->email,'phone'=>$data->phone,'title'=>$data->title,'body_message'=>$data->message));
        //self::send_mail($messageView,array('receiver'=>'gogle.lead@gmail.com','name'=>$data->name,'email'=>$data->email,'phone'=>$data->phone,'title'=>$data->title,'body_message'=>$data->message));

        //-- next to send mail with service ---\\
        //$service = Service::with('service_'.currentLang())->where('id',$service_id)->first();
        self::send_mail($messageView,array('receiver'=>'mahmoudgad672@gmail.com','name'=>$data->name,'email'=>$data->email,'phone'=>$data->phone,'title'=>$data->title,'body_message'=>$data->message));
        self::send_mail($messageView,array('receiver'=>'mahmoudfifty801@gmail.com','name'=>$data->name,'email'=>$data->email,'phone'=>$data->phone,'title'=>$data->title,'body_message'=>$data->message));
        //--------------------------------------\\
        //self::send_mail($messageView,array('receiver'=>'mahmoudgad672@gmail.com','name'=>$data->name,'email'=>$data->email,'title'=>'just test','body_message'=>$data->message));

        //self::sendMail("mahmoudgad672@gmail.com,a.essam@be-group.com,gogle.lead@gmail.com",$name,$phone,$contact->email,$title,$message);

        //*************************************************************************\\
    }


    //*********************** PHP ************************\\
   /* public static function sendMail($to,$subject,$message,$from){
        $headers="from: ".$from;
        if(@mail($to,$subject,$message,$headers)){
            return true;
        }else{
            return false;
        }

    }*/

    public static function sendMail($to,$name,$phone,$email,$title,$message){
        $name   = $name;
        $email  = $email;
        $phone  = $phone;
        $title  = $title;
        $subject  = website_title();
        $message_body  = $message;
        //$service  = $_POST['service'];

        $sender_name = "=?UTF-8?B?".base64_encode("IMEI")."?=";
        $subject = "=?UTF-8?B?".base64_encode($subject)."?=";
        $headers = "From: $name <$email>\r\n".
            "MIME-Version: 1.0" . "\r\n" .
            "Content-type: text/html; charset=UTF-8" . "\r\n";
        $message  = "Welcome <br > <br > ";
        $message .= $title." <br > <br > ";
        $message .= "<br/> <h1 align='center' style='font-size:16px;'> Name: ".$name." </h1>";
        $message .= "<br/> <h1 align='center' style='color:#0f0238;font-size:16px;'> Email: ".$email." </h1>";
        $message .= "<br/> <h1 align='center' style='color:#0f0238;font-size:16px;'> Phone: ".$phone." </h1>";
        //$message .= "<br/> <h1 align='center' style='font-size:16px;'> Service: ".$service." </h1>";
        $message .= $message_body;

        //mail("mahmoudgad672@gmail.com,a.essam@be-group.com,gogle.lead@gmail.com", $subject, $message, $headers);
        if(@mail($to, $subject, $message, $headers))
        {
            return true;
        }
        else
            {
            return false;
        }

    }
    //*********************************************************\\

    //*********************** Laravel ************************\\
    public static function send_mail($messageView,$data){
        Mail::send($messageView,$data,function($message) use ($data)
        {
            $message->to($data['receiver']);
            $message->subject(website_title());
            $message->from($data['email']);
            /*$message->attach($data['file']->getRealPath(),array(
                'as'=>'file.'.$data['file']->getClientOriginalExtension(),
                'mime'=>$data['file']->getMimeType())
            );*/

        });
    }

    public static function mailService($request,$receiver)
    {
        $messageView = 'website.layouts.email-message-new';
        $service = Service::find($request->service_id);
        $data = array('receiver'=>$receiver,'name'=>$request->name,'email'=>$request->email,'phone'=>$request->phone,'title'=>$request->title,'body_message'=>$request->message,"service"=>$service->{'service_'.currentLang()}->title,"monthly_orders"=>$request->monthly_orders);
        Mail::send($messageView,$data,function($message) use ($data)
        {
            $message->to($data["receiver"]);
            $message->subject(website_title());
            $message->from($data['email']);
            /*$message->attach($data['file']->getRealPath(),array(
                'as'=>'file.'.$data['file']->getClientOriginalExtension(),
                'mime'=>$data['file']->getMimeType())
            );*/

        });
    }
}
