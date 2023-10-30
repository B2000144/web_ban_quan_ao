<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>

<head>
    <title>Đăng xuất tài khoản</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/admin.css">
</head>

<body>
    <?php
    session_start();
    unset($_SESSION['current_user']);
    ?>
    <div id="user_logout" class="container">
        <h1>bạn đã đăng xuất tài khoản thành công</h1>
        <button class="btn btn-primary "><a class="text-dark" href="./index.php">Đăng nhập lại</a></button>
    </div>
</body>

</html>