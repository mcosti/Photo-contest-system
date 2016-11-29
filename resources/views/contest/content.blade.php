@extends('contest.master')

@section('page_title')
    <title>{{ config('app.name') }}</title>
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
                    <div class="panel-heading">Participanti</div>
                    <div class="panel-body">
                        <div class="grid center-block">
                        @foreach($entries as $entry)
                            <div class="card grid-item" >
                                <div class="card-image">
                                    <a href="{{url('concurs/entry/'.$entry->id)}}">
                                        <img class="" src="{{$entry->url}}"/>
                                    </a>
                                </div>
                                <div class="card-image-header">
                                    <p class="">{{$entry->votes()->count()}} <i class="fa fa-heart" aria-hidden="true"></i></p>
                                </div>
                                <div class="card-image-bottom">
                                    <h4>
                                        <p>{{$entry->author_name}}
                                            <i class="fa fa-check-circle pull-right" style="font-size:26px;" aria-hidden="true"></i>
                                        </p>
                                    </h4>
                                </div>

                            </div>
                        @endforeach
                        </div>
                        <div class="row text-center">
                                {{$entries->links()}}
                        </div>
                    </div>
                </div>
        </div>


    @include('cookieConsent::index')

@endsection


