<?php

namespace App\Controllers;

class Mahasiswa extends BaseController
{
    public function content() {
        $data = [
            'title' => 'content | ToDoList4Haskell'
        ];
        return view('todolist/content', $data);
    }
}
