<?php if (!empty($_SESSION['current_user'])) { ?>
<div class="clear-both"></div>
</div>
</div>
<div id="admin-footer">
    <div class="container">
        <div class="left-panel">
            © Copyright 2023
        </div>
        <div class="right-panel">
            <div class="gmail"><i class="fa-solid fa-envelope"></i> trib2000144@student.ctu.edu.vn</div>
            <div class="phone"><i class="fa-solid fa-phone"></i> 0704796583</div>
        </div>
        <div class="clear-both"></div>
    </div>
</div>
<?php } else { ?>
<div class="container">
    <div class="box-content">
        Bạn chưa đăng nhập. Mời bạn quay lại đăng nhập quản trị <a href="index.php">tại đây</a>
    </div>
</div>
<?php } ?>
</body>

</html>