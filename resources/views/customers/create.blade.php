@extends('layouts.app')
@section('title','Create customer')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header"><h3>Create New customers</h3></div>
                <div .class='form form-conroll'>
                	<form action="/customers" method="post">
                	@include('customers/form')

                	@csrf
                	<button type="submit" class="btn btn-primary mx-2 my-2 px-5">Submit</button>

                	</form>

                </div>
            </div>
        </div>
    </div>
</div>
@endsection
