<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<div class="container">

    <div class="row">
        <div class="col">
            <a href="/todolist/content/create" class="btn btn-primary mt-3">Add New Event</a>
            <h2 class="mt-2 typed-out">Hi <?= $nama; ?> This is Your ToDoList</h2>
            <?php if (session()->getFlashdata('pesan')) : ?>
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <?= session()->getFlashdata('pesan'); ?>
                </div>
            <?php endif; ?>
            <table class="table align-middle">
                <thead>
                    <tr>
                        <th scope="col">No</th>
                        <th scope="col">Judul</th>
                        <th scope="col">Deskripsi</th>
                        <th scope="col">Deadline</th>
                        <th scope="col">Mata Kuliah</th>
                        <th scope="col">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1; ?>
                    <?php foreach ($todolist as $k) : ?>
                        <tr>
                            <th scope="row"><?= $i++; ?></th>
                            <td><?= $k['judul']; ?></td>
                            <td><?= $k['deskripsi']; ?></td>
                            <td><?= $k['deadline']; ?></td>
                            <?php if ($k['Kode_matkul'] == "D10G4") : ?>
                            <td>Sistem Database I</td>
                            <?php elseif ($k['Kode_matkul'] == "D10G2") : ?>
                            <td>Struktur Data</td>
                            <?php elseif ($k['Kode_matkul'] == "D10A2") : ?>
                            <td>Kalkulus II</td>
                            <?php elseif ($k['Kode_matkul'] == "D10E2") : ?>
                            <td>Statistika</td>
                            <?php elseif ($k['Kode_matkul'] == "D10G3") : ?>
                            <td>Arsitektur dan Organisasi Komputer</td>
                            <?php elseif ($k['Kode_matkul'] == "D10H2") : ?>
                            <td>Fisika Informatika</td>
                            <?php endif; ?>
                            <td>
                                <a href="/todolist/content/<?= $k['id_list']; ?>" class="btn btn-success">Detail</a>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>
</div>

<?= $this->endSection(); ?>