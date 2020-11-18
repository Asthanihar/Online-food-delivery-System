-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2020 at 12:37 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_a`
--

-- --------------------------------------------------------

--
-- Table structure for table `applied`
--

CREATE TABLE `applied` (
  `id` int(5) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `gender` text NOT NULL,
  `dob` text NOT NULL,
  `address` text NOT NULL,
  `resume_id` varchar(10) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `beverages`
--

CREATE TABLE `beverages` (
  `bv_id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `cost` varchar(10) NOT NULL,
  `quantity` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beverages`
--

INSERT INTO `beverages` (`bv_id`, `name`, `cost`, `quantity`) VALUES
(1, 'Pepsi', '40', '10'),
(2, 'Ice cream', '50', '20'),
(3, 'Thumbs up', '70', '10'),
(4, 'Maaza', '70', '10'),
(5, 'Sprite', '80', '10'),
(6, 'mountain dew', '55', '10');

-- --------------------------------------------------------

--
-- Table structure for table `breakfast`
--

CREATE TABLE `breakfast` (
  `b_id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `cost` varchar(10) NOT NULL,
  `quantity` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `breakfast`
--

INSERT INTO `breakfast` (`b_id`, `name`, `cost`, `quantity`) VALUES
(1, 'Idli', '30', '30'),
(2, 'Dosa', '40', '20'),
(3, 'Puri', '30', '30'),
(4, 'Parota', '40', '30'),
(5, 'Pongal', '50', '20'),
(6, 'pongal', '84', '12'),
(7, 'puri', '50', '100'),
(8, 'puri', '50', '1000');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boy`
--

CREATE TABLE `delivery_boy` (
  `boy_id` varchar(10) NOT NULL,
  `name` text NOT NULL,
  `phone` varchar(12) NOT NULL,
  `gender` text NOT NULL,
  `dob` text NOT NULL,
  `address` text NOT NULL,
  `username` text,
  `password` text,
  `resume_id` text NOT NULL,
  `email` text NOT NULL,
  `busy` text NOT NULL,
  `l` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_boy`
--

INSERT INTO `delivery_boy` (`boy_id`, `name`, `phone`, `gender`, `dob`, `address`, `username`, `password`, `resume_id`, `email`, `busy`, `l`) VALUES
('1', 'Susanth', '9874562130', 'male', '2000-10-05', 'Palamaner', 'susanth', '674c56c4bf51675c966ad2aa3a86ef82', '12365874', 'abc@gmail.com', '1', 0),
('2', 'Sasidhar Rathnam', '9182156686', 'male', '2019-10-10', '25-180,Kakathopu, Newpet, Palamaner, Chittoor District, Andhra pradesh\r\n25-177,Kakathopu, Newpet, Palamaner, Chittoor District, Andhra pradesh', 'sasi', '123456789\r\n', '147840666', 'rathnam.sasidhar2017@vitstudent.ac.in', '1', 0),
('3', 'Vikas', '8245985420', 'male', '1985-02-12', 'Punganur', 'vikas', 'b81dafcd437e21322a1be19ba6109814', '6768765', 'vikas@gmail.com', '0', 0),
('4', 'Sivareddy', '5489623587', 'male', '1975-10-15', 'Vellore', 'siva', '104827e490dbbdbd83866776079d2cd0', '146878', 'siva@gmail.com', '1', 0),
('5', 'Upendra', '5468435408', 'male', '1995-06-12', 'Kadapa', 'upendra', '39496989b61711ba258f9059eb08d9c3', '354685', 'upendra@gmail.com', '1', 0),
('6', 'Jagan', '9825462151', 'male', '1986-08-14', 'Kadapa', 'jagan', '634a63f1c3c06ca41b0389584edb617d', '5468464', 'jagan@gmail.com', '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fastfoods`
--

CREATE TABLE `fastfoods` (
  `f_id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `cost` varchar(10) NOT NULL,
  `quantity` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fastfoods`
--

INSERT INTO `fastfoods` (`f_id`, `name`, `cost`, `quantity`) VALUES
(1, 'Manchuria', '80', '20'),
(2, 'Pizza', '100', '20'),
(3, 'Burger', '100', '20'),
(4, 'French fries', '80', '20');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` int(11) NOT NULL,
  `item` varchar(10) NOT NULL,
  `calories` int(11) NOT NULL,
  `healthy_unhealthy` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `item`, `calories`, `healthy_unhealthy`) VALUES
(1, 'pizza', 1000, 'u'),
(2, 'salad', 200, 'h'),
(3, 'ice cream', 500, 'u'),
(4, 'pasta', 800, 'h');

-- --------------------------------------------------------

--
-- Table structure for table `names`
--

CREATE TABLE `names` (
  `id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `names`
--

INSERT INTO `names` (`id`, `name`) VALUES
(1, 'Sasidhar Rathna'),
(2, 'Hema Rathnam'),
(3, 'divya sree'),
(4, 'navya sree'),
(5, 'Sasi Kumar'),
(6, 'Navadeep');

-- --------------------------------------------------------

--
-- Table structure for table `nonveg`
--

CREATE TABLE `nonveg` (
  `nv_id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `cost` varchar(10) NOT NULL,
  `quantity` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nonveg`
--

INSERT INTO `nonveg` (`nv_id`, `name`, `cost`, `quantity`) VALUES
(1, 'Chicken Biriyani', '150', '20'),
(2, 'Mutton Biriyani', '200', '10'),
(3, 'Chicken Curry', '100', '10'),
(4, 'Chicken 65', '90', '10'),
(5, 'Chicken Fried Rice', '80', '10'),
(6, 'Curd Rice', '40', '20');

-- --------------------------------------------------------

--
-- Table structure for table `ordered`
--

CREATE TABLE `ordered` (
  `id` int(5) NOT NULL,
  `item_id` varchar(5) NOT NULL,
  `name` varchar(20) NOT NULL,
  `cost` varchar(10) NOT NULL,
  `u_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordered`
--

INSERT INTO `ordered` (`id`, `item_id`, `name`, `cost`, `u_id`) VALUES
(1, '1', 'Chicken Biriyani', '150', 15),
(2, '3', 'Chicken Curry', '100', 15),
(3, '6', 'Curd Rice', '40', 15);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(10) NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `price` varchar(10) NOT NULL,
  `del_id` varchar(10) NOT NULL,
  `status` varchar(5) NOT NULL,
  `location` varchar(20) NOT NULL,
  `phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `price`, `del_id`, `status`, `location`, `phone`) VALUES
(2, '17', '90', '2', 'n', 'k003,vit university ', '9704556688'),
(3, '15', '290', '1', 'n', 'sasidhar@gmail.com', '9182156686');

-- --------------------------------------------------------

--
-- Table structure for table `starter`
--

CREATE TABLE `starter` (
  `s_id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `cost` varchar(10) NOT NULL,
  `quantity` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `starter`
--

INSERT INTO `starter` (`s_id`, `name`, `cost`, `quantity`) VALUES
(1, 'Mushroom', '50', '20'),
(2, 'Spring rolls', '80', '20'),
(3, 'Prawn', '100', '20'),
(4, 'Brini', '80', '20'),
(5, 'Chicken balls', '80', '20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `gender` varchar(8) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `dob`, `gender`, `phone`, `password`) VALUES
(15, 'Sasidhar Rathnam', 'sasidharr54@gmail.com', '2019-10-10', 'male', '9182156686', '25f9e794323b453885f5181f1b624d0b'),
(16, 'Sirigiri Susanth', 'ssusanth@gmail.com', '2019-10-03', 'male', '9546816421', '9fab6755cd2e8817d3e73b0978ca54a6'),
(17, 'gangaraju', 'gangarajuabbireddy@gmail.com', '2000-10-17', 'male', '9704556688', 'add653e74fe2a61a74b5ac166e2bcd97'),
(18, 'gowtham ', 'saisakhamuri1970@gmail.com', '1999-02-05', 'male', '9010601234', '25f9e794323b453885f5181f1b624d0b');

-- --------------------------------------------------------

--
-- Table structure for table `veg`
--

CREATE TABLE `veg` (
  `v_id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `cost` varchar(10) NOT NULL,
  `quantity` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `veg`
--

INSERT INTO `veg` (`v_id`, `name`, `cost`, `quantity`) VALUES
(1, 'Lemon Rice', '70', '8'),
(2, 'Curd Rice', '50', '8'),
(3, 'Meals', '100', '20'),
(4, 'Veg Biriyani', '150', '20'),
(5, 'Bismillah Bath', '100', '10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applied`
--
ALTER TABLE `applied`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beverages`
--
ALTER TABLE `beverages`
  ADD PRIMARY KEY (`bv_id`);

--
-- Indexes for table `breakfast`
--
ALTER TABLE `breakfast`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  ADD PRIMARY KEY (`boy_id`);

--
-- Indexes for table `fastfoods`
--
ALTER TABLE `fastfoods`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `names`
--
ALTER TABLE `names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nonveg`
--
ALTER TABLE `nonveg`
  ADD PRIMARY KEY (`nv_id`);

--
-- Indexes for table `ordered`
--
ALTER TABLE `ordered`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `starter`
--
ALTER TABLE `starter`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `veg`
--
ALTER TABLE `veg`
  ADD PRIMARY KEY (`v_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applied`
--
ALTER TABLE `applied`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beverages`
--
ALTER TABLE `beverages`
  MODIFY `bv_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `breakfast`
--
ALTER TABLE `breakfast`
  MODIFY `b_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `fastfoods`
--
ALTER TABLE `fastfoods`
  MODIFY `f_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `names`
--
ALTER TABLE `names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nonveg`
--
ALTER TABLE `nonveg`
  MODIFY `nv_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ordered`
--
ALTER TABLE `ordered`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `starter`
--
ALTER TABLE `starter`
  MODIFY `s_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `veg`
--
ALTER TABLE `veg`
  MODIFY `v_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
