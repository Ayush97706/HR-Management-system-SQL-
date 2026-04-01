-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2026 at 09:20 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_crm`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `custID` int(11) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `Country` varchar(20) NOT NULL,
  `joinDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`custID`, `FirstName`, `LastName`, `Email`, `phone`, `city`, `Country`, `joinDate`) VALUES
(101, 'Ayush', 'Singh', 'Ayushtomar@gmail.com', '9770675699', 'Ujjain', 'India', '2023-04-01'),
(102, 'Monu', 'Singh', 'Monusingh@gmail.com', '9770675688', 'Ujjain', 'India', '2023-04-20'),
(103, 'vishal', 'Singh', 'Vishalsingh@gmail.co', '9770675688', 'Indore', 'India', '2025-01-02'),
(104, 'Astik', 'Nigam', 'Astiknigam@gmail.com', '9770675555', 'Bhopal', 'India', '2025-01-02'),
(105, 'Pratik', 'Nigam', 'pratiknigam@gmail.co', '9770675775', 'Bhopal', 'India', '2023-04-25'),
(106, 'Pratik', 'Parihar', 'pratikparihar@gmail.', '8550675775', 'Mahu', 'India', '2025-01-04'),
(107, 'Ashu', 'harshole', 'Ashu1212@gmail.com', '8550678521', 'Pune', 'India', '2025-01-05'),
(108, 'Garima', 'harshole', 'garima1212@gmail.com', '8550678412', 'Pune', 'India', '2025-01-06'),
(109, 'Jaya', 'Rajput', 'jayarajput@gmail.com', '6268143013', 'Shimla', 'India', '2025-01-07'),
(110, 'Harsha', 'Burde', 'Harsha@gmail.com', '8550678999', 'Banglore', 'India', '2024-04-25'),
(111, 'Harsh', 'Singh', 'harsh@gmail.com', '7412589633', 'Banglore', 'India', '2024-04-01'),
(112, 'Ankit', 'Srivastav', 'Ankit@gmail.com', '7412589622', 'Surat', 'India', '2024-01-01'),
(113, 'Yash', 'Srivastav', 'Yash1212@gmail.com', '8812589622', 'Surat', 'India', '2024-01-21'),
(114, 'naveen', 'Tomar', 'naveen1212@gmail.com', '8812589644', 'goa', 'India', '2024-08-21'),
(115, 'Arav', 'Tomar', 'arav1212@gmail.com', '9770094802', 'Lucknow', 'India', '2025-01-09');

-- --------------------------------------------------------

--
-- Table structure for table `interactions`
--

CREATE TABLE `interactions` (
  `interactionID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `interactionType` varchar(20) NOT NULL,
  `interactiondate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `interactions`
--

INSERT INTO `interactions` (`interactionID`, `customerID`, `interactionType`, `interactiondate`) VALUES
(301, 101, 'Email', '2025-01-05'),
(302, 102, 'Email', '2025-01-05'),
(303, 103, 'Email', '2025-01-06'),
(304, 104, 'Phone', '2025-01-06'),
(305, 105, 'Phone', '2025-01-07'),
(306, 106, 'Phone', '2025-01-08'),
(307, 107, 'Phone', '2025-01-09'),
(308, 108, 'In person', '2025-01-10'),
(309, 109, 'In person', '2025-01-10'),
(310, 110, 'In person', '2025-01-11'),
(311, 111, 'Email', '2025-05-10'),
(312, 112, 'Email', '2025-01-13'),
(313, 113, 'Email', '2025-01-13'),
(314, 114, 'Email', '2025-05-05'),
(315, 115, 'Email', '2025-05-02');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderID` int(11) NOT NULL,
  `CustID` int(11) NOT NULL,
  `orderDate` date NOT NULL,
  `orderAmount` decimal(10,2) NOT NULL,
  `orderStatus` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderID`, `CustID`, `orderDate`, `orderAmount`, `orderStatus`) VALUES
(201, 101, '2025-01-01', 500.00, 'Completed'),
(202, 102, '2025-01-01', 1000.00, 'Completed'),
(203, 103, '2025-01-02', 1100.00, 'Completed'),
(204, 104, '2025-01-02', 800.00, 'Completed'),
(205, 105, '2025-01-03', 1200.00, 'Completed'),
(206, 106, '2025-01-04', 1500.00, 'Completed'),
(207, 107, '2025-01-05', 400.00, 'Completed'),
(208, 108, '2025-01-06', 4000.00, 'Pending'),
(209, 109, '2025-01-07', 2500.00, 'Completed'),
(210, 110, '2025-01-06', 2000.00, 'Pending'),
(211, 111, '2025-01-07', 250.00, 'Completed'),
(212, 112, '2025-01-07', 2530.00, 'Ongoing'),
(213, 113, '2025-01-08', 530.00, 'Ongoing'),
(214, 114, '2025-01-08', 1700.00, 'Ongoing'),
(215, 115, '2025-01-09', 1900.00, 'Cancelled');

-- --------------------------------------------------------

--
-- Table structure for table `supportticket`
--

CREATE TABLE `supportticket` (
  `ticketID` int(11) NOT NULL,
  `custID` int(11) NOT NULL,
  `issueDesciption` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `createdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supportticket`
--

INSERT INTO `supportticket` (`ticketID`, `custID`, `issueDesciption`, `status`, `createdate`) VALUES
(1101, 101, 'Product is not good', 'Resolved', '2025-01-05'),
(1102, 102, 'Not up to the mark', 'Open', '2025-01-05'),
(1103, 103, 'Not up to the mark', 'Open', '2025-01-06'),
(1104, 104, 'Size is small', 'Resolved', '2025-01-06'),
(1105, 105, 'Size is small', 'Resolved', '2025-01-07'),
(1106, 106, 'Not setisfied', 'Resolved', '2025-01-08'),
(1107, 107, 'Not setisfied', 'Resolved', '2025-01-09'),
(1108, 108, 'Not setisfied', 'unresolved', '2025-01-10'),
(1109, 109, 'it is not my product', 'Resolved', '2025-01-10'),
(1110, 110, 'wrong size', 'unresolved', '2025-01-11'),
(1111, 111, 'wrong size', 'In progress', '2025-01-12'),
(1112, 112, 'wrong product', 'In progress', '2025-01-13'),
(1113, 113, 'wrong product', 'In progress', '2025-01-13'),
(1114, 114, 'product is not good', 'In progress', '2025-01-13'),
(1115, 115, 'product is not good', 'In progress', '2025-01-13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`custID`);

--
-- Indexes for table `interactions`
--
ALTER TABLE `interactions`
  ADD PRIMARY KEY (`interactionID`),
  ADD KEY `customerID` (`customerID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `CustID` (`CustID`);

--
-- Indexes for table `supportticket`
--
ALTER TABLE `supportticket`
  ADD PRIMARY KEY (`ticketID`),
  ADD KEY `custID` (`custID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `interactions`
--
ALTER TABLE `interactions`
  ADD CONSTRAINT `interactions_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customers` (`custID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`CustID`) REFERENCES `customers` (`custID`);

--
-- Constraints for table `supportticket`
--
ALTER TABLE `supportticket`
  ADD CONSTRAINT `supportticket_ibfk_1` FOREIGN KEY (`custID`) REFERENCES `customers` (`custID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
