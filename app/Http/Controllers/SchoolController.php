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

	public function coursechk()
	{
		$data = CourseChecklist::all();
		$data1 = Course::all();

		return view('school.coursechecklist',compact('data','data1'));
	}

	public function storecoursechk(Request $request)
	{

		$data = new CourseChecklist();
		$data->course_code = $request->input('course_code');
		$data->checklist_name = $request->input('checklist');
		$data->save();

		return back()->with('status','Successfully ');

		return view('school.coursechecklist',compact('data'));
	}

	
	public function deletechecklist($id)
	{
		$data = CourseChecklist::findorfail($id);
		$data->delete();
		return back()->with('danger','Successfully deleted');

	}


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
		$token = Token::Unique('courses','course_code',5);
                    $t = date("Y",strtotime("now"));
                    $token = strtoupper('KABU-'.$token.'-'.$t); 
		$data = new Course();
		$data->school_id = $request->input('skul');
		$data->course_code = $token;
		$data->course_name = $request->input('cos_name');
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
