<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>

<div class="container bootstrap snippets bootdeys">
    <h2 class="mt-2">Hi <?= $nama; ?> this is your todolist detail</h2>
    <div class="row">
        <div class="col-md-4 col-sm-6 content-card">
            <div class="card-big-shadow">
                <div class="card card-just-text" data-background="color" data-color="purple" data-radius="none">
                    <div class="content">
                        <h6 class="category"><?= $list['judul']; ?> - <?= $matkul; ?></h6>
                        <h4 class="title"><?= $list['deskripsi']; ?></h4>
                        <p class="description">Do it before <br> <?= $list['deadline']; ?>!</p>
                        <div class="col">
                            <div class="row-md-4">
                            </div>
                            <a href="">Edit Data</a>
                            <div class="row-md-4">
                            </div>
                            <a href="">Delete Data</a>
                            <div class="row-md-4">
                            <a href="/todolist/content">Go Back</a>
                            </div>
                        </div>
                    </div>
                </div> <!-- end card -->
            </div>
        </div>
    </div>
</div>

<?= $this->endSection(); ?>