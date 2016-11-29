<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Entry;
use DB;
use Auth;
class SearchController extends Controller
{
    public function index(Request $request) {
        $author = $request->author;
        $string = '%'.$author.'%';
        $keywords = [
            'SELECT',
            'WHERE',
            '\'',
            'UNION',
            'FROM',
            '*',
            ';',
            'DROP',
            'TABLE'
        ];

        $words = explode(" ", $author);
        for($i = 0; $i < count($words); $i++)
        {
            for($j = 0; $j < count($keywords); $j++)
                if(strstr(strtoupper($words[$i]), $keywords[$j]))
                {
                    $request->session()->flash('alert-danger', 'LOL. Suntem in 2016. Chiar crezi ca SQLi mai e la moda?');
                    $i = count($words);
                    break;

                }
        }


        if(strlen($author)>100) {
            $request->session()->flash('alert-danger', 'Sunt sigur ca nimeni nu are un nume asa de lung!');
        }
        else {
            DB::table('searches')->insert([
                'user_id' => Auth::user() ? Auth::user()->id : NULL,
                'search' => $author,
                'ip' => $request->ip()
            ]);
        }

        $entries = Entry::where('author_name', 'LIKE', $string)->paginate(8);
        return view('contest.search', compact('entries'));
    }

}
