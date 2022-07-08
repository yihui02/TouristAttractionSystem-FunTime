@extends('layout')

@section('content')
<div class="w-4/5 m-auto text-center">
    <div class="py-15 border-b border-gray-10"><br><br><br><br>
        <h1 class="text-6xl ">
            Blog Post
        </h1>
    </div>
</div><br>

@if (session()->has('massege'))
    <div class="w-4/5 m-auto mt-10 pl-2">
        <p class="w-2/6 mb-4 text-gray-50 bg-green-500 rounded2xl py-4">
            {{ session()->get('message') }}
        </p>
    </div>
@endif

@if (Auth::check())
    <div class="pt-15 w-4/5 m-auto">
        <a 
            href="/blog/create"
            class="bg-black-500 uppercase bg-transparent text-gray-100 text-xs font-extrabold py-2 px-4 rounded-3xl">
            Create Post
        </a>
    </div><br><br>
@endif

@foreach($posts as $post)
<div class="sm:grid grid-cols-2 gap-20 w-2/5 mx-auto py-15 border-b border-gray-200">
    <div>
        <img src="{{ asset('images/' . $post->image_path) }}" width="100" class="img-fluid"  alt="">
    </div>
    <div class="text-gray-700 font-bold text-5xl pb-4">
        <h2>
            {{ $post->title }}
        </h2>

        <span class="text-gray-500">
            By<span class="font-bold italic text-gray-800">{{ $post->user->name }}</span>, 
            Created On {{ date('jS M Y', strtotime($post->updated_at)) }}  
        </span>

        <p class="text-xl text-gray-700 pt-8 pb-10 leading-8 font-light">
            {{ $post->description }}
        </p>

        <a href="/blog/{{ $post->slug }}" class="uppercase bg-blue-500 text-gray-100 text-lg font-extrabold py-4 px-8 rounded-3xl">
            Keep Reading
        </a>

        <a href="/blog/{{ $post->slug }}" class="uppercase bg-blue-500 text-gray-100 text-lg font-extrabold py-4 px-8 rounded-3xl">
            Share
        </a>

        @if (isset(Auth::user()->id) && Auth::user()->id == $post->user_id)
            <span class="float-right">
                <a href="/blog/{{ $post->slug }}/edit"
                   class="text-gray-700 italic hover:text-gray-900 pb-1 bprder-b-2">
                    Edit 
                </a>
            </span>

            <span class="float-right">
                <form 
                    action="/blog/{{ $post->slug }}"
                    method="POST">
                    @csrf 
                    @method('delete')

                    <button class="text-red-500 pr-3"
                            type="submit">
                        Delete 
                    </button>

                </form>
            </span>
        @endif
    </div>
</div>
@endforeach

@endsection