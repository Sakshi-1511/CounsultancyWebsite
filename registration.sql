-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2021 at 03:09 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Name` varchar(55) NOT NULL,
  `Phone` bigint(10) NOT NULL,
  `Email` varchar(22) NOT NULL,
  `Message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Name`, `Phone`, `Email`, `Message`) VALUES
('Sakshi  Vinayak pardeshi', 7020340426, 'pardeshisakshi15@gmail', 'I want to apply for job.'),
('Mansi Prakash Patankar', 7020340427, 'Mansi123@gmail.com', 'I want to ask about internship.'),
('Samruddhi Chandrashekhar Patil', 7020340428, 'sam12345@gmail.com', 'i want to ask about carrer gauidence');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `Name` varchar(55) NOT NULL,
  `Phone` bigint(10) NOT NULL,
  `Question` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`Name`, `Phone`, `Question`) VALUES
('Mansi Prakash Patankar', 7020340426, 'how?'),
('Sakshi  Vinayak pardeshi', 7020340427, 'When will you guide us ?');

-- --------------------------------------------------------

--
-- Table structure for table `internship`
--

CREATE TABLE `internship` (
  `Name` varchar(55) NOT NULL,
  `Email` varchar(22) NOT NULL,
  `Phone` bigint(10) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `IDlink` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `internship`
--

INSERT INTO `internship` (`Name`, `Email`, `Phone`, `Address`, `IDlink`) VALUES
('Sakshi  Vinayak pardeshi', 'pardeshisakshi15@gmail', 7020340427, 'Nashik', 'Practical4.docx');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `Name` varchar(55) NOT NULL,
  `Email` varchar(22) NOT NULL,
  `Phone` bigint(10) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `ResumeFile` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`Name`, `Email`, `Phone`, `Address`, `ResumeFile`) VALUES
('Mansi Prakash Patankar', 'Mansi123@gmail.com', 7020340426, 'Nashik', 'Practical1.docx'),
('Sakshi  Vinayak pardeshi', 'pardeshisakshi15@gmail', 7020340427, 'nashik', 'Practical1.docx');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) CHARACTER SET latin1 NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 NOT NULL,
  `password` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(13, 'Sakshi123', 'pardeshisakshi15@gmail.com', 'a037df1d6ebaad1fa1d709e7a7f24f69'),
(14, 'Samruddhi123', 'Samruddhi123@gmail.com', '63d949aabce57752312aaa21d609b646'),
(15, 'Mansi123', 'Mansi123@gmail.com', '37ad12ff86d98bb035c88c9e2ec30408'),
(16, 'Aditya123', 'Aditya123@gmail.com', '4190ebe6fa98d124b88d0c554733a2e8'),
(20, 'Kalyani123', 'kalyani123@gmail.com', 'e3d974944523ffe71598712766ff0c85');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`Phone`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`Phone`);

--
-- Indexes for table `internship`
--
ALTER TABLE `internship`
  ADD PRIMARY KEY (`Phone`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`Phone`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
