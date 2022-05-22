<?= $this->extend('layout/template'); ?>
<?= $this->section('content'); ?>

<div class="container">
    <div class="row">
        <div class="col">
            <h2 class="my-3">Update your ToDoList</h2>
            <form action="/todolist/content/update/<?= $list['id_list']; ?>" method="post">
                <?= csrf_field(); ?>
                <div class="row mb-3">
                    <label for="judul" class="col-sm-2 col-form-label">Judul</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control <?= ($validation->hasError('judul')) ? 'is-invalid' : ''; ?>" id="judul" name="judul" autofocus value="<?= $list['judul']; ?>">
                        <div class="invalid-feedback">
                            <?= $validation->getError('judul'); ?>
                        </div>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="deskripsi" class="col-sm-2 col-form-label">Deskripsi</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control <?= ($validation->hasError('deskripsi')) ? 'is-invalid' : ''; ?>" id="deskripsi" name="deskripsi" value="<?= $list['deskripsi']; ?>">
                        <div class="invalid-feedback">
                            <?= $validation->getError('deskripsi'); ?>
                        </div>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="deadline" class="col-sm-2 col-form-label">Deadline</label>
                    <div class="col-sm-10">
                        <?php 
                        $datetime = new DateTime($list['deadline']);
                        ?>
                        <input type="datetime-local" class="form-control <?= ($validation->hasError('deadline')) ? 'is-invalid' : ''; ?>" id="deadline" name="deadline" value="<?= $datetime->format('Y-m-d\TH:i'); ?>">
                        <div class="invalid-feedback">
                            <?= $validation->getError('deadline'); ?>
                        </div>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="Kode_matkul" class="col-sm-2 col-form-label">Mata Kuliah</label>
                    <div class="col-sm-10">
                        <select class="form-select" aria-label="Default select example" name="Kode_matkul">
                            <option selected hidden>Click Here</option>
                            <?php foreach ($matkul as $m) : ?>
                                <option value="<?= $m['kode_matkul']; ?>" <?= ($m['kode_matkul'] == $list['Kode_matkul']) ? 'selected' : ''; ?>><?= $m['nama_matkul']; ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary" href="">Update it!</button>
            </form>
        </div>
    </div>
</div>


<?= $this->endSection('content'); ?>