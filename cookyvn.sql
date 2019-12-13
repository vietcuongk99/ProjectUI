-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 13, 2019 lúc 07:00 PM
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
(10, 1, 'bình luận dài dài tý nàyyyyyyy', 1);

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
(6, 1, 'ngon thế', 5),
(7, 1, 'ngon thế', 5),
(8, 1, 'bình luận dài dài tý nàyyyyyyy', 5),
(9, 1, 'đẹp thế', 5),
(10, 1, 'lỗi gì', 5),
(11, 1, 'ok', 6),
(13, 1, 'ngon thế', 21),
(14, 1, 'lỗi gì', 21),
(15, 1, 'ngon thế', 15);

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
(5, 'Thịt xiên nướng', 5, 10, '1', 'dễ', 25, '0', 'Thịt được xiên nướng', 'https://i1.wp.com/congthucmonngon.com/wp-content/uploads/2018/04/mon-ngon-cuoi-tuan-thit-xien-nuong.jpg?ssl=1'),
(6, 'chè', 1, 12, '12', 'dễ', 40, '0', 'chè thập cẩm', 'https://cdn.daynauan.info.vn/wp-content/uploads/2018/08/che-thai-sau-rieng.jpg'),
(15, 'chè', 2, 12, '1', 'dễ', 4, '0', 'đéo phải chè', 'https://monngonmoingay.com/wp-content/uploads/2019/02/che-ba-ba-500.jpg'),
(16, 'Sườn xào chua ngọt', 5, 30, '2', 'Trung Bình', 1, '0', 'Sườn xào chua ngọt - chua chua ngọt ngọt', 'https://cdn.24h.com.vn/upload/2-2018/images/2018-06-08/1528393104-915-_mg_6780-1528392856-width650height433.jpg'),
(20, 'Canh nấm chay', 4, 40, '3', 'Trung bình', 0, '0', 'Kết hợp trứng với cà chuaaaa', 'https://www.hoidaubepaau.com/wp-content/uploads/2016/03/canh-nam-ngu-sac.jpg'),
(21, 'Nước chanh', 6, 2, '1', 'dễ', 7, '0', 'Đồ uống thanh mát cho mùa hè', 'https://sohanews.sohacdn.com/thumb_w/660/2018/2/1/photo1517478868721-1517478868721748641205.jpg'),
(23, 'Nem cuốn', 5, 30, '4', 'Vừa', 4, '0', 'Cách làm nem ngon nhất Vịnh Bắc Bộ', 'https://media.cooky.vn/recipe/g2/14542/s640/recipe14542-635621834873923230.jpg');

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
(12, 'Thịt', 5, '200'),
(13, 'da vị', 5, '0'),
(27, 'nước', 15, '100'),
(28, 'bột', 15, '300'),
(29, 'đường', 15, '10'),
(30, 'kimmm', 15, '10'),
(31, 'Sườn', 16, '0.5kg'),
(32, 'Dấm', 16, '100ml'),
(33, 'Đường', 16, '50g'),
(34, 'Ớt', 16, '1 quả'),
(41, 'nước', 20, '400ml'),
(42, 'nấm', 20, '300g'),
(43, 'rau củ', 20, '3-4 loại'),
(44, 'nước', 21, '100ml'),
(45, 'chanh', 21, '1 quả'),
(46, 'đường', 21, '50g'),
(48, 'Bánh tráng', 23, '20'),
(49, 'Xà lách', 23, '20'),
(50, 'Húng', 23, '20'),
(51, 'Miến', 23, '20'),
(52, 'Tôm', 23, '20');

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
(3, 5, 1, 'Ướp da vị', 'https://media.ex-cdn.com/EXP/media.phunutoday.vn/files/upload_images/2016/07/29/uop-gia-vi-ngon-1-phunutoday_vn.jpg'),
(4, 5, 2, 'Nướng ', 'https://images.foody.vn/res/g67/662791/prof/s576x330/foody-mobile-foody-thit-xien-nuon-655-636316545213496259.jpg'),
(12, 15, 1, 'sao k chịu hiện', 'https://media.ex-cdn.com/EXP/media.phunutoday.vn/files/upload_images/2016/07/29/uop-gia-vi-ngon-1-phunutoday_vn.jpg'),
(13, 16, 1, 'Cắt sườn', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMSEhUTExMWFhUXGBgWGBgYFxgeGBgaGBYYGhUbHRgYHSggGh8lGxcYITEhJSkrLi4uGB8zODMtNygtLisBCgoKDg0OGhAQGy0lICUtLS0yLS0tLS8rKy0tLS0tLSstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAL4BCQMBIgACEQEDEQH/xAAcAAACAgMBAQAAAAAAAAAAAAAFBgMEAQIHAAj/xAA/EAABAwIEAwYEBQEHAwUAAAABAAIRAyEEBRIxQVFhBhMicYGRMqGx0UJSweHwIxUWM2JygvEHFCRDkqKy0v/EABoBAAIDAQEAAAAAAAAAAAAAAAIDAAEEBQb/xAAwEQACAgEEAQQBAgMJAAAAAAAAAQIRAwQSITFBEyJRYRQygQWh8CMzQnGRscHR4f/aAAwDAQACEQMRAD8Afsdm2isyi1hc50EXifFDo4eFviM8I9LFHNKTnFoeJA1XsNM6QZPAmR6FA3ZXRqFzS4Mu8l7Ww95DXiS6SDAqOkx4rbbLXEZLRLXGnXuIOk6NJcCY1HQYBc5+wtrdC07I9B+0m7bYN+IotZSq7PvTaRqqbCJnhMx68Fc7Lh1PDNbVeS9usu1vDiAHGL8tMe6F5dklFgpPqV/G2T+GJJeHGS29iAT/AJBspq+SUdb5xDx3gbf+nECAACRxLWmObQs/opZr8V393/0aJaqTwrT8bU7uub+P6+hkpYhjhLXNIgE3FgRIJ5WW4qN/MPcef0S5RyegwVGiublr32p30PkAy27ZkRtdQVOzWEJANczwB0cb7aYuCOH2Ttkfn+RmqPyNsL0LK9KUCYhZXpXlCHoXoXl5Qh4L0LyyoQxCwtoXoUIarMLy8oQxC9Cyqrca3vDTJAduOoVN0Q3xNXQ0lVcHmTXgnaN1B2irhrRqBgnccEpOxJBIa'),
(14, 16, 2, 'Tẩm ướt các da vị vào sườn', 'https://daynauan.info.vn/wp-content/uploads/2019/04/cach-uop-suon-com-tam.jpg'),
(15, 16, 3, 'Chiên sườn lên', 'https://cdn.24h.com.vn/upload/2-2018/images/2018-06-23/1529690146-80-img_20180614_150447-1529689904-width650height488.jpg'),
(22, 20, 1, 'Chuẩn bị thái rau củ ', 'https://mayranghat.vn/wp-content/uploads/2018/05/may-thai-rau-cu-qua-da-nang1-1024x633.jpg'),
(23, 20, 2, 'Đun chúng lên để được thành phẩm như dưới', 'https://afamilycdn.com/Images/Uploaded/Share/2010/11/30/canhnam.jpg'),
(24, 21, 1, 'Cắt chanh rồi vắt vào nước . Sau đó pha thêm đường khấy đều', 'http://kenh14cdn.com/2017/lime-3-1492054242387.jpg'),
(26, 23, 1, 'Cho đồ vào cuốn với bánh tráng là xong, ez vl', 'https://webloikhuyen.com/wp-content/uploads/2018/05/cach-lam-nuoc-cham-nem-nuong-nha-trang-629x420.jpg');

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
(2, 'Tại sao trứng muối thơm ngon được ưu dùng', 'o0ovano0o', 'http://www.savourydays.com/wp-content/uploads/2012/04/TrungMuoi.jpg', 'Trứng muối được làm từ trứng ướp với muối.'),
(4, 'Các món luộc', 'o0ovano0o', 'https://media.ex-cdn.com/EXP/media.phunutoday.vn/files/upload_images/2015/03/26/luoc-rau-2.jpg', 'Đẹp dáng đẹp da vô cùng hài hòa'),
(6, 'Các món luộc', 'o0ovano0o', 'http://sieuthiyte.com.vn/blog/wp-content/uploads/2016/04/cac-mon-rau-cu-e1460444838530.jpg', 'Đẹp dáng đẹp da vô cùng hài hòa'),
(7, 'Các món luộc 123', 'o0ovano0o', 'http://sieuthiyte.com.vn/blog/wp-content/uploads/2016/04/cac-mon-rau-cu-e1460444838530.jpg', 'Đẹp dáng đẹp da vô cùng hài hòa'),
(8, '1212Tại sao trứng muối thơm ngon được ưu dùng', 'o0ovano0o', 'http://www.savourydays.com/wp-content/uploads/2012/04/TrungMuoi.jpg', 'Trứng muối được làm từ trứng ướp với muối.');

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
(6, 'Rau cải luộc', 6, 'http://sieuthiyte.com.vn/blog/wp-content/uploads/2016/04/cac-mon-rau-cu-e1460444838530.jpg', 'rauuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu');

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
(1, 'Nhà hàng ABC', 'Thế giới', 'Nhà hàng sang trọng nhất thế giới', 'https://vnn-imgs-f.vgcloud.vn/2018/11/11/06/kham-pha-10-nha-hang-sang-trong-nhat-the-gioi-8.jpg', 104),
(2, 'Quán vìa hè Hà Nội', 'Hà Nội', 'Quán vỉa hè được nhiều người nổi tiếng ưa chuộng', 'https://image-us.eva.vn/upload/1-2018/images/2018-01-31/nhung-quan-an-via-he-ha-noi---cu-chiu-kho-den-the-nao-cung-gap-dan-soai-ca-u23-pho-1517322388575461994815-1517390093-864-width600height450.jpg', 0),
(4, 'Quán vìa hè Hà Nội 1', 'Hà Nội', 'Quán vỉa hè được nhiều người nổi tiếng ưa chuộng', 'https://image-us.eva.vn/upload/1-2018/images/2018-01-31/nhung-quan-an-via-he-ha-noi---cu-chiu-kho-den-the-nao-cung-gap-dan-soai-ca-u23-pho-1517322388575461994815-1517390093-864-width600height450.jpg', 1),
(6, 'Nhà hàng ABC đã chỉnh sửa', 'Thế giới', 'Nhà hàng sang trọng nhất thế giới', 'https://vnn-imgs-f.vgcloud.vn/2018/11/11/06/kham-pha-10-nha-hang-sang-trong-nhat-the-gioi-8.jpg', 7);

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
(2, 'vietcuong', '12345', 'vietcuong@gmail.com', '1', 'Cuong', '1999-12-03');

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
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `food`
--
ALTER TABLE `food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `food_recipes`
--
ALTER TABLE `food_recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `food_steps`
--
ALTER TABLE `food_steps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `food_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `post_ct`
--
ALTER TABLE `post_ct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
