-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1

-- Thời gian đã tạo: Th12 15, 2019 lúc 06:44 AM
-- Phiên bản máy phục vụ: 10.4.8-MariaDB
-- Phiên bản PHP: 7.1.33



SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `cookyvn`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cmt_nh`
--

CREATE TABLE `cmt_nh` (
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` varchar(5000) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `restaurant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `cmt_nh`
--

INSERT INTO `cmt_nh` (`comment_id`, `user_id`, `content`, `restaurant_id`) VALUES
(6, 1, 'ngon thế', 5),
(7, 1, 'ngon thế', 5),
(8, 1, 'bình luận dài dài tý nàyyyyyyy', 5),
(9, 1, 'ngon thế', 1),
(10, 1, 'bình luận dài dài tý nàyyyyyyy', 1),
(11, 3, 'ngon', 12);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` varchar(5000) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `food_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`comment_id`, `user_id`, `content`, `food_id`) VALUES
(17, 3, 'ngon thế nhỉ, mình phải làm ngay cho cả nhà thôi', 39),
(18, 1, 'trông hấp dẫn quá', 36);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `food`
--

CREATE TABLE `food` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  `finished_time` int(11) NOT NULL,
  `ration` varchar(5000) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `level` varchar(11) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `user_view` int(11) NOT NULL,
  `user_review` varchar(5000) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `mota` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `food`
--

INSERT INTO `food` (`id`, `name`, `type_id`, `finished_time`, `ration`, `level`, `user_view`, `user_review`, `mota`, `image`) VALUES
(31, 'Nước chanh', 6, 2, '1', 'dễ', 1, '0', 'Đồ uống thanh mát cho mùa hè', 'https://sohanews.sohacdn.com/thumb_w/660/2018/2/1/photo1517478868721-1517478868721748641205.jpg'),
(32, 'Chè thập cẩm', 1, 12, '12', 'dễ', 1, '0', 'chè thập cẩm cho mùa hè', 'https://cdn.daynauan.info.vn/wp-content/uploads/2018/08/che-thai-sau-rieng.jpg'),
(35, 'Thịt xiên nướng', 5, 30, '4', 'dễ', 1, '0', 'Thịt xiên nướng thơm ngon bổ dưỡng', 'https://i1.wp.com/congthucmonngon.com/wp-content/uploads/2018/04/mon-ngon-cuoi-tuan-thit-xien-nuong.jpg?ssl=1'),
(36, 'Nem cuốn', 5, 30, '4', 'Vừa', 2, '0', 'Cách làm nem ngon và bổ dưỡng', 'https://media.cooky.vn/recipe/g2/14542/s640/recipe14542-635621834873923230.jpg'),
(37, 'Kem trà xanh Oreo', 2, 12, '2', 'dễ', 1, '0', 'Kem tự làm, ngon mà tiện lợi', 'https://img-global.cpcdn.com/recipes/2094b175a4342bdf/751x532cq70/an-v%E1%BA%B7t-kem-tra-xanh-oreo-recipe-main-photo.jpg'),
(39, 'Canh trứng cà chua', 5, 20, '4', 'Trung bình', 3, '0', 'trứng + cà chua = canh ngon', 'http://imgs.vietnamnet.vn/Images/2017/02/27/13/20170227133038-canh-trung-2.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `food_recipes`
--

CREATE TABLE `food_recipes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `food_id` int(11) NOT NULL,
  `quantity` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `food_recipes`
--

INSERT INTO `food_recipes` (`id`, `name`, `food_id`, `quantity`) VALUES
(95, 'nước', 31, '100ml'),
(96, 'chanh', 31, '1 quả'),
(97, 'đường', 31, '50g'),
(98, 'Đậu ván trắng', 32, '100g'),
(99, 'Đậu đỏ', 32, '100g'),
(100, 'Đậu xanh', 32, '100g'),
(101, 'Đậu đen', 32, '100g'),
(102, 'Đường', 32, '1 túi'),
(103, 'Bột năng', 32, '1 túi'),
(104, 'Hạt trân châu', 32, '20 quả'),
(105, 'các nguyên liệu khác', 32, ''),
(118, 'Thịt', 35, '200g'),
(119, 'Xả', 35, '2 cây'),
(120, 'Hành tím', 35, '3 củ'),
(121, 'Tỏi', 35, '3 tép lớn'),
(122, 'Chanh', 35, '1 quả'),
(123, 'Các gia vị khác', 35, ' tùy chỉnh'),
(124, 'Bánh tráng', 36, '20 cái'),
(125, 'Tôm', 36, '20 con bóc vỏ, bỏ ch'),
(126, 'Trứng', 36, '5 quả'),
(127, 'Cà rốt', 36, '10 quả'),
(128, 'Dưa chuột', 36, ' 10 quả'),
(129, 'Thịt lợn', 36, '200g'),
(130, 'các gia vị khác', 36, 'tùy chỉnh'),
(131, 'kem tươi', 37, '120g'),
(132, 'sữa đặc', 37, '45g'),
(133, 'bột trà xanh', 37, '6g'),
(134, 'bánh oreo', 37, '2 cái'),
(139, 'Trứng gà', 39, '2 quả'),
(140, 'Hành tây', 39, '5 cây'),
(141, 'Cà chua', 39, '2 quả'),
(142, 'Gia vị khác', 39, 'muối, bột nêm');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `food_steps`
--

CREATE TABLE `food_steps` (
  `id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `ordinal_number` int(11) NOT NULL,
  `content` varchar(5000) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `image_link` varchar(1000) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `food_steps`
--

INSERT INTO `food_steps` (`id`, `food_id`, `ordinal_number`, `content`, `image_link`) VALUES
(58, 31, 1, 'Phần si-rô đường: Cho đường và nước theo tỉ lệ 1 : 1 vào nồi nhỏ, đun sôi lên cho đến khi đường tan hết thì tắt bếp, để nguội. Si-rô đường này có thể sử dụng để pha rất nhiều loại đồ uống khác, vì thế các bạn có thể làm sẵn 1 lọ, khi nào pha thì lấy ra dùng rất là tiện.', 'https://blog.beemart.vn/wp-content/uploads/2015/06/cach-pha-nuoc-chanh-1.jpeg'),
(59, 31, 2, 'Vắt nước cốt chanh: Chọn chanh có vỏ mỏng thì sẽ thu được nhiều nước cốt hơn. Trước khi cắt chanh ra để vắt, các bạn lấy tay lăn nhẹ quả chanh vài lần để lúc vắt dễ hơn.', 'https://blog.beemart.vn/wp-content/uploads/2015/06/cach-pha-nuoc-chanh-5.png'),
(60, 31, 3, 'Lần lượt đổ nước cốt chanh, si-rô đường và nước lọc vào cốc và quấy đều lên. Nếm lúc này các bạn sẽ thấy vị khá là đậm. Cho thêm đá vào để 1 lúc cho nước chanh mát, đá tan ra là sẽ vừa đấy.', 'https://i.ytimg.com/vi/odVzddSf1Jk/maxresdefault.jpg'),
(61, 32, 1, 'Đậu đỏ, đậu trắng, đậu xanh, đậu đen vo sạch rồi ngâm nước khoảng 6-8h hoặc ngâm qua đêm cho mềm. Hôm sau cho từng loại đậu vào nồi lần nước ninh mềm. Nếu bạn muốn đậu mau mềm thì thêm một xíu muối (chỉ vài hạt thôi). Sau đó cho lượng đường vừa đủ ngọt đun 2-3 phút để đậu ngấm vị.', 'https://cdn.eva.vn/upload/1-2018/images/2018-03-13/cach-nau-che-thap-cam-cach-nau-che-thap-cam-2-1520911906-502-width650height488.jpg'),
(62, 32, 2, 'Riêng phần đậu xanh có thể hấp sau đó cho vào máy xay nhuyễn cùng với đường cát (Độ ngọt sẽ điều chỉnh theo sở thích ngọt của bạn).', 'https://cdn.eva.vn/upload/1-2018/images/2018-03-13/cach-nau-che-thap-cam-cach-nau-che-thap-cam-6-1520911906-675-width650height488.jpg'),
(63, 32, 3, 'Đun sôi 50ml nước rồi thả hạt trân châu vào luộc, khi trân châu chín nổi lên vớt ra ngâm vào nước sôi để nguội để tránh bị dính.', 'https://cdn.eva.vn/upload/1-2018/images/2018-03-13/cach-nau-che-thap-cam-cach-nau-che-thap-cam-3-1520911906-234-width650height488.jpg'),
(64, 32, 4, 'Đổ 30ml nước cốt dừa vào một cái nồi nhỏ thêm 10gr đường cùng 2 thìa bột năng đã pha loãng vào đun sôi để được hỗn hợp nước cốt dừa hơi sền sệt.', 'https://cdn.eva.vn/upload/1-2018/images/2018-03-13/cach-nau-che-thap-cam-cach-nau-che-thap-cam-5-1520911906-197-width650height523.jpg'),
(65, 32, 5, 'Lần lượt cho từng loại đậu vào cốc sau đó rưới phần nước cốt dừa lên rắc thêm ít dừa sợi và dừa khô cùng chút tinh dầu bưởi. Nếu thích lạnh thêm vài viên đá rồi thưởng thức nha.', 'https://cdn.eva.vn/upload/1-2018/images/2018-03-13/cach-nau-che-thap-cam-cach-nau-che-thap-cam-7-1520911906-250-width650height488.jpg'),
(78, 35, 1, 'Thịt lợn mua về xát muối rửa thật sạch, để ráo nước, thái miếng mỏng hơn 0,5 cm. Không nên thái dày quá thịt sẽ khó chín bên trong hoặc lúc xiên sẽ khó vì thịt quá dầy nhưng cũng không được mỏng quá vì khi nướng xong thịt sẽ còn teo lại.', 'https://pastaxi-manager.onepas.vn/content/uploads/articles/vuonghoai/thit-xao-lan/thit-xao-lan-2.jpg'),
(79, 35, 2, 'Sả, hành tím, hành tây, tỏi băm nhỏ và nhuyễn (có thể cho vào máy xay thật nhỏ).', 'https://photo-1-baomoi.zadn.vn/w1000_r1m/2017_10_16_276_23584689/b0c8d6583219db478208.jpg'),
(80, 35, 3, 'Chuẩn bị phần nước sốt để ướp thịt\r\n\r\n2 thìa canh dầu hào, 1-2 thìa canh sữa đặc, 1 thìa cà phê hạt tiêu, 1 thìa canh mật ong, 1 thìa cà phê dầu mè, 1 thìa canh nước mắm, 1 thìa canh đường vàng, 1 thìa cà phê nước hàng (nước màu hay còn gọi là kẹo đắng), 2 thìa canh hạt vừng trắng, tỏi, sả, hành tây, hành tím băm nhỏ.', 'https://emvaobep.com/wp-content/uploads/2018/04/cach-lam-nuoc-sot-uop-thit-nuong-1.jpg'),
(81, 35, 4, 'Trộn thật đều các nguyên liệu. Đeo bao tay vào, đổ tất cả hỗn hợp ướp thịt vào bát thịt đã thái, trộn bóp thật đều.', 'https://cdn.eva.vn/upload/1-2018/images/2018-03-09/thit-nuong-xien-cho-cac-be-thit-xien-nuong-thom-ngon-1-1520590673-800-width650height570.jpg'),
(82, 35, 5, 'Dùng que xiên thịt nếu miếng dài thì gấp làm đôi cho gọn gàng, xiên miếng thịt cho đều nhau đừng để miếng dài miếng ngắn quá và cũng không cần phải dồn thịt lại cho chặt (hoặc mọi người xoắn thịt lại rồi xiên cũng được, cái này tuỳ nhé) vì như vậy khi nướng thịt sẽ khó chín bên trong hoặc chín không đều nhau.', 'https://cdn.eva.vn/upload/1-2018/images/2018-03-09/thit-nuong-xien-cho-cac-be-thit-xien-nuong-thom-ngon-3-1520590673-57-width650height522.jpg'),
(83, 35, 6, 'Đặt các xiên thịt lên vỉ nướng ở dưới có đặt khay màu đen, đổ thêm hai bát nước con vào khay đen đó để khi thịt chín nhỏ phần nước xuống sẽ đỡ bốc khói và bị cháy khét.\r\n\r\nNướng thịt khoảng 10-15 phút thì quét mặt thịt bằng hỗn hợp nước quết đã pha sẵn ở trên. Khoảng 10-15 phút sau trở mặt thịt quết thêm một lần nữa để thịt có màu đẹp và không bị khô, rồi nướng thêm 5 phút nữa, mặt thịt chín vàng hơi cháy sém chút là được, tổng thời gian nướng trong khoảng 30- 35 phút.', 'https://cdn.eva.vn/upload/1-2018/images/2018-03-09/thit-nuong-xien-cho-cac-be-thit-xien-nuong-thom-ngon-7-1520590673-824-width650height488.jpg'),
(84, 36, 1, 'Thịt lợn mua về rửa sạch luộc chín cùng 1 nhánh gừng, 1 củ hành tím đập giập đến khi thịt chín. Vớt thịt ra, để nguội bớt rồi cắt miếng dài, mỏng.', 'https://thucthan.com/media/2018/08/cach-luoc-thit-ngon/thit-heo-luoc.jpg'),
(85, 36, 2, 'Trứng gà rán mỏng rồi thái thành miếng dài.', 'https://blog.beemart.vn/wp-content/uploads/2018/08/cach-chien-trung-133.jpg'),
(86, 36, 3, 'Tôm nõn xào qua với 1 chút nước mắm, hạt tiêu.', 'https://miro.medium.com/max/625/0*RnBtQoz5fJ0QAkde.jpg'),
(87, 36, 4, 'Dưa chuột, cà rốt nạo sạch vỏ, thái mỏng theo chiều dọc, bề ngang khoảng 1 đốt ngón tay.', 'https://ameovat.com/wp-content/uploads/2016/05/cach-lam-kimbap-han-quoc2.jpg?w=600'),
(88, 36, 5, 'Pha nước chấm theo hỗn hợp:\r\n2 muỗng đường + ½ quả chanh tươi + 4 thìa nước mắm + 1 thìa tỏi giã nát + vài nhánh ớt tươi thái nhỏ\r\nKhuấy đều.', 'https://thucthan.com/media/2018/06/nuoc-cham-nem/nuoc-cham-nem-ran.jpg'),
(89, 36, 6, 'Bày các món ra đĩa, bỏ các món muốn ăn vào bánh tráng và cuốn lại. \r\nThưởng thức cùng nước chấm nếu muốn ', 'http://www.monngon.tv/uploads/images/2017/04/13/78da34ba1195fe43fda385368599b16e-slide.png'),
(90, 37, 1, 'Cho kem tươi + sữa đặc + trà xanh vào âu trộn bột dùng máy đáh trứng đánh bông kem lên, khi kem đã bông hoà quyện cùng trà xanh sữa đặc thì dùng tay bóp nát bánh oreo để vào hỗn hợp rồi trộn đều lại', 'http://trekhoedep.info/wp-content/uploads/2016/06/cach-lam-kem-tuoi-tra-xanh-3.jpg'),
(91, 37, 2, 'Cho vào khuôn, hộp để ngăn đông trong 2-3h là thành kem.', 'http://afamilycdn.com/2019/4/28/kem-tra-xanh-3-15564466975122143383364.jpg'),
(96, 39, 1, 'Hành, cà chua… nhặt và rửa sạch. Cà chua thái múi,hành tây thái nhỏ. Trứng đập ra bát đánh tan.', 'https://photo-3-baomoi.zadn.vn/w1000_r1/17/10/19/265/23625443/3_724854.jpg'),
(97, 39, 2, 'Đặt nồi lên bếp, cho 2 thìa dầu ăn vào nồi, thêm ít hành khô băm phi thơm, sau đó cho cà chua vào xào, nêm hạt nêm, gia vị. Xào cà chua chín thì thêm lượng nước vừa đủ dùng và vặn to bếp để sôi.', 'https://baoamthuc.com/wp-content/uploads/2019/09/thit-sot-ca-chua-8211-6-cong-thuc-on-gian-cho-bua-com-am-vi-684.jpg'),
(98, 39, 3, 'Nước sôi, nêm nếm gia vị lần nữa cho vừa ăn, sau đó cho trứng đã đánh tan vào, ngoáy cho thật đều tay, đợi đến khi nước sôi trở lại, vặn nhỏ lửa cho sôi lăn tăn trong khoảng 1-2 phút nữa cho trứng chín hẳn, thêm rau gia vị vào rồi tắt bếp, múc ra bát.', 'https://img-global.cpcdn.com/recipes/4b77ed8e5e9d6ee5/751x532cq70/canh-tr%E1%BB%A9ng-ca-chua-recipe-main-photo.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `food_types`
--

CREATE TABLE `food_types` (
  `tid` int(11) NOT NULL,
  `nametype` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `food_types`
--

INSERT INTO `food_types` (`tid`, `nametype`) VALUES
(1, 'Ăn sáng'),
(2, 'Ăn vặt'),
(3, 'Khai vị'),
(4, 'Món chay'),
(5, 'Món chính'),
(6, 'Đồ uống'),
(7, 'Lẩu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `restaurant_id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `price` int(100) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`restaurant_id`, `food_id`, `price`, `name`) VALUES
(1, 1, 5000, 'Nước lọc'),
(1, 2, 100000, 'Rượu vang'),
(2, 3, 40000, 'Bún'),
(2, 4, 60000, 'Phở'),
(4, 5, 1000, 'nước'),
(5, 6, 5000, 'Nước lọc'),
(5, 7, 100000, 'Rượu vang'),
(7, 8, 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `author` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `image_link` varchar(1000) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `mota` text COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `post`
--

INSERT INTO `post` (`id`, `title`, `author`, `image_link`, `mota`) VALUES
(11, 'Các món luộc tổng hợp', 'admin', 'http://sieuthiyte.com.vn/blog/wp-content/uploads/2016/04/cac-mon-rau-cu-e1460444838530.jpg', 'Đẹp dáng đẹp da vô cùng hài hòa, các món luộc luôn là sự lựa chọn cho mọi lứa tuổi, đặc biệt là các chị em.'),
(12, 'Giảm cân, giữ dáng hiệu quả', 'admin', 'https://vienthammyoracle.vn/data/news/2016/H1-Bi-quyet-giu-dang.jpg', 'Loạt mẹo đơn giản góp phần giúp cho công cuộc giảm cân, giữ dáng của bạn thêm hiệu quả'),
(14, 'Món ngon với thịt heo', 'admin', 'http://media.vietq.vn/files/ctvloanto/cac-mon-an-tu-thit-lon2306.jpg', 'Thịt lợn là thực phẩm quen thuộc đối với bữa cơm của mọi gia đình. Thịt lợn tươi sạch, hữu cơ có thể chế biến được vô số món ngon, nếu bạn chưa biết nấu món gì từ thịt lợn thì hãy tham khảo những hướng dẫn sau nhé!'),
(15, '10 nhà hàng tốt nhất thế giới 2019', 'admin', 'https://d3ba08y2c5j5cf.cloudfront.net/wp-content/uploads/2019/06/26001915/The-chefs-behind-the-restaurants-ranked-1-50-at-The-Worlds-50-Best-Restaurants-awards-2019-sponsored-by-S.Pellegrino-Acqua-Panna-1920x1278.jpg', 'Gaggan (Bangkok, Thái Lan) là đại diện duy nhất của Đông Nam Á vào top 10 nhà hàng hàng đầu thế giới năm nay, theo bình chọn từ hơn 1.000 chuyên gia ẩm thực.\r\nSau đây là top 4 nhà hàng đứng đầu trong cuộc bầu chọn The World\'s 50 Best Restaurants');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_ct`
--

CREATE TABLE `post_ct` (
  `id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `content` text COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `post_ct`
--

INSERT INTO `post_ct` (`id`, `title`, `post_id`, `image`, `content`) VALUES
(1, 'Rau cải luộc', 0, 'https://media.ex-cdn.com/EXP/media.giadinhvietnam.com/files/content/2019/05/21/1-1015.jpg', 'Món rau cải chíp đẹp đến ngỡ ngàng với cách bài trí thông minh '),
(2, 'Đậu luộc', 0, 'https://znews-photo.zadn.vn/w1024/Uploaded/qhj_pwqvdvicbu/2019_05_16/2_1.jpg', ' Đậu que luộc trông cũng ngon mắt đấy chứ nhỉ?! '),
(3, 'Bổ dưỡng , dễ ăn , dễ bảo quản', 2, 'https://i-ngoisao.vnecdn.net/2015/08/10/trung-muoi-8711-1439190743.jpg', 'trứng muối là Có rất nhiều món ăn ngon từ trứng muối: thịt đúc trứng muối (thêm trứng bắc thảo), bánh trung thu nhân trứng muối, bánh bông lan mặn trứng muối, cháo trắng trứng muối ăn kèm ca la thầu (củ cải muối)…\r\n\r\nCách làm trứng muối thì đơn giản vô cùng, tuy vậy để có những mẻ trứng muối thơm ngon, tròn trịa, đẹp màu và muối quả nào thu hoạch quả đó (không hỏng) thì các bạn lưu ý một số điểm sau:'),
(4, 'Rau muống luộc', 4, 'https://toinayangi.vn/wp-content/uploads/2015/01/meo-nau-an-de-mon-luoc-ngon-hon-1.jpg', 'trểttwegegefregrreg'),
(5, 'Rau cải luộc', 5, 'http://sieuthiyte.com.vn/blog/wp-content/uploads/2016/04/cac-mon-rau-cu-e1460444838530.jpg', 'rauuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu'),
(6, 'Rau cải luộc', 6, 'http://sieuthiyte.com.vn/blog/wp-content/uploads/2016/04/cac-mon-rau-cu-e1460444838530.jpg', 'rauuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu'),
(7, 'Bổ dưỡng , dễ ăn , dễ bảo quản', 9, 'https://i-ngoisao.vnecdn.net/2015/08/10/trung-muoi-8711-1439190743.jpg', 'trứng muối là Có rất nhiều món ăn ngon từ trứng muối: thịt đúc trứng muối (thêm trứng bắc thảo), bánh trung thu nhân trứng muối, bánh bông lan mặn trứng muối, cháo trắng trứng muối ăn kèm ca la thầu (củ cải muối)…\r\n\r\nCách làm trứng muối thì đơn giản vô cùng, tuy vậy để có những mẻ trứng muối thơm ngon, tròn trịa, đẹp màu và muối quả nào thu hoạch quả đó (không hỏng) thì các bạn lưu ý một số điểm sau:'),
(8, 'Rau cải luộc', 9, 'https://media.ex-cdn.com/EXP/media.giadinhvietnam.com/files/content/2019/05/21/1-1015.jpg', 'trứng muối là Có rất nhiều món ăn ngon từ trứng muối: thịt đúc trứng muối (thêm trứng bắc thảo), bánh trung thu nhân'),
(9, 'Rau muống luộc', 10, 'https://toinayangi.vn/wp-content/uploads/2015/01/meo-nau-an-de-mon-luoc-ngon-hon-1.jpg', 'wefewf'),
(10, 'Rau muống luộc', 11, 'https://toinayangi.vn/wp-content/uploads/2015/01/meo-nau-an-de-mon-luoc-ngon-hon-1.jpg', 'Món ăn dân dã nhưng lại có sức hút cực lớn. Dễ làm, dễ ăn và vô cùng có lợi cho sức khỏe, có thể nói rau muống + nước mắm là combo món quốc dân mà bất cứ người dân Việt Nam nào cũng biết tới.'),
(11, 'Đậu phụ luộc', 11, 'https://sohanews.sohacdn.com/thumb_w/660/2018/photo1516446045578-1516446045579.jpg', 'Món ăn đơn giản và cũng nổi tiếng không kém rau muống luộc, có khả năng tạo nên nhiều combo với các đồ chấm khác nhau, dễ ăn và dễ làm với mọi người.'),
(12, 'Thịt lợn luộc', 11, 'https://lh3.googleusercontent.com/ZW57HqF8AUY7rzZerVXqyiSR0vGjsl7nxIkEIkTDDAzY_8cF57rYjak6MyfEOQMp8Sy6UKTIvOco0T1ENUwVLscCfxCnIQx-FPGGIVvLY9j-CxVt0_ganbg229iPUmGlWyXIUvBAvfMt1_D8o67iKVibT9N4sgwAv5POAMUvFlRJSzGwsmxU-oJV-zdd4zdRcn8UajYINiXl9UdJ4I80SjO2tjC_8PTfNoxxLbsYLmrNRkwvKvmYiqMlNBvzHghQOSn3nlbX06fBBzkZYJaJYLtdwiG6P6uQWsXR9BK0baMf_zQp2ABSUHKFr53u0Zu5ZYC8B7sGysR4Q4eJWrWJPG-vo_T40KEaK_hgKDAU9bI053fzHoPdxqSW5J_7k-X7Phf9xKxHMdZlzvwjGqOruKsx5f17iRbGvkPE2n-531DWt_Z2OCNmbABljj0cGx2q0ECYVepGJiSgqC5s0gkfLSsENrpklWM0DtzauAuDn5jTNHFIJstFdby2tf0zkiTazKxAYPUzCABWYe7FDSXdE8iMQqBRgbXFDc0u0M-J4avgDKZseh00k6pfdouHMyuQc0-DX_Usk97V2GkoLAV7nYjtKQjIf2OpMG7srhcXho8LApp0u4dy4T2FFlwSJYPJtj0G0b_DBHUwN0yyu_hA9iJlJOzC5AbSuRwst81VhnAasddcdtHab70DYcYs5O93ExzYORBv3RtWlPyyyyNisYIUhA=w1168-h657-no', 'Một món ăn cũng nổi tiếng không kém trong số các món luộc, không thể không nhắc tới thịt lợn luộc. Thịt lợn luộc phổ biến gần như trong mọi bữa ăn, và trở thành món ăn có mặt ở hầu hết các nhà hàng hay quán ăn.'),
(13, 'Tập dùng đồ uống trong ly dài', 12, 'https://kenh14cdn.com/thumb_w/620/2019/12/2/1-1575277716335108147910.jpg', 'Trong một ly nước ép bạn uống ngoài hàng có thể chứa đến 120 calo và khoảng 20gr đường. Vì vậy, để phòng tránh nguy cơ uống quá nhiều thì bạn nên chuyển sang dùng một chiếc ly dài thay cho những chiếc cốc có đường kính lớn. Với cách này, bạn sẽ giảm bớt được lượng chất lỏng gây tăng cân vào cơ thể tới 20 - 30%.\r\nCách làm trứng muối thì đơn giản vô cùng, tuy vậy để có những mẻ trứng muối thơm ngon, tròn trịa, đẹp màu và muối quả nào thu hoạch quả đó (không hỏng) thì các bạn lưu ý một số điểm sau:'),
(14, 'Tắm nước ấm', 12, 'https://kenh14cdn.com/thumb_w/620/2019/12/2/4-1575277716341670436883.jpg', 'Nghiên cứu từ các nhà khoa học ở Đại học Loughborough (Anh) cho biết, việc tắm bằng nước ấm không chỉ giúp bạn thư giãn mà còn hỗ trợ giảm cân hiệu quả. Trong những nghiên cứu mà họ tiến hành, họ đã phát hiện ra rằng, cứ 1 giờ tắm nước ấm sẽ đốt cháy được khoảng 130 calo - tương đương với lượng calo bạn giảm được khi đi bộ trong vòng 30 phút.'),
(15, 'Cắt thức ăn thành từng miếng nhỏ', 12, 'https://kenh14cdn.com/thumb_w/620/2019/12/2/6-1575277716345420774623.jpg', 'Đây là động thái giúp đánh lừa bộ não của bạn để tạo ra suy nghĩ là có nhiều thức ăn trong đĩa ăn của bạn hơn. Và tuyệt vời hơn là bạn sẽ có cảm giác no nhanh, từ đó tránh được nguy cơ ăn nhiều.\r\nHãy sử dụng những loại bát đĩa nhỏ để thu về hiệu quả tương tự.'),
(16, 'Ăn với đồng hồ bấm giờ bên cạnh', 12, 'https://kenh14cdn.com/thumb_w/620/2019/12/2/3-1575277716339710690824.jpg', 'Nhiều người thường có thói quen ăn nhanh mà không biết rằng mình có thể ăn quá mức lượng thức ăn được cho phép. Do đó, trước khi ngồi vào bàn ăn, bạn nên bật đồng hồ hẹn giờ trong khoảng 20 phút và cố gắng ăn chậm rãi, từ tốn.'),
(17, 'Sườn heo chua ngọt', 13, 'https://cdn02.static-adayroi.com/0/2019/03/19/1552972081736_2635356.jpg', 'Trong tất cả các món ăn ngon dễ làm thường ngày thì sườn heo chua ngọt được rất nhiều gia đình yêu thích. Sườn heo chua ngọt là món ăn cực kỳ thơm ngon và dễ làm, sườn heo chua ngọt sẽ khiến bữa cơm của gia đình bạn thêm phần ngon miệng hơn. Sườn heo chua ngọt rất dễ chế biến, chỉ cần chuẩn bị sườn heo non, chanh, tỏi, các loại gia vị tăng hương vị món ăn cần thiết.\r\n\r\nSườn heo sơ chế sạch, chặt miếng vừa ăn, sau đó đem chiên sơ qua. Làm nước sốt với chanh, tỏi, nước mắm, đường trộn đều. Cho toàn bộ thịt vào chảo nóng, rồi rưới nước sốt chua ngọt vào, đun khi nào sốt sánh đều thì tắt bếp. Chỉ một vài thao tác đơn giản bạn đã có ngay món sườn heo chua ngọt.'),
(18, 'Thịt lợn om khoai tây', 13, 'https://cdn02.static-adayroi.com/0/2019/03/19/1552972080804_5443613.jpg', 'Thịt lợn om khoai tây là món không chỉ thơm ngon mà còn rất bổ dưỡng mà bạn nên cho vào thực đơn cơm tối. Sườn lợn sau khi sơ chế sạch, chặt miếng vừa ăn rồi đem chiên vàng qua với dầu. Khoai tây sơ chế sạch, gọt sạch vỏ và cách miếng vừa ăn. Sườn ram vàng cho vào ngồi, nêm nếm gia vị rồi um nhỏ lửa, tiếp cho khoai tây và thêm nước vào rồi om cho đến khi khoai chín nhừ, phần nước sánh lại thì tắt bếp.'),
(19, 'Thịt lợn hầm cà rốt', 13, 'https://file.organica.vn/uploads/filecloud/2018/August/31/1333-929801535701908-1535701908.jpg', 'Vị ngọt thanh của cà rốt kết hợp với những miếng thịt lợn đậm đà sẽ là món ăn vô cùng hấp dẫn cho bữa cơm gia đình của bạn.'),
(20, 'Thịt lợn kho tàu', 13, 'https://scm-assets.constant.co/scm/unilever/a6798e909fa57bfd19c3e7f00737e5d6/90b85cf7-2d3a-4466-9aab-f90731a56c4a.jpg', 'Thịt lợn kho tàu có nguồn gốc từ miền Bắc, khi vào Nam được biến tấu thêm vị ngọt và cay, song mỗi cách chế biến đều mang một hương vị khác nhau khó có thể chối từ.'),
(21, 'Sườn heo chua ngọt', 14, 'https://cdn02.static-adayroi.com/0/2019/03/19/1552972081736_2635356.jpg', 'Trong tất cả các món ăn ngon dễ làm thường ngày thì sườn heo chua ngọt được rất nhiều gia đình yêu thích. Sườn heo chua ngọt là món ăn cực kỳ thơm ngon và dễ làm, sườn heo chua ngọt sẽ khiến bữa cơm của gia đình bạn thêm phần ngon miệng hơn. Sườn heo chua ngọt rất dễ chế biến, chỉ cần chuẩn bị sườn heo non, chanh, tỏi, các loại gia vị tăng hương vị món ăn cần thiết.\r\n\r\nSườn heo sơ chế sạch, chặt miếng vừa ăn, sau đó đem chiên sơ qua. Làm nước sốt với chanh, tỏi, nước mắm, đường trộn đều. Cho toàn bộ thịt vào chảo nóng, rồi rưới nước sốt chua ngọt vào, đun khi nào sốt sánh đều thì tắt bếp. Chỉ một vài thao tác đơn giản bạn đã có ngay món sườn heo chua ngọt.'),
(22, 'Thịt lợn om khoai tây', 14, 'https://cdn02.static-adayroi.com/0/2019/03/19/1552972080804_5443613.jpg', 'Thịt lợn om khoai tây là món không chỉ thơm ngon mà còn rất bổ dưỡng mà bạn nên cho vào thực đơn cơm tối. Sườn lợn sau khi sơ chế sạch, chặt miếng vừa ăn rồi đem chiên vàng qua với dầu. Khoai tây sơ chế sạch, gọt sạch vỏ và cách miếng vừa ăn. Sườn ram vàng cho vào ngồi, nêm nếm gia vị rồi um nhỏ lửa, tiếp cho khoai tây và thêm nước vào rồi om cho đến khi khoai chín nhừ, phần nước sánh lại thì tắt bếp.'),
(23, 'Thịt lợn hầm cà rốt', 14, 'https://file.organica.vn/uploads/filecloud/2018/August/31/1333-929801535701908-1535701908.jpg', 'Vị ngọt thanh của cà rốt kết hợp với những miếng thịt lợn đậm đà sẽ là món ăn vô cùng hấp dẫn cho bữa cơm gia đình của bạn.'),
(24, 'Thịt lợn kho tàu', 14, 'https://scm-assets.constant.co/scm/unilever/a6798e909fa57bfd19c3e7f00737e5d6/90b85cf7-2d3a-4466-9aab-f90731a56c4a.jpg', 'Thịt lợn kho tàu có nguồn gốc từ miền Bắc, khi vào Nam được biến tấu thêm vị ngọt và cay, song mỗi cách chế biến đều mang một hương vị khác nhau khó có thể chối từ.'),
(25, 'Nhà hàng Mirazur (Menton, Pháp)', 15, 'https://znews-photo.zadn.vn/w1024/Uploaded/cqdhmdxwp/2019_07_02/e9f25a8a96ae72f02bbf.jpg', 'Năm nay, nhà hàng Mirazur, đứng đầu là bếp trưởng Mauro Colagreco, đã xuất sắc giành vị trí top 1 Nhà hàng tốt nhất thế giới 2019. Mirazur tọa lạc ở biên giới giữa Pháp và Italy, được bao quanh bởi khung cảnh thơ mộng với khu vườn độc đáo và bờ biển trải dài xanh ngắt. Tới đây, du khách sẽ có cơ hội thưởng thức ẩm thực chuẩn 3 sao Michelin, đồng thời ngắm vùng biển Địa Trung Hải thơ mộng.'),
(26, 'Nhà hàng Noma (Copenhagen, Đan Mạch)', 15, 'https://znews-photo.zadn.vn/w1024/Uploaded/cqdhmdxwp/2019_07_02/NOMA7.jpg', 'Nhà hàng Noma đứng vị trí số 2 trong top 50 Nhà hàng tốt nhất thế giới năm 2019. Noma được ưu tiên sử dụng các vật liệu có xuất xứ thiên nhiên như gỗ, đá. Nhà hàng nổi tiếng nhất Đan Mạch có thực đơn mới gồm các thành phần địa phương và gia vị đặc biệt. Do đó, họ chủ yếu cung cấp nhiều loại trái cây, rau quả vào mùa xuân, hè; thịt hoang dã vào mùa thu; mùa đông sẽ là hải sản tươi sống.'),
(27, 'Asador Etxebarri (Tây Ban Nha)', 15, 'https://znews-photo.zadn.vn/w1024/Uploaded/cqdhmdxwp/2019_07_02/etxabarri_2018_1_1284x850_q75_cropped.jpg', 'Asador Etxebarri (Atxondo), nhà hàng nằm sát bờ biển thuộc xứ Basque (Tây Ban Nha), giành vị trí thứ 3 trong giải thưởng danh giá này. Nơi đây nổi tiếng với các món ăn được chế biến từ hải sản, đặc sắc nhất là món sò điệp béo ngậy sốt bạc hà. Màu xanh đẹp mắt, hương vị the cay kết hợp sò điệp dai giòn khiến mọi thực khách từ khắp nơi trên thế giới đều bị \"hạ gục\".'),
(28, 'Gaggan (Bangkok, Thái Lan)', 15, 'https://znews-photo.zadn.vn/w1024/Uploaded/cqdhmdxwp/2019_07_02/gagganrestaurantbangkok.jpg', 'Gaggan là nhà hàng Đông Nam Á duy nhất vào top 10 Nhà hàng tốt nhất thế giới 2019. Gaggan là nơi tụ hội của 3 phong cách ẩm thực Ấn Độ, Thái Lan, Nhật Bản. Món ăn nổi tiếng nhất tại đây là sashimi nhím biển tươi sống.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `restaurants`
--

CREATE TABLE `restaurants` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `location` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `mota` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `image` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `user_view` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `restaurants`
--

INSERT INTO `restaurants` (`id`, `name`, `location`, `mota`, `image`, `user_view`) VALUES

(1, 'Nhà hàng ABC', 'Thế giới', 'Nhà hàng sang trọng nhất thế giới', 'https://vnn-imgs-f.vgcloud.vn/2018/11/11/06/kham-pha-10-nha-hang-sang-trong-nhat-the-gioi-8.jpg', 116),
(4, 'Quán vìa hè Hà Nội 1', 'Hà Nội', 'Quán vỉa hè được nhiều người nổi tiếng ưa chuộng', 'https://image-us.eva.vn/upload/1-2018/images/2018-01-31/nhung-quan-an-via-he-ha-noi---cu-chiu-kho-den-the-nao-cung-gap-dan-soai-ca-u23-pho-1517322388575461994815-1517390093-864-width600height450.jpg', 2),
(6, 'Nhà hàng ABC đã chỉnh sửa', 'Thế giới', 'Nhà hàng sang trọng nhất thế giới', 'https://vnn-imgs-f.vgcloud.vn/2018/11/11/06/kham-pha-10-nha-hang-sang-trong-nhat-the-gioi-8.jpg', 7),
(8, 'Quán vìa hè Hà Nội', 'Sửa được mà', 'Quán vỉa hè được nhiều người nổi tiếng ưa chuộng', 'https://image-us.eva.vn/upload/1-2018/images/2018-01-31/nhung-quan-an-via-he-ha-noi---cu-chiu-kho-den-the-nao-cung-gap-dan-soai-ca-u23-pho-1517322388575461994815-1517390093-864-width600height450.jpg', 1);


-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `mail` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `role` varchar(11) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `mail`, `role`, `name`, `date`) VALUES
(1, 'o0ovano0o', '12345', 'van005618@gmail.com', '1', 'Nguyen Van Anh', '2000-11-11'),
(2, 'vietcuong', '12345', 'vietcuong@gmail.com', '1', 'Cuong', '1999-12-03'),
(3, 'admin', '12345', 'admin@gmail.com', '0', 'Admin', '2000-11-11');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cmt_nh`
--
ALTER TABLE `cmt_nh`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `food_id` (`restaurant_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `food_id` (`food_id`);

--
-- Chỉ mục cho bảng `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`,`type_id`),
  ADD KEY `type_id` (`type_id`) USING BTREE;

--
-- Chỉ mục cho bảng `food_recipes`
--
ALTER TABLE `food_recipes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`,`food_id`),
  ADD KEY `food_id` (`food_id`);

--
-- Chỉ mục cho bảng `food_steps`
--
ALTER TABLE `food_steps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`,`food_id`),
  ADD KEY `food_id` (`food_id`);

--
-- Chỉ mục cho bảng `food_types`
--
ALTER TABLE `food_types`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `id` (`tid`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD KEY `restaurant_id` (`restaurant_id`,`food_id`),
  ADD KEY `food_id` (`food_id`);

--
-- Chỉ mục cho bảng `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `post_ct`
--
ALTER TABLE `post_ct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`);

--
-- Chỉ mục cho bảng `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cmt_nh`
--
ALTER TABLE `cmt_nh`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `food`
--
ALTER TABLE `food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `food_recipes`
--
ALTER TABLE `food_recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT cho bảng `food_steps`
--
ALTER TABLE `food_steps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `food_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `post_ct`
--
ALTER TABLE `post_ct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`food_id`) REFERENCES `food` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `food_types` (`tid`);

--
-- Các ràng buộc cho bảng `food_recipes`
--
ALTER TABLE `food_recipes`
  ADD CONSTRAINT `food_recipes_ibfk_1` FOREIGN KEY (`food_id`) REFERENCES `food` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `food_steps`
--
ALTER TABLE `food_steps`
  ADD CONSTRAINT `food_steps_ibfk_1` FOREIGN KEY (`food_id`) REFERENCES `food` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
