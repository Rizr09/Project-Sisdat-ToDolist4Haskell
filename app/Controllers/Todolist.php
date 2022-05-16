<?php

namespace App\Controllers;

class Todolist extends BaseController
{
    public function content() {
        $data = [
            'title' => 'content | ToDoList4Haskell'
        ];
        return view('todolist/content', $data);
    }
}
