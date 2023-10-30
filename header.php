<?php include "./search.php" ?>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="libs/fancybox/jquery.fancybox.min.css" />
    <link rel="stylesheet" href="css/carouseller.css">
    <link rel="stylesheet" type="text/css" href="/css/fonts.css">
    <link rel="stylesheet" type="text/css" href="/css/style.css">

    <link rel="stylesheet" type="text/css" href="/css/category.css">
</head>
<div id="cart-icon">
    <a data-fancybox data-type="ajax" data-src="/ajax-cart.php" href="javascript:;">
        <img width="100" src="/images/Icongiohang.png" alt="alt" />
        <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
            1
            <span class="visually-hidden">unread messages</span>
        </span>
    </a>
</div>

<body>
    <header>
        <section class="container">
            <div id="header-bottom" class="row">
                <section id="header-left" class="col-4">
                    <img src="/images/logo shop.png" />
                </section>
                <section class="col-4">
                    <form class="d-flex" role="search" id="product-search" method="GET">
                        <input class="form-control me-2" type="text" value="<?= isset($_GET['name']) ? $_GET['name'] : "" ?>" name="name" placeholder="Search" aria-label="Search">
                        <button type="submit" class="btn btn-outline-success" type="">Search</button>
                    </form>
                </section>
                <section class="col-4">
                    <section id="header-link " class="row">
                        <div class="col-4"></div>
                        <div class="login text-center col-4">
                            <i class="fa-solid fa-user d-block"></i>
                            <a href="./login.php">Đăng nhập</a>
                        </div>
                        <div class="header-cart text-center col-4">
                            <i class="fa-solid fa-cart-shopping d-block"></i>
                            <a href="./cart.php">Giỏ hàng</a>
                        </div>
                    </section>
                </section>
            </div>
        </section>
        <section id="menu">
            <section class="">
                <nav class="navbar navbar-expand-lg bg-body-tertiary">
                    <div class="container-fluid container">
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                <li class="nav-item">
                                    <a class="nav-link active" aria-current="page" href="./index.php">Trang chủ</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link active" aria-current="page" href="./category.php">Sản phẩm</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link active" aria-current="page" href="#">Tin tức</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link active" aria-current="page" href="#">Chúng tôi</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link active" aria-current="page" href="#">Liên hệ</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </section>
        </section>
    </header>