@extends('layouts.app')
@section('title','cust index')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header"><h3>Customers</h3></div>
                <div .class='form form-conroll'>
                	<a href="/customers/create" class="btn btn-primary mx-2 my-2 px-5">Add new customer</a>
                    <hr>
                    @foreach($customers as $c)
                        <div class="row">
                            <div class="col-2">{{$c->id}}</div>
                            <div class="col-2">{{$c->name}}</div>
                            <div class="col-2">{{$c->name}}</div>
                            <div class="col-1">
                                <ul>
                                    <a href="{{url('customers/delete')}}" class="">
                                    <form action="/customers/{{$c->id}}" method="post">
                                            @method('DELETE')
                                            @csrf
                                        <button type='submit' class="btn btn-danger">Delete</button>
                                    </form>
                                    </a>
                                </ul>
                            </div>
                            <div class="col-1">     
                                    <ul class="">
                                    <a href="/customers/{{$c->id}}" ><button class="btn btn-primary">Modify</button></a>
                                    </ul>
                            </div>
                            <div class="col-1">     
                                    <ul class="">
                                    <a href="/customers/{{$c->id}}" ><button class="btn btn-success">Details</button></a>
                                    </ul>
                            </div>

                        </div>

                    @endforeach

                </div>
            </div>
        </div>
    </div>
</div>
@endsection
