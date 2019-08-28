-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 28, 2019 at 07:21 AM
-- Server version: 5.6.41-84.1-log
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fixxgqip_iprints`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `name` varchar(600) NOT NULL,
  `password` varchar(600) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `name`, `password`) VALUES
(1, 'admin', 'admin@123#');

-- --------------------------------------------------------

--
-- Table structure for table `businesscard`
--

CREATE TABLE `businesscard` (
  `businesscard_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `singleside_price` varchar(600) NOT NULL,
  `doubleside_price` varchar(600) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `businesscard`
--

INSERT INTO `businesscard` (`businesscard_id`, `product_id`, `singleside_price`, `doubleside_price`, `created_at`, `product_image`) VALUES
(1, 3, '1.80', '2.25', '2019-06-05 05:19:28', 'uploads/businesscards/standard cards.jpg'),
(2, 4, '1.80', '2.25', '2019-06-05 05:19:54', 'uploads/businesscards/laminated cards.jpg'),
(3, 5, '1.80', '2.25', '2019-06-05 05:22:10', 'uploads/businesscards/shape cut.jpg'),
(4, 6, '1.80', '2.25', '2019-06-05 05:20:47', 'uploads/businesscards/textured cards.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `businesscard_filling`
--

CREATE TABLE `businesscard_filling` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(600) NOT NULL,
  `company_name` varchar(600) NOT NULL,
  `mobile` varchar(600) NOT NULL,
  `address` varchar(1200) NOT NULL,
  `logo` varchar(1000) NOT NULL,
  `additional_text` varchar(1200) NOT NULL,
  `status` int(11) NOT NULL,
  `cookie_id` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `businesscard_filling`
--

INSERT INTO `businesscard_filling` (`id`, `user_id`, `name`, `company_name`, `mobile`, `address`, `logo`, `additional_text`, `status`, `cookie_id`, `created_at`) VALUES
(38, 22, 'GREENLOGICA BUSINESS SOLUTIONS PVT LTD', 'arjun', '8970213000', '141 AECS LAYOUT\r\nSINGASANDRA', 'uploads/businesscard_upload/IHC Backdrop 2019-20_C2C.jpg', 'hiii', 0, 'n411obkmbfmd629kacudab1kf2', '2019-06-28 12:43:30'),
(35, 14, 'Abhishek Pandey', 'Fixxgroup LLP', '7597867068', 'Colive Smart Stay Near Dairy Cirlce, Banerghatta Road Bangalore\r\nBanerghatta Road Bangalore', 'uploads/businesscard_upload/b2.jpg', 'Dum Abhishek pandey', 0, 'ghirjlkogoftma797nv9b19174', '2019-06-25 10:13:04'),
(44, 24, 'kabilesh', 'kabilesh', '79379387973', 'no 87djdoiho', 'uploads/businesscard_upload/ce95b9463fba184d0dd7174a9c85931f.jpg', 'kabi', 0, 'nc3kebta3kv87obbohtgnghm51', '2019-08-11 08:19:22'),
(43, 22, 'arjun', 'arun', '8892506465', 'no26 4th cross hennur', 'uploads/businesscard_upload/WhatsApp Image 2019-07-24 at 11.02.41 AM.jpeg', '', 0, '4592o68ljde9vgfgkn3eqmukp1', '2019-07-24 11:10:58'),
(34, 15, 'karthik', 'webee', '9524279638', '12 namb arcade ,bangalore', 'uploads/businesscard_upload/about_1.jpg', 'love is blind', 0, '1apjok19n4qvp36de22mceplj1', '2019-06-25 10:08:54'),
(27, 15, 'karthik', 'fixx', '9524279638', '12 namb arcade ,bangalore', 'uploads/businesscard_upload/D2uQMr1XQAEnqq4.jpg', 'cookie set', 0, 'sae3c9vksl9jjbitnsm4du3715', '2019-06-13 07:04:59'),
(28, 12, 'karthik', 'fixxgroup', '9524279638', '12 namb arcade ,bangalore', 'uploads/businesscard_upload/karthik.png', 'dfdfdfsdf', 0, 'lstcvbood1de6p3847pksapo42', '2019-06-13 07:09:12'),
(29, 15, 'karthik', 'fixx', '9524279638', '12 namb arcade ,bangalore', 'uploads/businesscard_upload/2019-02-12-12-06-51-668.jpg', 'test of 2.40', 0, 'p0p2jv33l3jcmhsokhdbqa18d0', '2019-06-15 09:10:08'),
(30, 12, 'Test name', 'Test company', '0987456123', 'Fixxgroup, Above andra bank, banaswadi , bangalore, 560043', 'uploads/businesscard_upload/D2uQMr1XQAEnqq4.jpg', 'Nothing is impossible', 0, 'il4no3qqb41iss7g2bp9huit45', '2019-06-15 09:24:34'),
(31, 13, 'anu', 'global', '1234567891', 'bangalore', 'uploads/businesscard_upload/agreement.png', 'trust', 0, 'ftcemfnvaenjfqddqri3hunvm5', '2019-06-17 05:17:22'),
(32, 12, 'testing', 'testgroup', '9874563210', '#40, 3rd Floor S S GRAND ,  100 Feet Road Banaswadi above Andra bank,  Banaswadi Main Road,  Banaswadi, Bangalore â€“ 560043', 'uploads/businesscard_upload/DSC05504.jpg Fix.jpg', 'successfull', 0, 'ho95ar5dstgkcscr50tj760rv7', '2019-06-19 06:10:57'),
(33, 12, 'Test name', 'tesert', '+564555454', 'web group, Above andra bank, banaswadi , bangalore, 560043.', 'uploads/businesscard_upload/admin-user-icon-4.gif', 'hello no problem', 0, 'squ5f5f005jqi3glun8ptnghe0', '2019-06-24 12:28:02'),
(37, 22, 'arun', 'arjun', '8892506465', '141 AECS LAYOUT\r\nSINGASANDRA', 'uploads/businesscard_upload/IHC Backdrop 2019-20_C2C1.jpg', 'hiii', 0, 'n411obkmbfmd629kacudab1kf2', '2019-06-28 12:35:10'),
(39, 12, 'fixteam', 'fixxgroup', '9874563210', '#40, 3rd Floor S S GRAND ,  100 Feet Road Banaswadi above Andra bank,  Banaswadi Main Road,  Banaswadi, Bangalore â€“ 560043', 'uploads/businesscard_upload/IMG-20190305-WA0006.jpg', 'be work', 0, 'aousf7r3p375k2hcjhh4kp0vp1', '2019-07-04 12:46:42'),
(42, 12, 'karthik', 'fixx', '9524279638', '12 namb arcade ,bangalore', 'uploads/businesscard_upload/admin-user-icon-4.gif', 'hello no', 0, 'rv2k162oj9c9kda27q2u6bos66', '2019-07-17 13:01:47'),
(41, 15, 'numpie', 'No 7', '9874563210', '12 namb arcade ,bangalore', 'uploads/businesscard_upload/b2.jpg', 'hello', 0, 'rv2k162oj9c9kda27q2u6bos66', '2019-07-17 10:15:06');

-- --------------------------------------------------------

--
-- Table structure for table `category_details`
--

CREATE TABLE `category_details` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_details`
--

INSERT INTO `category_details` (`category_id`, `category_name`, `created_at`) VALUES
(3, 'business_card', '2019-04-27 11:07:02'),
(4, 'stationary_kit', '2019-04-27 11:07:30'),
(5, 'mugs', '2019-06-11 09:45:27'),
(6, 'pendrive', '2019-06-11 09:45:39'),
(7, 'pens', '2019-06-11 09:45:50'),
(8, 'watersipper', '2019-06-11 09:46:09'),
(9, 'brochures', '2019-06-11 09:46:34'),
(10, 'certificate', '2019-06-11 09:46:47'),
(11, 'flyers', '2019-06-11 09:47:00'),
(12, 'menucards', '2019-06-11 09:47:18'),
(13, 'postcards', '2019-06-11 09:47:34'),
(14, 'posters', '2019-06-11 09:47:46'),
(15, 'roundstickers', '2019-06-11 09:48:01'),
(16, 'signboards', '2019-06-11 09:48:32'),
(17, 'vinyl_print_cut', '2019-06-11 09:49:20'),
(18, 'wallgraphics', '2019-06-11 09:49:36'),
(19, 'gifts', '2019-06-11 12:05:47'),
(20, 'marketing', '2019-06-12 06:06:00'),
(21, 'Vinyl Prints', '2019-06-13 05:18:41'),
(22, 'wallgraphics', '2019-06-15 05:35:17'),
(23, 'sign boards', '2019-06-15 05:35:34'),
(24, 'appearels', '2019-07-30 05:28:08');

-- --------------------------------------------------------

--
-- Table structure for table `checkout_details`
--

CREATE TABLE `checkout_details` (
  `checkout_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `address` varchar(1500) NOT NULL,
  `city` varchar(500) NOT NULL,
  `state` varchar(500) NOT NULL,
  `pincode` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `payment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `price` varchar(1000) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_number` varchar(1000) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date` varchar(500) NOT NULL,
  `cookie_id` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_details`
--

INSERT INTO `payment_details` (`payment_id`, `user_id`, `price`, `product_id`, `order_number`, `created_at`, `date`, `cookie_id`) VALUES
(108, 12, '900.00', 0, '155962729720329', '2019-06-04 05:48:48', '', '1qjrut8ldom3t92qdhkrhstot0'),
(109, 13, '45.00', 0, '155962831918441', '2019-06-04 06:05:54', '', '7u6apljhvg7d0012t1v89e75o4'),
(110, 12, '90.00', 0, '155963922579509', '2019-06-04 09:07:44', '', '1qjrut8ldom3t92qdhkrhstot0'),
(111, 15, '405.00', 0, '155964536040678', '2019-06-04 10:49:53', '', 'po5vj4vagb7u0rbmdlpusgjf56'),
(112, 12, '1053.00', 0, '155973238179709', '2019-06-05 11:00:14', '', 'rr1j20pnlt5r9vug9e7tstbgr6'),
(113, 15, '360.00', 0, '155997681173991', '2019-06-08 06:56:05', '', 'abve5d71vgl2tqklrgnc1mmuc6'),
(114, 20, '360.00', 0, '155997736536086', '2019-06-08 07:03:39', '', 'abve5d71vgl2tqklrgnc1mmuc6'),
(115, 21, '1080.00', 0, '155997751812988', '2019-06-08 07:05:59', '', 'abve5d71vgl2tqklrgnc1mmuc6'),
(116, 20, '540.00', 0, '155997763685096', '2019-06-08 07:07:57', '', 'abve5d71vgl2tqklrgnc1mmuc6'),
(117, 20, '900.00', 0, '156000204920988', '2019-06-08 13:54:54', '', 'v2sgp5plq529f8q118dnq8b0v1'),
(118, 15, '1818.00', 0, '156016130635154', '2019-06-10 10:09:01', '', 'cb1bkqhp3toiia24qfibh71187'),
(119, 12, '10125.60', 0, '156033382458771', '2019-06-12 10:04:32', '', 'omt75r32burrnga4uv1ordtta2'),
(120, 12, '597.00', 0, '156034054767523', '2019-06-12 11:56:19', '', 'omt75r32burrnga4uv1ordtta2'),
(121, 15, '5295.00', 0, '156040108125424', '2019-06-13 04:45:14', '', 'sae3c9vksl9jjbitnsm4du3715'),
(122, 15, '2216.00', 0, '156040231493976', '2019-06-13 05:05:46', '', 'sae3c9vksl9jjbitnsm4du3715'),
(123, 15, '2394.00', 0, '156040266123294', '2019-06-13 05:12:29', '', 'ilk5vbqjq890kg0lodvtno1q87'),
(124, 15, '2.25', 0, '156040270068329', '2019-06-13 05:14:57', '', 'sae3c9vksl9jjbitnsm4du3715'),
(125, 15, '500.00', 0, '156040949959190', '2019-06-13 07:06:09', '', 'sae3c9vksl9jjbitnsm4du3715'),
(126, 12, '597.00', 0, '15604097525432', '2019-06-13 07:09:41', '', 'lstcvbood1de6p3847pksapo42'),
(127, 12, '5170.00', 0, '156042194260527', '2019-06-13 10:32:56', '', '6jbctcbp3l7focq84lfmj1s706'),
(128, 15, '3380.00', 0, '156058980826335', '2019-06-15 09:10:40', '', 'p0p2jv33l3jcmhsokhdbqa18d0'),
(129, 12, '1127.00', 0, '156059067463174', '2019-06-15 09:25:06', '', 'il4no3qqb41iss7g2bp9huit45'),
(130, 13, '73257.00', 0, '156074864253019', '2019-06-17 05:17:57', '', 'ftcemfnvaenjfqddqri3hunvm5'),
(131, 12, '742.50', 0, '156092465710798', '2019-06-19 06:12:05', '', 'ho95ar5dstgkcscr50tj760rv7'),
(132, 12, '249.00', 0, '156136834871291', '2019-06-24 09:26:21', '', 'squ5f5f005jqi3glun8ptnghe0'),
(133, 12, '699.80', 0, '156144750855173', '2019-06-25 07:25:32', '', '1apjok19n4qvp36de22mceplj1'),
(134, 15, '3882.00', 0, '156145733591483', '2019-06-25 10:09:18', '', '1apjok19n4qvp36de22mceplj1'),
(135, 14, '378.00', 0, '15614575842631', '2019-06-25 10:13:59', '', 'ghirjlkogoftma797nv9b19174'),
(136, 15, '2399.00', 0, '15615340202763', '2019-06-26 07:27:32', '', '95b929shcvoe75iun7c3ukoj44'),
(137, 12, '749.00', 0, '156224440285942', '2019-07-04 12:47:10', '', 'aousf7r3p375k2hcjhh4kp0vp1'),
(138, 15, '3496.00', 0, '15625133375688', '2019-07-07 15:30:05', '', '2jus5pfufq9ojsmqi80m5fbj70'),
(139, 12, '3999.80', 0, '156336850873764', '2019-07-17 13:02:42', '', 'rv2k162oj9c9kda27q2u6bos66');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `product_price` varchar(500) NOT NULL,
  `product_image` varchar(1000) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`product_id`, `category_id`, `product_name`, `product_price`, `product_image`, `created_at`) VALUES
(3, 3, 'standard cards', '', '', '2019-04-29 06:20:25'),
(4, 3, 'Laminated cards', '', '', '2019-06-05 05:21:46'),
(5, 3, 'shapecut cards', '', '', '2019-04-29 06:20:44'),
(6, 3, 'textured cards', '', '', '2019-06-05 05:22:42'),
(7, 5, 'Mugs', '200', 'mugs.jpg', '2019-07-23 11:29:46'),
(8, 19, 'pen drive', '450', 'pen drive.jpg', '2019-07-23 11:32:38'),
(9, 19, 'Pens', '30', 'pens.jpg', '2019-07-23 11:32:19'),
(10, 19, 'Water Sipper', '300', 'water sipper.jpg', '2019-07-23 11:33:27'),
(11, 19, 'Magnetic', '30', 'magnetic.jpg', '2019-07-23 11:34:43'),
(12, 4, 'Bill Books', '150', 'bill books.jpg', '2019-07-23 10:30:37'),
(13, 4, 'Envelope', '10', 'envelope.jpg', '2019-07-23 10:31:19'),
(14, 4, 'Id Cards', '40', 'id.jpg', '2019-07-23 10:31:40'),
(15, 4, 'Letter Head', '8', 'letter head.jpg', '2019-07-23 10:33:06'),
(16, 20, 'Brouchers', '7', 'brochures.jpg', '2019-07-23 11:12:14'),
(17, 20, 'Certificates', '150', 'certificate.jpg', '2019-07-23 11:12:52'),
(18, 20, 'Flyers', '5', 'flyers.jpg', '2019-07-23 11:13:32'),
(19, 20, 'Menu Cards', '200', 'menu cards.jpg', '2019-07-23 11:14:00'),
(20, 20, 'Post Cards', '80', 'post cards.jpg', '2019-07-23 11:15:05'),
(21, 20, 'posters', '200', 'posters.jpg', '2019-07-23 11:14:21'),
(22, 20, 'Round Stickers', '10', 'round stickers.jpg', '2019-07-23 11:16:26'),
(23, 21, 'Canvas', '70', 'canvas.jpg', '2019-07-23 11:19:35'),
(24, 21, 'Non tearable prints', '75', 'non tearable prints.jpg', '2019-07-23 11:19:53'),
(25, 21, 'One way', '90', 'one way.jpg', '2019-07-23 11:19:43'),
(26, 21, 'Print and cut', '90', 'print and cut.jpg', '2019-07-23 11:20:00'),
(27, 21, 'Transarent', '75', 'transarent.jpg', '2019-07-23 11:20:06'),
(28, 21, 'Vinyl print', '70', 'vinyl print.jpg', '2019-07-23 11:22:00'),
(29, 22, 'Design themes', '70', 'design themes.jpg', '2019-06-27 06:01:14'),
(30, 22, 'print your photo', '75', 'print your photo.jpg', '2019-06-27 06:01:20'),
(31, 22, 'printed wall paper', '70', 'printed wall paper.jpg', '2019-06-27 06:01:25'),
(32, 23, '2D Boards', '700', '2d boards.jpg', '2019-07-23 11:24:56'),
(33, 23, '3D Acrylic', '900', '3d acrylic.jpg', '2019-07-23 11:25:08'),
(34, 23, 'Backlit', '300', 'backlit.jpg', '2019-07-23 11:25:21'),
(35, 23, 'Foam Board sign', '550', 'foam board sign.jpg', '2019-07-23 11:25:32'),
(36, 23, 'Led sign', '4000', 'led sign.jpg', '2019-06-15 05:51:35'),
(37, 23, 'Metal 3D', '1800', 'metal 3d.jpg', '2019-07-23 11:25:40'),
(38, 23, 'Promo table', '4500', 'promo table.jpg', '2019-07-23 11:25:59'),
(39, 23, 'Roll Up Standees', '2500', 'standees.jpg', '2019-07-23 11:27:28'),
(40, 23, 'Sunboard  prints', '2500', 'sunboard  prints.jpg', '2019-06-15 05:53:38'),
(41, 24, 'Back bag', '400', 'Back bag.jpg', '2019-07-30 05:29:04'),
(42, 24, 'cap', '299', 'cap.jpg', '2019-07-30 05:29:36'),
(43, 24, 'laptop bag', '300', 'laptop bag.jpg', '2019-07-30 05:30:18'),
(44, 24, 'T Shirt', '250', 'T Shirt.jpg', '2019-07-30 05:30:47');

-- --------------------------------------------------------

--
-- Table structure for table `temporary_cart_details`
--

CREATE TABLE `temporary_cart_details` (
  `temp_id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `no_items` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `cookie_id` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temporary_cart_details`
--

INSERT INTO `temporary_cart_details` (`temp_id`, `user_id`, `product_id`, `no_items`, `price`, `cookie_id`, `created_at`, `status`) VALUES
(359, '15', '3', '50', '90', '1apjok19n4qvp36de22mceplj1', '2019-06-25 10:09:18', 1),
(360, '15', '14', '5', '495', '1apjok19n4qvp36de22mceplj1', '2019-06-25 10:09:18', 1),
(361, '15', '18', '1', '349', '1apjok19n4qvp36de22mceplj1', '2019-06-25 10:09:18', 1),
(362, '15', '25', '1', '200', '1apjok19n4qvp36de22mceplj1', '2019-06-25 10:09:18', 1),
(363, '15', '35', '1', '2499', '1apjok19n4qvp36de22mceplj1', '2019-06-25 10:09:18', 1),
(364, '15', '10', '1', '249', '1apjok19n4qvp36de22mceplj1', '2019-06-25 10:09:18', 1),
(365, '14', '3', '100', '180', 'ghirjlkogoftma797nv9b19174', '2019-06-25 10:13:59', 1),
(366, '14', '20', '2', '198', 'ghirjlkogoftma797nv9b19174', '2019-06-25 10:13:59', 1),
(367, '15', '8', '1', '400', '95b929shcvoe75iun7c3ukoj44', '2019-06-26 07:27:32', 1),
(368, '15', '17', '1', '499', '95b929shcvoe75iun7c3ukoj44', '2019-06-26 07:27:32', 1),
(369, '15', '31', '1', '1500', '95b929shcvoe75iun7c3ukoj44', '2019-06-26 07:27:32', 1),
(370, '', '13', '1', '249', 'imr11cf7fbjmsepn1upglegbh7', '2019-06-26 10:12:03', 0),
(372, '', '30', '125', '9375', 'hb8sk4dkkf6lgk2f2tagiq1o10', '2019-06-27 06:02:03', 0),
(374, '', '24', '1', '150', 'mlh7sg2tjcednhl0duhcnkgrt3', '2019-06-27 11:59:51', 0),
(375, '', '8', '1', '400', 'mlh7sg2tjcednhl0duhcnkgrt3', '2019-06-27 12:00:14', 0),
(376, '', '7', '5', '995', '60dbg2kcqfeaccm7lbvibocoa0', '2019-06-27 12:03:54', 0),
(379, '22', '37', '1', '2500', 'n411obkmbfmd629kacudab1kf2', '2019-06-28 12:43:30', 0),
(380, '', '3', '1', '1.8', 'tnb198l9er2ig10b7qo4dc2pt3', '2019-06-29 04:37:55', 0),
(382, '', '4', '5', '9', 'k3p7b7jm186sje42jndiico712', '2019-07-01 05:47:40', 0),
(384, '', '29', '2', '140', 'kgdeb884dtp06hvp628o5ngkf6', '2019-07-03 08:52:54', 0),
(385, '', '14', '2', '198', 'c30vojbm60vprht483sekc71q0', '2019-07-03 08:58:57', 0),
(386, '', '17', '2', '998', 'c30vojbm60vprht483sekc71q0', '2019-07-03 09:01:16', 0),
(388, '', '15', '100', '29900', 'tb3n21jhcqh1qo33ej61f75n01', '2019-07-04 12:17:42', 0),
(390, '12', '25', '2', '400', 'aousf7r3p375k2hcjhh4kp0vp1', '2019-07-04 12:47:10', 1),
(391, '12', '18', '1', '349', 'aousf7r3p375k2hcjhh4kp0vp1', '2019-07-04 12:47:10', 1),
(393, '', '37', '1', '2500', 'l8nnfdrcfjbqs1k6bur3ol0ed7', '2019-07-05 06:27:21', 0),
(394, '', '12', '5', '1995', 's13rsb2mminf44u39rrfb3k1a4', '2019-07-06 07:11:17', 0),
(395, '', '12', '5', '1995', 's13rsb2mminf44u39rrfb3k1a4', '2019-07-06 07:11:17', 0),
(396, '15', '12', '2', '798', '2jus5pfufq9ojsmqi80m5fbj70', '2019-07-07 15:30:05', 1),
(397, '15', '18', '2', '698', '2jus5pfufq9ojsmqi80m5fbj70', '2019-07-07 15:30:05', 1),
(398, '15', '34', '1', '2000', '2jus5pfufq9ojsmqi80m5fbj70', '2019-07-07 15:30:05', 1),
(399, '', '29', '15', '1050', '2vvj0pht7ht1am828dbb1nniq7', '2019-07-08 12:36:54', 0),
(400, '', '12', '3', '1197', '4h9lf4kgkroa67n1bvc5jmfkg3', '2019-07-15 11:47:59', 0),
(401, '12', '17', '2', '998', 'rv2k162oj9c9kda27q2u6bos66', '2019-07-17 13:02:42', 1),
(402, '12', '3', '1', '1.8', 'rv2k162oj9c9kda27q2u6bos66', '2019-07-17 13:02:42', 1),
(403, '12', '33', '1', '3000', 'rv2k162oj9c9kda27q2u6bos66', '2019-07-17 13:02:42', 1),
(404, '', '3', '3', '5.4', 'rv2k162oj9c9kda27q2u6bos66', '2019-07-17 13:09:12', 0),
(405, '', '4', '20', '36', 'rv2k162oj9c9kda27q2u6bos66', '2019-07-17 13:09:18', 0),
(406, '', '13', '1', '249', 'rv2k162oj9c9kda27q2u6bos66', '2019-07-17 13:09:58', 0),
(407, '23', '3', '1', '1.8', 'a3qfhbg3gkpu7mvn4n0n15oh82', '2019-07-18 05:34:54', 0),
(408, '23', '9', '1', '99', 'a3qfhbg3gkpu7mvn4n0n15oh82', '2019-07-18 05:34:54', 0),
(410, '', '7', '2', '398', '09l4t17q5219vlbpvipqtis785', '2019-07-20 11:00:23', 0),
(412, '', '15', '2', '598', 'eog0gjduagr2on50c0emsqdbj6', '2019-07-20 12:08:14', 0),
(413, '', '22', '1', '49', 'hg386ntcepgt50p1ga7m0i5mq7', '2019-07-22 13:09:28', 0),
(418, '', '13', '1', '10', '5sjmddoimu2bnj8ud5b2s9dpd0', '2019-07-23 11:43:17', 0),
(419, '', '13', '5', '50', 'ejr2072lq11sa80v2rnet24hq1', '2019-07-23 12:10:43', 0),
(420, '', '24', '1', '75', '5sjmddoimu2bnj8ud5b2s9dpd0', '2019-07-23 12:40:55', 0),
(423, '22', '3', '100', '180', '4592o68ljde9vgfgkn3eqmukp1', '2019-07-24 11:11:00', 0),
(434, '', '25', '3', '270', 'pv0qpdq818bmj7lggbih0jg4r1', '2019-07-24 12:43:10', 0),
(435, '', '13', '1', '10', '3st3la6ecvab9csib4ndlg72l4', '2019-07-25 10:04:41', 0),
(436, '', '17', '2', '300', 'hqep0bm3h80vqgdpktv0nvrju5', '2019-07-26 09:51:35', 0),
(439, '', '14', '2', '80', 'hqep0bm3h80vqgdpktv0nvrju5', '2019-07-26 10:11:59', 0),
(441, '', '42', '1', '299', '', '2019-07-30 11:00:00', 0),
(442, '', '14', '1', '40', 'toiot4fqfhnslgi541fee2osu4', '2019-07-30 11:00:13', 0),
(445, '', '29', '2', '140', 'toiot4fqfhnslgi541fee2osu4', '2019-07-30 11:06:53', 0),
(446, '', '12', '1', '150', '', '2019-07-31 09:15:08', 0),
(452, '', '8', '1', '450', 'kkkj9ra2ufc724kpfqp7b0uuq7', '2019-07-31 09:52:51', 0),
(456, '', '18', '1', '5', 'kkkj9ra2ufc724kpfqp7b0uuq7', '2019-07-31 12:14:40', 0),
(458, '', '42', '2', '598', 'csrjt38bknqjjacjkh8qpvpb27', '2019-08-02 10:12:36', 0),
(459, '', '7', '1', '200', 'qkp3sgkqchio0036vjtu4tmkl6', '2019-08-09 06:55:59', 0),
(460, '', '5', '2', '4.5', 'qkp3sgkqchio0036vjtu4tmkl6', '2019-08-09 06:56:39', 0),
(461, '', '5', '2', '4.5', 'qkp3sgkqchio0036vjtu4tmkl6', '2019-08-09 06:56:39', 0),
(462, '24', '14', '10', '400', 'nc3kebta3kv87obbohtgnghm51', '2019-08-11 08:19:22', 0),
(463, '', '3', '100', '180', 'puu6vkul0fslbfag1ujmaqkbp3', '2019-08-26 13:31:41', 0),
(464, '', '3', '100', '225', 'puu6vkul0fslbfag1ujmaqkbp3', '2019-08-26 13:31:48', 0),
(465, '', '5', '100', '225', 'puu6vkul0fslbfag1ujmaqkbp3', '2019-08-26 13:32:00', 0),
(466, '', '6', '100', '180', 'puu6vkul0fslbfag1ujmaqkbp3', '2019-08-26 13:32:09', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `mobile` bigint(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `password`, `created_at`) VALUES
(11, 'karthik', 'karthikp196@gmail.com', 9524279638, '21232f297a57a5a743894a0e4a801fc3', '2019-04-27 10:23:36'),
(12, 'test', 'test@gmail.com', 9874563210, '202cb962ac59075b964b07152d234b70', '2019-04-30 06:25:51'),
(13, 'ankita', 'hardiankita@gmail.com', 7204346248, 'a01255746d136260503338d3dfb5b37a', '2019-05-13 07:19:17'),
(14, 'abhishek', 'abhishek@gmail.com', 7896541320, 'f48d873f1d5509899071863151836149', '2019-05-09 13:01:30'),
(15, 'karthik', 'karthikfixx@gmail.com', 9524279637, '405513eb7527819f9e093e0a03aadb41', '2019-05-14 04:59:36'),
(16, 'savitri', 'savitrifixxgroupllp.com', 9986165490, 'f80d123e105160a577e7f356381a23e5', '2019-05-16 10:36:34'),
(17, 'cynthia', 'cynthiadaffny77@gmail.com', 7022657969, 'f44bff1c27ee728170e14786b4360f0a', '2019-05-28 12:19:00'),
(18, 'jai', 's@gmail.com', 5453535344, 'e74398f588838a34b824862c845cb0ee', '2019-06-05 05:53:39'),
(19, 'Ram Purushothaman', 'f9creatives@gmail.com', 9945040907, '13a224ef920af18191b809f1a9d48c19', '2019-06-07 12:19:59'),
(20, 'Pradeep', 'pradeep@gmail.com', 9840260092, 'e10adc3949ba59abbe56e057f20f883e', '2019-06-08 07:01:38'),
(21, 'kamesh', 'kameshkaran92@gmail.com', 8870068991, '03d2924e0693ecca4b65dd995fdefd38', '2019-06-08 07:04:32'),
(22, 'arjun', 'arjunkmr76100@gmail.com', 8892506465, 'd08bd31b344e494547df5ada2cc9e3d9', '2019-06-28 12:33:11'),
(23, 'mr robot', 'mrrobot@fsoceity.com', 999997899, '6ff9d539047fde159e88d2d1e11ef574', '2019-07-18 05:11:49'),
(24, 'kabilesh', 'kabileshvadivel2444@outlook.com', 7904244319, 'e9258ba07c39a36788c1efeb67d01ff8', '2019-08-11 08:17:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `businesscard`
--
ALTER TABLE `businesscard`
  ADD PRIMARY KEY (`businesscard_id`);

--
-- Indexes for table `businesscard_filling`
--
ALTER TABLE `businesscard_filling`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_details`
--
ALTER TABLE `category_details`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `checkout_details`
--
ALTER TABLE `checkout_details`
  ADD PRIMARY KEY (`checkout_id`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `temporary_cart_details`
--
ALTER TABLE `temporary_cart_details`
  ADD PRIMARY KEY (`temp_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `businesscard`
--
ALTER TABLE `businesscard`
  MODIFY `businesscard_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `businesscard_filling`
--
ALTER TABLE `businesscard_filling`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `category_details`
--
ALTER TABLE `category_details`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `checkout_details`
--
ALTER TABLE `checkout_details`
  MODIFY `checkout_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `temporary_cart_details`
--
ALTER TABLE `temporary_cart_details`
  MODIFY `temp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=467;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
