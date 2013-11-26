-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 26, 2013 at 08:11 AM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tblauthor`
--

INSERT INTO `tblauthor` (`id`, `name`, `dateOfBirth`, `description`, `imageurl`) VALUES
(1, 'kien', '2013-11-22', 'nha van', 'Hoi_ky_chinh_tri.jpg'),
(3, 'kien', '3892-12-10', 'acccccc', 'mahathirmohamad.jpg'),
(5, 'a', '3893-01-12', 'abc', 'mahathirmohamad.jpg'),
(6, 'ahchh', '3113-01-12', 'hgasdsa', 'Hoi_ky_chinh_tri.jpg'),
(7, 'aaaaaaaaaaa', '3893-01-12', 'sasdads', 'mahathirmohamad.jpg');

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
(0, 1, 1, '<p>Cuốn s&aacute;ch n&agrave;y sẽ mang đến cho bạn nhiều cảm hứng để s&aacute;ng tạo Trong x&atilde; hội ng&agrave;y nay, sự s&aacute;ng tạo được đ&aacute;nh gi&aacute; rất cao. Để c&oacute; được sự s&aacute;ng tạo, bạn cũng cần c&oacute; tư duy s&acirc;u sắc về bản th&acirc;n v&agrave; về khả năng của ch&iacute;nh m&igrave;nh. Để c&oacute; sự s&aacute;ng tạo, bạn đ&ocirc;i khi cần r&egrave;n luyện. V&agrave; nội dung cuốn s&aacute;ch n&agrave;y sẽ chỉ cho bạn những c&aacute;ch thức để đ&aacute;nh thức sức mạnh s&aacute;ng tạo b&ecirc;n trong con người bạn. Cuốn s&aacute;ch sẽ dẫn dắt bạn đi v&agrave;o thế giới của sự s&aacute;ng tạo từ c&aacute;c bước chuẩn bị đến những trở ngại, kh&oacute; khăn, những thắc mắc v&agrave; cuối c&ugrave;ng kh&ocirc;ng g&igrave; kh&aacute;c hơn l&agrave; sự s&aacute;ng tạo. Nh&agrave; triết học hiện đại Osho, thiền sư Osho, đạo sư Osho, luận sư Osho, nh&agrave; s&aacute;ng tạo Osho, hay đơn giản l&agrave;&hellip; Osho, đ&atilde; kh&ocirc;ng ngừng n&oacute;i cho người nghe c&ugrave;ng thời v&agrave; người đọc của mọi thời về bản chất của cuộc sống. Suốt 35 năm, tư tưởng của &ocirc;ng bay khắp mọi nơi tr&ecirc;n thế giới bằng con đường truyền b&aacute; của những m&ocirc;n đệ thầm lặng, bất chấp những đ&aacute;nh gi&aacute; khắt khe v&agrave; đầy &ldquo;hoang mang&rdquo; về tinh thần triết học m&atilde;nh liệt của &ocirc;ng. T&aacute;c phẩm S&aacute;ng Tạo &ndash; Bừng Ch&aacute;y</p>\r\n', 'Bừng cháy sức mạnh bên trong ', 95, 'Sang_tao_Bung_chay_suc_manh_ben_trong.jpg', '2013-11-26 01:23:44', 19000, NULL),
(21, 1, 6, '<p><strong>Cuộc sống hiện đại khiến con người trở n&ecirc;n dễ stress hơn bao giờ hết.</strong> Th&ocirc;ng thường những l&uacute;c đ&oacute; ta thường tự dằn vặt bản th&acirc;n, tr&aacute;ch m&oacute;c để rồi sự tự tin trong người dần cạn. Kết quả l&agrave; trầm cảm ng&agrave;y c&agrave;ng gia tăng. Stress l&agrave;m suy giảm chất lượng cuộc sống của ch&iacute;nh ch&uacute;ng ta v&agrave; của cả những người xung quanh.V&igrave; vậy điều n&ecirc;n l&agrave;m l&agrave; h&atilde;y thường xuy&ecirc;n gieo cho m&igrave;nh hạt giống của tư duy t&iacute;ch cực. Qu&yacute; trọng bản th&acirc;n l&agrave; cảm nhận về ch&iacute;nh m&igrave;nh, điều đ&oacute; n&ecirc;n l&agrave;m ở bất kỳ thời điểm n&agrave;o. Trong cuốn s&aacute;ch n&agrave;y bạn sẽ học được c&aacute;ch gieo trồng v&agrave; chăm s&oacute;c hạt giống đ&oacute;. Lăng k&iacute;nh t&acirc;m hồn sẽ gi&uacute;p bạn nắm được những quy luật để c&oacute; được cuộc sống b&igrave;nh an v&agrave; hạnh ph&uacute;c thực sự. S&aacute;ch được dịch từ Window to the Self của t&aacute;c giả Trish Summerfield.</p>\r\n', 'Lăng kính tâm hồn', 98, 'Lang_kinh_tam_hon.jpg', '2013-11-07 23:55:44', 12000, 4),
(22, 1, 1, ' Cuốn sách này sẽ mang đến cho bạn nhiều cảm hứng để sáng tạo Trong xã hội ngày nay, sự sáng tạo được đánh giá rất cao. Để có được sự sáng tạo, bạn cũng cần có tư duy sâu sắc về bản thân và về khả năng của chính mình.   Để có sự sáng tạo, bạn đôi khi cần rèn luyện. Và nội dung cuốn sách này sẽ chỉ cho bạn những cách thức để đánh thức sức mạnh sáng tạo bên trong con người bạn. Cuốn sách sẽ dẫn dắt bạn đi vào thế giới của sự sáng tạo từ các bước chuẩn bị đến những trở ngại, khó khăn, những thắc mắc và cuối cùng không gì khác hơn là sự sáng tạo.    Nhà triết học hiện đại Osho, thiền sư Osho, đạo sư Osho, luận sư Osho, nhà sáng tạo Osho, hay đơn giản là… Osho, đã không ngừng nói cho người nghe cùng thời và người đọc của mọi thời về bản chất của cuộc sống. Suốt 35 năm, tư tưởng của ông bay khắp mọi nơi trên thế giới bằng con đường truyền bá của những môn đệ thầm lặng, bất chấp những đánh giá khắt khe và đầy “hoang mang” về tinh thần triết học mãnh liệt của ông. Tác phẩm Sáng Tạo – Bừng Cháy', 'Bừng cháy sức mạnh bên trong ', 108, 'Sang_tao_Bung_chay_suc_manh_ben_trong.jpg', '2013-11-08 00:27:04', 180000, 2),
(129, 1, 1, ' Phan Ý Yên là một cây bút trẻ có cách suy nghĩ và cách viết logic. Trong những tập tản văn trước đây của cô, người đọc tìm thấy những suy nghĩ khá chín chắn về cuộc sống, những cảm xúc không phải ai cũng có thể viết được đẹp như thế.   Cuốn sách này lại là một thử nghiệm hoàn toàn mới. Nó là một cuốn sách ảnh, vì thế thay vì chỉ khai thác được cảm xúc qua ngôn từ, sức mạnh của cuốn sách đến từ cả ngôn từ và hình ảnh. Nó sẽ mang lại cho bạn những cảm xúc quen mà lạ, khiến bạn phải tự thốt lên rằng "Phải chăng Phan Ý Yên hiểu mình đến thế". Hãy nghe cô chia sẻ về cuốn sách này:   "Đây không phải là một cuốn sách. Bởi vì nó không nhiều chữ như bạn (có thể) đã mong đợi từ Yên. Nó là một nỗi buồn nhỏ. Một góc mà bạn lưu giữ thật gần để bất kể lúc nào cũng có thể mở ra và chọn cho mình một bức ảnh thích hợp với hiện tại mà bạn đang đứng. Và cũng bởi vì rất nhiều bạn đã xem Yên như người có thể nói được hộ tình cảm của họ. Nên một lần nữa, Yên không dám phụ lại tấm chân tình này!"', ' Tôi là một nỗi buồn nhỏ - Đang chậm rãi thở', 106, 'Sang_tao_Bung_chay_suc_manh_ben_trong.jpg', '2013-11-10 13:42:33', 130000, NULL),
(871, 1, 3, ' Người lạ từng yêu là cuốn sách tập hợp 18 câu chuyện nhỏ với chủ đề xuyên suốt là tình yêu và các cung bậc cảm xúc. Từ xưa đến nay, tình yêu vốn là một đề tài quen thuộc nhưng chưa bao giờ cũ. Người đọc có thể bắt gặp đầy đủ những cảm xúc trong tình yêu như nỗi trăn trở, đắm say, ảo tưởng, mãnh liệt, mệt mỏi rã rời hay đơn giản là vấn vương tơ tưởng...   Người lạ từng yêu đậm chất suy tư về cuộc sống, về tình yêu đan xen lẫn là những cảm xúc lắng đọng. Khát khao được sống là chính mình, được bộc lộ nỗi lòng trong những trang viết chính là điểm chung của các nhân vật. Nó hé lộ phần nào những nỗi lòng và thân phận của không ít những người phụ nữ hiện đại, đó là khát khao được sống tận đáy những cảm xúc của mình   Con người ta cứ gồng mình lên để thu hồn lại trong những quy chuẩn mặc định, trong những mực thước mà đại đa số tán thành, ngậm ngùi với những đấu tranh trong huyết quản, trong tiềm thức, trong bản năng mà không dám tận hưởng. Họ tiết kiệm cả cảm xúc để rồi một ngày xa xôi, khi nằm hấp hối, nhìn tuổi trẻ của con cái mà ước ao có thể quay trở lại để sửa chữa vài lỗi lầm, để thực hiện vài dự định bị lãng quên, để tham gia vài trò điên rồ nào đó.”  ', 'Người lạ từng yêu', 106, 'Sang_tao_Bung_chay_suc_manh_ben_trong.jpg', '2013-11-10 14:12:46', 70000, NULL),
(988, 1, 1, '<p>Khổng Tử t&acirc;m đắc l&agrave; cuốn s&aacute;ch thứ hai của t&aacute;c giả Yu Dan được dịch v&agrave; xuất bản tại Việt Nam. Yu Dan l&agrave; một t&aacute;c giả rất nổi tiếng tại Bắc Kinh, Trung Quốc. Ngo&agrave;i viết s&aacute;ch, &ocirc;ng c&ograve;n l&agrave; một tiến sĩ ng&agrave;nh điện ảnh - truyền h&igrave;nh, một diễn giả được y&ecirc;u mến. Trong dịp lễ quốc kh&aacute;nh, Yu Dan xuất hiện trong chương tr&igrave;nh Diễn đ&agrave;n trăm nh&agrave; của Đ&agrave;i truyền h&igrave;nh trung ương Trung Quốc, thuyết tr&igrave;nh 7 buổi liền về chủ đề Thu hoạch từ việc đọc s&aacute;ch Luận Ngữ, được h&agrave;ng trăm triệu người xem hoan ngh&ecirc;nh. C&aacute;c b&agrave;i n&oacute;i n&agrave;y sau đ&oacute; được in th&agrave;nh s&aacute;ch, v&agrave; ngay trong tuần lễ đầu ti&ecirc;n, 600 ngh&igrave;n cuốn đ&atilde; b&aacute;n hết. Chỉ trong v&agrave;i th&aacute;ng, con số đ&atilde; n&acirc;ng l&ecirc;n th&agrave;nh 3 triệu bản v&agrave; hiện nay l&agrave; hơn 10 triệu bản tr&ecirc;n to&agrave;n thế giới. Đ&acirc;y thực sự l&agrave; một hiện tượng xuất bản hiếm thấy. Cuốn s&aacute;ch n&agrave;y cũng đ&atilde; b&aacute;n được hơn 4 triệu bản v&agrave; lu&ocirc;n nằm trong danh s&aacute;ch s&aacute;ch b&aacute;n chạy nhất của Trung Quốc. Cuốn s&aacute;ch b&agrave;n về những đạo l&yacute; h&agrave;ng ng&agrave;y vẫn song h&agrave;nh trong cuộc sống của ch&uacute;ng ta: Đạo hiếu k&iacute;nh, Đạo tr&iacute; tuệ, Đạo học tập, Đạo nh&acirc;n &aacute;i&hellip;Những điều n&agrave;y đ&atilde; được Khổng Tử nhắc đến trong Luận Ngữ, nay được Yu Dan diễn giải một c&aacute;ch giản dị, sinh động v&agrave; th&uacute; vị về những ch&acirc;n l&yacute; mang t&iacute;nh ứng dụng cao của triết gia nổi tiếng th&ocirc;ng th&aacute;i n&agrave;y, kh&aacute;c hẳn với c&aacute;ch diễn giải &ldquo;h&agrave;n l&acirc;m&rdquo; của những cuốn s&aacute;ch kh&aacute;c về Khổng Tử. Những ch&acirc;n l&yacute; đ&oacute; đi v&agrave;o l&ograve;ng người tự nhi&ecirc;n như ch&iacute;nh l&agrave; tiếng gọi từ b&ecirc;n trong t&acirc;m tưởng của mỗi ch&uacute;ng ta. D&ugrave; thời gian tr&ocirc;i qua v&agrave; thế giới c&oacute; đổi thay thế n&agrave;o đi nữa th&igrave; những gi&aacute; trị tinh t&uacute;y nhất của Khổng Tử lu&ocirc;n m&atilde;i sống với thời gian.</p>\r\n', ' Khổng Tử tâm đắc', 96, 'Khong_Tu_tam_dac.jpg', '2013-11-10 03:18:45', 75000, NULL),
(1239, 1, 1, '<div style="text-align: center;"><strong>&nbsp;Đ&acirc;y l&agrave; tập truyện n&oacute;i l&ecirc;n những mặt tr&aacute;i của ng&agrave;nh gi&aacute;o dục.</strong></div>\r\n\r\n<div>Ba nh&acirc;n vật ch&iacute;nh của c&acirc;u chuyện l&agrave; Dẫu - Dị - Hậu, ch&uacute;ng kh&aacute;c nhau ở ho&agrave;n cảnh, t&iacute;nh c&aacute;ch, kiểu quậy nhưng giống nhau ở một điểm l&agrave; rất dốt chữ. Ch&uacute;ng bị đ&ugrave;a đẩy qua đẩy lại v&agrave; bị gọi chệch đi l&agrave; cặp ba Dẫu - Dị - Hợm. Ch&uacute;ng đều c&oacute; kết quả học tập đặc biệt tồi tệ trong trường Tiểu học, do c&aacute;ch dạy m&aacute;y m&oacute;c v&agrave; chạy theo th&agrave;nh t&iacute;ch của những thầy c&ocirc; trường Dương Đ&ocirc;i.</div>\r\n\r\n<div>Ba đứa trẻ, ba số phận, ba cảnh đời trong kh&ocirc;ng gian x&atilde; h&ocirc;i đang h&agrave;ng ng&agrave;y h&agrave;ng giờ tha h&oacute;a: Trường học Dương Đ&ocirc;i với những thầy c&ocirc; gi&aacute;o - diễn vi&ecirc;n ng&agrave;y c&agrave;ng nặng chủ nghĩa gi&aacute;o điều, Nh&agrave; trọ T&igrave;nh với c&aacute;c c&ocirc; g&aacute;i điếm ng&oacute;n nghề, v&agrave; Lưu Manh tự, ng&ocirc;i ch&ugrave;a - nh&agrave; của một &ocirc;ng gi&aacute;o đức độ ng&agrave;y c&agrave;ng l&aacute;nh xa c&otilde;i tục, sống c&ugrave;ng một &ocirc;ng gi&agrave; &nbsp;lọc l&otilde;i trường đời. Nh&agrave; trường như thế kh&ocirc;ng thể dạy ba đứa trẻ trưởng th&agrave;nh, m&agrave; ch&iacute;nh trường đời với nhiều cạm bẫy đ&atilde; dạy những đứa trẻ dốt n&aacute;t ng&agrave;y n&agrave;o trở th&agrave;nh những con người &quot;ngộ&quot; ra c&aacute;i chư v&agrave; gi&aacute; trị của tri thức, gi&aacute; trị người ch&acirc;n ch&iacute;nh.<br />\r\n&nbsp;</div>\r\n\r\n<div>Lần đầu thấy trăng l&agrave; cuốn tiểu thuyết gi&agrave;u t&iacute;nh nh&acirc;n văn, khi viết một c&aacute;ch quyết liệt v&agrave; hấp dẫn về h&agrave;nh tr&igrave;nh trở lại l&agrave;m người của những người c&oacute; lương năng nhưng bị khuất lấp, bị ho&agrave;n cảnh v&agrave; con người l&agrave;m cho tha h&oacute;a. Cuốn s&aacute;ch cũng đặt ra những vấn đề nhức nhối trong thực trạng nền gi&aacute;o dục đương thời với căn bệnh th&agrave;nh t&iacute;ch v&agrave; chủ nghĩa gi&aacute;o điều. Đ&acirc;y l&agrave; một căn bệnh trầm kha nhưng kh&ocirc;ng dễ g&igrave; chữa trị.&nbsp;</div>\r\n\r\n<div><br />\r\n<strong>Tr&iacute;ch đoạn:</strong><br />\r\n&nbsp;</div>\r\n\r\n<div><em>Thầy Độ l&agrave; người kh&ocirc;ng b&igrave;nh thường n&ecirc;n đẻ sao quanh l&agrave; b&igrave;nh thường. Thầy n&oacute;i về chữ nghĩa cũng kh&ocirc;ng giống &nbsp;người. Nhất l&agrave; chữ kh&ocirc;n, chữ ngu, chữ nhục</em></div>\r\n\r\n<div><em>Thấy n&oacute;i gh&eacute;t ai khen m&igrave;nh kh&ocirc;n. Người kh&ocirc;n biết che giấu những c&aacute;i dở. Dở tới chết. Người kh&ocirc;n biết cho một miếng giữa l&agrave;ng để được một tr&agrave;ng c&aacute;i vỗ tay, những lời tung h&ocirc;. Giống y mấy đứa con n&iacute;t mới v&agrave;i tuổi học đ&ograve;i, kh&oacute;a được khen. Thầy Độ &ocirc;m hun mấy đứa con n&iacute;t nhưng ỉa v&ocirc; mặt mấy đứa kh&ocirc;n.</em></div>\r\n\r\n<div><em>Thầy kho&aacute;i chữ nhục. Thầy n&oacute;i d&aacute;m nhục mới d&aacute;m bỏ th&oacute;i xấu.</em></div>\r\n\r\n<div><em>T&ocirc;i hồi trước chưa từng nghĩ tới nhục. &Agrave; v&ocirc; t&igrave;nh n&oacute; c&oacute; x&agrave;i tới một lần. Thầy M&atilde;i biểu t&ocirc;i đọc b&agrave;i. T&ocirc;i kh&ocirc;ng thuộc. Duy nhất bữa đ&oacute; thằng Dị, con Hậu thuộc b&agrave;i. &Ocirc;ng thầy đ&aacute;nh v&ocirc; tay t&ocirc;i một roi. Thấy muốn độn thổ. D&ugrave; t&ocirc;i trước giờ kh&ocirc;ng biết bị đ&aacute;nh bao nhi&ecirc;u roi. Sao t&ocirc;i kh&ocirc;ng thấy xấu hổ với ba mươi lăm đứa kh&aacute;c c&ugrave;ng lớp, mấy trăm đứa kh&aacute;c c&ugrave;ng trường m&agrave; chỉ c&acirc;u m&acirc;u với mỗi thằng Dị, con Hậu. Thằng Dị con Hậu l&agrave; những đứa ngang với toi. N&oacute; hơn t&ocirc;i d&ugrave; chỉ một c&aacute;i cười cũng l&agrave; điều nhục. Trong khi nh&oacute;m ba đứa ch&uacute;ng t&ocirc;i thua mấy chục đứa kia l&agrave; điều rất b&igrave;nh thường.</em></div>\r\n\r\n<div><em>Thầy Độ n&oacute;i rất nhiều người nghĩ như vậy, l&agrave;m như vậy. V&iacute; dụ như nước m&igrave;nh ngh&egrave;o hơn nước kh&aacute;c họ thấy b&igrave;nh thường. Người ta l&agrave;m được những c&ocirc;ng tr&igrave;nh si&ecirc;u mơ ước họ cũng kh&ocirc;ng để bụng xấu hổ. Nhưng hễ những người trong x&oacute;m cất một c&aacute;i nh&agrave; đẹp, sắm một chiếc xe mới họ thấy nhục, phải c&agrave;y xới để c&oacute; tiền sắm cho kỳ hơn. Cho dẫu việc l&agrave;m đ&oacute; c&oacute; khiến cho đất nước n&agrave;y ngh&egrave;o hơn hiện tại hay ngh&egrave;o nhất thế giới cũng kh&ocirc;ng nhằm nhe g&igrave;. Nhục của quốc gia l&agrave; nhục của mấy chục triệu người chớ đ&acirc;u phải của ri&ecirc;ng ta. V&agrave; gần hết mấy chục triệu người nghĩ vậy.</em></div>\r\n', 'Lần đầu thấy trăng', 95, 'Sang_tao_Bung_chay_suc_manh_ben_trong.jpg', '2013-11-10 15:04:46', 75000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE IF NOT EXISTS `tblcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=109 ;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `name`) VALUES
(95, 'van hoc'),
(96, 'Toán học'),
(97, 'Chính Trị'),
(98, 'Khoa học & đời sống'),
(99, 'Phổ thông'),
(105, 'Trẻ em'),
(106, 'Giáo dục'),
(107, 'Văn hóa'),
(108, 'tiểu thuyết');

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
  PRIMARY KEY (`id`),
  KEY `userID` (`userID`),
  KEY `bookID` (`bookID`),
  KEY `paymentMethodID` (`paymentMethodID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=154 ;

--
-- Dumping data for table `tblorder`
--

INSERT INTO `tblorder` (`id`, `userID`, `bookID`, `orderDate`, `discount`, `paymentMethodID`, `price`, `quantity`) VALUES
(1, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(2, 153, 21, '2013-11-05', 10, 3, 1212, 1),
(3, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(4, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(5, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(6, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(7, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(8, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(9, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(10, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(11, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(12, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(13, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(14, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(15, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(16, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(17, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(18, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(19, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(20, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(21, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(22, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(23, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(24, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(25, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(26, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(27, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(28, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(29, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(30, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(31, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(32, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(33, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(34, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(35, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(36, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(37, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(38, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(39, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(40, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(41, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(42, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(43, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(44, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(45, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(46, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(47, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(48, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(49, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(50, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(51, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(52, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(53, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(54, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(55, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(56, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(57, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(58, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(59, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(60, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(61, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(62, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(63, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(64, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(65, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(66, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(67, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(68, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(69, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(70, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(71, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(72, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(73, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(74, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(75, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(76, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(77, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(78, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(79, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(80, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(81, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(82, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(83, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(84, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(85, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(86, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(87, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(88, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(89, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(90, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(91, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(92, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(93, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(94, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(95, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(96, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(97, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(98, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(99, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(100, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(101, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(102, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(103, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(104, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(105, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(106, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(107, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(108, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(109, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(110, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(111, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(112, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(113, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(114, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(115, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(116, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(117, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(118, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(119, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(120, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(121, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(122, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(123, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(124, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(125, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(126, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(127, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(128, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(129, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(130, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(131, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(132, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(133, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(134, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(135, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(136, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(137, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(138, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(139, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(140, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(141, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(142, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(143, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(144, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(145, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(146, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(147, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(148, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(149, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(150, 153, 21, '2013-11-05', 10, 1, 1233, 12),
(151, 157, 22, '2013-11-08', 10, 1, 12334, 1),
(152, 153, 22, '2013-11-26', 10, 1, 111562, 11),
(153, 158, 1239, '2013-11-10', 0, 1, 20000, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tblrole`
--

INSERT INTO `tblrole` (`id`, `role`, `description`) VALUES
(1, 'admin', '123'),
(2, 'member', '121212'),
(3, 'borrower', 'only access at frontend ');

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
  PRIMARY KEY (`id`),
  KEY `roleID` (`roleID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=258 ;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`id`, `username`, `password`, `roleID`, `fullname`, `phoneNumber`, `email`) VALUES
(153, 'kien77', 'kien', 2, 'kien', '123', NULL),
(154, 'kien', 'kien', 2, 'nguyen duc kien', '09888', NULL),
(155, 'kien', 'kien', 2, 'kien123', '123', NULL),
(156, 'kien', 'kien', 2, 'kien123', '123', NULL),
(157, 'kien', 'kien', 1, 'kien123', '123', NULL),
(158, 'kien', 'kien', 1, 'kien123', '123', NULL),
(159, 'kien', 'kien', 2, 'kien123', '123', NULL),
(160, 'kien', 'kien', 1, 'kien123', '123', NULL),
(161, 'kien', 'kien', 1, 'kien123', '123', NULL),
(162, 'kien', 'kien', 1, 'kien123', '123', NULL),
(163, 'kien', 'kien', 1, 'kien123', '123', NULL),
(164, 'kien', 'kien', 1, 'kien123', '123', NULL),
(165, 'kien', 'kien', 1, 'kien123', '123', NULL),
(166, 'kien', 'kien', 1, 'kien123', '123', NULL),
(167, 'kien', 'kien', 1, 'kien123', '123', NULL),
(168, 'kien', 'kien', 1, 'kien123', '123', NULL),
(169, 'kien', 'kien', 1, 'kien123', '123', NULL),
(170, 'kien', 'kien', 1, 'kien123', '123', NULL),
(173, 'kien', 'kien', 1, 'kien123', '123', NULL),
(174, 'kien', 'kien', 1, 'kien123', '123', NULL),
(175, 'kien', 'kien', 1, 'kien123', '123', NULL),
(176, 'kien', 'kien', 1, 'kien123', '123', NULL),
(177, 'kien', 'kien', 1, 'kien123', '123', NULL),
(178, 'kien', 'kien', 1, 'kien123', '123', NULL),
(179, 'kien', 'kien', 1, 'kien123', '123', NULL),
(180, 'kien', 'kien', 1, 'kien123', '123', NULL),
(181, 'kien', 'kien', 1, 'kien123', '123', NULL),
(182, 'kien', 'kien', 1, 'kien123', '123', NULL),
(183, 'kien', 'kien', 1, 'kien123', '123', NULL),
(184, 'kien', 'kien', 1, 'kien123', '123', NULL),
(185, 'kien', 'kien', 1, 'kien123', '123', NULL),
(186, 'kien', 'kien', 1, 'kien123', '123', NULL),
(187, 'kien', 'kien', 1, 'kien123', '123', NULL),
(188, 'kien', 'kien', 1, 'kien123', '123', NULL),
(189, 'kien', 'kien', 1, 'kien123', '123', NULL),
(190, 'kien', 'kien', 1, 'kien123', '123', NULL),
(191, 'kien', 'kien', 1, 'kien123', '123', NULL),
(192, 'kien', 'kien', 1, 'kien123', '123', NULL),
(193, 'kien', 'kien', 1, 'kien123', '123', NULL),
(194, 'kien', 'kien', 1, 'kien123', '123', NULL),
(195, 'kien', 'kien', 1, 'kien123', '123', NULL),
(196, 'kien', 'kien', 1, 'kien123', '123', NULL),
(197, 'kien', 'kien', 1, 'kien123', '123', NULL),
(198, 'kien', 'kien', 1, 'kien123', '123', NULL),
(199, 'kien', 'kien', 1, 'kien123', '123', NULL),
(200, 'kien', 'kien', 1, 'kien123', '123', NULL),
(201, 'kien', 'kien', 1, 'kien123', '123', NULL),
(202, 'kien', 'kien', 1, 'kien123', '123', NULL),
(203, 'kien', 'kien', 1, 'kien123', '123', NULL),
(204, 'kien', 'kien', 1, 'kien123', '123', NULL),
(205, 'kien', 'kien', 1, 'kien123', '123', NULL),
(206, 'kien', 'kien', 1, 'kien123', '123', NULL),
(207, 'kien', 'kien', 1, 'kien123', '123', NULL),
(208, 'kien', 'kien', 1, 'kien123', '123', NULL),
(209, 'kien', 'kien', 1, 'kien123', '123', NULL),
(210, 'kien', 'kien', 1, 'kien123', '123', NULL),
(211, 'kien', 'kien', 1, 'kien123', '123', NULL),
(212, 'kien', 'kien', 1, 'kien123', '123', NULL),
(213, 'kien', 'kien', 1, 'kien123', '123', NULL),
(214, 'kien', 'kien', 1, 'kien123', '123', NULL),
(215, 'kien', 'kien', 1, 'kien123', '123', NULL),
(216, 'kien', 'kien', 1, 'kien123', '123', NULL),
(217, 'kien', 'kien', 1, 'kien123', '123', NULL),
(218, 'kien', 'kien', 1, 'kien123', '123', NULL),
(219, 'kien', 'kien', 1, 'kien123', '123', NULL),
(220, 'kien', 'kien', 1, 'kien123', '123', NULL),
(221, 'kien', 'kien', 1, 'kien123', '123', NULL),
(222, 'kien', 'kien', 1, 'kien123', '123', NULL),
(223, 'kien', 'kien', 1, 'kien123', '123', NULL),
(224, 'kien', 'kien', 1, 'kien123', '123', NULL),
(225, 'kien', 'kien', 1, 'kien123', '123', NULL),
(226, 'kien', 'kien', 1, 'kien123', '123', NULL),
(227, 'kien', 'kien', 1, 'kien123', '123', NULL),
(228, 'kien', 'kien', 1, 'kien123', '123', NULL),
(229, 'kien', 'kien', 1, 'kien123', '123', NULL),
(230, 'kien', 'kien', 1, 'kien123', '123', NULL),
(231, 'kien', 'kien', 1, 'kien123', '123', NULL),
(232, 'kien', 'kien', 1, 'kien123', '123', NULL),
(233, 'kien', 'kien', 1, 'kien123', '123', NULL),
(234, 'kien', 'kien', 1, 'kien123', '123', NULL),
(235, 'kien', 'kien', 1, 'kien123', '123', NULL),
(236, 'kien', 'kien', 1, 'kien123', '123', NULL),
(237, 'kien', 'kien', 1, 'kien123', '123', NULL),
(238, 'kien', 'kien', 1, 'kien123', '123', NULL),
(239, 'kien', 'kien', 1, 'kien123', '123', NULL),
(240, 'kien', 'kien', 1, 'kien123', '123', NULL),
(241, 'kien', 'kien', 1, 'kien123', '123', NULL),
(242, 'kien', 'kien', 1, 'kien123', '123', NULL),
(243, 'kien', 'kien', 1, 'kien123', '123', NULL),
(244, 'kien', 'kien', 1, 'kien123', '123', NULL),
(245, 'kien', 'kien', 1, 'kien123', '123', NULL),
(246, 'kien', 'kien', 1, 'kien123', '123', NULL),
(247, 'kien', 'kien', 1, 'kien123', '123', NULL),
(248, 'kien', 'kien', 1, 'kien123', '123', NULL),
(249, 'kien', 'kien', 1, 'kien123', '123', NULL),
(250, 'kien', 'kien', 1, 'kien123', '123', NULL),
(251, 'kien', 'kien', 1, 'kien123', '123', NULL),
(252, 'kien', 'kien', 1, 'kien123', '123', NULL),
(253, 'kien', 'kien', 1, 'kien123', '123', NULL),
(254, 'kien', 'kien', 1, 'kien123', '123', NULL),
(255, 'kien', 'kien', 1, 'kien123', '123', NULL),
(256, 'kiên', 'kien', 1, 'kien', '123123', NULL),
(257, 'ki', 'kien', 1, 'kien', '123', NULL);

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
