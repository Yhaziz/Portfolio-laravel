<?php

namespace App\Http\Controllers;
use App\Models\Skill;
use App\Models\Project;



class WelcomeController extends Controller
{
    public function __invoke()
    {
        $skills = Skill::all();
        $projects = Project::with('skill')->get();

        return view('welcome', compact('skills', 'projects'));
    }
}
