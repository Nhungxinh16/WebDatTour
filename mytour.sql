-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 26, 2021 lúc 07:10 AM
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
-- Cấu trúc bảng cho bảng `cities`
--

CREATE TABLE `cities` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cities`
--

INSERT INTO `cities` (`city_id`, `city_name`, `description`, `image`) VALUES
(1, 'Hà Nội', 'Hà Nội là thủ đô ngàn năm văn hiến, còn lưu dấu nhiều di tích như Hồ Gươm, Cầu Thê Húc, Chùa Quán Sứ, Hồ Tây, 36 phố phường. Hà Nội có bốn mùa, luôn mang đến nhiều hoài niệm khó phai, mỗi mùa một vẻ, xuân lễ hội, hạ tươi thắm, thu quyến rũ và đông ấn tượng. Món ngon có Phở, Chả cá Lã Vọng, bánh tôm Hồ Tây.\r\n\r\nĐăng ký tour Hà Nội cùng Vietravel, Quý khách có thể đến khám phá các điểm đến nổi bật sau: Hồ Hoàn Kiếm, Đền Ngọc Sơn, Chợ Đồng Xuân, Văn Miếu, Chùa Trấn Quốc, Lăng Hồ Chủ Tịch, Bảo tàng Hồ Chí Minh, Nhà Sàn Bác Hồ, Chùa Một Cột, Hoàng Thành Thăng Long, Vườn Quốc Gia Ba Vì, Làng Cổ Đường Lâm, Chùa Thầy, Chùa Hương.', 'https://hanoimoi.com.vn/Uploads/images/tuandiep/2020/08/20/ho-hoan-kiem.jpg'),
(2, 'Đà Nẵng', 'Đà Nẵng nằm giữa ba di sản thế giới: cố đô Huế, phố cổ Hội An và thánh địa Mỹ Sơn. Đà Nẵng còn có nhiều danh thắng tuyệt đẹp say lòng du khách như Ngũ Hành Sơn, Bà Nà, bán đảo Sơn Trà, đèo Hải Vân, sông Hàn thơ mộng và cầu quay Sông Hàn – niềm tự hào của thành phố, và biển Mỹ Khê đẹp nhất hành tinh.\r\n\r\nĐăng ký tour Đà Nẵng cùng Vietravel, Quý khách có thể đến khám phá các điểm đến nổi bật sau: Bà Nà Hills, Ngũ Hành Sơn, Bán đảo Sơn Trà , Công viên Châu Á - Asian Park, Biển Mỹ Khê.', 'http://baochinhphu.vn/Uploaded/tranthithom/2021_03_16/da-nang.jpg'),
(3, 'Đà Lạt', 'Đà Lạt mộng mơ nơi mimosa và ngàn hoa khoe sắc, từ đồi Robin ngắm Hồ Tuyền Lâm, núi Voi, viếng Thiền Viện Trúc Lâm, thăm Dinh Bảo Đại, tản bộ dưới những tán thông, ngắm biệt thự cổ, nhấm nháp ly café ấm áp trong thời tiết se lạnh. Những chuyến xe ngựa thổ mộ chạy quanh Hồ Xuân Hương cũng là nét duyên của Đà Lạt mờ sương.\r\n\r\nĐăng ký tour Đà Lạt cùng Vietravel, Quý khách có thể đến khám phá các điểm đến nổi bật sau: Hồ Xuân Hương, Langbiang, Thác Đambri, Kim Ngân Hills, Đồi chè Cầu Đất, Trang trại Rau và Hoa Vạn Thành, Dinh I, Đường Hầm Đất Sét, Phân Viện Sinh Học, Mê Linh Coffee, Quê Garden, Chùa Linh Phước, Ga xe lửa Đà Lạt.', 'https://2trip.vn/wp-content/uploads/2020/08/da-lat-00.jpg'),
(4, 'Phú Quốc', 'Phú Quốc là điểm nghỉ dưỡng, tham quan, và khám phá sinh thái tuyệt vời. Mũi Ông Đội, Đá Chào là thế giới san hô và cá biển sặc sỡ. Bãi Sao cát trắng mịn, dáng cong, nước xanh ngọc bích. Đặc sản danh tiếng cả nước là tiêu sọ, nước mắm, rượu sim, ngọc trai. Phú Quốc thực sự là một viên ngọc quý trên bản đồ Việt Nam.  Đăng ký tour Phú Quốc cùng Vietravel, Quý khách có thể đến khám phá các điểm đến nổi bật sau: Dinh Cậu & Dinh Bà Thủy Long Thánh Mẫu , Bãi Sao, Thiền Viện Trúc Lâm Hộ Quốc, Vinpearl Wonder Phú Quốc, Grand World Phú Quốc, INK 360, Sunset Sanato Beach Club, Nghề làm nước mắm, Vin Safari, Ngắm hoàng hôn, Cáp treo Hòn Thơm.', 'https://vnn-imgs-a1.vgcloud.vn/baochinhphu.vn/Uploaded/tranthithom/2021_09_10/hinh-anh-ban-do-du-lich-phu-quoc-1.jpg'),
(5, 'Hạ Long', 'Hạ Long là thành phố tỉnh lỵ của tỉnh Quảng Ninh, được đặt theo tên của vịnh Hạ Long - vịnh biển nằm ở phía nam thành phố và là một di sản thiên nhiên nổi tiếng của Việt Nam.\r\n\r\nĐăng ký tour Hạ Long cùng Vietravel, Quý khách có thể đến khám phá các điểm đến nổi bật sau: Vịnh Hạ Long, Đảo Tuần Châu.', 'https://owa.bestprice.vn/images/tours/uploads/ha-long-tuan-chau-2-ngay-1-dem-5e5642a3b1b03.jpg'),
(6, 'TP. Hồ Chí Minh', 'Du lịch đến với thành phố Hồ Chí Minh bạn có thể gặp những tòa nhà cao tầng nằm san sát, những khu vui chơi giải trí, trung tâm mua sắm sầm uất, nhưng cũng không thiếu những biệt thự cổ kính, những ngôi chợ truyền thống. Sài Gòn rộng lớn và không thiếu những “đặc sản” du lịch như du ngoạn ven sông Sài Gòn bằng tàu, thăm phố Tây Phạm Ngũ Lão, mua sắm ở chợ Bến Thành hay về với biển Cần Giờ.\r\n\r\nĐăng ký tour TP. Hồ Chí Minh cùng Vietravel, Quý khách có thể đến khám phá các điểm đến nổi bật sau: Củ Chi, KDL Nông Trang Xanh, Cần Giờ, Tàu cao tốc Greenlines-DP, Chiến khu Rừng Sác, KDL sinh thái Vàm Sát, KDL sinh thái Dần Xây, Cầu Nam Hải - Cần Giờ, Bến du thuyền - Kênh Nhiêu Lộc, Thả đèn Hoa đăng trên dòng Kênh Nhiêu Lộc, Du thuyền Thị Nghè,', 'https://cdnn1.img.vn.sputniknews.com/img/301/85/3018543_0:36:1920:1243_1920x0_80_0_0_d9c04fd2031f7771ec767f90b8940ed7.jpg'),
(7, 'Quy Nhơn', NULL, 'http://wiki-travel.com.vn/Uploads/picture/Viet_Dung-182604102645-Quy%20Nh%C6%A1n.jpg'),
(8, 'Huế', 'Huế thương sơn thủy hữu tình, nơi tọa lạc Đại Nội, Ngọ Môn, Điện Thái Hòa, Tử Cấm Thành, Lăng Tự Đức, Thế Miếu, Hiển Lâm Các, Cửu Đỉnh xưa của 13 vị vua triều Nguyễn. Chùa Thiên Mụ lưu giữ cổ vật lịch sử, nghệ thuật quý giá. Chiều buông, ta ngồi thuyền rồng xuôi dòng sông Hương thưởng thức ca hò Huế, thả hoa đăng cầu phúc lộc.\r\n\r\nĐăng ký tour Huế cùng Vietravel, Quý khách có thể đến khám phá các điểm đến nổi bật sau: Đại Nội, Chùa Thiên Mụ, Nhà vườn An Hiên, Lăng Tự Đức, Lăng Khải Định, Đầm Lập An,', 'https://static.mservice.io/blogscontents/momo-upload-api-210615104739-637593508598840062.jpg'),
(9, 'Phú Thọ', 'Phú Thọ thuộc vùng trung du miền núi phía Bắc, có bản sắc văn hoá từ thời Hùng Vương với 200 di tích lịch sử, danh lam thắng cảnh, di tích cách mạng kháng chiến. Đến Phú Thọ, bạn không thể bỏ lỡ các địa danh Ao Giời Suối Tiên, hang Lạng, Đền Hùng, đền Mẫu Âu Cơ, cùng với hội Mở Cửa Rừng và hội Đánh Cá độc đáo.\r\n\r\nĐăng ký tour Phú Thọ cùng Vietravel, Quý khách có thể đến khám phá các điểm đến nổi bật sau: Đền Hùng, Giếng Ngọc, Lăng vua Hùng,', 'https://cungphuot.info/wp-content/uploads/2018/11/kinh-nghiem-du-lich-phu-tho.jpg'),
(10, 'Bắc Ninh', 'Bắc Ninh là một trong những cái nôi của người Việt, có lịch sử hàng ngàn năm với di tích đô thị cổ Luy Lâu và nền thương mại phồn thịnh. Tới Bắc Ninh ta ngỡ ngàng với tinh hoa văn hoá trù phú, là quê hương của đền chùa miếu mạo, huyền thoại rực rỡ của triều đại Lý Trần, lễ hội Quan Họ linh đình mỗi mùa xuân.\r\n\r\nĐăng ký tour Bắc Ninh cùng Vietravel, Quý khách có thể đến khám phá các điểm đến nổi bật sau: Chùa Dâu, Đền Đô, Đền Bà Chúa Kho, Chùa Bút Tháp,', 'https://cdn.luatsu247.net/wp-content/uploads/2021/06/17161653/noi-nhan-bhxh-1-lan-bac-ninh.jpg'),
(11, 'Bà Rịa - Vũng Tàu', 'Du lich Vũng Tàu: Những cung đường biển đẹp như mơ, ngọn Hải đăng cổ nổi tiếng, tượng Chúa giang tay bình yên, những góc phố thơ mộng, cùng những món ăn hấp dẫn là những gì du khách không thể bỏ qua khi đến với Vũng Tàu. Vũng Tàu trở thành đô thị loại I năm 2013, là một thành phố đáng tới, đáng sống và hạnh phúc.\r\n\r\nĐăng ký tour Bà Rịa - Vũng Tàu cùng Vietravel, Quý khách có thể đến khám phá các điểm đến nổi bật sau: Suối nước nóng Bình Châu, Bình Châu - Hồ Cốc, Vạn Phật Quang Đại Tòng Lâm Tự, Công viên rừng Minera Forest,', 'https://media.truyenhinhdulich.vn/upload/news/126_ba_ria_vung_tau.jpg');

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
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`customer_id`, `user_name`, `password`, `email`, `birthday`, `phone_number`, `name`, `gender`, `status`, `code`, `is_admin`, `date_created`) VALUES
(1, 'test', 'test', 'test@test.test', '1111-11-11 00:00:00', '0123456789', 'test test test', 1, 1, 1, 0, '2021-10-26 07:40:48');

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
(2, 'Đà Nẵng', 4, 'Trung tâm thành phố'),
(3, 'Elson Hotel', 5, 'Nha Trang'),
(4, 'The Atisanal', 4, 'Quận 9 '),
(5, 'Gauchor Steak Hotel', 5, 'Lào Cai'),
(6, 'Niceteen Hotel', 4, 'Hà Giang'),
(7, 'The Sorae Hotel', 4, 'Hải phòng'),
(8, 'Shri Lounger', 5, 'Hải Dương'),
(9, 'Signature', 3, 'Thanh Hóa'),
(10, 'Parkview Hotel', 4, 'Thủ Đức, TP HCM');

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
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `booking_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `tour_id`, `start_time date`, `people`, `validation`, `payment`, `date_created`, `booking_id`) VALUES
(5, 1, 15, '2021-10-26', 4, 1, 1, '2021-10-26 07:50:22', '1'),
(6, 1, 1, '2021-10-26', 2, 1, 1, '2021-10-26 07:50:22', '1'),
(7, 1, 15, '2021-10-26', 6, 1, 1, '2021-10-26 07:51:02', '1'),
(8, 1, 16, '2021-10-26', 3, 1, 1, '2021-10-26 07:51:02', '1'),
(9, 1, 22, '2021-10-26', 3, 1, 1, '2021-10-26 07:51:38', '1'),
(10, 1, 20, '2021-10-26', 3, 1, 1, '2021-10-26 07:51:38', '1'),
(11, 1, 19, '2021-10-26', 3, 1, 1, '2021-10-26 07:53:15', '1'),
(12, 1, 3, '2021-10-26', 4, 1, 1, '2021-10-26 07:53:15', '1');

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
(1, 'The Rhythms', 5, 'Hoàn Kiếm, Hà Nội'),
(2, 'The Monvenpick', 5, 'Ba Đình, Hà Nội'),
(3, 'Lotter', 4, 'Quận 7, TP HCM'),
(4, 'Sofiter Legend', 5, 'Quận 7, TP HCM'),
(5, 'The Metropole', 3, 'Sầm Sơn, Thanh Hóa'),
(6, 'Melia Lab', 4, 'Thủ Đức, TP HCM'),
(7, 'Daewoon', 5, 'Hải Phòng'),
(8, 'Gland Plaza', 5, 'Hải Dương'),
(9, 'Pan Pacific ', 4, 'Kinh Môn, Hải Dương'),
(10, 'Apricol ', 4, 'Quảng Bình'),
(11, 'Pullman ', 3, 'Lũng cú, Hà Giang'),
(12, 'The Reverie Sài Gòn', 4, 'Quận 1, TP HCM'),
(13, 'Sherator ', 5, 'Đà Nẵng'),
(14, 'New World ', 5, 'Sapa, Lào Cai'),
(15, 'The Tripavisor', 4, 'Nha Trang, Khánh Hòa');

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
  `description` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `travel_schedule` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max` int(11) NOT NULL DEFAULT 6
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tours`
--

INSERT INTO `tours` (`tour_id`, `tour_name`, `description`, `places`, `day_count`, `res_id`, `hotel_id`, `price_per_person`, `image_1`, `image_2`, `image_3`, `image_4`, `city_id`, `tour_guide_id`, `tour_type_id`, `tour_rank_id`, `travel_schedule`, `max`) VALUES
(1, 'Hành trình xanh Cần Giờ - Vàm Sát', 'Một ngày hòa minh giữa thiên nhiên xanh mát ở khu dự trữ sinh quyển thế giới, khám phá “ lá phổi xanh” của thành phố bằng các hoạt động tham quan tại Chiến Khu Rừng Sác, thưởng ngoạn cảnh quan sông nước hữu tình trên những chiếc ca nô khi len lỏi giữa khu rừng ngập mặn của KDL Dần Xây. Đặc biệt trong hành trình, quý khách còn được thưởng thức những món ăn đặc trưng chỉ có tại Vàm Sát – Cần Giờ như : vịt nước mặn, rau lìm kìm, cua hấp, tôm nướng, cá đối chiên xù cuốn bánh tráng, canh cá bui, chè dừa nước…Quay lại ký ức của Chiến khu xưa, nghe kể về dấu ấn lịch sử oai hùng một thời của lực lượng bộ đội đặc công rừng Sác.Trải nghiệm đi xuồng máy len lỏi vào rừng nguyên sinh ngập mặn. Hòa mình vào bức tranh thiên nhiên xanh mát ở Khu du lịch sinh thái Vàm Sát. Trải nghiệm ẩm thực đặc sắc, hấp dẫn và đặc trưng của Cần Giờ', 'Cần Giờ, Vàm Sát, Khu du lịch Dần Xây', 1, NULL, NULL, 1690000, 'https://media.travel.com.vn/tour/tfd_211013124943_788254.jpg', 'https://media.travel.com.vn/destination/dc_211005_can%20gio%20-%20van%20sat%20no%20logo.jpg', 'https://media.travel.com.vn/destination/dc_211013_CAN%20GIO_VTV%20KHAO%20SAT%20(58).jpg', 'https://media.travel.com.vn/destination/dc_211013_IMG_5381.JPG', 6, 1, 1, 6, 'Ngày 1 - TRUNG TÂM TP.HCM – CẦN GIỜ – CĂN CỨ CÁCH MẠNG RỪNG SÁC – KHU DU LỊCH SINH THÁI VÀM SÁT Số bữa ăn: 2 bữa (Ăn sáng trên xe, trưa)\r\nXe và Hướng dẫn viên đón Quý khách tại văn phòng của Vietravel (190 Pasteur, Phường Võ Thị Sáu, Quận 3)\r\n\r\nĐoàn khởi hành đi Cần Giờ - được mệnh danh là “lá phổi xanh” của thành phố mang tên Bác và dùng bữa sáng trên xe.\r\n\r\nĐến KDL Lâm Viên Cần Giờ đoàn lên ca nô thăm Chiến Khu Rừng Sác - nơi ghi lại dấu ấn lịch sử oai hùng một thời của các đặc công Rừng Sác trong thời kháng chiến chống Mỹ cứu nước từ năm 1966 đến 30-04-1975.\r\n\r\nCano len lỏi vào rừng nguyên sinh ngập mặn, đoàn đến vùng lõi của trung tâm Chiến Khu Rừng Sác: Du khách như được sống lại trong khoảnh khắc oanh liệt của các chiến sĩ đoàn 10 - Đặc Công Rừng Sác năm xưa qua các mô hình vô cùng sống động như hình ảnh chiến sĩ chiến đấu với cá sấu, bữa cơm đạm bạc hằng ngày và việc tự may tư trang cho mình của các chiến sĩ. Bên cạnh đó, các nhà thông tin, xưởng quân giới, nhà quân y, nhà quân nhu… cũng được tái hiện khắp nơi trong Chiến Khu Rừng Sác.\r\n\r\nThắp hương tại tượng đài chiến sĩ đặc công Rừng Sác, nghe thuyết minh về một thời lịch sử oai hùng và những đặc trưng của thủy triều ở vùng cửa sông\r\n\r\n10h00: Đoàn lên xe khởi hành đến Khu Du Lịch Sinh Thái Dần Xây, đoàn lên ca nô đến trung tâm Khu Du Lịch Sinh Thái Vàm Sát. Quý khách được dịp thưởng ngoạn cảnh quan sông nước đặc trưng sinh thái tại Cần Giờ; cũng như tìm hiểu các hoạt động đánh bắt thủy sản của ngư dân Cần Giờ: thả lưới, đóng đáy, nuôi hàu,… (nếu có). Đến nơi, xe điện đưa đoàn tham quan:\r\n\r\nKhu Bảo tồn Chim: đã được UBND TP.Hồ Chí Minh công nhận vào năm 2004 . Với số lượng trên 20.000 con bao gồm 26 loài khác nhau, trong đó có một số loài nằm trong sách đỏ như: Giang Sen, Bồ Nông, Già Đẩy… Quý khách có thể nhìn thấy sự náo nhiệt của khu du lịch Vàm Sát với hàng ngàn cánh chim nước rợp cả vùng trời (tùy theo mùa).\r\n\r\nKhu bảo tồn cá sấu Hoa Cà: tìm hiểu về quy trình ấp trứng, nuôi dưỡng và bảo tồn cá sấu, đặc biệt là tham gia trò chơi cảm giác mạnh “Du thuyền câu Cá Sấu”.\r\n\r\nNgắm nhìn đàn khỉ đuôi dài sống hoang dã tự nhiên, rất tinh nghịch.\r\n\r\nChinh phục Tháp Tang Bồng cao 26m: chiêm ngưỡng vẻ đẹp toàn cảnh rừng ngập mặn từ trên cao với cảnh sắc thiên nhiên đẹp như tranh vẽ. \r\n\r\nKhám phá con đường bê tông xuyên rừng rêu phong uốn lượn, cây cối che phủ dọc hai bên đường rợp bóng mát, phía dưới là hệ sinh thái ngập nước với rễ cây mọc tua tủa kích thích sự tò mò của Quý khách hay thử thách với chiếc cầu treo, tham quan đàn Nai rừng hiền hoà thân thiện,…\r\n\r\nQuý khách dùng cơm trưa trong Khu du lịch Vàm Sát với các món ăn mang hương vị dân dã của vùng Cần Giờ. \r\n\r\nĐoàn di chuyển lên ca nô qua Khu bảo tồn đàn Dơi Nghệ: tại đây nhân viên chèo xuồng tay sẽ đưa Quý khách len lỏi vào rừng Đước trong đầm, Quý khách sẽ được ngắm nhìn một trong những giống dơi quý hiếm nhất thế giới đang treo ngược mình trên cành cây và tự do hít thở không khí trong lành, thoáng mát của vùng ngập mặn Cần Giờ.\r\n\r\nĐoàn lên ca nô trở lại KDL Dần Xây. Đoàn len lỏi qua con đường bê tông xuyên rừng và được nghe giới thiệu về quá trình khôi phục và phát triển hệ sinh thái rừng ngập mặn Cần Giờ\r\n\r\nQuý kháchlên xe khởi hành về trung tâm TP. Hồ Chí Minh. Đến điểm đón ban đầu, kết thúc chương trình nhiều trải nghiệm.\r\n\r\nLưu ý: \r\n\r\nLịch trình sẽ được linh động thay đổi tùy thuộc theo con nước.\r\n\r\nĐây là chương trình du lịch trọn gói, Vietravel không có trách nhiệm hoàn trả chi phí chênh lệch cho các khách hàng thuộc diện miễn giảm hoặc đối tượng ưu tiên như trẻ nhỏ, người lớn tuổi, người có công với cách mạng… Chính sách miễn giảm, ưu tiên (nếu có) chỉ dành cho khách lẻ của các điểm tham quan.\r\n\r\nĐảm bảo nguyên tắc 5K, khử khuẩn.\r\n\r\nVận chuyển không quá 50% số ghế, không quá 20 khách/1 xe (bao gồm cả tài xế), tuân thủ ngồi giãn cách trên xe và đeo khẩu trang suốt quá trình di chuyển.\r\n\r\n01 ngày tham quan nhận tối đa 40 khách.\r\n\r\nThẻ xanh covid (khách đã tiêm vaccines ngừa covid đủ liều, thời gian hoàn tất mũi 2 trước 14 ngày và không quá 12 tháng), khách là FO đã khỏi bệnh (có giấy chứng nhận của Sở Y Tế và không quá 12 tháng).\r\n\r\nTrẻ em đi cùng ba mẹ xét nghiệm covid âm tính trước ngày khởi hành 24h.\r\n\r\nQuý khách mang giày thấp, giày thể thao hoặc sandal tránh trơn trợt và thuận tiện việc di chuyển.\r\n\r\nQuý khách giữ kỹ ví, mắt kính, điện thoại cẩn thận khi vào Lâm Viên Cần Giờ (tránh bị khỉ giật)\r\n\r\n ', 6),
(2, 'Tour Caravan - Miền Tây Sông Nước: Châu Đốc - Hà Tiên - Phú Quốc - Cần Thơ', 'Trải nghiệm một trong những cung đường về miền sông nước và thành Phố đảo Phú Quốc. Cùng hòa mình vào thiên nhiên tươi đẹp, đời sống bình dị của những người con miền tây,', 'Châu Đốc - Hà Tiên - Phú Quốc - Cần Thơ', 5, NULL, NULL, 7390000, 'https://media.travel.com.vn/tour/tfd_210402105343_460070.jpg', 'https://media.travel.com.vn/tour/tfd_210402105520_414602.jpg', 'https://media.travel.com.vn/tour/tfd_210118021902_480106.jpg', 'https://media.travel.com.vn/tour/tfd_210118025204_769840.jpg', 6, NULL, 2, 5, 'Ngày 1 - BÌNH DƯƠNG/ ĐỒNG NAI/ TP. HỒ CHÍ MINH - CHÂU ĐỐC (Ăn trưa, tối)\r\nSáng 06h00 - 07h00 Tập kết khách khởi hành từ TP.Hồ Chí Minh/ Đồng Nai/ Bình Dương/ tập trung tại địa điểm do BTC thông báo (sẽ thông báo trước ngày khởi hành 3 ngày - Dự Kiến tại Đền Thờ Liệt Sĩ Ngã Ba Giồng - Huyện Hóc Môn). Đối với khách khởi hành tại TP. Hồ Chí Minh tập trung tại 190 Pasteur sau đó di chuyển đến điểm tập kết chính. \r\nĐoàn dán số thứ tự xe - Điểm danh - Kiểm tra lại xe - Nhận và kiểm tra bộ đàm và làm lễ xuất phát.\r\n \r\n07h30 Đoàn khởi hành đi An Giang (dự kiến tầm 06h00 di chuyển qua 185 km) theo đường N2, tiếp qua quốc lộ 62 hướng Bình Hiệp - đường dọc biên giới hướng Hồng Ngự - Tân Châu - Châu Đốc trên đường đi Quý khách sẽ sử dụng bộ đàm chia sẻ kinh nghiệp của các dòng xe và các câu chuyện vui trên đường.\r\nSau khi ăn trưa, đoàn tiếp tục hành trình đến TP. Châu Đốc tham quan: \r\n- Núi Sam: với diện tích khoảng 280ha, độ cao vừa phải 241m, ngọn núi này được bao phủ bởi cây xanh bóng mát quanh năm, nằm nép mình bên những kênh rạch uốn lượn xung quanh. Núi Sam còn là nơi tụ họp của cả một hệ thống đền, chùa cổ kính cùng hang động kỳ thú, tạo nên một phong cảnh đẹp, hữu tình giữa vùng đồng bằng trù phú.\r\n- Miếu Bà Chúa Xứ núi Sam trong khung cảnh đêm: một sắc thái yên bình hoàn toàn khác biệt, rất thích hợp để Quý khách nhắn gửi những lời nguyện cầu thầm kín đến Bà.\r\n- Lăng ông Thoại Ngọc Hầu: với công đức vời vợi chủ trì công cuộc xây dựng con kênh Vĩnh Tế vĩ đại. \r\n- Phước Điền Tự (chùa Hang): có lối kiến trúc độc đáo đẹp tựa  xứ sở anh đào mộng mơ, cùng tầm nhìn bao quát toàn cảnh núi cao, xa xa là đường biên giới Việt - Campuchia. Ngoài ra, khách thập phương còn được nghe về giai thoại kỳ bí của đôi mãng xà hướng thiện nơi cửa Phật.\r\n19h00 Tập trung đi dùng bữa tối và giao lưu cùng các thành viên trong đoàn. \r\nNghỉ đêm tại Châu Đốc.\r\nNgày 2 - TP. CHÂU ĐỐC - HÀ TIÊN - PHÚ QUỐC (Ăn sáng, trưa, tối)\r\nSau khi dùng điểm tâm tại khách sạn, đoàn tự do mua sắm tại Chợ Châu Đốc. Đoàn khởi hành đi Hà Tiên theo cung đường N1 dọc kênh Vĩnh Tế và đường biên giới Việt Nam - Campuchia. Đoàn tham quan:\r\n- Chợ Tịnh Biên: Chợ Tịnh Biên là khu chợ đầu mối lớn của vùng miền Tây. Nơi đây giáp ranh Campuchia nên hàng hóa của nó khá rẻ và độc đáo. Bạn có thể tìm được nhiều loại hàng chất lượng mà không phải đâu cũng có ở ngay chợ Tịnh Biên. \r\nTiếp tục hành trình đến với Hà Tiên, đoàn lên phà để đi Phú Quốc (dự kiến chuyến phà 14h00 - 16h45), phà cặp Cảng Bãi Vòng, đoàn di chuyển về khách sạn nhận phòng. \r\n19h00 Đoàn dùng cơm tối. Sau đó, Quý khách tự do dạo chợ đêm Phú Quốc - Có thể nói “chợ đêm” là nơi thân thuộc gần gũi nhất với mỗi con người, tại đây Quý khách có thể thưởng thức hầu như tất cả những món ngon của vùng biển đảo này.\r\nNghỉ đêm tại Phú Quốc.\r\nNgày 3 - TP. PHÚ QUỐC - CÂU CÁ NAM ĐẢO (Ăn sáng, trưa, tối)\r\nSau khi dùng điểm tâm tại khách sạn, đoàn khởi hành tham quan:\r\n- Thiền Viện Trúc Lâm Hộ Quốc: ngôi chùa đẹp và lớn nhất đảo ngọc với khung cảnh hoang sơ, yên tĩnh đã tạo nên một bức tranh thiên nhiên đặc sắc đầy vẻ tôn nghiêm và thanh tịnh.\r\nTiếp tục hành trình đến Cảng An Thới lên thuyền du ngoạn Nam Đảo. Đoàn sẽ được cùng nhau thử tài Câu Cá, sẽ thật là thú vị khi tự tay Quý khách câu được những chú Cá Mú hay Tràm,.. tại Hòn Thơm và đây cũng là dịp được trải nghiệm cuộc sống cần mẫn của người dân nơi hải đảo. Tàu đưa quý khách đến Bãi Sao tự do tắm biển với thiên đường rực nắng & cát trắng mịn. Quý khách dùng cơm trưa tại Bãi Sao.\r\ntrên đường lại trung tâm đoàn dừng chân tham quan:\r\n- Trung tâm nuôi cấy ngọc trai: nghe giới thiệu về quy trình nuôi trai lấy ngọc chuyên nghiệp và mua sắm trang sức bằng ngọc trai chính hiệu được nuôi cấy tại Phú Quốc (chi phí tực túc)\r\n- Mua sắm đặc sản Phú Quốc nổi tiếng: nhà thùng nước mắm Hồng Đức 1, vườn tiêu…\r\n- “Sống ảo” tại Sunset Sanato Beach Club Phú Quốc: với nhiều hoạt động sôi nổi và hoành tráng, nơi đây đã trở thành một trong những địa điểm ngắm hoàng hôn đẹp nhất Phú Quốc. Ngoài ra, du khách còn được thưởng ngoạn phong cảnh biển tuyệt đẹp, những góc ảnh check-in cực chất, hòa cùng những bản nhạc sôi động.\r\n19h00 Đoàn tham gia Tiệc (BBQ) giao lưu tìm hiểu chia sẻ kinh nghiệm về kỹ thuật lái xe. Kết thúc chương trình, đoàn tự do dạo phố biển về đêm. \r\nNghỉ đêm tại Phú Quốc.\r\nNgày 4 - TP. PHÚ QUỐC - HÀ TIÊN - CẦN THƠ (Ăn sáng, trưa, tối)\r\nSau khi dùng điểm tâm tại khách sạn, đoàn làm thủ tục trả phòng và khởi hành tham quan:\r\n- Dinh Cậu: biểu tượng văn hoá và tín ngưỡng của đảo Phú Quốc. Nơi ngư dân địa phương gởi gắm niềm tin cho một chuyến ra khơi đánh bắt đầy ắp cá khi trở về. Sau đó, đoàn viếng Dinh Bà Thủy Long Thánh Mẫu - Thờ Thần Nữ Kim Giao, người phụ nữ được người dân Phú Quốc rất mực tôn kính vì có công khai phá huyện đảo này.\r\n- Chùa Sư Muôn (Hùng Long Tự): ngôi chùa có kiến trúc dân gian, nằm trên triền núi, mặt hướng ra biển, xung quanh cây cối xanh tốt. Đến đây du khách cảm nhận vẻ đẹp thanh tịnh, bình yên và cầu nguyện sự an lành và hạnh phúc đến với gia đình.\r\n09h30 Lên phà về lại Hà Tiên dùng cơm trưa. Sau đó, đoàn tiếp tục hành trình về Cần Thơ trên tuyến đường Lộ Tẻ - Rạch Sỏi. Đoàn về đến Cần Thơ, nhận phòng khách sạn và tự do nghỉ ngơi.\r\nQuý khách dùng bữa tối ấm cúng trên Du Thuyền Cần Thơ, khám phá ẩm thực Miền Tây trên sông Cần Thơ và nghe ca nhạc tài tử Nam Bộ. \r\n21h00 Tàu cập bến, Quý khách tự do khám phá Cần Thơ về đêm.\r\nNghỉ đêm tại Cần Thơ.\r\n \r\nNgày 5 - CẦN THƠ - CỒN SƠN - TP. HỒ CHÍ MINH/ BÌNH DƯƠNG/ ĐỒNG NAI (Ăn sáng, trưa)\r\nSau khi trả phòng và ăn sáng, đoàn khởi hành ra Bến Ninh Kiều, xuống thuyền du ngoạn trên sông Cần Thơ, nghe giới thiệu về Chợ thủy sản nước ngọt Cần Thơ; trải nghiệm Chợ nổi Cái Răng - một hình thức họp chợ đặc trưng tại các ngã sông của vùng đồng bằng sông Cửu Long, chợ nổi quy tụ hàng trăm ghe xuồng, tạo thành nơi mua bán, giao thương các loại trái cây, đặc sản sầm uất trên sông nước. Chợ Nổi Cái Răng đã được công nhận Di Sản Văn Hóa Phi Vật Thể Quốc Gia.\r\nĐoàn lên tàu trên sông Cần Thơ để tham quan Chợ Nổi Cái Răng, xem cảnh sinh họat buôn bán tấp nập trên ghe tàu vào buổi sáng.\r\nKhởi hành đến bến đò Cô Bắc (Cần Thơ), Quý khách đi đò qua sông tham quan cụm du lịch cộng đồng Cồn Sơn - Ngôi làng du lịch cộng đồng độc đáo giữa lòng phố thị cùng những trải nghiệm đặc biệt:\r\n- Tham quan mô hình nuôi cá lồng bè trên sông Hậu: nơi bảo tồn hơn 10 loài cá nước ngọt quý hiếm, du khách được giao lưu trao đổi với người dân địa phương về kỹ thuật nuôi cá lồng bè trên sông Hậu. Thưởng thức sản phẩm làm từ cá thát lát cườm. Đặc biệt, khách tham quan còn được tận mắt chiêm ngưỡng “cá cung thủ” và trải nghiệm Massage chân bằng cá có vảy.\r\n- Quý khách cùng nhau thưởng thức bữa cơm gia đình - Mỗi nhà một món ngon với \"thực đơn bay\" đặc trưng chỉ có ở Cồn Sơn.\r\n- Trải nghiệm học cách vót đũa và đan võng: nghề truyền thống thủ công đang dần mai một nhưng vẫn còn được lưu giữ tại đây. Đặc biệt được trải nghiệm làm khuôn và thưởng thức bánh phu thê miền Tây (giải nhất bánh ngon Nam Bộ 2015).\r\n- Rảo bước trên bờ đê, thả hồn vào không gian yên tĩnh, đoàn dừng chân tại vườn trái cây đặc sắc theo mùa: nhãn xuồng, chôm chôm, vú sữa, ổi, bưởi… (Mỗi mùa mỗi trái).\r\n- Như được trở về với tuổi thơ từ trải nghiệm làm bánh dân gian: bánh lá mít/ bánh kẹp cuốn/ cốm nổ qua sự hiện dẫn tận tình của các nghệ nhân chất phác. Ngoài thưởng thức những món bánh từ chính tay mình làm ra, du khách còn được dùng thử món bánh xèo miền Tây đặc sắc.\r\nĐoàn lên xe khởi hành về lại TP. Hồ Chí Minh (Bình Dương, Đồng Nai v..v), đến trạm dừng chân trên cao tốc Trung Lương đoàn cùng nhau chia tay. Tách đoàn và hẹn gặp nhau trên mọi nẻo đường đất nước.\r\n \r\nLưu ý:\r\n\r\n✓ Đảm bảo nguyên tắc 5K, khử khuẩn.\r\n\r\n✓ Vận chuyển không quá 50% số ghế, không quá 20 khách/1 xe (bao gồm cả tài xế), tuân thủ ngồi giãn cách trên xe và đeo khẩu trang suốt quá trình di chuyển.\r\n\r\n✓ Thẻ xanh covid (khách đã tiêm vaccine ngừa covid đủ liều, thời gian hoàn tất mũi 2 trước 14 ngày và không quá 12 tháng), khách là FO đã khỏi bệnh (có giấy chứng nhận của Sở Y Tế và không quá 06 tháng).\r\n\r\n✓ Xét nghiệm covid theo yêu cầu của từng tỉnh vào thời điểm đặt dịch vụ. Vui lòng liên hệ với nhân viên tư vấn để biết thêm chi tiết.', 6),
(3, 'Tour Caravan - Sắc Màu Của Biển: Nha Trang - Du Thuyền Ngắm Hoàng Hôn Emperor - Đồng Cừu Suối Tiên - Bình Hưng - Hang Rái - Bàu Trắng - Cổ Thạch Tự ', 'Khám phá Nam Trung Bộ bằng những cung đường ven biển tuyệt đẹp như Bà Rịa - Hồ Tràm - Hồ Cốc - Bình Châu - Suối Nhum - Kê Gà - Đèo Cù Hin - Núi Chúa - Vĩnh Hy - Bàu Trắng, đoàn băng qua những hoang mạc vắng lặng, cồn cát ngút ngàn, núi non hùng vĩ và biển trời bao la... sẽ mang đến cho du khách vô số cảm nhận trọn vẹn về vẻ đẹp ấn tượng, kỳ diệu mà mẹ thiên nhiên đã ban tặng cho mỗi vùng đất: Khám phá vịnh Nha Trang xinh đẹp, thưởng ngoạn hoàng hôn buông xuống đỏ rực khắp cả khoảng trời và thưởng thức bữa tối với buffet hải sản trong không khí lãng mạn trên du thuyền Emperor Nha Trang sang trọng. Đảo Bình Hưng: hoang sơ, trong xanh màu ngọc bích, thưởng thức hải sản tôm hùm tươi ngon, tham quan điểm du lịch An Hill - Nơi duy nhất trên đảo có con đường xuyên rừng xuống tận biển. Hang Rái: sở hữu bãi san hô cổ với địa hình thác nước đổ ấn tượng ngay giữa lòng biển cả. Khám phá vịnh Nha Trang xinh đẹp, thưởng ngoạn hoàng hôn buông xuống đỏ rực khắp trời biển và thưởng thức bữa tối với buffet hải sản trong không khí lãng mạn trên du thuyền Emperor Nha Trang Ngắm bình minh trên vịnh Nha Trang. Check-in cánh đồng điện gió đẹp như trời Tây. Tham gia những đêm giao lưu, thêm gắn kết “chiến hữu” sau bao ngày đồng hành và chia sẻ, trao đổi kinh nghiệm cùng nhau.', 'Bãi biển Cà Ná, Chùa Từ Vân, Khu du lịch suối khoáng nóng I-Resort, Nha Trang Xưa, Tháp Bà Ponagar, Du thuyền Emperor, Đồng Cừu Suối Tiên, Đảo Bình Hưng, An Hill tại Bãi Chướng, Hang Rái, Vườn nho, Cổ Thạch Tự, Bàu trắng', 4, NULL, NULL, 8590000, 'https://media.travel.com.vn/tour/tfd_210331115745_407964.jpg', 'https://media.travel.com.vn/tour/tfd_210217053250_826708.jpg', 'https://media.travel.com.vn/tour/tfd_210217053742_896261.jpg', 'https://media.travel.com.vn/tour/tfd_210217054047_260510.jpg', 6, NULL, 2, 5, 'Ngày 1 - TP. HỒ CHÍ MINH - CÀ NÁ - NHA TRANG (Ăn sáng, trưa, tối)\r\nTập kết tại Vietravel (190 Pasteur, Phường 06, Quận 03), đoàn dán số thứ tự - Điểm danh - Kiểm tra lại xe - Kiểm tra bộ đàm và làm lễ xuất phát. Trên đường đi Quý khách sẽ sử dụng bộ đàm chia sẻ kinh nghiệm lái xe, những hiểu biết về các dòng xe và những câu chuyện vui xuyên suốt hành trình.\r\nBắt đầu hành trình đi Khánh Hòa theo tuyến đường cao tốc TP. Hồ Chí Minh - Long Thành - Dầu Giây. \r\nTiếp tục hành trình đến Ninh Thuận, đoàn dừng chân ngắm nhìn và chụp hình tại Bãi biển Cà Ná: một trong những bãi biển đẹp nhất miền Trung, vốn được mệnh danh là “Nàng công chúa ngủ quên” bởi vẻ đẹp thanh bình vốn có.\r\nĐến Cam Ranh, đoàn dừng chân viếng thăm:\r\n- Chùa Từ Vân (chùa Ốc): du khách như bước vào thế giới đại dương bởi chùa được làm chủ yếu từ vỏ ốc và san hô tạo nên một không gian yên bình, khoáng đạt.\r\nĐến Nha Trang, đoàn nhận phòng nghỉ ngơi. Buổi tối quý khách tự do đi bộ dạo phố, hoặc đi xe điện khám phá Nha Trang về đêm. \r\nNghỉ đêm tại Thành phố Nha Trang.\r\nNgày 2 - NHA TRANG - I-RESORT - DU THUYỀN CAO CẤP EMPEROR NGẮM HOÀNG HÔN RỰC RỠ TRÊN VỊNH NHA TRANG (Ăn sáng, trưa, tối)\r\nĐoàn ăn sáng và khởi hành tham quan:\r\n- Khu du lịch suối khoáng nóng I-Resort: với không gian yên tĩnh, cây cối xanh tươi, I-Resort sẽ hiện ra như một bức tranh thiên nhiên đậm chất Việt, Quý khách sẽ được trải nghiệm dịch vụ tắm khoáng thư giãn. Ngoài ra, Quý khách có thể tự do lựa chọn các dịch vụ tắm bùn giúp cho làn da thêm tươi trẻ. \r\n- Nha Trang Xưa: du khách dường như được trở về một Việt Nam cổ xưa với ngôi nhà có tuổi đời 200 năm, dàn cột được điêu khắc, chạm trỗ tinh tế, mái ngói rêu phong kết hợp cùng những mô hình làng nghề truyền thống của Khánh Hòa như dệt chiếu, gốm, nón lá, trầm hương... tất cả đều toát lên nét đẹp cổ kính, xưa cũ của làng quê Việt xưa. Đoàn thưởng thức bữa trưa với ẩm thực đồng quê đậm vị Nha Trang cùng tầm nhìn ra hồ sen xanh mát theo mùa.\r\nBuổi chiều, đoàn khởi hành  về TP. Nha Trang tham quan:\r\n- Tháp Bà Ponagar: công trình tiêu biểu cho nghệ thuật kiến trúc và điêu khắc tín ngưỡng tôn giáo bậc nhất của dân tộc Chăm tại Nha Trang.\r\n- Champa Island “Ốc đảo xanh trong lòng phố biển”: một trong những resort hiếm hoi trong lòng thành phố Nha Trang trải nghiệm tại không gian làng nghề truyền thống (gốm, thêu, đan,…)\r\nQuý khách đến cảng Cầu Đá tham quan:\r\n- Du thuyền Emperor: được lấy cảm hứng từ cuộc sống tinh tế của vua Bảo Đại, mang đến cho quý khách trải nghiệm từng khoảnh khắc và được phục vụ như một vị vua hoặc nữ hoàng, tận hưởng những dịch vụ tất cả bao gồm như âm nhạc, nghệ thuật, kiến trúc, văn hóa, ẩm thực, lịch sử và các hoạt động ngoài trời.\r\n- Dùng tiệc cocktail với phong phú đồ uống gồm các loại rượu ngon, đồ uống giải khát không hạn chế khi ngắm cảnh hoàng hôn nhuộm màu trời biển đẹp rực rỡ.\r\n- Thưởng thức bữa tối thịnh soạn với các món hải sản (tôm hùm/ bò Úc) tươi ngon cùng những bản nhạc du dương trong khung cảnh lãng mạn dưới trời sao hòa trong ánh đèn lấp lánh của du thuyền.  \r\nBuổi tối, Quý khách tự do trải nghiệm dạo phố biển về đêm hoặc check in các điểm giải trí: Sailing Club - Bar tại bãi biển Trần Phú; Skylight Nha Trang - Với Skydeck 360 độ là địa điểm ngắm cảnh lý tưởng nhất Nha Trang cùng tầm nhìn không hề bị che chắn….\r\nNghỉ đêm tại Thành phố Nha Trang.\r\nNgày 3 - NHA TRANG - ĐỒNG CỪU - CUNG ĐƯỜNG VEN BIỂN NÚI CHÚA - BÌNH HƯNG - NINH CHỮ (Ăn sáng, trưa, tối)\r\nĐoàn dậy sớm, chụp hình check-in tại bãi rêu xanh mướt phủ đầy các khối bê tông trong ánh bình minh đang dần ló dạng (tùy theo mùa) trên đường Trần Phú, trục đường biển chính của Thành Phố Nha Trang, thưởng thức cà phê sáng (chi phí tự túc) và lưu lại khoảnh khắc tuyệt vời của tất cả thành viên tại Tháp Trầm Hương - Được xem là biểu tượng của thành phố biển Nha Trang xinh đẹp.\r\nVề khách sạn trả phòng, ăn sáng, Quý khách khởi hành về Ninh Thuận theo con đường mới cập sát biển qua đèo Cù Hin, dừng chân chụp hình và ngắm nhìn Vịnh Nha Trang từ trên cao.\r\nĐến Cam Ranh, đoàn tham quan:\r\n- Đồng Cừu Suối Tiên: ngoài vuốt ve bộ lông mềm mại và chụp hình với những chủ cừu đáng yêu… du khách có thể ngắm nhìn những đồng cỏ và check-in với những tiểu cảnh như nhà gỗ, vườn hoa, tổ chim…\r\n \r\nTiếp tục di chuyển theo cung đường ven biển Núi Chúa có thể xem là đẹp nhất Việt Nam - Một bên là những bãi biển thơ mộng nổi tiếng như Bình Tiên, Bình Lập,… bên kia là vườn quốc gia Núi Chúa cùng hệ sinh thái đa dạng. Đoàn dừng chân chụp hình kỉ niệm.\r\nĐến Bãi Kinh, tàu đưa Quý khách khám phá Đảo Bình Hưng - Một hòn đảo với vẻ đẹp hoang sơ nhờ vào kết hợp hài hòa giữa biển và núi rừng. Sau khi lặn ngắm san hô tại Bãi Sạn/ bãi Chuối, tàu tiếp tục đưa Quý khách tắm biến tại bãi Suối Nước Ngọt hoặc bãi Chà Là.\r\nThưởng thức trưa với các món đặc sản Bình Hưng như tôm hùm, nhum, hàu sữa, mực lá, các loại ốc,… Sau đó Quý khách lên đảo, di chuyển bằng xe và nghe Hướng dẫn viên thuyết minh những cảnh đẹp Bình Hưng - Một nơi còn lưu giữ bản sắc văn hóa truyền thống của cộng đồng cư dân miền biển, Quý khách tìm hiểu cuộc sống của người dân trên đảo với nghề nuôi tôm hùm nổi tiếng. Đoàn ngắm nhìn Hải Đăng Hòn chút, tham quan điểm du lịch An Hill tại Bãi Chướng: nơi duy nhất trên đảo có con đường xuyên rừng xuống tận biển, check-in cây cầu bảy sắc màu và xích đu view biển độc đáo...\r\nTrở về đất liền, đoàn khởi hành về Ninh Chữ, trên đường dừng chân tham quan:\r\n- Hang Rái: du khách như được lạc vào xứ sở của câu chuyện cổ tích bởi vẻ đẹp gần như hoàn hảo từ những hòn đá nhiều hình thù xếp chồng lên nhau tạo ra vô số hang động lớn nhỏ đẹp mắt.\r\n- Vườn nho: tìm hiểu quy trình trồng nho đặc sản vùng đất nắng gió Ninh Thuận.\r\nĐến Ninh Chữ, đoàn nhận phòng tại resort nghỉ ngơi hoặc tự do hòa mình vào làn nước trong vắt khiến du khách say mê ngay từ những phút giây đầu tiên.\r\nĐoàn ăn tối với những món đặc sản của vùng đất “Nắng như rang, gió như phan”: bắp bò nấu rượu nho Phan Rang, dê hoặc cừu hấp... Đoàn giao lưu và chia sẻ kinh nghiệm về kỹ thuật lái xe cũng như những kỉ niệm đáng nhớ xuyên suốt hành trình.\r\nNghỉ đêm tại resort 4 sao ngay biển Ninh Chữ.\r\nNgày 4 - NINH THUẬN - CỔ THẠCH TỰ - BÀU TRẮNG - TP. HỒ CHÍ MINH (Ăn sáng, trưa)\r\nĐoàn trả phòng, xuất phát về TP. Hồ Chí Minh, trên đường dừng chân check-in “sang xịn” với những cánh quạt gió khổng lồ dọc theo cung đường ven biển mũi Dinh cùng cảnh sắc hữu tình của đồi núi trập trùng. Đến Tuy Phong - Bình Thuận, đoàn tham quan:\r\n- Cổ Thạch Tự hay còn gọi là Chùa Hang có lịch sử hơn 100 năm, một quần thể kiến trúc, liên hoàn với nhau. Chính điện chùa nằm trong quần thể núi đá tự nhiên, chùa ẩn mình trong hang động tự nhiên với cảnh non nước hữu tình. \r\nTiếp tục hành trình đến Bình Thuận theo cung đường ven biển Mũi Né - Bàu Trắng thẳng tắp đẹp như những con đường Texas trong những bộ phim cao bồi Mỹ: sở hữu phong cảnh thiên nhiên kỳ vĩ với tông màu trắng của những triền cát và màu xanh của biển trời. Đoàn check-in bên con đường đôi cong vút được điểm xuyến bởi hoang mạc cát hai bên.\r\nSau khi ăn trưa, đoàn khởi hành về TP. Hồ Chí Minh theo cung đường Bình Châu - Lộ trình kết nối những cảnh sắc hoang sơ của rừng nguyên sinh Bình Châu và biển trời xanh ngát vút tầm mắt.\r\nĐoàn khởi hành về điểm tập kết ban đầu, chia tay Quý khách.\r\n \r\nLưu ý:\r\n\r\n✓ Đảm bảo nguyên tắc 5K, khử khuẩn.\r\n\r\n✓ Vận chuyển không quá 50% số ghế, không quá 20 khách/1 xe (bao gồm cả tài xế), tuân thủ ngồi giãn cách trên xe và đeo khẩu trang suốt quá trình di chuyển.\r\n\r\n✓ Thẻ xanh covid (khách đã tiêm vaccine ngừa covid đủ liều, thời gian hoàn tất mũi 2 trước 14 ngày và không quá 12 tháng), khách là FO đã khỏi bệnh (có giấy chứng nhận của Sở Y Tế và không quá 06 tháng).\r\n\r\n✓ Xét nghiệm covid theo yêu cầu của từng tỉnh vào thời điểm đặt dịch vụ. Vui lòng liên hệ với nhân viên tư vấn để biết thêm chi tiết.', 6),
(5, 'Quy Nhơn: Nghỉ dưỡng thượng lưu 5 sao Anantara Quy Nhơn Villas - Tham quan Kỳ Co - Eo Gió - Trải nghiệm bữa tối đặc biệt bên bờ biển - Bay cùng hàng không Vietnam Airlines hạng Thương Gia', 'Anantara Quy Nhơn Villas là khu nghỉ dưỡng mới được đưa vào hoạt động từ cuối năm 2018 tại thành phố biển Quy Nhơn. Ngay lập tức Anantara Quy Nhơn Villas đã trở thành cái tên cực hot được khách du lịch tìm kiếm hàng đầu cho chuyến du lịch nghỉ dưỡng sang trọng tại thành phố biển của Bình Định. Mỗi căn villa đều có bể bơi riêng hướng ra phía đại dương xanh, bể tắm lớn và tủ rượu với các loại rượu vang thượng hạng được tuyển trọn để khách lưu trú có những trải nghiệm tốt nhất khi chọn Anantara Quy Nhơn là nơi nghỉ dưỡng của mình. Resort cũng là nơi được nhiều nghệ sĩ nổi tiếng, youtuber như Quang Vinh, Color Man chọn làm nơi nghỉ dưỡng và review.', 'Chùa Ông Núi, Kỳ Co, Eo Gió, Trải nghiệm các dịch vụ tại Anantara Quy Nhơn Villas', 3, NULL, NULL, 31990000, 'https://media.travel.com.vn/tour/tfd_210217043450_894010.jpg', 'https://media.travel.com.vn/tour/tfd_210217043534_960348.jpg', 'https://media.travel.com.vn/tour/tfd_210217044131_288754.jpg', 'https://media.travel.com.vn/destination/dc_200915_BIEN%20QUY%20NHON.jpg', 7, NULL, 3, 9, 'Ngày 1 - Tp Hồ Chí Minh - Phù Cát - Quy Nhơn (Ăn trưa, Tối)\r\nQuý khách tập trung đến điểm hẹn tại Sân bay, nhân viên Vietravel đón và hỗ trợ Quý khách làm thủ tục. Quý khách có thể sử dụng dịch vụ phòng chờ Thương Gia tại sân bay trong thời gian chờ lên máy bay. Sau khi đáp máy bay đến Sân Bay Phù Cát, Quy Nhơn. Đến nơi, Hướng dẫn viên Vietravel đón và đưa Quý khách tham quan Chùa Ông Núi – ngôi chùa cổ và nổi tiếng nhất ở đây. Trong đó điểm nổi bật nhất của chùa chính là bức tượng Phật ngồi lớn nhất Đông Nam Á.\r\nXe đưa Quý khách đi ăn trưa tại nhà hàng Cơm Mậu - Nằm giữa trung tâm Thành phố Quy Nhơn với 2 tông màu chủ đạo là màu vàng của rơm và màu trầm của gỗ. Cơm Mậu Quy Nhơn nổi bật, lạ lẫm giữa những ngôi nhà có thiết kế hiện đại. Với niềm đam mê và cả tâm huyết, Cơm Mậu – Cửa hàng ăn uống Mậu Dịch số 179 đã xây dựng nên mô hình kinh doanh tái hiện lại cả không gian của một thời bao cấp ngày xưa. Quý khách dùng cơm trưa tại đây với các món ăn đặc sản của Quy Nhơn.\r\n \r\nSau bữa trưa, xe đưa Quý khách đến khu nghỉ dưỡng Anantara Quy Nhơn Villas sang trọng và đẳng cấp. Mỗi căn villa đều có bể bơi riêng hướng ra phía đại dương xanh, bể tắm lớn. Quý khách nghỉ ngơi và dùng bữa tối tại nhà hàng Sea Fire Salt bên trong resort với menu 3 món. \r\n \r\nTự do nghỉ ngơi tại Villa và tận hưởng các tiện nghi như Quản gia luôn sẵn sàng 24 giờ/ngày để sắp xếp các cuộc du ngoạn hoặc sắp xếp các bữa ăn theo yêu cầu. Tận hưởng sự tiện nghi vượt trội, bao gồm Apple TV và hệ thống âm thanh Bose, máy pha cà phê Nespresso, hầm rượu vang và tủ thức ăn ngon.\r\nNgày 2 - Quy Nhơn – Kỳ Co – Eo Gió (Ăn sáng, trưa, tối)\r\nSau bữa sáng, Quý khách tự do tắm biển hay tham gia các hoạt động tại resort với yoga buổi sáng lúc 7h45, Dụng cụ thể thao biển miễn phí (Bóng chuyền, chèo thuyền Kayak, Thuyền chuối,…). \r\n14h00 Hướng dẫn viên sẽ đưa Quý khách vào thành phố Quy Nhơn tham quan:\r\n- Kỳ Co: với màu nước trong xanh, bãi cát trắng dài và mịn, những cơn sóng biển êm ái chính là điểm đến lý tưởng thu hút nhiều du khách trong thời gian gần đây. Ngoài tắm biển và đùa vui, Quý khách còn có cơ hội đến Bãi San Hô ngắm những rặng san hô tự nhiên và hàng trăm loài cá đầy màu sắc tung tăng bơi lội.\r\n- Eo Gió: nơi vẫn còn giữ được cho mình vẻ đẹp tự nhiên đầy hoang sơ. Đứng từ trên cao nhìn xuống, Eo Gió như một bức tranh sơn thủy hữu tình với trời, mây, nước… biển núi ôm nhau vừa gợi cảm, vừa hoang sơ đầy quyến rũ.\r\nQuý khách có thể dừng chân dùng Café tại Surf Bar với sự nhộn nhịp và trẻ trung nằm ngay trên bãi biển tạo cảm giác gần gủi và thú vị cho du khách (chi phí tự túc).\r\nXe đưa đoàn về lại resort, Quý khách sẽ trải nghiệm bữa tối đặc biệt đắm chìm trong hương vị đặc trưng từ bữa ăn riêng được bố trí bên bờ biển. Thưởng thức bữa tối trong không gian riêng tư và lãng mạn với những ngón chân trần trên cát tại một bãi biển thân mật dành cho hai người. Đầu bếp riêng sẵn sàng chuẩn bị đồ ăn cho Quý khách thưởng thức bữa tối với một trong 5 set menu độc đáo (tùy chọn) sẽ là buổi tối khó quên cho Quý khách (Quý khách tự túc thanh toán chi phí nếu dùng thức uống có cồn).\r\nNgày 3 - Quy Nhơn - Tp Hồ Chí Minh (Ăn sáng)\r\nSau bữa sáng và tự do thư giãn tại resort hoặc đăng ký gói trị liệu Spa tại Resort - Anantara Signature Massage 90 phút (chi phí tự túc) sẽ mang lại cho Quý khách nguồn năng lượng sảng khoái. Quý khách làm thủ tục trả phòng và xe đưa Quý khách ra sân bay đón chuyến bay về lại điểm đón ban đầu, Quý khách có thể sử dụng phòng chờ Thương Gia tại sân bay. Kết thúc chuyến tham quan nghỉ dưỡng đầy thú vị.\r\n\r\nLưu ý:\r\n\r\n✓ Đảm bảo nguyên tắc 5K, khử khuẩn.\r\n\r\n✓ Vận chuyển không quá 50% số ghế, không quá 20 khách/1 xe (bao gồm cả tài xế), tuân thủ ngồi giãn cách trên xe và đeo khẩu trang suốt quá trình di chuyển.\r\n\r\n✓ Thẻ xanh covid (khách đã tiêm vaccine ngừa covid đủ liều, thời gian hoàn tất mũi 2 trước 14 ngày và không quá 12 tháng), khách là FO đã khỏi bệnh (có giấy chứng nhận của Sở Y Tế và không quá 06 tháng).\r\n\r\n✓ Xét nghiệm covid theo yêu cầu của từng tỉnh vào thời điểm đặt dịch vụ. Vui lòng liên hệ với nhân viên tư vấn để biết thêm chi tiết.', 6),
(6, 'Phú Quốc - Đi Bộ Dưới Đáy Biển/ Lặn bình khí ngắm san hô - Bar Bạch Tuộc Ngắm Hoàng Hôn - Nghỉ đêm tại JW Marriott Phu Quoc Emerald Bay Resort & Spa - Bay Vietnam Airlines hạng Thương Gia', 'Tọa lạc tại Bãi Khem, phía Nam đảo ngọc Phú Quốc, một bãi biển tuyệt đẹp với cát trắng mịn như kem và nước trong màu ngọc bích, cách sân bay quốc tế Phú Quốc chỉ 15 phút lái xe, JW Marriott Phú Quốc Emerald Bay không chỉ là một kiệt tác nghỉ dưỡng đẳng cấp 5 sao độc đáo và tinh tế mà còn là một câu truyện huyền thoại về Lamarck Universitys - một trường đại học danh tiếng hàng đầu Việt Nam tại thị trấn thương mại Bãi Kem những năm đầu thế kỷ 20. Khu nghỉ dưỡng với 244 phòng, suite, căn hộ và villas là sự kết hợp tuyệt diệu của cả hai thế giới: tri thức và nghỉ dưỡng. Khu nghỉ dưỡng có kiến trúc Pháp điển hình và những gam màu nổi bật tôn vinh từng đường nét tinh tế. Những phòng nghỉ tiện nghi thoải mái nhất, ẩm thực ngon nhất, dịch vụ thân thiện kết hợp với môi trường nghỉ dưỡng có một không hai được đặt trong một ngôi trường thuần túy với phấn trắng bảng đen, dụng cụ giảng dạy, bộ sưu tập cúp chiến thắng mà các đội thể thao đã mang về được giữ nguyên, trở thành những vật dụng trang trí vô cùng độc đáo. Với 18 khoa của trường đại học khoa học tự nhiên Lamarck University, Quý du khách có những trải nghiệm hoàn toàn khác biệt trong cùng Khu nghỉ dưỡng. Sự thú vị mà JW Marriott Phú Quốc Emerald Bay đem đến cho du khách là những tháng ngày nghỉ dưỡng trong vai trò một sinh viên đại học, ở một ngôi trường nghỉ dưỡng có một không hai. Một ngày là hoàn toàn không đủ với JW Marriott Phú Quốc Emerald Bay… khi mà khu nghỉ dưỡng biến từng phút từng giây của du khách ở nơi đây trở thành những phút giây trải nghiệm vô cùng đáng giá. Bởi mỗi chi tiết, dù là nhỏ nhất trong khuôn viên khu nghỉ dưỡng đều ẩn chứa trong nó một câu chuyện thú vị khiến cho “học viên” thỏa sức khám phá.', 'Trải nghiệm dịch vụ và tham gia các hoạt động tại JW Marriott Phú Quốc Emerald Bay, Hòn Mây Rút Ngoài - đi bộ dưới đáy biển, lặn biển, INK 360,', 3, NULL, NULL, 33990000, 'https://media.travel.com.vn/tour/tfd_210415095631_474474.jpg', 'https://media.travel.com.vn/tour/tfd_210129105233_163829.jpg', 'https://media.travel.com.vn/tour/tfd_210415095706_419711.jpg', 'https://media.travel.com.vn/destination/dc_200915_PHU%20QUOC%20(1).jpeg.jpg', 4, NULL, 3, 9, 'Ngày 1 - TP.HỒ CHÍ MINH - PHÚ QUỐC (Ăn trưa, tối)\r\nQuý khách tập trung đến điểm hẹn tại Sân Bay, hướng dẫn viên Vietravel đón và giúp Quý khách làm thủ tục. Quý khách có thể sử dụng dịch vụ phòng chờ Thương Gia tại sân bay trong thời gian chờ lên máy bay. sau khi đáp máy bay đến Phú Quốc xe đón đoàn đến Sunset Sanato dùng bữa trưa buffet BBQ hải sản. \r\nSau khi dùng bữa trưa xe đón đoàn khởi hành về JW Marriott Phú Quốc Emerald Bay - làm thủ tục nhận phòng và nghỉ ngơi thư giãn tại resort - hạng phòng Deluxe Emerald hướng vịnh ấm cúng và sang trọng, sảng khoái cho du khách. Quý khách có thể tùy nghi tận hưởng và trải nghiệm các dịch vụ và tiện nghi tại khu resort đẳng cấp và sang trọng như:\r\n- Thả mình trong 3 hồ bơi Sun Sand Shell độc đáo\r\n- Thư giãn tại biển Bãi Khem cát trắng đẹp nhất đảo ngọc\r\n- Tản bộ trên con đường Rue de Lamarck mô phỏng phố cổ Hội An, tham quan cửa hàng thủ công tinh xảo\r\n- Trải nghiệm ẩm thực và khám phá vẻ đẹp phá cách của các nhà hàng Pink Pearl, French & Co, RedRum hay Department of Chemistry Bar.\r\n- Tham gia các hoạt động trải nghiệm theo lịch của resort.\r\n \r\nChiều tối, Quý khách dùng bữa tối tại nhà hàng Pink Pearl gợi cho du khách nhớ đến những bữa tối sang trọng, những buổi tiệc tưng bừng mang phong cách Gatsby của những năm 1920, đồng thời thể hiện tinh thần nồng hậu, hiếu khách, hào phóng và đẳng cấp của Madam Pearl. Ngôi biệt thự này sẽ là nơi cho ra đời, phục vụ những món ăn mang đậm phong cách ẩm thực Pháp tinh tế, sang trọng và được truyền cảm hứng từ đầu bếp trứ danh Amine Lakhdari- người đã từng cộng tác làm nên đẳng cấp của nhiều nhà hàng hạng sao Michelin tại Pháp.\r\nSau đó Quý khách thư giãn tại Chemistry Bar nhâm nhi cocktail với các món thức uống đặc trưng. Hoặc thư giãn tại Spa (chi phí tự túc).\r\nQuý khách nghỉ ngơi và thư giãn tại resort.\r\nNgày 2 - PHÚ QUỐC – TRẢI NGHIỆM MỚI LẠ ĐI BỘ DƯỚI ĐÁY BIỂN – NGẮM HOÀNG HÔN TẠI INK360 BAR (Ăn sáng, trưa, tối\r\nSau bữa sáng tại nhà hàng Tempus Fugis trong resort chính là Khoa Kiến Trúc cũ của ngôi trường. Không chỉ được khoác lên một lớp áo ấn tượng với những gam màu lam trắng nổi bật, nhà hàng Tempus Fugis còn gây hấp dẫn bởi vị trí trên bãi biển lộng gió, nơi có phòng tưởng niệm Architectural Hall of Fame vẫn còn lưu những cái tên được vinh danh trong lĩnh vực kiến trúc. Tại đây, du khách có thể thưởng thức những món ăn của cả ba nền ẩm thực đặc sắc Pháp, Nhật, Trung Hoa. Nhà hàng phục vụ cả ngày với sức chứa lên đến 350 người.\r\n \r\nQuý khách có thể tham gia các hoạt động tại resort theo lịch. Hoặc đơn giãn là thả hồn bên bãi biển trắng tuyệt đẹp. Quý khách dùng bữa trưa tại nhà hàng của Resort tại nhà hàng Red Rum - Trong khi Tempus Fugis và Pink Pearl mang đến sự đặc sắc đến từ những nền văn hóa ẩm thực khác nhau thì nhà hàng Red Rum resort JW Marriott Phú Quốc lại tạo ra một sức hút hoàn toàn khác biệt với gian bếp mở ngoài trời – vốn là xu hướng hiện đại chỉ xuất hiện trong những nhà hàng cao cấp. Du khách sẽ không chỉ được thưởng thức món ăn bằng vị giác và khướu giác mà còn bằng thị giác khi theo dõi suốt toàn bộ quá trình người đầu bếp chế biến nguyên liệu. Ở đây, du khách sẽ được phục vụ những món hải sản tươi sống của biển Phú Quốc như tôm hùm Phú Quốc, ghẹ Hàm Ninh, nhum nướng mỡ hành…, được ăn bugger, pizza và tiệc BBQ với 38 chỗ ngồi sát bờ biển. Red Rum cũng là một quày bar trên biển với những ly rượu làm say lòng người.\r\n \r\n13:00 hướng dẫn viên và xe sẽ đón và đưa Quý khách đi đưa đoàn ra cảng An Thới đi cano tham quan những hòn đảo phía Nam thuộc quần đảo An Thới với vẻ đẹp hoang sơ, cát trắng, biển xanh, nhiều ghềnh đá đẹp.\r\n- Hòn Mây Rút Ngoài: khám phá công viên bảo tồn san hô đầu tiên và duy nhất tại Phú Quốc, trải nghiệm mới lạ với bộ môn thể thao đi bộ dưới đáy biển (du khách không cần biết bơi cũng có thể tham gia). Đầu tiên, du khách sẽ được đội ngũ huấn luyện viên (có chứng chỉ hành nghề bởi Hiệp hội hướng dẫn viên lặn biển chuyên nghiệp PADI) giới thiệu và hướng dẫn các cách thức lặn biển an toàn (thời gian 10 phút). Sau khi  đội chiếc mũ theo phong cách phi hành gia, mỗi khách sẽ được một huấn luyện viên theo kèm và dẫn dắt đến với đáy đại dương (thời gian 20 phút). Du khách dạo bước trên thảm cát trắng mịn, hai bên lối đi là những rạn san hô theo dòng hải lưu đong đưa thú vị và mở ra một khung cảnh tuyệt vời trước mắt với vẻ đẹp muôn màu của hơn 200 loài san hô cùng nhiều loài cá màu sắc sặc sỡ đang tự nhiên bơi lội.\r\n- Trải nghiệm lặn biển (có bình khí): Đến vị trí rạn san hô nhiều màu sắc với những đàn cá tung tăng bơi lội. Tại đây quý khách sẽ được cung cấp đầy đủ các trang thiết bị như bình dưỡng khí, áo lặn, kính lặn, chân vịt …\r\nCác huấn luyện viên sẽ hướng dẫn cho Quý khách cách sử dụng bình hơi và những kỹ năng lặn biển. Mỗi quý khách sẽ được một HDV lặn chuyên nghiệp có bằng cấp quốc tế hướng dẫn lặn, Quý khách tự do khám phá những vẻ đẹp muôn màu trong lòng đại dương.\r\n \r\nCano quay về cảng An Thới đưa Quý khách về lại Resort thay trang phục. Xe đón và đưa Quý khách đến INK 360 - bar tầng thượng cao nhất tại Phú Quốc, nằm trong khu nghỉ dưỡng InterContinental Phu Quoc Long Beach. Thiết kế của quán bar lấy cảm hứng từ bạch tuộc “Kraken” khổng lồ. Đây là sáng tạo của kiến trúc sư Australia, Ashey Sutton, cha đẻ của nhiều quán bar “độc nhất vô nhị” tại châu Á. Các chi tiết trang trí tại đây, từ thảm lót sàn, tay nắm cửa đến bàn ghế, đều mang hình dáng của những xúc tu nhỏ hay những “chú bạch tuộc mini” Những chiếc xúc tu cực lớn đan xem vào nhau và lan tỏa ra mọi hướng khiến không gian nơi đây nên trở bí ẩn. Trên nền kim loại tối màu làm nên “quyền lực của Kraken” là sự kết hợp giữa xà cừ và đá cẩm thạch trắng, mang đến cảm giác sâu rộng của đại dương. INK 360 còn là địa điểm lý tưởng để ngắm hoàng hôn của Bãi Trường. Là quán bar tầng thượng cao nhất tại Phú Quốc, nơi đây còn mang đến tầm nhìn toàn cảnh biển trời bao la của đảo Ngọc.\r\n \r\nQuý khách dùng bữa tối tại nhà hàng Sea Shack - chỉ cách biển vài bước chân, nhà hàng Sea Shack với thiết kế không gian mộc mạc nhưng độc đáo, đem đến cho thực khách một trải nghiệm ẩm thực vừa sang trọng vừa bình dị trong làn gió biển. Tại đây, Quý khách có thể thưởng thức ẩm thực Việt hoặc quốc tế, hay những món thịt nướng ngon tuyệt do các đầu bếp đa tài của chúng tôi chế biến. Nhà hàng và quầy bar phục vụ nhiều loại bia khác nhau, ngoài ra phải kể đến cocktail Tiki, loại thức uống hoàn hảo để vừa nhâm nhi vừa cảm nhận cát mịn luồn qua chân. Quý khách sẽ dùng menu 3 món (chi phí nước uống tự túc).\r\nSau bữa tối, Quý khách về lại phòng nghỉ ngơi.\r\n \r\n* Tùy thuộc theo điều kiện thời tiết và mùa gió, Quý khách có thể trải nghiệm lặn ngắm san hô ở các hòn đảo, khu vực khác nhau\r\n*Những người không phù hợp tham gia: người có sức khỏe yếu, người có các bệnh lý về tim mạch, huyết áp, viêm tai giữa và phụ nữ có thai, người mắc bệnh tiểu đường tuýp 2 và hen suyễn. Khách từ 6 tuổi – 70 tuổi có sức khỏe tốt phù hợp tham gia chương trình này. Vui lòng thông báo để nhân viên hoàn chi phí này.\r\nNgày 3 - PHÚ QUỐC – TP.HỒ CHÍ MINH (Ăn sáng)\r\nQuý khách tùy nghi sử dụng tiện nghi tại resort và nghỉ ngơi cho đến giờ trả phòng. Xe đón và đưa đoàn ra sân bay làm thủ tục. Quý khách có thể sử dụng dịch vụ phòng chờ Thương Gia tại sân bay trong thời gian chờ lên máy bay. Chia tay Quý khách và kết thúc chương trình tại sân bay Tân Sơn Nhất - Kết thúc chuyến nghỉ dưỡng và tham quan đầy thú vị.\r\n\r\nLưu ý:\r\n \r\n✓ Đảm bảo nguyên tắc 5K, khử khuẩn.\r\n \r\n✓ Vận chuyển không quá 50% số ghế, không quá 20 khách/1 xe (bao gồm cả tài xế), tuân thủ ngồi giãn cách trên xe và đeo khẩu trang suốt quá trình di chuyển.\r\n \r\n✓ Thẻ xanh covid (khách đã tiêm vaccine ngừa covid đủ liều, thời gian hoàn tất mũi 2 trước 14 ngày và không quá 12 tháng), khách là FO đã khỏi bệnh (có giấy chứng nhận của Sở Y Tế và không quá 06 tháng).\r\n \r\n✓ Xét nghiệm covid theo yêu cầu của từng tỉnh vào thời điểm đặt dịch vụ. Vui lòng liên hệ với nhân viên tư vấn để biết thêm chi tiết.', 6),
(15, 'Huế - Trải Nghiệm Alba Thanh Tân Resort - Nghỉ dưỡng và thanh lọc cơ thể', 'Guồng quay công việc và cuộc sống khiến cho Quý khách mất đi sự cân bằng sức khỏe và tinh thần. Thấu hiểu điều đó, Vietravel mang đến cho Quý khách cùng những người thân yêu bộ sản phẩm du lịch nghỉ dưỡng kết hợp chăm sóc sức khỏe, tái tạo năng lượng và phục hồi sự cân bằng thuần khiết. Nằm nép minh dưới dãy Trường Sơn hùng vĩ, Alba Thanh Tân mang lại cho du khách cảm giác yên bình, thư thái. Ngoài ra , khu nghỉ dưỡng còn được bao quanh bởi rừng cây xanh, nguồn suối khoáng nóng tự nhiên sẽ mang lại một kỳ nghỉ thư giãn, đầy hạnh phúc. Dưới sự hướng dẫn của các chuyên gia hàng đầu trong chăm sóc sức khỏe, làm đẹp, du khách sẽ được trải nghiệm các liệu trình detox, massage xen kẽ với thiền, đi bộ, yoya, tắm khoáng nóng…để tái tạo năng lượng tích cực cho bản thân. Trong chuyến tour này, Quý khách sẽ được trải nghiệm những điều thú vị sau: Liệu trình detox với những bữa ăn thực dưỡng cùng các loại trà đặc biệt. Ngâm mình trong suối khoáng nóng giúp lưu thông tuần hoàn máu. Thư giãn tinh thần và thải độc toàn thân cùng những liệu pháp massage đặc biệt. Cảm nhận suối nguồn tươi trẻ qua những động tác Yoga và Thiền. Khám phá và chinh phục giới hạn bản thân với hành trình vận động trên cao.', 'Alba Thanh Tân Resort', 3, NULL, NULL, 8590000, 'https://media.travel.com.vn/tour/tfd_210325045801_114310.jpg', 'https://media.travel.com.vn/tour/tfd_210325050210_722559.jpg', 'https://media.travel.com.vn/tour/tfd_210325050221_123101.jpg', 'https://media.travel.com.vn/destination/dc_200915_HUE%20(1)_1.jpg', 8, NULL, 4, 5, 'Ngày 1 - TP.HCM/ HÀ NỘI/ CẦN THƠ - HUẾ - ALBA THANH TÂN RESORT (Ăn Tối)\r\nQuý khách tập trung tại sân bay, hướng dẫn viên làm thủ tục cho đoàn đáp chuyến bay đi Huế. Đến sân bay Phú Bài (Huế), xe và hướng dẫn viên đưa Quý khách đến Alba Thanh Tân bắt đầu chuỗi liệu trình thanh lọc cho cơ thể. Đoàn nhận phòng, sử dụng nước uống detox và trái cây tươi.\r\n \r\nBuổi chiều, Quý khách sẽ được đội ngũ nhân viên chuyên nghiệp của Alba Thanh Tân thăm hỏi và tư vấn những Liệu trình Detox kết hợp cùng nghỉ dưỡng và chế độ ăn uống phù hợp với các món ăn thanh đạm, các loại trà đặc biệt. Hành trình bắt đầu:\r\n• Tham gia lớp học làm các loại nước uống detox giúp thanh lọc cơ thể, loại bỏ những độc tố tích tụ trong người.\r\nDùng bữa tối với thực đơn chay thanh đạm.\r\n• Dùng trà detox và trị liệu Spa 50 phút giúp thư giãn và xua tan những cơn đau mỏi.\r\n \r\nBuổi tối, Quý khách có thể tự do đi dạo trong khuôn viên resort, cảm nhận sự tĩnh lặng và an yên trước khi đi vào giấc ngủ.\r\nNghỉ đêm tại Alba Thanh Tân.\r\n \r\nNgày 2 - NGÂM KHOÁNG NÓNG CÙNG NHỮNG HOẠT ĐỘNG NÂNG CAO SỨC KHỎE (Ăn Sáng, Tối)\r\nQuý khách khởi động ngày mới với phương pháp Đạp xe quanh khuôn viên resort để tận hưởng không khí giàu oxi từ quang hợp của cây xanh đưa đến trong nắng sớm, cho tinh thần sảng khoái, tràn đầy năng lượng.\r\nSau đó, dùng bữa sáng lành mạnh và tiếp tục liệu trình:\r\n• Thực hiện động tác Yoga - suối nguồn tươi trẻ với sự hướng dẫn của huấn luyện viên \r\n• Tham gia lớp học làm các loại nước uống detox: giúp thanh lọc cơ thể, loại bỏ những độc tố tích tụ trong người.\r\n• Tự do ngâm mình trong suối khoáng nóng hoặc tham gia hành trình vận động trên cao: để gia tăng sự trao đổi, tuần hoàn máu cũng như thúc đẩy cảm giác thể chất và tâm lý lành mạnh. \r\n• Học cách Thiền: dưới sự hương dẫn của huấn luyện viên, Quý khách sẽ biết cách thở đúng, tĩnh tâm và hòa mình với thiên nhiên kích thích các nơ ron thần kinh phát triển.\r\n• Tắm Onsen và trị liệu spa 50 phút với sự kết hợp giữa các phương pháp massage, bấm huyệt cùng liệu pháp chườm thảo dược giúp giải tỏa và mang lại trạng thái thăng bằng cho cả thể chất lẫn tinh thần.\r\nĐoàn ăn tối và dùng trà thải độc. \r\nNghỉ đêm tại Alba Thanh Tân.\r\nNgày 3 - HUẾ - TP. HCM/ HÀ NỘI/ CẦN THƠ (Ăn Sáng)\r\nBuổi sáng, Quý khách dậy sớm và luyện tập sức bền, dẻo dai với bộ môn leo núi. Sau đó, tiếp tục thực hiện các hoạt động thanh lọc cơ thể như:\r\n- Thực hiện những động tác Yoga cùng với bài Thiền cho tinh thần nhẹ nhàng, tươi mới.\r\n- Dùng bữa sáng lành mạnh\r\n- Massage lưng cho phần cơ được thư giãn, đẩy lùi các triệu chứng khó chịu ở lưng.\r\nQuý khách ăn trưa trả phòng và nhận quà tặng lưu niệm từ Alba Thanh Tân. Đoàn khởi hành ra sân bay Phú Bài, làm thủ tục về lại điểm đón ban đầu. \r\nKết thúc chuyến hành trình tại sân bay Tân Sơn Nhất.\r\nLưu ý:\r\n\r\n✓ Đảm bảo nguyên tắc 5K, khử khuẩn.\r\n\r\n✓ Vận chuyển không quá 50% số ghế, không quá 20 khách/1 xe (bao gồm cả tài xế), tuân thủ ngồi giãn cách trên xe và đeo khẩu trang suốt quá trình di chuyển.\r\n\r\n✓ Thẻ xanh covid (khách đã tiêm vaccine ngừa covid đủ liều, thời gian hoàn tất mũi 2 trước 14 ngày và không quá 12 tháng), khách là FO đã khỏi bệnh (có giấy chứng nhận của Sở Y Tế và không quá 06 tháng).\r\n\r\n✓ Xét nghiệm covid theo yêu cầu của từng tỉnh vào thời điểm đặt dịch vụ. Vui lòng liên hệ với nhân viên tư vấn để biết thêm chi tiết.', 6);
INSERT INTO `tours` (`tour_id`, `tour_name`, `description`, `places`, `day_count`, `res_id`, `hotel_id`, `price_per_person`, `image_1`, `image_2`, `image_3`, `image_4`, `city_id`, `tour_guide_id`, `tour_type_id`, `tour_rank_id`, `travel_schedule`, `max`) VALUES
(16, 'Hà Nội - Sapa - Hôtel de la Coupole - MGallery by Sofitel - Đẳng Cấp Cao Sang - Bản Cát Cát - Núi Hàm Rồng - Fansipan - Bay cùng hàng không Vietravel Airlines', 'Hôtel de la Coupole - Mgallery được xem là “chuẩn mực của sự xa hoa” trong các khách sạn 5 sao hạng sang. Trước tiên phải kể đến 249 phòng ngủ mỗi phòng đều có view thẳng ra thị trấn Sapa, thiết kế độc đáo với họa tiết sống động của văn hóa Tây Bắc và vẻ đẹp Pháp. “Trái tim” của khách sạn là hệ thống ẩm thực, với một nhà hàng Chic, một quầy bar Absinthe và một tiệm bánh ngọt đậm phong cách Pháp có tên Cacao,… Tất cả đều được phục vụ ở mức tốt nhất dành cho du khách. Đến Hôtel de la Coupole - Mgallery du khách như được sống trong không gian hoàng cung Pháp có một không hai ngay giữa lòng Sapa. Khách sạn được bởi kiến trúc sư lừng danh Bill Bensley - vị kiến trúc sư nổi tiếng với chuỗi những khách sạn boutique độc đáo trên thế giới. Với De La Coupole: nội thất của khách sạn là một kiệt tác nghệ thuật đương đại với sự kết hợp của văn hóa vùng Tây Bắc, lịch sử Pháp và những sắc màu lộng lẫy của các dân tộc Sapa, hòa quyện lại để tạo thành một tác phẩm vô cùng ấn tượng. Với gói ưu đãi tuyệt vời của chúng tôi du khách sẽ được tặng 1 lần vé khứ hồi Tàu hỏa leo núi Mường Hoa và Cáp treo Fansipan. Từ lối đi riêng trong khách sạn, du khách dễ dàng thẳng bước tới toa tàu hỏa leo núi Mường Hoa màu đỏ sang trọng như trong một bộ phim châu Âu cổ, lướt qua những cảnh đẹp thiên nhiên kỳ ảo của núi rừng Hoàng Liên Sơn để tới cáp treo Fansipan và tiếp tục chinh phục đỉnh Fansipan cao 3,143 mét.', 'Bản Cát Cát, KDL Fansipan Legend, Tàu hỏa leo núi Mường Hoa, Núi Hàm Rồng', 3, NULL, NULL, 21990000, 'https://media.travel.com.vn/tour/tfd_210322111746_294581.jpg', 'https://media.travel.com.vn/tour/tfd_210322112302_685803.jpg', 'https://media.travel.com.vn/tour/tfd_210322112445_914487.jpg', 'https://media.travel.com.vn/destination/dc_200914_SAPA%20(10).jpg', 1, NULL, 5, 5, 'Ngày 1 - TP.HỒ CHÍ MINH – NỘI BÀI – SAPA (Ăn trưa, tối)\r\nQuý khách tập trung tại sân bay Tân Sơn Nhất - Ga đi trong nước. Hướng dẫn viên làm thủ tục cho đoàn đáp chuyến bay đi Hà Nội. Xe Vietravel đón đoàn tại sân bay Nội Bài, khởi hành đi Sa Pa theo cung đường cao tốc hiện đại và dài nhất Việt Nam. \r\nQuý khách tiếp tục hành trình đến Sapa, nhận phòng nghỉ ngơi và ăn tối tại khách sạn Hôtel de la Coupole - Mgallery ngắm nhìn Sapa mờ sương, khách sạn được xem là “chuẩn mực của sự xa hoa” trong các khách sạn 5 sao hạng sang. Check in cùng tuyệt tác đầy mê hoặc của kiến trúc sư lừng danh Bill Bensley, với cảm hứng thiết kế từ phong cách thời trang cao cấp Pháp - Haute Couture. Đắm chìm trong khung cảnh của một thời đại Đông Dương rực rỡ với những cửa hiệu sang trọng, nhà hàng & quán bar đặc sắc. Thư giãn cùng hồ bơi bốn mùa, phòng gym, tiện lợi để đến Trạm tàu hỏa leo núi ngay dưới Khách sạn.\r\nBuổi tối Quý khách có thể từ khách sạn tản bộ đi dạo phố, ngắm nhà thờ Đá Sapa, tự do thưởng thức đặc sản vùng cao như: thịt lợn cắp nách nướng, trứng nướng, rượu táo mèo, giao lưu với người dân tộc vùng cao. \r\nNghỉ đêm tại Hôtel de la Coupole - Mgallery Sapa.\r\nNgày 2 - SAPA – BẢN CÁT CÁT – FANSIPAN – NÚI HÀM RỒNG (Ăn sáng, trưa, tối)\r\nQuý khách dùng bữa sáng buffet quốc tế tại nhà hàng Chic phong cách châu Âu. Sau bữa sáng, đoàn khởi hành tham quan:\r\n- Bản Cát Cát đẹp như một bức tranh giữa vùng phố cổ Sapa, nơi đây thu hút du khách bởi cầu treo, thác nước, guồng nước và những mảng màu hoa mê hoặc du khách khi lạc bước đến đây.\r\n- Thăm những nếp nhà của người Mông trong bản, du khách sẽ không khỏi ngỡ ngàng trước vẻ đẹp bình dị, mộc mạc. \r\nTiếp tục đến khu du lịch Fansipan Legend bằng Tàu hỏa leo núi Mường Hoa hiện đại nhất Việt Nam với tổng chiều dài gần 2000m, thưởng ngoạn bức tranh phong cảnh đầy màu sắc của cánh rừng nguyên sinh, thung lũng Mường Hoa. - Chinh phục đỉnh núi Fansipan với độ cao 3.143m hùng vĩ bằng cáp treo. Quý khách dùng bữa trưa tại nhà hàng Vân Mây, Fansipan Legend. \r\nXe đón Quý khách tại ga đến Fansipan Legend khởi hành tham quan Núi Hàm Rồng thăm vườn Lan khoe sắc, vườn hoa Trung Tâm, ngắm Núi Fansipan hùng vĩ, Cổng Trời, Đầu Rồng Thạch Lâm, Sân Mây.\r\nSau chuyến tham quan, xe đưa khách về lại khách sạn nghỉ ngơi cho đến giờ dùng bữa tối tại nhà hàng Silk Path Grand Resort.\r\nNghỉ đêm tại Sapa.\r\nNgày 3 - SAPA – NỘI BÀI – TP.HỒ CHÍ MINH (Ăn sáng, trưa)\r\nSau bữa sáng, Quý khách nghỉ ngơi đến giờ trả phòng, xe đưa Quý khách ra sân bay Nội Bài đón chuyến bay về lại Tp Hồ Chí Minh. Kết thúc chuyến tham quan nghỉ dưỡng đầy thú vị.\r\n \r\nLưu ý:\r\n✓ Đảm bảo nguyên tắc 5K, khử khuẩn.\r\n\r\n✓ Vận chuyển không quá 50% số ghế, không quá 20 khách/1 xe (bao gồm cả tài xế), tuân thủ ngồi giãn cách trên xe và đeo khẩu trang suốt quá trình di chuyển.\r\n\r\n✓ Thẻ xanh covid (khách đã tiêm vaccine ngừa covid đủ liều, thời gian hoàn tất mũi 2 trước 14 ngày và không quá 12 tháng), khách là FO đã khỏi bệnh (có giấy chứng nhận của Sở Y Tế và không quá 06 tháng).\r\n\r\n✓ Xét nghiệm covid theo yêu cầu của từng tỉnh vào thời điểm đặt dịch vụ. Vui lòng liên hệ với nhân viên tư vấn để biết thêm chi tiết.', 6),
(18, 'VINPEARL PHÚ QUỐC COMBO TRIPU 3N2D VINOASIS', 'VinOasis Phú Quốc là dòng khách sạn 5* của tập đoàn Vingroup tại Phú Quốc. Được thiết kế theo kiến trúc đương đại kết hợp với kiến trúc Á Đông, VinOasis Phú Quốc hiện lên vô cùng độc đáo và mới lạ trên đảo ngọc. Đây chắc chắn sẽ là điểm nghỉ dưỡng vô cùng lý tưởng cho du khách muốn lựa chọn một không gian đẹp - độc - lạ.', 'VinOasis Phú Quốc', 1, NULL, NULL, 5390000, 'https://media.travel.com.vn/Combo/img_24072020d9631382-9852-47da-905d-b3e6bf5e74ee.jpg', 'https://media.travel.com.vn/Combo/Slides/slide_img_240720202d855c18-d47a-45f6-81f4-fffdfe1a82b4.jpg', 'https://media.travel.com.vn/Combo/Slides/slide_img_24072020f4ef3a26-11cd-483b-9fdb-27e8f5186f17.jpg', 'https://media.travel.com.vn/Combo/Slides/slide_img_24072020f00bdc46-c966-4dc3-a762-c1f7e6cd1b92.jpg', 4, NULL, 4, 7, '- Vé máy bay khứ hồi đến Phú Quốc\r\n\r\n- Đón tiễn sân bay tại Phú Quốc\r\n\r\n- 02 đêm nghỉ dưỡng tại Resort\r\n\r\n- 02 bữa buffet sáng theo tiêu chuẩn quốc tế tại nhà hàng Nautilus của Resort\r\n\r\n- Tặng 01 ngày vui chơi không giới hạn tại Vinwonder hoặc Safari\r\n\r\n- Miễn phí ngâm bồn Jacuzzi nóng, lạnh và xông hơi tại Akoya Spa\r\n- Miễn phí xe shuttle bus vào Dương Đông theo khung giờ của Resort\r\n\r\n- Tận hưởng dịch vụ của khách sạn như bể bơi, phòng tập gym...\r\n\r\n- Miễn phí nước suối, trà, cafe trong phòng (không bao gồm minibar)\r\n\r\n- Thuế và Phí phục vụ', 6),
(19, 'Khám Phá Ngũ Hành Sơn - Phố Cổ Hội An', ' Khám Phá Ngũ Hành Sơn - Phố Cổ Hội An', 'Ngũ Hành Sơn, động Huyền Không, động Vân Thông đường lên trời, tháp Xá Lợi, chùa Linh Ứng, làng đá mỹ nghệ Non Nước, Phố cổ Hội An', 1, NULL, NULL, 700000, 'https://media.travel.com.vn/tour/tfd_211025034415_331800.jpg', 'https://media.travel.com.vn/destination/dc_200914_CAU%20RONG%20(1)_1.jpg', 'https://media.travel.com.vn/destination/dc_200914_HOI%20AN%20(4)_1.jpg', 'https://media.travel.com.vn/destination/dc_200914_HOI%20AN%20-%20CHUA%20CAU_1.jpg', 2, NULL, 6, 8, 'Ngày 1 - ĐÀ NẴNG - NGŨ HÀNH SƠN - HỘI ĂN (Ăn tối)\r\nBuổi chiều : Đà Nẵng - Ngũ Hành Sơn - Hội An                                        (Ăn tối)\r\n15:00 Xe và hướng dẫn viên Vietravel đón Quý khách tại sân bay Đà Nẵng.  Đầu tiên Quý khách tham quan Ngũ Hành Sơn thăm ngọn Thủy Sơn và chiêm ngưỡng Vọng Giang Đài, để cảm nhận được năm ngọn Kim-Mộc-Thủy-Hỏa-Thổ, thăm động Huyền Không, động Vân Thông đường lên trời, tháp Xá Lợi, chùa Linh Ứng, làng đá mỹ nghệ Non Nước. Ngũ Hành Sơn với năm ngọn núi được nằm theo hệ Ngũ Hành là một kiệt tác của thiên nhiên ban tặng cho thành phố Đà Nẵng. Nhìn từ trên cao Ngũ Hành Sơn giống như một bàn tay của Trời ấn định nơi đây là vùng đất thiêng. Quý khách ghé thăm Làng đá mỹ nghệ non nước. Xe tiếp tục khởi hành đến với thành phố cổ Hội An. Dùng cơm tối và thưởng thức những đặc sản của Hội An, Quý khách sẽ có cơ hội trải nghiệm một phong cách ẩm thực riêng biệt của nơi này.\r\nBuổi tối: Hội An - Đà Nẵng \r\nXe đưa Quý khách tham quan Phố Cổ Hội An: Chùa Cầu, Nhà Cổ Phùng Hưng, Hội Quán Phước Kiến, Cơ sở Thủ Công Mỹ Nghệ… tự do dạo phố đèn lồng nhiều màu sắc và mua những món quà lưu niệm của địa phương, thử tài trong các trò chơi dân gian như đập niêu, hát bài chòi. Xe đưa Quý khách về điểm hẹn kết thúc chương trình. Hẹn gặp lại', 6),
(20, 'Đà Nẵng - Bà Nà - Cầu Vàng - Sơn Trà - Hội An - Đà Nẵng ( Khách sạn 4*)', NULL, 'Bà Nà, Cầu Vàng, Sơn Trà, Hội An', 3, NULL, NULL, 4490000, 'https://media.travel.com.vn/tour/tfd_200714030226_936755.jpg', 'https://media.travel.com.vn/tour/tfd_200710050135_318926.jpg', 'https://media.travel.com.vn/tour/tfd_200710050237_750545.jpg', 'https://media.travel.com.vn/destination/dc_200914_CAU%20RONG%20(1)_1.jpg', 2, 1, 6, 6, 'Ngày 1 - TP.HỒ CHÍ MINH - ĐÀ NẴNG - HỘI AN Số bữa ăn: 02 (Ăn trưa, tối)\r\nQuý khách tập trung tại điểm hẹn, Ga đi trong nước, sân bay Tân Sơn Nhất. Hướng dẫn viên Vietravel hỗ trợ làm thủ tục cho đoàn đáp chuyến bay đi Đà Nẵng. Tại sân bay Đà Nẵng xe và HDV Vietravel đón đoàn đi tham quan: \r\n-  Bán đảo Sơn Trà - viếng Chùa Linh Ứng: Nơi đây có tượng Phật Quan Thế Âm cao nhất Việt Nam, đứng nơi đây, Quý khách sẽ được chiêm ngưỡng toàn cảnh thành phố, núi rừng và biển đảo Sơn Trà một cách hoàn hảo nhất. \r\n-  Phố Cổ Hội An: Chùa Cầu, Nhà Cổ Phùng Hưng, Hội Quán Phước Kiến, Cơ sở Thủ Công Mỹ Nghệ,…Quý khách tự do dạo phố đèn lồng đầy màu sắc, cảm nhận sự yên bình cổ kính và lãng mạn Phố Cổ về đêm,... Đoàn quay về Đà Nẵng, buổi tối quý khách tự do dạo phố ngắm nhìn sự lung linh và phát triển của thành phố …. Nghỉ đêm tại Đà Nẵng. \r\nNgày 2 - ĐÀ NẴNG - BÀ NÀ - CẦU VÀNG Số bữa ăn: (02 Ăn sáng, tối)\r\nDùng bữa sáng tại khách sạn. Xe đưa Quý khách đi tham quan:\r\n- Khu du lịch Bà Nà - Suối Mơ (Chi phí cáp treo & Ăn trưa tự túc): Tận hưởng không khí se lạnh của Đà Lạt tại miền Trung, đoàn tự do tham quan Chùa Linh Ứng, Hầm Rượu Debay, vườn hoa Le Jardin D’Amour, Khu Tâm linh mới của Bà Nà viếng Đền Lĩnh Chúa Linh Từ, khu vui chơi Fantasy Park, tự do chụp hình tại Cầu Vàng điểm tham quan mới siêu hot tại Bà Nà…Ăn trưa tại Bà Nà tự túc. Sau đó đoàn tiếp tục tham quan vui chơi đến giờ xuống cáp. \r\n- Buổi tối Quý khách tự túc đi dạo phố, thưởng thức đặc sản địa phương; thưởng ngoạn cảnh đẹp của Đà Nẵng về đêm, ngắm nhìn Cầu Rồng, Cầu Tình Yêu, Cầu Trần Thị Lý, Trung Tâm Thương Mại, Khu phố ẩm thực, Café - Bar - Disco… Nghỉ đêm tại Đà Nẵng.\r\nNgày 3 - ĐÀ NẴNG - TP. HỒ CHÍ MINH Số bữa ăn: 02 (Ăn sáng, trưa)\r\nDùng bữa sáng tại khách sạn. Xe đưa Quý khách đi tham quan:\r\n- Bãi biển Mỹ Khê: Một trong những bãi biển quyến rũ nhất hành tinh. Quý khách tự do dạo biển, chụp hình....\r\n- Ngũ Hành Sơn: Động Tàng Chơn, Động Hoa Nghiêm, Chùa Non Nước, Làng Đá Mỹ Nghệ,..\r\nXe tiễn Quý khách ra sân bay Đà Nẵng đón chuyến bay trở về Tp.Hồ Chí Minh. Chia tay Quý khách và kết thúc chương trình du lịch tại sân bay Tân Sơn Nhất. ', 6),
(21, 'Đà Lạt - Du lịch canh nông kết hợp Trải nghiệm gia đình “Run with kids”', 'Ngoài những điểm tham quan, check-in nổi tiếng tại Đà Lạt, hành trình này còn mang đến chương trình trải nghiệm “Run with Kids\". Hãy cùng gia đình tạo nên những kỉ niệm tuổi thơ sinh động, những bài học giá trị và hữu ích cho các bé. Chương trình trải nghiệm này với mục đích mang lại: Tạo ra môi trường trải nghiệm thú vị cho các bé cùng gia đình thông qua các hoạt động như: dựng lều, chuẩn bị một số món ăn nhẹ, tham gia trò chơi, vượt qua các thử thách,…Giúp bé có thêm các bạn mới, tự tin giao tiếp. Tạo mối quan hệ gắn kết hơn giữa các thành viên. Sinh hoạt, vui chơi trong một trường thân thiện, an toàn.', 'Kim Ngân Hill, Fairytale Land, Trải nghiệm cùng bé các hoạt động như: dựng lều, chuẩn bị một số món ăn nhẹ, tham gia trò chơi, vượt qua các thử thách,…Vườn Nông sản, Dinh I, Quảng trường Lâm Viên', 3, NULL, NULL, 3590000, 'https://media.travel.com.vn/tour/tfd_211023034840_820849.jpg', 'https://media.travel.com.vn/tour/tfd_211023034840_192278.jpg', 'https://media.travel.com.vn/tour/tfd_211023035007_043827.jpg', 'https://media.travel.com.vn/destination/dc_211023_IMG_4167.jpg', 3, 1, 6, 6, 'Ngày 1 - CITY TOUR ĐÀ LẠT (Ăn trưa, tối)\r\nXe và hướng dẫn viên đón khách tại điểm hẹn, khởi hành tham quan:\r\n\r\nKim Ngân Hill: nổi bật với vườn thú kết hợp với không gian cà phê view rừng thông ấn tượng, xen kẻ là vườn hoa Xác Pháo, Thạch Thảo, Cẩm Tú Cầu để du khách thỏa thích check-in. Vườn thú Kim Ngân Hills đang nuôi giữ và bảo tồn nhiều loài động vật độc lạ như lạc đà Alpaca, hưu sao, ngựa Ponny, cừu Valis, chó Corgi... Ngoài ra, nơi đây còn sở hữu khu vực nuôi chim lớn nhất tỉnh Lâm Đồng với nhiều loài chim như yến phụng, sáo, cu đất, két.... \r\nĂn trưa. Quý khách tiếp tục hành trình tham quan:\r\n\r\nFairytale Land: đến đây du khách như lạc vào khu vườn cổ tích của những chú lùn Hobbiton, điểm xuyến trong khu vườn là những ngôi nhà độc đáo và đầy sắc màu, những bức vẽ trên tường đầy lôi cuốn và những thảm hoa nhỏ không kém phần quyến rũ. Dạo một vòng quanh khu vườn đừng quên rảo bước vào hầm rượu vang với hơn 10.000 chai đang được lưu trữ dưới hầm.\r\nĂn tối, Quý khách về lại khách sạn nghỉ ngơi, tự do tham quan.\r\nNghỉ đêm tại Đà Lạt.\r\n \r\n\r\nNgày 2 - THAM GIA CHƯƠNG TRÌNH “RUN WITH KIDS” (Ăn sáng, trưa, tối)\r\nQuý khách ăn sáng, sau đó di chuyển đến khu cắm trại, bắt đầu chương trình trải nghiệm “Run with Kids”.\r\nVới mục đích:\r\n\r\nTạo ra môi trường trải nghiệm thú vị cho các bé cùng gia đình thông qua các hoạt động như: dựng lều, chuẩn bị một số món ăn nhẹ, tham gia trò chơi, vượt qua các thử thách,…\r\nGiúp bé có thêm các bạn mới, tự tin giao tiếp.\r\nTạo mối quan hệ gắn kết hơn giữa các thành viên.\r\nSinh hoạt, vui chơi trong một trường thân thiện, an toàn.\r\nĂn tối. Quý khách về khách sạn nghỉ ngơi.\r\nNghỉ đêm tại Đà Lạt.\r\n \r\n\r\nNgày 3 - THAM QUAN VƯỜN NÔNG SẢN ĐÀ LẠT (Ăn sáng, trưa)\r\nSáng: Quý khách ăn sáng, trả phòng khách sạn sau đó di chuyển tham quan:\r\n\r\nVườn Nông sản: tại đây Quý khách sẽ được tham quan vườn rau củ theo mùa, với diện tích rộng và đa dạng các loại rau, củ, quả,… sẽ mang đến cho gia đình cùng các bé có những trải nghiệm thú vị, các bé có thể thoải mái khám phá và tìm hiểu nhiều hơn về các loại rau củ, cách canh tác và trồng các loại cây một cách thực tế.\r\nĂn trưa. Sau đó, Quý khách sẽ tiếp tục đến tham quan, tìm hiểu về lịch sử, kiến trúc độc đáo tại:\r\n\r\nDinh I: từng là tổng hành dinh của vua Bảo Đại mang kiến trúc Pháp cổ điển, nổi bật với lối vào là con đường lát đá với hàng tràm cao vút đan vào nhau, hệ thống vườn ngự uyển, đài phun nước kết hợp hài hòa và rừng thông xanh mát reo trong gió. Tất cả tạo nên một tổng thể sang trọng và cổ kính.\r\nXe và hướng dẫn viên đưa Quý khách đến Quảng trường Lâm Viên, chụp hình lưu niệm với biểu tượng của Đà Lạt: Bông Atiso và Hoa Dã Quỳ.\r\nKết thúc chương trình, chia tay Quý khách và hẹn gặp lại ở những hành trình sau.\r\n \r\n\r\nLưu ý:\r\n\r\n-    Đối với khách trên 18 tuổi: đã tiêm đủ 02 mũi vacccine ngừa Covid 19 đã được Bộ Y tế Việt Nam cấp phép sử dụng và qua 14 ngày kể từ ngày tiêm mũi cuối cùng; hoặc đã hồi phục sau khi bị nhiễm SARS-CoV-2 (có xác nhận của Sở Y tế hoặc có xác nhận đủ kháng thể theo quy định trong trường hợp cá nhân tự điều trị tại nhà), có thời gian tính từ khi khỏi bệnh không quá 12 tháng.\r\n-    Đối với khách dưới 18 tuổi: có kết quả xét nghiệm âm tính với SARS-CoV-2 bằng phương pháp PCR trong vòng 72 giờ trước giờ khởi hành.', 6),
(22, 'Đà Lạt - Kim Ngân Hills - Quê Garden', 'Đà Lạt tinh khôi, trong lành giữa rừng thông cùng muôn hoa đua nở dưới nắng dịu dàng và những cảnh đẹp nao lòng luôn hấp dẫn du khách thập phương. Đà Lạt luôn không ngừng đổi mới và khiến người ta say đắm quên lối về với một sắc thái, một nét đẹp riêng vốn có.', 'Thác Đam B’ri, Ga Xe Lửa Đà Lạt, Đồi Chè Cầu Đất, Khu Du Lịch Kim Ngân Hills, Quê Garden', 3, NULL, NULL, 18760000, 'https://media.travel.com.vn/tour/tfd_211010030742_580334.jpg', 'https://media.travel.com.vn/tour/tfd_211010030742_852754.jpg', 'https://media.travel.com.vn/tour/tfd_211010030742_224174.jpg', 'https://media.travel.com.vn/destination/dc_200914_Da%20Lat%20%20(6).jpg', 3, 1, 6, 6, 'Ngày 1 - TP.HỒ CHÍ MINH - BẢO LỘC - THÁC ĐAM B’RI - ĐÀ LẠT (Ăn sáng, trưa, tối)\r\nQuý khách tập trung tại Công ty Vietravel (190 Pasteur, Phường Võ Thị Sáu, Quận 3, TP.Hồ Chí Minh) khởi hành đi Đà Lạt. Quý khách ăn sáng trên cung đường đi. Đến Bảo Lộc đoàn tham quan:\r\n\r\nThác Đam B’ri: được coi là ngọn thác lớn nhất vùng đất Lâm Đồng với chiều cao 60 m tạo thành 2 dòng chảy cao thấp rất hùng vĩ. Khu du lịch thác Đamb\'ri còn là một quần thể du lịch bao gồm khu vui chơi, hồ, thác và rừng nguyên sinh rộng hàng trăm hecta với khí hậu trong mát của rừng nguyên sinh Nam Tây Nguyên.\r\nSau khi dùng bữa trưa, đoàn tiếp tục hành trình đến với thành phố ngàn hoa. Buổi tối, Quý khách tự do dạo chợ đêm Đà Lạt hay thưởng thức bánh tráng nướng và ly sữa đậu nành nóng trong tiết trời se lành. Nghỉ đêm tại Đà Lạt.\r\n\r\nNgày 2 - ĐÀ LẠT - ĐỒI CHÈ CẦU ĐẤT - KHU DU LỊCH KIM NGÂN HILLS (Ăn sáng, trưa, tối)\r\nĐoàn khởi hành tham quan:\r\n\r\nGa Xe Lửa Đà Lạt: nhà ga cổ kính nhất Việt Nam và Đông Dương, có phong cách kiến trúc độc đáo với ba mái hình chóp cách điệu như ba đỉnh núi Langbiang và nhà rông Tây Nguyên.\r\nĐồi Chè Cầu Đất: trong bầu không khí trong lành của những đồi chè xanh bát ngát gần 100 năm tuổi, Quý khách tản bộ khám phá Đồi chè Oolong ở độ cao 1.650 mét và hồ nước màu ngọc bích: tham quan thực tế đồi chè Oolong, cảm nhận nguồn nguyên liệu xanh tạo nên thương hiệu của Cầu Đất Farm. Di chuyển vào Cầu Đất Farm Tea & Coffee - được thiết kế theo xu hướng không gian mở hiện đại. Quý khách trực tiếp tìm hiểu các bước để có một ấm trà ngon, thưởng thức hương vị tinh tế từ các sản phẩm trà được trồng tại nông trại Cầu Đất. Tại khu vực không gian triển lãm, Quý khách có thể tìm hiểu và lựa chọn những sản phẩm từ trà, café về làm quà tặng đầy ý nghĩa cho người thân, bạn bè (chi phí quà tặng tự túc).\r\nBuổi chiều, đoàn tiếp tục tham quan:\r\n\r\nKhu Du Lịch Kim Ngân Hills: nổi bật với vườn thú kết hợp với không gian cà phê view rừng thông ấn tượng, xen kẻ là vườn hoa Xác Pháo, Thạch Thảo, Cẩm Tú Cầu để du khách thỏa thích check-in. Vườn thú Kim Ngân Hills đang nuôi giữ và bảo tồn nhiều loài động vật độc lạ như lạc đà Alpaca, hươu sao, ngựa Ponny, cừu Valis, chó Corgi... Ngoài ra, nơi đây còn sở hữu khu vực nuôi chim lớn nhất tỉnh Lâm Đồng với nhiều loài chim như yến phụng, sáo, cu đất, két.... Tiếp tục, du khách khám phá khu “Ký ức thời bao cấp” gợi cảm xúc hoài niệm về một thời quá khứ.\r\nBuổi tối, Quý khách tự do thưởng thức café ngắm Đà Lạt lung linh về đêm hoặc tản bộ dọc bờ hồ Xuân Hương. Nghỉ đêm tại Đà Lạt.\r\n\r\nNgày 3 - ĐÀ LẠT - QUÊ GARDEN - TP. HỒ CHÍ MINH (Ăn sáng, trưa)\r\nSau khi ăn sáng xe đưa đoàn tham quan:\r\n\r\nQuê Garden: nằm dưới chân đèo Mimosa, khu vườn mê mẩn người xem với cánh đồng hoa rộng lớn cùng nhiều loài hoa nổi tiếng tại Đà Lạt khoe sắc. Đặc biệt Quê Garden tự hào là khu vườn bonsai lá kim lớn nhất Việt Nam, những chậu cây bonsai vừa to vừa đẹp, được chăm sóc và uốn nắn kỹ lưỡng vô cùng đẹp mắt. Ngoài ra, hồ cá koi với view nhìn ra đồi thông là điểm check in cực chất mà du khách không thể bỏ qua.\r\nChiều đoàn về đến TP.Hồ Chí Minh, xe đưa về điểm đón ban đầu. Chia tay Quý khách và kết thúc chương trình du lịch.\r\n\r\n***Ghi chú: Điểm tham quan có thể sắp xếp lại cho phù hợp mà vẫn bảo đảm đầy đủ nội dung của từng chương trình.\r\n\r\nLưu ý:\r\n\r\nĐảm bảo nguyên tắc 5K, khử khuẩn.\r\nVận chuyển không quá 50% số ghế, không quá 20 khách/1 xe (bao gồm cả tài xế), tuân thủ ngồi giãn cách trên xe và đeo khẩu trang suốt quá trình di chuyển.\r\nThẻ xanh covid (khách đã tiêm vaccines ngừa covid đủ liều, thời gian hoàn tất mũi 2 trước 14 ngày và không quá 12 tháng), khách là FO đã khỏi bệnh (có giấy chứng nhận của Sở Y Tế và không quá 06 tháng).\r\nXét nghiệm covid theo yêu cầu của từng tỉnh vào thời điểm đặt dịch vụ. Vui lòng liên hệ với nhân viên tư vấn để biết thêm chi tiết.', 6);

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
(5, 'Di sản nước Việt', 'https://media.travel.com.vn/destination/tf_211005_anh-profile-top-diem-den122220.jpg'),
(6, 'Thành phố', 'https://lh3.googleusercontent.com/proxy/KXM1zFW6p9TPayqftXBPG8ysnmThMVkYSUXn5mEzwOz4ZmYkpDKpVqJ2KbTKKaU1TEuQSCgI6cm_sWeGYxJkYnMcMznbanDR-pALzeig4OIvYNMehTAnQUZaL-fykJBkW1I9qAxF6gVz');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cities`
--
ALTER TABLE `cities`
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
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `tour_id` (`tour_id`);

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
  ADD KEY `tour_type_id` (`tour_type_id`),
  ADD KEY `tour_rank_id` (`tour_rank_id`),
  ADD KEY `res_id` (`res_id`),
  ADD KEY `hotel_id` (`hotel_id`),
  ADD KEY `tour_guide_id` (`tour_guide_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Chỉ mục cho bảng `tourtypes`
--
ALTER TABLE `tourtypes`
  ADD PRIMARY KEY (`tour_type_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cities`
--
ALTER TABLE `cities`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `hotels`
--
ALTER TABLE `hotels`
  MODIFY `hotel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `ranks`
--
ALTER TABLE `ranks`
  MODIFY `rank_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `res_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tourguides`
--
ALTER TABLE `tourguides`
  MODIFY `tour_guide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tours`
--
ALTER TABLE `tours`
  MODIFY `tour_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tourtypes`
--
ALTER TABLE `tourtypes`
  MODIFY `tour_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  ADD CONSTRAINT `tours_ibfk_7` FOREIGN KEY (`city_id`) REFERENCES `cities` (`city_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
