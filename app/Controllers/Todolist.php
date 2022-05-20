<?php

namespace App\Controllers;
use App\Models\TodolistModel;

class Todolist extends BaseController
{   
    public function content() {
        $user_id = user_id();
        // $todolist = $this->TodolistModel->getList($user_id);
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

        if(!$list){
            throw new \CodeIgniter\Exceptions\PageNotFoundException('List not found');
        }

        return view('todolist/detail', $data);
        // dd($data);
    }
    public function create(){
        $matkul = $this->MatkulModel->findall();
        $data = [
            'title' => 'Add More List | ToDoList4Haskell',
            'matkul' => $matkul,
            'validation' => \Config\Services::validation()
        ];
        return view('todolist/create', $data);
    }
    public function save(){
        // validasi input
        if(!$this->validate([
            'judul' => [
                'rules' => 'required',
                'errors' => [
                    'required' => 'Insert a valid title'
                ]
            ],
            'deskripsi' => [
                'rules' => 'required',
                'errors' => [
                    'required' => 'Insert a valid description'
                ]
            ],
            'deadline' => [
                'rules' => 'required',
                'errors' => [
                    'required' => 'Insert a valid deadline'
                ]
            ],
        ])) {
            return redirect()->to('/todolist/create')->withInput();
        }
        $NPM = $this->MahasiswaModel->where(["id_user" => user_id()])->first()['NPM'];
        $data = [
            'judul' => $this->request->getVar('judul'),
            'deskripsi' => $this->request->getVar('deskripsi'),
            'deadline' => $this->request->getVar('deadline'),
            'NPM' => $NPM,
            'Kode_matkul' => $this->request->getVar('Kode_matkul'),
            'id' => user_id()
        ];
        $this->TodolistModel->insert($data);
        session()->setFlashdata('pesan', 'Data successfully saved!');
        return redirect()->to('/todolist/content');
    }
    public function delete($id_list){
        $this->TodolistModel->delete($id_list);
        session()->setFlashdata('pesan', 'Data successfully deleted!');
        return redirect()->to('/todolist/content');
    }
    public function edit($id_list){
        $list = $this->TodolistModel->where(['id_list' => $id_list])->first();
        $data = [
            'title' => 'Edit Your List | ToDoList4Haskell',
            'list' => $list,
            'matkul' => $this->MatkulModel->findAll(),
            'validation' => \Config\Services::validation()
        ];
        return view('todolist/edit', $data);
    }
    public function update($id_list){
        $judulLama = $this->TodolistModel->getList($id_list)['judul'];
        if($judulLama == $this->request->getVar('judul')){
            $rule_judul = 'required|is_unique[list.judul]';
        } else {
            $rule_judul = 'required';
        }
        if(!$this->validate([
            'judul' => $rule_judul,
            'deskripsi' => [
                'rules' => 'required',
                'errors' => [
                    'required' => 'Insert a valid description',
                    'is_unique' => 'This title already exists'
                ]
            ],
            'deadline' => [
                'rules' => 'required',
                'errors' => [
                    'required' => 'Insert a valid deadline'
                ]
            ],
        ])) {
            return redirect()->to('/todolist/create')->withInput();
        }
        $NPM = $this->MahasiswaModel->where(["id_user" => user_id()])->first()['NPM'];
        $data = [
            'id_list' => $id_list,
            'judul' => $this->request->getVar('judul'),
            'deskripsi' => $this->request->getVar('deskripsi'),
            'deadline' => $this->request->getVar('deadline'),
            'NPM' => $NPM,
            'Kode_matkul' => $this->request->getVar('Kode_matkul'),
            'id' => user_id()
        ];
        $this->TodolistModel->update($id_list, $data);
        session()->setFlashdata('pesan', 'Data successfully updated!');
        return redirect()->to('/todolist/content');
    }
}
