<?php 

namespace App\Models;
use CodeIgniter\Model;

class MahasiswaModel extends Model {
    protected $table = 'mahasiswa';
    protected $primaryKey = 'NPM';
    protected $allowedFields = ['NPM', 'nama_mahasiswa', 'kelas'];
}