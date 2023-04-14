-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2023 at 06:33 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arlington_sprouts`
--

-- --------------------------------------------------------

--
-- Table structure for table `contract`
--

CREATE TABLE `contract` (
  `id` int(11) NOT NULL,
  `v_id` int(11) NOT NULL,
  `ct_id` int(11) NOT NULL,
  `s_date` date NOT NULL,
  `c_time` time NOT NULL,
  `c_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contract`
--

INSERT INTO `contract` (`id`, `v_id`, `ct_id`, `s_date`, `c_time`, `c_name`) VALUES
(1, 2, 1, '2024-06-24', '13:00:00', 'Sprout Buddies'),
(2, 2, 2, '2024-07-01', '13:00:00', 'Sprout Buddies'),
(3, 2, 3, '2024-07-07', '13:00:00', 'Sprout Buddies'),
(4, 2, 4, '2024-07-14', '14:00:00', 'Sprout Sandwiches'),
(5, 3, 1, '2024-06-25', '15:00:00', 'Sprout Greens'),
(6, 4, 1, '2024-06-25', '16:00:00', 'Sprout Certifications'),
(7, 4, 2, '2024-06-26', '16:00:00', 'Sprout Certifications'),
(8, 5, 1, '2024-07-26', '13:00:00', 'Sprout Certifications'),
(9, 5, 2, '2024-07-26', '14:00:00', 'Sprout Buddies'),
(10, 5, 3, '2024-07-26', '15:00:00', 'Sprout Sandwiches'),
(11, 5, 4, '2024-07-26', '16:00:00', 'Sprout Sandwiches'),
(12, 5, 5, '2024-07-26', '17:00:00', 'Microgreens');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(200) NOT NULL,
  `street` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `state_ab` varchar(200) NOT NULL,
  `zip_code` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`c_id`, `c_name`, `street`, `city`, `state_ab`, `zip_code`) VALUES
(1, 'Abed Abdi', '309 Hcounty Road', 'Abbott', 'TX', '76621-0057'),
(2, 'Ismail Gulg', '405 E Mesquite Street', 'Abbott', 'TX', '76621-0057'),
(3, 'Shakir Ali', '5000 Spectrum Street', 'Addison', 'TX', '75001-6880'),
(4, 'Abdur Rahman', '1000 County Road', 'Bradley', 'Ok', '73011-0121'),
(5, 'Kalipada Ghoshal', 'Boundary Road', 'Bradley', 'OK', '73011-9600'),
(6, 'Manishi Dey', '450 Main Street', 'Mound City', 'KS', '66056-0001'),
(7, 'Nandalal Bose', 'S Metcalf Road', 'Louisburg', 'KS', '66053-0541'),
(8, 'Raja Ravi Varma', '2000 Forest Grove blvd', 'Allen', 'TX', '75002-8811'),
(9, 'Sunil Das', '4000 Woodcreek Road', 'Carrollton', 'TX', '75006-1911'),
(10, 'Jasper Johns', '2500 Sunset Ridge Drive', 'Rockwall', 'TX', '75032-0006'),
(11, 'Winslow Homer', '11300 Juniper Lane', 'Irving', 'TX', '75039-0101'),
(12, 'Albert Bierstadt', '400 Spruce Street', 'Leavenworth', 'KS', '66048-0001'),
(13, 'Edward Hopper', '1500 255th Street', 'Hillsdale', 'KS', '66036-0061'),
(14, 'Georgia O\'Keeffe', '3000 Weiss Lane', 'Irving', 'TX', '75039-0006'),
(15, 'Modupeola Fadugba', '1112 18TH Street', 'Plano', 'TX', '75086-0019'),
(16, 'Ekene Maduka', '15TH Street', 'Plano', 'TX', '75086-0015'),
(17, 'Olu Amoda', '200 Travis Street', 'Sherman', 'TX', '75090-0005'),
(18, 'Koki Tanaka', '5000 W Holiday Road', 'Fate', 'TX', '75087-2136'),
(19, 'Tatsuo Miyajima', 'Bella Ranch Drive', 'Choctaw', 'OK', '73020-0017'),
(20, 'Li Chen', '2090 County Road', 'Cement', 'OK', '73017-1100'),
(21, 'Zhan Wang', '1600 N Santa Fe', 'Edmond', 'OK', '73003-3661');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `ssn` varchar(200) NOT NULL,
  `e_name` varchar(200) NOT NULL,
  `street` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `state_ab` varchar(200) NOT NULL,
  `zip_code` varchar(200) NOT NULL,
  `e_type` varchar(20) DEFAULT NULL,
  `b_date` date DEFAULT NULL,
  `s_date` date DEFAULT NULL,
  `e_date` date DEFAULT NULL,
  `level` varchar(200) DEFAULT NULL,
  `a_salary` int(11) DEFAULT NULL,
  `agency` varchar(200) DEFAULT NULL,
  `h-salary` int(11) DEFAULT NULL,
  `institute` varchar(200) DEFAULT NULL,
  `i_type` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `s_id`, `ssn`, `e_name`, `street`, `city`, `state_ab`, `zip_code`, `e_type`, `b_date`, `s_date`, `e_date`, `level`, `a_salary`, `agency`, `h-salary`, `institute`, `i_type`) VALUES
(1, 1, '123456789', 'Mary Durer', '11 Cooper Street', 'Arlington', 'TX', '76019-1111', 'F', '2000-01-20', '2023-01-20', '0000-00-00', 'Associate 2', 30000, 'null', 0, 'null', 'null'),
(2, 1, '123456788', 'Christian Cart', '20 Main Street', 'Arlington', 'TX', '76019-1111', 'F', '2001-01-02', '2023-01-20', '0000-00-00', 'Associate 1', 25000, 'null', 0, 'null', 'null'),
(3, 1, '123456777', 'Radha Gupta', '200 Nedderman Dr', 'Arlington', 'TX', '76019-1111', 'T', '2005-01-20', '2023-01-20', '0000-00-00', 'null', 0, 'AR Manpower', 10, 'null', 'null'),
(4, 1, '123456666', 'Olampiosi Pi', '100 Varsity Circle', 'Arlington', 'TX', '76019-1111', 'T', '2005-02-01', '2023-01-20', '0000-00-00', 'null', 0, 'Top Performers', 10, 'null', 'null'),
(5, 1, '123456780', 'Cao Peng', '12 W. Mitchell St.', 'Arlington', 'TX', '76019-1111', 'I', '2008-01-20', '2023-01-20', '0000-00-00', 'null', 0, 'null', 0, 'UTA', 'U'),
(6, 1, '123456781', 'Giun Seong', '12 S. Pecan St.', 'Arlington', 'TX', '76019-1111', 'I', '2007-01-01', '2023-01-20', '0000-00-00', 'null', 0, 'null', 0, 'Arlington High School ', 'S');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `i_id` int(11) NOT NULL,
  `i_name` varchar(200) NOT NULL,
  `s_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`i_id`, `i_name`, `s_price`) VALUES
(1, 'Broccoli Sprouts', 3),
(2, 'Kale Sprouts', 3),
(3, 'Alfalfa Sprouts', 3),
(4, 'Mung Sprouts', 4),
(5, 'Chickpeas Sprouts', 4),
(6, 'Onion Sprouts', 4),
(7, 'Soyabean Sprouts', 5),
(8, 'Clover Sprouts', 3),
(9, 'Kidney Beans Sprouts', 4),
(10, 'Adzuki Bean Sprouts', 4),
(11, 'Beet Sprouts', 5),
(12, 'Green Pea Sprouts', 5),
(13, 'Radish Sprouts', 6),
(14, 'Lentil Sprouts', 4);

-- --------------------------------------------------------

--
-- Table structure for table `old_price`
--

CREATE TABLE `old_price` (
  `id` int(11) NOT NULL,
  `i_id` int(11) NOT NULL,
  `s_price` int(11) NOT NULL,
  `s_date` date DEFAULT NULL,
  `e_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `old_price`
--

INSERT INTO `old_price` (`id`, `i_id`, `s_price`, `s_date`, `e_date`) VALUES
(1, 1, 3, '2023-01-20', '0000-00-00'),
(2, 2, 3, '2023-01-20', '0000-00-00'),
(3, 3, 1, '2023-01-20', '0000-00-00'),
(4, 3, 2, '2023-01-26', '0000-00-00'),
(5, 3, 3, '2023-01-29', '0000-00-00'),
(6, 4, 4, '2023-01-20', '0000-00-00'),
(7, 5, 4, '2023-01-20', '0000-00-00'),
(8, 6, 4, '2023-01-20', '0000-00-00'),
(9, 7, 5, '2023-01-20', '0000-00-00'),
(10, 8, 3, '2023-01-20', '0000-00-00'),
(11, 9, 4, '2023-01-20', '0000-00-00'),
(12, 10, 4, '2023-01-20', '0000-00-00'),
(13, 11, 5, '2023-01-20', '0000-00-00'),
(14, 12, 5, '2023-01-20', '0000-00-00'),
(15, 13, 6, '2023-01-20', '0000-00-00'),
(16, 14, 2, '2023-01-20', '0000-00-00'),
(17, 14, 3, '2023-01-28', '0000-00-00'),
(18, 14, 4, '2023-01-31', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `o_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `o_date` date NOT NULL,
  `d_date` date NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`o_id`, `s_id`, `c_id`, `o_date`, `d_date`, `amount`) VALUES
(1, 1, 1, '2023-01-20', '2023-01-21', 3),
(2, 1, 2, '2023-01-20', '2023-01-21', 3),
(3, 1, 3, '2023-01-20', '2023-01-21', 4),
(4, 1, 4, '2023-01-20', '2023-01-21', 12),
(5, 1, 5, '2023-01-20', '2023-01-21', 4),
(6, 1, 6, '2023-01-20', '2023-01-21', 27),
(7, 1, 7, '2023-01-20', '2023-01-21', 4),
(8, 1, 8, '2023-01-20', '2023-01-21', 5),
(9, 1, 9, '2023-01-20', '2023-01-21', 5),
(10, 1, 10, '2023-01-20', '2023-01-21', 5),
(11, 1, 11, '2023-01-20', '2023-01-21', 3),
(12, 1, 12, '2023-01-25', '2023-01-26', 4),
(13, 1, 13, '2023-01-25', '2023-01-26', 4),
(14, 1, 14, '2023-01-25', '2023-01-26', 4),
(15, 1, 2, '2023-01-25', '2023-01-26', 22),
(16, 1, 5, '2023-01-25', '2023-01-26', 5),
(17, 1, 9, '2023-01-25', '2023-01-26', 6),
(18, 1, 15, '2023-01-30', '2023-01-31', 6),
(19, 1, 16, '2023-01-30', '2023-01-31', 3),
(20, 1, 17, '2023-01-30', '2023-01-31', 3),
(21, 1, 2, '2023-01-30', '2023-01-31', 4),
(22, 1, 9, '2023-01-30', '2023-01-31', 4),
(23, 1, 18, '2023-02-05', '2023-02-06', 4),
(24, 1, 19, '2023-02-05', '2023-02-06', 4),
(25, 1, 20, '2023-02-05', '2023-02-06', 4),
(26, 1, 21, '2023-02-10', '2023-02-11', 4),
(27, 1, 21, '2023-02-12', '2023-02-13', 4);

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `id` int(11) NOT NULL,
  `o_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `i_id` int(11) NOT NULL,
  `i_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`id`, `o_id`, `s_id`, `i_id`, `i_count`) VALUES
(1, 1, 1, 1, 1),
(2, 2, 1, 2, 1),
(3, 3, 1, 4, 1),
(4, 4, 1, 5, 1),
(5, 4, 1, 6, 2),
(6, 5, 1, 5, 1),
(7, 6, 1, 5, 1),
(8, 6, 1, 6, 2),
(9, 6, 1, 7, 3),
(10, 7, 1, 6, 1),
(11, 8, 1, 7, 1),
(12, 9, 1, 7, 1),
(13, 10, 1, 7, 1),
(14, 11, 1, 8, 1),
(15, 12, 1, 9, 1),
(16, 13, 1, 10, 1),
(17, 14, 1, 10, 1),
(18, 15, 1, 4, 1),
(19, 15, 1, 5, 1),
(20, 15, 1, 6, 1),
(21, 15, 1, 7, 2),
(22, 16, 1, 12, 1),
(23, 17, 1, 13, 1),
(24, 18, 1, 13, 1),
(25, 19, 1, 1, 1),
(26, 20, 1, 2, 1),
(27, 21, 1, 4, 1),
(28, 22, 1, 4, 1),
(29, 23, 1, 4, 1),
(30, 24, 1, 4, 1),
(31, 25, 1, 5, 1),
(32, 26, 1, 5, 1),
(33, 27, 1, 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `s_id` int(11) NOT NULL,
  `s_name` varchar(200) NOT NULL,
  `street` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `state_ab` varchar(200) NOT NULL,
  `zip_code` varchar(200) NOT NULL,
  `s_date` date NOT NULL,
  `tel_no` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`s_id`, `s_name`, `street`, `city`, `state_ab`, `zip_code`, `s_date`, `tel_no`, `url`) VALUES
(1, 'Arlington Sprouts-1', '1 Cooper Street', 'Arlington', 'TX', '76019-0012', '2023-01-10', '8172721111', 'www.ArlingtonSprouts-1.com');

-- --------------------------------------------------------

--
-- Table structure for table `store_customer`
--

CREATE TABLE `store_customer` (
  `id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_customer`
--

INSERT INTO `store_customer` (`id`, `s_id`, `c_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 1, 20),
(21, 1, 21);

-- --------------------------------------------------------

--
-- Table structure for table `store_item`
--

CREATE TABLE `store_item` (
  `id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `i_id` int(11) NOT NULL,
  `s_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_item`
--

INSERT INTO `store_item` (`id`, `s_id`, `i_id`, `s_count`) VALUES
(1, 1, 1, 10),
(2, 1, 2, 10),
(3, 1, 3, 10),
(4, 1, 4, 10),
(5, 1, 5, 10),
(6, 1, 6, 10),
(7, 1, 7, 10),
(8, 1, 8, 10),
(9, 1, 9, 10),
(10, 1, 10, 12),
(11, 1, 11, 13),
(12, 1, 12, 10),
(13, 1, 13, 16),
(14, 1, 14, 15);

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `v_id` int(11) NOT NULL,
  `v_name` varchar(200) NOT NULL,
  `street` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `state_ab` varchar(200) NOT NULL,
  `zip_code` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`v_id`, `v_name`, `street`, `city`, `state_ab`, `zip_code`) VALUES
(1, 'Organic Nature', '1500 E Exchange Road', 'Allen', 'TX', '75002-4504'),
(2, 'Green Valley', '1405 Julian Street', 'Addison', 'TX', '75001-4633'),
(3, 'Green Mountains', '800 Preston Road', 'Gunter', 'TX', '75058-0001'),
(4, 'Whole Foods', '1010 Spicewood Drive', 'Garland', 'TX', '75044-2569'),
(5, 'LA Queen', '500 Angi Road', 'Minden', 'LA', '71055-1004'),
(6, 'Castor Sprouts', '100 New Ramah Road', 'Castor', 'LA', '71016-2402');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_item`
--

CREATE TABLE `vendor_item` (
  `id` int(11) NOT NULL,
  `v_id` int(11) NOT NULL,
  `i_id` int(11) NOT NULL,
  `v_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendor_item`
--

INSERT INTO `vendor_item` (`id`, `v_id`, `i_id`, `v_price`) VALUES
(1, 1, 1, 2),
(2, 1, 2, 2),
(3, 1, 3, 1),
(4, 1, 14, 1),
(5, 2, 4, 3),
(6, 2, 5, 2),
(7, 2, 6, 2),
(8, 2, 13, 4),
(9, 3, 7, 3),
(10, 3, 8, 2),
(11, 3, 9, 2),
(12, 3, 10, 2),
(13, 4, 11, 3),
(14, 4, 12, 3),
(15, 4, 13, 2),
(16, 4, 14, 2),
(17, 5, 7, 3),
(18, 5, 11, 2),
(19, 5, 13, 5),
(20, 5, 14, 3),
(21, 6, 7, 2),
(22, 6, 8, 1),
(23, 6, 9, 3),
(24, 6, 10, 4);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_store`
--

CREATE TABLE `vendor_store` (
  `id` int(11) NOT NULL,
  `v_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendor_store`
--

INSERT INTO `vendor_store` (`id`, `v_id`, `s_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`id`),
  ADD KEY `v_id` (`v_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `s_id` (`s_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`i_id`);

--
-- Indexes for table `old_price`
--
ALTER TABLE `old_price`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i_id` (`i_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`o_id`),
  ADD KEY `c_id` (`c_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i_id` (`i_id`),
  ADD KEY `o_id` (`o_id`),
  ADD KEY `s_id` (`s_id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `store_customer`
--
ALTER TABLE `store_customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `s_id` (`s_id`),
  ADD KEY `store_customer_ibfk_1` (`c_id`);

--
-- Indexes for table `store_item`
--
ALTER TABLE `store_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `s_id` (`s_id`),
  ADD KEY `store_item_ibfk_1` (`i_id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`v_id`);

--
-- Indexes for table `vendor_item`
--
ALTER TABLE `vendor_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `v_id` (`v_id`),
  ADD KEY `vendor_item_ibfk_1` (`i_id`);

--
-- Indexes for table `vendor_store`
--
ALTER TABLE `vendor_store`
  ADD PRIMARY KEY (`id`),
  ADD KEY `s_id` (`s_id`),
  ADD KEY `vendor_store_ibfk_1` (`v_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contract`
--
ALTER TABLE `contract`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `i_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `old_price`
--
ALTER TABLE `old_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `store_customer`
--
ALTER TABLE `store_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `store_item`
--
ALTER TABLE `store_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `v_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vendor_item`
--
ALTER TABLE `vendor_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `vendor_store`
--
ALTER TABLE `vendor_store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contract`
--
ALTER TABLE `contract`
  ADD CONSTRAINT `contract_ibfk_1` FOREIGN KEY (`v_id`) REFERENCES `vendor` (`v_id`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `store` (`s_id`);

--
-- Constraints for table `old_price`
--
ALTER TABLE `old_price`
  ADD CONSTRAINT `old_price_ibfk_1` FOREIGN KEY (`i_id`) REFERENCES `item` (`i_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `customer` (`c_id`);

--
-- Constraints for table `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `order_item_ibfk_1` FOREIGN KEY (`i_id`) REFERENCES `item` (`i_id`),
  ADD CONSTRAINT `order_item_ibfk_2` FOREIGN KEY (`o_id`) REFERENCES `orders` (`o_id`),
  ADD CONSTRAINT `order_item_ibfk_3` FOREIGN KEY (`s_id`) REFERENCES `store` (`s_id`);

--
-- Constraints for table `store_customer`
--
ALTER TABLE `store_customer`
  ADD CONSTRAINT `store_customer_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `customer` (`c_id`);

--
-- Constraints for table `store_item`
--
ALTER TABLE `store_item`
  ADD CONSTRAINT `store_item_ibfk_1` FOREIGN KEY (`i_id`) REFERENCES `item` (`i_id`);

--
-- Constraints for table `vendor_item`
--
ALTER TABLE `vendor_item`
  ADD CONSTRAINT `vendor_item_ibfk_1` FOREIGN KEY (`i_id`) REFERENCES `item` (`i_id`);

--
-- Constraints for table `vendor_store`
--
ALTER TABLE `vendor_store`
  ADD CONSTRAINT `vendor_store_ibfk_1` FOREIGN KEY (`v_id`) REFERENCES `vendor` (`v_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
