<label for="name">Customer name</label><span class="redtxt"> {{$errors->first('name')}}</span>
<input type="text" name='name' id='name' class="col-md-12">

<label for="email">Customer email</label><span class="redtxt"> {{$errors->first('email')}}</span>
<input type="text" name='email' id='email' class="col-md-12">

<label for="age">Customer age</label><span class="redtxt"> {{$errors->first('age')}}</span>
<input type="text" name='age' id='age' class="col-md-12">


<label for="status">status</label><span class="redtxt">{{$errors->first('status')}}</span>
<select name="status" id="status" class="col-md-12">
	<option value="1">select status</option>
</select>

<label for="company">company</label><span class="redtxt">{{$errors->first('company')}}</span>
<select name="company" id="company" class="col-md-12">
	<option value="1">select company</option>
</select> 