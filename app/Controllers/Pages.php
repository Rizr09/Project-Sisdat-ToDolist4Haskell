<?php

namespace App\Controllers;

class Pages extends BaseController
{
    public function index() {
        $data = [
            'title' => 'Home | ToDoList4Haskell'
        ];
        return view('pages/landing_page', $data);
    }
    public function masuk() {
        $data = [
            'title' => 'masuk | ToDoList4Haskell'
        ];
        return view('pages/masuk', $data);
    }
}
