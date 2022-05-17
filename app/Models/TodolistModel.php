<?php 

namespace App\Models;
use CodeIgniter\Model;

class TodolistModel extends Model {
    protected $table = 'list';
    protected $primaryKey = 'id_list';
    protected $allowedFields = ['judul', 'deskripsi', 'deadline', 'kode_matkul'];
}