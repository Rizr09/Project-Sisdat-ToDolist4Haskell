<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<main>
  <div class="container py-4">
    <header class="pb-3 mb-4 border-bottom">
      <a class="d-flex align-items-center text-dark text-decoration-none">
          <img src="https://www.haskell.org/img/haskell-logo.svg" height="20">
      </a>
    </header>

    <div class="p-5 mb-4 bg-light rounded-3">
      <div class="container-fluid py-5">
        <h1 class="display-5 fw-bold hover-underline-animation">ToDoList4Haskell</h1>
        <p class="col-md-8 fs-4 justify">Easily manage your tasks and projects <strong>Here!</strong><br>With ToDoList4Haskell you can easily manage your tasks and projects by creating a new project, adding a new task to a project, and deleting an existing task. You can see all your projects and tasks in a table.</p>
        <a href="/pages/login" class="btn btn-primary btn-lg btn-block">Login</a>
      </div>
    </div>
    <footer class="pt-3 mt-4 text-muted border-top">
      Made with <3 © 2022
    </footer>
  </div>
</main>
<?= $this->endSection(); ?>