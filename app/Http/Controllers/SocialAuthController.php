<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\SocialAccountService;
use Socialite;
use Auth;
use URL;

class SocialAuthController extends Controller
{
    public function redirect(Request $request)
    {
        $request->session()->put('url', URL::previous());
        return Socialite::driver('facebook')->redirect();
    }

    public function callback(SocialAccountService $service, Request $request)
    {
        try {
            $user = $service->createOrGetUser(Socialite::driver('facebook')->user());
        }
        catch(\Exception $e) {
            $request->session()->flash('alert-danger', 'Nu ai acceptat conexiunea cu Facebook!');
            return redirect($request->session()->get('url'));
        }
        Auth::login($user, true);
        $request->session()->flash('alert-success', 'Te-ai conectat cu Facebook!');
        return redirect($request->session()->get('url'));
    }
}
