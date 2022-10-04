<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use validator;
use Hash;
class UserController extends Controller
{
    //

    function view_user($id)
    {
        $data = User::find($id);
        $data->get();
        return response()->json($data);
    }

    function user_list()
    {
        $data = User::all();
        return response()->json($data);
    }

    function save_user(Request $request)
    {
        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = Hash::make($request->password);
        $user->role = $request->role;
        $user->save();

        return response()->json($user);
    }

    function update(Request $request, $id)
    {
        $user = User::find($id);
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = Hash::make($request->password);
        $user->role = $request->role;
        $user->save();

        return response()->json($user);
    }

    function delete_user($id)
    {
        $user = User::find($id);
        $user->delete();
        return response()->json($user);
    }
}
