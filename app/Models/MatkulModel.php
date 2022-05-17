<?php 

namespace App\Models;
use CodeIgniter\Model;

class MatkulModel extends Model {
    protected $table = 'matkul';
    protected $primaryKey = 'kode_matkul';
    protected $allowedFields = ['kode_matkul', 'nama_matkul'];
}