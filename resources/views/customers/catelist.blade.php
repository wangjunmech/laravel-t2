@extends('layout')
@section('title','Customers by Category')
@section('content');
<style>
    .left{
        background: yellow;
    }
    .right{
        background: pink;
    }
</style>
    <div class="content">
        <hr>
        <a href="{{url('customers/create')}}"><button class="btn btn-danger">Add new customer</button></a>
        <div class="links">
            <?php
            // foreach($customers as $c){
            //     echo '<li>'.$c->name.' ====> '.$c->email.'</li>';
            // }
           ?>
        </div>
        <button class="btn btn-primary">Customer list <span class="badge">{{$ActivecustomersNum}}</span> <span class="badge">{{$inActivecustomersNum}}</span></button>
        <div class="row">
            <div class="left col-sm-6 col-md-6">
                <h3>Active customers</h3>
                <ul>
                    @foreach($activeCustomer as $key):
                    <li class="" role="alert">{{$key->name}} <||||> {{$key->email}}({{$key->company->name}}) </li>
                    @endforeach
                </ul>                
            </div>
            <div class="right col-sm-6 col-md-6">
                <h3>inActive customers</h3>
                <ul>
                    @foreach($inactiveCustomer as $c):
                    <li class="" role="alert">{{$c->name}} <||||> {{$c->email}} </li>
                    @endforeach
                </ul>                
            </div>
        </div>
        <hr>

        <div class="row">
            @foreach($companies as $k):
            <h3>{{$k->name}}</h3>
            <div class="left col-sm-12 col-md-12">
                <ul>
                    @foreach($k->customers as $key):
                    <li class="" role="alert"> {{$key->name}}[{{$key->company->name}}]</li>
                    @endforeach
                    
                </ul>                
            </div>
            @endforeach
        </div>

        
    </div>
@endsection

