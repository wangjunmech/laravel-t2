@extends('layouts.app')
@section('title','Create customer')

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
    <div class="container">
        <div class="card">
        <div class="row mx-5">
        <a href="{{$customer->id}}/edit" class=" mx-5"><button class="btn btn-primary">Edit customer</button></a>

        <a href="{{url('customers/delete')}}">
        <form action="/customers/{{$customer->id}}" method="post">
                @method('DELETE')
                @csrf
            <button type='submit' class="btn btn-danger pull-right">Delete customer</button>
        </form>
        </a>

        </div>

                <h3>Customer Details</h3><?php ?>
                <div>
@if(session()->has('msg'))
    <div class="alert alert-success" role="alert">
      <strong class="redtxt">消息提示:{{session()->get('msg')}}</strong>
    </div>
@endif
</div>


        <div class="row"><div class="col-sm-3 col-md-3 cell"><strong>Customer ID:</strong></div><div class="col-sm-5 col-md-5 cell"> {{$customer->id}}</div></div>
        <div class="row"><div class="col-sm-3 col-md-3 cell"><strong>Customer Name:</strong></div><div class="col-sm-5 col-md-5 cell">  {{$customer->name}}</div></div>
        <div class="row"><div class="col-sm-3 col-md-3 cell"><strong>Customer email:</strong></div><div class="col-sm-5 col-md-5 cell">  {{$customer->email}}</div></div>
        
        </div>
        </div>
    </div>
@endsection
