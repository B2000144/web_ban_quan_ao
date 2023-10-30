<?php
include './connect_db.php';
include 'user/function.php';
include "./header.php";
$error = false;
if (isset($_GET['action']) && $_GET['action'] == 'reg') {
    if (isset($_POST['username']) && !empty($_POST['username']) && isset($_POST['password']) && !empty($_POST['password'])) {
        $fullname = $_POST['fullname'];
        $birthday = $_POST['birthday'];
        $check = validateDateTime($birthday);
        if ($check) {
            $birthday = strtotime($birthday);
            $result = mysqli_query($con, "INSERT INTO `user` (`fullname`,`username`, `password`, `birthday`, `status`, `created_time`, `last_updated`) VALUES ('" . $_POST['fullname'] . "', '" . $_POST['username'] . "', MD5('" . $_POST['password'] . "'), '" . $birthday . "', 1, " . time() . ", '" . time() . "');");
            if (!$result) {
                if (strpos(mysqli_error($con), "Duplicate entry") !== FALSE) {
                    $error = "Tài khoản đã tồn tại. Bạn vui lòng chọn tài khoản khác.";
                }
            }
            mysqli_close($con);
        } else {
            $error = "Ngày tháng nhập chưa chính xác";
        }
        if ($error !== false) {
?>
            <div id="error-notify" class="box-content">
                <h1>Thông báo</h1>
                <h4><?= $error ?></h4>
                <a href="./register.php">Quay lại</a>
            </div>
        <?php } else { ?>
            <div id="edit-notify" class="box-content">
                <h1><?= ($error !== false) ? $error : "Đăng ký tài khoản thành công" ?></h1>
                <a href="./login.php">Mời bạn đăng nhập</a>
            </div>
        <?php } ?>
    <?php } else { ?>
        <div id="edit-notify" class="box-content">
            <h1>Vui lòng nhập đủ thông tin để đăng ký tài khoản</h1>
            <a href="./register.php">Quay lại đăng ký</a>
        </div>
    <?php
    }
} else {
    ?>
    <div id="user_register" class="box-content">

        <form action="./register.php?action=reg" method="Post" autocomplete="off">
            <h1>Đăng ký tài khoản</h1>
            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Tên đăng nhập</label>
                <input type="text" class="form-control" name="username" id="exampleInputEmail1" aria-describedby="emailHelp">
            </div>
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Mật khẩu</label>
                <input type="password" name="password" class="form-control" id="exampleInputPassword1">
            </div>
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Họ Tên</label>
                <input type="text" name="fullname" class="form-control" id="exampleInputPassword1">
            </div>
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Ngày sinh</label>
                <input type="text" name="birthday" value="Nhập (ngày - tháng - năm)" class="form-control" id="exampleInputPassword1">
            </div>
            <button type="submit" class="btn btn-primary-color w-100">Đăng ký</button>
            <div class="form-text">bạn đã có tài khoản hãy <a href="./login.php">đăng nhập</a></div>
        </form>
    </div>
<?php
}
?>
<?php include "./footer.php" ?>