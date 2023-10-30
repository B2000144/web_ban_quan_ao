-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th10 30, 2023 lúc 05:58 PM
-- Phiên bản máy phục vụ: 8.0.34
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_banquanao_1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image_library`
--

CREATE TABLE `image_library` (
  `id` int NOT NULL,
  `product_id` int NOT NULL,
  `path` varchar(255) NOT NULL,
  `created_time` int NOT NULL,
  `last_updated` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `image_library`
--

INSERT INTO `image_library` (`id`, `product_id`, `path`, `created_time`, `last_updated`) VALUES
(1, 19, 'uploads/27-10-2023/ls041148tr-4(1).webp', 1698419591, 1698419591),
(2, 19, 'uploads/27-10-2023/ls041148tr-5.webp', 1698419591, 1698419591),
(3, 19, 'uploads/27-10-2023/ls041148tr-7.webp', 1698419591, 1698419591),
(13, 23, 'uploads/27-10-2023/phong-vang-1(1).webp', 1698423123, 1698423123),
(14, 23, 'uploads/27-10-2023/phong-vang-2(1).webp', 1698423123, 1698423123),
(15, 23, 'uploads/27-10-2023/phong-vang-3(1).webp', 1698423123, 1698423123),
(16, 24, 'uploads/27-10-2023/ld041002ca-3(1).webp', 1698423318, 1698423318),
(17, 24, 'uploads/27-10-2023/ld041002ca-5.webp', 1698423318, 1698423318),
(18, 24, 'uploads/27-10-2023/ld041002ca-6.webp', 1698423318, 1698423318),
(19, 25, 'uploads/27-10-2023/polo-xanh-1.webp', 1698423418, 1698423418),
(20, 25, 'uploads/27-10-2023/polo-xanh-2.webp', 1698423418, 1698423418),
(21, 25, 'uploads/27-10-2023/polo-xanh-3(1).webp', 1698423418, 1698423418),
(22, 25, 'uploads/27-10-2023/polo-xanh-4.webp', 1698423418, 1698423418),
(23, 26, 'uploads/27-10-2023/pc-ao-thun-unisex-human-nature-round-square-t-shirt-relaxed-form-large-1608542104-4159(1).webp', 1698423489, 1698423489),
(24, 26, 'uploads/27-10-2023/pc-ao-thun-unisex-human-nature-round-square-t-shirt-relaxed-form-large-1608542105-3046.webp', 1698423489, 1698423489),
(25, 27, 'uploads/27-10-2023/pc-ao-polo-ngan-crop-polo-pique-collection-large-1626614104-3772(1).webp', 1698423626, 1698423626),
(26, 27, 'uploads/27-10-2023/pc-ao-polo-ngan-crop-polo-pique-collection-large-1626614105-6477.webp', 1698423626, 1698423626),
(27, 28, 'uploads/27-10-2023/pc-ao-so-mi-nu-large-1605837100-6481(1).webp', 1698423702, 1698423702),
(28, 28, 'uploads/27-10-2023/pc-ao-so-mi-nu-large-1605837102-0407.webp', 1698423702, 1698423702),
(29, 28, 'uploads/27-10-2023/pc-ao-so-mi-nu-large-1605837103-9695.webp', 1698423702, 1698423702),
(30, 29, 'uploads/27-10-2023/pc-ao-thun-nu-hinh-in-phom-vua-graphic-t-shirts-standard-form-for-women-large-1616743722-9954(1).webp', 1698423758, 1698423758),
(31, 29, 'uploads/27-10-2023/pc-ao-thun-nu-hinh-in-phom-vua-graphic-t-shirts-standard-form-for-women-large-1616743723-5364.webp', 1698423758, 1698423758),
(32, 30, 'uploads/27-10-2023/pt04119do-7.webp', 1698424154, 1698424154),
(33, 30, 'uploads/27-10-2023/pt04119do-8(1).webp', 1698424154, 1698424154),
(34, 30, 'uploads/27-10-2023/pt04119xa-5.webp', 1698424154, 1698424154),
(35, 31, 'uploads/27-10-2023/pc-ao-thun-nu-tay-ngan-co-tron-basic-round-neck-t-shirt-large-1627299778-1460.webp', 1698424402, 1698424402),
(36, 31, 'uploads/27-10-2023/pc-ao-thun-nu-tay-ngan-co-tron-basic-round-neck-t-shirt-large-1627376657-8635(1).webp', 1698424402, 1698424402),
(37, 32, 'uploads/27-10-2023/thun-cotton-trang-1(1).webp', 1698424483, 1698424483),
(38, 32, 'uploads/27-10-2023/thun-cotton-trang-2.webp', 1698424483, 1698424483),
(39, 32, 'uploads/27-10-2023/thun-cotton-trang-3.webp', 1698424483, 1698424483),
(40, 32, 'uploads/27-10-2023/thun-cotton-trang-4.webp', 1698424483, 1698424483);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `id` int NOT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `link` varchar(255) NOT NULL,
  `position` int NOT NULL,
  `created_time` int NOT NULL,
  `last_updated` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(500) NOT NULL,
  `note` text NOT NULL,
  `total` int NOT NULL,
  `created_time` int NOT NULL,
  `last_updated` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `name`, `phone`, `address`, `note`, `total`, `created_time`, `last_updated`) VALUES
(1, 'Test', '324324', 'Ha Noi', '', 18100000, 1606271428, 1606271428),
(2, 'Test', '123123', 'Ha Noi', '', 2580000, 1606272137, 1606272137),
(3, 'Test', '132123', 'Ha Noi', '', 3660000, 1606272167, 1606272167),
(4, 'Phạm Hửu Trí', '0704796583', 'Ấp 1 xã xà phiên', '', 657000, 1698210002, 1698210002),
(5, 'Phạm Hửu Trí', '0363888556', 'Ấp 11 thị trấn vĩnh viễn', '', 1500000, 1698400487, 1698400487),
(6, 'Phạm Hửu Trí', '0363888556', 'Ấp 11 thị trấn vĩnh viễn', 'jjhy', 399000, 1698422414, 1698422414),
(7, 'Phạm Hửu Trí', '0704796583', 'Ấp 1 xã xà phiên', 'dấc', 399000, 1698422548, 1698422548),
(8, 'Phạm Hửu Trí', '0363888556', 'Ấp 11 thị trấn vĩnh viễn', '123', 160000, 1698424619, 1698424619),
(9, 'Phạm Hửu Trí', '0363888556', 'Ấp 11 thị trấn vĩnh viễn', '', 250000, 1698638685, 1698638685);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int NOT NULL,
  `order_id` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int NOT NULL,
  `price` int NOT NULL,
  `created_time` int NOT NULL,
  `last_updated` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `quantity`, `price`, `created_time`, `last_updated`) VALUES
(12, 8, 29, 1, 160000, 1698424619, 1698424619),
(13, 9, 19, 1, 250000, 1698638685, 1698638685);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `privilege`
--

CREATE TABLE `privilege` (
  `id` int NOT NULL,
  `group_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `url_match` varchar(255) NOT NULL,
  `created_time` int NOT NULL,
  `last_updated` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `privilege`
--

INSERT INTO `privilege` (`id`, `group_id`, `name`, `url_match`, `created_time`, `last_updated`) VALUES
(1, 1, 'Danh sÃ¡ch sáº£n pháº©m', 'product_listing\\.php$', 1553185530, 1553185530),
(2, 1, 'XÃ³a sáº£n pháº©m', 'product_delete\\.php\\?id=\\d+$', 1553185530, 1553185530),
(3, 1, 'Sá»­a sáº£n pháº©m', 'product_editing\\.php\\?id=\\d+$|product_editing\\.php\\?action=edit&id=\\d+$', 1553185530, 1553185530),
(4, 1, 'ThÃªm sáº£n pháº©m', 'product_editing\\.php$|product_editing\\.php\\?action=add$', 1553185530, 1553185530),
(5, 1, 'Copy sáº£n pháº©m', 'product_editing\\.php\\?id=\\d+&task=copy', 1553185530, 1553185530),
(6, 4, 'Danh sÃ¡ch danh má»¥c', 'menu_listing\\.php$', 1553185530, 1553185530),
(7, 4, 'XÃ³a danh má»¥c', 'menu_delete\\.php\\?id=\\d+$', 1553185530, 1553185530),
(8, 4, 'Sá»­a danh má»¥c', 'menu_editing\\.php\\?id=\\d+$', 1553185530, 1553185530),
(9, 4, 'ThÃªm danh má»¥c', 'menu_editing\\.php$', 1553185530, 1553185530),
(10, 4, 'Copy danh má»¥c', 'menu_editing\\.php\\?id=\\d+&task=copy', 1553185530, 1553185530),
(11, 3, 'Danh sÃ¡ch Ä‘Æ¡n hÃ ng', 'order_listing\\.php$', 1553185530, 1553185530),
(12, 2, 'PhÃ¢n quyá»n quáº£n trá»‹', 'member_privilege\\.php\\?id=\\d+$|member_privilege\\.php\\?action=save$', 1553185530, 1553185530),
(13, 2, 'Danh sÃ¡ch thÃ nh viÃªn', 'member_listing\\.php$', 1553185530, 1553185530),
(14, 2, 'XÃ³a thÃ nh viÃªn', 'member_delete\\.php\\?id=\\d+$', 1553185530, 1553185530),
(15, 2, 'Sá»­a thÃ nh viÃªn', 'member_editing\\.php\\?id=\\d+$|member_editing\\.php\\?action=edit&id=\\d+$', 1553185530, 1553185530),
(16, 2, 'ThÃªm thÃ nh viÃªn', 'member_editing\\.php$|member_editing\\.php\\?action=add$', 1553185530, 1553185530);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `privilege_group`
--

CREATE TABLE `privilege_group` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` int NOT NULL,
  `created_time` int NOT NULL,
  `last_updated` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `privilege_group`
--

INSERT INTO `privilege_group` (`id`, `name`, `position`, `created_time`, `last_updated`) VALUES
(1, 'Sáº£n pháº©m', 2, 1553185530, 1553185530),
(2, 'ThÃ nh viÃªn', 4, 1553185530, 1553185530),
(3, 'ÄÆ¡n hÃ ng', 3, 1553185530, 1553185530),
(4, 'Danh má»¥c', 1, 1553185530, 1553185530);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` float NOT NULL,
  `quantity` int NOT NULL,
  `content` text NOT NULL,
  `created_time` int NOT NULL,
  `last_updated` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `image`, `price`, `quantity`, `content`, `created_time`, `last_updated`) VALUES
(19, 'Sơ mi cổ đức cộc tay', 'uploads/27-10-2023/ls041148tr-4(1).webp', 250000, 11, 'Áo sơ mi đơn sắc trên nền chất liệu lụa Hàn cao cấp, dịu mát chắc hẳn sẽ là item dành riêng cho những cô nàng yêu thích phong cách đơn giản, nhẹ nhàng. Item này không chỉ dễ mặc, dễ mix-match mà còn được đánh giá cao về tính ứng dụng, các nàng có thể thoải mái diện đi học, đi làm, đi gặp đối tác... Đặc biệt sản phẩm này có tới 04 màu nên các nàng có thể thỏa thích lựa chọn để tạo ra thật nhiều set đồ đẹp đó nha\r\n- Màu sắc: Trắng\r\n- Chất liệu: Lụa Hàn Quốc\r\n- Xuất xứ: Made in Viet Nam', 1698419591, 1698423068),
(23, 'Áo phông cộc tay', 'uploads/27-10-2023/phong-vang-1(1).webp', 360000, 10, 'Áo phông có thiết kế đơn giản lại không hề kén người mặc, dù bạn phối đồ thế nào cũng đều tạo ra được một set đồ nổi bật để diện mỗi ngày. Chữ \"Women\" được in trên nền áo nổi bật, thu hút. Áo có form vừa phải, không gây cảm giác khó chịu, bí bức khi diện vào ngày hè nắng nóng. Bạn có thể diện áo trong nhiều hoàn cảnh khác nhau như đi học, đi chơi hay đi du lịch... Mix cùng một đôi giày thể thao để set đồ trông thật năng động, khỏe khoắn nhé\r\n- Màu sắc: Xanh\r\n- Chất liệu: Thun Cotton\r\n- Thành phần: 95% cotton + 5% spandex (Thun cotton cao cấp co giãn 4 chiều)\r\n- Xuất xứ: Made in Viet Nam', 1698423123, 1698423123),
(24, 'Đầm maxi hở lưng', 'uploads/27-10-2023/ld041002ca-3.webp', 450000, 10, 'Mẫu đầm maxi này ưu tiên chất liệu và kiểu dáng, mang tới cho người mặc cảm giác thoải mái tối đa. Được đánh giá cao bởi khả năng che khuyết điểm tốt và rất \"ăn hình\" với thiết kế bồng bềnh, quyến rũ sẽ là lựa chọn hàng đầu giúp kì nghỉ của nàng tuyệt vời hơn gấp bội lần. Item này có tới ba màu sắc để các nàng thoải mái lựa chọn nên tùy theo sở thích và hoàn cảnh mà các nàng có thể chọn cho mình tông màu yêu thích và phù hợp nhất nha\r\n- Màu sắc: Cam\r\n- Chất liệu: Lụa Hàn Quốc\r\n- Xuất xứ: Made in Viet Nam', 1698423318, 1698423318),
(25, 'Áo polo phối khóa cổ', 'uploads/27-10-2023/polo-xanh-3.webp', 399000, 10, 'Chính thức cho ra mắt dòng sản phẩm áo POLO mới với thiêt kế vô cùng trẻ trung, khỏe khoắn cùng nhiều ưu điểm hấp dẫn. Thiết kế tinh tế với phần cổ và tay áo được phối viền màu, kết hợp với phần khoá đồng được nhấn nhá thêm ở phần cổ tạo hiệu ứng cho chiếc áo thêm phần nổi bật. Áo được làm từ chất liệu cotton lạnh co giãn 04 chiều mang lại cảm giác thoải mái và dễ chịu tối đa cho người mặc. Dòng sản phẩm này tới 06 phiên bản màu sắc; từ đơn giản, nhẹ nhàng đến nổi bật, cá tính; phù hợp với hầu hết nhu cầu sử dụng từ công sở, đội nhóm, đi chơi,…\r\n\r\n- Màu sắc: Trắng\r\n- Chất liệu: Cotton Lạnh\r\n- Thành phần: 95% cotton + 5% spandex (Cotton cao cấp co giãn 4 chiều)\r\n- Xuất xứ: Made in Viet Nam', 1698423418, 1698423418),
(26, 'Áo thun unisex', 'uploads/27-10-2023/pc-ao-thun-unisex-human-nature-round-square-t-shirt-relaxed-form-large-1608542104-4159.webp', 120000, 10, 'Là một trong những items cơ bản nhất trong tủ đồ hè, bạn có thể dễ dàng diện đẹp áo phông với mọi kiểu trang phục, từ quần jeans, quần short đến chân váy... Nếu muốn tôn dáng triệt để với chiếc áo này thì đừng quên áp dụng thêm tips sơ vin nha, phối thêm một vài món phụ kiện để tạo hiệu ứng cho outfit thêm phần nổi bật\r\n- Màu sắc: Trắng\r\n- Chất liệu: Thun Cotton\r\n- Thành phần: 95% cotton + 5% spandex (Thun cotton cao cấp co giãn 4 chiều)', 1698423489, 1698423489),
(27, 'Áo polo ngắn - croptop', 'uploads/27-10-2023/pc-ao-polo-ngan-crop-polo-pique-collection-large-1626614104-3772.webp', 160000, 10, 'Là một trong những items cơ bản nhất trong tủ đồ hè, bạn có thể dễ dàng diện đẹp áo phông với mọi kiểu trang phục, từ quần jeans, quần short đến chân váy... Nếu muốn tôn dáng triệt để với chiếc áo này thì đừng quên áp dụng thêm tips sơ vin nha, phối thêm một vài món phụ kiện để tạo hiệu ứng cho outfit thêm phần nổi bật\r\n- Màu sắc: Trắng\r\n- Chất liệu: Thun Cotton\r\n- Thành phần: 95% cotton + 5% spandex (Thun cotton cao cấp co giãn 4 chiều)', 1698423626, 1698423626),
(28, 'Áo sơ mi ngắn tay', 'uploads/27-10-2023/pc-ao-so-mi-nu-large-1605837100-6481.webp', 180000, 10, 'Được coi là \"bảo bối\" của các cô nàng công sở, sơ mi trắng là sự lựa chọn hoàn hảo cho những ngày đi làm không biết mặc gì. Chẳng cần đau đầu trong khoản phối đồ bởi item này có thể cân được mọi items, nếu thích phong cách tối giản, các nàng chỉ cần mix với những items có thiết kế trơn màu là sẽ có được một set đồ thanh lịch. Muốn cá tính hơn thì chọn item có họa tiết và màu sắc nổi bật nhé\r\n- Màu sắc: Trắng\r\n- Chất liệu: Crepe Hàn Quốc\r\n- Xuất xứ: Made in Viet Nam', 1698423702, 1698423702),
(29, 'Áo thun in hình form rộng', 'uploads/27-10-2023/pc-ao-thun-nu-hinh-in-phom-vua-graphic-t-shirts-standard-form-for-women-large-1616743722-9954.webp', 160000, 9, 'Là một trong những items cơ bản nhất trong tủ đồ hè, bạn có thể dễ dàng diện đẹp áo phông với mọi kiểu trang phục, từ quần jeans, quần short đến chân váy... Nếu muốn tôn dáng triệt để với chiếc áo này thì đừng quên áp dụng thêm tips sơ vin nha, phối thêm một vài món phụ kiện để tạo hiệu ứng cho outfit thêm phần nổi bật\r\n- Màu sắc: Trắng\r\n- Chất liệu: Thun Cotton\r\n- Thành phần: 95% cotton + 5% spandex (Thun cotton cao cấp co giãn 4 chiều)', 1698423758, 1698423758),
(30, 'Áo phông cộc tay in hình', 'uploads/27-10-2023/pt04119do-8.webp', 280000, 10, 'Dù là một item khá \"quen mặt\" nhưng áo phông vẫn chẳng bao giờ giảm độ hot, luôn được phái đẹp săn đón, nhất là mỗi dịp hè sang. Hình in bắt mắt kết hợp với những màu sắc trẻ trung, chiếc áo phông này của LOZA hứa hẹn sẽ trở thành item hot hit trong mùa hè năm nay. Rinh ngay item này về tủ đồ để kết hợp với những món đồ yêu thích ngay nàng nhé\r\n- Màu sắc: Xanh\r\n- Chất liệu: Thun Cotton\r\n- Thành phần: 95% cotton + 5% spandex (Thun cotton cao cấp co giãn 4 chiều)\r\n- Xuất xứ: Made in Viet Nam', 1698424154, 1698424154),
(31, 'Áo thun ngắn tay cổ tròn New', 'uploads/27-10-2023/pc-ao-thun-nu-tay-ngan-co-tron-basic-round-neck-t-shirt-large-1627376657-8635.webp', 245000, 10, 'Là một trong những items cơ bản nhất trong tủ đồ hè, bạn có thể dễ dàng diện đẹp áo phông với mọi kiểu trang phục, từ quần jeans, quần short đến chân váy... Nếu muốn tôn dáng triệt để với chiếc áo này thì đừng quên áp dụng thêm tips sơ vin nha, phối thêm một vài món phụ kiện để tạo hiệu ứng cho outfit thêm phần nổi bật\r\n- Màu sắc: Trắng\r\n- Chất liệu: Thun Cotton\r\n- Thành phần: 95% cotton + 5% spandex (Thun cotton cao cấp co giãn 4 chiều)', 1698424402, 1698424402),
(32, 'Áo thun cotton in hình', 'uploads/27-10-2023/thun-cotton-trang-1.webp', 195000, 10, 'Được đánh giá là một trong những items đáng sắm nhất trong mùa hè, áo phông không chỉ dễ diện mà còn tạo style rất cá tính, trẻ trung. Áo có form dáng suông vừa, không quá ôm cũng không quá rộng nên luôn đem tới cảm giác vô cùng thoáng mát và thoải mái cho người mặc. Chẳng cần mix&match quá rườm rà, layer với một chiếc quần short basic đã đủ xinh rồi\r\n- Màu sắc: Trắng\r\n- Chất liệu: Thun Cotton\r\n- Thành phần: 95% cotton + 5% spandex (Thun cotton cao cấp co giãn 4 chiều)\r\n- Xuất xứ: Made in Viet Nam', 1698424483, 1698424483);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(100) NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `birthday` int DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_time` int NOT NULL,
  `last_updated` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `fullname`, `password`, `birthday`, `status`, `created_time`, `last_updated`) VALUES
(1, 'admin', 'Andn', '25d55ad283aa400af464c76d713c07ad', 1553185530, 0, 1553185530, 1553185530),
(3, 'writer', 'Äáº·ng Ngá»c An', '25d55ad283aa400af464c76d713c07ad', 1553185530, 0, 1553185530, 1553185530),
(4, 'dangngocan', 'Đặng Ngọc An', '25d55ad283aa400af464c76d713c07ad', 626918400, 1, 1608341654, 1608341654),
(6, 'Andn', 'Äáº·ng Ngá»c An', '25d55ad283aa400af464c76d713c07ad', 626918400, 1, 1608341728, 1608341728),
(7, 'an.ngocdang@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 626918400, 1, 1608343408, 1608343408),
(12, 'tri', NULL, '81dc9bdb52d04dc20036dbd8313ed055', NULL, 1, 1698233005, 1698683488),
(15, 'tripham', 'Phạm Hửu Trí', '202cb962ac59075b964b07152d234b70', 997394400, 1, 1698595314, 1698683823);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_privilege`
--

CREATE TABLE `user_privilege` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `privilege_id` int NOT NULL,
  `created_time` int NOT NULL,
  `last_updated` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `user_privilege`
--

INSERT INTO `user_privilege` (`id`, `user_id`, `privilege_id`, `created_time`, `last_updated`) VALUES
(28, 1, 6, 1595430953, 1595430953),
(29, 1, 7, 1595430953, 1595430953),
(30, 1, 8, 1595430953, 1595430953),
(31, 1, 9, 1595430953, 1595430953),
(32, 1, 10, 1595430953, 1595430953),
(33, 1, 1, 1595430953, 1595430953),
(34, 1, 2, 1595430953, 1595430953),
(35, 1, 3, 1595430953, 1595430953),
(36, 1, 4, 1595430953, 1595430953),
(37, 1, 5, 1595430953, 1595430953),
(38, 1, 11, 1595430953, 1595430953),
(39, 1, 12, 1595430953, 1595430953),
(40, 1, 13, 1595430953, 1595430953),
(41, 1, 14, 1595430953, 1595430953),
(42, 1, 15, 1595430953, 1595430953),
(43, 1, 16, 1595430953, 1595430953),
(253, 3, 6, 1595430953, 1595430953),
(254, 3, 7, 1595430953, 1595430953),
(255, 3, 8, 1595430953, 1595430953),
(256, 3, 9, 1595430953, 1595430953),
(257, 3, 10, 1595430953, 1595430953),
(258, 3, 1, 1595430953, 1595430953),
(259, 3, 2, 1595430953, 1595430953),
(260, 3, 3, 1595430953, 1595430953),
(261, 3, 4, 1595430953, 1595430953),
(262, 3, 5, 1595430953, 1595430953);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `image_library`
--
ALTER TABLE `image_library`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `privilege`
--
ALTER TABLE `privilege`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`);

--
-- Chỉ mục cho bảng `privilege_group`
--
ALTER TABLE `privilege_group`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Chỉ mục cho bảng `user_privilege`
--
ALTER TABLE `user_privilege`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_privilege_ibfk_1` (`user_id`),
  ADD KEY `privilege_id` (`privilege_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `image_library`
--
ALTER TABLE `image_library`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `privilege`
--
ALTER TABLE `privilege`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `privilege_group`
--
ALTER TABLE `privilege_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `user_privilege`
--
ALTER TABLE `user_privilege`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `image_library`
--
ALTER TABLE `image_library`
  ADD CONSTRAINT `image_library_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `privilege`
--
ALTER TABLE `privilege`
  ADD CONSTRAINT `privilege_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `privilege_group` (`id`);

--
-- Các ràng buộc cho bảng `user_privilege`
--
ALTER TABLE `user_privilege`
  ADD CONSTRAINT `user_privilege_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_privilege_ibfk_2` FOREIGN KEY (`privilege_id`) REFERENCES `privilege` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
