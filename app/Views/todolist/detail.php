<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<div class="container bootstrap snippets bootdeys">
    <h2 class="mt-2 text-center">Hi <?= $nama; ?> this is your todolist detail</h2>
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4 col-sm-6 content-card">
            <div class="card-big-shadow">
                <div class="card card-just-text" data-background="color" data-color="purple" data-radius="none">
                    <div class="content">
                        <h6 class="category"><?= $list['judul']; ?> - <?= $matkul; ?></h6>
                        <h4 class="title"><?= $list['deskripsi']; ?></h4>
                        <p class="description">Do it before <br> <?= $list['deadline']; ?>!</p>
                        <div class="col">
                            <div class="row-md-4 mb-2 mt-3">
                                <a href="/todolist/content/edit/<?= $list['id_list']; ?>" class="btn btn-outline-light text-dark">Edit Data</a>
                            </div>                         
                            <div class="row-md-4 mb-2">
                                <form action="/todolist/content/delete/<?= $list['id_list']; ?>" method="post" class="d-inline">
                                    <?php csrf_field() ?>
                                    <input type="hidden" name="_method" value="DELETE">
                                    <button type="submit" class="btn btn-outline-light" onclick="return confirm('Are You Sure Want to Remove it?');">Is it Done?</button>
                                </form>
                            </div>
                            <div class="row-md-4">
                                <a href="/todolist/content">Go Back</a>
                            </div>
                        </div>
                    </div>
                </div> <!-- end card -->
            </div>
        </div>
        <div class="col-md-4"></div>
    </div>
</div>
<?= $this->endSection(); ?>