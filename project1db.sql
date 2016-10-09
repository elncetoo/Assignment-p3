-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Host: localhost:3307
-- Generation Time: Oct 09, 2016 at 01:27 PM
-- Server version: 5.5.49-log
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project1db`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `clientsID` int(11) NOT NULL COMMENT 'Primary key',
  `c_name` varchar(70) DEFAULT NULL,
  `c_address` varchar(250) DEFAULT NULL,
  `c_con_number` int(20) DEFAULT NULL,
  `c_con_name` varchar(45) DEFAULT NULL,
  `zip_code_zip_id` int(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`clientsID`, `c_name`, `c_address`, `c_con_number`, `c_con_name`, `zip_code_zip_id`) VALUES
(1, 'Microsoft', 'Street 15', 88799456, 'James', 4200),
(2, 'IBM', 'Aveneu 12', 55877466, 'John', 3400),
(3, 'Oracle', 'Road 16', 45698722, 'Vivi', 8400),
(4, 'Honeywell', 'Street 13', 77564133, 'Ola', 2800),
(5, 'Lenovo', 'C_Street 45', 22347890, 'Xi li', 3400),
(6, 'Apple', 'A_Road', 57432199, 'Steve', 3660),
(7, 'john', 'johndtreet', 5466466, 'gugh', 2800);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
  `projectID` int(11) NOT NULL,
  `pr_name` varchar(80) DEFAULT NULL,
  `pr_descr` varchar(500) DEFAULT NULL,
  `pr_start` datetime DEFAULT NULL,
  `pr_end` datetime DEFAULT NULL,
  `other_details` varchar(500) DEFAULT NULL,
  `clients_clientsID` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`projectID`, `pr_name`, `pr_descr`, `pr_start`, `pr_end`, `other_details`, `clients_clientsID`) VALUES
(1, 'New WEB_Form', 'Sample Descr', '2016-09-21 00:00:00', '2017-08-29 00:00:00', 'No Comment', 1),
(2, 'Marketing Landing Page', 'Sample Descr', '2016-08-10 00:00:00', '2016-09-10 00:00:00', 'Nice', 3),
(3, 'Web Solution', 'Sample Descr', '2016-08-12 00:00:00', '2017-01-02 00:00:00', 'New Soluiton', 4),
(4, 'AdOn - new', 'Sample Descr', '2016-09-09 00:00:00', '2017-02-08 00:00:00', '-', 5),
(5, 'New -Paper', 'Sample Descr', '2016-10-21 00:00:00', '2017-03-01 00:00:00', 'Paper solution', 2),
(6, 'Web-Project1', 'Sample Descr', '2016-10-10 00:00:00', '2016-11-10 00:00:00', 'New WEB', 6),
(7, 'Marketing Landing Page', 'Sample Descr', '2017-01-01 00:00:00', '2017-01-25 00:00:00', 'Campaign', 5),
(8, 'New Phone', 'Sample Descr', '2016-10-01 00:00:00', '2016-12-31 00:00:00', 'Campaign', 3),
(9, 'Web page redesign UX/UI', 'Sample Descr', '2016-09-09 00:00:00', '2017-01-25 00:00:00', 'New web page', 4);

-- --------------------------------------------------------

--
-- Table structure for table `projects_resources`
--

CREATE TABLE IF NOT EXISTS `projects_resources` (
  `projects_projectID` int(11) NOT NULL,
  `resources_resourceID` int(11) NOT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `hours_work` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projects_resources`
--

INSERT INTO `projects_resources` (`projects_projectID`, `resources_resourceID`, `from_date`, `to_date`, `hours_work`) VALUES
(5, 1, '2016-10-01', '2016-12-30', 900),
(5, 2, '2016-09-25', '2016-12-30', 899),
(6, 6, '2017-01-25', '2017-06-30', 345),
(7, 2, '2016-10-10', '2016-11-30', 268);

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE IF NOT EXISTS `resources` (
  `resourceID` int(11) NOT NULL,
  `other_res_details` varchar(350) DEFAULT NULL,
  `res_name` varchar(45) DEFAULT NULL,
  `resource_type_res_type_code` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`resourceID`, `other_res_details`, `res_name`, `resource_type_res_type_code`) VALUES
(1, 'Web-developer and analist', 'John', 2),
(2, 'Front-End Dev', 'Joe', 2),
(3, 'Good BUS analist ', 'Matt', 3),
(4, 'DBA too', 'Viv', 4),
(5, 'The best programmer', 'Ivan', 1),
(6, 'DB Master', 'Elle', 4),
(7, 'Marketing and research', 'Jane', 3),
(8, 'OP_Manager', 'Tom', 5),
(9, 'Project Managment', 'Alex', 5);

-- --------------------------------------------------------

--
-- Table structure for table `resource_type`
--

CREATE TABLE IF NOT EXISTS `resource_type` (
  `res_type_code` int(11) NOT NULL,
  `res_type_name` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resource_type`
--

INSERT INTO `resource_type` (`res_type_code`, `res_type_name`) VALUES
(1, 'Programmer'),
(2, 'Web-developer'),
(3, 'Business-Analyst'),
(4, 'DBA'),
(5, 'Operations');

-- --------------------------------------------------------

--
-- Table structure for table `zip_code`
--

CREATE TABLE IF NOT EXISTS `zip_code` (
  `zip_id` int(45) NOT NULL,
  `city` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zip_code`
--

INSERT INTO `zip_code` (`zip_id`, `city`) VALUES
(2200, 'Copenhagen'),
(2800, 'Lyngby'),
(3400, 'Hillerød'),
(3520, 'Farum'),
(3660, 'Stenløse'),
(4200, 'Slagelse'),
(8400, 'Horsens');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`clientsID`),
  ADD UNIQUE KEY `clientsID_UNIQUE` (`clientsID`),
  ADD KEY `fk_Clients_Zip Code1_idx` (`zip_code_zip_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`projectID`,`clients_clientsID`),
  ADD UNIQUE KEY `ProjectID_UNIQUE` (`projectID`),
  ADD KEY `fk_Projects_Clients1_idx` (`clients_clientsID`);

--
-- Indexes for table `projects_resources`
--
ALTER TABLE `projects_resources`
  ADD PRIMARY KEY (`projects_projectID`,`resources_resourceID`),
  ADD KEY `fk_Projects_has_Resources_Resources1_idx` (`resources_resourceID`),
  ADD KEY `fk_Projects_has_Resources_Projects_idx` (`projects_projectID`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`resourceID`),
  ADD KEY `fk_Resources_Resource Type1_idx` (`resource_type_res_type_code`);

--
-- Indexes for table `resource_type`
--
ALTER TABLE `resource_type`
  ADD PRIMARY KEY (`res_type_code`);

--
-- Indexes for table `zip_code`
--
ALTER TABLE `zip_code`
  ADD PRIMARY KEY (`zip_id`),
  ADD UNIQUE KEY `Zip Code_ID_UNIQUE` (`zip_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `clientsID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key',AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `projectID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `resourceID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `fk_Projects_Clients1` FOREIGN KEY (`clients_clientsID`) REFERENCES `clients` (`clientsID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `projects_resources`
--
ALTER TABLE `projects_resources`
  ADD CONSTRAINT `fk_Projects_has_Resources_Projects` FOREIGN KEY (`projects_projectID`) REFERENCES `projects` (`projectID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Projects_has_Resources_Resources1` FOREIGN KEY (`resources_resourceID`) REFERENCES `resources` (`ResourceID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
