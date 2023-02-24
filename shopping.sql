-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2023 at 01:11 PM
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
-- Database: `shopping`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getdelivery` ()   BEGIN
    select * from delivery;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `alldeliveries`
-- (See below for the actual view)
--
CREATE TABLE `alldeliveries` (
`deliveryid` int(10)
,`location` varchar(20)
,`productid` int(10)
,`employeeid` int(10)
);

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `nameOfProduct` varchar(20) NOT NULL,
  `numberOfProduct` varchar(50) NOT NULL,
  `address` varchar(30) NOT NULL,
  `date` varchar(20) NOT NULL,
  `Phonenumber` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `nameOfProduct`, `numberOfProduct`, `address`, `date`, `Phonenumber`) VALUES
(1, 'BD Cake', '', 'kgl', '26/11/2022', '0787654323'),
(2, 'bd cake', '', '078665432', '11/12/2022', 'Kanombe'),
(3, 'Weeding Cake', '', 'Muhanga', '20/11/2022', '078556678'),
(4, '', '', '', '', ''),
(5, 'fghyuhu', '', 'ghjkl', 'rtyuio', 'ghjkl'),
(6, 'tyyghujiko', 'gghjkl', 'ffghhjkl', 'fghjl;', 'dfghjk'),
(7, '', '', '', '', ''),
(8, '', '', '', '', ''),
(9, '', '', '', '', ''),
(10, 'graduation cake', '2', 'huye', '9/12/2022', '0788656567'),
(11, 't shirt', '2', 'huye', '11/12/2022', '0788303013'),
(12, '', '', '', '', ''),
(13, 'graduation cake', '1', 'gikondo', '2023-02-22', '07977989282'),
(14, 'graduation cake', '1', 'gikondo', '2023-02-22', '07977989282'),
(15, 'keza Ange', '1', 'birthday cake', '2023-03-03', '+250787599080'),
(16, 'Ishimwe Herve', '2', 'weedingg cake', '2023-02-01', '07977989222'),
(17, 'Nadine Fiona BYUKUSE', '9', 'Rwanda', '2023-03-07', '07977989222'),
(18, 'Ice cream cake', '2', 'kigali-kanombe', '2023-02-24', '07966989282'),
(19, 'Ice cream cake', '2', 'kigali-kanombe', '2023-02-24', '07966989282');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `gender` enum('female','male') NOT NULL,
  `age` int(10) NOT NULL,
  `address` varchar(20) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `email` varchar(20) NOT NULL,
  `comment` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `fname`, `lname`, `gender`, `age`, `address`, `telephone`, `email`, `comment`, `password`) VALUES
(1, 'bebbe', 'bexy', 'female', 10, 'Kigali', '07845678', 'nadinne@gmal.com', 'hgdjhdjslkjd', '12345'),
(2, 'nadine', 'fiona', 'female', 11, 'kgl', '07889', 'nadin@gmail.com', 'dfjkkjhfdsdfghj', '98765'),
(3, 'fofo', 'peter', 'male', 100, 'Rusizi', '07887778778', 'peterfofo@gmial.com', 'i want bd cake', '123456'),
(4, 'justine', 'Peter', 'female', 22, 'Rubavu', '07876543456', 'justine@gmial.com', 'wonderful cakes', '987654'),
(5, 'keza', 'ella', 'female', 20, 'kabeza', '0787866080', 'keza@gmail.com', 'i want bd cake', '1234'),
(6, 'jojo', 'jojo', 'female', 23, 'kigali', '0799999999', 'jojo@gmail.com', 'hfuruttttiuyijtg', '123456787'),
(7, '', '', '', 0, '', '', '', '', ''),
(8, '', '', '', 0, '', '', '', '', ''),
(9, '', '', '', 0, '', '', '', '', ''),
(10, 'Nadine', 'BYUKUSENGE', '', 25, 'Rwanda-Ruhango', '07966989282', 'nadinefiona9@gmail.c', 'good project', '12345678'),
(11, 'Nadine', 'BYUKUSENGE', '', 25, 'Rwanda-Ruhango', '07966989282', 'nadinefiona9@gmail.c', 'good project', '12345678'),
(12, 'Nadine', 'BYUKUSENGE', '', 25, 'Rwanda-Ruhango', '07966989282', 'nadinefiona9@gmail.c', 'good project', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `deliveryid` int(10) NOT NULL,
  `location` varchar(20) NOT NULL,
  `productid` int(10) NOT NULL,
  `employeeid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Triggers `delivery`
--
DELIMITER $$
CREATE TRIGGER `deletetrigger` AFTER DELETE ON `delivery` FOR EACH ROW delete FROM delivery WHERE delivery.deliveryid=employee.employeeid
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employeeid` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` varchar(20) NOT NULL,
  `title` varchar(20) NOT NULL,
  `deliveryid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`email`, `password`) VALUES
('benitha@gmail.com', '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `mdate` varchar(30) NOT NULL,
  `edate` varchar(30) NOT NULL,
  `price` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `mdate`, `edate`, `price`) VALUES
(1, 'bd cake', '11/11/2000', '11/12/2000', '15,000'),
(2, 'wedding cake', '11/12/2022', '17/12/2022', '18000'),
(3, 'bd cake', '11/12', '21/12', '100000'),
(5, 'welcome Cake', '20/1/2002', '21/1/2002', '20000'),
(6, 'bd cake', '10/10/2022', '19/10/2022', '300000'),
(7, 'bd cake', '6789', '789', '67890'),
(12, 'farewell cake', '4/12/2022', '6/12/2022', '10,000');

-- --------------------------------------------------------

--
-- Structure for view `alldeliveries`
--
DROP TABLE IF EXISTS `alldeliveries`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `alldeliveries`  AS SELECT `delivery`.`deliveryid` AS `deliveryid`, `delivery`.`location` AS `location`, `delivery`.`productid` AS `productid`, `delivery`.`employeeid` AS `employeeid` FROM `delivery``delivery`  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`deliveryid`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employeeid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
