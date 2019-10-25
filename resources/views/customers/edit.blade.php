@extends('layouts.app')
@section('title','Edit customer')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header"><h3>Edit customers</h3></div>
                <div .class='form form-conroll'>
                	<form action="/customers/{{$customer->id}}" method="post" name=''>
                	@include('customers/form')
                    @method('patch')

                	@csrf
                	<button type="submit" class="btn btn-primary mx-2 my-2 px-5">Save Edit</button>

                	</form>

                </div>
            </div>
        </div>
    </div>
</div>
@endsection
