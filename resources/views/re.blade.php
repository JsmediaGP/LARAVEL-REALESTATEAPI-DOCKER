<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<form action="" method="post">
    @csrf
    <label>Choose Agent</label>
    <select name="agent_id" id="agent_id" class="agent_id">
        <option disable selected>--select category--</option>
        @foreach($agents as $item)
        <option value="{{ $item->id }}">{{ $item->name}}</option>
    @endforeach
    </select>
        <input type="text" name="name" placeholder="name">
        <input type="number" name="sale_price" placeholder="sale_price">
   </form>


    {{-- <select id="dropdown" name="selected_option">
        @foreach ($agents as $agent)
            <option value="{{ $agent->id }}">{{ $agent->id }}</option>
        @endforeach
    </select> --}}



    <select name="aksj" id="">Agent Id</select>
    <option value="{{}}">{{}}</option>
</body>
</html>