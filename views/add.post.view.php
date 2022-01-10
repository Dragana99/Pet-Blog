<?php require_once 'partials/top.php'; ?>

<nav class="navbar navbar-expand navbar-light bg-light">
    <a href="" class="navbar-brand">Pet Blog</a>
    <ul class="navbar-nav ml-auto">
        <li class="nav-item">
            <a href="logout.php" class="nav-link">Odjava</a>
        </li>
        <li class="nav-item">
            <a href="index.php" class="nav-link">Nazad na Blog</a>
        </li>
    </ul>

</nav>

<div class="middle-header">
    <h4>Dodaj Novu Objavu</h4>
</div>

<div class="container">
    <div class="row">
        <div class="col-8 offset-2">
            <?php if ($post->newPostStatus) : ?>
                <div class="alert alert-success">Uspesno kreirana nova objava</div>
            <?php endif; ?>
            <form action="add_post.php" method="POST">
                <input type="text" name="post_title" placeholder="Nalov" class="form-control"><br>
                <textarea name="post_description" class="form-control" placeholder="Text objave..." cols="30" rows="10"></textarea><br>
                <button type="submit" name="post_sub_btn" class="form-control btn btn-primary">Dodaj</button>
            </form>
        </div>
    </div>
</div>

<?php require_once 'partials/bottom.php'; ?>