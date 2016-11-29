<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Entry;
use App\User;
use App\Vote;
use Auth;

class ContestController extends Controller
{
    public function __construct()
    {

    }

    public function index() {
        $entries = Entry::Paginate(8);
        return view('contest.content', compact('entries'));
    }


    public function single($index) {
        $entry = Entry::find($index);
        $user = Auth::user();
        if(!$entry)
            return redirect('/');
        else {
            return view('contest.entry', compact('entry', 'user'));
        }
    }

    public static function vote($index, Request $request) {
        if(!Auth::user())
            return redirect('/auth/fblogin');
        $user = Auth::user()->id;
        if(Auth::user()->vote()->count()) {
            $request->session()->flash('alert-danger', 'Ai votat deja!');
            return redirect('concurs');
        }
        else {
            Vote::create([
                'entry_id' => $index,
                'user_id' => $user
            ]);
            $request->session()->flash('alert-success', 'Ai votat cu succes!');
            return redirect()->back();
        }


    }
}
