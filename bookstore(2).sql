-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 19, 2013 at 09:01 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bookstore`
--
CREATE DATABASE IF NOT EXISTS `bookstore` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bookstore`;

-- --------------------------------------------------------

--
-- Table structure for table `tblauthor`
--

CREATE TABLE IF NOT EXISTS `tblauthor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `imageurl` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tblauthor`
--

INSERT INTO `tblauthor` (`id`, `name`, `dateOfBirth`, `description`, `imageurl`) VALUES
(1, 'kien', '2013-11-22', 'nha van', NULL),
(4, 'hau', '3914-01-01', 'dkjhgfdkldfs', '1383878002.png');

-- --------------------------------------------------------

--
-- Table structure for table `tblbook`
--

CREATE TABLE IF NOT EXISTS `tblbook` (
  `id` int(11) NOT NULL,
  `publisherID` int(11) DEFAULT NULL,
  `authorID` int(11) DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `title` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `categoryID` int(11) DEFAULT NULL,
  `imageUrl` varchar(250) DEFAULT NULL,
  `dateUpdate` datetime DEFAULT NULL,
  `price` int(20) DEFAULT NULL,
  `rating` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `publisherID` (`publisherID`),
  KEY `authorID` (`authorID`),
  KEY `categoryID` (`categoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbook`
--

INSERT INTO `tblbook` (`id`, `publisherID`, `authorID`, `description`, `title`, `categoryID`, `imageUrl`, `dateUpdate`, `price`, `rating`) VALUES
(15, 1, 1, ' Cuốn sách này sẽ mang đến cho bạn nhiều cảm hứng để sáng tạo Trong xã hội ngày nay, sự sáng tạo được đánh giá rất cao. Để có được sự sáng tạo, bạn cũng cần có tư duy sâu sắc về bản thân và về khả năng của chính mình.   Để có sự sáng tạo, bạn đôi khi cần rèn luyện. Và nội dung cuốn sách này sẽ chỉ cho bạn những cách thức để đánh thức sức mạnh sáng tạo bên trong con người bạn. Cuốn sách sẽ dẫn dắt bạn đi vào thế giới của sự sáng tạo từ các bước chuẩn bị đến những trở ngại, khó khăn, những thắc mắc và cuối cùng không gì khác hơn là sự sáng tạo.    Nhà triết học hiện đại Osho, thiền sư Osho, đạo sư Osho, luận sư Osho, nhà sáng tạo Osho, hay đơn giản là… Osho, đã không ngừng nói cho người nghe cùng thời và người đọc của mọi thời về bản chất của cuộc sống. Suốt 35 năm, tư tưởng của ông bay khắp mọi nơi trên thế giới bằng con đường truyền bá của những môn đệ thầm lặng, bất chấp những đánh giá khắt khe và đầy “hoang mang” về tinh thần triết học mãnh liệt của ông. Tác phẩm Sáng Tạo – Bừng Cháy', 'Sáng tạo - Bừng cháy sức mạnh bên trong', 117, 'Sang_tao_Bung_chay_suc_manh_ben_trong.jpg', '2013-11-08 00:27:04', 120000, 2),
(16, 1, 1, ' Cuốn sách này sẽ mang đến cho bạn nhiều cảm hứng để sáng tạo Trong xã hội ngày nay, sự sáng tạo được đánh giá rất cao. Để có được sự sáng tạo, bạn cũng cần có tư duy sâu sắc về bản thân và về khả năng của chính mình.   Để có sự sáng tạo, bạn đôi khi cần rèn luyện. Và nội dung cuốn sách này sẽ chỉ cho bạn những cách thức để đánh thức sức mạnh sáng tạo bên trong con người bạn. Cuốn sách sẽ dẫn dắt bạn đi vào thế giới của sự sáng tạo từ các bước chuẩn bị đến những trở ngại, khó khăn, những thắc mắc và cuối cùng không gì khác hơn là sự sáng tạo.    Nhà triết học hiện đại Osho, thiền sư Osho, đạo sư Osho, luận sư Osho, nhà sáng tạo Osho, hay đơn giản là… Osho, đã không ngừng nói cho người nghe cùng thời và người đọc của mọi thời về bản chất của cuộc sống. Suốt 35 năm, tư tưởng của ông bay khắp mọi nơi trên thế giới bằng con đường truyền bá của những môn đệ thầm lặng, bất chấp những đánh giá khắt khe và đầy “hoang mang” về tinh thần triết học mãnh liệt của ông. Tác phẩm Sáng Tạo – Bừng Cháy', 'Sáng tạo - Bừng cháy sức mạnh bên trong', 117, 'Sang_tao_Bung_chay_suc_manh_ben_trong.jpg', '2013-11-08 00:27:04', 120000, 2),
(17, 1, 1, ' Cuốn sách này sẽ mang đến cho bạn nhiều cảm hứng để sáng tạo Trong xã hội ngày nay, sự sáng tạo được đánh giá rất cao. Để có được sự sáng tạo, bạn cũng cần có tư duy sâu sắc về bản thân và về khả năng của chính mình.   Để có sự sáng tạo, bạn đôi khi cần rèn luyện. Và nội dung cuốn sách này sẽ chỉ cho bạn những cách thức để đánh thức sức mạnh sáng tạo bên trong con người bạn. Cuốn sách sẽ dẫn dắt bạn đi vào thế giới của sự sáng tạo từ các bước chuẩn bị đến những trở ngại, khó khăn, những thắc mắc và cuối cùng không gì khác hơn là sự sáng tạo.    Nhà triết học hiện đại Osho, thiền sư Osho, đạo sư Osho, luận sư Osho, nhà sáng tạo Osho, hay đơn giản là… Osho, đã không ngừng nói cho người nghe cùng thời và người đọc của mọi thời về bản chất của cuộc sống. Suốt 35 năm, tư tưởng của ông bay khắp mọi nơi trên thế giới bằng con đường truyền bá của những môn đệ thầm lặng, bất chấp những đánh giá khắt khe và đầy “hoang mang” về tinh thần triết học mãnh liệt của ông. Tác phẩm Sáng Tạo – Bừng Cháy', 'Sáng tạo - Bừng cháy sức mạnh bên trong', 117, 'Sang_tao_Bung_chay_suc_manh_ben_trong.jpg', '2013-11-08 00:27:04', 120000, 2),
(18, 1, 1, 'Khổng Tử tâm đắc là cuốn sách thứ hai của tác giả Yu Dan được dịch và xuất bản tại Việt Nam. Yu Dan là một tác giả rất nổi tiếng tại Bắc Kinh, Trung Quốc. Ngoài viết sách, ông còn là một tiến sĩ ngành điện ảnh - truyền hình, một diễn giả được yêu mến. Trong dịp lễ quốc khánh, Yu Dan xuất hiện trong chương trình Diễn đàn trăm nhà của Đài truyền hình trung ương Trung Quốc, thuyết trình 7 buổi liền về chủ đề Thu hoạch từ việc đọc sách Luận Ngữ, được hàng trăm triệu người xem hoan nghênh. Các bài nói này sau đó được in thành sách, và ngay trong tuần lễ đầu tiên, 600 nghìn cuốn đã bán hết. Chỉ trong vài tháng, con số đã nâng lên thành 3 triệu bản và hiện nay là hơn 10 triệu bản trên toàn thế giới. Đây thực sự là một hiện tượng xuất bản hiếm thấy.   Cuốn sách này cũng đã bán được hơn 4 triệu bản và luôn nằm trong danh sách sách bán chạy nhất của Trung Quốc. Cuốn sách bàn về những đạo lý hàng ngày vẫn song hành trong cuộc sống của chúng ta:  Đạo hiếu kính, Đạo trí tuệ, Đạo học tập, Đạo nhân ái…Những điều này đã được Khổng Tử nhắc đến trong Luận Ngữ, nay được Yu Dan diễn giải một cách giản dị, sinh động và thú vị  về những chân lý mang tính ứng dụng cao của triết gia nổi tiếng thông thái này, khác hẳn với cách diễn giải “hàn lâm” của những cuốn sách khác về Khổng Tử. Những chân lý đó đi vào lòng người tự nhiên như chính là tiếng gọi từ bên trong tâm tưởng của mỗi chúng ta. Dù thời gian trôi qua và thế giới có đổi thay thế nào đi nữa thì những giá trị tinh túy nhất của Khổng Tử luôn mãi sống với thời gian.', ' Khổng Tử tâm đắc', 116, 'Khong_Tu_tam_dac.jpg', '2013-11-10 03:18:45', 20000, 2),
(20, 1, 1, ' Cuốn sách này sẽ mang đến cho bạn nhiều cảm hứng để sáng tạo Trong xã hội ngày nay, sự sáng tạo được đánh giá rất cao. Để có được sự sáng tạo, bạn cũng cần có tư duy sâu sắc về bản thân và về khả năng của chính mình.   Để có sự sáng tạo, bạn đôi khi cần rèn luyện. Và nội dung cuốn sách này sẽ chỉ cho bạn những cách thức để đánh thức sức mạnh sáng tạo bên trong con người bạn. Cuốn sách sẽ dẫn dắt bạn đi vào thế giới của sự sáng tạo từ các bước chuẩn bị đến những trở ngại, khó khăn, những thắc mắc và cuối cùng không gì khác hơn là sự sáng tạo.    Nhà triết học hiện đại Osho, thiền sư Osho, đạo sư Osho, luận sư Osho, nhà sáng tạo Osho, hay đơn giản là… Osho, đã không ngừng nói cho người nghe cùng thời và người đọc của mọi thời về bản chất của cuộc sống. Suốt 35 năm, tư tưởng của ông bay khắp mọi nơi trên thế giới bằng con đường truyền bá của những môn đệ thầm lặng, bất chấp những đánh giá khắt khe và đầy “hoang mang” về tinh thần triết học mãnh liệt của ông. Tác phẩm Sáng Tạo – Bừng Cháy', 'Sáng tạo - Bừng cháy sức mạnh bên trong', 117, 'Sang_tao_Bung_chay_suc_manh_ben_trong.jpg', '2013-11-08 00:27:04', 120000, 2),
(21, 1, 1, '<p>Cuộc sống hiện đại khiến con người trở n&ecirc;n dễ stress hơn bao giờ hết. Th&ocirc;ng thường những l&uacute;c đ&oacute; ta thường tự dằn vặt bản th&acirc;n, tr&aacute;ch m&oacute;c để rồi sự tự tin trong người dần cạn. Kết quả l&agrave; trầm cảm ng&agrave;y c&agrave;ng gia tăng. Stress l&agrave;m suy giảm chất lượng cuộc sống của ch&iacute;nh ch&uacute;ng ta v&agrave; của cả những người xung quanh. V&igrave; vậy điều n&ecirc;n l&agrave;m l&agrave; h&atilde;y thường xuy&ecirc;n gieo cho m&igrave;nh hạt giống của tư duy t&iacute;ch cực. Qu&yacute; trọng bản th&acirc;n l&agrave; cảm nhận về ch&iacute;nh m&igrave;nh, điều đ&oacute; n&ecirc;n l&agrave;m ở bất kỳ thời điểm n&agrave;o. Trong cuốn s&aacute;ch n&agrave;y bạn sẽ học được c&aacute;ch gieo trồng v&agrave; chăm s&oacute;c hạt giống đ&oacute;. Lăng k&iacute;nh t&acirc;m hồn sẽ gi&uacute;p bạn nắm được những quy luật để c&oacute; được cuộc sống b&igrave;nh an v&agrave; hạnh ph&uacute;c thực sự. S&aacute;ch được dịch từ Window to the Self của t&aacute;c giả Trish Summerfield.</p>\r\n', 'Lăng kính tâm hồn', 116, 'Lang_kinh_tam_hon.jpg', '2013-11-07 23:55:44', 380000, 4),
(22, 1, 1, ' Cuốn sách này sẽ mang đến cho bạn nhiều cảm hứng để sáng tạo Trong xã hội ngày nay, sự sáng tạo được đánh giá rất cao. Để có được sự sáng tạo, bạn cũng cần có tư duy sâu sắc về bản thân và về khả năng của chính mình.   Để có sự sáng tạo, bạn đôi khi cần rèn luyện. Và nội dung cuốn sách này sẽ chỉ cho bạn những cách thức để đánh thức sức mạnh sáng tạo bên trong con người bạn. Cuốn sách sẽ dẫn dắt bạn đi vào thế giới của sự sáng tạo từ các bước chuẩn bị đến những trở ngại, khó khăn, những thắc mắc và cuối cùng không gì khác hơn là sự sáng tạo.    Nhà triết học hiện đại Osho, thiền sư Osho, đạo sư Osho, luận sư Osho, nhà sáng tạo Osho, hay đơn giản là… Osho, đã không ngừng nói cho người nghe cùng thời và người đọc của mọi thời về bản chất của cuộc sống. Suốt 35 năm, tư tưởng của ông bay khắp mọi nơi trên thế giới bằng con đường truyền bá của những môn đệ thầm lặng, bất chấp những đánh giá khắt khe và đầy “hoang mang” về tinh thần triết học mãnh liệt của ông. Tác phẩm Sáng Tạo – Bừng Cháy', 'Sáng tạo - Bừng cháy sức mạnh bên trong', 117, 'Sang_tao_Bung_chay_suc_manh_ben_trong.jpg', '2013-11-08 00:27:04', 120000, 2),
(23, 1, 1, ' Cuốn sách này sẽ mang đến cho bạn nhiều cảm hứng để sáng tạo Trong xã hội ngày nay, sự sáng tạo được đánh giá rất cao. Để có được sự sáng tạo, bạn cũng cần có tư duy sâu sắc về bản thân và về khả năng của chính mình.   Để có sự sáng tạo, bạn đôi khi cần rèn luyện. Và nội dung cuốn sách này sẽ chỉ cho bạn những cách thức để đánh thức sức mạnh sáng tạo bên trong con người bạn. Cuốn sách sẽ dẫn dắt bạn đi vào thế giới của sự sáng tạo từ các bước chuẩn bị đến những trở ngại, khó khăn, những thắc mắc và cuối cùng không gì khác hơn là sự sáng tạo.    Nhà triết học hiện đại Osho, thiền sư Osho, đạo sư Osho, luận sư Osho, nhà sáng tạo Osho, hay đơn giản là… Osho, đã không ngừng nói cho người nghe cùng thời và người đọc của mọi thời về bản chất của cuộc sống. Suốt 35 năm, tư tưởng của ông bay khắp mọi nơi trên thế giới bằng con đường truyền bá của những môn đệ thầm lặng, bất chấp những đánh giá khắt khe và đầy “hoang mang” về tinh thần triết học mãnh liệt của ông. Tác phẩm Sáng Tạo – Bừng Cháy', 'Sáng tạo - Bừng cháy sức mạnh bên trong', 117, 'Sang_tao_Bung_chay_suc_manh_ben_trong.jpg', '2013-11-08 00:27:04', 120000, 2),
(29, 1, 1, ' Cuốn sách này sẽ mang đến cho bạn nhiều cảm hứng để sáng tạo Trong xã hội ngày nay, sự sáng tạo được đánh giá rất cao. Để có được sự sáng tạo, bạn cũng cần có tư duy sâu sắc về bản thân và về khả năng của chính mình.   Để có sự sáng tạo, bạn đôi khi cần rèn luyện. Và nội dung cuốn sách này sẽ chỉ cho bạn những cách thức để đánh thức sức mạnh sáng tạo bên trong con người bạn. Cuốn sách sẽ dẫn dắt bạn đi vào thế giới của sự sáng tạo từ các bước chuẩn bị đến những trở ngại, khó khăn, những thắc mắc và cuối cùng không gì khác hơn là sự sáng tạo.    Nhà triết học hiện đại Osho, thiền sư Osho, đạo sư Osho, luận sư Osho, nhà sáng tạo Osho, hay đơn giản là… Osho, đã không ngừng nói cho người nghe cùng thời và người đọc của mọi thời về bản chất của cuộc sống. Suốt 35 năm, tư tưởng của ông bay khắp mọi nơi trên thế giới bằng con đường truyền bá của những môn đệ thầm lặng, bất chấp những đánh giá khắt khe và đầy “hoang mang” về tinh thần triết học mãnh liệt của ông. Tác phẩm Sáng Tạo – Bừng Cháy', 'Sáng tạo - Bừng cháy sức mạnh bên trong', 117, 'Sang_tao_Bung_chay_suc_manh_ben_trong.jpg', '2013-11-08 00:27:04', 120000, 2),
(123, 1, 1, '<p><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:12px">Dưới thời thủ tướng Tun Dr Mahathir Mohamad, đất nước Malaysia từ một nước c&oacute; nền kinh tế n&ocirc;ng nghiệp l&agrave; chủ yếu trở th&agrave;nh một cường quốc c&ocirc;ng nghiệp. Chỉ sau hơn hai thập kỷ từ 1981 - 2003, Dr Mahathir đ&atilde; gi&uacute;p thay đổi cả bộ mặt đất nước. Trong suốt 22 năm đ&oacute;, t&ecirc;n tuổi &ocirc;ng gắn liền với hai cụm từ: Độc t&agrave;i v&agrave; Nh&agrave; l&atilde;nh đạo truyền cảm hứng. Trong &aacute;nh mắt của phương T&acirc;y, &ocirc;ng l&agrave; một kẻ cứng đầu, ph&acirc;n biệt chủng tộc, b&agrave;i Do Th&aacute;i v&agrave; ngạo mạn.</span></p>\r\n\r\n<div style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 18px; text-align: justify;">Ngược lại, c&aacute;c nước đang ph&aacute;t triển lại t&ocirc;n vinh &ocirc;ng l&agrave; một nh&agrave; l&atilde;nh đạo hiếm thấy, người đ&atilde; đem lại cho nh&acirc;n d&acirc;n c&aacute;c nước thế giới thứ ba l&yacute; do để tự h&agrave;o về d&acirc;n tộc m&igrave;nh. Điều chắc chắn chẳng thể phủ định l&agrave; những th&agrave;nh tựu &ocirc;ng mang lại cho đất nước Malaysia trong những năm qua.</div>\r\n\r\n<div style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 18px; text-align: justify;">Trong cuốn Hồi k&yacute; ch&iacute;nh trị do ch&iacute;nh &ocirc;ng viết, &ocirc;ng đ&atilde; đưa ra những nhận định v&agrave; ph&acirc;n t&iacute;ch s&acirc;u sắc về lịch sử ph&aacute;t triển d&acirc;n tộc v&agrave; v&agrave;i tr&ograve; của &ocirc;ng trong c&ocirc;ng cuộc định h&igrave;nh một nước Malaysia hiện đại.</div>\r\n\r\n<div style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 18px; text-align: justify;">&nbsp;</div>\r\n\r\n<div style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 18px; text-align: justify;">T&aacute;c giả: Dr Mahathir Mohamad l&agrave; cựu Chủ tịch Đảng UMNO, nguy&ecirc;n Thủ tướng thứ tư của Malaysia giai đoạn 1981 - 2003. &Ocirc;ng cũng từng đảm nhiệm vị tr&iacute; Bộ trưởng Gi&aacute;o dục; Bộ trưởng C&ocirc;ng nghiệp &amp; Thương mại Quốc tế.</div>\r\n', ' Hồi ký chính trị', 114, 'Hoi_ky_chinh_tri.jpg', '2013-11-17 19:22:16', 190000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE IF NOT EXISTS `tblcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=123 ;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `name`) VALUES
(114, 'Sách Văn Học'),
(115, 'Tủ sách chọn lọc'),
(116, 'Sách Kinh tế'),
(117, 'Sách thiếu nhi'),
(118, 'Chăm sóc gia đình'),
(119, 'Sách tuổi Teen'),
(120, 'Sách kĩ Năng - Sống đẹp'),
(121, 'Sách chuyên ngành'),
(122, 'Từ điển');

-- --------------------------------------------------------

--
-- Table structure for table `tblorder`
--

CREATE TABLE IF NOT EXISTS `tblorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) DEFAULT NULL,
  `bookID` int(11) DEFAULT NULL,
  `orderDate` date DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `paymentMethodID` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `cardverificationnumber` int(11) DEFAULT NULL,
  `nameoncard` varchar(255) DEFAULT NULL,
  `cardnumber` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userID` (`userID`),
  KEY `bookID` (`bookID`),
  KEY `paymentMethodID` (`paymentMethodID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=158 ;

--
-- Dumping data for table `tblorder`
--

INSERT INTO `tblorder` (`id`, `userID`, `bookID`, `orderDate`, `discount`, `paymentMethodID`, `price`, `quantity`, `cardverificationnumber`, `nameoncard`, `cardnumber`) VALUES
(1, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(2, 153, 21, '2013-11-05', 10, 3, 1212, 1, NULL, NULL, NULL),
(3, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(4, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(5, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(6, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(7, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(8, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(9, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(10, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(11, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(12, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(13, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(14, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(15, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(16, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(17, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(18, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(19, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(20, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(21, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(22, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(23, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(24, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(25, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(26, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(27, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(28, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(29, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(30, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(31, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(32, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(33, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(34, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(35, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(36, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(37, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(38, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(39, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(40, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(41, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(42, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(43, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(44, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(45, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(46, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(47, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(48, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(49, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(50, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(51, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(52, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(53, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(54, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(55, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(56, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(57, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(58, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(59, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(60, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(61, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(62, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(63, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(64, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(65, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(66, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(67, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(68, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(69, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(70, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(71, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(72, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(73, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(74, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(75, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(76, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(77, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(78, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(79, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(80, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(81, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(82, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(83, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(84, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(85, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(86, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(87, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(88, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(89, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(90, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(91, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(92, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(93, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(94, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(95, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(96, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(97, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(98, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(99, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(100, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(101, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(102, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(103, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(104, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(105, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(106, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(107, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(108, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(109, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(110, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(111, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(112, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(113, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(114, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(115, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(116, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(117, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(118, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(119, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(120, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(121, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(122, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(123, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(124, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(125, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(126, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(127, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(128, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(129, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(130, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(131, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(132, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(133, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(134, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(135, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(136, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(137, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(138, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(139, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(140, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(141, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(142, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(143, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(144, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(145, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(146, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(147, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(148, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(149, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(150, 153, 21, '2013-11-05', 10, 1, 1233, 12, NULL, NULL, NULL),
(151, 157, 22, '2013-11-08', 10, 1, 12334, 1, NULL, NULL, NULL),
(152, 153, 22, '2013-11-26', 10, 1, 111562, 11, NULL, NULL, NULL),
(156, 154, 22, '2013-11-18', 0, 1, 0, 1, 0, '123', 123123),
(157, 154, 21, '2013-11-18', 0, 1, 0, 1, 0, '123', 123213);

-- --------------------------------------------------------

--
-- Table structure for table `tblpaymentmethod`
--

CREATE TABLE IF NOT EXISTS `tblpaymentmethod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `methodDescription` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tblpaymentmethod`
--

INSERT INTO `tblpaymentmethod` (`id`, `methodDescription`) VALUES
(1, 'hasdayasd'),
(3, 'ghsada');

-- --------------------------------------------------------

--
-- Table structure for table `tblpublisher`
--

CREATE TABLE IF NOT EXISTS `tblpublisher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tblpublisher`
--

INSERT INTO `tblpublisher` (`id`, `name`, `address`, `description`) VALUES
(1, 'ha nnoi', 'ha noi', 'nxb ha noi');

-- --------------------------------------------------------

--
-- Table structure for table `tblreservation`
--

CREATE TABLE IF NOT EXISTS `tblreservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) DEFAULT NULL,
  `bookID` int(11) DEFAULT NULL,
  `initDate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userID` (`userID`),
  KEY `bookID` (`bookID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=117 ;

--
-- Dumping data for table `tblreservation`
--

INSERT INTO `tblreservation` (`id`, `userID`, `bookID`, `initDate`) VALUES
(1, 155, 21, '2013-11-19'),
(2, 155, 21, '2013-11-19'),
(3, 155, 21, '2013-11-19'),
(4, 155, 21, '2013-11-19'),
(5, 155, 21, '2013-11-19'),
(6, 155, 21, '2013-11-19'),
(7, 155, 21, '2013-11-19'),
(8, 155, 21, '2013-11-19'),
(9, 155, 21, '2013-11-19'),
(10, 155, 21, '2013-11-19'),
(11, 155, 21, '2013-11-19'),
(12, 155, 21, '2013-11-19'),
(13, 155, 21, '2013-11-19'),
(14, 155, 21, '2013-11-19'),
(15, 155, 21, '2013-11-19'),
(16, 155, 21, '2013-11-19'),
(17, 155, 21, '2013-11-19'),
(18, 155, 21, '2013-11-19'),
(19, 155, 21, '2013-11-19'),
(20, 155, 21, '2013-11-19'),
(21, 155, 21, '2013-11-19'),
(22, 155, 21, '2013-11-19'),
(23, 155, 21, '2013-11-19'),
(24, 155, 21, '2013-11-19'),
(25, 155, 21, '2013-11-19'),
(26, 155, 21, '2013-11-19'),
(27, 155, 21, '2013-11-19'),
(28, 155, 21, '2013-11-19'),
(29, 155, 21, '2013-11-19'),
(30, 155, 21, '2013-11-19'),
(31, 155, 21, '2013-11-19'),
(32, 155, 21, '2013-11-19'),
(33, 155, 21, '2013-11-19'),
(34, 155, 21, '2013-11-19'),
(35, 155, 21, '2013-11-19'),
(36, 155, 21, '2013-11-19'),
(37, 155, 21, '2013-11-19'),
(38, 155, 21, '2013-11-19'),
(39, 155, 21, '2013-11-19'),
(40, 155, 21, '2013-11-19'),
(41, 155, 21, '2013-11-19'),
(42, 155, 21, '2013-11-19'),
(43, 155, 21, '2013-11-19'),
(44, 155, 21, '2013-11-19'),
(45, 155, 21, '2013-11-19'),
(46, 155, 21, '2013-11-19'),
(47, 155, 21, '2013-11-19'),
(48, 155, 21, '2013-11-19'),
(49, 155, 21, '2013-11-19'),
(50, 155, 21, '2013-11-19'),
(51, 155, 21, '2013-11-19'),
(52, 155, 21, '2013-11-19'),
(53, 155, 21, '2013-11-19'),
(54, 155, 21, '2013-11-19'),
(55, 155, 21, '2013-11-19'),
(56, 155, 21, '2013-11-19'),
(57, 155, 21, '2013-11-19'),
(58, 155, 21, '2013-11-19'),
(59, 155, 21, '2013-11-19'),
(60, 155, 21, '2013-11-19'),
(61, 155, 21, '2013-11-19'),
(62, 155, 21, '2013-11-19'),
(63, 155, 21, '2013-11-19'),
(64, 155, 21, '2013-11-19'),
(65, 155, 21, '2013-11-19'),
(66, 155, 21, '2013-11-19'),
(67, 155, 21, '2013-11-19'),
(68, 155, 21, '2013-11-19'),
(69, 155, 21, '2013-11-19'),
(70, 155, 21, '2013-11-19'),
(71, 155, 21, '2013-11-19'),
(72, 155, 21, '2013-11-19'),
(73, 155, 21, '2013-11-19'),
(74, 155, 21, '2013-11-19'),
(75, 155, 21, '2013-11-19'),
(76, 155, 21, '2013-11-19'),
(77, 155, 21, '2013-11-19'),
(78, 155, 21, '2013-11-19'),
(79, 155, 21, '2013-11-19'),
(80, 155, 21, '2013-11-19'),
(81, 155, 21, '2013-11-19'),
(82, 155, 21, '2013-11-19'),
(83, 155, 21, '2013-11-19'),
(84, 155, 21, '2013-11-19'),
(85, 155, 21, '2013-11-19'),
(86, 155, 21, '2013-11-19'),
(87, 155, 21, '2013-11-19'),
(88, 155, 21, '2013-11-19'),
(89, 155, 21, '2013-11-19'),
(90, 155, 21, '2013-11-19'),
(91, 155, 21, '2013-11-19'),
(92, 155, 21, '2013-11-19'),
(93, 155, 21, '2013-11-19'),
(94, 155, 21, '2013-11-19'),
(95, 155, 21, '2013-11-19'),
(96, 155, 21, '2013-11-19'),
(97, 155, 21, '2013-11-19'),
(98, 155, 21, '2013-11-19'),
(99, 155, 21, '2013-11-19'),
(100, 155, 21, '2013-11-19'),
(101, 155, 21, '2013-11-19'),
(102, 155, 21, '2013-11-19'),
(103, 155, 21, '2013-11-19'),
(104, 155, 21, '2013-11-19'),
(105, 155, 21, '2013-11-19'),
(106, 155, 21, '2013-11-19'),
(107, 155, 21, '2013-11-19'),
(108, 155, 21, '2013-11-19'),
(109, 155, 21, '2013-11-19'),
(110, 155, 21, '2013-11-19'),
(111, 155, 21, '2013-11-19'),
(112, 155, 21, '2013-11-19'),
(113, 155, 21, '2013-11-19'),
(114, 155, 21, '2013-11-19'),
(115, 155, 21, '2013-11-19'),
(116, 155, 21, '2013-11-19');

-- --------------------------------------------------------

--
-- Table structure for table `tblrole`
--

CREATE TABLE IF NOT EXISTS `tblrole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(250) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tblrole`
--

INSERT INTO `tblrole` (`id`, `role`, `description`) VALUES
(1, 'admin', '123'),
(2, 'member', '121212');

-- --------------------------------------------------------

--
-- Table structure for table `tblstore`
--

CREATE TABLE IF NOT EXISTS `tblstore` (
  `bookID` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`bookID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstore`
--

INSERT INTO `tblstore` (`bookID`, `quantity`) VALUES
(21, 88);

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE IF NOT EXISTS `tbluser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(250) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `roleID` int(11) NOT NULL,
  `fullname` varchar(250) DEFAULT NULL,
  `phoneNumber` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roleID` (`roleID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=258 ;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`id`, `username`, `password`, `roleID`, `fullname`, `phoneNumber`, `email`, `city`, `country`, `zipcode`) VALUES
(153, 'kien', 'kien', 1, 'kien', '123', NULL, NULL, NULL, NULL),
(154, 'kien', 'kien', 2, 'nguyen duc kien', '09888', NULL, NULL, NULL, NULL),
(155, 'kien', 'kien', 2, 'kien123', '123', NULL, NULL, NULL, NULL),
(156, 'kien', 'kien', 2, 'kien123', '123', NULL, NULL, NULL, NULL),
(157, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(158, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(159, 'kien', 'kien', 2, 'kien123', '123', NULL, NULL, NULL, NULL),
(160, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(161, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(162, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(163, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(164, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(165, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(166, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(167, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(168, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(169, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(170, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(171, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(172, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(173, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(174, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(175, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(176, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(177, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(178, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(179, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(180, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(181, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(182, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(183, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(184, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(185, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(186, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(187, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(188, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(189, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(190, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(191, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(192, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(193, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(194, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(195, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(196, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(197, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(198, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(199, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(200, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(201, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(202, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(203, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(204, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(205, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(206, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(207, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(208, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(209, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(210, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(211, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(212, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(213, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(214, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(215, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(216, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(217, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(218, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(219, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(220, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(221, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(222, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(223, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(224, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(225, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(226, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(227, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(228, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(229, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(230, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(231, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(232, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(233, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(234, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(235, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(236, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(237, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(238, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(239, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(240, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(241, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(242, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(243, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(244, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(245, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(246, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(247, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(248, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(249, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(250, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(251, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(252, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(253, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(254, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(255, 'kien', 'kien', 1, 'kien123', '123', NULL, NULL, NULL, NULL),
(256, 'kiên', 'kien', 1, 'kien', '123123', NULL, NULL, NULL, NULL),
(257, 'ki', 'kien', 1, 'kien', '123', NULL, NULL, NULL, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblbook`
--
ALTER TABLE `tblbook`
  ADD CONSTRAINT `tblbook_ibfk_1` FOREIGN KEY (`publisherID`) REFERENCES `tblpublisher` (`id`),
  ADD CONSTRAINT `tblbook_ibfk_2` FOREIGN KEY (`authorID`) REFERENCES `tblauthor` (`id`),
  ADD CONSTRAINT `tblbook_ibfk_3` FOREIGN KEY (`categoryID`) REFERENCES `tblcategory` (`id`);

--
-- Constraints for table `tblorder`
--
ALTER TABLE `tblorder`
  ADD CONSTRAINT `tblorder_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `tbluser` (`id`),
  ADD CONSTRAINT `tblorder_ibfk_2` FOREIGN KEY (`bookID`) REFERENCES `tblbook` (`id`),
  ADD CONSTRAINT `tblorder_ibfk_3` FOREIGN KEY (`paymentMethodID`) REFERENCES `tblpaymentmethod` (`id`);

--
-- Constraints for table `tblreservation`
--
ALTER TABLE `tblreservation`
  ADD CONSTRAINT `tblreservation_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `tbluser` (`id`),
  ADD CONSTRAINT `tblreservation_ibfk_2` FOREIGN KEY (`bookID`) REFERENCES `tblbook` (`id`);

--
-- Constraints for table `tblstore`
--
ALTER TABLE `tblstore`
  ADD CONSTRAINT `tblstore_ibfk_1` FOREIGN KEY (`bookID`) REFERENCES `tblbook` (`id`);

--
-- Constraints for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD CONSTRAINT `tbluser_ibfk_1` FOREIGN KEY (`roleID`) REFERENCES `tblrole` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
