<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\School;
use App\Course;
use App\CourseChecklist;
use App\User;
use Token;
class SchoolController extends Controller
{
	public function createskul()
	{
		$data = School::all();
		$data1 = Course::all();
		return view('school.createskul',compact('data','data1'));
	}

	public function storeskul(Request $request)
	{
		$data = new School();
		$data->name = $request->input('school_name');
		$data->save();
		return back()->with('status','Successfully Registered');
	}

	

	public function storecos(Request $request)
	{
		$token = Token::Unique('courses','course_code',5);
		$data = new Course();
		$data->school_id = $token;
		$data->course_code = $request->input('cos_name');
		$data->course_name = $request->input('skul');
		$data->save();
		return back()->with('status','Successfully Registered');
		return view('school.createskul');
	}

	public function createchecklist()
	{
		return view('school.createskul');
	}

	public function storechecklist()
	{
		return view('school.createskul');
	}

}
