-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2019 at 08:58 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wsu_wt`
--

-- --------------------------------------------------------

--
-- Table structure for table `boxoffice`
--

CREATE TABLE `boxoffice` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `release` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `runtime` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `budget` int(11) NOT NULL,
  `openWeek` int(11) NOT NULL,
  `gross` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `boxoffice`
--

INSERT INTO `boxoffice` (`id`, `title`, `release`, `runtime`, `budget`, `openWeek`, `gross`) VALUES
(1, 'Harry Potter and the Philosophers Stone', 'November 16, 2011', '2 hrs. 33 min.', 125000000, 90294621, 975051288),
(2, 'Harry Potter and the Chamber of Secrets', 'November 15, 2002', '2 hrs. 41 min.', 100000000, 88357488, 879225136),
(3, 'Harry Potter and the Prisoner of Azkaban', 'June 4, 2004', '2 hrs. 22 min.', 130000000, 93687367, 796907323),
(4, 'Harry Potter and the Goblet of Fire', 'November 18, 2005', '2 hrs. 33 min.', 150000000, 102685961, 897099794),
(5, 'Harry Potter and the Order of the Phoenix', 'July 11, 2007', '2 hrs. 19 min.', 150000000, 77108414, 940018451),
(6, 'Harry Potter and the Half-Blood Prince', 'July 15, 2009', '2 hrs. 33 min.', 250000000, 77835727, 934546568),
(7, 'Harry Potter and the Deathly Hallows part 1', 'November 19, 2010', '2 hrs. 30 min.', 250000000, 125017372, 960431568),
(8, 'Harry Potter and the Deathly Hallows part 2', 'July 15, 2011', '2 hrs. 10 min.', 250000000, 169189427, 1341693157);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `cId` int(11) NOT NULL,
  `movieId` int(11) NOT NULL,
  `userName` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `cTitle` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `comment` text COLLATE latin1_general_ci NOT NULL,
  `cDate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`cId`, `movieId`, `userName`, `email`, `cTitle`, `comment`, `cDate`) VALUES
(0, 1, 'Junior', 'aldir@aldir.com', 'LOVED', 'As this was the first movie it was so magical, seeing what I read becoming reality!\r\nI wanted more scenes! wouldn\'t bother if had to watch 5 hours movie, haha', '2019-08-12'),
(2, 1, 'Karen', 'mskaren@me.com', 'Missing so many scenes!', 'I liked overall but I got really sad they cut some scenes!\r\nHowever, as long as they don\'t change anything in the story, its ok...', '2019-08-13'),


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
