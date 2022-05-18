<?php 

namespace App\Models;
use CodeIgniter\Model;

class TodolistModel extends Model {
    protected $table = 'list';
    protected $primaryKey = 'id_list';
    protected $allowedFields = ['id_list', 'judul', 'deskripsi', 'deadline', 'Kode_matkul'];
    public function getList($id_list = false){
        if($id_list == false){
            return $this->findAll();
        } else {
            return $this->where(['id_list' => $id_list])->first();
        }
    }
}