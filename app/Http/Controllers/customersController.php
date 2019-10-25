<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Customer;

class customersController extends Controller
{
    // const Server = $_SERVER["HTTP_HOST"];
    // const Server = $_SERVER["HTTP_HOST"];
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        // $customers = Customer::all();
        $customers=Customer::top()->get();
        // dd($rec);
        return view('customers/index',compact('customers'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $customer=new Customer();
        return view('customers/create',compact('customer'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $data =$this->formValidation();

        // dd($data['name']);
        Customer::create($data);

        return redirect('/customers')->with('msg','created new user: '.$data['name'].' successfully!');
        // dd($data);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Customer $customer)
    {

        if(!strstr(@$_SERVER['HTTP_REFERER'],$_SERVER["HTTP_HOST"])){
            abort(404);
        }
        return view('/customers.show',compact('customer'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Customer $customer)
    {
        // dd($customer);
        // $customer = Customer::where('id', $customer)->firstorfail();
        if(!strstr(@$_SERVER['HTTP_REFERER'],$_SERVER["HTTP_HOST"])){
            abort(404);
        }

        return view('customers.edit',compact('customer'));

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Customer $customer)
    {
        $data =$this->formValidation();
        $customer->update($data);
        return redirect('/customers/'.$customer->id)->with('msg','Updated successfully!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Customer $customer)
    {
        // $customer->delete();        
        return redirect('/customers')->with('msg','User: '.$customer['name'].' deleted!');
    }
    public function formValidation(){
        $data=request()->validate([
            'name'=>'required|min:3',
            'email'=>'required|min:3|max:30|email',
        ]);
        return $data;

    }
}
