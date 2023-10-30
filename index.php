<?php include "./header.php" ?>
<div id="carouselExampleControlsNoTouching" class="carousel slide" data-bs-touch="false">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="./images/slider_1.webp" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="./images/slider_1.webp" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="./images/slider_1.webp" class="d-block w-100" alt="...">
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControlsNoTouching"
        data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControlsNoTouching"
        data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-3">
            <div class="service-items">
                <div class="service-left">
                    <img class="service-img" src="./images/ser_1.webp" alt="">
                </div>
                <div class="service-right">
                    <span class="service-text fw-bold">Miễn phí giao hàng</span>
                    <span class="service-text">Miễn phí ship với đơn hàng > 498K</span>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="service-items">
                <div class="service-left">
                    <img class="service-img" src="./images/ser_2.png" alt="">
                </div>
                <div class="service-right">
                    <span class="service-text fw-bold">Thanh toán COD</span>
                    <span class="service-text">Thanh toán khi nhận hàng (COD)</span>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="service-items">
                <div class="service-left">
                    <img class="service-img" src="./images/ser_3.png" alt="">
                </div>
                <div class="service-right">
                    <span class="service-text fw-bold">Khách hàng VIP</span>
                    <span class="service-text">Ưu đãi dành cho khách hàng VIP</span>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="service-items">
                <div class="service-left">
                    <img class="service-img" src="./images/ser_4.webp" alt="">
                </div>
                <div class="service-right">
                    <span class="service-text fw-bold">Hỗ trợ bảo hành</span>
                    <span class="service-text">Đổi, sửa đồ tại tất cả store</span>
                </div>
            </div>
        </div>
    </div>
</div>

</div>
</div>
<?php
$search = isset($_GET['name']) ? $_GET['name'] : "";
if ($search) {
    $where = "WHERE `name` LIKE '%" . $search . "%'";
}
include './connect_db.php';
$item_per_page = !empty($_GET['per_page']) ? $_GET['per_page'] : 8;
$current_page = !empty($_GET['page']) ? $_GET['page'] : 1; //Trang hiện tại
$offset = ($current_page - 1) * $item_per_page;
if ($search) {
    $products = mysqli_query($con, "SELECT * FROM `product` WHERE `name` LIKE '%" . $search . "%' ORDER BY `id` ASC  LIMIT " . $item_per_page . " OFFSET " . $offset);
    $totalRecords = mysqli_query($con, "SELECT * FROM `product` WHERE `name` LIKE '%" . $search . "%'");
} else {
    $products = mysqli_query($con, "SELECT * FROM `product` ORDER BY `id` ASC  LIMIT " . $item_per_page . " OFFSET " . $offset);
    $totalRecords = mysqli_query($con, "SELECT * FROM `product`");
}
$totalRecords = $totalRecords->num_rows;
$totalPages = ceil($totalRecords / $item_per_page);
?>
<section id="hot-products">
    <section class="container">
        <section class="heading-title">
            <h2>Sản phẩm <span>hot</span></h2>
            <a href="#"><img src="images/arrow.png" />Xem tất cả</a>
            <section class="clear-both"></section>
        </section>
        <section class="box-content">
            <?php
            $num = 1;
            while ($row = mysqli_fetch_array($products)) {
            ?>
            <section class="product-item  <?php if ($num % 4 == 1) { ?> first-line <?php } ?>">
                <section class="product-image"><a href="detail.php?id=<?= $row['id'] ?>"><img src="<?= $row['image'] ?>"
                            title="<?= $row['name'] ?>" /></a></section>
                <section class="product-name"><a href="detail.php?id=<?= $row['id'] ?>"><?= $row['name'] ?></a>
                </section>
                <section class="wrap-button">
                    <section class="left-buy-button"></section>
                    <section class="content-buy-button">
                        <?php if ($row['quantity'] > 0) { ?>
                        <section class="product-price">
                            <?= number_format($row['price'], 0, ",", ".") ?> đ</section>
                        <form class="quick-buy-form" action="cart.php?action=add" method="POST">
                            <input type="hidden" value="1" name="quantity[<?= $row['id'] ?>]" />
                            <input type="submit" value="Mua hàng" />
                        </form>
                        <?php } else { ?>
                        <a href="#">Hết hàng</a>
                        <?php } ?>
                    </section>
                    <section class="right-buy-button"></section>
                    <section class="clear-both"></section>
                </section>
            </section>
            <?php }
            $num++;
            ?>

            <section class="clear-both"></section>
            <?php include "./pagination.php" ?>
        </section>
    </section>
</section>

<?php include "./footer.php"; ?>