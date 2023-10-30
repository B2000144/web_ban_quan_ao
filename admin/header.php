<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>

<head>
    <title>Bài 15: Hướng dẫn tạo quản trị menu đa cấp trong PHP - Phần 1</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
        integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../css/admin_style.css">
    <script src="../resources/ckeditor/ckeditor.js"></script>
</head>

<body>
    <?php
    session_start();
    include '../connect_db.php';
    include '../function.php';
    if (!empty($_SESSION['current_user'])) { //Kiểm tra xem đã đăng nhập chưa?
    ?>
    <div id="admin-heading-panel">
        <div class="container">
            <div class="left-panel">
                Xin chào <span>Admin</span>
            </div>
            <div class="right-panel">
                <button class="btn btn-primary">
                    <i class="fa-solid fa-house"></i>
                    <a href="../index.php">Trang chủ</a>
                </button>
                <button class="btn btn-danger">
                    <i class="fa-solid fa-power-off"></i>
                    <a href="logout.php">Đăng xuất</a>
                </button>
            </div>
        </div>
    </div>
    <div id="content-wrapper">
        <div class="container">
            <div class="left-menu">
                <div class="menu-heading">Admin Menu</div>
                <div class="menu-items">
                    <ul>
                        <li><a href="product_listing.php">Sản phẩm</a></li>
                        <li><a href="order_listing.php">Đơn hàng</a></li>
                    </ul>
                </div>
            </div>
            <?php } ?>