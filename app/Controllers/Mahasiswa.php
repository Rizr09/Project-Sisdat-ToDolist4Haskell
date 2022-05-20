<?php

namespace App\Controllers;

class Mahasiswa extends BaseController
{
    public function content() {
        $data = [
            'title' => 'content | ToDoList4Haskell',
        ];
        return view('todolist/content', $data);
    }
    public function about() {
        $id = user_id();
        $data = [
            'title' => 'about | ToDoList4Haskell',
            'mhs' => $this->MahasiswaModel->getMhs($id),
        ];
        return view('pages/about', $data);
    }
}
