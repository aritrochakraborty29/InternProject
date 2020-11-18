-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2020 at 07:43 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

CREATE TABLE `customer_details` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `c_email` varchar(255) NOT NULL,
  `c_balance` int(11) NOT NULL,
  `phno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`c_id`, `c_name`, `c_email`, `c_balance`, `phno`) VALUES
(1073101, 'Amit Rasangi', 'amitrasangi@gmail.com', 50000, 9986111),
(1073102, 'Bhushan Bhada', 'bhushanbhada@gmail.com', 48000, 9986112),
(1073103, 'Chetan Naik', 'chetannaik@gmail.com', 50000, 9986113),
(1073104, 'Dhanesh Dharma', 'dhamra123@gmail.com', 52500, 9986114),
(1073105, 'Eranna Yadaw', 'erannayadaw@gmail.com', 50000, 9986115),
(1073106, 'Faizal Mohammad', 'faizal@gmail.com', 50000, 9986116),
(1073107, 'Gouri Kulkarni', 'gourik@outlook.com', 50000, 9986117),
(1073108, 'Harshita Rao', 'harshurao@yahoo.com', 50000, 9986118),
(1073109, 'Iliyana Desai', 'Iliyanadesai@gmail.com', 50000, 9986119),
(1073110, 'Jaggu Singh', 'jaggusingh007@gmail.com', 47500, 9986120);

-- --------------------------------------------------------

--
-- Table structure for table `transfer_history`
--

CREATE TABLE `transfer_history` (
  `t_id` int(11) NOT NULL,
  `t_sender` varchar(255) NOT NULL,
  `t_receiver` varchar(255) NOT NULL,
  `t_amount` int(11) NOT NULL,
  `t_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transfer_history`
--

INSERT INTO `transfer_history` (`t_id`, `t_sender`, `t_receiver`, `t_amount`, `t_time`) VALUES
(24, 'Bhushan Bhada', 'Amit Rasangi', 10, '2020-11-09 11:36:46'),
(25, 'Amit Rasangi', 'Bhushan Bhada', 10, '2020-11-09 11:37:56'),
(26, 'Bhushan Bhada', 'Amit Rasangi', 2000, '2020-11-09 11:41:28'),
(27, 'Jaggu Singh', 'Dhanesh Dharma', 1250, '2020-11-09 11:49:01'),
(28, 'Jaggu Singh', 'Dhanesh Dharma', 1250, '2020-11-09 11:50:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_details`
--
ALTER TABLE `customer_details`
  ADD PRIMARY KEY (`c_id`),
  ADD UNIQUE KEY `c_name` (`c_name`),
  ADD UNIQUE KEY `c_email` (`c_email`);

--
-- Indexes for table `transfer_history`
--
ALTER TABLE `transfer_history`
  ADD PRIMARY KEY (`t_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer_details`
--
ALTER TABLE `customer_details`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1073112;

--
-- AUTO_INCREMENT for table `transfer_history`
--
ALTER TABLE `transfer_history`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
