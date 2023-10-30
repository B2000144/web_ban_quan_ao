$('#login').click(function () {
    $username = $("input[name='username']");
    $password = $("input[type='password']");
    $.post(
        "login.php",
        data: "username=" + $username.val() + "&password=" + $password.val(),
        success: function (result) {
            if (result != "0") {
                $(this).html(result); // chữ đăng nhập trong nút đăng nhập sẽ được thay thế bằng tên đăng nhập của người dùng
                // chổ nào có chữ đăng nhập thì chuyễn thành tên người dùng không tải lại trang. Ngoài ra xử lý gì thêm thì tùy
            }
            else
                alert(" tên tài khoản hoặc mật khẩu không trùng khớp ");
        }
    )
})