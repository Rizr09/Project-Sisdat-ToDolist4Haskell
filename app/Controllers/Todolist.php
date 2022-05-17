<?php

namespace App\Controllers;
use App\Models\TodolistModel;

class Todolist extends BaseController
{
    public function content() {
        $user_id = user_id();
        $todolist = $this->TodolistModel->findAll();
        $db = \Config\Database::connect();
        // $todolist = $db->query("SELECT * FROM list ")->getResultArray();
        $namaMatkul =  $db->query("SELECT nama_matkul FROM matkul WHERE kode_matkul = '".$todolist[0]['Kode_matkul']."'");
        $data = [
            'title' => 'content | ToDoList4Haskell',
            'todolist' => $todolist,
            'namaMatkul' => $namaMatkul->getRowArray()['nama_matkul'],
            'nama' => user()->username
        ];
        // $db = \Config\Database::connect();
        // $list =  $db->query('SELECT * FROM list');
        // foreach ($list->getResult() as $row) {
        //     d($row);
        // } kalau kepepet pake ini, gimana lagi lah ya wkwkwk

        return view('todolist/content', $data);
    }
}
