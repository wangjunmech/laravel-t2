@extends('layout')
@section('title','Customers Details')
@section('content')
<style>
    .left{
        background: yellow;
    }
    .right{
        background: pink;
    }
    .cell{
        border: 2px solid green;
    }
</style>
    <div class="content">
        <div class="row">
        <a href="{{$customer->id}}/edit"><button class="btn btn-primary">Edit customer</button></a>
        <a href="{{url('customers/delete')}}">
        <form action="/customers/{{$customer->id}}" method="post">
                @method('DELETE')
                @csrf
            <button type='submit' class="btn btn-danger pull-right">Delete customer</button>
        </form>
        </a>
        </div>

                <h3>Customer Details</h3>


        <div class="row"><div class="col-sm-3 col-md-3 cell"><strong>Customer ID:</strong></div><div class="col-sm-5 col-md-5 cell"> {{$customer->id}}</div></div>
        <div class="row"><div class="col-sm-3 col-md-3 cell"><strong>Customer Name:</strong></div><div class="col-sm-5 col-md-5 cell">  {{$customer->name}}</div></div>
        <div class="row"><div class="col-sm-3 col-md-3 cell"><strong>Customer email:</strong></div><div class="col-sm-5 col-md-5 cell">  {{$customer->email}}</div></div>
        <div class="row"><div class="col-sm-3 col-md-3 cell"><strong>Customer radom:</strong></div><div class="col-sm-5 col-md-5 cell">  {{$customer->radom}}</div></div>
        <div class="row"><div class="col-sm-3 col-md-3 cell"><strong>Customer company:</strong></div><div class="col-sm-5 col-md-5 cell">  {{$customer->company->name}}</div></div>
        <div class="row"><div class="col-sm-3 col-md-3 cell"><strong>Customer active:</strong></div><div class="col-sm-5 col-md-5 cell">  {{$customer->active}}</div></div>
        <div class="row"><div class="col-sm-3 col-md-3 cell"><strong>Customer created_at:</strong></div><div class="col-sm-5 col-md-5 cell">  {{$customer->created_at}}</div></div>
       
      
           
        </div>
    </div>
@endsection
