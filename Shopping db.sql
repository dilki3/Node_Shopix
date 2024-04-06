-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 06, 2024 at 04:00 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `address_detail`
--

CREATE TABLE `address_detail` (
  `address_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL DEFAULT '',
  `phone` varchar(20) NOT NULL DEFAULT '',
  `address` varchar(200) NOT NULL DEFAULT '',
  `city` varchar(75) NOT NULL DEFAULT '',
  `state` varchar(75) NOT NULL DEFAULT '',
  `type_name` varchar(50) NOT NULL DEFAULT '',
  `postal_code` varchar(20) NOT NULL DEFAULT '',
  `is_default` int(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modify_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `address_detail`
--

INSERT INTO `address_detail` (`address_id`, `user_id`, `name`, `phone`, `address`, `city`, `state`, `type_name`, `postal_code`, `is_default`, `status`, `created_date`, `modify_date`) VALUES
(7, 12, 'mike', '072345678', 'kalugalla road', 'kurunegala', 'ganewaththa', 'Home', '4661', 0, 2, '2024-03-20 16:13:14', '2024-03-30 12:18:58'),
(8, 12, 'mike', '2237681982', 'colombo', 'colombo', 'gampaha', 'Office', '1235', 0, 1, '2024-03-30 11:57:44', '2024-03-30 11:57:44'),
(9, 12, 'mike', '23465', 'asda', 'dfff', 'asd', 'Home', '543', 0, 1, '2024-03-30 12:44:46', '2024-03-30 12:44:46'),
(10, 15, 'dilki', '123457', 'kurunegala', 'kurunegala', 'kandy', 'Home', '3456', 0, 1, '2024-04-01 09:27:50', '2024-04-01 09:27:50'),
(11, 16, 'Mandy', '123', 'colombo', 'colombo', 'kurunegala', 'Home', '8970', 0, 1, '2024-04-06 18:07:03', '2024-04-06 18:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `brand_detail`
--

CREATE TABLE `brand_detail` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(150) NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '1: active, 2: deleted',
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modify_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brand_detail`
--

INSERT INTO `brand_detail` (`brand_id`, `brand_name`, `status`, `created_date`, `modify_date`) VALUES
(1, 'bigs', 2, '2023-07-26 15:16:50', '2024-03-15 17:10:41'),
(2, 'Meadow Blue', 1, '2024-03-15 17:09:02', '2024-03-15 17:09:02'),
(3, 'Marine', 1, '2024-03-15 17:09:28', '2024-03-15 17:09:28'),
(4, 'Crimson', 1, '2024-03-15 17:09:38', '2024-03-15 17:09:38'),
(5, 'Shopix', 1, '2024-03-30 22:57:26', '2024-03-30 22:57:26');

-- --------------------------------------------------------

--
-- Table structure for table `cart_detail`
--

CREATE TABLE `cart_detail` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `prod_id` int(11) NOT NULL DEFAULT 0,
  `qty` int(11) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modify_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_detail`
--

INSERT INTO `cart_detail` (`cart_id`, `user_id`, `prod_id`, `qty`, `status`, `created_date`, `modify_date`) VALUES
(98, 12, 9, 1, 2, '2024-03-21 16:26:45', '2024-03-21 21:25:00'),
(99, 12, 1, 1, 2, '2024-03-21 21:50:33', '2024-03-21 21:50:47'),
(100, 12, 1, 1, 2, '2024-03-21 21:52:16', '2024-03-21 21:52:25'),
(101, 12, 10, 1, 2, '2024-03-21 22:38:49', '2024-03-21 22:39:06'),
(102, 12, 1, 1, 2, '2024-03-21 22:53:14', '2024-03-21 22:53:34'),
(103, 12, 1, 1, 2, '2024-03-22 19:51:41', '2024-03-22 19:55:46'),
(104, 12, 1, 1, 2, '2024-03-22 20:10:51', '2024-03-22 20:11:09'),
(105, 12, 13, 1, 2, '2024-03-22 20:10:59', '2024-03-22 20:11:09'),
(106, 12, 1, 1, 2, '2024-03-22 20:12:32', '2024-03-22 20:12:40'),
(107, 12, 9, 1, 2, '2024-03-25 12:48:31', '2024-03-29 16:35:28'),
(108, 12, 11, 1, 2, '2024-03-25 17:27:05', '2024-03-29 16:35:28'),
(109, 12, 11, 1, 2, '2024-03-29 16:38:00', '2024-03-29 16:38:16'),
(110, 12, 1, 1, 2, '2024-03-29 16:52:27', '2024-04-01 07:12:08'),
(111, 12, 14, 1, 2, '2024-03-30 11:15:41', '2024-03-30 13:14:41'),
(112, 12, 11, 1, 2, '2024-03-30 14:02:15', '2024-04-01 07:11:41'),
(113, 12, 11, 2, 2, '2024-03-30 23:42:59', '2024-04-01 07:12:08'),
(114, 12, 30, 1, 2, '2024-03-30 23:45:16', '2024-04-01 07:12:08'),
(115, 12, 11, 1, 2, '2024-04-01 07:09:51', '2024-04-01 07:11:43'),
(116, 12, 29, 1, 2, '2024-04-01 07:10:50', '2024-04-01 07:12:08'),
(117, 12, 11, 1, 2, '2024-04-01 07:21:15', '2024-04-01 07:22:40'),
(118, 12, 11, 2, 2, '2024-04-01 07:22:29', '2024-04-01 07:22:57'),
(119, 15, 12, 2, 2, '2024-04-01 09:26:17', '2024-04-01 09:30:08'),
(120, 12, 29, 2, 2, '2024-04-03 23:04:46', '2024-04-03 23:05:22'),
(121, 16, 20, 1, 2, '2024-04-06 18:04:43', '2024-04-06 18:09:48'),
(122, 16, 17, 1, 2, '2024-04-06 18:04:58', '2024-04-06 18:09:48'),
(123, 16, 29, 1, 2, '2024-04-06 18:05:21', '2024-04-06 18:09:48');

-- --------------------------------------------------------

--
-- Table structure for table `category_detail`
--

CREATE TABLE `category_detail` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(100) NOT NULL DEFAULT '',
  `image` varchar(75) NOT NULL DEFAULT '',
  `color` varchar(10) NOT NULL DEFAULT '000000',
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '1 = active, 2 = delete',
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modify_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_detail`
--

INSERT INTO `category_detail` (`cat_id`, `cat_name`, `image`, `color`, `status`, `created_date`, `modify_date`) VALUES
(7, 'Men\'s Clothing', 'category/20240315161547154763ZokIWlVr.jpeg', '49D083', 1, '2024-03-15 16:15:47', '2024-03-15 16:15:47'),
(8, 'Women\'s Clothing', 'category/2024031516171417140rEG2P5Ayf.jpeg', '49D083', 1, '2024-03-15 16:17:14', '2024-03-15 16:17:14'),
(9, 'Kid\'s Clothing', 'category/2024031516173717372dXuorKMil.jpeg', '49D083', 1, '2024-03-15 16:17:37', '2024-03-15 16:17:37'),
(10, 'Men\'s Shoes', 'category/202403151618171817VzVYAKJgem.jpeg', '49D083', 1, '2024-03-15 16:18:17', '2024-03-15 16:18:17'),
(11, 'Women\'s Shoes', 'category/202403151618321832PVbub1IkHc.jpeg', '49D083', 1, '2024-03-15 16:18:32', '2024-03-15 16:18:32'),
(12, 'Kid\'s Shoes', 'category/2024031516185018500cL7FWFxNd.jpeg', '49D083', 1, '2024-03-15 16:18:50', '2024-03-15 16:18:50'),
(13, 'Accessories', 'category/202403151619331933VloulvnuKe.jpeg', '49D083', 1, '2024-03-15 16:19:33', '2024-03-15 16:19:33'),
(14, 'Active Wear', 'category/20240315162005205nomqnDdVEI.jpeg', '49D083', 1, '2024-03-15 16:20:05', '2024-03-15 16:20:05');

-- --------------------------------------------------------

--
-- Table structure for table `color_detail`
--

CREATE TABLE `color_detail` (
  `color_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL DEFAULT 0,
  `image` varchar(75) NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '1 = active, 2 = delete',
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modify_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorite_detail`
--

CREATE TABLE `favorite_detail` (
  `fav_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modify_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favorite_detail`
--

INSERT INTO `favorite_detail` (`fav_id`, `prod_id`, `user_id`, `status`, `created_date`, `modify_date`) VALUES
(20, 1, 12, 1, '2024-03-18 13:21:57', '2024-03-18 13:21:57'),
(21, 12, 12, 1, '2024-03-30 23:26:07', '2024-03-30 23:26:07'),
(23, 30, 12, 1, '2024-03-30 23:45:01', '2024-03-30 23:45:01'),
(25, 11, 12, 1, '2024-04-01 07:22:10', '2024-04-01 07:22:10'),
(26, 1, 15, 1, '2024-04-01 09:30:19', '2024-04-01 09:30:19'),
(27, 17, 16, 1, '2024-04-06 18:10:03', '2024-04-06 18:10:03');

-- --------------------------------------------------------

--
-- Table structure for table `image_detail`
--

CREATE TABLE `image_detail` (
  `img_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL DEFAULT 0,
  `image` varchar(75) NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '1 = active, 2 = delete',
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modify_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `image_detail`
--

INSERT INTO `image_detail` (`img_id`, `prod_id`, `image`, `status`, `created_date`, `modify_date`) VALUES
(19, 1, 'product/20240316000149149pAvUiafNi1.jpeg', 1, '2024-03-16 00:01:49', '2024-03-16 00:01:49'),
(20, 1, 'product/20240316000242242B7iufAePWX.jpeg', 1, '2024-03-16 00:02:42', '2024-03-16 00:02:42'),
(21, 1, 'product/20240316000412412BVgzOQj21h.jpeg', 1, '2024-03-16 00:04:12', '2024-03-16 00:04:12'),
(24, 9, 'product/202403171356495649evDlzdQyLO.jpeg', 1, '2024-03-17 13:56:49', '2024-03-17 13:56:49'),
(25, 9, 'product/202403171938403840uYXKsYzKSE.jpeg', 1, '2024-03-17 19:38:40', '2024-03-17 19:38:40'),
(29, 10, 'product/202403191354035431S201y2DSq.jpeg', 1, '2024-03-19 13:54:03', '2024-03-19 13:54:03'),
(30, 11, 'product/202403221455355535ySyp6eemhk.jpeg', 1, '2024-03-22 14:55:35', '2024-03-22 14:55:35'),
(31, 12, 'product/2024032215000808uXsywWkvZZ.jpeg', 1, '2024-03-22 15:00:08', '2024-03-22 15:00:08'),
(32, 13, 'product/20240322150230230TyXQl8vguW.webp', 1, '2024-03-22 15:02:30', '2024-03-22 15:02:30'),
(33, 14, 'product/202403291534223422NJLzXJVnuz.jpeg', 1, '2024-03-29 15:34:22', '2024-03-29 15:34:22'),
(34, 15, 'product/2024033022584558452360P7PfBj.jpeg', 1, '2024-03-30 22:58:45', '2024-03-30 22:58:45'),
(35, 16, 'product/2024033023004004062qiiLSaxt.jpeg', 1, '2024-03-30 23:00:40', '2024-03-30 23:00:40'),
(36, 17, 'product/20240330230303333O0BMpj7lV.jpeg', 1, '2024-03-30 23:03:03', '2024-03-30 23:03:03'),
(37, 18, 'product/20240330230439439SLgZagLB56.jpeg', 1, '2024-03-30 23:04:39', '2024-03-30 23:04:39'),
(38, 19, 'product/202403302306186189HxYDxrLFO.jpeg', 1, '2024-03-30 23:06:18', '2024-03-30 23:06:18'),
(39, 20, 'product/20240330230716716suz6gBijua.jpeg', 1, '2024-03-30 23:07:16', '2024-03-30 23:07:16'),
(40, 21, 'product/20240330230847847TsFGOMygNM.webp', 1, '2024-03-30 23:08:47', '2024-03-30 23:08:47'),
(41, 22, 'product/20240330231009109e1ffsiJGkX.jpeg', 1, '2024-03-30 23:10:09', '2024-03-30 23:10:09'),
(42, 23, 'product/20240330231109119pwBNCl8XAY.jpeg', 1, '2024-03-30 23:11:09', '2024-03-30 23:11:09'),
(43, 24, 'product/202403302312361236JhREFdldKw.jpeg', 1, '2024-03-30 23:12:36', '2024-03-30 23:12:36'),
(44, 25, 'product/202403302314491449WLQQZ9xrSe.jpeg', 1, '2024-03-30 23:14:49', '2024-03-30 23:14:49'),
(45, 26, 'product/202403302315581558OmS3aBfxTE.jpeg', 1, '2024-03-30 23:15:58', '2024-03-30 23:15:58'),
(46, 27, 'product/202403302317411741ajB2Vu8qje.jpeg', 1, '2024-03-30 23:17:41', '2024-03-30 23:17:41'),
(47, 28, 'product/202403302321582158NLu2l4VbER.jpeg', 1, '2024-03-30 23:21:58', '2024-03-30 23:21:58'),
(48, 29, 'product/202403302323482348XPvvNWFDzF.jpeg', 1, '2024-03-30 23:23:48', '2024-03-30 23:23:48'),
(49, 30, 'product/20240330232507257bgDCVxPAcW.jpeg', 1, '2024-03-30 23:25:07', '2024-03-30 23:25:07'),
(50, 31, 'product/202404061312261226lje5nPgIpy.jpg', 1, '2024-04-06 13:12:26', '2024-04-06 13:12:26');

-- --------------------------------------------------------

--
-- Table structure for table `offer_detail`
--

CREATE TABLE `offer_detail` (
  `offer_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL DEFAULT 0,
  `price` double NOT NULL DEFAULT 0,
  `start_date` datetime NOT NULL DEFAULT current_timestamp(),
  `end_date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modify_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `offer_detail`
--

INSERT INTO `offer_detail` (`offer_id`, `prod_id`, `price`, `start_date`, `end_date`, `status`, `created_date`, `modify_date`) VALUES
(4, 5, 10, '2024-03-24 00:00:00', '2024-05-30 00:00:00', 1, '2024-03-25 12:40:38', '2024-03-25 12:40:38'),
(5, 9, 5.2, '2024-03-24 00:00:00', '2024-05-30 00:00:00', 1, '2024-03-25 12:42:49', '2024-03-25 12:42:49'),
(6, 14, 1.2, '2024-03-24 00:00:00', '2024-05-30 00:00:00', 1, '2024-03-30 23:28:57', '2024-03-30 23:28:57'),
(7, 17, 2.2, '2024-03-24 00:00:00', '2024-05-30 00:00:00', 1, '2024-03-30 23:29:11', '2024-03-30 23:29:11'),
(8, 22, 2.3, '2024-03-24 00:00:00', '2024-05-30 00:00:00', 1, '2024-03-30 23:29:28', '2024-03-30 23:29:28');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `order_id` int(11) NOT NULL,
  `cart_id` varchar(500) NOT NULL DEFAULT '' COMMENT '1,2,3,4,5',
  `user_id` int(11) NOT NULL DEFAULT 0,
  `address_id` int(11) NOT NULL DEFAULT 0,
  `total_price` double NOT NULL DEFAULT 0,
  `user_pay_price` double NOT NULL DEFAULT 0,
  `discount_price` double NOT NULL DEFAULT 0,
  `deliver_price` double NOT NULL DEFAULT 0,
  `promo_code_id` varchar(20) NOT NULL DEFAULT '',
  `deliver_type` int(1) NOT NULL DEFAULT 1 COMMENT '1: Deliver, 2: Collection',
  `payment_type` int(1) NOT NULL DEFAULT 1 COMMENT '1: COD, 2: Online',
  `payment_status` int(1) NOT NULL DEFAULT 1 COMMENT '1: waiting, 2: done, 3: fail, 4: refund',
  `order_status` int(1) NOT NULL DEFAULT 1 COMMENT '1: new, 2: order_accept, 3: order_delivered, 4: cancel, 5: order declined',
  `status` int(1) NOT NULL DEFAULT 1,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modify_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`order_id`, `cart_id`, `user_id`, `address_id`, `total_price`, `user_pay_price`, `discount_price`, `deliver_price`, `promo_code_id`, `deliver_type`, `payment_type`, `payment_status`, `order_status`, `status`, `created_date`, `modify_date`) VALUES
(2, '18', 8, 2, 2.49, 4.2410000000000005, 0.24900000000000003, 2, '1', 1, 1, 1, 3, 1, '2023-08-10 10:22:46', '2023-08-12 10:38:17'),
(3, '18', 2, 2, 2.49, 4.2410000000000005, 0.24900000000000003, 2, '1', 1, 1, 1, 3, 1, '2023-08-10 10:26:51', '2023-08-12 10:37:29'),
(4, '22,23', 2, 2, 10.450000000000001, 11.405000000000001, 1.0450000000000002, 2, '1', 1, 2, 2, 1, 1, '2023-08-10 10:39:14', '2023-08-10 10:43:38'),
(5, '24,25', 2, 1, 3.9800000000000004, 5.582000000000001, 0.3980000000000001, 2, '1', 1, 2, 1, 1, 1, '2023-08-10 19:23:38', '2023-08-10 19:23:38'),
(6, '26,27,28', 2, 1, 5.470000000000001, 6.923000000000001, 0.547, 2, '1', 1, 1, 1, 1, 1, '2023-08-10 19:25:02', '2023-08-10 19:25:02'),
(7, '29', 2, 1, 2.49, 4.49, 0, 2, '', 1, 1, 1, 1, 1, '2023-08-10 19:28:26', '2023-08-10 19:28:26'),
(21, '102', 12, 7, 10, 11, 1, 2, '3', 1, 1, 1, 1, 1, '2024-03-21 22:53:34', '2024-03-21 22:53:34'),
(22, '103', 12, 7, 10, 12, 0, 2, '', 1, 1, 1, 1, 1, '2024-03-22 19:55:46', '2024-03-22 19:55:46'),
(23, '104,105', 12, 7, 17.3, 19.3, 0, 2, '', 1, 1, 1, 1, 1, '2024-03-22 20:11:09', '2024-03-22 20:11:09'),
(24, '106', 12, 7, 10, 12, 0, 2, '', 1, 1, 1, 1, 1, '2024-03-22 20:12:40', '2024-03-22 20:12:40'),
(25, '107,108', 12, 7, 8.4, 9.56, 0.8400000000000001, 2, '3', 1, 1, 1, 1, 1, '2024-03-29 16:35:28', '2024-03-29 16:35:28'),
(26, '109', 12, 7, 3.2, 5.2, 0, 2, '', 1, 1, 1, 1, 1, '2024-03-29 16:38:16', '2024-03-29 16:38:16'),
(27, '110,113,114,116', 12, 8, 25.4, 25.36, 2.54, 2.5, '3', 1, 2, 1, 1, 1, '2024-04-01 07:12:08', '2024-04-01 07:12:08'),
(28, '118', 12, 8, 6.4, 8.26, 0.6400000000000001, 2.5, '3', 1, 2, 1, 2, 1, '2024-04-01 07:22:57', '2024-04-01 12:10:03'),
(29, '119', 15, 10, 10.6, 12.04, 1.06, 2.5, '3', 1, 2, 1, 1, 1, '2024-04-01 09:30:08', '2024-04-01 09:30:08'),
(30, '120', 12, 8, 13, 14.2, 1.3, 2.5, '3', 1, 2, 1, 1, 1, '2024-04-03 23:05:22', '2024-04-03 23:05:22'),
(31, '121,122,123', 16, 11, 12.9, 14.11, 1.29, 2.5, '3', 1, 1, 1, 1, 1, '2024-04-06 18:09:48', '2024-04-06 18:09:48');

-- --------------------------------------------------------

--
-- Table structure for table `payment_method_detail`
--

CREATE TABLE `payment_method_detail` (
  `pay_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `card_number` varchar(50) NOT NULL DEFAULT '',
  `card_month` varchar(3) NOT NULL DEFAULT '',
  `card_year` varchar(5) NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT 1,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modify_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_method_detail`
--

INSERT INTO `payment_method_detail` (`pay_id`, `user_id`, `name`, `card_number`, `card_month`, `card_year`, `status`, `created_date`, `modify_date`) VALUES
(4, 12, 'Mike', '1234567891234567', '01', '2024', 1, '2024-03-20 21:11:18', '2024-03-20 21:11:18'),
(5, 12, 'harinton', '7282923748928374', '09', '2025', 1, '2024-03-30 23:53:36', '2024-03-30 23:53:36'),
(6, 15, 'dilki', '9999999999999999', '09', '2024', 1, '2024-04-01 09:29:52', '2024-04-01 09:29:52');

-- --------------------------------------------------------

--
-- Table structure for table `product_detail`
--

CREATE TABLE `product_detail` (
  `prod_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL DEFAULT 0,
  `brand_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(200) NOT NULL DEFAULT '',
  `detail` varchar(5000) NOT NULL DEFAULT '',
  `size` varchar(50) NOT NULL DEFAULT '',
  `color` varchar(20) NOT NULL DEFAULT '',
  `price` double NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modify_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_detail`
--

INSERT INTO `product_detail` (`prod_id`, `cat_id`, `brand_id`, `type_id`, `name`, `detail`, `size`, `color`, `price`, `status`, `created_date`, `modify_date`) VALUES
(1, 8, 4, 5, 'Ladie\'s Pink T-Shirt', 'Women T Shirt', 'M', 'Pink', 3.99, 1, '2024-03-15 22:18:13', '2024-03-15 22:18:13'),
(9, 7, 3, 4, 'Men\'s Printed tee', 'Our Mens Printed T-Shirt is soft, comfortable and classic looking and has a unique lazy jacks print. Made from 100% cotton.', 'L', 'Black', 6.2, 1, '2024-03-16 14:14:34', '2024-03-16 14:14:34'),
(10, 8, 4, 4, 'Ladie\'s Printed Long Sleeve T shirt', 'Our Girls Printed T-Shirt is soft, comfortable and classic looking and has a unique lazy jacks print. Made from 100% cotton.', 'M', 'Red', 4.2, 1, '2024-03-19 13:12:19', '2024-03-19 13:12:19'),
(11, 7, 2, 4, 'Cotton Plain Mens Red T Shirt', 'Our Mens Printed T-Shirt is soft, comfortable and classic looking and has a unique lazy jacks print. Made from 100% cotton.', 'L', 'Red', 3.2, 1, '2024-03-22 14:55:35', '2024-03-22 14:55:35'),
(12, 8, 2, 10, 'Womens Vintage Dress 70s Dot Printed', 'Our Womens Printed dress is soft, comfortable and classic looking and has a unique lazy jacks print. Made from 100% cotton.', 'L', 'Red', 5.3, 1, '2024-03-22 15:00:08', '2024-03-22 15:00:08'),
(13, 8, 1, 10, 'Women\'s Beautiful Cotton printed dress', 'Our Womens Printed dress is soft, comfortable and classic looking and has a unique lazy jacks print. Made from 100% cotton.', 'L', 'Blue', 7.3, 1, '2024-03-22 15:02:30', '2024-03-22 15:02:30'),
(14, 8, 1, 10, 'Women\'s Beautiful Cotton printed Blows', 'Our Womens Printed dress is soft, comfortable and classic looking and has a unique lazy jacks print. Made from 100% cotton.', 'L', 'Blue', 2.3, 1, '2024-03-29 15:34:22', '2024-03-29 15:34:22'),
(15, 8, 5, 10, 'Women\'s Beautiful Cotton printed dress', 'Our Womens Printed dress is soft, comfortable and classic looking and has a unique lazy jacks print. Made from 100% cotton.', 'S', 'Blue', 3, 1, '2024-03-30 22:58:45', '2024-03-30 22:58:45'),
(16, 8, 3, 4, 'Girl\'s Beautiful Ash T shirt', 'Our Girl Printed dress is soft, comfortable and classic looking and has a unique lazy jacks print. Made from 100% cotton.', 'S', 'Ash', 3.25, 1, '2024-03-30 23:00:40', '2024-03-30 23:00:40'),
(17, 13, 5, 22, 'Leather Girl\'s Bachpack', 'bag Printed dress is soft, comfortable and classic looking and has a unique lazy jacks print. Made from 100% cotton.', 'S', 'black', 3.25, 1, '2024-03-30 23:03:03', '2024-03-30 23:03:03'),
(18, 7, 2, 4, 'Men\'s Black t-shirt', 'bag Printed dress is soft, comfortable and classic looking and has a unique lazy jacks print. Made from 100% cotton.', 'L', 'black', 1.5, 1, '2024-03-30 23:04:39', '2024-03-30 23:04:39'),
(19, 11, 5, 18, 'Girls black slippers', 'bag Printed dress is soft, comfortable and classic looking and has a unique lazy jacks print. Made from 100% cotton.', 'L', 'black', 4, 1, '2024-03-30 23:06:18', '2024-03-30 23:06:18'),
(20, 8, 3, 4, 'Girls blue T shirt', 'bag Printed dress is soft, comfortable and classic looking and has a unique lazy jacks print. Made from 100% cotton.', 'L', 'black', 4.2, 1, '2024-03-30 23:07:16', '2024-03-30 23:07:16'),
(21, 7, 1, 7, 'Men\'s casual blue trouser', 'bag Printed dress is soft, comfortable and classic looking and has a unique lazy jacks print. Made from 100% cotton.', 'L', 'black', 2.5, 1, '2024-03-30 23:08:47', '2024-03-30 23:08:47'),
(22, 10, 4, 18, 'Men\'s hight quality slippers', 'bag Printed dress is soft, comfortable and classic looking and has a unique lazy jacks print. Made from 100% cotton.', 'L', 'black', 5, 1, '2024-03-30 23:10:09', '2024-03-30 23:10:09'),
(23, 8, 2, 11, 'Women\'s black top ', 'bag Printed dress is soft, comfortable and classic looking and has a unique lazy jacks print. Made from 100% cotton.', 'L', 'black', 3.9, 1, '2024-03-30 23:11:09', '2024-03-30 23:11:09'),
(24, 7, 2, 7, 'Men\'s chino trousers', 'bag Printed dress is soft, comfortable and classic looking and has a unique lazy jacks print. Made from 100% cotton.', 'L', 'black', 2, 1, '2024-03-30 23:12:36', '2024-03-30 23:12:36'),
(25, 8, 3, 5, 'Girls green Shirt', 'Wbag Printed dress is soft, comfortable and classic looking and has a unique lazy jacks print. Made from 100% cotton', 'L', 'black', 2, 1, '2024-03-30 23:14:49', '2024-03-30 23:14:49'),
(26, 7, 1, 15, 'Mens Casual blazer', 'Wbag Printed dress is soft, comfortable and classic looking and has a unique lazy jacks print. Made from 100% cotton', 'L', 'black', 2, 1, '2024-03-30 23:15:58', '2024-03-30 23:15:58'),
(27, 8, 4, 6, 'Ladies formal trouser', 'Wbag Printed dress is soft, comfortable and classic looking and has a unique lazy jacks print. Made from 100% cotton', 'L', 'black', 4.8, 1, '2024-03-30 23:17:41', '2024-03-30 23:17:41'),
(28, 7, 2, 5, 'Mens printed Flower shirt', 'Wbag Printed dress is soft, comfortable and classic looking and has a unique lazy jacks print. Made from 100% cotton', 'L', 'black', 3.8, 1, '2024-03-30 23:21:58', '2024-03-30 23:21:58'),
(29, 7, 2, 17, 'Pink shoe for Girl', 'Wbag Printed dress is soft, comfortable and classic looking and has a unique lazy jacks print. Made from 100% cotton', 'L', 'black', 6.5, 1, '2024-03-30 23:23:48', '2024-03-30 23:23:48'),
(30, 7, 1, 9, 'Mens cotton green short', 'Wbag Printed dress is soft, comfortable and classic looking and has a unique lazy jacks print. Made from 100% cotton', 'L', 'black', 2.5, 1, '2024-03-30 23:25:07', '2024-03-30 23:25:07'),
(31, 7, 1, 9, 'Mens cotton grey shirt', 'Wbag Printed dress is soft, comfortable and classic looking and has a unique lazy jacks print. Made from 100% cotton', 'L', 'black', 2.5, 1, '2024-04-06 13:12:26', '2024-04-06 13:12:26');

-- --------------------------------------------------------

--
-- Table structure for table `promo_code_detail`
--

CREATE TABLE `promo_code_detail` (
  `promo_code_id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(200) NOT NULL DEFAULT '',
  `description` varchar(5000) NOT NULL DEFAULT '',
  `type` int(1) NOT NULL DEFAULT 1 COMMENT '1 = Per% , 2 = Fix Amount',
  `min_order_amount` double NOT NULL DEFAULT 0,
  `max_discount_amount` double NOT NULL DEFAULT 500,
  `offer_price` decimal(10,0) NOT NULL DEFAULT 0,
  `start_date` datetime NOT NULL DEFAULT current_timestamp(),
  `end_date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(1) NOT NULL DEFAULT 1,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modify_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `promo_code_detail`
--

INSERT INTO `promo_code_detail` (`promo_code_id`, `code`, `title`, `description`, `type`, `min_order_amount`, `max_discount_amount`, `offer_price`, `start_date`, `end_date`, `status`, `created_date`, `modify_date`) VALUES
(3, 'SAVE10', 'Save 10% more', 'Save 10 % more on Marine brand clothing products in this new year season . Explore various types of ladies and men\'s clothes and more  Starting from $ 6.00 only. Just click On the Link and Visit the offer page to explore more.\n', 1, 5, 50, 10, '2024-03-19 00:00:00', '2024-04-20 00:00:00', 1, '2024-03-20 19:53:38', '2024-03-20 19:53:38'),
(4, 'UPTO20', 'Up to 20% Off', 'Save 20 % more on Accessories in this new year season. Explore various types of ladies and men\'s Accessories and more  Starting from $ 4.00 only. Just click On the Link and Visit the offer page to explore more.', 1, 10, 50, 10, '2024-03-30 00:00:00', '2024-04-30 00:00:00', 1, '2024-03-24 15:57:54', '2024-03-24 15:57:54');

-- --------------------------------------------------------

--
-- Table structure for table `size_detail`
--

CREATE TABLE `size_detail` (
  `size_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL DEFAULT 0,
  `size_name` varchar(75) NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT 1,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modify_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `type_detail`
--

CREATE TABLE `type_detail` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(100) NOT NULL DEFAULT '',
  `image` varchar(75) NOT NULL DEFAULT '',
  `color` varchar(8) NOT NULL DEFAULT '000000',
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '1 = active, 2 =delete',
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modify_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `type_detail`
--

INSERT INTO `type_detail` (`type_id`, `type_name`, `image`, `color`, `status`, `created_date`, `modify_date`) VALUES
(4, 'T-shirt', 'type/20240319110139139TM7OyE2NOk.png', '49D083', 1, '2024-03-15 16:25:55', '2024-03-19 11:01:39'),
(5, 'Shirts', 'type/202403151626442644jNlLnDFiwN.jpeg', 'D08349', 1, '2024-03-15 16:26:44', '2024-03-15 16:26:44'),
(6, 'Jeans', 'type/2024031516272327233NXOefuXW7.jpeg', '8349D0', 1, '2024-03-15 16:27:23', '2024-03-15 16:27:23'),
(7, 'Pants', 'type/202403151628452845erp4KHUDCP.jpeg', 'D04953', 1, '2024-03-15 16:28:45', '2024-03-15 16:28:45'),
(8, 'Jackets', 'type/20240315163003303OA85K7WTaP.jpeg', '96D049', 1, '2024-03-15 16:30:03', '2024-03-15 16:30:03'),
(9, 'Shorts', 'type/202403151634173417yOo8Om9wWY.jpeg', '96D049', 1, '2024-03-15 16:34:17', '2024-03-15 16:34:17'),
(10, 'Dresses', 'type/20240315163503353WyzzmKFTz1.jpeg', '4953D0', 1, '2024-03-15 16:35:03', '2024-03-15 16:35:03'),
(11, 'Tops', 'type/202403151639153915pScbeIqjnj.jpeg', 'C749D0 ', 1, '2024-03-15 16:39:15', '2024-03-15 16:39:15'),
(12, 'Blouses', 'type/202403151639583958oxxRis0DwZ.jpeg', '49D0C7 ', 1, '2024-03-15 16:39:58', '2024-03-15 16:39:58'),
(13, 'Skirts', 'type/202403151640434043PmXYJZlpSS.jpeg', '8349D0 ', 1, '2024-03-15 16:40:43', '2024-03-15 16:40:43'),
(14, 'Coats', 'type/202403151641114111UHky5w0mXw.jpeg', 'D08343 ', 1, '2024-03-15 16:41:11', '2024-03-15 16:41:11'),
(15, 'Blazers', 'type/2024031516415341538FrcepmibU.jpeg', '49D083', 1, '2024-03-15 16:41:53', '2024-03-15 16:41:53'),
(16, 'Boots', 'type/202403151643384338uzvkbtC6S3.jpeg', '96D049 ', 1, '2024-03-15 16:43:38', '2024-03-15 16:43:38'),
(17, 'Sandals', 'type/202403151645444544T1liSFIW1g.jpeg', '4953D0 ', 1, '2024-03-15 16:45:44', '2024-03-15 16:45:44'),
(18, 'Slippers', 'type/202403151646164616reL9uCmZlD.jpeg', 'C749D0', 1, '2024-03-15 16:46:16', '2024-03-15 16:46:16'),
(19, 'Heels', 'type/202403151649574957XvXvP5gJHD.jpeg', '49D0C7', 1, '2024-03-15 16:49:57', '2024-03-15 16:49:57'),
(20, 'Flats', 'type/202403151650425042sU0wL0JP9v.jpeg', '8349D0', 1, '2024-03-15 16:50:42', '2024-03-15 16:50:42'),
(21, 'Handbags', 'type/202403151651565156biTzoffuWO.jpeg', 'D08343', 1, '2024-03-15 16:51:56', '2024-03-15 16:51:56'),
(22, 'Backpacks', 'type/202403151653355335r4nCEIAVH2.jpeg', '49D083', 1, '2024-03-15 16:53:35', '2024-03-15 16:53:35'),
(23, 'Crossbody bags', 'type/202403151656595659U4TRmatneW.jpeg', '4953D0', 1, '2024-03-15 16:56:59', '2024-03-15 16:56:59'),
(24, 'Necklaces', 'type/20240315165728572864JdGPwggb.jpeg', '96D049', 1, '2024-03-15 16:57:28', '2024-03-15 16:57:28'),
(25, 'Earrings', 'type/202403151657545754E4iBoOwrC7.jpeg', 'C749D0', 1, '2024-03-15 16:57:54', '2024-03-15 16:57:54'),
(26, 'Bracelets', 'type/2024031516583958398aAlvvQVnN.jpeg', '49D0C7', 1, '2024-03-15 16:58:39', '2024-03-15 16:58:39'),
(27, 'Rings', 'type/20240315165905595RNRJANmOjr.jpeg', 'D08343', 1, '2024-03-15 16:59:05', '2024-03-15 16:59:05'),
(28, 'Watches', 'type/202403151659405940VbdJtVTc3G.jpeg', '49D083 ', 1, '2024-03-15 16:59:40', '2024-03-15 16:59:40'),
(29, 'Sun hats', 'type/20240315170034034EBY97vuziU.jpeg', '96D049 ', 1, '2024-03-15 17:00:34', '2024-03-15 17:00:34'),
(30, 'Hoodies', 'type/20240315170118118YQTcEyM3Xr.jpeg', 'C749D0', 1, '2024-03-15 17:01:18', '2024-03-15 17:01:18');

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE `user_detail` (
  `user_id` int(11) NOT NULL,
  `username` varchar(75) NOT NULL DEFAULT '',
  `user_type` int(1) NOT NULL DEFAULT 1 COMMENT '1= user , 2 = admin',
  `name` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `mobile` varchar(15) NOT NULL DEFAULT '',
  `mobile_code` varchar(6) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `auth_token` varchar(100) NOT NULL DEFAULT '',
  `reset_code` varchar(6) NOT NULL DEFAULT '0000',
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '1: active, 2 = delete',
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modify_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_detail`
--

INSERT INTO `user_detail` (`user_id`, `username`, `user_type`, `name`, `email`, `mobile`, `mobile_code`, `password`, `auth_token`, `reset_code`, `status`, `created_date`, `modify_date`) VALUES
(1, 'admin', 2, 'admin', 'admin@admin.com', '', '', '', 'L3ROzNF2KBvQ07o0D4qi', '0000', 1, '2023-07-26 14:57:59', '2023-07-26 14:57:59'),
(2, 'testuser', 1, '', 'test@gmail.com', '', '', '123456', 'VbN1qSpf2WlPzDBmISnf', '0000', 1, '2023-07-25 10:57:32', '2024-03-15 10:05:29'),
(8, 'Dilki', 1, '', 'Dila22@gmail.com', '', '', '1234', 'B73asz2wXnAKVoM0vbdY', '0000', 1, '2024-03-13 00:07:44', '2024-03-25 22:30:59'),
(9, 'rashmi', 1, 'rash', 'rashmi12@gmail.com', '718822181', '+94', '123456', '4K2A63bbCDadbfC5164l', '0000', 1, '2024-03-13 00:28:25', '2024-03-15 00:29:35'),
(10, 'jone', 1, '', 'jone123@gmail.com', '', '', '1234', 'wGn83QBc1TZvZL74hSwh', '0000', 1, '2024-03-13 17:47:44', '2024-03-13 17:47:44'),
(11, 'rudi', 1, '', 'rudi22@gmail.com', '', '', '1234', 'z7fhNxiJixXhe5yOdfPX', '0000', 1, '2024-03-16 22:19:43', '2024-03-16 22:24:04'),
(12, 'Mike', 1, 'Harinton', 'mike22@gmail.com', '712344567', '+94', '123456', 'FnyuEaxF2z3WtM6eHZA2', '8566', 1, '2024-03-17 13:36:34', '2024-04-06 17:26:01'),
(13, 'jone', 1, 'Jone', 'jone22@gmail.com', '0723456743', '+', '123456', 'JJRsArJ9CWuN6HRdN4VD', '0000', 1, '2024-03-25 17:50:48', '2024-03-25 17:51:27'),
(14, 'Dustin', 1, '', 'dusti12@gmail.com', '', '', '123456', '7SoG666jReaxYlydQxMW', '0000', 1, '2024-03-30 19:40:52', '2024-03-30 19:40:52'),
(15, 'Dilki', 1, 'dinesha', 'dilki22@gmail.com', '797578676', '+', '1234', 'hU5c4rd8LH6kTxsMMtKh', '0000', 1, '2024-04-01 09:26:00', '2024-04-01 09:31:18'),
(16, 'Mandy', 1, '', 'mandy12@gmail.com', '', '', '12', '6bjexRTXJ30c1ayl9L7W', '0000', 1, '2024-04-06 18:04:26', '2024-04-06 19:03:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address_detail`
--
ALTER TABLE `address_detail`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `brand_detail`
--
ALTER TABLE `brand_detail`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart_detail`
--
ALTER TABLE `cart_detail`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `category_detail`
--
ALTER TABLE `category_detail`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `color_detail`
--
ALTER TABLE `color_detail`
  ADD PRIMARY KEY (`color_id`);

--
-- Indexes for table `favorite_detail`
--
ALTER TABLE `favorite_detail`
  ADD PRIMARY KEY (`fav_id`);

--
-- Indexes for table `image_detail`
--
ALTER TABLE `image_detail`
  ADD PRIMARY KEY (`img_id`);

--
-- Indexes for table `offer_detail`
--
ALTER TABLE `offer_detail`
  ADD PRIMARY KEY (`offer_id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `payment_method_detail`
--
ALTER TABLE `payment_method_detail`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `product_detail`
--
ALTER TABLE `product_detail`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `promo_code_detail`
--
ALTER TABLE `promo_code_detail`
  ADD PRIMARY KEY (`promo_code_id`);

--
-- Indexes for table `size_detail`
--
ALTER TABLE `size_detail`
  ADD PRIMARY KEY (`size_id`);

--
-- Indexes for table `type_detail`
--
ALTER TABLE `type_detail`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address_detail`
--
ALTER TABLE `address_detail`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `brand_detail`
--
ALTER TABLE `brand_detail`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cart_detail`
--
ALTER TABLE `cart_detail`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `category_detail`
--
ALTER TABLE `category_detail`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `color_detail`
--
ALTER TABLE `color_detail`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorite_detail`
--
ALTER TABLE `favorite_detail`
  MODIFY `fav_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `image_detail`
--
ALTER TABLE `image_detail`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `offer_detail`
--
ALTER TABLE `offer_detail`
  MODIFY `offer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `payment_method_detail`
--
ALTER TABLE `payment_method_detail`
  MODIFY `pay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_detail`
--
ALTER TABLE `product_detail`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `promo_code_detail`
--
ALTER TABLE `promo_code_detail`
  MODIFY `promo_code_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `size_detail`
--
ALTER TABLE `size_detail`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `type_detail`
--
ALTER TABLE `type_detail`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
