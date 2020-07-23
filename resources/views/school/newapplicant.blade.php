@extends('layouts.template')
@section('content')
<div class="box-body">
  
<div class="row">

<div class="col-md-12">  

<div class="box box-success">
            <div class="box-header with-border bg-success disabled">
                <h6 class="box-title "> Excemption Application</h6>
            </div> 
           <div class="box-body">
          {!! Form::open(['method'=> 'post','url' => '' ,'files' => true]) !!}

              <div class="form-group col-md-4">
            {!! Form::label('C_Name', 'Name Of Applicant', ['class' => 'col-form-label '])!!}
            {!!Form::text('app_name',Auth::user()->name,['class' => 'form-control','readonly' ])!!}
           </div>    

            <div class="form-group col-md-4">
            {!! Form::label('C_Name', 'CERT/DIPLOMA done', ['class' => 'col-form-label '])!!}
            {!!Form::text('checklist',Null,['class' => 'form-control' ])!!}
           </div> 

            <div class="form-group col-md-4">
            {!! Form::label('C_Name', 'Institution', ['class' => 'col-form-label '])!!}
            {!!Form::text('checklist',Null,['class' => 'form-control' ])!!}
           </div>  

           <div class="form-group col-md-12 ">
            {!! Form::label('C_Name', 'Apply for Excemption in', ['class' => 'col-form-label '])!!}
            <select class="form-control" name="course_code">
              <option value="">Select Course</option>
              @if(!empty($data1))
              @foreach($data1 as $skul)
                <option value="{{$skul->course_code}}">{{$skul->course_name}}</option>
              @endforeach
              @endif
            </select>
           </div>
       
           </div>         
           <div class="box-footer ">
              
              <button type="submit" class="btn btn-info ">Next</button>
            </div>
           {!!Form::close()!!}
   </div>
</div>
</div>
 </div>
 

@endsection
