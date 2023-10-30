<?php
session_start();
include "./header.php";
include './connect_db.php';
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
            <a href="./login.php">Quay lại</a>
        </div>
    <?php
        exit;
    }
    ?>
<?php } ?>
<?php if (empty($_SESSION['current_user'])) { ?>
    <div id="user_login" class="box-content">
        <form action="./login.php" method="Post" autocomplete="off">
            <h1>Đăng nhập tài khoản</h1>
            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Tên đăng nhập</label>
                <input type="text" class="form-control" name="username" id="exampleInputEmail1" aria-describedby="emailHelp">
            </div>
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Mật khẩu</label>
                <input type="password" name="password" class="form-control" id="exampleInputPassword1">
            </div>
            <button id="login" type="submit" class="btn btn-primary-color w-100">Đăng nhập</button>
            <div class="form-text">bạn chưa có tài khoản hãy <a href="./register.php">đăng kí</a></div>
        </form>
    </div>
<?php
} else {
    $currentUser = $_SESSION['current_user'];
?>
    <div id="login-notify" class="box-content">
        Xin chào <?= $currentUser['fullname'] ?><br />
        <a href="./user/edit.php">Đổi mật khẩu</a><br />
        <a href="./logout.php">Đăng xuất</a>
    </div>
<?php } ?>
<?php include "./footer.php" ?>