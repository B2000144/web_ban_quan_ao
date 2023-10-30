<head>
    <title>Chi tiết sản phẩm</title>
</head>
<?php include "./header.php" ?>
<?php
include './connect_db.php';
$result = mysqli_query($con, "SELECT * FROM `product` WHERE `id` = " . $_GET['id']);
$product = mysqli_fetch_assoc($result);
$imgLibrary = mysqli_query($con, "SELECT * FROM `image_library` WHERE `product_id` = " . $_GET['id']);
$product['images'] = mysqli_fetch_all($imgLibrary, MYSQLI_ASSOC);
?>
<div class="container">
    <div id="product-detail" class="row">
        <div class="col-6">
            <div id="product-img">
                <img src="<?= $product['image'] ?>" />
                <?php if (!empty($product['images'])) { ?>
                    <div id="gallery">
                        <ul>
                            <?php foreach ($product['images'] as $img) { ?>
                                <li><img src="<?= $img['path'] ?>" /></li>
                            <?php } ?>
                        </ul>
                    </div>
                <?php } ?>
                <div class="product-info">
                    <span>Thông tin sản phẩm</span>
                </div>
                <?= $product['content'] ?>
            </div>
        </div>
        <div class="col-6 text-start">
            <div id="product-info">
                <h1><?= $product['name'] ?></h1>
                <span class="product-price"><?= number_format($product['price'], 0, ",", ".") ?>
                    VND</span><br />
                <form id="add-to-cart-form" action="cart.php?action=add" method="POST">
                    <input type="text" value="1" name="quantity[<?= $product['id'] ?>]" size="2" /><br />
                    <input class="btn btn-detail" type="submit" value="Mua sản phẩm" />
                </form>

            </div>
            <div class="clear-both"></div>

        </div>

    </div>


</div>
<?php include "./footer.php" ?>