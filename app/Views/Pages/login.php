<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<section class="vh-100">
    <div class="container-fluid h-custom">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-md-9 col-lg-6 col-xl-5">
                <img src="/img/computer-login-animate.svg" alt="" srcset="">
            </div>
            <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
                <form action="" method="post">
                    <div class="divider d-flex align-items-center my-4">
                        <p class="text-center fw-bold mx-3 mb-0">Log In</p>
                    </div>

                    <!-- Email input -->
                    <div class="form-outline mb-4">
                        <input type="email" id="form3Example3" class="form-control form-control-lg" placeholder="Enter an ID user" />
                        <label class="form-label" for="form3Example3">ID User</label>
                    </div>

                    <!-- Password input -->
                    <div class="form-outline mb-3">
                        <input type="password" id="form3Example4" class="form-control form-control-lg" placeholder="Enter password" />
                        <label class="form-label" for="form3Example4">Password</label>
                    </div>
                    <div class="text-center text-lg-start mt-4 pt-2">
                        <button type="button" class="btn btn-primary btn-lg" style="padding-left: 2.5rem; padding-right: 2.5rem;" name="login">Login</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-primary">
        <!-- Copyright -->
        <div class="text-white mb-3 mb-md-0">
            Made with <3 © 2022
        </div>
        <!-- Copyright -->
        <a href="https://storyset.com/user" class="text-white">User illustrations by Storyset</a>
    </div>
</section>
<?= $this->endSection(); ?>