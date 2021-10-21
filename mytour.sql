-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 21, 2021 lúc 11:10 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mytour`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `citys`
--

CREATE TABLE `citys` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `user_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` datetime NOT NULL,
  `phone_number` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` int(1) NOT NULL,
  `status` int(1) NOT NULL,
  `code` int(10) NOT NULL,
  `is_admin` int(10) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hotel`
--

CREATE TABLE `hotel` (
  `hotel_id` int(11) NOT NULL,
  `hotel_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` float NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `order_id` int(50) NOT NULL,
  `customer_id` int(50) NOT NULL,
  `tour_id` int(50) NOT NULL,
  `start_time date` date NOT NULL,
  `people` int(10) NOT NULL,
  `validation` int(1) NOT NULL,
  `payment` int(1) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `restaurant`
--

CREATE TABLE `restaurant` (
  `res_id` int(11) NOT NULL,
  `res_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` float NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tourguides`
--

CREATE TABLE `tourguides` (
  `tour_guide_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` int(5) NOT NULL,
  `phone_number` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tours`
--

CREATE TABLE `tours` (
  `tour_id` int(11) NOT NULL,
  `tour_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `places` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_count` int(11) NOT NULL,
  `id_res` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `price_per_person` int(11) NOT NULL,
  `image_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_dest` int(11) NOT NULL,
  `tour_guide_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `citys`
--
ALTER TABLE `citys`
  ADD PRIMARY KEY (`city_id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`) USING BTREE;

--
-- Chỉ mục cho bảng `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`hotel_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD UNIQUE KEY `customer_id` (`customer_id`),
  ADD UNIQUE KEY `tour_id` (`tour_id`);

--
-- Chỉ mục cho bảng `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`res_id`);

--
-- Chỉ mục cho bảng `tourguides`
--
ALTER TABLE `tourguides`
  ADD PRIMARY KEY (`tour_guide_id`);

--
-- Chỉ mục cho bảng `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`tour_id`),
  ADD UNIQUE KEY `hotel_id` (`hotel_id`),
  ADD UNIQUE KEY `id_res` (`id_res`),
  ADD UNIQUE KEY `tour_guide_id` (`tour_guide_id`),
  ADD UNIQUE KEY `start_dest` (`start_dest`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `citys`
--
ALTER TABLE `citys`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hotel`
--
ALTER TABLE `hotel`
  MODIFY `hotel_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `res_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tourguides`
--
ALTER TABLE `tourguides`
  MODIFY `tour_guide_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tours`
--
ALTER TABLE `tours`
  MODIFY `tour_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `citys`
--
ALTER TABLE `citys`
  ADD CONSTRAINT `citys_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `tours` (`start_dest`);

--
-- Các ràng buộc cho bảng `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `orders` (`customer_id`);

--
-- Các ràng buộc cho bảng `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `hotel_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `tours` (`hotel_id`);

--
-- Các ràng buộc cho bảng `restaurant`
--
ALTER TABLE `restaurant`
  ADD CONSTRAINT `restaurant_ibfk_1` FOREIGN KEY (`res_id`) REFERENCES `tours` (`id_res`);

--
-- Các ràng buộc cho bảng `tourguides`
--
ALTER TABLE `tourguides`
  ADD CONSTRAINT `tourguides_ibfk_1` FOREIGN KEY (`tour_guide_id`) REFERENCES `tours` (`tour_guide_id`);

--
-- Các ràng buộc cho bảng `tours`
--
ALTER TABLE `tours`
  ADD CONSTRAINT `tours_ibfk_1` FOREIGN KEY (`tour_id`) REFERENCES `orders` (`tour_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
