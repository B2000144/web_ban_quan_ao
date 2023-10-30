<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>

<head>
    <title>Bài 12: Hướng dẫn tạo trang quản trị (admin): quản lý sản phẩm - Phần 1</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/admin.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>

    </style>
</head>

<body>
    <?php
    session_start();
    include '../connect_db.php';
    $error = false;
    if (isset($_POST['username']) && !empty($_POST['username']) && isset($_POST['password']) && !empty($_POST['password'])) {
        $result = mysqli_query($con, "Select `id`,`username`,`fullname`,`birthday` from `user` WHERE (`username` ='" . $_POST['username'] . "' AND `password` = md5('" . $_POST['password'] . "'))");
        if (!$result) {
            $error = mysqli_error($con);
        } else {
            $user = mysqli_fetch_assoc($result);
            $_SESSION['current_user'] = $user;
        }
        mysqli_close($con);
        if ($error !== false || $result->num_rows == 0) {
    ?>
            <div id="login-notify" class="box-content">
                <h1>Thông báo</h1>
                <h4><?= !empty($error) ? $error : "Thông tin đăng nhập không chính xác" ?></h4>
                <a href="./index.php">Quay lại</a>
            </div>
        <?php
            exit;
        }
        ?>
    <?php } ?>
    <?php if (empty($_SESSION['current_user'])) { ?>
        <div id="user_login" class="container">
            <form action="./index.php" class="form-label" method="Post" autocomplete="off">
                <h1>Đăng nhập tài khoản quản trị</h1>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Tên tài khoản</label>
                    <input type="text" name="username" value="" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label">Mật khẩu</label>
                    <input type="password" name="password" value="" class="form-control" id="exampleInputPassword1">
                </div>
                <button type="submit" class="btn btn-primary w-100">đăng nhập</button>
            </form>
        </div>
    <?php
    } else {
        $currentUser = $_SESSION['current_user'];
    ?>
        <?php header('location: ./product_listing.php') ?>
    <?php } ?>
</body>

</html>