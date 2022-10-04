<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Task;
use validator;
use Hash;

class TaskController extends Controller
{
    //

    function view_task($id)
    {
        $task = Task::find($id);
        $data = Task::with("users")->get();
        return response()->json($data);
    }

    function task_list()
    {
        $data = Task::all();
        return response()->json($data);
    }

    function save_task(Request $request)
    {
        $task = new Task();
        $task->name = $request->name;
        $task->description = $request->description;
        $task->status = $request->status;
        $task->user_id = $request->assignee;
        $task->save();

        return response()->json($task);
    }

    public function update(Request $request, $id)
    {
        $task = Task::find($id);
        $task->name = $request->name;
        $task->description = $request->description;
        $task->status = $request->status;
        $task->user_id = $request->user_id;
        $task->update();

        return response()->json($task);
    }

    function delete_task($id)
    {
        $task = Task::find($id);
        $task->delete();
        return response()->json($task);
    }

    function search_task($id)
    {
        $task = Task::with("users")
            ->where("user_id", $id)
            ->get();
        return response()->json($task);
    }
}
