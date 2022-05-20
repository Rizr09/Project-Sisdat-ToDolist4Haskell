<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<section class="vh-100">
    <div class="container-fluid h-custom">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-md-9 col-lg-6 col-xl-5">
                <img src="/img/about-me-animate.svg" alt="" srcset="">
            </div>
            <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
                <form action="" method="post">
                    <div class="divider d-flex align-items-center my-4">
                        <p class="text-center fw-bold mx-3 mb-0">About You</p>
                    </div>
                    <div class="form-outline mb-4">
                        <h5>NPM: <?= $mhs['NPM']; ?></h5>
                    </div>
                    <div class="form-outline mb-3">
                        <h5>Nama: <?= $mhs['nama_mahasiswa']; ?></h5>
                    </div>
                    <div class="text-center text-lg-start mt-4 pt-2">
                        <h5>Kelas: <?= $mhs['kelas']; ?></h5>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="d-flex mb-3 flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-primary">
        <!-- Copyright -->
        <div class="text-white mb-3 mb-md-0">
            Made with <3 © 2022 </div>
                <!-- Copyright -->
                <a target="_blank" href="https://storyset.com/user" class="text-white">User illustrations by Storyset</a>
        </div>
</section>
<?= $this->endSection(); ?>