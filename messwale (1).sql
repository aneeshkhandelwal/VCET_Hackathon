-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2019 at 08:01 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `messwale`
--

-- --------------------------------------------------------

--
-- Table structure for table `combo_menu`
--

CREATE TABLE `combo_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `image` text NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `combo_menu`
--

INSERT INTO `combo_menu` (`id`, `name`, `code`, `image`, `price`) VALUES
(1, 'Combo 1', 'COMBO1', 'combo1.png', 30),
(2, 'Combo 2', 'COMBO2', 'combo2.png', 40),
(3, 'Combo 3', 'COMBO3', 'combo3.png', 40);

-- --------------------------------------------------------

--
-- Table structure for table `customer_contact`
--

CREATE TABLE `customer_contact` (
  `customer_id` varchar(10) NOT NULL,
  `contact1` bigint(10) NOT NULL,
  `contact2` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_contact`
--

INSERT INTO `customer_contact` (`customer_id`, `contact1`, `contact2`) VALUES
('1084313605', 9881783270, 7709174195),
('CID0000005', 9881783270, 7709174195);

-- --------------------------------------------------------

--
-- Table structure for table `customer_login`
--

CREATE TABLE `customer_login` (
  `customer_id` varchar(10) NOT NULL,
  `customer_email` varchar(50) NOT NULL,
  `customer_password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_login`
--

INSERT INTO `customer_login` (`customer_id`, `customer_email`, `customer_password`) VALUES
('1084313605', 'goalover1997@gmail.com', 'ABHIJEET_97'),
('1174904521', '', ''),
('235589131', '', ''),
('CID0000005', 'goalover1997@gmail.com', 'e334c35a8af8138e6227670ab221b9e4');

-- --------------------------------------------------------

--
-- Table structure for table `customer_registration`
--

CREATE TABLE `customer_registration` (
  `id` int(10) NOT NULL,
  `customer_id` varchar(10) NOT NULL,
  `name` text NOT NULL,
  `dob` date NOT NULL,
  `gender` text NOT NULL,
  `college_name` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_registration`
--

INSERT INTO `customer_registration` (`id`, `customer_id`, `name`, `dob`, `gender`, `college_name`) VALUES
(2, '1084313605', 'Abhijeet', '2003-04-05', 'Male', 'VIT'),
(3, '1174904521', '', '0000-00-00', '', ''),
(4, '235589131', '', '0000-00-00', '', ''),
(5, 'CID0000005', 'Abhijeet', '1997-04-05', 'Male', 'PICT');

-- --------------------------------------------------------

--
-- Table structure for table `employee_contact`
--

CREATE TABLE `employee_contact` (
  `emp_id` int(5) NOT NULL,
  `contact1` bigint(10) NOT NULL,
  `contact2` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_contact`
--

INSERT INTO `employee_contact` (`emp_id`, `contact1`, `contact2`) VALUES
(3, 9881783270, 7709174195);

-- --------------------------------------------------------

--
-- Table structure for table `employee_details`
--

CREATE TABLE `employee_details` (
  `emp_id` int(5) NOT NULL,
  `emp_name` varchar(20) NOT NULL,
  `emp_address` longtext NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_details`
--

INSERT INTO `employee_details` (`emp_id`, `emp_name`, `emp_address`, `email`) VALUES
(3, 'Abhijeet Gawas', 'Bhosari Alandi Road\r\n57', 'goalover1997@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `employee_login`
--

CREATE TABLE `employee_login` (
  `emp_id` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_login`
--

INSERT INTO `employee_login` (`emp_id`, `username`, `password`) VALUES
(3, 'goalover1997@gmail.com', 'ABHIJ98817');

-- --------------------------------------------------------

--
-- Table structure for table `food_combo_menu`
--

CREATE TABLE `food_combo_menu` (
  `cid` int(5) NOT NULL,
  `name` text NOT NULL,
  `item1` text DEFAULT NULL,
  `item2` text DEFAULT NULL,
  `item3` text DEFAULT NULL,
  `item4` text DEFAULT NULL,
  `item5` text DEFAULT NULL,
  `price` int(3) NOT NULL,
  `day` text NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_combo_menu`
--

INSERT INTO `food_combo_menu` (`cid`, `name`, `item1`, `item2`, `item3`, `item4`, `item5`, `price`, `day`, `image`) VALUES
(22, 'Combo1', 'Roti ', 'Rice', 'Dal', 'Bhindi', 'Paneer', 40, 'Saturday', 'combo menu images/thali 80.jpg'),
(23, 'Combo2', 'Dal', 'Rice', 'Palak', 'Aloo Bhaji', 'Roti', 50, 'Saturday', 'combo menu images/thali 70.jpg'),
(24, 'Combo3', 'Roti ', 'Rice', 'Dal', 'Urad Dal Usal', 'Kheer', 60, 'Saturday', 'combo menu images/thali 80.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `food_order_details`
--

CREATE TABLE `food_order_details` (
  `id` int(6) NOT NULL,
  `order_id` varchar(20) NOT NULL,
  `combo_name` varchar(100) NOT NULL,
  `o_date` text NOT NULL,
  `o_time` time NOT NULL,
  `price` int(5) NOT NULL,
  `quantity` int(11) NOT NULL,
  `customer_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_order_details`
--

INSERT INTO `food_order_details` (`id`, `order_id`, `combo_name`, `o_date`, `o_time`, `price`, `quantity`, `customer_id`) VALUES
(207, '5df47dd07f63e', 'Combo1', '2019/12/11', '11:44:40', 40, 1, 'CID0000005'),
(208, '5df47dd07f63e', 'Combo2', '2019/12/13', '13:20:30', 50, 1, 'CID0000005'),
(209, '5df483ff057b8', 'Combo1', '2019/12/14', '12:11:03', 40, 2, 'CID0000005');

-- --------------------------------------------------------

--
-- Table structure for table `mess_details`
--

CREATE TABLE `mess_details` (
  `id` int(11) NOT NULL,
  `mess_name` longtext NOT NULL,
  `mess_address` longtext NOT NULL,
  `mess_contact` bigint(10) NOT NULL,
  `mess_email` varchar(20) DEFAULT NULL,
  `fssai_no` varchar(20) DEFAULT NULL,
  `mess_image` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mess_details`
--

INSERT INTO `mess_details` (`id`, `mess_name`, `mess_address`, `mess_contact`, `mess_email`, `fssai_no`, `mess_image`) VALUES
(1, 'ABC Mess', 'Pune', 9876543210, 'admin@gmail.com', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `mess_login`
--

CREATE TABLE `mess_login` (
  `id` int(1) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mess_login`
--

INSERT INTO `mess_login` (`id`, `username`, `password`) VALUES
(1, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `combo_menu`
--
ALTER TABLE `combo_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_contact`
--
ALTER TABLE `customer_contact`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_registration`
--
ALTER TABLE `customer_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_contact`
--
ALTER TABLE `employee_contact`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `employee_details`
--
ALTER TABLE `employee_details`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `employee_login`
--
ALTER TABLE `employee_login`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `food_combo_menu`
--
ALTER TABLE `food_combo_menu`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `food_order_details`
--
ALTER TABLE `food_order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mess_details`
--
ALTER TABLE `mess_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer_registration`
--
ALTER TABLE `customer_registration`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employee_contact`
--
ALTER TABLE `employee_contact`
  MODIFY `emp_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee_details`
--
ALTER TABLE `employee_details`
  MODIFY `emp_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee_login`
--
ALTER TABLE `employee_login`
  MODIFY `emp_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `food_combo_menu`
--
ALTER TABLE `food_combo_menu`
  MODIFY `cid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `food_order_details`
--
ALTER TABLE `food_order_details`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `mess_details`
--
ALTER TABLE `mess_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
