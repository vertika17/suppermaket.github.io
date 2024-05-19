-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2024 at 04:23 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinefoodphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'admin', 'CAC29D7A34687EB14B37068EE4708E7B', 'admin@mail.com', '', '2022-05-27 13:21:52');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(17, 13, 'Uncle Chips', 'Potato Chips', 45.00, '6648677845990.jpg'),
(18, 9, 'Surf Excel', '2 pack combo', 750.00, '6648b7fe34dac.jpg'),
(19, 9, 'Ashirwad Ata', '5 Kg Pack', 330.00, '6648b7e9b2eec.jpg'),
(20, 9, 'Red Label', '5 Kg Pack', 450.00, '6648b7d631a58.jpg'),
(21, 9, 'Tomato Sauce', '500g  Botttle', 150.00, '6648b7c14971d.jpg'),
(22, 9, 'TATA Namak', '2kg Salt', 50.00, '6648b7a703212.jpg'),
(23, 7, 'Spinach', '5 Kg', 100.00, '6648abd1b81e3.jpg'),
(24, 7, 'Cucummber', '2 Kg', 60.00, '6648abaa350ac.jpg'),
(25, 7, 'Lady Finger', '2 kg ', 50.00, '6648ab78e7825.jpg'),
(26, 7, 'Capsicum', '1kg Capsicum', 50.00, '6648aafc16cc8.jpg'),
(27, 5, 'Cake (1kg)', 'Pineapple', 340.00, '6648b037411a2.jpg'),
(28, 5, 'Pastry (Vanila)', '2 Piece ', 100.00, '6648af95a1021.jpg'),
(29, 5, 'Breads(Pav)', '1 Packet', 20.00, '6648afb41029e.jpg'),
(30, 5, 'Muffins', '4 Muffins', 200.00, '6648afd2f400f.jpg'),
(31, 5, 'Breads(Brown)', 'Pack of 5', 250.00, '6648affd825fc.jpg'),
(32, 6, 'Watermelon', '3 Kg ', 80.00, '6648b0d0f254b.jpg'),
(33, 6, 'Mango(Alfanzo)', '2 kg', 120.00, '6648b0ed19585.jpg'),
(34, 6, 'Litchie', '2 Kg', 200.00, '6648b104c5fb0.jpg'),
(35, 6, 'Oranges(Kinu)', '2 Kg', 150.00, '6648b124db9dc.jpg'),
(36, 6, 'Pomegranate', '2 Kg', 200.00, '6648b14059e08.jpg'),
(37, 11, 'ButterMilk', '1ltr', 60.00, '6648b22d5f38f.jpg'),
(38, 11, 'Paneer(cow milk)', '200gm ', 80.00, '6648b25968485.jpg'),
(39, 11, 'Cheese(cow milk)', '500gm', 200.00, '6648b27c29b59.jpg'),
(40, 11, 'Yougurt(cow milk)', '500gm', 200.00, '6648b2a80f227.jpg'),
(41, 11, 'Milk(Cow)', '5 Ltr', 400.00, '6648b2c90de95.jpg'),
(42, 13, 'Smart Watch', 'Titan', 5000.00, '6648b3c4a7709.jpg'),
(43, 13, 'Keyboard & Mouse', 'Dell ', 2000.00, '6648b3e2818db.jpg'),
(44, 13, 'Power Bank', 'Samsung', 1000.00, '6648b40865620.jpg'),
(45, 13, 'Earphone', 'Boat', 1500.00, '6648b4ba1eb5c.jpg'),
(46, 13, 'Heeadphone', 'Sony', 3500.00, '6648b50613c09.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'in process', 'none', '2022-05-01 05:17:49'),
(2, 3, 'in process', 'none', '2022-05-27 11:01:30'),
(3, 2, 'closed', 'thank you for your order!', '2022-05-27 11:11:41'),
(4, 3, 'closed', 'none', '2022-05-27 11:42:35'),
(5, 4, 'in process', 'none', '2022-05-27 11:42:55'),
(6, 1, 'rejected', 'none', '2022-05-27 11:43:26'),
(7, 7, 'in process', 'none', '2022-05-27 13:03:24'),
(8, 8, 'in process', 'none', '2022-05-27 13:03:38'),
(9, 9, 'rejected', 'thank you', '2022-05-27 13:03:53'),
(10, 7, 'closed', 'thank you for your ordering with us', '2022-05-27 13:04:33'),
(11, 8, 'closed', 'thanks ', '2022-05-27 13:05:24'),
(12, 5, 'closed', 'none', '2022-05-27 13:18:03'),
(13, 9, 'closed', 'thank you for ordering', '2024-05-16 13:55:00'),
(14, 6, 'closed', 'thank you', '2024-05-16 13:55:38'),
(15, 10, 'closed', 'thank you', '2024-05-16 13:56:11'),
(16, 14, 'closed', 'Thank you', '2024-05-18 14:18:52');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(5, 3, 'Bakers Mart', 'desitadka@gmail.com', '9633882773', 'desitadka.com', '10am', '8pm', 'mon-sat', ' Sheela Chowdhary road ,Talwandi, Kota ', '6648a6986fd58.jpg', '2024-05-18 13:01:12'),
(6, 2, 'BLUE BERRY', 'blueberry@gmail.com', '94383094284', 'blueberry.com', '10am', '8pm', 'mon-sat', ' Gumanpura, kota ', '6648a6c59b39b.jpg', '2024-05-18 13:01:57'),
(7, 1, 'Veggie Point', 'jimmyjimmy@gmail.com', '9347343478', 'jimmyfood.com', '7am', '8pm', 'mon-sat', '   Station Road Kota   ', '6648a6fc9ad0c.jpg', '2024-05-18 13:02:52'),
(9, 6, 'Wall Mart', 'foodie@gmail.com', '9934737578', 'deliciouscorner.com', '7am', '8pm', 'mon-sat', ' Jawahar nagar, Kota ', '6648a7843042e.jpg', '2024-05-18 13:05:08'),
(11, 8, 'Mliky Way Mart', 'alora@gmail.com', '9978273646', 'alora.com', '8am', '8pm', '--Select your Days--', ' RK Puram Kota ', '6648a7b964d85.jpg', '2024-05-18 13:06:01'),
(13, 12, 'Tech Zone Mart', 'jalwa@gmail.com', '9987374657', 'jalwa.com', '10am', '8pm', 'mon-sat', ' Indra Vihar Kota ', '6648aa336236a.jpg', '2024-05-18 13:16:35');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'Vegetables', '2024-05-18 12:18:28'),
(2, 'Fruits', '2024-05-18 12:18:55'),
(3, 'Bakery', '2024-05-18 12:19:36'),
(6, 'Grocery', '2024-05-18 12:20:07'),
(8, 'Dairy', '2024-05-18 12:20:32'),
(12, 'electronic', '2024-05-18 13:15:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(7, 'vertika', 'vertika', 'garg', 'gargvertika469@gmail.com', '9636670570', 'e10adc3949ba59abbe56e057f20f883e', 'dadabari kota', 1, '2024-05-16 13:50:02');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(2, 4, 'Prawn Crackers', 1, 7.00, 'closed', '2022-05-27 11:11:41'),
(3, 5, 'Chicken Madeira', 1, 23.00, 'closed', '2022-05-27 11:42:35'),
(5, 5, 'Meatballs Penne Pasta', 1, 10.00, 'closed', '2022-05-27 13:18:03'),
(6, 5, 'Yorkshire Lamb Patties', 1, 14.00, 'closed', '2024-05-16 13:55:38'),
(7, 6, 'Yorkshire Lamb Patties', 1, 14.00, 'closed', '2022-05-27 13:04:33'),
(8, 6, 'Lobster Thermidor', 1, 36.00, 'closed', '2022-05-27 13:05:24'),
(9, 6, 'Stuffed Jacket Potatoes', 1, 8.00, 'closed', '2024-05-16 13:55:00'),
(15, 7, 'Pastry (Vanila)', 1, 100.00, NULL, '2024-05-18 14:16:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
