<?php 

namespace App\Models;
use CodeIgniter\Model;

class MahasiswaModel extends Model {
    protected $table = 'mahasiswa';
    protected $primaryKey = 'NPM';
    protected $allowedFields = ['NPM', 'nama_mahasiswa', 'kelas', 'id'];
    public function getMhs($id_user = false){
        if($id_user == false){
            return $this->where(['id_user' => $id_user])->findAll();
        } else {
            return $this->where(['id_user' => $id_user])->first();
        }
    }
}