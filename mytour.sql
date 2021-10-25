-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 25, 2021 lúc 12:46 PM
-- Phiên bản máy phục vụ: 10.1.40-MariaDB
-- Phiên bản PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
  `city_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `citys`
--

INSERT INTO `citys` (`city_id`, `city_name`, `description`, `image`) VALUES
(1, 'Hà Nội', 'Hà Nội là thủ đô ngàn năm văn hiến, còn lưu dấu nhiều di tích như Hồ Gươm, Cầu Thê Húc, Chùa Quán Sứ, Hồ Tây, 36 phố phường. Hà Nội có bốn mùa, luôn mang đến nhiều hoài niệm khó phai, mỗi mùa một vẻ, xuân lễ hội, hạ tươi thắm, thu quyến rũ và đông ấn tượng. Món ngon có Phở, Chả cá Lã Vọng, bánh tôm Hồ Tây.\r\n\r\nĐăng ký tour Hà Nội cùng Vietravel, Quý khách có thể đến khám phá các điểm đến nổi bật sau: Hồ Hoàn Kiếm, Đền Ngọc Sơn, Chợ Đồng Xuân, Văn Miếu, Chùa Trấn Quốc, Lăng Hồ Chủ Tịch, Bảo tàng Hồ Chí Minh, Nhà Sàn Bác Hồ, Chùa Một Cột, Hoàng Thành Thăng Long, Vườn Quốc Gia Ba Vì, Làng Cổ Đường Lâm, Chùa Thầy, Chùa Hương.', 'https://hanoimoi.com.vn/Uploads/images/tuandiep/2020/08/20/ho-hoan-kiem.jpg'),
(2, 'Đà Nẵng', 'Đà Nẵng nằm giữa ba di sản thế giới: cố đô Huế, phố cổ Hội An và thánh địa Mỹ Sơn. Đà Nẵng còn có nhiều danh thắng tuyệt đẹp say lòng du khách như Ngũ Hành Sơn, Bà Nà, bán đảo Sơn Trà, đèo Hải Vân, sông Hàn thơ mộng và cầu quay Sông Hàn – niềm tự hào của thành phố, và biển Mỹ Khê đẹp nhất hành tinh.\r\n\r\nĐăng ký tour Đà Nẵng cùng Vietravel, Quý khách có thể đến khám phá các điểm đến nổi bật sau: Bà Nà Hills, Ngũ Hành Sơn, Bán đảo Sơn Trà , Công viên Châu Á - Asian Park, Biển Mỹ Khê.', 'http://baochinhphu.vn/Uploaded/tranthithom/2021_03_16/da-nang.jpg'),
(3, 'Đà Lạt', 'Đà Lạt mộng mơ nơi mimosa và ngàn hoa khoe sắc, từ đồi Robin ngắm Hồ Tuyền Lâm, núi Voi, viếng Thiền Viện Trúc Lâm, thăm Dinh Bảo Đại, tản bộ dưới những tán thông, ngắm biệt thự cổ, nhấm nháp ly café ấm áp trong thời tiết se lạnh. Những chuyến xe ngựa thổ mộ chạy quanh Hồ Xuân Hương cũng là nét duyên của Đà Lạt mờ sương.\r\n\r\nĐăng ký tour Đà Lạt cùng Vietravel, Quý khách có thể đến khám phá các điểm đến nổi bật sau: Hồ Xuân Hương, Langbiang, Thác Đambri, Kim Ngân Hills, Đồi chè Cầu Đất, Trang trại Rau và Hoa Vạn Thành, Dinh I, Đường Hầm Đất Sét, Phân Viện Sinh Học, Mê Linh Coffee, Quê Garden, Chùa Linh Phước, Ga xe lửa Đà Lạt.', 'https://2trip.vn/wp-content/uploads/2020/08/da-lat-00.jpg'),
(4, 'Phú Quốc', 'Phú Quốc là điểm nghỉ dưỡng, tham quan, và khám phá sinh thái tuyệt vời. Mũi Ông Đội, Đá Chào là thế giới san hô và cá biển sặc sỡ. Bãi Sao cát trắng mịn, dáng cong, nước xanh ngọc bích. Đặc sản danh tiếng cả nước là tiêu sọ, nước mắm, rượu sim, ngọc trai. Phú Quốc thực sự là một viên ngọc quý trên bản đồ Việt Nam.  Đăng ký tour Phú Quốc cùng Vietravel, Quý khách có thể đến khám phá các điểm đến nổi bật sau: Dinh Cậu & Dinh Bà Thủy Long Thánh Mẫu , Bãi Sao, Thiền Viện Trúc Lâm Hộ Quốc, Vinpearl Wonder Phú Quốc, Grand World Phú Quốc, INK 360, Sunset Sanato Beach Club, Nghề làm nước mắm, Vin Safari, Ngắm hoàng hôn, Cáp treo Hòn Thơm.', 'https://vnn-imgs-a1.vgcloud.vn/baochinhphu.vn/Uploaded/tranthithom/2021_09_10/hinh-anh-ban-do-du-lich-phu-quoc-1.jpg'),
(5, 'Hạ Long', 'Hạ Long là thành phố tỉnh lỵ của tỉnh Quảng Ninh, được đặt theo tên của vịnh Hạ Long - vịnh biển nằm ở phía nam thành phố và là một di sản thiên nhiên nổi tiếng của Việt Nam.\r\n\r\nĐăng ký tour Hạ Long cùng Vietravel, Quý khách có thể đến khám phá các điểm đến nổi bật sau: Vịnh Hạ Long, Đảo Tuần Châu.', 'https://owa.bestprice.vn/images/tours/uploads/ha-long-tuan-chau-2-ngay-1-dem-5e5642a3b1b03.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
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
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hotels`
--

CREATE TABLE `hotels` (
  `hotel_id` int(11) NOT NULL,
  `hotel_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` float NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hotels`
--

INSERT INTO `hotels` (`hotel_id`, `hotel_name`, `rating`, `address`) VALUES
(1, 'Hà Nội', 5, 'Trung tâm Hà Nội'),
(2, 'Đà Nẵng', 4, 'Trung tâm thành phố');

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
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `booking_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ranks`
--

CREATE TABLE `ranks` (
  `rank_id` int(10) NOT NULL,
  `rank_name` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ranks`
--

INSERT INTO `ranks` (`rank_id`, `rank_name`, `description`) VALUES
(5, 'Tiêu chuẩn', ''),
(6, 'Giá tốt', ''),
(7, 'Ưu đãi đặc biệt', 'Tặng một cốc cafe và một cái ông hút'),
(8, 'Tiết kiệm', ''),
(9, 'Cao cấp', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `restaurants`
--

CREATE TABLE `restaurants` (
  `res_id` int(11) NOT NULL,
  `res_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` float NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `restaurants`
--

INSERT INTO `restaurants` (`res_id`, `res_name`, `rating`, `address`) VALUES
(1, 'The Rhythms', 5, 'Hoàn Kiếm, Hà Nội');

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

--
-- Đang đổ dữ liệu cho bảng `tourguides`
--

INSERT INTO `tourguides` (`tour_guide_id`, `name`, `gender`, `phone_number`, `email`, `avatar`) VALUES
(1, 'Dummy', 1, '0123456789', 'dummy@gmail.com', '');

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
  `res_id` int(11) DEFAULT NULL,
  `hotel_id` int(11) DEFAULT NULL,
  `price_per_person` int(11) NOT NULL,
  `image_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int(11) NOT NULL,
  `tour_guide_id` int(11) DEFAULT NULL,
  `tour_type_id` int(10) NOT NULL,
  `tour_rank_id` int(10) NOT NULL,
  `travel_schedule` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tourtypes`
--

CREATE TABLE `tourtypes` (
  `tour_type_id` int(10) NOT NULL,
  `type_name` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tourtypes`
--

INSERT INTO `tourtypes` (`tour_type_id`, `type_name`, `image`) VALUES
(1, 'Hành trình xanh', 'https://media.travel.com.vn/destination/tf_211021_can-gio-1127.jpg'),
(2, 'Xe tự lái caravan', 'https://media.travel.com.vn/destination/tf_211005_caravan-xuyen-rung-xuong-bien1246.jpg'),
(3, 'Biển đảo', 'https://media.travel.com.vn/destination/tf_211005_163337021518440-1247.jpg'),
(4, 'Thanh lọc cơ thể', 'https://media.travel.com.vn/destination/tf_211005_tfd_210325045801_1206.jpg'),
(5, 'Di sản nước Việt', 'https://media.travel.com.vn/destination/tf_211005_anh-profile-top-diem-den122220.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `citys`
--
ALTER TABLE `citys`
  ADD PRIMARY KEY (`city_id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`) USING BTREE;

--
-- Chỉ mục cho bảng `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`hotel_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD UNIQUE KEY `customer_id` (`customer_id`),
  ADD UNIQUE KEY `tour_id` (`tour_id`);

--
-- Chỉ mục cho bảng `ranks`
--
ALTER TABLE `ranks`
  ADD PRIMARY KEY (`rank_id`);

--
-- Chỉ mục cho bảng `restaurants`
--
ALTER TABLE `restaurants`
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
  ADD UNIQUE KEY `start_dest` (`city_id`),
  ADD UNIQUE KEY `hotel_id` (`hotel_id`),
  ADD UNIQUE KEY `id_res` (`res_id`),
  ADD UNIQUE KEY `tour_guide_id` (`tour_guide_id`),
  ADD KEY `tour_type_id` (`tour_type_id`),
  ADD KEY `tour_rank_id` (`tour_rank_id`);

--
-- Chỉ mục cho bảng `tourtypes`
--
ALTER TABLE `tourtypes`
  ADD PRIMARY KEY (`tour_type_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `citys`
--
ALTER TABLE `citys`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hotels`
--
ALTER TABLE `hotels`
  MODIFY `hotel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ranks`
--
ALTER TABLE `ranks`
  MODIFY `rank_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `res_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tourguides`
--
ALTER TABLE `tourguides`
  MODIFY `tour_guide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tours`
--
ALTER TABLE `tours`
  MODIFY `tour_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tourtypes`
--
ALTER TABLE `tourtypes`
  MODIFY `tour_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`tour_id`);

--
-- Các ràng buộc cho bảng `tours`
--
ALTER TABLE `tours`
  ADD CONSTRAINT `tours_ibfk_2` FOREIGN KEY (`tour_rank_id`) REFERENCES `ranks` (`rank_id`),
  ADD CONSTRAINT `tours_ibfk_3` FOREIGN KEY (`res_id`) REFERENCES `restaurants` (`res_id`),
  ADD CONSTRAINT `tours_ibfk_4` FOREIGN KEY (`tour_type_id`) REFERENCES `tourtypes` (`tour_type_id`),
  ADD CONSTRAINT `tours_ibfk_5` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`hotel_id`),
  ADD CONSTRAINT `tours_ibfk_6` FOREIGN KEY (`tour_guide_id`) REFERENCES `tourguides` (`tour_guide_id`),
  ADD CONSTRAINT `tours_ibfk_7` FOREIGN KEY (`city_id`) REFERENCES `citys` (`city_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
