<?php

namespace App\Http\Controllers\Pages;

use App\Models\User;
use Illuminate\View\View;
use App\Http\Controllers\Controller;

class ProfileController extends Controller
{
    public function view(User $user): View
    {
        return view('profiles.view', compact('user'));
    }
}