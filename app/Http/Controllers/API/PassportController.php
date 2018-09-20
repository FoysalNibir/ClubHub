<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;

use App\Http\Controllers\Controller;

use Carbon\Carbon;

use App\User;
use App\Event;
use App\Album;
use App\Photo;
use App\Notice;
use App\Detail;
use App\Folder;
use App\Document;
use App\Achievement;
use App\Anniversary;
use App\Registration;

use Illuminate\Support\Facades\Auth;

use Validator;

class PassportController extends Controller

{



 public $successStatus = 200;
 
 
 
   /**
 
    * login api
 
    *
 
    * @return \Illuminate\Http\Response
 
    */

   public function login(){

     if(Auth::attempt(['email' => request('email'), 'password' => request('password')])){

       $user = Auth::user();

       $success['token'] =  $user->createToken('MyApp')->accessToken;

       return response()->json(['success' => $success], $this->successStatus);

     }

     else{

       return response()->json(['error'=>'Unauthorised'], 401);

     }

   }



   /**
 
    * Register api
 
    *
 
    * @return \Illuminate\Http\Response
 
    */

   public function register(Request $request)

   {

     $validator = Validator::make($request->all(), [

       'name' => 'required',

       'email' => 'required|email',

       'password' => 'required',

       'c_password' => 'required|same:password',

     ]);



     if ($validator->fails()) {

       return response()->json(['error'=>$validator->errors()], 401);            

     }



     $input = $request->all();

     $input['password'] = bcrypt($input['password']);

     $user = User::create($input);

     $success['token'] =  $user->createToken('MyApp')->accessToken;

     $success['name'] =  $user->name;



     return response()->json(['success'=>$success], $this->successStatus);

   }



   /**
 
    * details api
 
    *
 
    * @return \Illuminate\Http\Response
 
    */

   public function getDetails()

   {

     $user = Auth::user();

     return response()->json(['success' => $user], $this->successStatus);

   }

   public function profile(User $user){
     $user=Auth::user()->with(['detail', 'role'])->first();
     return $user;
   }

   public function notices(Notice $notices){
     $notices=Notice::where('end_date','>=', Carbon::now())->get();
     return $notices;
   }

   public function achievements(Achievement $schievements){
     $schievements=Achievement::get();
     return $schievements;
   }

   public function folders(Folder $folders){
     $folders=Folder::get();
     return $folders;
   }

   public function documents(Document $documents, $id){
     $documents=Folder::find($id)->documents()->get();
     return $documents;
   }

   public function upcomingevents(Event $events){
     $upcomingevents=Event::where('end', '>=', Carbon::now())->get();
     return $upcomingevents;
   }

   public function pastevents(Event $events){
     $pastevents=Event::where('end', '<=', Carbon::now())->get();
     return $pastevents;
   }

   public function events(Event $events){
     $events=Event::get();
     return $events;
   }

   public function albums(Album $albums){
     $albums=Album::get();
     return $albums;
   }

   public function photos(Photo $photos, $id){
     $photos=Album::find($id)->photos()->get();
     return $photos;
   }

   public function anniversaries(Anniversary $anniversaries){
     $anniversaries=Anniversary::get();
     return $anniversaries;
   }

   public function birthdays(Detail $details){
     $details=Detail::get(['Dob']);
     return $details;
   }

   public function directories(User $user){
     $details=User::with('detail')->get(['id','name','email','avatar']);
     return $details;
   }

   public function registrations(Registration $registrations){
    $registrations=Registration::with('event')->get();
    return $registrations;
   }
}