-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th4 19, 2018 lúc 03:10 PM
-- Phiên bản máy phục vụ: 5.7.21-0ubuntu0.16.04.1
-- Phiên bản PHP: 7.0.28-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `taxi`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Admin`
--

CREATE TABLE `Admin` (
  `id` int(255) NOT NULL,
  `username` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `typeadmin` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Admin`
--

INSERT INTO `Admin` (`id`, `username`, `password`, `typeadmin`) VALUES
(1, 'dong', '270fd7561d9fe560f3b7d2323e8d231b928152cca37031f2c617bfb712974601', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Boss`
--

CREATE TABLE `Boss` (
  `id` int(255) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rank` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Infrienge`
--

CREATE TABLE `Infrienge` (
  `id` int(255) NOT NULL,
  `taxiID` int(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `details` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Infrienge`
--

INSERT INTO `Infrienge` (`id`, `taxiID`, `time`, `details`, `status`) VALUES
(4, 3, '2017-09-07 19:36:29', '1 : Lái Xe HOÀNG vi phạm điều 8 của bản cam kết thực hiện quy địch về dịch vụ của tài xế tham gia phần mềm chạy sân bay.Đồng nghĩa vi phạm điều 3 ( Phạt 200.000 VNĐ ) của Thỏa thuận về biện pháp sử lý của bên cung cấp chuyến cho tài đăng ký.Công ty ĐÔNG DƯƠNG D.C xin thống báo để quý đối tác NGUYỄN TRỌNG HOÀNG được biết.Mọi thắc mắc quý đối tác vui lòng liên hệ Tổng Đài 02462810099.TRÂN TRONG !', 1),
(5, 47, '2017-09-09 20:20:42', '1 : Lái Xe KHÁNH vi phạm điều 8 của bản cam kết thực hiện quy địch về dịch vụ của tài xế tham gia phần mềm chạy sân bay.Đồng nghĩa vi phạm điều 3 ( Phạt 200.000 VNĐ ) của Thỏa thuận về biện pháp sử lý của bên cung cấp chuyến cho tài đăng ký.Công ty ĐÔNG DƯƠNG D.C xin thống báo để quý đối tác PHẠM HOÀNG KHÁNH được biết.Mọi thắc mắc quý đối tác vui lòng liên hệ Tổng Đài 02462810099.TRÂN TRONG ! ', 1),
(6, 45, '2017-09-23 16:54:44', '1 : Lái Xe KHÔI vi phạm điều 8 của bản cam kết thực hiện quy địch về dịch vụ của tài xế tham gia phần mềm chạy sân bay.Đồng nghĩa vi phạm điều 3 ( Phạt 200.000 VNĐ ) của Thỏa thuận về biện pháp sử lý của bên cung cấp chuyến cho tài đăng ký.Cho người khác mượn tài khoản ,tài xế mượn tài khoản là từng bị công ty khóa. Công ty ĐÔNG DƯƠNG D.C xin thống báo để quý đối tác NGUYỄN BẢO KHÔI được biết.Mọi thắc mắc quý đối tác vui lòng liên hệ Tổng Đài 02462810099.TRÂN TRONG ', 1),
(7, 59, '2017-09-24 20:44:57', '1 : Lái Xe HÒA vi phạm điều 8 của bản cam kết thực hiện quy địch về dịch vụ của tài xế tham gia phần mềm chạy sân bay.Đồng nghĩa vi phạm điều 3 ( Phạt 200.000 VNĐ ) của Thỏa thuận về biện pháp sử lý của bên cung cấp chuyến cho tài đăng ký.Không trung thực với công ty điều xe khác cho khách mà xe đó không thuộc công ty quản lý,cũng như tự ý điều xe xe khác cho khách mà không thông báo với ban điều xe công ty.Trực tiếp khách gọi điện phản ánh về chất lượng dịch vụ cũng như thông tin xe sai lệch với cty,ảnh hưởng đến uy tín của công ty. Công ty ĐÔNG DƯƠNG D.C xin thống báo để quý đối tác PHẠM THÁI HÒA được biết.Mọi thắc mắc quý đối tác vui lòng liên hệ Tổng Đài 02462810099.TRÂN TRONG !', 1),
(8, 60, '2017-09-26 18:00:00', '1. Theo thỏa thuận về biện pháp xử lý và mức bồi thường thiệt hại đối với uy tín và hoạt động bình thường của công ty do hành vi vi phạm quy tắc ứng xử của lái xe và bên cung cấp xe: Điều 2: Mua chuyến xong bỏ chuyến mà không báo sớm cho công ty như quy định vi phạm lần 1 phạt tiền của chuyến mà lái xe bỏ phí  230.000 đồng  và khóa tài khoản 15 ngày', 1),
(9, 54, '2017-09-27 15:42:58', '1 : Lái Xe VĂN TÂM  vi phạm điều 8 của bản cam kết thực hiện quy địch về dịch vụ của tài xế tham gia phần mềm chạy sân bay.Đồng nghĩa vi phạm điều 3 ( Phạt 200.000 VNĐ ) của Thỏa thuận về biện pháp sử lý của bên cung cấp chuyến cho tài đăng ký ,( Mua 02 chuyến 375,375 cùng 1 giờ đón khách từ sân bay về hai Quận khác nhau,chia sẻ thông tin khách hàng của công ty cho lái xe khác mà không thông báo cho công ty ).Công ty ĐÔNG DƯƠNG D.C xin thống báo để quý đối tác PHẠM VĂM TÂM được biết.Mọi thắc mắc quý đối tác vui lòng liên hệ Tổng Đài 02462810099.TRÂN TRONG !', 1),
(10, 5, '2017-09-30 13:10:46', '1 : Lái Xe ĐÔNG vi phạm điều 8 của bản cam kết thực hiện quy địch về dịch vụ của tài xế tham gia phần mềm chạy sân bay.Đồng nghĩa vi phạm điều 3 ( Phạt 200.000 VNĐ ) của Thỏa thuận về biện pháp sử lý của bên cung cấp chuyến cho tài đăng ký.Công ty ĐÔNG DƯƠNG D.C xin thống báo để quý đối tác PHẠM THẾ ĐÔNG được biết.Mọi thắc mắc quý đối tác vui lòng liên hệ Tổng Đài 02462810099.TRÂN TRONG !', 1),
(11, 62, '2017-10-01 11:52:33', '1. Theo thỏa thuận về biện pháp xử lý và mức bồi thường thiệt hại đối với uy tín và hoạt động bình thường của công ty do hành vi vi phạm quy tắc ứng xử của lái xe và bên cung cấp xe: Điều 2: Mua chuyến xong bỏ chuyến mà không báo sớm cho công ty như quy định vi phạm lần 1 phạt tiền của chuyến mà lái xe bỏ phí 220.000 đồng và khóa tài khoản 15 ngày( nhắc nhở không khóa tài khoản nhưng phạt chi phí số tiền chuyến như cam kết với công ty )', 1),
(29, 66, '2017-11-22 19:35:04', 'ĐỐI TÁC HÙNG VI PHẠM ĐIIỀU 8 CỦA BẢN CAM KẾT VÀ VI PHẠM ĐIIỀU 3 CỦA THỎA THUẬN KÝ KẾT VỚI CÔNG TY ĐÔNG DƯƠNG ( LẦN 1 PHẠT 200.000 NGHÌN ĐỒNG, VÀ NHẮC NHỞ ) .LỖI : MUA 02 CHUYẾN SÁT GIỜ NHAU 955,952 KHÔNG ĐẢM BẢO XE ĐỐI TÁC PHỤC VỤ THEO THÔNG TIN ĐĂNG KÝ ,CHUYẾN 07 giờ BX GIÁP BÁT _ NỘI BÀI và 8h30 LÊ TRỌNG TẤN,TX - NỘI BÀI.ĐỀ NGHỊ LÁI XE MỞ TK CHÚ Ý ĐỂ KHÔNG VI PHẠM CÁC BẢN CAM KẾT. TRÂN TRỌNG !', 1),
(30, 69, '2017-12-08 19:28:55', 'MUA CHUYẾN XONG BỎ CHUYẾN KHÔNG LÝ DO<br />\r\nChuyến 1073<br />\r\nVI PHẠM : BẢN CAM KẾT ĐIỀU 3.	Đón đúng khách, không bỏ khách mà không có lí do chính đáng. Nên đến điểm đón khách trước ít nhất 10 phút.<br />\r\nĐIỀU 11 . Điện thoại luôn giữ liên lạc với khách và tổng đài trong suốt quá trình nhận lịch và đón khách.<br />\r\nĐIỀU 16.  Nghiêm cấm lái xe mua chuyến xong bỏ chuyến.<br />\r\nKHOẢN 2 VỀ THỎA THUẬN BỒI THƯỜNG : Mua chuyến xong bỏ chuyến mà không báo sớm cho công ty như quy định	Phạt tiền của chuyến mà lái xe bỏ và khóa tài khoản 15 ngày.<br />\r\nĐỀ NGHỊ ĐỐI TÁC NGUYỄN VĂN TÌNH LH : 024226100999 ĐỂ PHẢN HỒI .<br />\r\nTRÂN TRỌNG !<br />\r\n', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `PayCoin`
--

CREATE TABLE `PayCoin` (
  `id` int(255) NOT NULL,
  `type` int(1) NOT NULL DEFAULT '0' COMMENT '-1:admin trừ tiền do vi phạm|0:mua chuyến|1:admin thêm coin',
  `taxiID` int(255) DEFAULT NULL,
  `tripID` int(255) DEFAULT NULL,
  `coin` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `details` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `PayCoin`
--

INSERT INTO `PayCoin` (`id`, `type`, `taxiID`, `tripID`, `coin`, `time`, `details`) VALUES
(9, -1, 21, NULL, -200, '2017-08-31 14:05:20', NULL),
(18, 1, 5, NULL, 290, '2017-09-01 23:19:45', NULL),
(19, -1, 5, NULL, -100, '2017-09-01 23:19:56', NULL),
(27, 0, 46, 45, 20, '2017-09-02 19:00:25', NULL),
(28, 0, 44, 71, 20, '2017-09-02 22:30:20', NULL),
(31, 1, 47, NULL, 500, '2017-09-03 13:06:17', NULL),
(36, 0, 46, 93, 20, '2017-09-03 16:26:51', NULL),
(37, 0, 46, 69, 40, '2017-09-03 16:27:44', NULL),
(38, 0, 48, 70, 40, '2017-09-03 17:31:07', NULL),
(42, 0, 48, 109, 30, '2017-09-04 15:53:20', NULL),
(49, 0, 46, 119, 30, '2017-09-05 11:59:26', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Promotion`
--

CREATE TABLE `Promotion` (
  `id` int(255) UNSIGNED NOT NULL,
  `userID` int(255) DEFAULT NULL,
  `timeFrom` datetime DEFAULT NULL,
  `timeTo` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `Promotion`
--

INSERT INTO `Promotion` (`id`, `userID`, `timeFrom`, `timeTo`, `status`, `details`) VALUES
(1, 11, '2017-12-04 00:00:00', '2018-03-28 00:00:00', 1, 'Uu dai manh day'),
(3, 11, '2017-12-01 13:42:48', '2017-12-11 13:42:48', 1, 'Nhanh nào anh em ơi'),
(4, 1, '2017-12-01 13:47:40', '2017-12-21 13:47:40', 1, 'Hưởng tất cả các khuyến mãi'),
(5, 4, '2017-12-01 15:11:09', '2017-12-11 15:11:09', 1, 'Hưởng lợi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Taxi`
--

CREATE TABLE `Taxi` (
  `id` int(255) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idcard` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idcar` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `typecar` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seat` int(11) DEFAULT NULL,
  `coin` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `timelife` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '1:lock|0:open',
  `idboss` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Taxi`
--

INSERT INTO `Taxi` (`id`, `username`, `password`, `name`, `phone`, `idcard`, `idcar`, `image`, `typecar`, `seat`, `coin`, `rank`, `timelife`, `status`, `idboss`) VALUES
(3, 'hoang', '201f9807a7b540c4d0139a0f30f6c8c8e30f8c9d258a8833cac1ceed04040fd5', 'NGUYỄN TRỌNG HOÀNG', '0979126656', 'MÃ LÁI XE 0012', '30E-954.81', NULL, 'Huyndai Elantra', 5, 150, NULL, '2018-12-21', 1, NULL),
(4, 'tuan', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'NGUYỄN TRỌNG TUẤN', '0942066809', 'MÃ LÁI XE 0033', '30E-923.37', NULL, 'KIA SI', 4, 500, NULL, '2018-12-14', 1, NULL),
(5, 'dong', '270fd7561d9fe560f3b7d2323e8d231b928152cca37031f2c617bfb712974601', 'PHẠM THẾ ĐÔNG', '0942377433', 'MÃ LÁI XE 0001', '30E-447.00', NULL, 'TOYOTA VIOS E', 5, 480, NULL, '2017-09-10', 0, NULL),
(21, 'Mod', 'a8698d96861f332be3627b5461c3d4ac120295ae33c8e26b9c0db82afa657084', 'Mod', '0978000999', '12345', '30H1234', NULL, 'Bmw', 4, 4700, NULL, NULL, 0, NULL),
(22, 'thuy', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'VŨ NGỌC THÙY', '0913001115', '013412310', '30A-220.85', NULL, 'FORD', 5, 130, NULL, '2017-09-19', 1, NULL),
(24, 'minh', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'LÊ NGỌC MINH', '0985935656', '001072005088', '30E-717.43', NULL, 'INNOVA', 7, 500, NULL, '2017-09-24', 1, NULL),
(44, 'xuanhung', 'f0161ee053b9d46b5d926b093c8d54e86816be9e1be28f34a9f152de6491df30', 'ỨNG XUÂN HÙNG', '0982557535', '001078010322', '30E-426.50', NULL, 'MITSUBISHI', 7, 260, NULL, NULL, 0, NULL),
(45, 'khoi', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'NGUYỄN BẢO KHÔI', '01667769999', 'MÃ LÁI XE 0014', '30E-614.53', NULL, 'Mazda3 2016', 5, 50, NULL, '2017-11-25', 0, NULL),
(46, 'dung', 'd178b6518f6dbf7c9a78ff49b0acff8ab338bac59b086136a7eedecc9f4771f3', 'DƯƠNG VĂN DŨNG', '0978900883', 'MÃ LÁI XE 0011', '30E-627.31', NULL, 'MITSUBISHI ', 5, 590, NULL, '2017-09-26', 0, NULL),
(47, '0974601990', 'bea1a96e332377c6d62b90bb36919aea728436a93c6045487f5221beb0c8507b', 'PHẠM HOÀNG KHÁNH', '0974601990', 'MÃ LÁI XE 0003', '30E-859.50', NULL, 'HONDA CITY', 5, 720, NULL, NULL, 0, NULL),
(48, '0963731789', '4c59185bcc15c33a310d4a2444f0191c0e30a218f22b08b4d9997a4629afe499', 'NGUYỄN TIẾN QUANG', '0963731789', 'MÃ LÁI XE 0002', '30E-870.42', NULL, 'TOYOTA VIOS E', 5, 510, NULL, NULL, 0, NULL),
(49, 'yen', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'LÊ THỊ HẢI YẾN', '0962428564', '145601217', '30E-888.99', NULL, 'LX570', 5, 0, NULL, '2018-10-02', 1, NULL),
(50, 'ngochanh', 'b02f7e315d7b51015ca6d26bf49e10cd6ad60b543ec6ce0260865b1f6e06b347', 'NGUYỄN NGỌC HANH', '0978358358', '001088016163', '30E-103.50', NULL, 'HYUNDAI I10', 5, 20, NULL, '2018-10-12', 1, NULL),
(51, 'hungcuong', '5a98f0199464b9f094e497e3b8f2d130d73ff41bd24019cbc9a0397b26fd4ebc', 'LƯU HÙNG CƯỜNG', '0968479989', 'MÃ LÁI XE 00013', '30E-857.16', NULL, 'HONDA CITY ', 5, 450, NULL, NULL, 0, NULL),
(54, 'vantam', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'PHẠM VĂN TÂM', '01632921979', 'MÃ LÁI XE 0040', '30A-616.94', NULL, 'VIOS E 2015', 5, 470, NULL, NULL, 0, NULL),
(59, 'thaihoa', 'd6ae7e143a65ddfb49707b632013404636d8bcc98afb66680852425c3231ae76', 'PHẠM THÁI HÒA', '01645446688', 'MÃ LÁI XE 0026', '30A-400.29', NULL, 'INNOVA 2014', 7, 340, NULL, NULL, 0, NULL),
(60, 'ngocphuc', 'fd21cc3cb5062bc4ac714c489e1ca0e37a577c19ba23b0d00e9767f598d37636', 'PHẠM NGỌC PHÚC', '0962640771', 'MÃ LÁI XE 0016', '30E-040.24', NULL, 'KIA RIO 2016', 5, 370, NULL, '2017-10-11', 0, NULL),
(62, 'dinhdung', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'ĐẶNG ĐÌNH DŨNG', '0968962019', 'MÃ LÁI XE 0008', '30E-856.55', NULL, 'Huyndai Grand', 4, 540, NULL, NULL, 0, NULL),
(66, 'vanhung', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'HOÀNG VĂN HÙNG', '0972953608', 'MÃ LÁI XE 0036', '30E-442.11', NULL, 'VIOS E 2017', 5, 90, NULL, NULL, 0, NULL),
(67, 'anhdung', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'NGUYỄN ANH DŨNG', '0961199161', 'MÃ LÁI XE 0004', '30E-817.51', NULL, 'VIOS E 2017', 5, 200, NULL, '2019-01-02', 1, NULL),
(69, 'vantinh', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'NGUYỄN VĂN TÌNH', '0962053390', 'MÃ LÁI XE 0041', '30E-802.68', NULL, 'HYUNDAI I10', 5, 50, NULL, '2017-12-29', 1, NULL),
(74, 'trunghieu89', '89c2c0845292f58ebb2f7ecb210eac2ae7ee8d87f9a3b135fe1cbe89fa23e519', 'LÊ TRUNG HIẾU', '0906622189', '001089008321', '30E-694.35', NULL, 'HONDA CITY 2017', 5, 370, NULL, '2018-11-19', 1, NULL),
(76, 'xuantien90', '4e671663a0e4cf45852172e6d18eef0d5933d92ffb70fb093d570c9286ebf31a', 'TRIỆU XUÂN TIẾN', '01252662266', 'MÃ LÁI XE 0044', '30E-528.79', NULL, 'HONDA CITY 2017', 5, 320, NULL, NULL, 0, NULL),
(77, 'quanggiang87', '267bf7ba1a2bd03d7e433e5b07165946d3760760ac763421ad4210faf4456ae3', 'TẠ QUANG GIANG', '0977609998', 'MÃ LÁI XE 0024', '30E-960.58', NULL, 'CHEVROLET.CRUZE', 5, 400, NULL, NULL, 0, NULL),
(78, 'dinhhieu94', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'DƯƠNG ĐÌNH HIẾU', '0971392642', 'MÃ LÁI XE 0009', '30A-308.05', NULL, 'Huyndai Grand', 4, 310, NULL, NULL, 0, NULL),
(79, 'vandinh84', '93787c2dae5a7f272672d9201bcdec3d80cb1d8a524cef35d82aa444715ffe97', 'NGUYỄN VĂN ĐỊNH', '0979145658', 'MÃ LÁI XE 0035', '35A-067.45', NULL, 'KIA SORENTO 2015', 7, 500, NULL, NULL, 0, NULL),
(80, 'vansung80', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'TRẦN VĂN SÙNG', '0904063636', 'MÃ LÁI XE 0039', '30E-251.70', NULL, 'HONDA CITY 2016', 5, 300, NULL, NULL, 0, NULL),
(81, 'tientuan84', '937377f056160fc4b15e0b770c67136a5f03c15205b4d3bf918268fefa2c6d0a', 'LÊ TIẾN TUẤN', '0973766879', 'MÃ LÁI XE 0028', '30A-835.48', NULL, 'KIA CARENS 2015', 7, 530, NULL, '2018-12-17', 0, NULL),
(82, 'nguyenbason87', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'NGUYỄN BÁ SƠN', '0972121995', 'MÃ LÁI XE 0017', '30E-206.96', NULL, 'FORTUNE 2016', 7, 400, NULL, NULL, 0, NULL),
(84, 'nguyenvanlong84', '286a69f988e1bcbdaa60dede45bbf893a7567cd8ccc71715a597f30e9c9b8ab2', 'NGUYỄN VĂN LONG', '0915081932', 'MÃ LÁI XE 0022', '30E-610.38', NULL, 'HYUNDAI I10', 4, 500, NULL, NULL, 0, NULL),
(85, 'nguyenduchien71', 'ed986fab173125f7767c680b5cf0a04f5379dfd0e5e7e9f83afb6be7101efdcc', 'NGUYỄN ĐỨC HIỀN', '0122233171', 'MÃ LÁI XE 0019', '30E-785.96', NULL, 'TOYOTA VIOS ', 5, 220, NULL, NULL, 0, NULL),
(86, 'nguyenphuongthao77', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'NGUYỄN PHƯƠNG THẢO', '0985670856', 'MÃ LÁI XE 0020', '29B-159.38', NULL, 'FORD TRANSIT', 16, 900, NULL, NULL, 0, NULL),
(87, 'nguyendinhson84', '39ab0c8ce72ef1c13216a161981487e45f01f1edc9ff8d62bf74d751ea34e9b4', 'NGUYỄN ĐÌNH SƠN', '0982046866', 'MÃ LÁI XE 0018', '30E-386.54', NULL, 'TOYOTA VIOS ', 5, 420, NULL, NULL, 0, NULL),
(88, 'doanhtu91', '9fa4c07cfb8cd2db6642356af4ca0f63f70d4b28f04c5bd49b55602015ff2adf', 'ĐỖ ANH TÚ', '0945386165', 'MÃ LÁI XE 0010', '30E-822.04', NULL, 'KIA CERATO 2017', 5, 470, NULL, NULL, 0, NULL),
(89, 'phamduyphuong86', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'PHẠM DUY PHƯƠNG', '0978113595', 'MÃ LÁI XE 0023', '30E-406.81', NULL, 'TOYOTA VIOS 2016', 5, 500, NULL, NULL, 0, NULL),
(90, 'nguyenvanduy88', 'a320480f534776bddb5cdb54b1e93d210a3c7d199e80a23c1b2178497b184c76', 'NGUYỄN VĂN DUY', '0976086866', 'MÃ LÁI XE 0021', '30E-858.17', NULL, 'TOYOTA VIOS 2017', 5, 460, NULL, NULL, 0, NULL),
(91, 'nguyenvanthang64', '62095bfb2895130b6499e96f051740b08a3b7a5ebc37f43ba8c9bf0bd9704f06', 'NGUYỄN VĂN THẮNG', '0918468764', 'MÃ LÁI XE 0045', '30E-867.57', NULL, 'Huyndai Grand', 5, 470, NULL, NULL, 0, NULL),
(92, 'dangvinhdu89', 'e0ce8f4a394d15c3601081a64e1bcfd33e4552ec46a93af46ec814c72aa1c942', 'ĐẶNG VINH DỰ', '0868989078', 'MÃ LÁI XE 0046', '30E-980.30', NULL, 'HYUNDAI I10', 5, 20, NULL, NULL, 0, NULL),
(93, 'nguyenmanhhung83', '403cfc620c95b3c8b74890a0c22521c0f7e54a53084934cb6ef0dcee3a14e70e', 'NGUYỄN MẠNH HÙNG', '0916609589', 'MÃ LÁI XE 0047', '30E-694.04', NULL, 'TOYOTA VIOS ', 5, 410, NULL, NULL, 0, NULL),
(94, 'tranquangdung70', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'TRẦN QUANG DŨNG', '0981385758', 'MÃ LÁI XE 0048', '30E-492.55', NULL, 'INNOVA 2017', 7, 440, NULL, NULL, 0, NULL),
(95, '0942377433', '60d6d209582fd3a0a0a3ee8fc429b2a79a6a0eca81ecd372c668522963266dce', 'ĐẶT XE NỘI BÀI', '02422610099', 'admin', '30A- 886.68', NULL, 'FORD TRANSIT', 16, 1880, NULL, NULL, 0, NULL),
(96, 'caovu81', '4cb97eb422cdaf5ac6a052ea3e82611002cc28733f1a5ddfc49a41a5b054037a', 'NGUYỄN CAO VŨ', '0969132222', 'MÃ LÁI XE 0049', '30E-130.23', NULL, 'TOYOTA INNOVA 2015', 7, 500, NULL, NULL, 0, NULL),
(97, 'tuananh75', '13073d2d672f23dd9eea53e4c131273b97a17d32cd033d84b50b8d2a3f1863e3', 'NGUYỄN TUẤN ANH', '0972714716', 'MÃ LÁI XE 0050', '30E-539.25', NULL, 'KIA CERATO 2017', 5, 480, NULL, NULL, 0, NULL),
(98, 'thaiduong87', 'e8535f80493acee6657cd791880164a1688227a1d82c3af34c50cca56b1d34a1', 'VŨ THÁI DƯƠNG', '0986808268', 'MÃ LÁI XE 0051', '30E-692.50', NULL, 'HONDA CITY 2017', 5, 410, NULL, NULL, 0, NULL),
(99, 'ngocha88', 'ecc12c7f88c58c0d244b98b217c147861937f870eaac2449224e959d12396485', 'NGUYỄN NGỌC HÀ', '0972526416', 'MÃ LÁI XE 0052', '30E-093.24', NULL, 'HYUNDAI GRAND', 5, 500, NULL, NULL, 0, NULL),
(100, 'minhhai83', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'PHÙNG MINH HẢI', '0962874999', 'MÃ LÁI XE 0053', '30E-546.40', NULL, 'TOYOTA VIOS E 2017', 5, 500, NULL, NULL, 0, NULL),
(101, 'taxi_test', '6ca13d52ca70c883e0f0bb101e425a89e8624de51db2d2392593af6a84118090', 'Taxi test', '0949202294', '123456789', '123457', NULL, 'bbb', 5, 9300, NULL, '2017-12-09', 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Trip`
--

CREATE TABLE `Trip` (
  `id` int(255) NOT NULL,
  `name` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addressfrom` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addressto` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PNR` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0:available|1:taken',
  `seat` int(11) DEFAULT NULL,
  `coin` int(11) NOT NULL DEFAULT '0',
  `taxiid` int(255) DEFAULT NULL,
  `prioritize` int(255) DEFAULT NULL,
  `price` int(255) NOT NULL DEFAULT '0',
  `num_guess` int(255) NOT NULL DEFAULT '0',
  `is_round` int(1) NOT NULL DEFAULT '0' COMMENT '1:yes|0:no',
  `details` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `userid` int(255) DEFAULT NULL,
  `taxi_sell` int(255) DEFAULT NULL COMMENT 'sold by this taxi',
  `approve` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Trip`
--

INSERT INTO `Trip` (`id`, `name`, `phone`, `addressfrom`, `addressto`, `PNR`, `time`, `status`, `seat`, `coin`, `taxiid`, `prioritize`, `price`, `num_guess`, `is_round`, `details`, `rank`, `userid`, `taxi_sell`, `approve`) VALUES
(45, '( KHÁCH )', '0963268286', 'Cổng công viên điện lực,NAM TỪ LIÊM', 'noi bai', '', '2017-09-03 06:00:00', 1, 4, 20, 46, NULL, 220, 2, 0, '', NULL, NULL, NULL, 0),
(69, 'LE HUU LOI', '0963033960', 'ngách 37,ngõ 167 Tây Sơn, Đống Đa,HN', 'noi bai', '', '2017-09-04 04:30:00', 1, 4, 40, 46, NULL, 240, 2, 0, 'LX NHAN CHUYEN GOI LUON CHO K', NULL, NULL, NULL, 1),
(70, 'THÀNH NGUYÊN', '0904892381', '1E Yên Bái,phố Huế,Hai Bà Trưng', 'noi bai', '', '2017-09-04 04:30:00', 1, 4, 40, 48, NULL, 240, 2, 0, 'LX GOI LUON CHO K', NULL, NULL, NULL, 0),
(71, 'ABC', '0903277899', 'tân mai,hoàng mai,HN', 'noi bai', '', '2017-09-03 04:45:00', 1, 4, 20, 44, NULL, 250, 2, 0, 'lx goi luon cho k', NULL, NULL, NULL, 1),
(74, 'NGUYEN THI THUY', '01676336990', 'NOI BAI', '21 Dương Xá,Gia Lâm ,HN', '', '2017-09-09 14:25:00', 1, 5, 60, 51, NULL, 300, 2, 0, 'LX GOI K LUON', NULL, NULL, NULL, 1),
(80, 'HO THUY LINH', '0948259119', 'NOI BAI', 'METECK ,LONG BIÊN,HN', 'VJ194', '2017-09-02 13:10:00', 1, 4, 50, 3, NULL, 280, 2, 0, 'LX goi k luon', NULL, 11, NULL, 1),
(81, 'VU HUU LUAN', '0982699155', 'NOI BAI', 'VAN QUAN,HA DONG,HN', 'VN248', '2017-09-05 17:00:00', 1, 5, 40, 48, NULL, 280, 4, 0, 'LX GOI K LUON', NULL, NULL, NULL, 0),
(82, 'LE HOANG EM', '0909222997', 'NOI BAI ( 10k/1km ) khoang 70km', 'BAC GIANG (trung cap bien phong 1 )', 'VN236', '2017-09-05 14:00:00', 1, 5, 80, 48, NULL, 700, 2, 0, 'LX goi k luon, tinh theo km  ( 10k/1km ) khoang 70km', NULL, NULL, NULL, 1),
(85, 'CAO THI MINH', '0962345317', 'Nga 3,Ba La,Ha Dong,HN', 'noi bai', '', '2017-09-05 08:15:00', 1, 4, 50, 48, NULL, 250, 2, 0, 'LX goi k luon', NULL, NULL, NULL, 1),
(87, 'ABC', '01274059543', 'So 22 Quan Thanh, Ba Dinh,HN', 'noi bai', '', '2017-09-05 13:10:00', 1, 5, 30, 48, NULL, 220, 2, 0, 'LX goi k luon', NULL, NULL, NULL, 1),
(93, 'LE DUC ANH', '0988156966', 'NOI BAI', 'so 13,ngo 72 TON THAT TUNG,DONG DA', 'VJ164', '2017-09-04 02:00:00', 1, 5, 20, 5, NULL, 270, 2, 0, 'LX goi k luon', NULL, 11, NULL, 1),
(107, 'Anh Hà', '0912712736', 'tổ dân phố Cầu Đơ 4, đường Lê Hồng Phong, Hà Đông, Hà Nội', 'Sân bay Nội Bài', '', '2017-09-05 05:00:00', 1, 4, 40, 48, NULL, 250, 1, 0, 'lái xe nhận chuyến liên lạc luôn với khách', NULL, NULL, NULL, 1),
(109, 'ABC', '0918236208', 'số 5 CỬA ĐÔNG', 'noi bai', '', '2017-09-04 18:20:00', 1, 4, 30, 48, NULL, 220, 2, 0, 'GOI LUÔN KHACH', NULL, NULL, NULL, 1),
(113, 'TRẦN ANH PHƯƠNG', '0936428988', 'KĐT Đại Thanh,Cầu Tó', 'noi bai', '', '2017-09-05 10:30:00', 1, 5, 50, 48, NULL, 250, 2, 0, 'lx  gọi k luôn', NULL, NULL, NULL, 1),
(119, 'NGUYỄN HOÀNG AN', '0988881366', '245 ĐỊNH CÔNG,HOÀNG MAI', 'noi bai', '', '2017-09-05 14:00:00', 1, 4, 30, 46, NULL, 220, 1, 0, 'LX GOI LUÔN K', NULL, NULL, NULL, 1),
(1252, 'Giang A Hien', '0912121121', '129 Cầu Giấy, Yên Hoà, Cầu Giấy, Hà Nội, Việt Nam', '235 Cầu Giấy, Dịch Vọng, Cầu Giấy, Hà Nội, Việt Nam', '', '2018-03-28 14:00:00', 0, 5, 0, NULL, NULL, 20, 1, 0, '', NULL, 11, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `User`
--

CREATE TABLE `User` (
  `id` int(255) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rank` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `User`
--

INSERT INTO `User` (`id`, `username`, `password`, `name`, `phone`, `address`, `rank`) VALUES
(1, 'test', '270fd7561d9fe560f3b7d2323e8d231b928152cca37031f2c617bfb712974601', 'test', '9999', 'Ha Noi', 1),
(3, 'hien', '270fd7561d9fe560f3b7d2323e8d231b928152cca37031f2c617bfb712974601', '', '0912345678', '', 1),
(4, 'hung', 'a40ccfd5cafbdc546b5bcd2110bf4af96b39c7ea228244e3691c77b989745712', 'Hà Quốc Hưng', '0912828182', 'Nam ĐỊnh', 1),
(5, 'Trandat', 'd6214d215abf89fabde6b853f0162788fab43192c3f6fc5ffe68b0ca6d3fc532', 'Trần Tiến Đạt', '0964836322', 'Tdp Tân phong Phường Thụy phương Bắc từ liêm Hà nội', 1),
(7, '0942377433', '1180749881b3390540b0d21818a848ee830154b4bb2e9b401a3e1f69ed4bc851', '0942377433', 'HÀ NỘI', '', 1),
(10, 'huy', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '0912881812', '', NULL),
(11, 'hoai', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '0947443233', '', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `Admin`
--
ALTER TABLE `Admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `Boss`
--
ALTER TABLE `Boss`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Chỉ mục cho bảng `Infrienge`
--
ALTER TABLE `Infrienge`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taxiID` (`taxiID`);

--
-- Chỉ mục cho bảng `PayCoin`
--
ALTER TABLE `PayCoin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taxiID` (`taxiID`),
  ADD KEY `PayCoin_ibfk_2` (`tripID`);

--
-- Chỉ mục cho bảng `Promotion`
--
ALTER TABLE `Promotion`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `Taxi`
--
ALTER TABLE `Taxi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD KEY `idboss` (`idboss`);

--
-- Chỉ mục cho bảng `Trip`
--
ALTER TABLE `Trip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taxiid` (`taxiid`),
  ADD KEY `prioritize` (`prioritize`),
  ADD KEY `userid` (`userid`),
  ADD KEY `taxi_sell` (`taxi_sell`) USING BTREE;

--
-- Chỉ mục cho bảng `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `Admin`
--
ALTER TABLE `Admin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `Boss`
--
ALTER TABLE `Boss`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `Infrienge`
--
ALTER TABLE `Infrienge`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT cho bảng `PayCoin`
--
ALTER TABLE `PayCoin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT cho bảng `Promotion`
--
ALTER TABLE `Promotion`
  MODIFY `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT cho bảng `Taxi`
--
ALTER TABLE `Taxi`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT cho bảng `Trip`
--
ALTER TABLE `Trip`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1253;
--
-- AUTO_INCREMENT cho bảng `User`
--
ALTER TABLE `User`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `Infrienge`
--
ALTER TABLE `Infrienge`
  ADD CONSTRAINT `Infrienge_ibfk_1` FOREIGN KEY (`taxiID`) REFERENCES `Taxi` (`id`);

--
-- Các ràng buộc cho bảng `PayCoin`
--
ALTER TABLE `PayCoin`
  ADD CONSTRAINT `PayCoin_ibfk_1` FOREIGN KEY (`taxiID`) REFERENCES `Taxi` (`id`),
  ADD CONSTRAINT `PayCoin_ibfk_2` FOREIGN KEY (`tripID`) REFERENCES `Trip` (`id`);

--
-- Các ràng buộc cho bảng `Trip`
--
ALTER TABLE `Trip`
  ADD CONSTRAINT `Trip_ibfk_1` FOREIGN KEY (`taxiid`) REFERENCES `Taxi` (`id`),
  ADD CONSTRAINT `Trip_ibfk_2` FOREIGN KEY (`prioritize`) REFERENCES `Taxi` (`id`),
  ADD CONSTRAINT `Trip_ibfk_3` FOREIGN KEY (`userid`) REFERENCES `User` (`id`),
  ADD CONSTRAINT `Trip_ibfk_4` FOREIGN KEY (`taxi_sell`) REFERENCES `Taxi` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
