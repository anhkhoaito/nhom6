-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th9 28, 2018 lúc 04:06 AM
-- Phiên bản máy phục vụ: 5.7.21
-- Phiên bản PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `baitap`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufactures`
--

DROP TABLE IF EXISTS `manufactures`;
CREATE TABLE IF NOT EXISTS `manufactures` (
  `manu_ID` int(11) NOT NULL AUTO_INCREMENT,
  `manu_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manu_img` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`manu_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `manufactures`
--

INSERT INTO `manufactures` (`manu_ID`, `manu_name`, `manu_img`) VALUES
(1, 'Apple', 'Apple-iPhone-XS.jpg'),
(2, 'Samsung', 'samsung-galaxy-j8-400x460.png'),
(3, 'Oppo', 'oppo-a3s-red-400x460.png'),
(4, 'xiaomi', 'tải xuống.jpg'),
(5, 'Nokia', 'nokia-2-5-400x460.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PRICE` int(11) NOT NULL,
  `image` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `MANU_ID` int(11) NOT NULL,
  `TYPE_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`ID`, `name`, `PRICE`, `image`, `DESCRIPTION`, `MANU_ID`, `TYPE_ID`) VALUES
(1, 'Laptop Asus VivoBook X510UA i3 7100U/4GB/1TB/Win10/(BR650T)', 11200000, 'asus-x510ua-i3-7100u-br650t-ava-1-600x600.jpg', 'Đặc điểm nổi bật của Asus VivoBook X510UA i3 7100U/4GB/1TB/Win10/(BR650T)\r\n\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Sách hướng dẫn, Thùng máy, Adapter sạc\r\n\r\nAsus X510UA sở hữu cấu hình i3 thế hệ 7 ổn định cùng một thiết kế ấn tượng. Đây là chiếc máy tính xách tay thích hợp cho phân khúc người dùng là học sinh - sinh viên, dân văn phòng.', 2, 2),
(2, 'Laptop Asus ZenBook UX370U i7 8550U/8GB/512GB/Win10/(C4217TS)\r\nsmart', 41790000, 'asus-ux370u-i7-8550u-8gb-512gb-win10-c4217ts-but-600x600-600x600.jpg', 'Đặc điểm nổi bật của Asus ZenBook UX370U i7 8550U/8GB/512GB/Win10/(C4217TS)\r\n\r\nBộ sản phẩm chuẩn: Sách hướng dẫn, Bao da (asus), Bút cảm ứng, Thùng máy, Adapter sạc, Cáp (USB-C sang HDMI)\r\n\r\nASUS ZenBook Flip S UX370U là một chiếc laptop gập xoay siêu mỏng, siêu nhẹ. Đây là một thiết bị kết hợp vừa là một chiếc máy tính xách tay đầy phong cách, vừa là chiếc máy tính bảng tiện lợi. Bộ vi xử lý Intel Core i7 cho phép bạn dễ dàng xử lý các tác vụ thường ngày. Máy còn hỗ trợ bút stylus, nên đây là người đồng hành tuyệt vời với Windows 10!', 2, 1),
(3, 'Laptop Asus ROG Strix Scar GL503GE i7 8750H/8GB/1TB+128GB/4GB GTX1050Ti/Win10/(EN021T)', 29999990, 'asus-gl503ge-en021t-19-600x600.jpg', 'Đặc điểm nổi bật của Asus ROG Strix Scar GL503GE i7 8750H/8GB/1TB+128GB/4GB GTX1050Ti/Win10/(EN021T)\r\n\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc\r\n\r\nAsus GL503GE là một chiếc laptop được thiết kế để dành riêng cho game thủ, với đường nét mạnh mẽ trong thiết kế, màn hình chơi game rất mượt mà đặc biệt là những game hành động, cấu hình cao với chip i7 thế hệ thứ 8 đáp ứng tốt mọi nhu cầu của game thủ.', 3, 3),
(4, 'Laptop Asus FX504GD i7 8750H/8GB/1TB+128GB/4GB GTX1050/Win10/(E4081T)\r\n', 24990000, 'asus-fx504gd-e4081t-avatar-600x600.jpg', 'Đặc điểm nổi bật của Asus FX504GD i7 8750H/8GB/1TB+128GB/4GB GTX1050/Win10/(E4081T)\r\n\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc\r\n\r\nAsus FX504GD i7 8750H là chiếc máy tính xách tay mạnh mẽ được tích hợp Windows 10 và chip Core i7 mạnh mẽ mang lại trải nghiệm chơi game đỉnh cao. Hệ thống tản nhiệt chống bụi thông minh giúp đảm bảo tuổi thọ và ổn định hiệu suất hệ thống. Bên cạnh đó, màn hình Full HD cực đẹp và âm thanh vòm cực đỉnh sẽ nâng cao trải nghiệm gaming tuyệt vời của bạn.', 4, 1),
(5, 'Laptop Asus VivoBook S410UA i7 8550U/4G/256GB/Win10/(EB220T)\r\n', 19990000, 'asus-s410ua-i7-8550u-4g-256gb-win10-eb220t-cava-600x600.jpg', 'Đặc điểm nổi bật của Asus VivoBook S410UA i7 8550U/4G/256GB/Win10/(EB220T)\r\n\r\nBộ sản phẩm chuẩn: Sách hướng dẫn, Thùng máy, Adapter sạc\r\n\r\nMáy tính xách tay Asus S410UA là sự kết hợp tuyệt vời giữa sự mỏng nhẹ - thời trang và một cấu hình mạnh mẽ với Core i7 thế hệ thứ 8 đáp ứng tốt các tác vụ từ thông thường đến cả chơi các tựa game yêu cầu cấu hình khá.', 4, 4),
(6, 'Laptop Apple Macbook Air MQD32SA/A i5 1.8GHz/8GB/128GB (2017)', 22900000, 'apple-macbook-air-mqd32sa-a-i5-5350u-400-1-450x300-600x600.jpg', 'Đặc điểm nổi bật của Apple Macbook Air MQD32SA/A i5 1.8GHz/8GB/128GB (2017)\r\n\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc(+ cóc sạc)\r\n\r\nMacbook Air MQD32SA/A i5 5350U với thiết kế vỏ nhôm nguyên khối Unibody rất đẹp, chắc chắn và sang trọng. Macbook Air là một chiếc máy tính xách tay siêu mỏng nhẹ, hiệu năng ổn định mượt mà, thời lượng pin cực lâu, phục vụ tốt cho nhu cầu làm việc lẫn giải trí.', 1, 1),
(7, 'Laptop HP 15 da0058TU i5 8250U/4GB/1TB/Win10/(4NA92PA)', 14490000, 'hp-15-da0058tu-4na92pa-450b2s-450x300-600x600.jpg', 'Đặc điểm nổi bật của HP 15 da0058TU i5 8250U/4GB/1TB/Win10/(4NA92PA)\r\n\r\nBộ sản phẩm chuẩn: Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc\r\n\r\nLaptop HP 15 da0058TU i5 8250U với chip Intel Core i5 thế hệ thứ 8 mới cho máy hiệu năng hoạt động mượt mà cùng khả năng tiết kiệm điện năng, ổ cứng HDD 1 TB lưu trữ dữ liệu thoải mái. Cấu hình máy tính xách tay HP này sở hữu phù hợp cho các tác vụ công việc văn phòng cũng như học tập của học sinh - sinh viên.', 2, 2),
(8, 'Laptop HP Pavilion 14 ce0021TU i3 8130U/4GB/1TB/Win10/(4MF00PA)\r\n12990000', 12990000, 'hp-pavilion-14-ce0021tu-i-4mf00pa-450a-600x600.jpg', 'Đặc điểm nổi bật của HP Pavilion 14 ce0021TU i3 8130U/4GB/1TB/Win10/(4MF00PA)\r\n\r\nBộ sản phẩm chuẩn: Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc\r\n\r\nMáy tính xách tay HP Pavilion 14 ce0021TU sở hữu cấu hình vừa đủ với core i3 thế hệ thứ 8 KabyLake Refresh cùng mức giá bán hấp dẫn sẽ phù hợp với học sinh, sinh viên hay những người thường xuyên sử dụng với những ứng dụng không quá nặng.', 2, 2),
(9, 'Laptop HP Pavilion 14 ce0021TU i3 8130U/4GB/1TB/Win10/(4MF00PA)\r\n12990000', 12990000, 'hp-pavilion-14-ce0021tu-i-4mf00pa-450a-600x600.jpg', 'Đặc điểm nổi bật của HP Pavilion 14 ce0021TU i3 8130U/4GB/1TB/Win10/(4MF00PA)\r\n\r\nBộ sản phẩm chuẩn: Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc\r\n\r\nMáy tính xách tay HP Pavilion 14 ce0021TU sở hữu cấu hình vừa đủ với core i3 thế hệ thứ 8 KabyLake Refresh cùng mức giá bán hấp dẫn sẽ phù hợp với học sinh, sinh viên hay những người thường xuyên sử dụng với những ứng dụng không quá nặng.', 2, 2),
(10, 'Laptop HP Pavilion x360 ba063TU i3 7100U/4GB/500GB/Win10/(2GV25PA)', 11990000, 'hp-pavilion-x360-ba063tu-450x300-600x600.jpg', 'Đặc điểm nổi bật của HP Pavilion x360 ba063TU i3 7100U/4GB/500GB/Win10/(2GV25PA)\r\n\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc\r\n\r\nHP Pavilion x360 ba063TU i3 sở hữu cấu hình tầm trung, đáp ứng tốt các nhu cầu cơ bản với màn hình cảm ứng và xoay lật.', 2, 2),
(11, 'Laptop Acer Nitro 5 AN515 52 70AE i7 8750H/8GB/1TB/4GB GTX1050Ti/Win10/(Q3LSV.007)', 24990000, 'acer-nitro-5-an515-52-70ae-q3lsv007-ava-600x600.jpg', 'Đặc điểm nổi bật của Acer Nitro 5 AN515 52 70AE i7 8750H/8GB/1TB/4GB GTX1050Ti/Win10/(Q3LSV.007)\r\n\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Dây nguồn,Adapter sạc,Thùng máy,Sách hướng dẫn\r\n\r\nAcer Nitro 5 AN515 52 70AE vẫn sở hữu vẻ thiết kế hầm hố đậm chất riêng của dòng Laptop Gaming kết hợp với  hai tông màu đỏ và đen mạnh mẽ. Sức mạnh của laptop Acer Nitro 5 AN515 nay lại như được tối ưu thêm với Card đồ họa rời, NVIDIA GeForce GTX 1050Ti được tích hợp, cho khả năng chiến các tựa game có cấu hình cao mượt mà, cho game thủ hòa mình vào cuộc chơi.', 2, 2),
(12, 'Laptop Acer Aspire E5 576G 88EP i7 8550U/4GB/1TB+16GB/2GB MX130/Win10/(NX.H2ESV.001)\r\n', 18490000, 'acer-aspire-e5-576g-88ep-nxgwnsv001-ava-600x600.jpg', 'Tiếp nối sau sự ra mắt thành công bộ nhớ đệm Intel Optane trên sản phẩm thuộc phân khúc tầm trung. Thương hiệu laptop Acer nay đã cho ra mắt thêm một sản phẩm máy tính được tích hợp sẵn bộ nhớ đệm Intel Optane 16 GB trên Acer Aspire E5 576G 88EP (NX.H2ESV.001). Ngoài ra máy còn được trang bị card đồ rời NVIDIA Geforce MX130, 2GB cho hiệu năng vô cùng mạnh mẽ, đáp ứng tốt các thao tác xử lý đồ họa, kĩ thuật và các tựa game yêu cầu cấu hình cao.', 2, 12),
(13, 'Laptop Acer Swift SF314 54 51QL i5 8250U/4GB/1TB/Win10/(NX.GXZSV.001)\r\n', 17290000, 'acer-swift-sf314-54-51ql-nxgxzsv001-dai-dien-450x300-1-450x300-450x300-600x600.jpg', 'Đặc điểm nổi bật của Acer Swift SF314 54 51QL i5 8250U/4GB/1TB/Win10/(NX.GXZSV.001)\r\n\r\nBộ sản phẩm chuẩn: Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc\r\n\r\nAcer Swift SF314 54 51Q được trang bị vi xử lý Intel Core i5 Kabylake Refresh mới nhất (thế hệ thứ 8). Chiếc máy tính xách tay có thiết kế mỏng nhẹ, đơn giản, hiện đại đi cùng một cấu hình mạnh và nhiều công nghệ mới được tích hợp. ', 2, 2),
(14, 'Laptop Acer Swift SF315 51 530V i5 8250U/4GB/1TB/Win10/(NX.GSKSV.001)', 16990000, 'acer-swift-sf315-51-530v-i5-8250u-xanhduong-dai-dien-450x300.jpg', 'Đặc điểm nổi bật của Acer Swift SF315 51 530V i5 8250U/4GB/1TB/Win10/(NX.GSKSV.001)\r\n\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc\r\n\r\nAcer Swift SF315 51 530V được trang bị vi xử lý Intel Core i5 Kabylake Refresh mới nhất (thế hệ thứ 8). Chiếc laptop có thiết kế mỏng nhẹ, đơn giản, hiện đại đi cùng một cấu hình mạnh và nhiều công nghệ mới được tích hợp.', 2, 2),
(15, 'Laptop Acer Aspire E5 576G 52YQ i5 8250U/4GB/1TB/2GB MX130/Win10/(NX.GWNSV.001)', 14890000, 'acer-aspire-e5-576g-52yq-nxgwnsv001-thumb-600x600.jpg', 'Đặc điểm nổi bật của Acer Aspire E5 576G 52YQ i5 8250U/4GB/1TB/2GB MX130/Win10/(NX.GWNSV.001)\r\n\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc\r\n\r\nLaptop Acer Aspire E5 576G 52YQ i5 8250U là phiên bản máy tính được trang bị cấu hình khá mạnh mẽ với card đồ hoạ rời NVIDIA Geforce. Máy được cài sẵn hệ điều hành Windows 10 bản quyền giúp sử dụng ổn định, tiện lợi hơn', 2, 2),
(16, 'Điện thoại Samsung Galaxy A6 (2018)', 5490000, 'samsung-galaxy-a6-2018-1-400x460 (1).png', 'Samsung Galaxy A6 (2018) là chiếc smartphone tầm trung vừa được ra mắt của Samsung bên cạnh chiếc Samsung Galaxy A6+ (2018).', 2, 2),
(17, 'Điện thoại Samsung Galaxy S9+ 128GB Hoàng Kim', 24490000, 'samsung-galaxy-s9-plus-128gb-vang-dong-2-400x460.png', 'Samsung Galaxy S9 Plus 128GB Hoàng Kim, siêu phẩm smartphone hàng đầu trong thế giới Android đã ra mắt với màn hình vô cực, camera chuyên nghiệp như máy ảnh và hàng loạt những tính năng cao cấp đầy hấp dẫn.', 2, 2),
(18, 'Điện thoại Samsung Galaxy J3 Pro', 3100000, 'samsung-galaxy-j3-2017-2-400x460.png', 'Samsung Galaxy J3 Pro là bản nâng cấp mạnh mẽ về cả ngoại hình và cấu hình so với chiếc Samsung Galaxy J3 tiền nhiệm, hứa hẹn sẽ đem đến cho người dùng một smartphone xứng đáng với giá tiền bỏ ra.', 2, 2),
(21, 'Máy tính bảng iPad Pro 10.5 inch Wifi 64GB (2017)', 16990000, 'ipad-pro-105-inch-wifi-64gb-2017-400-400x460.png', 'Đặc điểm nổi bật của iPad Pro 10.5 inch Wifi 64GB (2017)\r\n\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\niPad Pro 10.5 inch Wifi 64GB (2017) với kích thước màn hình nhỏ hơn, viền màn hình siêu mỏng cùng hiệu năng mạnh mẽ sẽ đáp ứng tốt cho bạn trong mọi nhu cầu sử dụng hằng ngày.', 4, 4),
(19, 'Điện thoại Samsung Galaxy S8 Plus', 17990000, 'samsung-galaxy-s8-plus-tim-2-400x460.png', 'Đặc điểm nổi bật của Samsung Galaxy S8 Plus\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp OTG (2 đầu chuyển: USB-C sang micro USB, USB-C sang USB-C), Cáp, Cây lấy sim\r\n\r\nGalaxy S8 và Galaxy S8 Plus hiện đang là chuẩn mực smartphone về thiết kế trong tương lai. Sau nhiều ngày được sử dụng, mình xin chia sẻ những cảm nhận chi tiết nhất về chiếc Galaxy S8 Plus - chiếc điện thoại Samsung đang có doanh số đặt hàng khủng nhất hiện tại.smart', 2, 2),
(20, 'Điện thoại Samsung Galaxy A6+ (2018)', 8200000, 'samsung-galaxy-a6-plus-2018-xanh-400x460-400x460.png', 'Sau nhiều đồn đoán thì cuối cùng Samsung Galaxy A6+ (2018) đã chính thức được Samsung  giới thiệu với một chút đổi mới trong thiết kế cũng như về camera của máy.', 2, 2),
(22, 'Máy tính bảng iPad Wifi Cellular 32GB (2018)', 12990000, 'ipad-6th-wifi-cellular-32g-1-400x460.png', 'Đặc điểm nổi bật của iPad Wifi Cellular 32GB (2018)\r\n\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Adapter, Sách hướng dẫn, Cáp Lightning, Cây lấy sim, Hộp máy\r\n\r\nMáy tính bảng iPad 6th Wifi Cellular 32 GB mang trong mình cấu hình mạnh mẽ cùng giá thành hợp lý.', 2, 2),
(23, 'Máy tính bảng iPad Wifi Cellular 32GB (2017)', 10990000, 'ipad-wifi-cellular-32gb-2017-400-400x460.png', 'Dòng máy tính bảng iPad Wifi Cellular 32GB (2017) mới của Apple sở hữu cho mình cấu hình mạnh mẽ cùng mức giá bán rất hấp dẫn.', 4, 4),
(24, 'Máy tính bảng iPad Wifi Cellular 128GB (2018)', 14990000, 'ipad-6th-wifi-cellular-128gb-1-400x460.png', 'Đặc điểm nổi bật của iPad Wifi Cellular 128GB (2018)\r\n\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Adapter, Sách hướng dẫn, Cáp Lightning, Cây lấy sim, Hộp máy\r\n\r\nMáy tính bảng iPad 6th Wifi Cellular 128 GB là phiên bản với bộ nhớ trong cực kỳ lớn, đáp ứng mọi nhu cầu lưu trữ và luôn mạnh mẽ trong mọi tác vụ.', 2, 2),
(25, 'Máy tính bảng Samsung Galaxy Tab A 8.0 (2017)', 29999990, 'samsung-galaxy-tab-a-80-2017-9-400x460.png', 'Samsung Galaxy Tab A 8.0 (2017) mới có màn hình tỉ lệ 4:3 với không gian hiển thị rộng thông minh cho người dùng.', 4, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `protypes`
--

DROP TABLE IF EXISTS `protypes`;
CREATE TABLE IF NOT EXISTS `protypes` (
  `type_ID` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_img` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`type_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `protypes`
--

INSERT INTO `protypes` (`type_ID`, `type_name`, `type_img`) VALUES
(1, 'Iphone XS ', 'iPhone_XS_max_zing_14.JPG'),
(2, 'Laptop Asus gaming', 'Asus FX505.jpg'),
(3, 'Loa vi tính Soundmax AW300/2', 'loa-vi-tinh-soundmax-aw300-2.1.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
