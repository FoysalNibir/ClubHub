<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

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

use Auth;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;

class FrontendController extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function __construct(){

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
