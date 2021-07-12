-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2021 at 11:31 AM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `covid`
--

-- --------------------------------------------------------

--
-- Table structure for table `stats`
--

CREATE TABLE IF NOT EXISTS `stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province` varchar(125) NOT NULL,
  `newCases16July` int(11) NOT NULL,
  `totalCases16July` int(11) NOT NULL,
  `totalPercentage` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `stats`
--

INSERT INTO `stats` (`id`, `province`, `newCases16July`, `totalCases16July`, `totalPercentage`) VALUES
(1, 'Eastern Cape', 497, 201014, '11'),
(2, 'Free State', 617, 108515, '6'),
(3, 'Guateng', 7859, 522366, '29'),
(4, 'KwaZulu-Nata', 592, 344651, '19'),
(5, 'Limpopo', 390, 68117, '4'),
(6, 'Mpumalanga', 546, 86718, '5'),
(7, 'North West', 917, 83799, '5'),
(8, 'Northern Cape', 426, 55536, '3'),
(9, 'Western Cape', 1402, 303596, '17');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
