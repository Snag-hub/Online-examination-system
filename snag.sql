-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2021 at 08:06 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `snag`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(2, 'admin@co.in', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('60ba5cc1a9233', '60ba5cc1a9bb8'),
('60ba5cc1ac1e2', '60ba5cc1ac963'),
('60ba5cc1ae8d3', '60ba5cc1af2b2'),
('60ba5cc1b0c06', '60ba5cc1b10bc'),
('60ba5cc1b2709', '60ba5cc1b2bd9'),
('60bd07ad24fee', '60bd07ad2558b'),
('60bd07ad275aa', '60bd07ad27b3d');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
('60bd082027035', 'snag', 'snag@gmail.com', 'best site', 'Nothin is here', '2021-06-06', '07:38:40pm');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('60ba5cc1a9233', 'Hypertext Preprocessor', '60ba5cc1a9bb8'),
('60ba5cc1a9233', 'Hypertext multiprocessor', '60ba5cc1a9bbd'),
('60ba5cc1a9233', 'Hypertext markup Preprocessor', '60ba5cc1a9bbe'),
('60ba5cc1a9233', 'Hypertune Preprocessor', '60ba5cc1a9bbf'),
('60ba5cc1ac1e2', 'user-side scripting', '60ba5cc1ac95a'),
('60ba5cc1ac1e2', 'client-side scripting', '60ba5cc1ac962'),
('60ba5cc1ac1e2', 'server-side scripting', '60ba5cc1ac963'),
('60ba5cc1ac1e2', 'Both B and C', '60ba5cc1ac964'),
('60ba5cc1ae8d3', ' Tim Berners-Lee', '60ba5cc1af2ad'),
('60ba5cc1ae8d3', 'Brendan Eich', '60ba5cc1af2b0'),
('60ba5cc1ae8d3', 'Guido van Rossum', '60ba5cc1af2b1'),
('60ba5cc1ae8d3', 'Rasmus Lerdorf', '60ba5cc1af2b2'),
('60ba5cc1b0c06', '1993', '60ba5cc1b10b8'),
('60ba5cc1b0c06', '1994', '60ba5cc1b10bc'),
('60ba5cc1b0c06', '1995', '60ba5cc1b10bd'),
('60ba5cc1b0c06', '1996', '60ba5cc1b10be'),
('60ba5cc1b2709', '.html', '60ba5cc1b2bd5'),
('60ba5cc1b2709', '.xml', '60ba5cc1b2bd8'),
('60ba5cc1b2709', '.php', '60ba5cc1b2bd9'),
('60ba5cc1b2709', '.hphp', '60ba5cc1b2bda'),
('60bd07ad24fee', 'a', '60bd07ad25583'),
('60bd07ad24fee', 'b', '60bd07ad2558b'),
('60bd07ad24fee', 'c', '60bd07ad2558c'),
('60bd07ad24fee', 'd', '60bd07ad2558d'),
('60bd07ad275aa', 'a', '60bd07ad27b3d'),
('60bd07ad275aa', 'b', '60bd07ad27b45'),
('60bd07ad275aa', 'c', '60bd07ad27b46'),
('60bd07ad275aa', 'd', '60bd07ad27b47');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('60ba5bf385612', '60ba5cc1a9233', 'The term PHP is an acronym for PHP:_______________.', 4, 1),
('60ba5bf385612', '60ba5cc1ac1e2', 'PHP is a ____________ language?', 4, 2),
('60ba5bf385612', '60ba5cc1ae8d3', 'Who among these is the founder of the PHP language?', 4, 3),
('60ba5bf385612', '60ba5cc1b0c06', 'In which year PHP was created?', 4, 4),
('60ba5bf385612', '60ba5cc1b2709', 'PHP files have a default file extension of_______.', 4, 5),
('60bd078f17154', '60bd07ad24fee', 'im new hwew', 4, 1),
('60bd078f17154', '60bd07ad275aa', 'we are here', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('60ba5bf385612', 'Basic Php', 3, 1, 5, 5, 'This test is based on BASIC OF PHP', 'PHP', '2021-06-04 16:59:31'),
('60bd078f17154', 'Basic Of Computer', 1, 0, 2, 5, 'this is the best quiz system ', 'Quiz', '2021-06-06 17:36:15'),
('60bdaf9325a87', 'Hihas', 1, 0, 1, 1, 'ggrggsdf', 'Quiz', '2021-06-07 05:33:07');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('cyedgeelanisnag1@gmail.com', 1, '2021-05-27 18:43:36'),
('snag@yahoo.com', 0, '2021-06-06 17:31:16');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Syed Nadeem', 'M', 'University Of Pune', 'cyedgeelanisnag1@gmail.com', 9049994214, '93b7fcdd2a96b9366835211809c33fcb'),
('Snag', 'M', 'nothing', 'snag@gmail.com', 0, '88067fcfedb0c200aecdd22d203a10d9'),
('Syed ', 'M', 'Abeda inamdar senior college', 'snag@yahoo.com', 9999999999, '88067fcfedb0c200aecdd22d203a10d9');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
