<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <!-- <div class="row">
        <div class="col mt-2 d-grid gap-2 d-md-flex justify-content-md-end">
            <a href="/logout">
                    <button class="btn btn-danger" type="submit" name="submit">Logout</button>
            </a>
        </div>
    </div> -->

    <div class="row">
        <div class="col">
            <a href="" class="btn btn-primary mt-3">Add New Event</a>
            <h2 class="mt-2">Hi <?= $nama; ?> This is Your ToDoList</h2>
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
                            <td><?= $namaMatkul; ?></td>
                            <td>
                                <a href="" class="btn btn-success">Detail</a>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>
</div>

<?= $this->endSection(); ?>