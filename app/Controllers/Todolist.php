<?php

namespace App\Controllers;
use App\Models\TodolistModel;

class Todolist extends BaseController
{   
    public function content() {
        $user_id = user_id();
        // $todolist = $this->TodolistModel->findAll();
        $todolist = $this->db->query("SELECT id_list, judul, deskripsi, deadline, npm, Kode_matkul, id FROM list WHERE id = $user_id")->getResultArray();
        $data = [
            'title' => 'content | ToDoList4Haskell',
            'todolist' => $todolist,
            'nama' => user()->username
        ];
        // $this->db = \Config\Database::connect();
        // $list =  $this->db->query('SELECT * FROM list');
        // foreach ($list->getResult() as $row) {
        //     d($row);
        // } kalau kepepet pake ini, gimana lagi lah ya wkwkwk

        return view('todolist/content', $data);
    }
    public function detail($id_list){
        $list = $this->TodolistModel->where(['id_list' => $id_list])->first();
        $matkul = '';
        if($list['Kode_matkul'] == "D10G4" ) {
            $matkul = "Sistem Database I";
        } elseif($list['Kode_matkul'] == "D10G2" ) {
            $matkul = "Struktur Data";
        } elseif($list['Kode_matkul'] == "D10A2" ) {
            $matkul = "Kalkulus II";
        } elseif($list['Kode_matkul'] == "D10E2" ) {
            $matkul = "Statistika";
        } elseif($list['Kode_matkul'] == "D10G3" ) {
            $matkul = "Arsitektur dan Organisasi Komputer";
        } elseif($list['Kode_matkul'] == "D10H2" ) {
            $matkul = "Fisika Informatika";
        }
        $data = [
            'title' => 'detail | ToDoList4Haskell',
            'list' => $list,
            'matkul' => $matkul,
            'nama' => user()->username
        ];
        return view('todolist/detail', $data);
        // dd($data);
    }
}
