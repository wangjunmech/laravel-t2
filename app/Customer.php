<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    //
    protected $guarded=[];

    //scope在模型中用top命名来处理数据再给到控制器，控制器中获取方式  $customers=Customer::top()->get();

    public function scopeTop($query){
    	// return $query->take(2);//获取指定条数的数据
    	// return $query->whereRaw('id > 3')->whereRaw('id <10');//->whereRaw('fiveAverage > tenAverage')
    	// return $query->where('id','1');
    }

}
