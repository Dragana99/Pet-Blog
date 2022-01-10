<?php require_once 'partials/top.php'; ?>
<nav class="navbar navbar-expand navbar-light bg-light">
    <a href="" class="navbar-brand">Pet Blog</a>
    <ul class="navbar-nav ml-auto">
        <li class="nav-item">
            <a href="index.php" class="nav-link">Nazad na blog</a>
        </li>
    </ul>
</nav>
<div class="middle-header">
    <h4>Prijava/Registracija</h4>
</div>
<div class="container">
    <div class="row">
        <div class="col-6">
            <h4>Login</h4>
            <form action="login_register.php" method="POST">
                <input type="email" name="login_email" placeholder="email" class="form-control" required><br>
                <input type="password" name="login_password" placeholder="password" class="form-control" required><br>
                <button class="form-control btn btn-primary" name="LoginBtn">Prijava</button>
            </form>
            <?php if ($user->loggedUser) :
            echo "<script type='text/javascript'>alert('Uspesna prijava!'); window.location.href = 'http://localhost/Pet_blog/pet_blog/index.php';</script>";                
                ?>
            <?php elseif (isset($_POST['LoginBtn'])) : ?>
                <div class="alert alert-danger">Username i password pogresni!</div>
            <?php endif; ?>
        </div>
        <div class="col-6">
            <h4>Registracija</h4>
            <form action="login_register.php" method="POST">
                <input type="text" name="register_name" placeholder="Ime" class="form-control" required><br>
                <input type="email" name="register_email" placeholder="E-mail" class="form-control" required><br>
                <input type="password" name="register_password" placeholder="Lozinka" class="form-control" required><br>
                <button class="form-control btn btn-warning" name="RegisterBtn">Registracija</button>
            </form>
            <?php if ($user->register_result) : ?>
                <div class="alert alert-success">Uspesna registracija! Ulogujte se.</div>
            <?php endif; ?>
        </div>
    </div>
</div>

<?php require_once 'partials/bottom.php'; ?>