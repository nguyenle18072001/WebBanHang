-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 21, 2021 lúc 02:10 PM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_banhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_customer` int(11) DEFAULT NULL,
  `date_order` date DEFAULT NULL,
  `total` float DEFAULT NULL COMMENT 'tổng tiền',
  `payment` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'hình thức thanh toán',
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail`
--

CREATE TABLE `bill_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_bill` int(10) NOT NULL,
  `id_product` int(10) NOT NULL,
  `quantity` int(11) NOT NULL COMMENT 'số lượng',
  `unit_price` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_type` int(10) UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_price` float DEFAULT NULL,
  `promotion_price` float DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `id_type`, `description`, `unit_price`, `promotion_price`, `image`, `unit`, `new`, `created_at`, `updated_at`) VALUES
(1, 'Predator Helios 300 PH315-53-72XD', 5, 'Acer Predator Helios 300 PH315-53-72XD là chiếc máy tính xách tay năm 2020 đã nhận được sự phổ biến mạnh mẽ nhờ phần cứng cực kỳ mạnh mẽ và mức giá hấp dẫn. Được cung cấp sức mạnh bởi NVIDIA GeForce RTX 2060, nó có khả năng lướt qua hầu hết các trò chơi hiện đại ở cài đặt cao một cách dễ dàng và đủ chứng minh trong tương lai để cho phép chơi tốt hầu hết các trò chơi trong tương lai gần. Hơn thế nữa, tỷ lệ giá trên hiệu suất của nó tốt hơn hầu hết các máy tính xách tay cạnh tranh cung cấp phần cứng tương tự với mức giá cao hơn.\r\nMột trong những điểm nổi bật chính của PH315-53-72XD là màn hình 144Hz nhận được đánh giá cao về độ rõ nét và góc nhìn linh hoạt. Màn hình 144Hz cho phép chơi trò chơi ở trên giới hạn 60 khung hình / giây tiêu chuẩn trên màn hình 60Hz tiêu chuẩn. Xem xét đồ họa GeForce RTX 2060 mạnh mẽ, không chỉ có thể đạt được tốc độ khung hình trên 60 FPS trên các trò chơi mà còn rất có khả năng, vì vậy tốc độ làm mới cao trên màn hình có ý nghĩa rất lớn. Điều này cho phép trải nghiệm chơi game sống động và chân thực hơn, đặc biệt là đối với các trò chơi hành động.', 18000000, 15000000, 'lap1.jpg', 'cái', 1, '2021-06-26 03:00:16', '2021-06-24 22:11:00'),
(2, 'ASUS Vivo-A412', 1, '14 inchs Anti-Glare | Intel Core i3 8145U | 4GB DDR4 2400MHz | Intel HD Grapphics 620 Share ', 18000000, 16000000, 'Vivobook-A412_1.png', 'cái', 1, '2021-06-26 03:00:16', '2021-06-24 22:11:00'),
(3, 'ASUS TUF FX505DT', 1, '15.6 inchs FHD | AMD Ryzen 5 3550H | 8GB DDR4 2400MHz | NVIDIA Geforce GTX 1650 4GB', 20000000, 18500000, 'TUF-FX505DT-AL118T-4.jpg', 'cái', 0, '2021-06-26 03:00:16', '2021-06-24 22:11:00'),
(4, 'ASUS Zenbook UX333FA', 1, '13.3 inchs IPS FHD | Intel Core i5 | 8GB LPDDR3 2133MHz | Intel UHD Graphics 620 Shared', 16000000, 0, 'asus-zenbook-ux333-6.jpg', 'cái', 0, '2021-06-26 03:00:16', '2021-06-24 22:11:00'),
(5, 'ASUS ROG Strix-G531', 1, '15.6 inchs FHD | Intel Core i7 9750H | 8 GB DDR4 2666 MHz | NVIDIA GeForce GTX 1650 4 GB', 16000000, 0, '6499_asus_rog_strix_g_g531gt_hn554t_1.jpg', 'cái', 0, '2021-06-26 03:00:16', '2021-06-24 22:11:00'),
(6, 'DELL Inspiron N5590G5', 2, '15.6 inchs IPS FHD | Intel Core i7 9750H | 16 GB DDR4 2666 MHz | NVIDIA GeForce RTX 2060 6 GB', 20000000, 18000000, '7340_dell_inspiron_15_3505_y1n1t1.jpg', 'cái', 0, '2021-06-26 03:00:16', '2021-06-24 22:11:00'),
(7, 'Dell XPS15', 2, '15.6 inchs InfinityEdge display | Intel Core i7 8750H | 16 GB DDR4 2666 MHz |  NVIDIA GEFORCE GTX 1050 4GB GDDR5', 16000000, 0, '637109860371858876_dell-xps-15-7590-1.jpg', 'cái', 1, '2021-06-26 03:00:16', '2021-06-24 22:11:00'),
(8, 'DELL Precision 7510', 2, '15.6 inch FHD | Intel Core i7-6820HQ | 16GB DDR4 2133MHz |  Nvidia Quadro M1000M 2GB', 16000000, 15000000, '3ybLZ9284hh5SMTjTjuFDI2JvDWC3Vd3ga2m8RMV.jpg', 'cái', 0, '2021-06-26 03:00:16', '2021-06-24 22:11:00'),
(9, 'DELL G3 N3590', 2, '15.6 inchs Anti - Glare | Intel Core i7 9750H | 8 GB DDR4 2666 MHz |  NVIDIA GeForce GTX 1660Ti', 16000000, 15000000, '637055420657704809_Mo-ta-san-pham-dell-g3-n3590-core-i7-9750h-2.jpg', 'cái', 0, '2021-06-26 03:00:16', '2021-06-24 22:11:00'),
(10, 'DELL Alienware 13R3 OLED', 2, '13.3 inchs QHD OLED | Core i7 7700HQ 2.8 GHz | 16 GB DDR4 2400 MHz |  NVIDIA Geforce GTX 1060 6 GB', 25000000, 0, 'laptop-alienware-13-R3-6.jpg', 'cái', 0, '2021-10-12 02:00:00', '2021-10-27 02:24:00'),
(12, 'MSI GF63 9SC', 3, '15.6 inchs IPS FHD | Intel Core i5 9300H | 8 GB DDR4 2666 MHz |  NVIDIA GeForce® GTX 1650 MAX Q ,GDDR5 4GB', 20000000, 18000000, 'images.png', 'cái', 0, '2021-06-12 02:00:00', '2021-06-27 02:24:00'),
(13, 'MSI PS42 8MO', 3, '14.0 inchs IPS FHD | Intel Core i5 8265U | 8 GB DDR4 2666 MHz | Intel UHD Graphics 620', 30000000, 28000000, '636936242503909718_msi-ps42-8mo-250vn-dd.png', 'cái', 1, '2021-06-12 02:00:00', '2021-06-27 02:24:00'),
(14, 'ACER Aspire E5476', 4, '14.0 inchs | Intel Core i3 8130U | 4 GB DDR4 2400 MHz | Intel HD Graphics 620 Shared', 30000000, 28000000, 'acer-e5-476-1.jpg', 'cái', 0, '2021-06-12 02:00:00', '2021-06-27 02:24:00'),
(15, 'ACER Swift SF114', 4, '14.0 inchs IPS FHD | Intel Celeron N4000 | 4 GB DDR4 2133 MHz | Intel® UHD Graphics 600', 35000000, 32000000, 'acer_swift_sf114_32_p8hv_2050de7bd05b4ac4991ddb6c92099bb7.jpg', 'cái', 1, '2021-06-12 02:00:00', '2021-06-27 02:24:00'),
(16, 'ACER Nitro AN515', 4, '15.6 inchs FHD | AMD Ryzen™ 5 2500U 2500U | 8 GB DDR4 2666 MHz | AMD Radeon™ RX 560X 4 GB ', 25000000, 22000000, '29120_acer_nitro_5_an515_54_photogallery_01.png', 'cái', 0, '2021-06-12 02:00:00', '2021-06-27 02:24:00'),
(17, 'LENOVO Thinkpad A485', 6, '14 inchs IPS | Intel Core i3-7130U | 4GB DDR4 2133MHz | Intel HD Graphics 620', 25000000, 24000000, 'lenovo_thinkpad_a485.png', 'cái', 0, '2021-06-12 02:00:00', '2021-06-27 02:24:00'),
(18, 'LENOVO Thinkpad T430', 6, '14.0 inch. HD+ | Intel® Core™ i5-3320M | 4GB DDR3 SDRAM | Intel® HD Graphics 4000', 28000000, 0, 'THINKPAD-T430-LAPTOPTCC.jpg', 'cái', 0, '2021-06-13 02:20:00', '2021-06-19 03:20:00'),
(19, 'LENOVO Thinkpad P70', 6, '17.3  inch FULL HD | Intel® Core™ i7-6700HQ 8M | 16GB RAM DDR4 2400MHz |  NVIDIA Quadro M600M', 17000000, 0, 'lenovo-laptop-thinkpad-p70-main.png', 'cái', 1, '2021-06-13 02:20:00', '2021-06-19 03:20:00'),
(20, 'LENOVO Ideapad S340', 6, '15.6 inchs FHD | AMD Ryzen™ 5 3500U | 4 GB RAM DDR4 2400 MHz | Radeon ™ Vega 8 Shared', 15000000, 0, '636958696670170977_lenovo-ideapad-s340-15iwl-dd.png', 'cái', 0, '2021-10-13 02:20:00', '2021-10-19 03:20:00'),
(21, 'LENOVO Yoga 520 14', 6, '14 inchs HD | Intel Core i3 Kabylake |4 GB RAM DDR4  2133 MHz |  Intel® HD Graphics 620', 26000000, 25000000, 'lenovo-laptop-yoga-520-14-back-1.png', 'cái', 0, '2021-10-13 02:20:00', '2021-10-19 03:20:00'),
(23, 'Alienware m17 R4', 5, 'Intel® Core™ i7-10870H (8-Core 16 Threads 16MB Cache up to 5.0GHz)\r\nRAM: 32GB DDR4 2933MHz\r\nỔ cứng:	1TB (2x 512GB PCIe M.2 SSD) RAID0 [Boot] + 512GB PCIe M.2 SSD [Storage]', 28000000, 0, 'untitled-1_055d4064c0a7494dbc2bb93c049258d2_master.jpg', 'cái', 0, '2021-06-13 02:20:00', '2021-06-19 03:20:00'),
(24, 'HP Omen 15 2019', 7, '- Chip 12 luồng với xung cực cao, cho hiệu năng làm đồ họa, máy ảo và render xé gió\r\n- Card rời GTX 1660Ti thế hệ mới nhất siêu tiết kiệm điện trong khi vẫn duy trì được hiệu năng cao , chạm ngưỡng GXT 1070 thế hệ cũ. Dễ dàng max setting mọi tựa game trên thị trường\r\n- SSD NMVe với tốc độ gấp 6 lần SSD sata thường cho trải nghiệm khởi động windows và load ứng dụng, game cực mượt mà\r\n- Thiết kế cắt vát góc cạnh hầm hố, đậm chất gaming không thể lẫn. Viền màn hình siêu mỏng cùng thiết kế bản lề đẩy lên cao xa khỏi thân máy tạo hiệu ứng thanh thoát. Đuôi tản nhiệt được cách điệu với hình dáng xe đua cực ngầu\r\n- Bàn phím chiclet với độ nảy tốt cùng đèn LED 4 zone tùy chỉnh\r\n', 15000000, 0, 'hp-omen15-2019-5.jpg', 'cái', 0, '2021-10-13 02:20:00', '2021-10-19 03:20:00'),
(25, 'ALIENWARE M15 R5', 5, 'AMD Ryzen R9 5900HX (8-Core, 20MB Total Cache, up to 4.6 GHz Max Boost Clock)\r\nRAM:	32GB DDR4 2933MHz\r\nỔ cứng:	SSD 512GB PCIe M.2', 28000000, 27000000, '5425588_alienware-m15-front-slant_d39b56bf7ff440239a21828937bd1f1f_medium.jpg', 'cái', 0, '2021-10-13 02:20:00', '2021-10-19 03:20:00'),
(26, 'HP Omen 15 2019 Refresh', 7, 'Phiên bản HP OMEN 15 2019 sắp ra mắt này sẽ có hai tuỳ chọn về cấu hình. Với cấu hình cơ bản máy sẽ được trang bị bên trong là CPU Intel Core i7-9750H với 6 nhân và 12 luồng cùng với đó là xung nhịp cơ bản là 2.6Ghz cho một sức mạnh không cần phải bàn cãi', 18000000, 0, 'hp-omen-2019-refresh-2.jpg', 'cái', 0, '2021-10-13 02:20:00', '2021-10-19 03:20:00'),
(27, 'Surface Laptop 3', 5, 'Với các ứng dụng hay được sử dụng như Word, Excel, Powerpoint thì 8GB RAM của chiếc máy tính xách tay Surface Laptop 3 ram 8gb hoàn toàn có thể đảm nhiệm được. Chip xử lý Intel Core i5-1035G7 thế hệ 10 cũng giúp cho những người làm việc văn phòng thoải mái làm việc mượt mà mà không sợ chiếc máy tính của mình bị đơ hay dừng hình khi thao tác.', 20500000, 18500000, 'surface-laptop3-2tmobile2-14f89943-3b68-485f-9e1f-f7a088e09046.jpg', 'cái', 1, '2021-06-26 03:00:16', '2021-06-27 02:24:00'),
(28, 'ConceptD 7 Ezel CC715-71-7940', 5, 'i7-10875H | 32GB | 1TB | VGA RTX 2060 6GB | 15.6\' UHD Touch | Win 10 Pro', 28000000, 25000000, 'acer-conceptd-7-ezel-cc715-71-7940-i7-10875h_e61e54b4a8f74a35a49d00a1a50a7686_grande.png', 'cái', 0, '2021-06-26 03:00:16', '2021-06-30 03:20:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `link` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `link`, `image`) VALUES
(1, '', 'banner1.jpg'),
(2, '', 'banner2.jpg'),
(3, '', 'banner3.jpg'),
(4, '', 'banner4.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_products`
--

CREATE TABLE `type_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `type_products`
--

INSERT INTO `type_products` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'ASUS', 'Asus – Thương hiệu laptop đến từ Đài Loan', 'asus.png', NULL, NULL),
(2, 'DELL', 'Laptop dell là một trong những thương hiệu nổi tiếng từ lâu, với những dòng laptop mẫu mã phong cách. Khi người ta nhắc đến laptop dell thì ai ai trong đầu cũng đã nghĩ tới sự chắc chắn bền bỉ của nó, nó giống như một con sâu luôn đi theo trong đầu mỗi người chúng ta.', 'dell.png', '2021-06-12 02:16:15', '2021-06-13 01:38:35'),
(3, 'MSI', 'MSI là một tập đoàn công nghệ thông tin đa quốc gia có trụ sở chính ở Tân Bắc, Đài Loan, với logo là một con rồng màu đỏ', 'msi.png', '2021-06-18 00:33:33', '2021-06-15 07:25:27'),
(4, 'ACER', 'Laptop Acer thuộc thương hiệu Acer có xuất xứ từ Đài Loan được thành lập từ năm 1976. Đây là thương hiệu chuyên sản xuất các dòng sản phẩm như máy tính để bàn, laptop, thiết bị ngoại vi, Máy chiếu, điện thoại… Thương hiệu này được đánh giá là một trong những nhà sản xuất lớn trên thế giớ', 'acer.png', '2021-06-26 03:29:19', '2021-06-26 02:22:22'),
(5, 'Laptop gamming', 'Laptop gaming (laptop chuyên game) là loại máy tính xách tay được thiết kế nâng cấp chuyên biệt phục vụ cho việc chơi game nặng, các trò chơi điện tử trên máy tính cần có xử lý mạnh về đồ họa.', 'gamming.jpg', '2021-06-28 04:00:00', '2021-06-27 04:00:23'),
(6, 'LENOVO', 'Lenovo Group Ltd. là tập đoàn đa quốc gia về công nghệ máy tính có trụ sở chính ở Bắc Kinh, Trung Quốc và Morrisville, Bắc Carolina, Mỹ', 'lenovo.jpg', '2021-06-25 17:19:00', NULL),
(7, 'HP', 'HP là tên viết tắt quen thuộc của Hewlett-Packard, tập đoàn đứng top trong các tập đoàn công nghệ lớn nhất thông tin thế giới tính theo doanh thu hàng đầu.', 'hp.png', '2021-06-25 17:19:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `phone`, `address`, `remember_token`, `created_at`, `updated_at`) VALUES
(9, 'Lê Văn Nguyên', 'Nguyenlehoang011@gmail.com', '$2y$10$YlMBwei6fSZkARytY05bR.UdWLoOXSVddJj8V15dCB1ryLCY79.2u', '123', '18', NULL, '2021-07-21 11:43:05', '2021-07-21 11:43:05'),
(10, 'hihi', 'hihi@gmail.com', '$2y$10$2yAjm8r8XRCf1gGoPrbwNe.vHQCd1uD2pbFA4dzh0uSIr.zx90oMm', '111', '123', NULL, '2021-07-21 12:07:54', '2021-07-21 12:07:54'),
(11, '123', 'ee@gmail.com', '$2y$10$jXja7a8wx8AAt.Dmc8bva.YTRX4pURyWV9gchRU3IZwwnLASjQ7y.', '123', '123', NULL, '2021-07-21 12:08:43', '2021-07-21 12:08:43');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bills_ibfk_1` (`id_customer`);

--
-- Chỉ mục cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bill_detail_ibfk_2` (`id_product`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_id_type_foreign` (`id_type`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `type_products`
--
ALTER TABLE `type_products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `type_products`
--
ALTER TABLE `type_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_id_type_foreign` FOREIGN KEY (`id_type`) REFERENCES `type_products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
