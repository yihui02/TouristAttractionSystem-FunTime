@extends('layout')

@section('content')
<br><br><br>
<div class="w-4/5 m-auto text-center">
    <div class="py-15">
        <h1 class="text-6xl">
            {{ $post->title }}
        </h1>
    </div>
</div><br>

<div class="w-4/5 m-auto pt-20 text-right">
    <span class="text-gray-500">
        By <span class="font-bold italic text-gray-800">{{ $post->user->name }}</span>, Created on {{ date('jS M Y', strtotime($post->updated_at)) }}
    </span>

    <br><br><br>

    <center>
    <div>
        <img src="{{ asset('images/' . $post->image_path) }}" width="650" class="img-fluid"  alt="">
    </div>
    </center>

    <br><br>

    <p class="text-xl text-gray-700 pt-8 pb-10 leading-8 font-light text-center">
        {{ $post->description }}
    </p>
</div>

@endsection 