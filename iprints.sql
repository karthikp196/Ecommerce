-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2019 at 08:59 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iprints`
--

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
(1, 3, '1.80', '2.25', '2019-04-29 05:58:03', 'uploads/businesscards/business_card.jpg'),
(2, 4, '1.80', '2.25', '2019-04-29 06:10:18', 'uploads/businesscards/standard_card.jpg'),
(3, 5, '1.80', '2.25', '2019-04-29 06:03:27', 'uploads/businesscards/shape_cut.jpg'),
(4, 6, '1.80', '2.25', '2019-04-29 06:03:48', 'uploads/businesscards/rounded_card.jpg');

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
(4, 'stationary_kit', '2019-04-27 11:07:30');

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `payment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `price` varchar(1000) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_number` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date` varchar(500) NOT NULL,
  `cookie_id` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`product_id`, `category_id`, `product_name`, `created_at`) VALUES
(3, 3, 'standard cards', '2019-04-29 06:20:25'),
(4, 3, 'textured cards', '2019-04-29 06:20:32'),
(5, 3, 'shapecut cards', '2019-04-29 06:20:44'),
(6, 3, 'laminated cards', '2019-04-29 06:20:50');

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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temporary_cart_details`
--

INSERT INTO `temporary_cart_details` (`temp_id`, `user_id`, `product_id`, `no_items`, `price`, `cookie_id`, `created_at`) VALUES
(56, '12', '5', '1000', '1800', '9pe9a78o16rkrq4cc8okn33su1', '2019-05-09 05:59:50'),
(60, '12', '3', '500', '900', '9pe9a78o16rkrq4cc8okn33su1', '2019-05-09 05:59:54'),
(63, '', '3', '800', '1440', '8g7tfalajfcirse7ilgsngaqg4', '2019-05-09 06:17:31'),
(64, '', '3', '185', '333', '9shd0vab0097gnu96tfje0vqn2', '2019-05-09 06:18:12'),
(65, '', '3', '530', '954', 'uhduepfsl2fj911g4v7f1o73a4', '2019-05-09 06:25:40'),
(72, '', '6', '830', '1494', 'uhduepfsl2fj911g4v7f1o73a4', '2019-05-09 06:57:06');

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
(12, 'test', 'test@gmail.com', 9874563210, '202cb962ac59075b964b07152d234b70', '2019-04-30 06:25:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `businesscard`
--
ALTER TABLE `businesscard`
  ADD PRIMARY KEY (`businesscard_id`);

--
-- Indexes for table `category_details`
--
ALTER TABLE `category_details`
  ADD PRIMARY KEY (`category_id`);

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
-- AUTO_INCREMENT for table `businesscard`
--
ALTER TABLE `businesscard`
  MODIFY `businesscard_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `category_details`
--
ALTER TABLE `category_details`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `temporary_cart_details`
--
ALTER TABLE `temporary_cart_details`
  MODIFY `temp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
