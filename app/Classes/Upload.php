<?php


namespace App\Classes;
use App\Models\Image;
use App\Models\Service_image;
use App\Models\Product_images;

class Upload
{
    protected $request           = null;
    protected  $inputName        = null;
    protected  $path             = null;
    protected  $alt              = null;
    protected  $modelName        = Service_image::class;
    protected  $imagePathColumn  = 'path';
    protected  $extensions       = null;
    //protected  $owner_image    = null;
    protected  $owner_coloumName = null;
    protected  $owner_id         = null;
    protected  $pulk_images      = null;

    public function __construct($request, $inputName, $path,$alt,$extensions,$owner_id="")
    {
        $this->request=$request;
        $this->inputName=$inputName;
        $this->path=$path;
        $this->alt=$alt;
        $this->extensions=$extensions;
        $this->owner_id=$owner_id;
    }

    public function storeUpload(){
        if ($uploadedFile = $this->request->file($this->inputName))
        {
            $fileName = time() . $uploadedFile->getClientOriginalName();
            $filePath = $uploadedFile->storeAs($this->path, $fileName);
            $image = $this->modelName::create(['name' => $fileName, $this->imagePathColumn => $filePath]);
            return $image->id;
        }
    }

    /*****************************************************************************************
     **** This Function Used in uploading in Public Directory With Handling dynamic paths ****
     *****************************************************************************************/
    public function publicUpload()
    {
        $this->request->validate([
            $this->inputName  =>  $this->extensions,
        ]);

        if ($uploadedFile = $this->request->file($this->inputName))
        {
            $fileName = time() . $uploadedFile->getClientOriginalName();
            $uploadedFile->move(uploadedImagePath() . DIRECTORY_SEPARATOR . $this->path, $fileName);
            $filePath = uploadedImagePath() . DIRECTORY_SEPARATOR . $this->path . DIRECTORY_SEPARATOR .$fileName;
            $image = $this->modelName::create(['name' => $fileName, 'path' => $filePath]);
           // return $image->id;
        }
    }

    public function publicMultipleUpload()
    {
        $this->request->validate([
            $this->inputName.'*'  =>  $this->extensions,
        ]);

        if ($uploadedFiles = $this->request->file($this->inputName))
        {
            foreach ($uploadedFiles as $uploadedFile):
                $fileName=time(). $uploadedFile->getClientOriginalName();
                $uploadedFile->move('dashboardImages/service', $fileName);
                $filePath = 'dashboardImages/service/'.$fileName;
                Service_image::create(['service_id'=>$this->owner_id,'image' => $fileName, 'path' => $filePath, 'alt' =>$this->alt]);
            endforeach;
        }
    }

    public static function multipleUpload($request, $inputName, $path,$alt,$extensions,$model,$owner_coloumName,$owner_id){
        $request->validate([
            $inputName.'*'  =>  $extensions,
        ]);

        if ($uploadedFiles = $request->file($inputName))
        {
            foreach ($uploadedFiles as $uploadedFile):
                $fileName=time(). $uploadedFile->getClientOriginalName();
                $uploadedFile->move('dashboardImages/service', $fileName);
                $filePath = 'dashboardImages/service/'.$fileName;
                $model::create([$owner_coloumName=>$owner_id,'image' => $fileName, 'path' => $filePath, 'alt' =>$alt]);
            endforeach;
        }
    }
}
