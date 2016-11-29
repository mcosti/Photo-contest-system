@extends('contest.master')

@section('page_title')
    <title>{{$entry->author_name}} - {{ config('app.name') }}</title>
@endsection

@section('contest.content')
    <div class="container">
        <div class="flash-message">
            @foreach (['danger', 'warning', 'success', 'info'] as $msg)
                @if(Session::has('alert-' . $msg))

                    <p class="alert alert-{{ $msg }}">{{ Session::get('alert-' . $msg) }} <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></p>
                @endif
            @endforeach
        </div> <!-- end .flash-message -->
        <div class="panel panel-default">
            <div class="panel-heading">
               <h3 class="text-center"> <a href="{{Request::url()}}"> {{$entry->author_name}}</a></h3>
            </div>

            <div class="panel-body">
                <div class="row">
                    <div class="col-xs-12 col-md-12 col-lg-8 col-lg-offset-2">
                        <div class="">
                            <a href="{{$entry->url}}" data-lightbox="entry">
                                <img class="img-responsive" src="{{$entry->url}}" data-lightbox="entry"/>
                            </a>
                        </div>
                    </div>
                </div>
                @if(!Auth::user())
                    <div class="row">
                        <div class="col-xs-12 col-md-6 col-lg-6 col-md-offset-3 col-lg-offset-3">
                            <p class="text-center">Trebuie sa fii autentificat pentru a putea vota.</p>
                            <a href="{{ url('auth/fblogin') }}">
                                <button class=" btn btn-icon btn-facebook btn-block">Login cu Facebook</button>
                            </a>
                        </div>
                    </div>

                @else
                    <div class="row">
                        <div class="text-center">Voteaza cu {{$entry->author_name}}</div>
                    </div>
                    <div class="row">

                        <div class="col-xs-12 col-md-6 col-lg-6 votes">
                            <p class="text-center">Voturi: <b>{{$entry->votes()->count()}}</b></p>
                        </div>

                        <div class="col-xs-12 col-md-6 col-lg-6">
                            @if($user->vote()->count())
                                <button data-toggle="modal" data-target="#votModal"
                                        class="btn btn-primary btn-block btn-lg disabled">Ai votat.
                                </button>
                            @else
                                <button data-toggle="modal" data-target="#votModal"
                                        class="btn btn-primary btn-block btn-lg">Voteaza.
                                </button>
                            @endif

                        </div>
                    </div>

                @endif

            </div>

        </div>
    </div>
    <div class="container">
        <!-- Your embedded comments code -->
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="text-center">Comentarii</h3>
            </div>
            <div class="panel-body">
                <div class="fb-comments" style="" data-href="{{url()->current()}}" data-width="400" data-numposts="5" data-mobile="true"></div>
            </div>
        </div>
    </div>
    @if(Auth::user())

        <div class="modal fade" id="votModal" tabindex="-1" role="dialog" aria-labelledby="votModalLabel"
             aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                    aria-hidden="true">×</span></button>
                        <h4 class="modal-title" id="votModalLabel">{{$entry->author_name}}</h4>
                    </div>
                    <div class="modal-body">
                        <p>Esti pe cale sa votezi cu {{$entry->author_name}}</p>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Inchide</button>
                        <a href="{{route('entry.vote', $entry->id)}}">
                            @if($user->vote()->count())
                                <button data-toggle="modal" data-target="#votModal"
                                        class="btn btn-primary disabled">Ai votat.
                                </button>
                            @else
                                <button data-toggle="modal" data-target="#votModal"
                                        class="btn btn-primary">Voteaza.
                                </button>
                            @endif
                        </a>
                    </div>
                </div>
            </div>
        </div>
    @endif
    @include('cookieConsent::index')

@endsection


