-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2018 at 12:51 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rit_data_center`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_council`
--
CREATE DATABASE rit_data_center
CREATE TABLE `academic_council` (
  `slNo` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `instituteName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `academic_council`
--

INSERT INTO `academic_council` (`slNo`, `category`, `name`, `address`, `status`, `instituteName`) VALUES
(1, 'Principal of the College', 'Dr. N V R Naidu', 'null', 'Chairperson', 'Ramaiah Institute of Technology'),
(2, 'Head of Department in the college', 'Pushpa Devanathan', 'Architecture', 'Member', 'Ramaiah Institute of Technology'),
(3, 'Head of Department in the college', 'Dr. B K SUJATHA', 'Telecommunication', 'Member', 'Ramaiah Institute of Technology'),
(4, 'Head of Department in the college', 'Dr. M Jyothirmayi ', 'Instrumentation', 'Member', 'Ramaiah Institute of Technology'),
(5, 'Head of Department in the college', 'Dr. C G Puttappa ', 'Civil Engineering', 'Member', 'Ramaiah Institute of Technology'),
(6, 'Head of Department in the college', 'Dr. Raveendra', 'MBA', 'Member', 'Ramaiah Institute of Technology'),
(7, 'Head of Department in the college', 'Dr. T V Suresh Kumar ', 'MCA', 'Member', 'Ramaiah Institute of Technology'),
(8, 'Head of Department in the college', 'Dr. A Jaganatha Reddy ', 'Physics', 'Member', 'Ramaiah Institute of Technology'),
(9, 'Head of Department in the college', 'Dr. Raji George ', 'Mechanical', 'Member', 'Ramaiah Institute of Technology'),
(10, 'Head of Department in the college', 'Dr. Anitha Kanvali ', 'Computer Science Engineering', 'Member', 'Ramaiah Institute of Technology'),
(11, 'Head of Department in the college', 'Dr. B P Vijaya Kumar ', 'Information Science & Engineering', 'Member', 'Ramaiah Institute of Technology'),
(12, 'Head of Department in the college', 'Dr. N L Ramesh ', 'Mathematics', 'Member', 'Ramaiah Institute of Technology'),
(13, 'Head of Department in the college', 'Dr. Prameela Manohar ', 'Electrical and Electronics', 'Member', 'Ramaiah Institute of Technology'),
(14, 'Head of Department in the college', 'Dr. N Sriraam ', 'Medical Electronics', 'Member', 'Ramaiah Institute of Technology'),
(15, 'Head of Department in the college', 'Dr. S Sethu Selvi ', 'Electronics and Communication', 'Member', 'Ramaiah Institute of Technology'),
(16, 'Head of Department in the college', 'Dr Bindu S ', 'Biotechnology', 'Member', 'Ramaiah Institute of Technology'),
(17, 'Head of Department in the college', 'Dr B M Nagabhusham ', 'Chemistry', 'Member', 'Ramaiah Institute of Technology'),
(18, 'Head of Department in the college', 'Dr. Archana ', 'Chemical Engineering', 'Member', 'Ramaiah Institute of Technology'),
(19, 'Teachers of the college representing different lev', 'Prof. Raghu Krishnapura', 'Head, R&D', 'Member', 'Ramaiah Institute of Technology'),
(20, 'Teachers of the college representing different lev', 'Prof. Riji George', 'Mechanical Engineering', 'Member', 'Ramaiah Institute of Technology'),
(21, 'Teachers of the college representing different lev', 'Dr. Raghuram S', 'Electronics and Communications', 'Member', 'Ramaiah Institute of Technology'),
(22, 'Teachers of the college representing different lev', 'Dr C G Puttappa', 'COE', 'Member', 'Ramaiah Institute of Technology'),
(23, 'Experts from outside the college representing area', 'Prof. Y Narahari', 'Professor and Head, Dept. of CSA, IISc, Bangalore', 'Member', 'Ramaiah Institute of Technology'),
(24, 'Experts from outside the college representing area', 'Sri Babu Sathain V', 'Managing Director, Process Pumps-I Pvt. Ltd, Plot No 86, III Phase, Peenya Industrial Area, Bangalor', 'Member', 'Ramaiah Institute of Technology'),
(25, 'Experts from outside the college representing area', 'Sri A T Samuel', 'Director, STUP Consultants, A – 1 Tower, 5th and 6th Floor, “Golden Enclave”, Airport Road, Bangalor', 'Member', 'Ramaiah Institute of Technology'),
(26, 'Experts from outside the college representing area', 'Dr. Parasuram Balasubramanian', 'Theme Work Analytics (P) Ltd, Gurukrupa, 508, 47th Cross, Jayanagar 5th Block, Bangalore - 560041', 'Member', 'Ramaiah Institute of Technology'),
(27, 'Experts from outside the college representing area', 'Dr V Gopalakrishna', 'Director, Integra Micro Systems -p Ltd, G5, Swiss Complex, 33, Race Course Road, Bangalore – 560001', 'Member', 'Ramaiah Institute of Technology'),
(28, 'Experts from outside the college representing area', 'Dr. Vikram M Gadre', 'Professor, Department of Electrical Engineering, IIT, Bombay, Powai, Mumbai - 400076', 'Member', 'Ramaiah Institute of Technology'),
(29, 'Nominees of the University', 'Dr. H C Nagaraj ', 'Principal, Nitte Meenakshi Institute of Technology, P.B.No.6429. Yelahanka, Bangalore 560064. ', 'Member', 'Ramaiah Institute of Technology'),
(30, 'Nominees of the University', 'Dr T Srinivasan', 'Professor, Department of Mechanical Engineering, R N S Institute of Technology, Rajarajeshwarinagar ', 'Member', 'Ramaiah Institute of Technology'),
(31, 'Nominees of the University', 'Dr C Puttamadappa', 'Registrar, DSU, Bangalore', 'Member', 'Ramaiah Institute of Technology'),
(32, 'Faculty member, nominated by the Principal', 'Dr T V Suresh Kumar', 'Registrar -Academic', 'Member Secretary', 'Ramaiah Institute of Technology');

-- --------------------------------------------------------

--
-- Table structure for table `administrator_login`
--

CREATE TABLE `administrator_login` (
  `emailId` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `departmentId` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrator_login`
--

INSERT INTO `administrator_login` (`emailId`, `password`, `departmentId`, `type`) VALUES
('hod-cse@msrit.edu', 'rit', 'cse', 'hod'),
('cse@msrit.edu', 'rit', 'cse', 'coordinator'),
('principal@msrit.edu', 'rit', 'college', 'principal'),
('admin@msrit.edu', 'rit', 'college', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `admissions`
--

CREATE TABLE `admissions` (
  `year` varchar(30) NOT NULL,
  `noOfUgStudents` int(11) NOT NULL,
  `noOfPgStudents` int(11) NOT NULL,
  `noOfPgStudentsWithGateScore` int(11) NOT NULL,
  `ugCet` int(11) NOT NULL,
  `ugComedK` int(11) NOT NULL,
  `pgCet` int(11) NOT NULL,
  `pgComedK` int(11) NOT NULL,
  `lateralEntry` int(11) NOT NULL,
  `fullTimePhd` int(11) NOT NULL,
  `partTimePhd` int(11) NOT NULL,
  `mscByResearch` int(11) NOT NULL,
  `departmentId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `slNo` int(11) NOT NULL,
  `bookTitle` varchar(100) NOT NULL,
  `bookAuthors` varchar(100) NOT NULL,
  `bookPublisher` varchar(30) NOT NULL,
  `year` varchar(20) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`slNo`, `bookTitle`, `bookAuthors`, `bookPublisher`, `year`, `facultyId`) VALUES
(1, 'Data Mining - Principles and Applications', 'Dr. Jagadish S Kallimani', 'Elsevier and Fillip Learning', '2012', 'cse04'),
(2, 'Stastical Programming', 'Chetan Shetty, Sowmya B J', 'null', '2017', 'cse13'),
(3, 'Stastical Programming', 'Sowmya B J, Chetan Shetty', 'null', '2017', 'cse22');

-- --------------------------------------------------------

--
-- Table structure for table `book_chapter`
--

CREATE TABLE `book_chapter` (
  `slNo` int(11) NOT NULL,
  `chapterName` varchar(100) NOT NULL,
  `bookName` varchar(100) NOT NULL,
  `chapterAuthors` varchar(100) NOT NULL,
  `publisher` varchar(50) NOT NULL,
  `year` varchar(20) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_chapter`
--

INSERT INTO `book_chapter` (`slNo`, `chapterName`, `bookName`, `chapterAuthors`, `publisher`, `year`, `facultyId`) VALUES
(1, '“Driving Big Data with Hadoop Technologies”,Cloud Infrastructures', 'null', 'Srinidhi H', 'null', '2012', 'cse27'),
(2, 'SABR: Secure Authentication-Based Routing in Large Scale Wireless Sensor Network', 'null', 'Dr. Anita Kanavalli', 'null', '2015', 'cse01'),
(3, 'Data Intensive Cloud Computing', 'null', 'Jayalakshmi D S', 'null', '2015', 'cse05'),
(4, '“Ubiquitous Computing for Cyber-Physical Systems', 'null', 'Srinidhi H', 'null', 'null', 'cse27'),
(5, 'A Viability Analysis of an Economical Private Cloud Storage Solution Powered by Raspberry Pi in the ', 'null', 'Srinidhi H', 'null', 'null', 'cse27'),
(6, 'GPU Implementation of Friend Recommendation System using CUDA for Social Networking Services', 'null', 'Srinidhi H', 'null', 'null', 'cse27'),
(7, 'Performance Analysis of Airplane Health Surveillance System', 'null', 'Dr. Seema S', 'Springer Nature Singapore  Ltd', '2017', 'cse03'),
(8, 'Computing and Network Sustainability', 'null', 'Sanjeetha. R', 'IoT-Enabled Integrated Intelligence System', '2017', 'cse07'),
(9, 'Kannada Handwritten Word Conversion to Electronic Textual Format Using HMM Model', 'null', 'Veena G S', 'null', '2016', 'cse09'),
(10, 'Lecture Notes in Networks and Systems', 'null', 'Veena G S', 'Springer Singapore', '2018', 'cse09'),
(11, 'Limitations of Conscious Machines', 'null', 'Dr. Jagadish S Kallimani', 'null', '2017', 'cse04'),
(12, '“Driving Big Data with Hadoop Technologies”,Cloud Infrastructures', 'null', 'Srinidhi H', 'null', '2012', 'ise01'),
(13, 'SABR: Secure Authentication-Based Routing in Large Scale Wireless Sensor Network', 'null', 'Dr. Anita Kanavalli', 'null', '2015', 'ise02'),
(14, 'Data Intensive Cloud Computing', 'null', 'Jayalakshmi D S', 'null', '2015', 'ece01'),
(15, '“Ubiquitous Computing for Cyber-Physical Systems', 'null', 'Srinidhi H', 'null', 'null', 'ece02'),
(16, 'A Viability Analysis of an Economical Private Cloud Storage Solution Powered by Raspberry Pi in the ', 'null', 'Srinidhi H', 'null', 'null', 'me01'),
(17, 'GPU Implementation of Friend Recommendation System using CUDA for Social Networking Services', 'null', 'Srinidhi H', 'null', 'null', 'cv01'),
(18, 'Performance Analysis of Airplane Health Surveillance System', 'null', 'Dr. Seema S', 'Springer Nature Singapore  Ltd', '2017', 'iem01'),
(19, 'Computing and Network Sustainability', 'null', 'Sanjeetha. R', 'IoT-Enabled Integrated Intelligence System', '2017', 'iem02'),
(20, 'Kannada Handwritten Word Conversion to Electronic Textual Format Using HMM Model', 'null', 'Veena G S', 'null', '2016', 'ise02'),
(21, 'Lecture Notes in Networks and Systems', 'null', 'Veena G S', 'Springer Singapore', '2018', 'iem02'),
(22, 'Limitations of Conscious Machines', 'null', 'Dr. Jagadish S Kallimani', 'null', '2017', 'ece02');

-- --------------------------------------------------------

--
-- Table structure for table `conference_paper`
--

CREATE TABLE `conference_paper` (
  `slNo` int(11) NOT NULL,
  `authors` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `conferenceName` varchar(100) NOT NULL,
  `conferenceType` varchar(100) NOT NULL,
  `organizedBy` varchar(100) NOT NULL,
  `year` varchar(10) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conference_paper`
--

INSERT INTO `conference_paper` (`slNo`, `authors`, `title`, `conferenceName`, `conferenceType`, `organizedBy`, `year`, `facultyId`) VALUES
(1, 'Dr. Anita Kanavalli', 'International Conference  on Image and Signal processing', 'null', 'international', 'Society of Information Processing and UVCE Bangalore', '2013', 'cse01'),
(2, 'Jayalakshmi D S', ' 2nd International Conference on Advances in Cloud Computing    (ACC -2013)', 'null', 'international', 'CSI, Bangalore', '2013', 'cse05'),
(3, 'J Geetha', '2nd International Conference on Advances in Cloud Computing –CSI Bangalore Chapter & CSI Division -5', 'null', 'international', 'NIMHANS convention Centre, Bangalore.', '2013', 'cse10'),
(4, 'Sini Anna Alex', 'IEEE CONNECT 2014', 'null', 'national', 'IISC,Bangalore', '2014', 'cse14'),
(5, 'Sini Anna Alex', 'SAP Faculty Day', 'null', 'national', 'SAP Labs Bangalore', '2014', 'cse14'),
(6, 'Sini Anna Alex', 'LDRA Academic Seminar - Providing Expertise for a Safer Tomorrow', 'null', 'national', 'null', '2014', 'cse14'),
(7, 'Vandana S Sardar', 'International Conference On Emerging Computation and Information Technologies ( ICECIT 2013)', 'null', 'international', 'SIT, Tumkur', '2013', 'cse15'),
(8, 'Divakar Harekal', 'Nokia Confluence February', 'null', 'national', 'National Institute of Design  ,Bangalore', '2013', 'cse18'),
(9, 'S.Rajarajeswari', 'International Conference ICHCI Aug2013', 'null', 'international', 'null', '2013', 'cse20'),
(10, 'S.Rajarajeswari', 'International conference on Emerging Computation and Information Technologies (ICECIT – 2013)', 'null', 'international', 'SIT Tumkur', '2013', 'cse20'),
(11, 'Ganeshayya Shidaganti', 'International Conference on Advances in Computing, Communications and Informatics (ICACCI-2013)', 'null', 'international', 'null', '2013', 'cse25'),
(12, 'Dr. Anita Kanavalli', 'International Multi Conference on Information Processing', 'null', 'international', 'UVCE Bangalore', '2014', 'cse01'),
(13, 'Dr. Anita Kanavalli', 'International Conference I4C', 'null', 'international', 'MSRIT', '2014', 'cse01'),
(14, 'Dr Annapurna P Patil', '5th IEEE International Advance Computing Conference.', 'null', 'international', 'BMSCE, Bangalore', '2015', 'cse02'),
(15, 'Dr Annapurna P Patil', 'International Conference on Circuits, Control, Communication and Computing.', 'null', 'international', 'MSRIT, Bangalore-54', '2014', 'cse02'),
(16, 'Jayalakshmi D S', '2014 IEEE Cloud Computing for Emerging Markets (CCEM) Conference', 'null', 'national', 'null', '2014', 'cse05'),
(17, 'Dr.Monica R Mundada', 'I4C2014- International Conference on Circuits, Communication, Control and Computing', 'null', 'international', 'MSRIT', '2014', 'cse06'),
(18, 'Parkavi.A', 'IEEE T4E conference', 'null', 'national', 'Amritha University, Kerala', '2014', 'cse08'),
(19, 'Mamatha V', ' 3 day IEEE International Conference on Smart Sensors and Systems', 'Evaluation of Modified PLS Regression Method to Fill the  Missing Values in Training Dataset', 'international', 'MSRIT, Bangalore', '2015', 'cse12'),
(20, 'Sini Anna Alex', 'T4E 2014- Technology for education, 6th IEEE Conference on Technology for Education 2014', 'null', 'national', 'Amrita University', '2014', 'cse14'),
(21, 'Divakar Harekal', '7th National Conference at SJB Institute of Technology Bangalore', 'Knowledge and Defect Management Approaches to Software Industries', 'national', 'SJBT Bangalore', '2015', 'cse18'),
(22, 'S.Rajarajeswari', 'International Conference on Circuits, Control, Communication and Computing,', 'null', 'international', 'MSRIT, Bangalore', '2014', 'cse20'),
(23, 'S.Rajarajeswari', '2nd International Conference on engineering Technology and Science. ICETS’15', 'null', 'international', 'Muthayammal College of Engineering, Rasipuram', '2015', 'cse20'),
(24, 'Pramod Sunagar', 'International conference on Circuits, Communication , Control and Computations - I4C2014', 'null', 'international', 'MSRIT', '2014', 'cse21'),
(25, 'Ganeshayya Shidaganti', 'International Conference on Circuits,Communication,Control and Computing(I4C 2014)', 'null', 'international', 'MSRIT', '2014', 'cse25'),
(26, 'Srinidhi H', '8th India Software Engineering Conference', 'null', 'national', 'null', '2015', 'cse27'),
(27, 'Ganeshayya Shidaganti', '10th Annual Conference of KSTA 2018', 'null', 'national', 'Reva University', '2018', 'cse25'),
(28, 'Ganeshayya Shidaganti', '5th IEEE International Conference', 'MOOCS,Innovations  and Technology in Education-MITE2017', 'international', 'BMS College of Engineering ', '2017', 'cse25'),
(29, 'Dr. Anita Kanavalli', 'Wireless and Optical Communications Networks (WOCN), 2015 Twelfth International Conference', 'Intelligent Transportation System based on the Principles of Service-Oriented Architecture ', 'international', 'null', '2015', 'cse01'),
(30, 'Dr. Anita Kanavalli', 'at ICICSE-2018: 6th- International Conference on Innovations in Computer Science & Engineering, 17-1', 'Assessment Framework Modeling Tool Using Location Aware Computing for Agriculture Pasteurization and', 'international', 'Computer Society of India (CSI)', '2018', 'cse01'),
(31, 'Dr. Anita Kanavalli', 'International Journal of Innovations & Advancement in Computer Science', 'A Vehicular Apprehension Scheme in Wireless Networks', 'international', 'null', '2017', 'cse01'),
(32, 'Dr. Anita Kanavalli', 'International Conference On New Trends In Engineering &amp; Technology\r\n', 'Detection of DDoS attacks on Controller and its Mitigation at Switch and Host Level in Software Defi', 'national', 'GRT college, Chennai', '2018', 'cse01'),
(33, 'Dr. Anita Kanavalli', 'International Conference  on Image and Signal processing', 'null', 'international', 'Society of Information Processing and UVCE Bangalore', '2013', 'ise01'),
(34, 'Jayalakshmi D S', ' 2nd International Conference on Advances in Cloud Computing    (ACC -2013)', 'null', 'international', 'CSI, Bangalore', '2013', 'ise02'),
(35, 'J Geetha', '2nd International Conference on Advances in Cloud Computing –CSI Bangalore Chapter & CSI Division -5', 'null', 'international', 'NIMHANS convention Centre, Bangalore.', '2013', 'ise03'),
(36, 'Sini Anna Alex', 'IEEE CONNECT 2014', 'null', 'national', 'IISC,Bangalore', '2014', 'ise04'),
(37, 'Sini Anna Alex', 'SAP Faculty Day', 'null', 'national', 'SAP Labs Bangalore', '2014', 'ece01'),
(38, 'Sini Anna Alex', 'LDRA Academic Seminar - Providing Expertise for a Safer Tomorrow', 'null', 'national', 'null', '2014', 'ece02'),
(39, 'Vandana S Sardar', 'International Conference On Emerging Computation and Information Technologies ( ICECIT 2013)', 'null', 'international', 'SIT, Tumkur', '2013', 'ece03'),
(40, 'Divakar Harekal', 'Nokia Confluence February', 'null', 'national', 'National Institute of Design  ,Bangalore', '2013', 'ece04'),
(41, 'S.Rajarajeswari', 'International Conference ICHCI Aug2013', 'null', 'international', 'null', '2013', 'me01'),
(42, 'S.Rajarajeswari', 'International conference on Emerging Computation and Information Technologies (ICECIT – 2013)', 'null', 'international', 'SIT Tumkur', '2013', 'me02'),
(43, 'Ganeshayya Shidaganti', 'International Conference on Advances in Computing, Communications and Informatics (ICACCI-2013)', 'null', 'international', 'null', '2013', 'me03'),
(44, 'Dr. Anita Kanavalli', 'International Multi Conference on Information Processing', 'null', 'international', 'UVCE Bangalore', '2014', 'me04'),
(45, 'Dr. Anita Kanavalli', 'International Conference I4C', 'null', 'international', 'MSRIT', '2014', 'cv01'),
(46, 'Dr Annapurna P Patil', '5th IEEE International Advance Computing Conference.', 'null', 'international', 'BMSCE, Bangalore', '2015', 'cv02'),
(47, 'Dr Annapurna P Patil', 'International Conference on Circuits, Control, Communication and Computing.', 'null', 'international', 'MSRIT, Bangalore-54', '2014', 'cv03'),
(48, 'Jayalakshmi D S', '2014 IEEE Cloud Computing for Emerging Markets (CCEM) Conference', 'null', 'national', 'null', '2014', 'cv04'),
(49, 'Dr.Monica R Mundada', 'I4C2014- International Conference on Circuits, Communication, Control and Computing', 'null', 'international', 'MSRIT', '2014', 'iem01'),
(50, 'Parkavi.A', 'IEEE T4E conference', 'null', 'national', 'Amritha University, Kerala', '2014', 'iem02'),
(51, 'Mamatha V', ' 3 day IEEE International Conference on Smart Sensors and Systems', 'Evaluation of Modified PLS Regression Method to Fill the  Missing Values in Training Dataset', 'international', 'MSRIT, Bangalore', '2015', 'iem03'),
(52, 'Sini Anna Alex', 'T4E 2014- Technology for education, 6th IEEE Conference on Technology for Education 2014', 'null', 'national', 'Amrita University', '2014', 'iem04'),
(53, 'Divakar Harekal', '7th National Conference at SJB Institute of Technology Bangalore', 'Knowledge and Defect Management Approaches to Software Industries', 'national', 'SJBT Bangalore', '2015', 'ise01'),
(54, 'S.Rajarajeswari', 'International Conference on Circuits, Control, Communication and Computing,', 'null', 'international', 'MSRIT, Bangalore', '2014', 'ise02'),
(55, 'S.Rajarajeswari', '2nd International Conference on engineering Technology and Science. ICETS’15', 'null', 'international', 'Muthayammal College of Engineering, Rasipuram', '2015', 'cv01'),
(56, 'Pramod Sunagar', 'International conference on Circuits, Communication , Control and Computations - I4C2014', 'null', 'international', 'MSRIT', '2014', 'cv02'),
(57, 'Ganeshayya Shidaganti', 'International Conference on Circuits,Communication,Control and Computing(I4C 2014)', 'null', 'international', 'MSRIT', '2014', 'ece01'),
(58, 'Srinidhi H', '8th India Software Engineering Conference', 'null', 'national', 'null', '2015', 'ece02'),
(59, 'Ganeshayya Shidaganti', '10th Annual Conference of KSTA 2018', 'null', 'national', 'Reva University', '2018', 'iem01'),
(60, 'Ganeshayya Shidaganti', '5th IEEE International Conference', 'MOOCS,Innovations  and Technology in Education-MITE2017', 'international', 'BMS College of Engineering ', '2017', 'iem02'),
(61, 'Dr. Anita Kanavalli', 'Wireless and Optical Communications Networks (WOCN), 2015 Twelfth International Conference', 'Intelligent Transportation System based on the Principles of Service-Oriented Architecture ', 'international', 'null', '2015', 'me01'),
(62, 'Dr. Anita Kanavalli', 'at ICICSE-2018: 6th- International Conference on Innovations in Computer Science & Engineering, 17-1', 'Assessment Framework Modeling Tool Using Location Aware Computing for Agriculture Pasteurization and', 'international', 'Computer Society of India (CSI)', '2018', 'me02'),
(63, 'Dr. Anita Kanavalli', 'International Journal of Innovations & Advancement in Computer Science', 'A Vehicular Apprehension Scheme in Wireless Networks', 'international', 'null', '2017', 'ise03'),
(64, 'Dr. Anita Kanavalli', 'International Conference On New Trends In Engineering &amp; Technology\r\n', 'Detection of DDoS attacks on Controller and its Mitigation at Switch and Host Level in Software Defi', 'national', 'GRT college, Chennai', '2018', 'ece03');

-- --------------------------------------------------------

--
-- Table structure for table `consultancy`
--

CREATE TABLE `consultancy` (
  `slNo` int(11) NOT NULL,
  `financialYear` varchar(10) NOT NULL,
  `clientOrganization` varchar(100) NOT NULL,
  `consultancyProjectTitle` varchar(100) NOT NULL,
  `amountReceived` int(11) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `courses_handled`
--

CREATE TABLE `courses_handled` (
  `slNo` int(11) NOT NULL,
  `yearHandled` varchar(10) NOT NULL,
  `subjectName` varchar(50) NOT NULL,
  `ugOrPg` varchar(5) NOT NULL,
  `labHandled` varchar(30) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `departmentId` varchar(10) NOT NULL,
  `departmentName` varchar(100) NOT NULL,
  `yearOfEstablishment` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contactNumber` varchar(100) NOT NULL,
  `officialMailId` varchar(100) NOT NULL,
  `hodName` varchar(30) NOT NULL,
  `hodContactNumber` varchar(100) NOT NULL,
  `instituteName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`departmentId`, `departmentName`, `yearOfEstablishment`, `address`, `contactNumber`, `officialMailId`, `hodName`, `hodContactNumber`, `instituteName`) VALUES
('cse', 'Computer Science & Engineering', '1984', 'division of electrical sciences block, 1st floor', '080-23600822/23606939', 'hod-cse@msrit.edu', 'Dr. Anita Kanavalli', '9845899681\r\n', 'Ramaiah Institute of Technology'),
('cv', 'Civil Engineering', '1971', 'engineering sciences block', '080-23600822/23606939', 'hod-cv@msrit.edu', 'Dr. C G Puttappa', '9844290938', 'Ramaiah Institute of Technology'),
('ece', 'Electronics and Communication Engineering', '1975', 'division of electrical sciences block, 3rd floor', '080-23600822/23606939', 'hod_ec@msrit.edu', 'Dr. S Sethu Selvi', '9481183798', 'Ramaiah Institute of Technology'),
('iem', 'Industrial Engineering & Management', '1979', 'engineering sciences block', '080-23600822/23606939', 'hod_im@msrit.edu', 'Dr. G. S. Prakash', '9448226933', 'Ramaiah Institute of Technology'),
('ise', 'Information Science & Engineering', '1992', 'division of electrical sciences block, 2nd floor', '080-23600822/23606939', 'hod_is@msrit.edu', 'DR. VIJAYA KUMAR B. P.', '9980634134', 'Ramaiah Institute of Technology'),
('me', 'Mechanical Engineering', '1962', 'engineering sciences block', '080-23600822/23606939', 'hod-me@msrit.edu', 'Dr. Raji George', '9845318047', 'Ramaiah Institute of Technology');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `facultyId` varchar(10) NOT NULL,
  `facultyName` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `religion` varchar(20) NOT NULL,
  `caste` varchar(15) NOT NULL,
  `category` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `natureOfAppointment` varchar(50) NOT NULL,
  `contactNumber` varchar(30) NOT NULL,
  `emailId` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `panNumber` varchar(20) NOT NULL,
  `accountNumber` varchar(30) NOT NULL,
  `pfNumber` varchar(30) NOT NULL,
  `about` varchar(300) DEFAULT NULL,
  `designation` varchar(20) NOT NULL,
  `departmentId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`facultyId`, `facultyName`, `gender`, `address`, `religion`, `caste`, `category`, `dob`, `natureOfAppointment`, `contactNumber`, `emailId`, `password`, `panNumber`, `accountNumber`, `pfNumber`, `about`, `designation`, `departmentId`) VALUES
('cse01', 'Anita Kanavalli', 'Female', 'NO 25 ANASWARA 1ST MAIN, 2nd cross MSR Ngar', 'Christian', 'Protestant', 'GM', '1967-04-02', 'Regular', '9845899681', 'anithak@msrit.edu', 'rit', 'AKOPK7232J', '141201010012262', 'KN/BN/8146/0754', 'Dr. Anita Kanavalli is working as the Head of Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include Adhoc networks, high performance computing and microprocessors.', 'PROFESSOR', 'cse'),
('cse02', 'Annapurna P. Patil', 'Female', '#308, C Block Gowri Apartment, NEW BEL Road', 'Hindu', 'Veershaiva Jang', 'GM 371J', '1972-10-10', 'Regular', '9945409177', 'annapurnap2@msrit.edu', 'rit', 'AIMPP9079L', '141201010013904', 'KN/BN/8146/0852', 'Dr. Annapurna P. Patil is working as a Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include Wireless Networks, Artificial Intelligence, Protocol Engineering, Cloud Computing and IOT, Data Structures and Analysis of Algorithms.', 'PROFESSOR', 'cse'),
('cse03', 'Seema S', 'Female', '#327, 7TH CROSS,  3RD BLOCK, HMT layout, Vidyarany', 'Hindu', 'Marathi', 'GM', '1970-06-29', 'Regular', '9901688004', 'seemas@msrit.edu', 'rit', 'ARJPS9571N', '141201010010588', 'KN/BN/8146/0779', 'Dr. S. Seema is working as a Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include databases, data mining and big data, computer graphics, bioinformatics and data analytics.', 'PROFESSOR', 'cse'),
('cse04', 'Jagadish S.K.', 'Male', 'NO.79, 9TH MAIN, 6TH CROSS, J C Nagar, Kurubara ha', 'Hindu', 'Lingayath', 'GM', '1977-07-19', 'Regular', '9844413643', 'jagadish.k@msrit.edu', 'rit', 'AHRPK8437B', '141201010015421', 'KN/BN/8146/0942', 'Dr. Jagadish S. Kallimani is working as an Associate Professor in Computer Science Department of Ramaiah Institute of Technology. His areas of interest include artificial intelligence, natural language processing, information retrieval, information extraction, and statistical machine learning.', 'ASSOCIATE PROFESSOR', 'cse'),
('cse05', 'Jayalakshmi D.S', 'Female', '#325/6, \"SRINIDHI\", F BLOCK, Sahakara nagar', 'Hindu', 'Bramhin', 'GM', '1967-04-21', 'Regular', '8197820657', 'jayalakshmids@msrit.edu', 'rit', 'AHGPD5509A', '141201010018116', 'KN/BN/8146/0984', 'Jayalakshmi D. S. is working as an Associate Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include cloud computing, big data, computer graphics.', 'ASSOCIATE PROFESSOR', 'cse'),
('cse06', 'Monica R Mundada', 'Female', '137/A1, 13th cross ASCS layout, Near RMV Hosptial,', 'Hindu', 'Marwadi', 'GM', '1974-09-15', 'Regular', '9008365087', 'monica@msrit.edu', 'rit', 'AIWPM8762H', '141201010015521', 'KN/BN/8146/0924', 'Dr. Monica R. Mundada is working as an Associate Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include theory of computation, wireless sensor networks, computer networks, data communications, and IOT.', 'ASSOCIATE PROFESSOR', 'cse'),
('cse07', 'Sanjeetha R', 'Female', 'Sri Manjunatha Swamy Nilaya, #78, 2nd cross, Vinay', 'Hindu', 'vokkaliga', 'vokkaliga', '1980-10-16', 'Regular', '9986406819', 'sanjeetha.r@msrit.edu', 'rit', 'BTYPS2093H', '141201011000968', 'KN/BN/8146/1102', 'Sanjeetha R. is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include software defined networks, computer networks, data communications, operating systems, and database systems.', 'ASST PROFESSOR', 'cse'),
('cse08', 'A Parkavi', 'Female', 'C/O, C.SINGARAM, NO.124, 6TH MAIN, 3RD CROSS, IST ', 'Christian', 'Pallan', 'SC', '1979-05-05', 'Regular', '9902524685', 'parkavi.a@msrit.edu', 'rit', 'APHPP4199M', '141201011000983', 'KN/BN/8146/1097', 'Parkavi A. is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include data mining, educational data mining, social network analysis, compiler design and educational technology.', 'ASST PROFESSOR', 'cse'),
('cse09', 'Veena GS ', 'Female', '#48, 2nd Main, 2nd Stage, Near Aveksha Hospital, S', 'Hindu', 'Bramhin', 'Other', '1972-06-15', 'Regular', '9886030842', 'veenags@msrit.edu', 'rit', 'AKGPG5600C', '141201011000958', 'KN/BN/8146/1099', 'Veena G.S. is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include, image processing, embedded systems, mathematical modeling, cognition, IOT.', 'ASST PROFESSOR', 'cse'),
('cse10', 'J Geetha', 'Female', 'NO-106 SLV Durga Apartments Vidyaranipura,  BANGAL', 'Hindu', 'reddy', 'GM', '1979-07-16', 'Regular', '9916912573', 'geetha@msrit.edu', 'rit', 'ALDPG4963E', '141201011001787', 'KN/BN/8146/1161', 'Geetha J. is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include cloud computing, big data, semantic web, graph theory and web designing.', 'ASST PROFESSOR', 'cse'),
('cse11', 'T.N R. Kumar', 'Male', '#1/3(212) 3RD CROSS CHIKKANNA, Gardenns Shankarpur', 'Hindu', 'Bramhin', 'Other', '1967-06-19', 'Regular', '9844636865', 'tnrkumar@msrit.edu', 'rit', 'AHWPR2220G', '141201011002750', 'KN/BN/8146/1174', 'Dr. T.N.R.Kumar is working as an Associate Professor in Computer Science Department of Ramaiah Institute of Technology. His areas of interest include image processing, software engineering and computer networks.', 'ASST PROFESSOR', 'cse'),
('cse12', 'Mamatha  Jadhav V', 'Female', '#2709 11TH MAIN D BLOCK, II stage Rajajinagar Blor', 'Hindu', 'Marathi', 'Other', '1973-10-22', 'Regular', '9844094962', 'mamsdalvi@msrit.edu', 'rit', 'AKDPJ5187A', '141201011011032', 'KN/BN/8146/1263', 'Mamatha Jadhav V. is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include computer networks, database management systems and data mining.', 'ASST PROFESSOR', 'cse'),
('cse13', 'Chethan C T', 'Male', '#208 PATEL CHANNAPA\'S, 1ST Main Dwaraka nagar BSK ', 'Hindu', 'Gowda', '3A', '1985-10-28', 'Regular', '9449035534', 'ctchethan@msrit.edu', 'rit', 'AIDPC7398G', '141201011004919', 'KN/BN/8146/1299', 'Mr. Chethan is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. His areas of interest include analytics, entrepreneurship, incubation, consultancy, and industry association.', 'ASST PROFESSOR', 'cse'),
('cse14', 'Sini Anna Alex', 'Female', '#171, BETHEL, 1st main, AYR Layout, Shettyhalli, J', 'Christian', 'Orthodox', 'GM', '1983-02-24', 'Regular', '9845437091', 'sinialex@msrit.edu', 'rit', 'CDKPS5458K', '141201011005688', 'KN/BN/8146/1322', 'Mrs. Sini Anna Alex is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include, ubiquitous computing, compiler design, mobile and wireless sensor networks, distributed, database systems and algorithm analysis.', 'ASST PROFESSOR', 'cse'),
('cse15', 'Sardar Vandana Sudhakar', 'Female', '#14, Venkateshwara Layout, MSR Nagar', 'Hindu', 'Mahar', 'SC', '1979-05-19', 'Regular', '9886878953', 'vandana.s@msrit.edu', 'rit', 'BCBPS9768K', '141201011007877', 'KN/BN/8146/1398', 'Vandana Sudhakar Sardar is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include information retrieval and machine learning.', 'ASST PROFESSOR', 'cse'),
('cse16', 'Meera Devi A Kawalgi', 'Female', '#307, Garuda Royal Apt, Sharadamba Nagar, Jalahall', 'Hindu', 'Lingayath', 'GM', '1984-09-13', 'Regular', '8792068734', 'meera_ak@msrit.edu', 'rit', 'AWCPP1652M', '141201011007888', 'KN/BN/8146/1400', 'Meeradevi A. K. is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include Computer Networks, Information Security, Data Communications, WSN & IoT.', 'ASST PROFESSOR', 'cse'),
('cse17', 'Malle Gowda M', 'Male', '#243/2 , II CROSS , mathikere(near univercell)', 'Hindu', 'Gowda', 'OBC', '1983-09-12', 'Regular', '9535834471', 'mallegowdam@msrit.edu', 'rit', 'AQXPM5349P', '141201011007996', 'KN/BN/8146/1418', 'Mr. Mallegowda M. is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. His areas of interest include WSN, SOA, middleware solution, IOT, and embedded system.', 'ASST PROFESSOR', 'cse'),
('cse18', 'Dr.H.V. Divakar', 'Male', '#105, TELECOM COLONY, behind new timberyard', 'Hindu', 'Bramhin', 'Other', '1965-07-03', 'Regular', '9980315974', 'divakar.h@msrit.edu', 'rit', 'AAYPD4812D', '141201011009452', 'KN/BN/8146/1453', 'Dr. Divakar Harekal is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. His areas of interest include software engineering, embedded system design and cloud computing.', 'ASST PROFESSOR', 'cse'),
('cse19', 'Chandrika Prasad', 'Female', '#143, I STAGE, II CROSS, B.E.M.L., Basaveshwara Na', 'Hindu', 'Bramhin', 'Other', '1980-05-28', 'Regular', '9845053122', 'chandrika@msrit.edu', 'rit', 'AHZPC9945N', '141201011009473', 'KN/BN/8146/1454', 'Chandrika Prasad is working as an assistant professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include operating system and are teaching computer organization and UNIX system programming.', 'ASST PROFESSOR', 'cse'),
('cse20', 'Rajarajeswari S', 'Female', '#501, SIRI RESIDENCY, I CROSS, PAPPANA LAYOUT, V.N', 'Hindu', 'Vanniya Kula Ks', 'OBC', '1975-08-02', 'Regular', '9886958079', 'raji@msrit.edu', 'rit', 'ANFPR9711D', '141201011009606', 'KN/BN/8146/1467', 'S. Rajarajeswari is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include cloud computing, big data and data sciences, artificial intelligence, data mining and image processing.', 'ASST PROFESSOR', 'cse'),
('cse21', 'Pramod C Sunagar', 'Male', '#18, \"GURUKRUPA NILAYA\" 17TH A CROSS, BNS LAYOUT, ', 'Hindu', 'Ambiger', 'CAT - I', '1984-12-16', 'Regular', '9886358659', 'pramods@msrit.edu', 'rit', 'BPVPS0308L', '141201011013869', 'KN/BN/8146/1552', 'Mr. Pramod Sunagar is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. His areas of interest include data analytics algorithms, android development, java & j2ee and data structures.', 'ASST PROFESSOR', 'cse'),
('cse22', 'Sowmya B J', 'Female', '829, 1ST CROSS, 4 BLOCK, HMT LAYOUT', 'Hindu', 'Lingayath', '3BG', '1986-11-30', 'Regular', '9886733368', 'sowmyabj@msrit.edu', 'rit', 'CJRPS4964D', '141201011015419', 'KN/BN/8146/4801', 'Sowmya B. J. is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include software engineering, computer organization, computer security and data analytics.', 'ASST PROFESSOR', 'cse'),
('cse23', 'Pradeep kumar D ', 'Male', 'NO 740, 9MAIN 9 BLOCK, NAGARBAVI', 'Hindu', 'Gowda', 'OBC', '1985-09-27', 'Regular', '9886715235', 'pradeepkumard@msrit.edu', 'rit', 'BCOPD2999E', '141201011017395', 'KN/BN/8146/5011', 'Mr. Pradeep Kumar D. is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. His areas of interest include data mining, data sciences, big data, machine learning and internet of things.', 'ASST PROFESSOR', 'cse'),
('cse24', 'Chetan  Shetty ', 'Male', 'NO 13, B 306, 3RD FLOOR, RENAISSANCE BRINDAVAN, UT', 'Hindu', 'Bunts', 'GM', '1986-02-24', 'Regular', '9686575665', 'chetanshetty@msrit.edu', 'rit', 'CPFPS0001H', '141201011008572', 'KN/BN/8146/5014', 'Chetan Shetty is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. His areas of interest include data analytics and teach design and analysis of algorithms, software engineering and computer security.', 'ASST PROFESSOR', 'cse'),
('cse25', 'Ganeshayya I Shidaganti', 'Male', '106, MANASA BULDING, SIDDESWARA PARK, HUBLI', 'Hindu', 'Lingayath', 'GM', '1987-11-29', 'Regular', '9880251131', 'ganeshayyashidaganti@msrit.edu', 'rit', 'ETQPS2411N', '141201011017391', 'KN/BN/8146/1629', 'Ganeshayya Shidaganti is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. His areas of interest include cloud computing, big data, and computational intelligence.', 'ASST PROFESSOR', 'cse'),
('cse26', 'Darshana A Naik', 'Female', '1592, 6 MAIN E BLOCK, 2ND STAGE , SHIVA KRUPA, RAJ', 'Hindu', 'Konkan Maratha', 'GM', '1987-04-25', 'Regular', '9900821964', 'darshananaik@msrit.edu', 'rit', 'APHPN3564N', '141201011017362', 'KN/BN/8146/1626', 'Darshana A. Naik is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include, data mining, big data networks, social network and image processing.', 'ASST PROFESSOR', 'cse'),
('cse27', 'Srinidhi H', 'Male', 'NO 62, 3RD CROSS, 4TH MAIN, KIRLOSKAR COLONY, 1ST ', 'Hindu', 'Bramhin', 'GM\r\n', '1989-11-07', 'Regular', '9591690191', 'srinidhih@msrit.edu', 'rit', 'CVJPS2592H', '141201011017392', 'KN/BN/8146/1630', 'Srinidhi Hiriyannaiah is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. His areas of interest include big data and analytics, internet of things, algorithms and data structures, software engineering and information management.', 'ASST PROFESSOR', 'cse'),
('cse28', 'Hanumantha Raju R', 'Male', 'Sri Maruti Nilaya, 4th ward, vinayak nagar, Dodbal', 'Hindu', 'Gowda', 'OBC', '1988-12-20', 'Regular', '9901287316', 'hmrcs@msrit.edu', 'rit', 'AGRPH6781L', '141201011019438', 'KN/BN/8146/1650', 'Mr. Hanumantha Raju R. is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. His areas of interest include internet of things and wireless sensor networks.', 'Assistant Professor', 'cse'),
('cse29', 'Aparna R', 'Female', 'No. 13, Sastry Apartments, Gannappa Gardens, 8th C', 'Hindu', 'Brahmin', 'GM', '1979-09-17', 'Regular', '9886867568', 'aparna@msrit.edu', 'rit', 'AJXPA7953J', '141201011019432', 'KN/BN/8146/1651', 'Aparna R. is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include, cloud computing, high performance computing, data mining, data structures and database systems.', 'Assistant Professor', 'cse'),
('cse30', 'Shilpa S Chaudhari', 'Female', 'J-21, Shriram Sadhana Apt, Gokula Mathiker, Bangal', 'Hindu', 'Leva Patidhar', 'GM', '1976-10-29', 'Regular', '9886054151', 'shilpasc29@msrit.edu', 'rit', 'AEJPC6125R', '141201010018835', 'KN/BN/8146/D010', 'Dr. Shilpa Chaudhari is working as Associate Professor at department of CSE, MSRIT, Bangalore at present. She has been a technology educator and corporate trainer since 1999. Her   areas of  research and teaching include network security, RTOS, computational intelligence, wireless networks, embedded', 'Associate Professor', 'cse'),
('cse31', 'Raghuram Krishnapuram', 'Male', 'null', 'null', 'null', 'null', '1956-02-13', 'null', 'null', 'raghuk@msrit.edu', 'rit', 'AGIPK4840L', 'null', 'null', 'null', 'PROFESSOR, R&D Head', 'cse'),
('cse32', 'Ramani S', 'Male', 'Malleshwaram, Bangalore, 560003', 'Hindu', 'Bramhin', 'GM', '1954-04-17', 'Regular', '9343457890', 'ramanis@msrit.edu', 'rit', 'ABVPS3193C', 'null', 'null', 'Dr. S. Ramani is working as a professor in Computer Science Department of Ramaiah Institute of Technology. His areas of interest include software architecture, e-governance, networking, and information security.', 'PROFESSOR', 'cse'),
('cse33', 'Nagabhushan A M', 'Male', '12_seetharamaiah lay out, Yeswanthpur, 560022', 'Hindu', 'Lingayath', 'GM', '1963-07-13', 'Visiting', '9844864526', 'bhushan@msrit.edu', 'rit', 'AAIPN8611J', 'null', 'null', 'Bhushan A. Matad is working as an Associate Professor in Computer Science Department of Ramaiah Institute of Technology. His areas of interest include future work skills, and start-up software engineering.', 'Associate Professor', 'cse'),
('cv01', 'Dr. C G Puttappa', 'Male', 'null', 'null', 'null', 'null', '0000-00-00', 'Regular', '9844290938', 'puttappacg@gmail.com', 'rit', 'null', 'null', 'null', 'Dr. C G Puttappa is working as Head Of The Department & Controller Of Examination in civil engineering department of MSRIT. His areas of interests are highway engineering, utilization of waste materials for roads, characterization of waste materials, economic analysis of roads using waste materials ', 'PROFESSOR', 'cv'),
('cv02', 'Dr. Raja Gopal Reddy Chintakunta', 'Male', 'null', 'null', 'null', 'null', '0000-00-00', 'Regular', '8147525949', 'crgreddycivil@msrit.edu', 'rit', 'null', 'null', 'null', 'Dr. Raja Gopal Reddy Chintakunta is working as a professor in civil engineering department of MSRIT. His areas of interests are surface water hydrology, ground water hydrology, water resource systems, optimization methods, and hydraulics.', 'PROFESSOR', 'cv'),
('cv03', 'Dr. Srikanth M. Naik', 'Male', 'null', 'null', 'null', 'null', '0000-00-00', 'Regular', '9845879101', 'srikanth_naik@yahoo.com', 'rit', 'null', 'null', 'null', 'Dr. Srikanth M. Naik is working as a professor in civil engineering department of MSRIT. His areas of interests are highway engineering, utilization of waste materials for roads, characterization of waste materials, economic analysis of roads using waste materials and traffic engineering.', 'PROFESSOR', 'cv'),
('cv04', 'Jagadeesha Kumar B. G.', 'Male', 'null', 'null', 'null', 'null', '0000-00-00', 'Regular', '9448594300', 'bgjagadish@msrit.edu', 'rit', 'null', 'null', 'null', 'Mr. Jagadeesha Kumar B. G. is working as an associate professor in civil engineering department of MSRIT. His areas of interests are sustainability in civil engineering, green building technology, environmental engineering, modern methods of surveying using total station and GPS.', 'Assistant Professor', 'cv'),
('ece01', 'Dr. S. Sethu Selvi', 'Female', 'null', 'null', 'null', 'null', '0000-00-00', 'Regular', '9481183798', 'hod_ec@msrit.edu', 'rit', 'null', 'null', 'null', 'Dr. S. Sethu Selvi is working as the Professor & Head of the Electronics and Communication Department of MSRIT. Her subjects of interests are signal processing, image processing and digital communication.', 'PROFESSOR', 'ece'),
('ece02', 'Dr. Rama Murthy T.V', 'Male', 'null', 'null', 'null', 'null', '0000-00-00', 'Regular', '9886385321', 'tvramamurthy@msrit.edu', 'rit', 'null', 'null', 'null', 'Dr. Rama Murthy T.V, is working as a Professor (Emeritus) in the department of Electronics and Communication of MSRIT. His subjects of interest are Aerospace Electronics and Systems, Signal processing fault detection and reconfiguration of safety critical systems', 'PROFESSOR', 'ece'),
('ece03', 'K. Indira', 'Female', 'null', 'null', 'null', 'null', '0000-00-00', 'Regular', '9449446302', 'indira@msrit.edu', 'rit', 'null', 'null', 'null', 'Dr. K. Indira is working as a Professor in the Electronics and Communication Department of MSRIT. Her subjects of interests are signal processing, image processing, neural networks, speech processing, and fuzzy logic.', 'PROFESSOR', 'ece'),
('ece04', 'Maya V Karki', 'Female', 'null', 'null', 'null', 'null', '0000-00-00', 'Regular', '9481203137', 'mayavkarki@msrit.edu', 'rit', 'null', 'null', 'null', 'Dr. Maya V. Karki is working as a Professor in the Electronics and Communication Department of MSRIT. Her subjects of interests are image and signal processing, video analytics, machine learning, neural network and multimedia communication.', 'PROFESSOR', 'ece'),
('iem01', 'Dr. G. S. Prakash', 'Male', 'null', 'null', 'null', 'null', '0000-00-00', 'Regular', '9448226933', 'prakash5636@yahoo.com', 'rit', 'null', 'null', 'null', 'Dr. G. S. Prakash is serving as a professor & Head in Industrial Engineering and Management dept. of MSRIT. His subjects of interests are operations research, quality assurance & reliability; computer integrated manufacturing, automation in manufacture and data base management system.', 'PROFESSOR', 'iem'),
('iem02', 'Dr. N.V.R. Naidu', 'Male', 'null', 'null', 'null', 'null', '0000-00-00', 'Regular', '9886844934', 'nvrnaidu@gmail.com', 'rit', 'null', 'null', 'null', 'Dr. N.V.R. Naidu is serving as the Principal of M. S. Ramaiah Institute of Technology. His subjects of interests are operations research, quality and reliability engineering, applied probability and statistics, industrial engineering and quantitative techniques.', 'PROFESSOR', 'iem'),
('iem03', 'A. Balakrishna', 'Male', 'null', 'null', 'null', 'null', '0000-00-00', 'Regular', '8550880084', 'balki004@gmail.com', 'rit', 'null', 'null', 'null', 'Mr. A. Balakrishna is serving as an associate professor in Industrial Engineering and Management dept. of MSRIT. His subjects of interests are production engineering, robotics, operations research, mechanics of materials and design of machine elements.', 'Associate Professor', 'iem'),
('iem04', 'S. Appaiah', 'Male', 'null', 'null', 'null', 'null', '0000-00-00', 'Regular', '9845149773', 'appaiahs@yahoo.com', 'rit', 'null', 'null', 'null', 'S. Appaiah is serving as an associate professor in Industrial Engineering and Management dept. of MSRIT. His subjects of interests are production engineering, management subjects, engineering economy, fluid mechanics and operations research.', 'Associate Professor', 'iem'),
('ise01', 'Dr. Vijaya Kumar B P', 'Male', 'null', 'null', 'null', 'null', '0000-00-00', 'Regular', '9980634134', 'hod_is@msrit.edu', 'rit', 'null', 'null', 'null', 'VIJAY KUMAR B. P. Received the Ph. D degree in Electrical Communication Engg.,Department from Indian Institute of Science (IISc), Bangalore in 2003, M.Tech degree in Computer Science and Technology from the University of Roorkee (Presently Indian Institute of Technology, IITR), with honors in 1992 a', 'PROFESSOR', 'ise'),
('ise02', 'Dr. Lingaraju G. M.', 'Male', 'null', 'null', 'null', 'null', '0000-00-00', 'Regular', '9448127558', 'gmlraju@msrit.edu', 'rit', 'null', 'null', 'null', 'Dr. Lingaraju G. M. is a Ph.D. degree holder and is serving as a professor in IS&E department of MSRIT.He is interested in subjects related to computer graphics and virtual reality.', 'PROFESSOR', 'ise'),
('ise03', 'Dr. Mydhili K. Nair', 'Female', 'null', 'null', 'null', 'null', '0000-00-00', 'Regular', '9880092392', 'mydhili.nair@msrit.edu', 'rit', 'null', 'null', 'null', 'Dr. Mydhili K. Nair is a Ph.D. degree holder and is serving as a professor in IS&E department of MSRIT. She is interested in subjects related to IoT & WSN.', 'PROFESSOR', 'ise'),
('ise04', 'Rajaram M. Gowda', 'Male', 'null', 'null', 'null', 'null', '0000-00-00', 'Regular', '9986152854', 'rajgowda@msrit.edu', 'rit', 'null', 'null', 'null', 'Prof. Rajaram M Gowda has a blend of Industrial and Academic experience. He has worked in the areas of Design and Development of Advanced Light Helicopter(DHRUV) and was deputed to Eurocopters(Germany) in 1986 from HDB(HAL). He has worked on INSAT, SROSS, IRS satellite series for Department of Space', 'Associate Professor', 'ise'),
('me01', 'Dr. Raji George', 'Male', 'null', 'null', 'null', 'null', '0000-00-00', 'Regular', '9845318047', 'rgeorgemsrit@rediffmail.com', 'rit', 'null', 'null', 'null', 'Dr. Raji George is a Professor and Head in the Mechanical Engineering Department of RIT. His areas of interests include subjects like Nano Technology, Mechanics of Materials, design and Finite element methods', 'PROFESSOR', 'me'),
('me02', 'Dr. N. D. Prasanna', 'Male', 'null', 'null', 'null', 'null', '0000-00-00', 'Regular', '9900864304', 'nd.prasanna47@gmail.com', 'rit', 'null', 'null', 'null', 'Dr. N. D. Prasanna is a Professor in the Mechanical Engineering Department of RIT. His areas of interests include subjects like Production and Characterization of ADI', 'PROFESSOR', 'me'),
('me03', 'Dr. P. Dinesh', 'Male', 'null', 'null', 'null', 'null', '0000-00-00', 'Regular', '9242259629', 'pdineshmech@msrit.edu', 'rit', 'null', 'null', 'null', 'Dr. P. Dinesh is a Professor in the Mechanical Engineering Department of RIT. His areas of interests include subjects like Machine Design, Finite Element Method, Manufacture Engineering, Material Characterization and Vibration.', 'PROFESSOR', 'me'),
('me04', 'Dr. Putta Bore Gowda B.', 'Male', 'null', 'null', 'null', 'null', '0000-00-00', 'Regular', '9611649803', 'pbgowda@msrit.edu', 'rit', 'null', 'null', 'null', 'Dr. Putta Bore Gowda B. is a Professor in the Mechanical Engineering Department of RIT. His areas of interests include subjects like Thermal Engineering, Solar Energy', 'PROFESSOR', 'me');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_conference_symposia`
--

CREATE TABLE `faculty_conference_symposia` (
  `slNo` int(11) NOT NULL,
  `eventName` varchar(100) NOT NULL,
  `place` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `invitedOrDeputed` varchar(20) NOT NULL,
  `noOfPapersPresented` int(11) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_conference_symposia`
--

INSERT INTO `faculty_conference_symposia` (`slNo`, `eventName`, `place`, `date`, `invitedOrDeputed`, `noOfPapersPresented`, `facultyId`) VALUES
(1, 'Driving Big Data with Hadoop Technologies', 'Dept of MCA, MSRIT', '2014-08-21', 'null', 0, 'cse27'),
(2, 'IEEE Event on Software Engineering in Industry', 'RVCE, Bengaluru', '2016-01-23', 'null', 0, 'cse27'),
(3, 'Staff development program on Desktop and cloud based office utilities', 'Dept of CSE, MSRIT', '2017-01-19', 'null', 0, 'cse27'),
(4, 'Advances and Research challenges in the Applications of Artificial Intelligence in Gaming, Medical I', 'Dept of CSE, MSRIT', '2016-07-18', 'null', 0, 'cse27'),
(5, 'One of the resource person in “Advances and Research Challenges in the Applications of Artificial In', 'MSRIT, Bangalore.', '2016-07-18', 'null', 0, 'cse07'),
(6, 'The 1st International Workshop on Recommendation systems supported Teaching and Learning Environment', 'IIT Bombay, India', '2016-11-28', 'null', 0, 'cse08'),
(7, '“Educational data mining using R and Python” , The 8th IEEE International Conference on Technology f', 'Indian Institute of Technology, Bombay, Mumbai', '2016-12-02', 'null', 0, 'cse08'),
(8, 'Delivered Expert talk and shown demo to MTech students  “Data lake and Data Analytics “', 'RV college of Engineering, Bangalore', '2016-12-19', 'null', 0, 'cse08'),
(9, 'IoT& Cyber Security using Watson &Bluemix“', 'MSRIT, Bangalore.', '2017-01-09', 'null', 0, 'cse08'),
(10, 'Best practices in Outcome Based Education- case study based approach', 'RYMCE, Ballari College of engineering', '2017-08-11', 'null', 0, 'cse02'),
(11, 'Tutorial conduction on Recommendation systems using Data mining techniques for Educational Domain in', 'Reva University,Bangalore', '2017-08-17', 'null', 0, 'cse08'),
(12, 'Driving Big Data with Hadoop Technologies', 'Dept of MCA, MSRIT', '2014-08-22', 'null', 0, 'cse27'),
(13, 'Staff development program on Desktop and cloud based office utilities', 'Dept of CSE, MSRIT', '2017-01-20', 'null', 0, 'cse27'),
(14, 'Advances and Research challenges in the Applications of Artificial Intelligence in Gaming, Medical I', 'Dept of CSE, MSRIT', '2016-07-19', 'null', 0, 'cse27'),
(15, 'The 1st International Workshop on Recommendation systems supported Teaching and Learning Environment', 'IIT Bombay, India', '2016-11-29', 'null', 0, 'cse08'),
(16, '“Educational data mining using R and Python” , The 8th IEEE International Conference on Technology f', 'Indian Institute of Technology, Bombay, Mumbai', '2016-12-03', 'null', 0, 'cse08'),
(17, 'IoT& Cyber Security using Watson &Bluemix“', 'MSRIT, Bangalore.', '2017-01-10', 'null', 0, 'cse08'),
(18, 'Tutorial conduction on Recommendation systems using Data mining techniques for Educational Domain in', 'Reva University,Bangalore', '2017-08-18', 'null', 0, 'cse08'),
(19, 'Driving Big Data with Hadoop Technologies', 'Dept of MCA, MSRIT', '2014-08-21', 'null', 0, 'ise01'),
(20, 'IEEE Event on Software Engineering in Industry', 'RVCE, Bengaluru', '2016-01-23', 'null', 0, 'ise02'),
(21, 'Staff development program on Desktop and cloud based office utilities', 'Dept of CSE, MSRIT', '2017-01-19', 'null', 0, 'ise03'),
(22, 'Advances and Research challenges in the Applications of Artificial Intelligence in Gaming, Medical I', 'Dept of CSE, MSRIT', '2016-07-18', 'null', 0, 'ise04'),
(23, 'One of the resource person in “Advances and Research Challenges in the Applications of Artificial In', 'MSRIT, Bangalore.', '2016-07-18', 'null', 0, 'ece01'),
(24, 'The 1st International Workshop on Recommendation systems supported Teaching and Learning Environment', 'IIT Bombay, India', '2016-11-28', 'null', 0, 'ece02'),
(25, '“Educational data mining using R and Python” , The 8th IEEE International Conference on Technology f', 'Indian Institute of Technology, Bombay, Mumbai', '2016-12-02', 'null', 0, 'ece03'),
(26, 'Delivered Expert talk and shown demo to MTech students  “Data lake and Data Analytics “', 'RV college of Engineering, Bangalore', '2016-12-19', 'null', 0, 'ece04'),
(27, 'IoT& Cyber Security using Watson &Bluemix“', 'MSRIT, Bangalore.', '2017-01-09', 'null', 0, 'me01'),
(28, 'Best practices in Outcome Based Education- case study based approach', 'RYMCE, Ballari College of engineering', '2017-08-11', 'null', 0, 'me02'),
(29, 'Tutorial conduction on Recommendation systems using Data mining techniques for Educational Domain in', 'Reva University,Bangalore', '2017-08-17', 'null', 0, 'me03'),
(30, 'Driving Big Data with Hadoop Technologies', 'Dept of MCA, MSRIT', '2014-08-22', 'null', 0, 'me04'),
(31, 'Staff development program on Desktop and cloud based office utilities', 'Dept of CSE, MSRIT', '2017-01-20', 'null', 0, 'cv01'),
(32, 'Advances and Research challenges in the Applications of Artificial Intelligence in Gaming, Medical I', 'Dept of CSE, MSRIT', '2016-07-19', 'null', 0, 'cv02'),
(33, 'The 1st International Workshop on Recommendation systems supported Teaching and Learning Environment', 'IIT Bombay, India', '2016-11-29', 'null', 0, 'cv03'),
(34, '“Educational data mining using R and Python” , The 8th IEEE International Conference on Technology f', 'Indian Institute of Technology, Bombay, Mumbai', '2016-12-03', 'null', 0, 'cv04'),
(35, 'IoT& Cyber Security using Watson &Bluemix“', 'MSRIT, Bangalore.', '2017-01-10', 'null', 0, 'iem01'),
(36, 'Tutorial conduction on Recommendation systems using Data mining techniques for Educational Domain in', 'Reva University,Bangalore', '2017-08-18', 'null', 0, 'iem02');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_guest_lecture`
--

CREATE TABLE `faculty_guest_lecture` (
  `slNo` int(11) NOT NULL,
  `placeInvited` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_guest_lecture`
--

INSERT INTO `faculty_guest_lecture` (`slNo`, `placeInvited`, `title`, `date`, `facultyId`) VALUES
(1, 'RIT, Bangalore', 'Vocational Course on “Advanced Java Programming”', '2013-01-07', 'cse21'),
(2, 'MSRIT Bangalore', 'Python Programming  for 5 weeks', '2013-01-07', 'cse10'),
(3, 'MSRIT', 'Takeaways of T4E IEEE conference, OBE national seminar to CSE Department Teaching Faculties', '2015-01-01', 'cse08'),
(4, 'PMU, Thanjavur', 'TCP/IP in for MCA students', '2015-01-05', 'cse08'),
(5, 'RIT, Bangalore', 'Vocational Course on “Java Programming”', '2014-01-07', 'cse21'),
(6, 'MSRIT Bangalore', 'Python Programming  for 5 weeks', '2014-01-07', 'cse10'),
(7, 'IEEE RVCE Software Engineering Chapter', 'Talk  on “Agile Methodology”,  ', '2016-01-01', 'cse02'),
(8, 'First National   Conference/Workshop on Enhancing Information Technology Education (EITE), NIT Goa.', 'Talk on “Artificial Intelligence and Cognitive Computing: The next Big Revolution in Information Tec', '2016-01-01', 'cse02'),
(9, 'RIT, Bangalore', 'Vocational Course on “Android Application Development”', '2015-01-07', 'cse21'),
(10, 'Dept of CSE, MSRIT', 'Python Programming (Vocational course)', '2015-01-06', 'cse27'),
(11, 'Dept of CSE, MSRIT', 'Web Application development (Vocational course)', '2015-01-06', 'cse27'),
(12, 'BMSIT, Bengaluru', 'Setting up CUDA', '2016-01-01', 'cse27'),
(13, 'MSRIT Bangalore', 'Python Programming  and Advanced Java Programming', '2015-01-07', 'cse10'),
(14, 'MSRIT Bangalore', 'Advanced Java Programming', '2015-01-07', 'cse20'),
(15, 'Conference on recent trends in 4G/5G wireless mobile communication: Dept. of EC, MSRIT', 'Talk on\" Protocol Engineering: From Specification, to Design to Implementation \".', '2016-01-07', 'cse02'),
(16, 'RIT, Bangalore', 'Internet of Things', '2016-01-10', 'cse28'),
(17, 'RIT, Bangalore', 'Python Programming', '2017-01-07', 'cse28'),
(18, 'AIET, Moodbidri', 'Python Programming', '2016-01-08', 'cse28'),
(19, 'RIT, Bangalore', 'Desktop and cloud based utilities', '2017-01-01', 'cse28'),
(20, 'RIT, Bangalore', 'Internet of Things', '2017-01-05', 'cse28'),
(21, 'RIT, Bangalore', 'Vocational Course on “Android Application Development”', '2017-01-07', 'cse21'),
(22, 'RIT, Bangalore', 'Desktop and cloud based utilities', '2017-01-01', 'cse21'),
(23, 'RIT, Bangalore', 'Advances and Research Challenges in the Applications of Artificial Intelligence in Gaming, Medical I', '2017-01-07', 'cse21'),
(24, 'Alva’s Institute of of Engineering and Technology, Moodbidri', 'Python Programming', '2016-01-08', 'cse27'),
(25, 'MSRIT,  Bangalore', 'Advanced Java Programming for 5 weeks', '2016-01-07', 'cse10'),
(26, 'MSRIT', 'Three Days SDP on “Desktop and Cloud Based Office Utilities”', '2017-01-01', 'cse25'),
(27, 'R V College of Engineering, Bangalore', ' IEEE CS Chapter expert talk on Data Lake', '2016-01-12', 'cse03'),
(28, 'RIT, Bangalore', 'Advances and Research Challenges in the Applications of Artificial Intelligence in Gaming, Medical I', '2016-01-07', 'cse14'),
(29, 'MSRIT,Bangalore', 'Web application', '2016-01-07', 'cse29'),
(30, 'Dept of CSE, MSRIT', 'Python Programming (Vocational course)', '2017-01-07', 'cse27'),
(31, 'MSRIT,  Bangalore', 'Advanced Java Programming for 5 weeks', '2017-01-07', 'cse10'),
(32, 'Conference on “Challenges and Opportunities in Industry 4.0: Manufacturing and operations in smart f', 'Fundamentals of Internet of Things (IoT)', '2017-01-07', 'cse02'),
(33, 'ACM Women in Research (ISDB-ACM-WIR 2018) SAIT, Indore, MP, India.', 'Applying Machine Learning techniques for Big Data Analytics', '2018-01-01', 'cse02'),
(34, 'MSRIT,Bangalore', 'Data Science course , Vocational Course', '2017-01-07', 'cse08'),
(35, 'MSRIT,Bangalore', 'Web application', '2017-01-07', 'cse29'),
(36, 'MSRIT,Bangalore', 'Data Science course , Vocational Course', '2017-01-07', 'cse24'),
(37, 'RIT, Bangalore', 'Vocational Course on “Android Application Development”', '2017-01-07', 'cse23'),
(38, 'RIT, Bangalore', 'Web application', '2017-01-07', 'cse25'),
(39, 'null', 'Python Programming', '2017-01-11', 'cse28'),
(40, 'CMRIT, Bangalore', 'FDP on “Wireless Networks and IoT”', '2018-01-01', 'cse30'),
(41, 'MSRIT, Bangalore', 'Web application', '2016-01-07', 'cse29'),
(42, 'RIT, Bangalore', 'Vocational Course on “Advanced Java Programming”', '2013-01-07', 'ise01'),
(43, 'MSRIT Bangalore', 'Python Programming  for 5 weeks', '2013-01-07', 'me03'),
(44, 'MSRIT', 'Takeaways of T4E IEEE conference, OBE national seminar to CSE Department Teaching Faculties', '2015-01-01', 'iem02'),
(45, 'PMU, Thanjavur', 'TCP/IP in for MCA students', '2015-01-05', 'me01'),
(46, 'RIT, Bangalore', 'Vocational Course on “Java Programming”', '2014-01-07', 'me02'),
(47, 'MSRIT Bangalore', 'Python Programming  for 5 weeks', '2014-01-07', 'cv03'),
(48, 'IEEE RVCE Software Engineering Chapter', 'Talk  on “Agile Methodology”,  ', '2016-01-01', 'me04'),
(49, 'First National   Conference/Workshop on Enhancing Information Technology Education (EITE), NIT Goa.', 'Talk on “Artificial Intelligence and Cognitive Computing: The next Big Revolution in Information Tec', '2016-01-01', 'me02'),
(50, 'RIT, Bangalore', 'Vocational Course on “Android Application Development”', '2015-01-07', 'cv02'),
(51, 'Dept of CSE, MSRIT', 'Python Programming (Vocational course)', '2015-01-06', 'ise03'),
(52, 'Dept of CSE, MSRIT', 'Web Application development (Vocational course)', '2015-01-06', 'ise04'),
(53, 'BMSIT, Bengaluru', 'Setting up CUDA', '2016-01-01', 'cv03'),
(54, 'MSRIT Bangalore', 'Python Programming  and Advanced Java Programming', '2015-01-07', 'cv04'),
(55, 'MSRIT Bangalore', 'Advanced Java Programming', '2015-01-07', 'ece01'),
(56, 'Conference on recent trends in 4G/5G wireless mobile communication: Dept. of EC, MSRIT', 'Talk on\" Protocol Engineering: From Specification, to Design to Implementation \".', '2016-01-07', 'ece02'),
(57, 'RIT, Bangalore', 'Internet of Things', '2016-01-10', 'ece03'),
(58, 'RIT, Bangalore', 'Python Programming', '2017-01-07', 'cv01'),
(59, 'AIET, Moodbidri', 'Python Programming', '2016-01-08', 'ise01'),
(60, 'RIT, Bangalore', 'Desktop and cloud based utilities', '2017-01-01', 'ise03'),
(61, 'RIT, Bangalore', 'Internet of Things', '2017-01-05', 'ise04'),
(62, 'RIT, Bangalore', 'Vocational Course on “Android Application Development”', '2017-01-07', 'ise02'),
(63, 'RIT, Bangalore', 'Desktop and cloud based utilities', '2017-01-01', 'me01'),
(64, 'RIT, Bangalore', 'Advances and Research Challenges in the Applications of Artificial Intelligence in Gaming, Medical I', '2017-01-07', 'me03'),
(65, 'Alva’s Institute of of Engineering and Technology, Moodbidri', 'Python Programming', '2016-01-08', 'me04'),
(66, 'MSRIT,  Bangalore', 'Advanced Java Programming for 5 weeks', '2016-01-07', 'ise03'),
(67, 'MSRIT', 'Three Days SDP on “Desktop and Cloud Based Office Utilities”', '2017-01-01', 'ise02'),
(68, 'R V College of Engineering, Bangalore', ' IEEE CS Chapter expert talk on Data Lake', '2016-01-12', 'ece02'),
(69, 'RIT, Bangalore', 'Advances and Research Challenges in the Applications of Artificial Intelligence in Gaming, Medical I', '2016-01-07', 'ece04'),
(70, 'MSRIT,Bangalore', 'Web application', '2016-01-07', 'ece01'),
(71, 'Dept of CSE, MSRIT', 'Python Programming (Vocational course)', '2017-01-07', 'ece03'),
(72, 'MSRIT,  Bangalore', 'Advanced Java Programming for 5 weeks', '2017-01-07', 'iem01'),
(73, 'Conference on “Challenges and Opportunities in Industry 4.0: Manufacturing and operations in smart f', 'Fundamentals of Internet of Things (IoT)', '2017-01-07', 'iem02'),
(74, 'ACM Women in Research (ISDB-ACM-WIR 2018) SAIT, Indore, MP, India.', 'Applying Machine Learning techniques for Big Data Analytics', '2018-01-01', 'iem04'),
(75, 'MSRIT,Bangalore', 'Data Science course , Vocational Course', '2017-01-07', 'iem03'),
(76, 'MSRIT,Bangalore', 'Web application', '2017-01-07', 'iem02'),
(77, 'MSRIT,Bangalore', 'Data Science course , Vocational Course', '2017-01-07', 'iem04'),
(78, 'RIT, Bangalore', 'Vocational Course on “Android Application Development”', '2017-01-07', 'iem03'),
(79, 'RIT, Bangalore', 'Web application', '2017-01-07', 'iem01'),
(80, 'null', 'Python Programming', '2017-01-11', 'cv02'),
(81, 'CMRIT, Bangalore', 'FDP on “Wireless Networks and IoT”', '2018-01-01', 'cv04'),
(82, 'MSRIT, Bangalore', 'Web application', '2016-01-07', 'cv01');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_patent`
--

CREATE TABLE `faculty_patent` (
  `slNo` int(11) NOT NULL,
  `patentTitle` varchar(100) NOT NULL,
  `applicationNumber` varchar(20) NOT NULL,
  `dateOfFilingApplication` date NOT NULL,
  `publicationDate` date NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_patent`
--

INSERT INTO `faculty_patent` (`slNo`, `patentTitle`, `applicationNumber`, `dateOfFilingApplication`, `publicationDate`, `facultyId`) VALUES
(1, 'Sensor integrated cloud based internet of things (IOT) ', '2271/CHE/2014', '2014-05-00', '0000-00-00', 'cse33'),
(2, 'Anonymity for privacy preserving data ', '2696/CHE/2015', '2015-00-00', '0000-00-00', 'cse22');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_qualification`
--

CREATE TABLE `faculty_qualification` (
  `slNo` int(11) NOT NULL,
  `degree` varchar(10) NOT NULL,
  `university` varchar(100) NOT NULL,
  `passClass` varchar(10) NOT NULL,
  `passYear` varchar(10) NOT NULL,
  `areaOfSpecialization` varchar(100) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_qualification`
--

INSERT INTO `faculty_qualification` (`slNo`, `degree`, `university`, `passClass`, `passYear`, `areaOfSpecialization`, `facultyId`) VALUES
(1, 'BE', 'Karnatak University', 'FCD', '1988', 'ECE', 'cse01'),
(2, 'BE', 'Gulbarga', 'FCD', '1994', 'CSE', 'cse02'),
(3, 'BE', 'BU', 'FCD', '2001', 'CSE', 'cse29'),
(4, 'BE', 'vtu', 'FC', '2003', 'CSE', 'cse19'),
(5, 'BE', 'vtu', 'FC', '2009', 'ISE', 'cse24'),
(6, 'BE', 'vtu', 'FCD', '2005', 'CSE', 'cse13'),
(7, 'BE', 'vtu', 'FC', '2009', 'CSE', 'cse26'),
(8, 'BE', 'Karnatak University', 'FCD', '1986', 'CSE', 'cse18'),
(9, 'BE', 'vtu', 'FC', '2010', 'CSE', 'cse25'),
(10, 'BE', 'BU', 'FCD', '2001', 'CSE', 'cse10'),
(11, 'BE', 'vtu', 'FCD', '2010', 'CSE', 'cse28'),
(12, 'BE', 'Karnatak University', 'FCD', '1999', 'CSE', 'cse04'),
(13, 'BE', 'Mysore', 'FCD', '1988', 'CSE', 'cse05'),
(14, 'BE', 'Mysore', 'FCD', '1988', 'CSE', 'cse11'),
(15, 'BE', 'vtu', 'FCD', '2005', 'CSE', 'cse17'),
(16, 'BE', 'BU', 'FCD', '1996', 'CSE', 'cse12'),
(17, 'BE', 'Gulbarga', 'FC', '2006', 'CSE', 'cse16'),
(18, 'BE', 'Gulbarga', 'FCD', '1996', 'CSE', 'cse06'),
(19, 'BE', 'Mysore', 'FCD', '1984', 'ECE', 'cse33'),
(20, 'BE', 'Trichy', 'FC', '2001', 'CSE', 'cse08'),
(21, 'BE', 'vtu', 'FCD', '2009', 'CSE', 'cse23'),
(22, 'BE', 'VTU', 'FCD', '2006', 'CSE', 'cse21'),
(23, 'BE', 'TN', 'FCD', '1998', 'CSE', 'cse20'),
(24, 'BSc', 'Madhurai', 'FCD', '1974', 'Mathematics, Computer Science', 'cse32'),
(25, 'BE', 'VTU', 'FC', '2002', 'CSE', 'cse07'),
(26, 'BE', 'Gulbarga', 'FCD', '1991', 'CSE', 'cse03'),
(27, 'BE', 'North Maharashtra University', 'FCD', '1998', 'CSE', 'cse30'),
(28, 'BTECH', 'Kerala', 'FC', '2004', 'CSE', 'cse14'),
(29, 'BE', 'vtu', 'FCD', '2008', 'CSE', 'cse22'),
(30, 'BE', 'vtu', 'FCD', '2011', 'CSE', 'cse27'),
(31, 'BE', 'Pune', 'FCD', '2000', 'CSE', 'cse15'),
(32, 'BE', 'Kuvempu', 'FCD', '1994', 'CSE', 'cse09'),
(33, 'ME', 'Karnatak University', 'FCD', '1995', 'Computer networks', 'cse01'),
(34, 'MTECH', 'VTU', 'FCD', '2001', 'CSE', 'cse02'),
(35, 'MTECH', 'NITK, Surathkal', 'FCD', '2007', 'COMPUTER SCIENCE AND ENGINEERI', 'cse29'),
(36, 'MTECH', 'vtu', 'FC', '2007', 'CSE', 'cse19'),
(37, 'MTECH', 'vtu', 'FCD', '2012', 'COMPUTER SCIENCE', 'cse24'),
(38, 'M TECH', 'vtu', 'FCD', '2011', 'BMSPI', 'cse26'),
(39, 'ME', 'Karnatak University', 'FCD', '1998', 'CSE', 'cse18'),
(40, 'M TECH', 'vtu', 'FCD', '2012', 'COMPUTER SCIENCE', 'cse25'),
(41, 'MTECH', 'JNTU,HYD', 'FCD', '2007', 'Computer Science &ENgg', 'cse10'),
(42, 'MTECH', 'vtu', 'FCD', '2013', 'Computer science and engineering', 'cse28'),
(43, 'MTECH', 'vtu', 'FCD', '2004', 'Artificial Intelligence, Information retrieval, Text Summarization', 'cse04'),
(44, 'MSC(Engg) ', 'vtu', 'FCD', '2008', 'CSE', 'cse05'),
(45, 'MTECH', 'Mysore', 'FCD', '1995', 'COMPUTER SCIENCE AND ENGG', 'cse11'),
(46, 'MTECH', 'vtu', 'FCD', '2009', 'COMPUTER SCIENCE AND ENGG', 'cse17'),
(47, 'MTECH', 'vtu', 'FCD', '2006', 'CSE', 'cse12'),
(48, 'MTECH', 'vtu', 'FCD', '2010', 'CSE', 'cse16'),
(49, 'MTECH', 'vtu', 'FCD', '2003', 'Computer Science & Engineering', 'cse06'),
(50, 'MTECH', 'IIT, Mumbai', 'FCD', '1987', 'CSE', 'cse33'),
(51, 'ME', 'Trichy', 'FC', '2005', 'Data Analytics', 'cse08'),
(52, 'M TECH', 'vtu', 'FCD', '2011', 'SOFTWARE ENGG', 'cse23'),
(53, 'MTECH', 'VTU', 'FCD', '2011', 'COMPUTER SCIENCE', 'cse21'),
(54, 'ME', 'TN', 'FCD', '2005', 'CSE', 'cse20'),
(55, 'MSc', 'madhurai', 'FCD', '1976', 'Mathematics, Space Dynamics', 'cse32'),
(56, 'MTECH', 'MGR', 'Honours', '2007', 'Computer Science & Engineering', 'cse07'),
(57, 'MS', 'BITS Pilani', 'FCD', '1996', 'Data Mining', 'cse03'),
(58, 'MTECH', 'Pune', 'FCD', '2003', 'Electronics(Computer)', 'cse30'),
(59, 'ME', 'Anna University', 'FCD', '2006', 'COMPUTER SCIENCE & ENGINEERING', 'cse14'),
(60, 'MTECH', 'vtu', 'FCD', '2013', 'SOFTWARE ENGG', 'cse22'),
(61, 'MTECH', 'vtu', 'FCD', '2013', 'SOFTWARE ENGG\r\n', 'cse27'),
(62, 'ME', 'Pune', 'FCD', '2008', 'COMPUTER ENGINEERING', 'cse15'),
(63, 'MTECH', 'vtu', 'FCD', '1998', 'Image Processing', 'cse09'),
(64, 'PhD', 'BU', 'null', '2013', 'Computer networks', 'cse01'),
(65, 'PhD', 'VTU', 'null', '2014', 'CSE', 'cse02'),
(66, 'PhD', 'VTU', 'null', 'Pursuing', 'CSE', 'cse26'),
(67, 'PhD', 'JJ University, Rajasthan', 'null', '2017', 'CSE', 'cse18'),
(68, 'PhD', 'JNTU', 'null', '2015', 'Artificial Intelligence, Information retrieval, Text Summarization', 'cse04'),
(69, 'PhD', 'VELS', 'null', '2014', 'COMPUTER SCIENCE AND ENGG', 'cse11'),
(70, 'PhD', 'Dr MGR Educational and Research Institute', 'null', '2014', 'Wireless sensor networks', 'cse06'),
(71, 'null', 'IIT Bombay', 'null', 'null', 'software engineering', 'cse33'),
(72, 'PhD', 'MSU', 'null', 'null', 'Cloud Computing', 'cse20'),
(73, 'PhD', 'MGR', 'null', '2014', 'Software Architecture', 'cse32'),
(74, 'PhD', 'VTU', 'null', '2014', 'Data Mining', 'cse03'),
(75, 'PhD', 'VTU', 'null', '2017', 'Routing in Mobile Ad-hoc Network', 'cse30');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_research`
--

CREATE TABLE `faculty_research` (
  `slNo` int(11) NOT NULL,
  `guideName` varchar(50) NOT NULL,
  `researchCandidateName` varchar(50) NOT NULL,
  `usn` varchar(30) NOT NULL,
  `centreName` varchar(50) NOT NULL,
  `university` varchar(30) NOT NULL,
  `registrationYear` varchar(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `status` varchar(30) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_research`
--

INSERT INTO `faculty_research` (`slNo`, `guideName`, `researchCandidateName`, `usn`, `centreName`, `university`, `registrationYear`, `title`, `status`, `facultyId`) VALUES
(1, 'null', 'Sanjeetha. R', 'null', 'null', 'null', '2015', 'Design and Development of Efficient Algorithms for', 'Completed 2 subjects of Course', 'cse07'),
(2, 'Dr.Anita Kanavalli', 'Pradeep Kumar D', 'null', 'null', 'null', '2015', 'Insightful data analytics on big data using effici', 'Completed 2 subjects of Course', 'cse23'),
(3, 'Dr. Seema S', 'SOWMYA B J', 'null', 'null', 'null', '2015', 'Cryptographically secured Data Mining', 'Completed 2 subjects of Course', 'cse22'),
(4, 'Dr. Anita Kanavalli', 'Pramod Sunagar', 'null', 'null', 'null', '2014', 'Design and Development of Efficient Big Data Analy', 'Completed the Course Work', 'cse21'),
(5, 'Dr. Anita Kanavalli', 'Sini Anna Alex', 'null', 'null', 'null', '2013', 'Modeling Context Information in Pervasive Computin', 'COMPLETED Course Work of all s', 'cse14'),
(6, ' Dr. Jagadish S. Kallimani', 'Chandrika C. P', 'null', 'null', 'null', '2017', 'Development and analysis of real-time computationa', 'null', 'cse19'),
(7, 'Dr Seema S', 'Darshana A Naik', 'null', 'null', 'null', '2015', 'Leveraging  Data Mining Technique in analyzing and', 'Completed 2 subjects of Course', 'cse26'),
(8, 'Dr. Monica R Mundada', 'Meeradevi A Kawalgi', 'null', 'null', 'null', '2016', 'Design and Implimentation of Algorithms for better', 'null', 'cse16'),
(9, 'Dr. Anita Kanavalli', 'Mallegowda M', 'null', 'null', 'null', '2015', 'Energy efficient Service Oriented Architeture base', 'Completed 3 papers', 'cse17');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_service`
--

CREATE TABLE `faculty_service` (
  `slNo` int(11) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `qualification` varchar(10) NOT NULL,
  `joiningDate` date NOT NULL,
  `yearsOfExperience` int(11) NOT NULL,
  `promotionDate` date NOT NULL,
  `payScale` varchar(20) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_service`
--

INSERT INTO `faculty_service` (`slNo`, `designation`, `qualification`, `joiningDate`, `yearsOfExperience`, `promotionDate`, `payScale`, `facultyId`) VALUES
(1, 'PROFESSOR', 'Ph.D', '1995-03-14', 2, '0000-00-00', '6th Pay', 'cse01'),
(2, 'PROFESSOR', 'Ph.D', '1998-04-16', 24, '0001-00-00', '6th Pay', 'cse02'),
(3, 'PROFESSOR', 'Ph.D', '1995-10-31', 24, '0002-00-00', '6th Pay', 'cse03'),
(4, 'ASSOCIATE PROFESSOR', 'Ph.D', '1999-12-17', 17, '0003-00-00', '6th Pay', 'cse04'),
(5, 'ASSOCIATE PROFESSOR', 'M.SC.(Engg', '2002-08-30', 22, '0004-00-00', '6th Pay', 'cse05'),
(6, 'ASSOCIATE PROFESSOR', 'Ph.D', '2000-04-18', 18, '0005-00-00', '6th Pay', 'cse06'),
(7, 'ASST PROFESSOR', '(Ph.D)', '2005-08-16', 14, '0006-00-00', '6th Pay', 'cse07'),
(8, 'ASST PROFESSOR', '(Ph.D)', '2005-08-17', 13, '0007-00-00', '6th Pay', 'cse08'),
(9, 'ASST PROFESSOR', '(Ph.D)', '2005-08-18', 15, '0008-00-00', '6th Pay', 'cse09'),
(10, 'ASST PROFESSOR', '(Ph.D)', '2006-02-27', 12, '0009-00-00', '6th Pay', 'cse10'),
(11, 'ASST PROFESSOR', 'Ph.D', '2006-08-01', 11, '0010-00-00', '6th Pay', 'cse11'),
(12, 'ASST PROFESSOR', 'M.TECH', '2007-08-08', 18, '0011-00-00', '6th Pay', 'cse12'),
(13, 'ASST PROFESSOR', 'B.E', '2007-09-24', 8, '0012-00-00', '6th Pay', 'cse13'),
(14, 'ASST PROFESSOR', '(Ph.D)', '2008-02-27', 10, '0013-00-00', '6th Pay', 'cse14'),
(15, 'ASST PROFESSOR', 'M.E', '2009-08-14', 14, '0014-00-00', '6th Pay', 'cse15'),
(16, 'ASST PROFESSOR', '(Ph.D)', '2009-08-17', 2, '0015-00-00', '6th Pay', 'cse16'),
(17, 'ASST PROFESSOR', '(Ph.D)', '2009-09-23', 8, '0016-00-00', '6th Pay', 'cse17'),
(18, 'ASST PROFESSOR', 'Ph.D', '2010-02-07', 13, '0017-00-00', '6th Pay', 'cse18'),
(19, 'ASST PROFESSOR', '(Ph.D)', '2010-07-15', 9, '0018-00-00', '6th Pay', 'cse19'),
(20, 'ASST PROFESSOR', '(Ph.D)', '2010-09-08', 18, '0019-00-00', '6th Pay', 'cse20'),
(21, 'ASST PROFESSOR', '(Ph.D)', '2012-10-09', 6, '0020-00-00', '6th Pay', 'cse21'),
(22, 'ASST PROFESSOR', '(Ph.D)', '2013-08-08', 6, '0021-00-00', '6th Pay', 'cse22'),
(23, 'ASST PROFESSOR', '(Ph.D)', '2014-04-08', 4, '0022-00-00', '6th Pay', 'cse23'),
(24, 'ASST PROFESSOR', '(Ph.D)', '2014-04-08', 4, '0023-00-00', '6th Pay', 'cse24'),
(25, 'ASST PROFESSOR', '(Ph.D)', '2014-04-08', 4, '0024-00-00', '6th Pay', 'cse25'),
(26, 'ASST PROFESSOR', '(Ph.D)', '2014-04-08', 3, '0025-00-00', '6th Pay', 'cse26'),
(27, 'ASST PROFESSOR', '(Ph.D)', '2014-11-08', 3, '0026-00-00', '6th Pay', 'cse27'),
(28, 'Assistant Professor', 'M.TECH', '2015-12-08', 3, '0027-00-00', '6th Pay', 'cse28'),
(29, 'Assistant Professor', 'M.TECH', '2015-08-13', 9, '0028-00-00', '6th Pay', 'cse29'),
(30, 'Associate Professor', 'PhD', '2017-08-08', 13, '0029-00-00', '6th Pay', 'cse30'),
(31, 'PROFESSOR, R&D Head', 'PhD', '2016-07-26', 15, '0030-00-00', '6th Pay', 'cse31'),
(32, 'PROFESSOR', 'PhD', '2014-11-08', 3, '0031-00-00', '6th Pay', 'cse32'),
(33, 'Associate Professor', 'M.Tech', '2015-02-28', 4, '0032-00-00', 'Consolidated', 'cse33');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_workshop_fdp`
--

CREATE TABLE `faculty_workshop_fdp` (
  `slNo` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `sponsoredOrFunded` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `noOfParticipants` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_workshop_fdp`
--

INSERT INTO `faculty_workshop_fdp` (`slNo`, `title`, `sponsoredOrFunded`, `date`, `noOfParticipants`, `type`, `facultyId`) VALUES
(1, 'Workshop on Maple Soft An Introduction', 'null', '2017-09-15', 1, 'null', 'cse01'),
(2, 'Cyber-Physical Systems Symposium (CyPhySS)', 'null', '2017-07-19', 1, 'null', 'cse05'),
(3, 'Distributed and cognitive technologies, business and security', 'null', '2017-07-24', 1, 'null', 'cse05'),
(4, 'Cloud Computing With Amazon Web Services', 'null', '2017-07-31', 1, 'null', 'cse05'),
(5, 'Distributed and cognitive technologies, business and security', 'null', '2017-07-24', 1, 'null', 'cse06'),
(6, 'Distributed and cognitive technologies, business and security', 'null', '2017-07-24', 1, 'null', 'cse14'),
(7, 'Distributed and cognitive technologies, business and security', 'null', '2017-07-24', 1, 'null', 'cse19'),
(8, 'Machine learning techniques and advances for cognitive computing', 'null', '2017-07-31', 1, 'null', 'cse19'),
(9, 'AWS educate', 'null', '2017-07-31', 1, 'null', 'cse13'),
(10, 'Distributed and cognitive technologies, business and security', 'null', '2017-07-24', 1, 'null', 'cse13'),
(11, 'Entrepreneurship Educator Program from Wadhwani Foundation', 'null', '2017-11-23', 1, 'null', 'cse13'),
(12, 'Teaching techniques and Learning management System using ICT tools', 'null', '2018-01-16', 1, 'null', 'cse26'),
(13, 'Workshop on “Research Methodology” ', 'null', '2017-07-17', 1, 'null', 'cse26'),
(14, 'Workshop on “Role of Statistics in Scientific Research”', 'null', '2018-01-04', 1, 'null', 'cse26'),
(15, 'Cyber-Physical Systems Symposium (CyPhySS)', 'null', '2017-07-19', 1, 'null', 'cse29'),
(16, 'Distributed and Cognitive Technologies, Business and Security', 'null', '2017-07-24', 1, 'null', 'cse29'),
(17, 'Cloud Computing With Amazon Web Services', 'null', '2017-07-31', 1, 'null', 'cse29'),
(18, 'Android developer fundamentals faculty training ', 'null', '2017-12-18', 1, 'null', 'cse23'),
(19, 'Teaching techniques and Management systems using ICT tools', 'null', '2018-01-16', 1, 'null', 'cse23'),
(20, 'One week FDP on “Cloud based IOT Programming” ', 'null', '2018-01-16', 1, 'null', 'cse25'),
(21, 'Cyber-Physical Systems Symposium', 'null', '2017-07-19', 1, 'null', 'cse25'),
(22, 'One Week FDP on “Cloud Computing with AWS”', 'null', '2018-02-15', 1, 'null', 'cse25'),
(23, 'oneM2M Developers Tutorial ', 'null', '2013-08-22', 1, 'null', 'cse25'),
(24, 'International Conference on Advances in Computing, Communications and Informatics (ICACCI-2013)', 'null', '2013-08-22', 1, 'null', 'cse25'),
(25, 'AWS Educate ', 'null', '2017-07-31', 1, 'null', 'cse18'),
(26, 'Machine learning techniques and advances for cognitive computing ', 'null', '2017-07-31', 1, 'null', 'cse18'),
(27, 'Distributed and cognitive Technologies , Business and security ', 'null', '2017-07-24', 1, 'null', 'cse18'),
(28, 'AWS educate', 'null', '2017-07-31', 1, 'null', 'cse17'),
(29, 'Distributed and cognitive technologies, business and security', 'null', '2017-07-24', 1, 'null', 'cse17'),
(30, 'FDP on Distributed and cognitive technologies business and security” ', 'null', '2017-07-24', 1, 'null', 'cse06'),
(31, 'FDP on Distributed and cognitive technologies business and security” ', 'null', '2017-07-24', 1, 'null', 'cse12'),
(32, 'Workshop on ”Computational machine learning and artificial intelligence”', 'null', '2018-01-18', 1, 'null', 'cse12'),
(33, 'FDP on Distributed and cognitive technologies business and security” ', 'null', '2017-07-24', 1, 'null', 'cse27'),
(34, 'One week workshop on “Distributed and cognitive Technologies, Business and Security', 'null', '2017-07-24', 1, 'null', 'cse15'),
(35, 'Four days course on “  Social and Information. Networks Analysis: Problems, Models and Machine Learn', 'null', '2018-12-11', 1, 'null', 'cse15'),
(36, 'Two Day National Seminar on” Empowering Indian Society Towards Cashles Economy”', 'null', '2017-11-24', 1, 'null', 'cse09'),
(37, 'Two Day Workshop on “ Research to Impact” ', 'null', '2017-11-13', 1, 'null', 'cse09'),
(38, 'National Workshop on “ Popularisation of Remote Sensing Based Maps and Geospatial Information”', 'null', '2017-08-11', 1, 'null', 'cse09'),
(39, 'Workshop on Cloud Computing with Amazon web services', 'null', '2005-07-31', 1, 'null', 'cse04'),
(40, 'Machine Learning Techniques and Advances for cognitive Learning', 'null', '2017-07-31', 1, 'null', 'cse22'),
(41, 'Social and Information Networks Analysis: Problems, Models and Machine Learning Methods”', 'null', '2017-12-11', 1, 'null', 'cse15'),
(42, 'workshop on Distributed and Cognitive technologies, Business and Security ', 'null', '2017-07-24', 1, 'null', 'cse03'),
(43, 'Machine learning techniques and advances for cognitive computing', 'null', '2017-07-31', 1, 'null', 'cse19'),
(44, 'Workshop on Maple Soft An Introduction', 'null', '2017-09-15', 1, 'null', 'ise01'),
(45, 'Cyber-Physical Systems Symposium (CyPhySS)', 'null', '2017-07-19', 1, 'null', 'ise02'),
(46, 'Distributed and cognitive technologies, business and security', 'null', '2017-07-24', 1, 'null', 'ise03'),
(47, 'Cloud Computing With Amazon Web Services', 'null', '2017-07-31', 1, 'null', 'ise04'),
(48, 'Distributed and cognitive technologies, business and security', 'null', '2017-07-24', 1, 'null', 'ece01'),
(49, 'Distributed and cognitive technologies, business and security', 'null', '2017-07-24', 1, 'null', 'ece02'),
(50, 'Distributed and cognitive technologies, business and security', 'null', '2017-07-24', 1, 'null', 'ece03'),
(51, 'Machine learning techniques and advances for cognitive computing', 'null', '2017-07-31', 1, 'null', 'ece04'),
(52, 'AWS educate', 'null', '2017-07-31', 1, 'null', 'me01'),
(53, 'Distributed and cognitive technologies, business and security', 'null', '2017-07-24', 1, 'null', 'me02'),
(54, 'Entrepreneurship Educator Program from Wadhwani Foundation', 'null', '2017-11-23', 1, 'null', 'me03'),
(55, 'Teaching techniques and Learning management System using ICT tools', 'null', '2018-01-16', 1, 'null', 'me04'),
(56, 'Workshop on “Research Methodology” ', 'null', '2017-07-17', 1, 'null', 'cv01'),
(57, 'Workshop on “Role of Statistics in Scientific Research”', 'null', '2018-01-04', 1, 'null', 'cv02'),
(58, 'Cyber-Physical Systems Symposium (CyPhySS)', 'null', '2017-07-19', 1, 'null', 'cv03'),
(59, 'Distributed and Cognitive Technologies, Business and Security', 'null', '2017-07-24', 1, 'null', 'cv04'),
(60, 'Cloud Computing With Amazon Web Services', 'null', '2017-07-31', 1, 'null', 'iem01'),
(61, 'Android developer fundamentals faculty training ', 'null', '2017-12-18', 1, 'null', 'iem02'),
(62, 'Teaching techniques and Management systems using ICT tools', 'null', '2018-01-16', 1, 'null', 'iem03'),
(63, 'One week FDP on “Cloud based IOT Programming” ', 'null', '2018-01-16', 1, 'null', 'iem04'),
(64, 'Cyber-Physical Systems Symposium', 'null', '2017-07-19', 1, 'null', 'ise01'),
(65, 'One Week FDP on “Cloud Computing with AWS”', 'null', '2018-02-15', 1, 'null', 'ise02'),
(66, 'oneM2M Developers Tutorial ', 'null', '2013-08-22', 1, 'null', 'ise03'),
(67, 'International Conference on Advances in Computing, Communications and Informatics (ICACCI-2013)', 'null', '2013-08-22', 1, 'null', 'ise04'),
(68, 'AWS Educate ', 'null', '2017-07-31', 1, 'null', 'ece01'),
(69, 'Machine learning techniques and advances for cognitive computing ', 'null', '2017-07-31', 1, 'null', 'ece02'),
(70, 'Distributed and cognitive Technologies , Business and security ', 'null', '2017-07-24', 1, 'null', 'ece03'),
(71, 'AWS educate', 'null', '2017-07-31', 1, 'null', 'ece04'),
(72, 'Distributed and cognitive technologies, business and security', 'null', '2017-07-24', 1, 'null', 'me01'),
(73, 'FDP on Distributed and cognitive technologies business and security” ', 'null', '2017-07-24', 1, 'null', 'me02'),
(74, 'FDP on Distributed and cognitive technologies business and security” ', 'null', '2017-07-24', 1, 'null', 'me03'),
(75, 'Workshop on ”Computational machine learning and artificial intelligence”', 'null', '2018-01-18', 1, 'null', 'me04'),
(76, 'FDP on Distributed and cognitive technologies business and security” ', 'null', '2017-07-24', 1, 'null', 'iem01'),
(77, 'One week workshop on “Distributed and cognitive Technologies, Business and Security', 'null', '2017-07-24', 1, 'null', 'iem02'),
(78, 'Four days course on “  Social and Information. Networks Analysis: Problems, Models and Machine Learn', 'null', '2018-12-11', 1, 'null', 'iem03'),
(79, 'Two Day National Seminar on” Empowering Indian Society Towards Cashles Economy”', 'null', '2017-11-24', 1, 'null', 'iem04'),
(80, 'Two Day Workshop on “ Research to Impact” ', 'null', '2017-11-13', 1, 'null', 'ise01'),
(81, 'National Workshop on “ Popularisation of Remote Sensing Based Maps and Geospatial Information”', 'null', '2017-08-11', 1, 'null', 'ece01'),
(82, 'Workshop on Cloud Computing with Amazon web services', 'null', '2005-07-31', 1, 'null', 'iem02'),
(83, 'Machine Learning Techniques and Advances for cognitive Learning', 'null', '2017-07-31', 1, 'null', 'iem01'),
(84, 'Social and Information Networks Analysis: Problems, Models and Machine Learning Methods”', 'null', '2017-12-11', 1, 'null', 'cv01'),
(85, 'workshop on Distributed and Cognitive technologies, Business and Security ', 'null', '2017-07-24', 1, 'null', 'ece02'),
(86, 'Machine learning techniques and advances for cognitive computing', 'null', '2017-07-31', 1, 'null', 'ise02');

-- --------------------------------------------------------

--
-- Table structure for table `finance`
--

CREATE TABLE `finance` (
  `slNo` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `instituteName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `finance`
--

INSERT INTO `finance` (`slNo`, `category`, `name`, `address`, `status`, `instituteName`) VALUES
(1, 'Principal', 'Dr. N V R Naidu', 'null', 'Chairperson', 'Ramaiah Institute of Technology'),
(2, 'Member of the Governing Body, to be nominated by t', 'Sri. S.M. Acharya', 'Chief Executive, GEF', 'Member', 'Ramaiah Institute of Technology'),
(3, 'Member of the Governing Body, to be nominated by t', 'Dr. T. V. Suresh Kumar', 'Registrar (Academic)', 'Member', 'Ramaiah Institute of Technology'),
(4, 'Senior Faculty of the College, to be nominated in ', 'Dr. R Prabhakara,', 'HOD. Dept. of Civil Engg.', 'Member', 'Ramaiah Institute of Technology'),
(5, 'Senior Faculty of the College, to be nominated in ', 'Dr. Premila Manohar,', 'HOD. Dept. of Ele..&Elo.Engg.', 'Member', 'Ramaiah Institute of Technology'),
(6, 'Member with knowledge of Financial Management to b', 'Sri. G. Ramachandra', 'Chief of Finance, GEF (E & GS)', 'Member', 'Ramaiah Institute of Technology'),
(7, 'Finance Officer', 'Sri. Ramesh Naik', 'Registrar (Administration)', 'Member Secretary', 'Ramaiah Institute of Technology');

-- --------------------------------------------------------

--
-- Table structure for table `funded_projects`
--

CREATE TABLE `funded_projects` (
  `slNo` int(11) NOT NULL,
  `investigatorName` varchar(30) NOT NULL,
  `projectTitle` varchar(50) NOT NULL,
  `nameOfFundingAgent` varchar(30) NOT NULL,
  `sanctionOrderNumber` varchar(10) NOT NULL,
  `projectDuration` varchar(20) NOT NULL,
  `dateSanctioned` date NOT NULL,
  `sanctionedAmount` int(11) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `governing_body`
--

CREATE TABLE `governing_body` (
  `slNo` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `instituteName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `governing_body`
--

INSERT INTO `governing_body` (`slNo`, `category`, `name`, `address`, `status`, `instituteName`) VALUES
(1, 'Members of the Management', 'Dr.M.R.Jayaram', 'Chairman, GEF', 'Chairperson', 'Ramaiah Institute of Technology'),
(2, 'Members of the Management', 'Sri M. R. Seetharam', 'Vice Chairman, GEF', 'Vice Chairperson', 'Ramaiah Institute of Technology'),
(3, 'Members of the Management', 'Sri M. R. Ramaiah', 'Secretary, GEF', 'Member', 'Ramaiah Institute of Technology'),
(4, 'Members of the Management', 'Sri M. R. Kodandaram', 'Trustee, GEF', 'Member', 'Ramaiah Institute of Technology'),
(5, 'Members of the Management', 'Sri M. R. Sampangiramaiah', 'Trustee, GEF', 'Member', 'Ramaiah Institute of Technology'),
(6, 'Members of the Management', 'Sri S. M. Acharya', 'Chief Executive, GEF(Engg)', 'Member', 'Ramaiah Institute of Technology'),
(7, 'Members of the Management', 'Sri. G. Ramachandra', 'Chief of Finance, GEF (E & GS)', 'Special Invitee', 'Ramaiah Institute of Technology'),
(8, 'Teachers of the College', 'Dr. T. V. Suresh Kumar', 'Registrar ( Academic)', 'Member', 'Ramaiah Institute of Technology'),
(9, 'Teachers of the College', 'Dr. R. Prabhakara', 'Head of the Dept, Department of Civil Engg.', 'Member', 'Ramaiah Institute of Technology'),
(10, 'Educationist or Industrialist to be nominated by t', 'Dr. V. K. Aatre', 'Former SA to RM / Secretary, Dept. of Defence R&D / Director General / DRDO ‘MAPLE’ 139, 1st Block, ', 'Member', 'Ramaiah Institute of Technology'),
(11, 'Commission Nominee to be nominated by the Commissi', 'Prof. A. S. Sheoran', 'Head, Dept. of Mining Engineering, MBM Engineering College, Jain Narayan Vyas University, Jodhpur, R', 'Member', 'Ramaiah Institute of Technology'),
(12, 'Council Nominee to be nominated by the Council (AI', 'Professor B. S. Sonde', 'Former Vice Chancellor Goa University, 274-C, Shree Ananth Nagar 18th Cross, Electronic City, P. O. ', 'Member', 'Ramaiah Institute of Technology'),
(13, 'State Govt. Nominee', 'Dr. Shashidhar S Ramatal', 'Principal, Govt. Sri. Krishnarajendra Silver Jubilee Technological Institute, Bangalore Govt. Nomine', 'Member', 'Ramaiah Institute of Technology'),
(14, 'University nominee to be nominated by VTU', 'Prof. Dr.Venkatesh Raikar', 'Vice Chancellor, Sanjay Ghodawat University, Kohlapur VTU Nominee', 'Member', 'Ramaiah Institute of Technology'),
(15, 'Industry', 'Dr. Vinod Kumar Nowal', 'Deputy Managing Director, JSW Steel, Bellary, Karnataka', 'Member', 'Ramaiah Institute of Technology'),
(16, 'Principal of the College', 'Dr. NVR Naidu', 'null', 'Ex-officio Member Secretary ', 'Ramaiah Institute of Technology');

-- --------------------------------------------------------

--
-- Table structure for table `guest_lectures_invited`
--

CREATE TABLE `guest_lectures_invited` (
  `slNo` int(11) NOT NULL,
  `guestName` varchar(50) NOT NULL,
  `expertOrganisationOrAddress` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `areaOfSpecialization` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `departmentId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest_lectures_invited`
--

INSERT INTO `guest_lectures_invited` (`slNo`, `guestName`, `expertOrganisationOrAddress`, `title`, `areaOfSpecialization`, `date`, `departmentId`) VALUES
(1, 'Rishab Animesh', 'Amazon', 'Computer Programming', 'null', '2016-01-29', 'cse'),
(2, 'Chirag Dhull', 'Microsoft', 'Cloud and Data Analytics', 'null', '2016-01-29', 'cse'),
(3, 'Nihon Communications', 'Nihon Communications', 'Qualnet', 'null', '2015-03-23', 'cse'),
(4, 'Ravindra Guntur', 'Keybus Inc', 'Opportunity for computational algorithms in the fi', 'null', '2015-03-19', 'cse'),
(5, 'Anbumani Subramanian', 'Market Enabling Solutions (MES)', 'Computational Photography', 'null', '2015-03-19', 'cse'),
(6, 'Brainstorm Consulting', 'Brainstorm Consulting', 'Opportunities for Higher Studies', 'null', '2015-03-13', 'cse'),
(7, 'Dr S. S Iyengar', 'Florida International University, USA', 'An Integrated Framework for developing Research So', 'null', '2015-03-10', 'cse'),
(8, 'Mahantesh Gadaginamath', 'CISCO', 'Cloud Computing System and Data Center in Cloud Co', 'null', '2015-03-07', 'cse'),
(9, 'Col. Jerry Miller', 'Florida International University, USA', 'R & D collaborations', 'null', '2014-12-26', 'cse'),
(10, 'Dr. Ramadoss', 'IIT madras', 'eNBA and some evaluation criteria', 'null', '2014-03-21', 'cse'),
(11, 'Dr. Sathish Wadiyar', 'SAP technologies', 'Research opportunities in parallel computing', 'null', '2014-03-13', 'cse'),
(12, 'Rishab Animesh', 'Alumni, CSE MSRIT', 'Invited Talk', 'null', '2014-01-24', 'cse');

-- --------------------------------------------------------

--
-- Table structure for table `hardware`
--

CREATE TABLE `hardware` (
  `slNo` int(11) NOT NULL,
  `labName` varchar(100) NOT NULL,
  `carpetArea` varchar(100) NOT NULL,
  `majorEquipments` varchar(100) NOT NULL,
  `totalInvestment` int(11) NOT NULL,
  `departmentId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hardware`
--

INSERT INTO `hardware` (`slNo`, `labName`, `carpetArea`, `majorEquipments`, `totalInvestment`, `departmentId`) VALUES
(1, 'CSE-LAB1', 'null', 'Dell Servers,4 x 5 KVA Online UPS,Kaspersky Business Space Security (Sofware) 1500UL,IBM Thinkcentre', 45, 'cse'),
(2, 'CSE-LAB2', 'null', ' 10+5 KVA Online UPS,Kaspersky Business Space Security (Sofware) 1500UL,IBM Thinkcentre Series Deskt', 40, 'cse'),
(3, 'ANALOG & DIGITAL ELECTRONICS LAB', 'null', 'Pentium D , 3 GB RAM , 3.40GHz, 160 GB HDD, DVD Writer, Mother Board Intel 945,ACER TFT Monitor, ACE', 5, 'cse'),
(4, 'Embedded Center', 'null', 'Pentium Core II Deo , 1 GB RAM , 160 GB HDD, DVD Writer, Mother Board Intel 945,ACER TFT Monitor, AC', 50, 'cse'),
(5, 'COMPUTER LAB-3 ', 'null', 'Dell Make Desktop Computer System with Inter Core I5 SG, 4GB DDR3, 500GB HDD, DVD Writer, Dell Make ', 16, 'cse'),
(6, 'COMPUTER LAB-4 ', 'null', 'Client Nodes (28  Nos.), Dell Make Desktop Computer System with Inter Core I5 SG, 4GB DDR3, 500GB HD', 11, 'cse'),
(7, 'PG Lab-1', 'null', 'Lenovo Desktop Computer Model H530S with Intel CoreI5, 4th Gen, 8GB DDR3 RAM  1TB SATA HDD, WIFI, Ca', 11, 'cse'),
(8, 'PG Lab-2', 'null', 'HP-UX servers for cloud setup', 0, 'cse');

-- --------------------------------------------------------

--
-- Table structure for table `industrial_collaboration_mou`
--

CREATE TABLE `industrial_collaboration_mou` (
  `slNo` int(11) NOT NULL,
  `mouTitle` varchar(30) NOT NULL,
  `mouSignedWithIndustryOrGovt` varchar(30) NOT NULL,
  `mouSigningDate` date NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `industrial_visit`
--

CREATE TABLE `industrial_visit` (
  `slNo` int(11) NOT NULL,
  `industryName` varchar(50) NOT NULL,
  `scheduleDate` date NOT NULL,
  `departmentId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `industrial_visit`
--

INSERT INTO `industrial_visit` (`slNo`, `industryName`, `scheduleDate`, `departmentId`) VALUES
(1, 'Cisco', '0000-00-00', 'cse');

-- --------------------------------------------------------

--
-- Table structure for table `institution`
--

CREATE TABLE `institution` (
  `instituteName` varchar(100) NOT NULL,
  `yearOfEstablishment` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contactNumber` varchar(50) NOT NULL,
  `websiteUrl` varchar(100) NOT NULL,
  `officialMailId` varchar(100) NOT NULL,
  `headOfTheInstitution` varchar(30) NOT NULL,
  `headContactNumber` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `institution`
--

INSERT INTO `institution` (`instituteName`, `yearOfEstablishment`, `address`, `contactNumber`, `websiteUrl`, `officialMailId`, `headOfTheInstitution`, `headContactNumber`) VALUES
('Ramaiah Institute of Technology', '1962', 'MSR College Road, MSR Nagar, MSRIT Post, Bengaluru, Karnataka 560054', '\"+9180-23606939', 'msrit.edu', 'admn@msrit.edu', 'NVR Naidu', '\"+9180-23600822');

-- --------------------------------------------------------

--
-- Table structure for table `journal_paper`
--

CREATE TABLE `journal_paper` (
  `slNo` int(11) NOT NULL,
  `authors` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `issn` varchar(30) NOT NULL,
  `journalName` varchar(100) NOT NULL,
  `journalType` varchar(100) NOT NULL,
  `volumeNumber` int(11) NOT NULL,
  `pageNumbers` int(11) NOT NULL,
  `year` varchar(10) NOT NULL,
  `sjrQuartile` varchar(10) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `journal_paper`
--

INSERT INTO `journal_paper` (`slNo`, `authors`, `title`, `issn`, `journalName`, `journalType`, `volumeNumber`, `pageNumbers`, `year`, `sjrQuartile`, `facultyId`) VALUES
(1, 'H.R. Roopashree, A. Kanavalli', 'Joint Algorithm for Energy-Conservation and Secure Key Generation in Wireless Sensor Network', '0973-4562', 'International Journal of Applied Engineering Research ', 'International', 11, 2250, '2015', 'null', 'cse01'),
(2, ' Jagadish S Kallimani, KG Srinivasa, B Eswara Reddy', 'Statistical and analytical study of guided abstractive text summarization.', '0011-3891', 'Journal Current Science', 'null', 110, 0, '2016', 'null', 'cse04'),
(3, 'Rashmi Ranjana T P,  Jayalakshmi D.S., and R. Srinivasan', 'On Replication Strategies for Data Intensive Cloud Applications', '0975-9646', 'International Journal of Computer Science and Information Technologies(IJCSIT) ', 'International', 0, 2479, '2015', 'null', 'cse05'),
(4, 'Vinay Kumar N, Chandan G S,Sudershan Rai N, Ganesh Prasad Bhagwat,Monica R Mundada ', 'Smart Crop Monitoring Using Cooja Network Simulator', '1087-1090', 'IJAER journal', 'null', 70, 0, '2015', 'null', 'cse06'),
(5, 'Parkavi.A, Dr.N.Vetrivelan ', 'A Flipped Selection: Strategic Approach for Project', 'null', 'International Journal of Applied Engineering Research', 'International', 10, 0, '2015', 'null', 'cse08'),
(6, 'Geetha J, Uday Bhaskar, PChenna Reddy\r\n', 'Data Local Reduce Task Scheduling', 'null', 'Procedia Computer science', 'null', 0, 598, '2016', 'null', 'cse10'),
(7, 'T.N.R.Kumar', 'A Real Time Approach for Indian Road Analysis using Image Processing and Computer Vision', 'null', 'International organization of Scientific Research Journal of Computer Engineering', 'International', 17, 1, '2015', 'null', 'cse11'),
(8, 'Madhusudan G  T.N.R.Kumar', 'MINIMUM ENERGY CONSUMPTION IN ROUTING OF MOBILE AD HOC NETWORK', 'null', 'IRACST – International Journal of Computer Networks and Wireless Communications', 'International', 6, 0, '2016', 'null', 'cse11'),
(9, 'Vinay Shankar and Mallegowda  M', 'Time Evolving Rating Prediction with Privacy Preserving and Defending Sybil Attack in Online Service', 'null', 'International Imperial Journal of Interdisciplinary Research (IJIR IS)', 'International', 2, 0, '2016', 'null', 'cse17'),
(10, 'S.Rajarajeswari, K.Somasundaram ', 'Data Cleansing using Probabilistic classification for prediction of heart disease', '0973-4562', 'International Journal of Applied Engineering Research', 'International', 10, 0, '2015', 'null', 'cse20'),
(11, 'S.Rajarajeswari, K. Somasundaram', 'Data confidentiality and privacy in cloud computing', '0974-5645', 'SCI Indian Journal of Science and Technology', 'National', 9, 0, '2016', 'null', 'cse20'),
(12, ' S.Rajarajeswari,  Tulasi srinivas', 'Empirical Analysis of Location Based Service Approaches to Preserve Privacy: A Cloud Computing Appro', '0973-4562', 'International Journal of Applied Engineering Research', 'International', 10, 0, '2015', 'null', 'cse20'),
(13, 'S.Rajarajeswari, K.Somasundaram ', 'Data Cleansing using Automated Extraction Tools', '1995-0772', 'Advances in Natural and Applied Sciences', 'null', 10, 68, '2016', 'null', 'cse20'),
(14, 'Swamy L N,Sukruth Gowda M A, Rajesh S M, HanumanthaRaju R', 'Improving Social Networks for P2p Content and Context Based File Sharing In Mobile Ubiquitous Comput', 'null', 'International -Journal of Engineering Trends and Technology (IJETT)', 'International', 30, 0, '2015', 'null', 'cse28'),
(15, 'Sanjeetha.R, Monisha.B, Anita Kanavalli', 'Prevention of DdoS Attacks in SDN by Using Virtual IP Addresses', '2230-9659', 'Journal of Advances in Science and Technology', 'null', 12, 1, '2016', 'null', 'cse01'),
(16, 'Roopashree H.R. and Anita Kanavalli', 'Behavior analysis of STREE, SABR and SARDS under different simulation environments :A Case Study', 'null', 'International Journal Of Engineering And Computer Science (IJECS)', 'International', 6, 20033, '2017', 'null', 'cse01'),
(17, 'Sini Anna Alex and Dr. Anita Kanavalli', 'CONTEXT AWARE TEACHING AID CEM FOR LEARNING COMPILER DESIGN CONCEPT FOR STUDENTS WITH LEARNING DISAB', '2320-5407', 'International Journal of Advanced Research (IJAR)', 'International', 0, 0, '2017', 'null', 'cse01'),
(18, 'Archana M Kanthi, Annapurna P Patil', 'Analytics on Command Center Data in Healthcare Systems: A Case Study Implemented using Apache, Hadoo', '2320-9801', 'IJIRCCE', 'International', 4, 13674, '2016', 'null', 'cse02'),
(19, 'Rachana N B, K G Srinivasa, S Seema', 'Airplane Health Surveillance System: A Framework', 'null', 'International Journal of Aviation Systems, Operations and Training', 'International', 3, 11, '2016', 'null', 'cse03'),
(20, 'Shantveer, Jagadish S Kallimani', 'A Study on Dynamic Multilevel Priority Packet Scheduling Scheme for WSNs', '2278-2540', 'International Journal of Latest Technology in Engineering, Management & Applied Science', 'International', 5, 58, '2016', 'null', 'cse04'),
(21, 'Meera Devi, Monica R Mundada', 'Real Time Monitoring of Environmental Parameters in Precision Agriculture using Wireless Sensor Netw', 'null', 'International Journal of Information and Communication Technology Research', 'International', 6, 0, '2016', 'null', 'cse06'),
(22, 'Sanjeetha.R, Monisha.B, Anita Kanavalli', 'Prevention of DdoS Attacks in SDN by Using Virtual IP Addresses', '2230-9659', 'Journal of Advances in Science and Technology', 'null', 12, 1, '2016', 'null', 'cse07'),
(23, 'Madhusudan G  T.N.R.Kumar   ', 'Simulation of Mobile Backbone Network', 'null', 'International Journal of Computer Networks and Communications Security', 'International', 4, 213, '2016', 'null', 'cse11'),
(24, 'Madhusudan G  T.N.R.Kumar', 'MODRP: Multipath on-Demand Routing Protocol for MANET', 'null', 'International Journal of Wireless Communications and Networking Technologies', 'International', 5, 0, '2016', 'null', 'cse11'),
(25, 'Madhusudhan G  T N R Kumar', 'Performance Analysis of MANET Protocols for DTN', 'null', 'International Journal of Latest Trends in Engineering and Technology (IJLTET)', 'International', 7, 0, '2016', 'null', 'cse11'),
(26, 'Sini Anna Alex and Dr. Anita Kanavalli', 'CONTEXT AWARE TEACHING AID CEM FOR LEARNING COMPILER DESIGN CONCEPT FOR STUDENTS WITH LEARNING DISAB', '2320-5407', 'International Journal of Advanced Research (IJAR)', 'International', 0, 0, '2017', 'null', 'cse14'),
(27, 'Meera Devi, Monica R Mundada', 'Real Time Monitoring of Environmental Parameters in Precision Agriculture using Wireless Sensor Netw', 'null', 'International Journal of Information and Communication Technology Research', 'International', 6, 0, '2016', 'null', 'cse16'),
(28, 'Banerjee Shekhar, and Divakar Harekal', 'Vehicle Control in Vehicle to Infrastructure (V2I) Environment', 'null', 'International Journal of Computer Applications', 'International', 168, 0, '2017', 'null', 'cse18'),
(29, 'S.Rajarajeswari, K. Somasundaram', 'Data Cleansing Framework for Heart Disease Data Set in Cloud Environment', '1943-023X', 'SJR Journal of Advanced Research in Dynamical and Control Systems', 'null', 9, 0, '2017', 'null', 'cse20'),
(30, 'Shruthi B, Pramod Sunagar', 'Multi-Authentication for File Access in Cloud Storage with DNA Crypto System', '2454-1362', ' International Journal Imperial Journal of Interdisciplinary Research (IJIR)', 'International', 3, 0, '2017', 'null', 'cse21'),
(31, 'Sowmya B J, Chetan, Pradeep, K.G.Srinivasa', 'Efficient Image Denoising for Effective Digitization using Image Processing Techniques and Neural Ne', 'null', 'IJAEC ', 'International', 7, 77, '2016', 'null', 'cse22'),
(32, 'Sowmya B J, Chetan, Pradeep, K.G.Srinivasa', 'Efficient Image Denoising for Effective Digitization using Image Processing Techniques and Neural Ne', 'null', 'IJAEC ', 'International', 7, 77, '2016', 'null', 'cse23'),
(33, 'Srinivasa, K. G., Hegde, G., Mishra, K., Siddiqui, M. N., Kumar, A., & Kumar, Pradeep', 'Microsense: Sensor Framework for IoT System-on-Chip', 'null', 'International Journal of Handheld Computing Research (IJHCR)', 'International', 7, 38, '2016', 'null', 'cse23'),
(34, 'Sowmya B J, Chetan, Pradeep, K.G.Srinivasa', 'Efficient Image Denoising for Effective Digitization using Image Processing Techniques and Neural Ne', 'null', 'IJAEC ', 'International', 7, 77, '2016', 'null', 'cse24'),
(35, 'Shilpa Shashikant Chaudhari, Rajashekhar C. Biradar\r\n', 'Resource prediction-based routing using agents in mobile ad hoc networks\r\n\r\n\r\n', 'null', 'Int. J. Communication Networks and Distributed Systems\r\n\r\n', 'International', 0, 0, 'null', 'null', 'cse30'),
(36, 'Srinidhi Hiriyannaiah, G.M. Siddesh, P. Anoop, K.G. Srinivasa', 'Semi-structured data analysis and visualisation using NoSQL', 'null', 'International Journal of Big Data Intelligence', 'International', 0, 0, '2018', 'null', 'cse27'),
(37, 'Sanjeetha R., Akshar Prasanna, Pradeep Kumar D., Anita Kanavalli', 'Mitigation of Controller induced DDoS Attack on Primary Server in High Traffic Scenarios of Software', 'null', 'International Journal of Pure and Applied Mathematics', 'International', 0, 0, '2018', 'null', 'cse23'),
(38, 'Shruthi B R, Pramod C SUNAGAR', 'Multi-Authentication for File Access in Cloud Storage with DNA Crypto System', '2454-1362', 'Imperial Journal of Interdisciplinary Research', 'null', 3, 0, '2017', 'null', 'cse21'),
(39, 'Pramod Sunagar, Pradeep Kumar, Mallegowda M, Dr. Anita Kanavalli', 'A Vehicular Apprehension Scheme in Wireless Networks', '2347-8616', 'International Journal of Innovations & Advancement in Computer Science', 'International', 0, 0, '2017', 'null', 'cse21'),
(40, 'Shishir Mathew, Mamatha Jadav V,', 'SE2R2: Secure Energy Efficient and Reliable Routing Protocol in Presence of Phishing Attacks for WSN', '2395-0056', 'International Research Journal of Engineering and Technology (IRJET)', 'International', 4, 0, '2017', 'null', 'cse12'),
(41, 'Varunashree N  T N R Kumar', 'Identification and classification of brain tumor MRI images with feature extraction using DWT and pr', 'null', 'Springer Nature Journal', 'null', 5, 0, '2018', 'null', 'cse11'),
(42, 'Geetha J, Uday Bhaskar, P Chenna Reddy\r\n', 'New Hadoop Scheduler Framework', '0973-4562', 'International Journal of Applied Engineering Research\r\n\r\n', 'International', 12, 15152, '2017', 'null', 'cse10'),
(43, 'Geetha J, Uday Bhaskar, P Chenna Reddy', 'An Analytical Approach for Optimizing the Performance of Hadoop Map Reduce over RoCE\r\n\r\n', 'null', 'IGI Global Special Issue : IoT, Fog and Cloud Computing Towards Building Intelligent Systems\r\n\r\n', 'null', 10, 0, '2018', 'null', 'cse10'),
(44, 'Parkavi.A, Dr.K.Lakshmi, Dr.K.G.Srinivasa', 'Predicting effective course conduction strategy using Datamining techniques', 'null', 'Educational research and reviews, Academic Journals', 'null', 12, 1188, '2017', 'null', 'cse08'),
(45, 'Sanjeetha R., Akshar Prasanna, Pradeep Kumar D., Anita Kanavalli', 'Mitigation of Controller induced DDoS Attack on Primary Server in High Traffic Scenarios of Software', 'null', 'International Journal of Pure and Applied Mathematics', 'International', 0, 0, '2018', 'null', 'cse07'),
(46, 'Sanjeetha, R., Shikhar Srivastava, Rishab Pokharna, Syed Shafiq, and Anita Kanavalli', 'Mitigation of DDoS attack instigated by compromised switches on SDN controller by analyzing the flow', 'null', 'International Journal of Engineering and Technology (UAE)', 'International', 7, 46, '2018', 'null', 'cse07'),
(47, 'Jayalakshmi D S,  R Srinivasan', 'A Greedy File Merging Algorithm for Handling Small Files in HDFS', 'null', 'International Journal of Pure and Applied mathematics', 'International', 0, 0, 'null', 'null', 'cse05'),
(48, 'Jayalakshmi D S,  R Srinivasan', 'An Analytical Model for HDFS Replication Pipeline based on Queuing Theory', 'null', 'International Journal of Applied Engineering Research', 'International', 12, 15158, '2017', 'null', 'cse05'),
(49, 'N.M. Annigeri, S. Shetty, A.P. Patil', 'Analysing the supervised learning methods for prediction of healthcare data in cloud environment: A ', '2347-2693', 'International Journal of Computer Sciences and Engineering', 'International', 6, 447, '2018', 'null', 'cse02'),
(50, 'Shashikala Gudimani, Koushik S, Dr Annapurna P. Patil', 'SLA Based Brokerage for Multicloud Migration', '2347-8616', 'International Journal of Innovations & Advancement in Computer Science IJIACS', 'International', 6, 128, '2017', 'null', 'cse02'),
(51, 'Sanjeetha R., Akshar Prasanna, Pradeep Kumar D., Anita Kanavalli', 'Mitigation of Controller induced DDoS Attack on Primary Server in High Traffic Scenarios of Software', 'null', 'International Journal of Pure and Applied Mathematics', 'International', 0, 0, '2018', 'null', 'cse01'),
(52, 'Sanjeetha, R., Shikhar Srivastava, Rishab Pokharna, Syed Shafiq, and Anita Kanavalli', 'Mitigation of DDoS attack instigated by compromised switches on SDN controller by analyzing the flow', 'null', 'International Journal of Engineering and Technology (UAE)', 'International', 7, 46, '2018', 'null', 'cse01'),
(53, 'H.R. Roopashree, A. Kanavalli', 'Joint Algorithm for Energy-Conservation and Secure Key Generation in Wireless Sensor Network', '0973-4562', 'International Journal of Applied Engineering Research ', 'International', 11, 2250, '2015', 'null', 'ise01'),
(54, ' Jagadish S Kallimani, KG Srinivasa, B Eswara Reddy', 'Statistical and analytical study of guided abstractive text summarization.', '0011-3891', 'Journal Current Science', 'null', 110, 0, '2016', 'null', 'ise02'),
(55, 'Rashmi Ranjana T P,  Jayalakshmi D.S., and R. Srinivasan', 'On Replication Strategies for Data Intensive Cloud Applications', '0975-9646', 'International Journal of Computer Science and Information Technologies(IJCSIT) ', 'International', 0, 2479, '2015', 'null', 'ise03'),
(56, 'Vinay Kumar N, Chandan G S,Sudershan Rai N, Ganesh Prasad Bhagwat,Monica R Mundada ', 'Smart Crop Monitoring Using Cooja Network Simulator', '1087-1090', 'IJAER journal', 'null', 70, 0, '2015', 'null', 'ise04'),
(57, 'Parkavi.A, Dr.N.Vetrivelan ', 'A Flipped Selection: Strategic Approach for Project', 'null', 'International Journal of Applied Engineering Research', 'International', 10, 0, '2015', 'null', 'ece01'),
(58, 'Geetha J, Uday Bhaskar, PChenna Reddy\r\n', 'Data Local Reduce Task Scheduling', 'null', 'Procedia Computer science', 'null', 0, 598, '2016', 'null', 'ece02'),
(59, 'T.N.R.Kumar', 'A Real Time Approach for Indian Road Analysis using Image Processing and Computer Vision', 'null', 'International organization of Scientific Research Journal of Computer Engineering', 'International', 17, 1, '2015', 'null', 'ece03'),
(60, 'Madhusudan G  T.N.R.Kumar', 'MINIMUM ENERGY CONSUMPTION IN ROUTING OF MOBILE AD HOC NETWORK', 'null', 'IRACST – International Journal of Computer Networks and Wireless Communications', 'International', 6, 0, '2016', 'null', 'ece04'),
(61, 'Vinay Shankar and Mallegowda  M', 'Time Evolving Rating Prediction with Privacy Preserving and Defending Sybil Attack in Online Service', 'null', 'International Imperial Journal of Interdisciplinary Research (IJIR IS)', 'International', 2, 0, '2016', 'null', 'me01'),
(62, 'S.Rajarajeswari, K.Somasundaram ', 'Data Cleansing using Probabilistic classification for prediction of heart disease', '0973-4562', 'International Journal of Applied Engineering Research', 'International', 10, 0, '2015', 'null', 'me02'),
(63, 'S.Rajarajeswari, K. Somasundaram', 'Data confidentiality and privacy in cloud computing', '0974-5645', 'SCI Indian Journal of Science and Technology', 'National', 9, 0, '2016', 'null', 'me03'),
(64, ' S.Rajarajeswari,  Tulasi srinivas', 'Empirical Analysis of Location Based Service Approaches to Preserve Privacy: A Cloud Computing Appro', '0973-4562', 'International Journal of Applied Engineering Research', 'International', 10, 0, '2015', 'null', 'me04'),
(65, 'S.Rajarajeswari, K.Somasundaram ', 'Data Cleansing using Automated Extraction Tools', '1995-0772', 'Advances in Natural and Applied Sciences', 'null', 10, 68, '2016', 'null', 'cv01'),
(66, 'Swamy L N,Sukruth Gowda M A, Rajesh S M, HanumanthaRaju R', 'Improving Social Networks for P2p Content and Context Based File Sharing In Mobile Ubiquitous Comput', 'null', 'International -Journal of Engineering Trends and Technology (IJETT)', 'International', 30, 0, '2015', 'null', 'cv02'),
(67, 'Sanjeetha.R, Monisha.B, Anita Kanavalli', 'Prevention of DdoS Attacks in SDN by Using Virtual IP Addresses', '2230-9659', 'Journal of Advances in Science and Technology', 'null', 12, 1, '2016', 'null', 'cv03'),
(68, 'Roopashree H.R. and Anita Kanavalli', 'Behavior analysis of STREE, SABR and SARDS under different simulation environments :A Case Study', 'null', 'International Journal Of Engineering And Computer Science (IJECS)', 'International', 6, 20033, '2017', 'null', 'cv04'),
(69, 'Sini Anna Alex and Dr. Anita Kanavalli', 'CONTEXT AWARE TEACHING AID CEM FOR LEARNING COMPILER DESIGN CONCEPT FOR STUDENTS WITH LEARNING DISAB', '2320-5407', 'International Journal of Advanced Research (IJAR)', 'International', 0, 0, '2017', 'null', 'iem01'),
(70, 'Archana M Kanthi, Annapurna P Patil', 'Analytics on Command Center Data in Healthcare Systems: A Case Study Implemented using Apache, Hadoo', '2320-9801', 'IJIRCCE', 'International', 4, 13674, '2016', 'null', 'iem02'),
(71, 'Rachana N B, K G Srinivasa, S Seema', 'Airplane Health Surveillance System: A Framework', 'null', 'International Journal of Aviation Systems, Operations and Training', 'International', 3, 11, '2016', 'null', 'iem03'),
(72, 'Shantveer, Jagadish S Kallimani', 'A Study on Dynamic Multilevel Priority Packet Scheduling Scheme for WSNs', '2278-2540', 'International Journal of Latest Technology in Engineering, Management & Applied Science', 'International', 5, 58, '2016', 'null', 'iem04'),
(73, 'Meera Devi, Monica R Mundada', 'Real Time Monitoring of Environmental Parameters in Precision Agriculture using Wireless Sensor Netw', 'null', 'International Journal of Information and Communication Technology Research', 'International', 6, 0, '2016', 'null', 'ise01'),
(74, 'Sanjeetha.R, Monisha.B, Anita Kanavalli', 'Prevention of DdoS Attacks in SDN by Using Virtual IP Addresses', '2230-9659', 'Journal of Advances in Science and Technology', 'null', 12, 1, '2016', 'null', 'ise02'),
(75, 'Madhusudan G  T.N.R.Kumar   ', 'Simulation of Mobile Backbone Network', 'null', 'International Journal of Computer Networks and Communications Security', 'International', 4, 213, '2016', 'null', 'ise03'),
(76, 'Madhusudan G  T.N.R.Kumar', 'MODRP: Multipath on-Demand Routing Protocol for MANET', 'null', 'International Journal of Wireless Communications and Networking Technologies', 'International', 5, 0, '2016', 'null', 'ise04'),
(77, 'Madhusudhan G  T N R Kumar', 'Performance Analysis of MANET Protocols for DTN', 'null', 'International Journal of Latest Trends in Engineering and Technology (IJLTET)', 'International', 7, 0, '2016', 'null', 'ece01'),
(78, 'Sini Anna Alex and Dr. Anita Kanavalli', 'CONTEXT AWARE TEACHING AID CEM FOR LEARNING COMPILER DESIGN CONCEPT FOR STUDENTS WITH LEARNING DISAB', '2320-5407', 'International Journal of Advanced Research (IJAR)', 'International', 0, 0, '2017', 'null', 'ece02'),
(79, 'Meera Devi, Monica R Mundada', 'Real Time Monitoring of Environmental Parameters in Precision Agriculture using Wireless Sensor Netw', 'null', 'International Journal of Information and Communication Technology Research', 'International', 6, 0, '2016', 'null', 'ece03'),
(80, 'Banerjee Shekhar, and Divakar Harekal', 'Vehicle Control in Vehicle to Infrastructure (V2I) Environment', 'null', 'International Journal of Computer Applications', 'International', 168, 0, '2017', 'null', 'ece04'),
(81, 'S.Rajarajeswari, K. Somasundaram', 'Data Cleansing Framework for Heart Disease Data Set in Cloud Environment', '1943-023X', 'SJR Journal of Advanced Research in Dynamical and Control Systems', 'null', 9, 0, '2017', 'null', 'me01'),
(82, 'Shruthi B, Pramod Sunagar', 'Multi-Authentication for File Access in Cloud Storage with DNA Crypto System', '2454-1362', ' International Journal Imperial Journal of Interdisciplinary Research (IJIR)', 'International', 3, 0, '2017', 'null', 'me02'),
(83, 'Sowmya B J, Chetan, Pradeep, K.G.Srinivasa', 'Efficient Image Denoising for Effective Digitization using Image Processing Techniques and Neural Ne', 'null', 'IJAEC ', 'International', 7, 77, '2016', 'null', 'me03'),
(84, 'Sowmya B J, Chetan, Pradeep, K.G.Srinivasa', 'Efficient Image Denoising for Effective Digitization using Image Processing Techniques and Neural Ne', 'null', 'IJAEC ', 'International', 7, 77, '2016', 'null', 'me04'),
(85, 'Srinivasa, K. G., Hegde, G., Mishra, K., Siddiqui, M. N., Kumar, A., & Kumar, Pradeep', 'Microsense: Sensor Framework for IoT System-on-Chip', 'null', 'International Journal of Handheld Computing Research (IJHCR)', 'International', 7, 38, '2016', 'null', 'iem01'),
(86, 'Sowmya B J, Chetan, Pradeep, K.G.Srinivasa', 'Efficient Image Denoising for Effective Digitization using Image Processing Techniques and Neural Ne', 'null', 'IJAEC ', 'International', 7, 77, '2016', 'null', 'iem02'),
(87, 'Shilpa Shashikant Chaudhari, Rajashekhar C. Biradar\r\n', 'Resource prediction-based routing using agents in mobile ad hoc networks\r\n\r\n\r\n', 'null', 'Int. J. Communication Networks and Distributed Systems\r\n\r\n', 'International', 0, 0, 'null', 'null', 'iem03'),
(88, 'Srinidhi Hiriyannaiah, G.M. Siddesh, P. Anoop, K.G. Srinivasa', 'Semi-structured data analysis and visualisation using NoSQL', 'null', 'International Journal of Big Data Intelligence', 'International', 0, 0, '2018', 'null', 'iem04'),
(89, 'Sanjeetha R., Akshar Prasanna, Pradeep Kumar D., Anita Kanavalli', 'Mitigation of Controller induced DDoS Attack on Primary Server in High Traffic Scenarios of Software', 'null', 'International Journal of Pure and Applied Mathematics', 'International', 0, 0, '2018', 'null', 'cv01'),
(90, 'Shruthi B R, Pramod C SUNAGAR', 'Multi-Authentication for File Access in Cloud Storage with DNA Crypto System', '2454-1362', 'Imperial Journal of Interdisciplinary Research', 'null', 3, 0, '2017', 'null', 'cv02'),
(91, 'Pramod Sunagar, Pradeep Kumar, Mallegowda M, Dr. Anita Kanavalli', 'A Vehicular Apprehension Scheme in Wireless Networks', '2347-8616', 'International Journal of Innovations & Advancement in Computer Science', 'International', 0, 0, '2017', 'null', 'cv03'),
(92, 'Shishir Mathew, Mamatha Jadav V,', 'SE2R2: Secure Energy Efficient and Reliable Routing Protocol in Presence of Phishing Attacks for WSN', '2395-0056', 'International Research Journal of Engineering and Technology (IRJET)', 'International', 4, 0, '2017', 'null', 'cv04'),
(93, 'Varunashree N  T N R Kumar', 'Identification and classification of brain tumor MRI images with feature extraction using DWT and pr', 'null', 'Springer Nature Journal', 'null', 5, 0, '2018', 'null', 'me01'),
(94, 'Geetha J, Uday Bhaskar, P Chenna Reddy\r\n', 'New Hadoop Scheduler Framework', '0973-4562', 'International Journal of Applied Engineering Research\r\n\r\n', 'International', 12, 15152, '2017', 'null', 'me02'),
(95, 'Geetha J, Uday Bhaskar, P Chenna Reddy', 'An Analytical Approach for Optimizing the Performance of Hadoop Map Reduce over RoCE\r\n\r\n', 'null', 'IGI Global Special Issue : IoT, Fog and Cloud Computing Towards Building Intelligent Systems\r\n\r\n', 'null', 10, 0, '2018', 'null', 'cv02'),
(96, 'Parkavi.A, Dr.K.Lakshmi, Dr.K.G.Srinivasa', 'Predicting effective course conduction strategy using Datamining techniques', 'null', 'Educational research and reviews, Academic Journals', 'null', 12, 1188, '2017', 'null', 'cv01'),
(97, 'Sanjeetha R., Akshar Prasanna, Pradeep Kumar D., Anita Kanavalli', 'Mitigation of Controller induced DDoS Attack on Primary Server in High Traffic Scenarios of Software', 'null', 'International Journal of Pure and Applied Mathematics', 'International', 0, 0, '2018', 'null', 'iem01'),
(98, 'Sanjeetha, R., Shikhar Srivastava, Rishab Pokharna, Syed Shafiq, and Anita Kanavalli', 'Mitigation of DDoS attack instigated by compromised switches on SDN controller by analyzing the flow', 'null', 'International Journal of Engineering and Technology (UAE)', 'International', 7, 46, '2018', 'null', 'iem02'),
(99, 'Jayalakshmi D S,  R Srinivasan', 'A Greedy File Merging Algorithm for Handling Small Files in HDFS', 'null', 'International Journal of Pure and Applied mathematics', 'International', 0, 0, 'null', 'null', 'ise03'),
(100, 'Jayalakshmi D S,  R Srinivasan', 'An Analytical Model for HDFS Replication Pipeline based on Queuing Theory', 'null', 'International Journal of Applied Engineering Research', 'International', 12, 15158, '2017', 'null', 'ece03'),
(101, 'N.M. Annigeri, S. Shetty, A.P. Patil', 'Analysing the supervised learning methods for prediction of healthcare data in cloud environment: A ', '2347-2693', 'International Journal of Computer Sciences and Engineering', 'International', 6, 447, '2018', 'null', 'me03'),
(102, 'Shashikala Gudimani, Koushik S, Dr Annapurna P. Patil', 'SLA Based Brokerage for Multicloud Migration', '2347-8616', 'International Journal of Innovations & Advancement in Computer Science IJIACS', 'International', 6, 128, '2017', 'null', 'cv03'),
(103, 'Sanjeetha R., Akshar Prasanna, Pradeep Kumar D., Anita Kanavalli', 'Mitigation of Controller induced DDoS Attack on Primary Server in High Traffic Scenarios of Software', 'null', 'International Journal of Pure and Applied Mathematics', 'International', 0, 0, '2018', 'null', 'ise02'),
(104, 'Sanjeetha, R., Shikhar Srivastava, Rishab Pokharna, Syed Shafiq, and Anita Kanavalli', 'Mitigation of DDoS attack instigated by compromised switches on SDN controller by analyzing the flow', 'null', 'International Journal of Engineering and Technology (UAE)', 'International', 7, 46, '2018', 'null', 'ise01');

-- --------------------------------------------------------

--
-- Table structure for table `non_teaching_staff`
--

CREATE TABLE `non_teaching_staff` (
  `staffId` varchar(10) NOT NULL,
  `staffName` varchar(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `religion` varchar(100) NOT NULL,
  `caste` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `natureOfAppointment` varchar(100) NOT NULL,
  `mobileNo` varchar(100) NOT NULL,
  `emailId` varchar(100) NOT NULL,
  `panNo` varchar(100) NOT NULL,
  `accountNo` varchar(100) NOT NULL,
  `pfNo` varchar(100) NOT NULL,
  `departmentId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `other_membership`
--

CREATE TABLE `other_membership` (
  `slNo` int(11) NOT NULL,
  `facultyName` varchar(30) NOT NULL,
  `contributionType` varchar(100) NOT NULL,
  `year` varchar(10) NOT NULL,
  `internalOrExternal` varchar(50) NOT NULL,
  `departmentId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `phd_scholar`
--

CREATE TABLE `phd_scholar` (
  `slNo` int(11) NOT NULL,
  `scholarName` varchar(50) NOT NULL,
  `guideName` varchar(30) NOT NULL,
  `researchCentre` varchar(50) NOT NULL,
  `university` varchar(30) NOT NULL,
  `registrationYear` varchar(10) NOT NULL,
  `usn` varchar(30) NOT NULL,
  `title` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phd_scholar`
--

INSERT INTO `phd_scholar` (`slNo`, `scholarName`, `guideName`, `researchCentre`, `university`, `registrationYear`, `usn`, `title`, `status`, `facultyId`) VALUES
(1, 'Chetan Shetty', 'Dr. Seema S', 'null', 'null', '2015', 'null', 'null', 'Completed 2 course w', 'cse24'),
(2, 'Sowmya B J', 'Dr. Seema S', 'null', 'null', '2015', 'null', 'null', 'Completed 2 course w', 'cse22'),
(3, 'Sanjeetha. R', 'Dr. Anita Kanavalli', 'null', 'null', '2015', 'null', 'null', 'Completed 2 course w', 'cse07'),
(4, 'Pradeep kumar D', 'Dr. Anita Kanavalli', 'null', 'null', '2015', 'null', 'null', 'Completed 2 course w', 'cse23'),
(5, 'Pramod Sunagar', 'Dr. Anita Kanavalli', 'null', 'null', '2014', 'null', 'null', 'Completed the course', 'cse21'),
(6, 'Sini Anna Alex', 'Dr. Anita Kanavalli', 'null', 'null', '2013', 'null', 'null', 'Completed Course Wor', 'cse14'),
(7, 'Chandrika C.P', 'Dr. Jagadish S Kallimani', 'null', 'null', '2017', 'null', 'null', 'To start Course Work', 'cse19'),
(8, 'Darshana A Naik', 'Dr.Seema S', 'null', 'null', '2015', 'null', 'null', 'Completed 2 course w', 'cse26'),
(9, 'Parkavi.A', 'Dr.K.Lakshmi', 'null', 'null', '2012', 'null', 'null', 'Comprehensive viva c', 'cse08'),
(10, 'Meera A Kawagi', 'Dr. Monica R Mundada', 'null', 'null', '2016', 'null', 'null', 'Completed 2 course w', 'cse16'),
(11, 'Mallegowda M', 'Dr. Anita Kanavalli', 'null', 'null', '2015', 'null', 'null', 'completed 3 subjects', 'cse17');

-- --------------------------------------------------------

--
-- Table structure for table `professional_activities`
--

CREATE TABLE `professional_activities` (
  `slNo` int(11) NOT NULL,
  `facultyName` varchar(50) NOT NULL,
  `board` varchar(50) NOT NULL,
  `college` varchar(100) NOT NULL,
  `externalOrInternal` varchar(20) NOT NULL,
  `year` varchar(10) NOT NULL,
  `departmentId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `professional_body_membership`
--

CREATE TABLE `professional_body_membership` (
  `slNo` int(11) NOT NULL,
  `facultyName` varchar(30) NOT NULL,
  `professionalBodyName` varchar(50) NOT NULL,
  `membershipType` varchar(30) NOT NULL,
  `subscriptionYear` varchar(20) NOT NULL,
  `departmentId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `projects_handled`
--

CREATE TABLE `projects_handled` (
  `slNo` int(11) NOT NULL,
  `batch` varchar(50) NOT NULL,
  `ugOrPg` varchar(5) NOT NULL,
  `projectTitle` varchar(50) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `scholarship`
--

CREATE TABLE `scholarship` (
  `scholarshipName` varchar(100) NOT NULL,
  `scholarshipType` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `slNo` int(11) NOT NULL,
  `instituteName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seminar_workshop`
--

CREATE TABLE `seminar_workshop` (
  `slNo` int(11) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `title` varchar(50) NOT NULL,
  `event` varchar(50) NOT NULL,
  `broadArea` varchar(50) NOT NULL,
  `departmentId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seminar_workshop`
--

INSERT INTO `seminar_workshop` (`slNo`, `startDate`, `endDate`, `title`, `event`, `broadArea`, `departmentId`) VALUES
(1, '2016-10-05', '2016-10-07', 'International conference on Circuits, Communicatio', 'International Conference', 'Multidisiplinary', 'cse'),
(2, '2016-07-25', '2016-07-30', 'Mobile, Cognitive, Cloud and IoT- The new computin', 'Faculty Development Program', 'Computer Science', 'cse'),
(3, '2016-07-18', '2016-07-23', 'Advances and Research Challenges in the Applicatio', 'Faculty Development Program', 'Computer Science', 'cse'),
(4, '2016-06-15', '2016-07-23', '5-Week Training programs on Introduction to Python', 'Vocational Training', 'Programming Skills', 'cse'),
(5, '2016-03-12', '2016-05-07', 'Proficiency Courses on “Data Analytics”, “IoT” and', 'Proficiency Courses', 'Computer Science', 'cse'),
(6, '2016-03-08', '2016-03-09', 'Women in Engineering', 'Symposium', '', 'cse'),
(7, '2015-09-09', '2015-09-11', 'Twelfth IEEE and IFIP International Conference on ', 'International Conference', 'Computer Networks', 'cse'),
(8, '2015-07-20', '2015-07-31', 'Foundations for Innovation in Cyber-Physical Syste', 'Faculty Development Program', 'Cyber-Physical Systems', 'cse'),
(9, '2015-07-15', '2015-07-17', 'Hands on Sessions on SAP Hana', 'Faculty Development Program', 'Database Management Systems', 'cse'),
(10, '2015-07-13', '2015-07-17', 'Machine Learning and its Applications', 'Faculty Development Program', 'Machine Learning', 'cse'),
(11, '2015-02-25', '2015-02-26', 'Simulation of WSN using Qualnet', 'Faculty Development Program', 'ComputerNetworks', 'cse'),
(12, '2014-12-02', '2014-12-05', 'IBM Seed for Cloud', 'Faculty Development Program', 'Cloud Computing', 'cse'),
(13, '2014-11-22', '2014-11-25', 'IBM Seed Worklight', 'Faculty Development Program', 'Mobile Application Development', 'cse'),
(14, '2014-11-21', '2014-11-22', 'International conference on Circuits, Communicatio', 'International Conference', 'Multidisiplinary', 'cse');

-- --------------------------------------------------------

--
-- Table structure for table `software`
--

CREATE TABLE `software` (
  `slNo` int(11) NOT NULL,
  `softwareName` varchar(50) NOT NULL,
  `licenseNumber` varchar(30) NOT NULL,
  `noOfUsers` int(11) NOT NULL,
  `expiryDate` date NOT NULL,
  `vendorName` varchar(30) NOT NULL,
  `departmentId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_achievement`
--

CREATE TABLE `staff_achievement` (
  `slNo` int(11) NOT NULL,
  `eventName` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `staffId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_service`
--

CREATE TABLE `staff_service` (
  `slNo` int(11) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `qualification` varchar(100) NOT NULL,
  `dateOfJoining` date NOT NULL,
  `yearsOfExperience` int(11) NOT NULL,
  `promotionDate` date NOT NULL,
  `scaleOfPay` varchar(100) NOT NULL,
  `staffId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_achievement`
--

CREATE TABLE `student_achievement` (
  `slNo` int(11) NOT NULL,
  `studentName` varchar(30) NOT NULL,
  `eventName` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `award` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `departmentId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_activities`
--

CREATE TABLE `student_activities` (
  `slNo` int(11) NOT NULL,
  `studentName` varchar(30) NOT NULL,
  `eventName` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `industryOrOrganization` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `departmentId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_publication`
--

CREATE TABLE `student_publication` (
  `slNo` int(11) NOT NULL,
  `authors` varchar(100) NOT NULL,
  `title` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `conferenceOrJournal` varchar(30) NOT NULL,
  `place` varchar(30) NOT NULL,
  `departmentId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_council`
--
ALTER TABLE `academic_council`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `instituteName` (`instituteName`),
  ADD KEY `slNo` (`slNo`);

--
-- Indexes for table `admissions`
--
ALTER TABLE `admissions`
  ADD PRIMARY KEY (`year`),
  ADD KEY `departmentId` (`departmentId`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`),
  ADD KEY `slNo` (`slNo`);

--
-- Indexes for table `book_chapter`
--
ALTER TABLE `book_chapter`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`),
  ADD KEY `slNo` (`slNo`);

--
-- Indexes for table `conference_paper`
--
ALTER TABLE `conference_paper`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`),
  ADD KEY `slNo` (`slNo`);

--
-- Indexes for table `consultancy`
--
ALTER TABLE `consultancy`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`),
  ADD KEY `slNo` (`slNo`);

--
-- Indexes for table `courses_handled`
--
ALTER TABLE `courses_handled`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`),
  ADD KEY `slNo` (`slNo`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`departmentId`),
  ADD KEY `instituteName` (`instituteName`),
  ADD KEY `departmentId` (`departmentId`),
  ADD KEY `departmentId_2` (`departmentId`),
  ADD KEY `departmentId_3` (`departmentId`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`facultyId`),
  ADD KEY `departmentId` (`departmentId`);

--
-- Indexes for table `faculty_conference_symposia`
--
ALTER TABLE `faculty_conference_symposia`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `faculty_guest_lecture`
--
ALTER TABLE `faculty_guest_lecture`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `faculty_patent`
--
ALTER TABLE `faculty_patent`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `faculty_qualification`
--
ALTER TABLE `faculty_qualification`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `faculty_research`
--
ALTER TABLE `faculty_research`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `faculty_service`
--
ALTER TABLE `faculty_service`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `faculty_workshop_fdp`
--
ALTER TABLE `faculty_workshop_fdp`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `finance`
--
ALTER TABLE `finance`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `instituteName` (`instituteName`);

--
-- Indexes for table `funded_projects`
--
ALTER TABLE `funded_projects`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `governing_body`
--
ALTER TABLE `governing_body`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `instituteName` (`instituteName`);

--
-- Indexes for table `guest_lectures_invited`
--
ALTER TABLE `guest_lectures_invited`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `departmentId` (`departmentId`);

--
-- Indexes for table `hardware`
--
ALTER TABLE `hardware`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `departmentId` (`departmentId`);

--
-- Indexes for table `industrial_collaboration_mou`
--
ALTER TABLE `industrial_collaboration_mou`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `industrial_visit`
--
ALTER TABLE `industrial_visit`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `departmentId` (`departmentId`);

--
-- Indexes for table `institution`
--
ALTER TABLE `institution`
  ADD PRIMARY KEY (`instituteName`);

--
-- Indexes for table `journal_paper`
--
ALTER TABLE `journal_paper`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `non_teaching_staff`
--
ALTER TABLE `non_teaching_staff`
  ADD PRIMARY KEY (`staffId`),
  ADD KEY `departmentId` (`departmentId`);

--
-- Indexes for table `other_membership`
--
ALTER TABLE `other_membership`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `departmentId` (`departmentId`);

--
-- Indexes for table `phd_scholar`
--
ALTER TABLE `phd_scholar`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `professional_activities`
--
ALTER TABLE `professional_activities`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `departmentId` (`departmentId`);

--
-- Indexes for table `professional_body_membership`
--
ALTER TABLE `professional_body_membership`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `departmentId` (`departmentId`);

--
-- Indexes for table `projects_handled`
--
ALTER TABLE `projects_handled`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `scholarship`
--
ALTER TABLE `scholarship`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `instituteName` (`instituteName`);

--
-- Indexes for table `seminar_workshop`
--
ALTER TABLE `seminar_workshop`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `departmentId` (`departmentId`);

--
-- Indexes for table `software`
--
ALTER TABLE `software`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `departmentId` (`departmentId`);

--
-- Indexes for table `staff_achievement`
--
ALTER TABLE `staff_achievement`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `staffId` (`staffId`);

--
-- Indexes for table `staff_service`
--
ALTER TABLE `staff_service`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `staffId` (`staffId`);

--
-- Indexes for table `student_achievement`
--
ALTER TABLE `student_achievement`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `departmentId` (`departmentId`);

--
-- Indexes for table `student_activities`
--
ALTER TABLE `student_activities`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `departmentId` (`departmentId`);

--
-- Indexes for table `student_publication`
--
ALTER TABLE `student_publication`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `departmentId` (`departmentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_council`
--
ALTER TABLE `academic_council`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `book_chapter`
--
ALTER TABLE `book_chapter`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `conference_paper`
--
ALTER TABLE `conference_paper`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `consultancy`
--
ALTER TABLE `consultancy`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses_handled`
--
ALTER TABLE `courses_handled`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faculty_conference_symposia`
--
ALTER TABLE `faculty_conference_symposia`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `faculty_guest_lecture`
--
ALTER TABLE `faculty_guest_lecture`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `faculty_patent`
--
ALTER TABLE `faculty_patent`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `faculty_qualification`
--
ALTER TABLE `faculty_qualification`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `faculty_research`
--
ALTER TABLE `faculty_research`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `faculty_service`
--
ALTER TABLE `faculty_service`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `faculty_workshop_fdp`
--
ALTER TABLE `faculty_workshop_fdp`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `finance`
--
ALTER TABLE `finance`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `funded_projects`
--
ALTER TABLE `funded_projects`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `governing_body`
--
ALTER TABLE `governing_body`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `guest_lectures_invited`
--
ALTER TABLE `guest_lectures_invited`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `hardware`
--
ALTER TABLE `hardware`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `industrial_collaboration_mou`
--
ALTER TABLE `industrial_collaboration_mou`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `industrial_visit`
--
ALTER TABLE `industrial_visit`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `journal_paper`
--
ALTER TABLE `journal_paper`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `other_membership`
--
ALTER TABLE `other_membership`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phd_scholar`
--
ALTER TABLE `phd_scholar`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `professional_activities`
--
ALTER TABLE `professional_activities`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `professional_body_membership`
--
ALTER TABLE `professional_body_membership`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects_handled`
--
ALTER TABLE `projects_handled`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seminar_workshop`
--
ALTER TABLE `seminar_workshop`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `software`
--
ALTER TABLE `software`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_achievement`
--
ALTER TABLE `staff_achievement`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_service`
--
ALTER TABLE `staff_service`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_achievement`
--
ALTER TABLE `student_achievement`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_activities`
--
ALTER TABLE `student_activities`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_publication`
--
ALTER TABLE `student_publication`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `academic_council`
--
ALTER TABLE `academic_council`
  ADD CONSTRAINT `academic_council_ibfk_1` FOREIGN KEY (`instituteName`) REFERENCES `institution` (`instituteName`);

--
-- Constraints for table `admissions`
--
ALTER TABLE `admissions`
  ADD CONSTRAINT `admissions_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`);

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`);

--
-- Constraints for table `book_chapter`
--
ALTER TABLE `book_chapter`
  ADD CONSTRAINT `book_chapter_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`);

--
-- Constraints for table `conference_paper`
--
ALTER TABLE `conference_paper`
  ADD CONSTRAINT `conference_paper_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`);

--
-- Constraints for table `consultancy`
--
ALTER TABLE `consultancy`
  ADD CONSTRAINT `consultancy_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`);

--
-- Constraints for table `courses_handled`
--
ALTER TABLE `courses_handled`
  ADD CONSTRAINT `courses_handled_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`);

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`instituteName`) REFERENCES `institution` (`instituteName`);

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`);

--
-- Constraints for table `faculty_conference_symposia`
--
ALTER TABLE `faculty_conference_symposia`
  ADD CONSTRAINT `faculty_conference_symposia_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`);

--
-- Constraints for table `faculty_guest_lecture`
--
ALTER TABLE `faculty_guest_lecture`
  ADD CONSTRAINT `faculty_guest_lecture_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`);

--
-- Constraints for table `faculty_patent`
--
ALTER TABLE `faculty_patent`
  ADD CONSTRAINT `faculty_patent_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`);

--
-- Constraints for table `faculty_qualification`
--
ALTER TABLE `faculty_qualification`
  ADD CONSTRAINT `faculty_qualification_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`);

--
-- Constraints for table `faculty_research`
--
ALTER TABLE `faculty_research`
  ADD CONSTRAINT `faculty_research_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`);

--
-- Constraints for table `faculty_service`
--
ALTER TABLE `faculty_service`
  ADD CONSTRAINT `faculty_service_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`);

--
-- Constraints for table `faculty_workshop_fdp`
--
ALTER TABLE `faculty_workshop_fdp`
  ADD CONSTRAINT `faculty_workshop_fdp_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`);

--
-- Constraints for table `finance`
--
ALTER TABLE `finance`
  ADD CONSTRAINT `finance_ibfk_1` FOREIGN KEY (`instituteName`) REFERENCES `institution` (`instituteName`);

--
-- Constraints for table `funded_projects`
--
ALTER TABLE `funded_projects`
  ADD CONSTRAINT `funded_projects_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`);

--
-- Constraints for table `governing_body`
--
ALTER TABLE `governing_body`
  ADD CONSTRAINT `governing_body_ibfk_1` FOREIGN KEY (`instituteName`) REFERENCES `institution` (`instituteName`);

--
-- Constraints for table `guest_lectures_invited`
--
ALTER TABLE `guest_lectures_invited`
  ADD CONSTRAINT `guest_lectures_invited_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`);

--
-- Constraints for table `hardware`
--
ALTER TABLE `hardware`
  ADD CONSTRAINT `hardware_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`);

--
-- Constraints for table `industrial_collaboration_mou`
--
ALTER TABLE `industrial_collaboration_mou`
  ADD CONSTRAINT `industrial_collaboration_mou_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`);

--
-- Constraints for table `industrial_visit`
--
ALTER TABLE `industrial_visit`
  ADD CONSTRAINT `industrial_visit_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`);

--
-- Constraints for table `journal_paper`
--
ALTER TABLE `journal_paper`
  ADD CONSTRAINT `journal_paper_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`);

--
-- Constraints for table `non_teaching_staff`
--
ALTER TABLE `non_teaching_staff`
  ADD CONSTRAINT `non_teaching_staff_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`);

--
-- Constraints for table `other_membership`
--
ALTER TABLE `other_membership`
  ADD CONSTRAINT `other_membership_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`);

--
-- Constraints for table `phd_scholar`
--
ALTER TABLE `phd_scholar`
  ADD CONSTRAINT `phd_scholar_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`);

--
-- Constraints for table `professional_activities`
--
ALTER TABLE `professional_activities`
  ADD CONSTRAINT `professional_activities_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`);

--
-- Constraints for table `professional_body_membership`
--
ALTER TABLE `professional_body_membership`
  ADD CONSTRAINT `professional_body_membership_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`);

--
-- Constraints for table `projects_handled`
--
ALTER TABLE `projects_handled`
  ADD CONSTRAINT `projects_handled_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`);

--
-- Constraints for table `scholarship`
--
ALTER TABLE `scholarship`
  ADD CONSTRAINT `scholarship_ibfk_1` FOREIGN KEY (`instituteName`) REFERENCES `institution` (`instituteName`);

--
-- Constraints for table `seminar_workshop`
--
ALTER TABLE `seminar_workshop`
  ADD CONSTRAINT `seminar_workshop_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`);

--
-- Constraints for table `software`
--
ALTER TABLE `software`
  ADD CONSTRAINT `software_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`);

--
-- Constraints for table `staff_achievement`
--
ALTER TABLE `staff_achievement`
  ADD CONSTRAINT `staff_achievement_ibfk_1` FOREIGN KEY (`staffId`) REFERENCES `non_teaching_staff` (`staffId`);

--
-- Constraints for table `staff_service`
--
ALTER TABLE `staff_service`
  ADD CONSTRAINT `staff_service_ibfk_1` FOREIGN KEY (`staffId`) REFERENCES `non_teaching_staff` (`staffId`);

--
-- Constraints for table `student_achievement`
--
ALTER TABLE `student_achievement`
  ADD CONSTRAINT `student_achievement_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`);

--
-- Constraints for table `student_activities`
--
ALTER TABLE `student_activities`
  ADD CONSTRAINT `student_activities_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`);

--
-- Constraints for table `student_publication`
--
ALTER TABLE `student_publication`
  ADD CONSTRAINT `student_publication_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
