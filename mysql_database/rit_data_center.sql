-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2018 at 06:09 AM
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
(25, 'Experts from outside the college representing area', 'Sri A T Samuel', 'Director, STUP Consultants, A – 1 Tower, 5th and 6th Floor, “Golden Enclave”, Airport Road, Bangalor', 'Member', 'Ramaiah Institute of Technology'),
(26, 'Experts from outside the college representing area', 'Dr. Parasuram Balasubramanian', 'Theme Work Analytics (P) Ltd, Gurukrupa, 508, 47th Cross, Jayanagar 5th Block, Bangalore - 560041', 'Member', 'Ramaiah Institute of Technology'),
(27, 'Experts from outside the college representing area', 'Dr V Gopalakrishna', 'Director, Integra Micro Systems -p Ltd, G5, Swiss Complex, 33, Race Course Road, Bangalore – 560001', 'Member', 'Ramaiah Institute of Technology'),
(28, 'Experts from outside the college representing area', 'Dr. Vikram M Gadre', 'Professor, Department of Electrical Engineering, IIT, Bombay, Powai, Mumbai - 400076', 'Member', 'Ramaiah Institute of Technology'),
(29, 'Nominees of the University', 'Dr. H C Nagaraj ', 'Principal, Nitte Meenakshi Institute of Technology, P.B.No.6429. Yelahanka, Bangalore 560064. ', 'Member', 'Ramaiah Institute of Technology'),
(30, 'Nominees of the University', 'Dr T Srinivasan', 'Professor, Department of Mechanical Engineering, R N S Institute of Technology, Rajarajeshwarinagar ', 'Member', 'Ramaiah Institute of Technology'),
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
('admin@msrit.edu', 'rit', 'college', 'admin'),
('cse@msrit.edu', 'rit', 'cse', 'coordinator'),
('dept_te@msrit.edu', 'te1234', 'te', 'coordinator'),
('hod_bt@msrit.edu', 'somepa', 'bt', 'hod'),
('hod_chy@msrit.edu', 'passlp', 'chy', 'hod'),
('hod_cse@msrit.edu', 'passlk', 'cse', 'hod'),
('hod_cv@msrit.edu', 'passll', 'cv', 'hod'),
('hod_ece@msrit.edu', 'passoi', 'ece', 'hod'),
('hod_ee@msrit.edu', 'passui', 'ee', 'hod'),
('hod_im@msrit.edu', 'passim', 'im', 'hod'),
('hod_is@msrit.edu', 'passlk', 'is', 'hod'),
('hod_it@msrit.edu', 'afehsc', 'it', 'hod'),
('hod_mat@msrit.edu', 'passvb', 'mat', 'hod'),
('hod_mba@msrit.edu', 'passmb', 'mba', 'hod'),
('hod_mca@msrit.edu', 'passvb', 'mca', 'hod'),
('hod_ml@msrit.edu', 'passml', 'ml', 'hod'),
('hod_phy@msrit.edu', 'passwe', 'phy', 'hod'),
('hod_te@msrit.edu', 'passqw', 'te', 'hod'),
('principal@msrit.edu', 'rit', 'college', 'principal');

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

--
-- Dumping data for table `admissions`
--

INSERT INTO `admissions` (`year`, `noOfUgStudents`, `noOfPgStudents`, `noOfPgStudentsWithGateScore`, `ugCet`, `ugComedK`, `pgCet`, `pgComedK`, `lateralEntry`, `fullTimePhd`, `partTimePhd`, `mscByResearch`, `departmentId`) VALUES
('', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ml');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `slNo` int(11) NOT NULL,
  `bookTitle` varchar(100) NOT NULL,
  `bookAuthors` varchar(100) NOT NULL,
  `bookPublisher` varchar(30) NOT NULL,
  `isbn` varchar(50) NOT NULL,
  `year` varchar(20) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`slNo`, `bookTitle`, `bookAuthors`, `bookPublisher`, `isbn`, `year`, `facultyId`) VALUES
(1, 'Data Mining - Principles and Applications', 'Dr. Jagadish S Kallimani', 'Elsevier and Fillip Learning', '', '2012', 'cse04'),
(2, 'Stastical Programming', 'Chetan Shetty, Sowmya B J', 'null', '', '2017', 'cse13'),
(3, 'Stastical Programming', 'Sowmya B J, Chetan Shetty', 'null', '', '2017', 'cse22');

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
  `isbn` varchar(50) NOT NULL,
  `year` varchar(20) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_chapter`
--

INSERT INTO `book_chapter` (`slNo`, `chapterName`, `bookName`, `chapterAuthors`, `publisher`, `isbn`, `year`, `facultyId`) VALUES
(1, '“Driving Big Data with Hadoop Technologies”,Cloud Infrastructures', 'null', 'Srinidhi H', 'null', '', '2012', 'cse27'),
(2, 'SABR: Secure Authentication-Based Routing in Large Scale Wireless Sensor Network', 'null', 'Dr. Anita Kanavalli', 'null', '', '2015', 'cse01'),
(3, 'Data Intensive Cloud Computing', 'null', 'Jayalakshmi D S', 'null', '', '2015', 'cse05'),
(4, '“Ubiquitous Computing for Cyber-Physical Systems', 'null', 'Srinidhi H', 'null', '', 'null', 'cse27'),
(5, 'A Viability Analysis of an Economical Private Cloud Storage Solution Powered by Raspberry Pi in the ', 'null', 'Srinidhi H', 'null', '', 'null', 'cse27'),
(6, 'GPU Implementation of Friend Recommendation System using CUDA for Social Networking Services', 'null', 'Srinidhi H', 'null', '', 'null', 'cse27'),
(7, 'Performance Analysis of Airplane Health Surveillance System', 'null', 'Dr. Seema S', 'Springer Nature Singapore  Ltd', '', '2017', 'cse03'),
(8, 'Computing and Network Sustainability', 'null', 'Sanjeetha. R', 'IoT-Enabled Integrated Intelligence System', '', '2017', 'cse07'),
(9, 'Kannada Handwritten Word Conversion to Electronic Textual Format Using HMM Model', 'null', 'Veena G S', 'null', '', '2016', 'cse09'),
(10, 'Lecture Notes in Networks and Systems', 'null', 'Veena G S', 'Springer Singapore', '', '2018', 'cse09'),
(11, 'Limitations of Conscious Machines', 'null', 'Dr. Jagadish S Kallimani', 'null', '', '2017', 'cse04'),
(24, 'Development of Path Loss Models for Localization and Creation of Wi-Fi Map in a Wireless Mesh Test B', 'Lecture Notes in Networks and Systems', 'Singh M.S., Jayaram P., Nikshitha R., Prerna P., Deepak M., Talasila ', 'Springer, Singapore', '', '2017', 'te02'),
(25, 'Triggering a Functional Electrical Stimulator Based on Gesture for Stroke-Induced Movement Disorder.', 'Lecture Notes in Networks and Systems', 'Raghavendra P., Talasila V., Sridhar V., Debur R', 'Vol 12. Springer, Singapore', '', '2017', 'te02');

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
  `publisher` varchar(50) NOT NULL,
  `year` varchar(10) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conference_paper`
--

INSERT INTO `conference_paper` (`slNo`, `authors`, `title`, `conferenceName`, `conferenceType`, `organizedBy`, `publisher`, `year`, `facultyId`) VALUES
(1, 'Dr. Anita Kanavalli', 'International Conference  on Image and Signal processing', 'null', 'international', 'Society of Information Processing and UVCE Bangalore', '', '2013', 'cse01'),
(2, 'Jayalakshmi D S', ' 2nd International Conference on Advances in Cloud Computing    (ACC -2013)', 'null', 'international', 'CSI, Bangalore', '', '2013', 'cse05'),
(3, 'J Geetha', '2nd International Conference on Advances in Cloud Computing –CSI Bangalore Chapter & CSI Division -5', 'null', 'international', 'NIMHANS convention Centre, Bangalore.', '', '2013', 'cse10'),
(4, 'Sini Anna Alex', 'IEEE CONNECT 2014', 'null', 'national', 'IISC,Bangalore', '', '2014', 'cse14'),
(5, 'Sini Anna Alex', 'SAP Faculty Day', 'null', 'national', 'SAP Labs Bangalore', '', '2014', 'cse14'),
(6, 'Sini Anna Alex', 'LDRA Academic Seminar - Providing Expertise for a Safer Tomorrow', 'null', 'national', 'null', '', '2014', 'cse14'),
(7, 'Vandana S Sardar', 'International Conference On Emerging Computation and Information Technologies ( ICECIT 2013)', 'null', 'international', 'SIT, Tumkur', '', '2013', 'cse15'),
(8, 'Divakar Harekal', 'Nokia Confluence February', 'null', 'national', 'National Institute of Design  ,Bangalore', '', '2013', 'cse18'),
(9, 'S.Rajarajeswari', 'International Conference ICHCI Aug2013', 'null', 'international', 'null', '', '2013', 'cse20'),
(10, 'S.Rajarajeswari', 'International conference on Emerging Computation and Information Technologies (ICECIT – 2013)', 'null', 'international', 'SIT Tumkur', '', '2013', 'cse20'),
(11, 'Ganeshayya Shidaganti', 'International Conference on Advances in Computing, Communications and Informatics (ICACCI-2013)', 'null', 'international', 'null', '', '2013', 'cse25'),
(12, 'Dr. Anita Kanavalli', 'International Multi Conference on Information Processing', 'null', 'international', 'UVCE Bangalore', '', '2014', 'cse01'),
(13, 'Dr. Anita Kanavalli', 'International Conference I4C', 'null', 'international', 'MSRIT', '', '2014', 'cse01'),
(14, 'Dr Annapurna P Patil', '5th IEEE International Advance Computing Conference.', 'null', 'international', 'BMSCE, Bangalore', '', '2015', 'cse02'),
(15, 'Dr Annapurna P Patil', 'International Conference on Circuits, Control, Communication and Computing.', 'null', 'international', 'MSRIT, Bangalore-54', '', '2014', 'cse02'),
(16, 'Jayalakshmi D S', '2014 IEEE Cloud Computing for Emerging Markets (CCEM) Conference', 'null', 'national', 'null', '', '2014', 'cse05'),
(17, 'Dr.Monica R Mundada', 'I4C2014- International Conference on Circuits, Communication, Control and Computing', 'null', 'international', 'MSRIT', '', '2014', 'cse06'),
(18, 'Parkavi.A', 'IEEE T4E conference', 'null', 'national', 'Amritha University, Kerala', '', '2014', 'cse08'),
(19, 'Mamatha V', ' 3 day IEEE International Conference on Smart Sensors and Systems', 'Evaluation of Modified PLS Regression Method to Fill the  Missing Values in Training Dataset', 'international', 'MSRIT, Bangalore', '', '2015', 'cse12'),
(20, 'Sini Anna Alex', 'T4E 2014- Technology for education, 6th IEEE Conference on Technology for Education 2014', 'null', 'national', 'Amrita University', '', '2014', 'cse14'),
(21, 'Divakar Harekal', '7th National Conference at SJB Institute of Technology Bangalore', 'Knowledge and Defect Management Approaches to Software Industries', 'national', 'SJBT Bangalore', '', '2015', 'cse18'),
(22, 'S.Rajarajeswari', 'International Conference on Circuits, Control, Communication and Computing,', 'null', 'international', 'MSRIT, Bangalore', '', '2014', 'cse20'),
(23, 'S.Rajarajeswari', '2nd International Conference on engineering Technology and Science. ICETS’15', 'null', 'international', 'Muthayammal College of Engineering, Rasipuram', '', '2015', 'cse20'),
(24, 'Pramod Sunagar', 'International conference on Circuits, Communication , Control and Computations - I4C2014', 'null', 'international', 'MSRIT', '', '2014', 'cse21'),
(25, 'Ganeshayya Shidaganti', 'International Conference on Circuits,Communication,Control and Computing(I4C 2014)', 'null', 'international', 'MSRIT', '', '2014', 'cse25'),
(26, 'Srinidhi H', '8th India Software Engineering Conference', 'null', 'national', 'null', '', '2015', 'cse27'),
(27, 'Ganeshayya Shidaganti', '10th Annual Conference of KSTA 2018', 'null', 'national', 'Reva University', '', '2018', 'cse25'),
(28, 'Ganeshayya Shidaganti', '5th IEEE International Conference', 'MOOCS,Innovations  and Technology in Education-MITE2017', 'international', 'BMS College of Engineering ', '', '2017', 'cse25'),
(29, 'Dr. Anita Kanavalli', 'Wireless and Optical Communications Networks (WOCN), 2015 Twelfth International Conference', 'Intelligent Transportation System based on the Principles of Service-Oriented Architecture ', 'international', 'null', '', '2015', 'cse01'),
(30, 'Dr. Anita Kanavalli', 'at ICICSE-2018: 6th- International Conference on Innovations in Computer Science & Engineering, 17-1', 'Assessment Framework Modeling Tool Using Location Aware Computing for Agriculture Pasteurization and', 'international', 'Computer Society of India (CSI)', '', '2018', 'cse01'),
(31, 'Dr. Anita Kanavalli', 'International Journal of Innovations & Advancement in Computer Science', 'A Vehicular Apprehension Scheme in Wireless Networks', 'international', 'null', '', '2017', 'cse01'),
(32, 'Dr. Anita Kanavalli', 'International Conference On New Trends In Engineering &amp; Technology\r\n', 'Detection of DDoS attacks on Controller and its Mitigation at Switch and Host Level in Software Defi', 'national', 'GRT college, Chennai', '', '2018', 'cse01'),
(35, 'J Geetha', '2nd International Conference on Advances in Cloud Computing –CSI Bangalore Chapter & CSI Division -5', 'null', 'international', 'NIMHANS convention Centre, Bangalore.', '', '2013', 'ise01'),
(39, 'Vandana S Sardar', 'International Conference On Emerging Computation and Information Technologies ( ICECIT 2013)', 'null', 'international', 'SIT, Tumkur', '', '2013', 'ece02'),
(63, 'Dr. Anita Kanavalli', 'International Journal of Innovations & Advancement in Computer Science', 'A Vehicular Apprehension Scheme in Wireless Networks', 'international', 'null', '', '2017', 'ise01'),
(64, 'Dr. Anita Kanavalli', 'International Conference On New Trends In Engineering &amp; Technology\r\n', 'Detection of DDoS attacks on Controller and its Mitigation at Switch and Host Level in Software Defi', 'national', 'GRT college, Chennai', '', '2018', 'ece02'),
(65, 'Ramya H R , Dr.B K Sujatha', 'Fuzzy Logic', 'I4C 2016', 'IEEE', 'M S R I T', '', '2016', 'te09'),
(66, 'ARVIND KUMAR G', 'Evaluation of image denoising techniques a performance perspective', 'SCOPES-2016', 'INTERNATIONAL', 'Centurion University of Technology and Management', '', '2016', 'te14'),
(67, 'Parimala.P, Raol.J.R', '”Image centroid tracking using Square root Information Filter”', 'International Conference on Information Technology, Computer science & Engineering', 'International Conference', 'www.iraj.in', '', '2015', 'te07'),
(68, 'Umesharaddy, B.K.Sujatha', 'Optimization of QPSK MODEM with AWGN Implemented in FPGA', 'International Conference on Inventive Systems and Control (ICISC-2017)', 'International Conference', 'JCTCET, COIMBATORE', '', '2017', 'te10'),
(69, 'Umesharaddy, B.K.Sujatha', 'Performance Improvement of QPSK MODEM Implemented in FPGA.', 'International Conference on Smart Sensors and Systems (IC-SSS) 2015 ', 'International Conference', 'MSRIT, BANGALORE-560054', '', '2015', 'te10'),
(70, 'Rajesh R,Ramya H R', 'Assessment of Automative RADAR SIL data by correlation methods ', 'International Conference on Signal, Image Processing Communication and Automation - ICSIPCA- 2017', 'IEEE,ISBN: 978-1-5108-5670-7', 'JSS', '', 'May 2017', 'te09'),
(71, 'Ankit Jain, Sualeha Rahman, Krishna Prasad ', '“IP Camera Interface for Ship Surveillance System” ', 'National Conference on Emerging Mobile Technologies &Policies, ', 'National ', 'Department of Telecommunication RIT', '', 'May2012', 'te05'),
(72, 'Raswithej Vailaya.S, S J Krishnaprasad, P S Sura ', 'Design of Quasi-Cyclic Low Density    Parity Check Codes”', 'National Conference on Emerging Mobile Technologies &Policies,', 'National', 'Department of Telecommunication RIT', '', 'May2012', 'te05'),
(73, 'Sharatchandra P.S ,S J Krishna Prasad', 'Implementation of Greedy Permutation Algorithm for LDPC Encoding Of CMMB', 'National Conference on Emerging Mobile Technologies &Policies,', 'National', 'Department of Telecommunication RIT', '', 'May2012', 'te05'),
(74, 'Swetha D.S, S.J Krishna Prasad', 'A Mobile Application for Intrusion Detection And Avoidance', 'National Conference on Emerging Mobile Technologies &Policies,', 'National', 'Department of Telecommunication RIT', '', 'May2012', 'te05'),
(75, 'Krishna Prasad S J, Priyanka D C, Viswanath Talasila   ', 'A Framework for classifying  Physiological tremor variants Employing Principal Component Analysis', 'International conference on Circuits, Communication, control and Computing I4C', 'International', 'Cicuit Branches RIT', '', 'Nov 2014', 'te05'),
(76, 'Sheela C.Loni ,Krishna Prasad ', '“ Development of Vehicle liecense plate recognition system using Morphological approach and Template', 'International conference    on advanced trends in engineering', 'International', 'Datta Meghe College of Engineering ,Airoli ,Navi Mumbai', '', 'Apr2018', 'te05'),
(77, 'Viswanath Talasila, Ramkrishna Pasumarthy', 'A port-Hamiltonian Formulation of a Wireless Communication System', 'Mathematical Control Theory ', 'Springer International Publishing', '', '', '2015', 'te02'),
(78, 'Aditya B, Santosh K, Udith M, Sandeep KE, Viswanath T ', 'Significant social factors of Real Estate Investment', 'International Conference on Communication and Signal Processing', '', 'Melmaruvathur, Tamil Nadu', '', 'April 3-5,', 'te02'),
(79, 'Bhavana C, Jishnu Gopal, Raghavendra P, K M Vanitha, Viswanath Talasila', 'Techniques of measurement for Parkinson’s tremor highlighting advantages of embedded IMU over EMG', 'ICRTIT2016', 'Anna university, MIT campus, Chennai', '', '', ', April 8t', 'te02'),
(80, 'Viswanath Talasila', 'Topological Stability Analysis of Communication Systems', 'Indian Control Conference', '', 'IIT-Madras', '', '5-7 Januar', 'te02'),
(81, 'Eswaran, Rajatha,Viswanath Talasila', 'Design of a smart pressure signal based biometric system for aircraft cockpit security', 'IEEE International Advance Computing Conference 2015', '', '', '', '2015', 'te02'),
(82, 'Raghavendra P, Sachin M, Srinivasa PS, Viswanath Talasila', 'Road Quality Measurement and Analysis', 'International Conference on Circuits, Control, Communication and Computing', '', '', '', '22-23 Nove', 'te02'),
(83, 'SJ Krishna Prasad, Priyanka DC, Ramesh Debur, Viswanath Talasila', '21.    A Frame Work for Classifying Physiological Tremor Variants Employing Principal Component Anal', 'International Conference on Circuits, Control, Communication and Computing', '', 'Bangalore', '', '22-23 Nove', 'te02'),
(84, 'KavyaShree E, Ravishankar D, Mahesh G, Viswanath Talasila', 'Lung segmentation from CT scanned images', '3rd National Conference, RATE 2014', '', 'T John Institute of Technology', '', 'March 26, ', 'te02'),
(85, 'Ravishankar D, KavyaShree E, Mahesh G, Viswanath Talasila ', '19.    An image processing approach for automated detection of lower respiratory system infections', '3rd National Conference, RATE 2014', '', 'T John Institute of Technology', '', 'March 26, ', 'te02'),
(86, 'Sandeep Kumar E, Viswanath Talasila', 'Leaf Features based approach for Automated Identification of Medicinal Plants', 'International Conference on Communication and Signal Processing (ICCSP) 2014', '', 'Melmaruvathur, Tamilnadu', '', '3-5 April,', 'te02'),
(87, 'Harshitha R, Manasa ManoharB, Dhanya PC, Manoj PD, Swathi S, Amogh M, Viswanath Talasila, HS Jamadag', 'Wearable Cardiac Detector', ', 37th National Systems Conference', '', 'IIT-Jodhpur', '', '05-07 Dece', 'te02'),
(88, 'Sriragh Karat, Sayantani Goswami, Aparna Sridhar, Aakash Pathak, Sachin D S,Sahana K S, Viswanath Ta', 'CLOSENET - Mesh Wi-Fi in areas of remote connectivity', '37th National Systems Conference', '', 'IIT-Jodhpur', '', '05-07 Dece', 'te02'),
(89, 'Viswanath Talasila, Ramkrishna Pasumarthy, Sindhu S Babu, Sudharshan Adiga ', 'A Systems View of Pathological Tremors', '37th National Systems Conference', '', 'IIT-Jodhpur', '', '05-07 Dece', 'te02'),
(90, 'Akshay K M, Swetha Amit ', 'Analysis and Design of a Phased Array Antenna using Circular Microstrip Patch Elements with BST Tech', '11th International Conference- Antenna Test & Measurement Society ( A T M S), ', '', 'ATMS ', '', '2018', 'te13'),
(91, 'Divyashree J, Ashlesha Bhalare Shivananda, Swetha Amit', 'Design and Development of Metamaterial Antennas on different Substrates for its Performance Evaluati', '11th International Conference- Antenna Test & Measurement Society ( A T M S)', '', 'ATMS', '', '2018', 'te13'),
(92, 'Pallavi  T N, Mala  J, Swetha Amit ', 'Analysis and design of Hexagonal Shape Fractal Wideband Antenna', '11th International Conference- Antenna Test & Measurement Society ( A T M S)', '', '', '', '2018', 'te13'),
(93, 'Swetha Amit, Oshin S P', 'Design, Implementation and Performance analysis of a high gain UWB Slot Wearable Antenna with Human ', '2017 IEEE International Conference on Antenna Innovations & Modern Technologies for Ground, Aircraft', '', '', '', '2017', 'te13'),
(94, 'Oshin S P, Swetha Amit', 'Design and analysis high gain UWB textile Antenna for wearable applications', 'IEEE International Conference on Recent Trends in Electronics Information Communication Technology (', '', '', '', '2017', 'te13'),
(95, 'Swetha Amit, Nisha S L', 'Design and Development of Printed Dipole Antenna with Array Configuration for GPS application', 'IEEE 2016 International Conference on Circuits, Controls, Communications and Computing (I4C) held du', '', '', '', '2016', 'te13'),
(96, 'Thalath Farheen Khanum, Swetha Amit', 'A compact Wideband Sierpinski Antenna loaded with Metamaterial', 'IEEE 2016 International Conference on Electrical, Electronics, and Optimization Techniques (ICEEOT),', '', 'IEEE 2016 International Conference on Electrical, Electronics, and Optimization Techniques (ICEEOT),', '', '2016', 'te13'),
(97, 'Thalath Farheen Khanum, Swetha Amit', 'Design and Analysis of Multiband Symmetrical MLA with Fractal Metamaterial', 'IEEE 2016 International Conference on Electrical, Electronics, and Optimization Techniques (ICEEOT)', '', 'DMJ College of Engineering, Chennai, Tamil Nadu, India during 3rd to 5th March 2016', '', '2016', 'te13'),
(98, 'Thalath Farheen Khanum, Swetha Amit', 'Design and Simulation of Symmetrical MLA-PIFA with Metamaterial', '2016 IEEE International Conference on Recent Trends in Electronics, Information & Communication Tech', '', 'Sri Venkateshwara college of Engineering, Bangalore, Karnataka ,India during 20-21 May-2016', '', '2016', 'te13'),
(99, 'Swetha Amit', 'Design of compact bent dipole antenna and its array with high gain performance for GPS application', '2016 8th International Conference on Communication Systems and Networks (COMSNETS), 5th to 10th Janu', '', '', '', '2016', 'te13'),
(100, 'Rakhi.S , Dr. Shobha.K .R', 'Performance Analysis of an Efficient Data-Centric Misbehavior Detection Technique for Vehicular Netw', 'International conference on Computer Networks and Inventive Communication Technologies (ICCNCT - 201', 'International', 'RVS Technical Campus, Coimbatore, India ', '', '26-27 Apri', 'te03'),
(101, ' Sampada H K, Dr. Shobha.K .R ', 'Performance Analysis of Energy Efficient MANETs- using MODIFIED AODV (M-AODV)', 'International conference on Computer Networks and Inventive Communication Technologies (ICCNCT - 201', 'International', 'RVS Technical Campus, Coimbatore, India', '', '26-27 Apri', 'te03'),
(102, ' Kshama S B, Dr. Shobha.K .R  ', 'A Novel Load Balancing Algorithm Based On the Capacity of the Virtual Machines', 'International Conference on Advances in Computing and Data Sciences', 'International', ' Uttaranchal University, Dehradun, Uttarakhand, India', '', ' April 20-', 'te03'),
(103, ' PrathibhaR , Swetha  L , Dr Shobha K R     ', 'Brain Computer Interface: Design and Development of a Smart Robotic Gripper for a Prosthesis Environ', 'IEEE International Conference on Network & Advances in Computational Technologies ( NetACT 17)', 'International', 'Mar Baselios College of Engineering in association with Bowie State University USA, Gannon Universit', '', '20th -22nd', 'te03'),
(104, ' Sindhura B, Dr.Shobha K R', 'Implementation and Itesting of open slow switch Using   FPGA', 'The eight International Conference on Computing, Communication and Networking Technologies', 'International', 'IIT, Delhi', '', '3rd to 5th', 'te03'),
(105, ' Athmiya N S, Dr. Shobha K R, ValluriSarimela in , ', 'Feasibility Study and Implementation of OpenFlow based SDN Controller for Tactical Scenario', 'IEEE International Conference On Recent Trends In Electronics Information Communication Technology', 'International', '', '', 'May 20-21,', 'te03'),
(106, ' Anjana S, Sahana M N , Ankit S , K Natarajan, K R shobha   ', 'An IoT based 6 LOWPAN enabled Experiment for Water managaement', 'IEEE International Conference on Advanced Networks and Telecommunication Systems(ANTS)', 'International', 'Kolkata , INDIA', '', ' December ', 'te03'),
(107, ' Sahana M N ,AnjanaS,Ankith S ,K Natarajan , K R Shobha and A Paventhan ', 'Home energy Management Leveraging Open IoT Protocol Stack', 'IEEE Recent Advances in Computational Systems ', 'International', ' IEEE Kerala Section in Trivandrum, India', '', 'December 1', 'te03'),
(108, 'Ankith S, Anjana S, Sahana M N, Praneeta Mallela, K Natarajan, K R Shobha,APaventhan, NeenaPahuja', 'Design of IPv6 Network enabled SmartWater Flow Meter System for India ', 'Proceedings of the12th APAN – Network Research Workshop2015', 'International', 'University of Malaya,Kuala Lumpur, Malaysia', '', '10th Augus', 'te03'),
(109, ' Sampada H K, Dr.Shobha K R, Rakhi S  ', 'Review on Prevention and Detection of Black hole Attack in MANETs', 'International conference on Emerging Trends in Engineering Sciences 2015', 'National', 'Jain college of Engineering, Belgaum', '', '2015', 'te03'),
(110, ' Rakhi S, Dr.Shobha K R, Sampada H K ', 'A Comprehensive Survey on Security Issues in VANETs for Safe Communication', 'International conference on Emerging Trends in Engineering Sciences 2015', 'International', 'Jain college of Engineering, Belgaum', '', '2015', 'te03'),
(111, ' Adarsh. B. U ,DivyaDarshini. B  , Shobha K. R, K. Natarajan,  A. Paventhan, Sai Krishna Allu, Neena', 'Design of 6LoWPAN enabled Real Time Water Quality Monitoring System using CoAP', 'Network Research Workshop Proceedings of the Asia-Pacific Advanced Network 2014', 'International', '', '', '2014', 'te03'),
(112, ' Adarsh.B.U, Shobha K R, Dr. K. Natarajan', 'CoAP Based Wireless Sensor Network Design for Effluent Treatment of Water in Textile Industries', 'International Journal of  Engineering Research &Technology (IJERT)', 'International', '', '', 'May 2014', 'te03'),
(113, ' DivyaDarshini.B, Shobha K R,, Dr. K. Natarajan ', 'Design of Real Time Water Quality Monitoring System for Domestic and Drinking Water Using WSN', 'National Conference on Emerging Trends in Communication and Biomedical Engineering, NCECB-2014', 'National', '', '', '2014', 'te03'),
(114, ' Raghu R and Shobha K R  ', 'JavaScript Application Framework for Mobile Devices', 'International Conference on Computing and Communication Systems', 'National', 'Vellore , TN', '', 'Dec 2011', 'te03'),
(115, ' Shobha.K.R., Karthik Shetty and Dr.K.Rajanikanth ', 'Efficient Flooding using Prefetching in On-Demand Routing Protocols for Mobile Ad-hoc Networks', '17th IEEE International conference on Networks, ICON 2011', 'International', 'Singapore', '', 'December 2', 'te03'),
(116, ' Shobha.K.R. and Dr.K.Rajanikanth', 'Enhanced AODV Routing Protocol for Mobile Ad hoc Networks', 'First International Conference on Computer Science and Information Technology, CCSIT 2011', 'International', 'Bangalore, INDIA', '', 'January 20', 'te03'),
(117, ' Shobha.K.R. and Dr.K.Rajanikanth ', ' Efficient flooding using relay routing in on-demand routing protocol for Mobile Ad hoc Networks', 'IEEE 9th Malaysia International Conference on Communication, MICC 2009', 'International', 'Malaysia', '', ' December ', 'te03'),
(118, ' Shobha.K.R. and Dr.K.Rajanikanth  ', 'Intelligent Caching in On-Demand Routing Protocol Mobile Ad hoc Networks', ' International Conference on Computer Networks and Mobile Computing, ICCNMC 2009', 'International', ' Singapore', '', ' August 20', 'te03'),
(119, ' Shobha.K.R. and Dr.K.Rajanikanth ', 'Powerful DSR using on demand Clustering', 'National Conference on Information Technology Trends in Engineering Applications, NEC 2009', 'National', 'DSCE, Bangalore, INDIA', '', 'March 2009', 'te03'),
(120, ' Shobha.K.R. and Dr.K.Rajanikanth ', 'Clustering techniques in Wireless Ad hoc Networks- A study', 'National Conference on current trends in Wired and Wireless Communication, CTWWC-09', 'National', 'CSI Institute of Technology, Kanyakumari, Tamilnadu, INDIA', '', 'February 2', 'te03'),
(121, 'Nandeesh M S, Arjun Reddy, R Prabhakara', 'Investigations On Effect of CFRP Strips Retrofitted Using NSM Method On Two-Way NSC and HSC Slabs Su', 'ICRAES', 'International', 'MSRIT, Bangalore', '', '2016', 'cv01'),
(122, 'Arjun Reddy, Nandeesh M S, R Prabhakara', 'Studies on Strength and Deformation Behaviour of Two-way NSC and HSC Slabs under Single Point Loadin', 'ICRAES', 'International', 'MSRIT, Bangalore', '', '2016', 'cv01');

-- --------------------------------------------------------

--
-- Table structure for table `consultancy`
--

CREATE TABLE `consultancy` (
  `slNo` int(11) NOT NULL,
  `role` varchar(50) NOT NULL,
  `projectTitle` varchar(100) NOT NULL,
  `typeOfConsultancy` varchar(30) NOT NULL,
  `organization` varchar(100) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `sanctionedDate` date NOT NULL,
  `amountReceived` int(11) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `courses_handled`
--

CREATE TABLE `courses_handled` (
  `slNo` int(11) NOT NULL,
  `subjectName` varchar(50) NOT NULL,
  `ugOrPg` varchar(5) NOT NULL,
  `typeOfSubject` varchar(50) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses_handled`
--

INSERT INTO `courses_handled` (`slNo`, `subjectName`, `ugOrPg`, `typeOfSubject`, `facultyId`) VALUES
(1, 'DSP Architecture,Linear Algebra,Basic Electronics,', 'UG,PG', '', 'te09'),
(2, 'Error Control coding (TC604), digital switching sy', 'UG ', '', 'te07'),
(3, 'Error Control coding (TC604), digital switching sy', 'UGPG ', '', 'te07'),
(4, 'Wireless sensor Networks(MDCE21), WSN Lab (MDCEL24', 'UG & ', '', 'te07'),
(5, 'Basic electronics', 'ug', '', 'te12'),
(6, 'Real time embedded system design(even sem)', 'pg', '', 'te12'),
(7, 'Basic electronics', 'ug', '', 'te12'),
(8, 'Linear integrated  circuits', 'ug', '', 'te12'),
(9, '', 'ug', '', 'te12'),
(10, 'Basic electronics', 'ug', '', 'te12'),
(11, 'Linear integrated  circuits', 'ug', '', 'te12'),
(12, 'Linear integrated  circuits    , basic electronics', 'ug', '', 'te12'),
(13, 'Basic electronics, 3g/4g wireless mobile communica', 'ug  a', '', 'te12'),
(14, 'Basic electronics, 3g/4g wireless mobile communica', 'ug  a', '', 'te12'),
(15, 'SOFTWARE DEFINED WIRELESS SYSTEM DESIGN', 'PG', '', 'te10'),
(16, 'DIGITAL CIRCUIT DESIGN', 'UG', '', 'te10'),
(17, 'DIGITAL SIGNAL PROCESSING', 'UG', '', 'te10'),
(19, 'System simulation and Modeling', 'UG', '', 'te02'),
(20, 'Network Analysis', 'UG', '', 'te02'),
(21, 'Intellectual Property Rights', 'UG', '', 'te02'),
(22, 'System simulation and Modeling', 'UG', '', 'te02'),
(23, 'Network Analysis', 'UG', '', 'te02'),
(24, 'Microwave and RF Circuits', 'UG', '', 'te13'),
(25, 'Antenna and Wave Propagation', 'UG', '', 'te13'),
(26, 'Intellectual Property Rights', 'ug', '', 'te13'),
(27, 'Basic Electronics', 'UG', '', 'te13'),
(28, 'Management & Entrepreneurship', 'UG', '', 'te13'),
(29, 'Data Structures Using C', 'Ug', '', 'ece02'),
(31, '', 'Ug', '', 'cv01');

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
('bt', 'bio-technology', '1990', '', '', 'hod_bt@msrit.edu', '', '', 'Ramaiah Institute of Technology'),
('ch', '', '', '', '', '', '', '', 'Ramaiah Institute of Technology'),
('chy', '', '', '', '', 'hod_chy@msrit.edu', '', '', 'Ramaiah Institute of Technology'),
('cse', 'Computer Science & Engineering', '1984', 'division of electrical sciences block, 1st floor', '080-23600822/23606939', 'hod_cse@msrit.edu', 'Dr. Anita Kanavalli', '9845899681\r\n', 'Ramaiah Institute of Technology'),
('cv', 'Civil Engineering', '1971', 'engineering sciences block', '080-23600822/23606939', 'hod-cv@msrit.edu', 'Dr. C G Puttappa', '9844290938', 'Ramaiah Institute of Technology'),
('ece', 'Electronics and Communication Engineering', '1975', 'division of electrical sciences block, 3rd floor', '080-23600822/23606939', 'hod_ece@msrit.edu', 'Dr. S Sethu Selvi', '9481183798', 'Ramaiah Institute of Technology'),
('ee', '', '', '', '', '', '', '', 'Ramaiah Institute of Technology'),
('im', 'Industrial Engineering & Management', '1979', 'engineering sciences block', '080-23600822/23606939', 'hod_im@msrit.edu', 'Dr. G. S. Prakash', '9448226933', 'Ramaiah Institute of Technology'),
('ise', 'Information Science & Engineering', '1992', 'division of electrical sciences block, 2nd floor', '080-23600822/23606939', 'hod_is@msrit.edu', 'DR. VIJAYA KUMAR B. P.', '9980634134', 'Ramaiah Institute of Technology'),
('it', '', '', '', '', 'hod_it@msrit.edu', '', '', 'Ramaiah Institute of Technology'),
('mat', '', '', '', '', 'hod_mat@msrit.edu', '', '', 'Ramaiah Institute of Technology'),
('mba', '', '', '', '', '', '', '', 'Ramaiah Institute of Technology'),
('mca', '', '', '', '', 'hod_mca@msrit.edu', '', '', 'Ramaiah Institute of Technology'),
('me', 'Mechanical Engineering', '1962', 'engineering sciences block', '080-23600822/23606939', 'hod-me@msrit.edu', 'Dr. Raji George', '9845318047', 'Ramaiah Institute of Technology'),
('ml', '', '', '', '', 'hod_ml@msrit.edu', '', '', 'Ramaiah Institute of Technology'),
('phy', '', '', '', '', 'hod_phy@msrit.edu', '', '', 'Ramaiah Institute of Technology'),
('te', 'Telecommunication and engineering', '', '', '', '', '', '', 'Ramaiah Institute of Technology');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `facultyId` varchar(10) NOT NULL,
  `facultyName` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(200) NOT NULL,
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
  `about` varchar(500) DEFAULT NULL,
  `designation` varchar(20) NOT NULL,
  `industryExperience` varchar(20) NOT NULL,
  `researchExperience` varchar(20) NOT NULL,
  `teachingExperience` varchar(20) NOT NULL,
  `payScale` varchar(20) NOT NULL,
  `payScaleBasic` varchar(20) NOT NULL,
  `payScaleAgp` varchar(20) NOT NULL,
  `payScaleBand` varchar(20) NOT NULL,
  `highestQualification` varchar(20) NOT NULL,
  `departmentId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`facultyId`, `facultyName`, `gender`, `address`, `religion`, `caste`, `category`, `dob`, `natureOfAppointment`, `contactNumber`, `emailId`, `password`, `panNumber`, `accountNumber`, `pfNumber`, `about`, `designation`, `industryExperience`, `researchExperience`, `teachingExperience`, `payScale`, `payScaleBasic`, `payScaleAgp`, `payScaleBand`, `highestQualification`, `departmentId`) VALUES
('bt01', 'krishnamurthytp@msrit.edu', 'Male', '#184, 4th Cross, 4th main, Mathikere Extension, Ba', 'Hindu', 'Vokkaliga', 'General', '1986-10-22', 'Regular', '09538541385', 'krishnamurthytp@msrit.edu', 'bt01', 'BEXPK2232L', '141201011017388', 'KN/BN/8146/1631', 'Working as an assistant professor in biotechnology department of MSRIT. Areas of interests includes Food & Bioprocess engineering and Bioinformatics.', 'Professor', '', '', '', '', '', '', '', '', 'bt'),
('chy01', 'muralikp@msrit.edu', 'undefined', 'null', 'null', 'null', 'null', '0000-00-00', 'Regular', '', 'muralikp@msrit.edu', 'chy01', 'null', 'null', 'null', 'null', '', '', '', '', '', '', '', '', '', 'chy'),
('cse01', 'Anita Kanavalli', 'Male', 'NO 25 ANASWARA 1ST MAIN, 2nd cross MSR Ngar', 'Christian', 'Protestant', 'GM', '1967-03-31', 'Regular', '9845899681', 'anithak@msrit.edu', 'rit', 'AKOPK7232J', '141201010012262', 'KN/BN/8146/0754', 'Dr. Anita Kanavalli is a working as the Head of Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include Adhoc networks, high performance computing and microprocessors.', 'Professor', '', '', '', '', '', '', '', '', 'cse'),
('cse02', 'Annapurna P. Patil', 'Female', '#308, C Block Gowri Apartment, NEW BEL Road', 'Hindu', 'Veershaiva Jang', 'GM 371J', '1972-10-10', 'Regular', '9945409177', 'annapurnap2@msrit.edu', 'rit', 'AIMPP9079L', '141201010013904', 'KN/BN/8146/0852', 'Dr. Annapurna P. Patil is working as a Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include Wireless Networks, Artificial Intelligence, Protocol Engineering, Cloud Computing and IOT, Data Structures and Analysis of Algorithms.', 'PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse03', 'Seema S', 'Female', '#327, 7TH CROSS,  3RD BLOCK, HMT layout, Vidyarany', 'Hindu', 'Marathi', 'GM', '1970-06-29', 'Regular', '9901688004', 'seemas@msrit.edu', 'rit', 'ARJPS9571N', '141201010010588', 'KN/BN/8146/0779', 'Dr. S. Seema is working as a Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include databases, data mining and big data, computer graphics, bioinformatics and data analytics.', 'PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse04', 'Jagadish S.K', 'Male', 'NO.79, 9TH MAIN, 6TH CROSS, J C Nagar, Kurubara ha', 'Hindu', 'Lingayath', 'GM', '1977-07-17', 'Regular', '9844413643', 'jagadish.k@msrit.edu', 'rit', 'AHRPK8437B', '141201010015421', 'KN/BN/8146/0942', 'Dr. Jagadish S. Kallimani is working as an Associate Professor in Computer Science Department of Ramaiah Institute of Technology. His areas of interest include artificial intelligence, natural language processing, information retrieval, information extraction, and statistical machine learning.', 'ASSOCIATE PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse05', 'Jayalakshmi D.S', 'Female', '#325/6, \"SRINIDHI\", F BLOCK, Sahakara nagar', 'Hindu', 'Bramhin', 'GM', '1967-04-21', 'Regular', '8197820657', 'jayalakshmids@msrit.edu', 'rit', 'AHGPD5509A', '141201010018116', 'KN/BN/8146/0984', 'Jayalakshmi D. S. is working as an Associate Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include cloud computing, big data, computer graphics.', 'ASSOCIATE PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse06', 'Monica R Mundada', 'Female', '137/A1, 13th cross ASCS layout, Near RMV Hosptial,', 'Hindu', 'Marwadi', 'GM', '1974-09-15', 'Regular', '9008365087', 'monica@msrit.edu', 'rit', 'AIWPM8762H', '141201010015521', 'KN/BN/8146/0924', 'Dr. Monica R. Mundada is working as an Associate Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include theory of computation, wireless sensor networks, computer networks, data communications, and IOT.', 'ASSOCIATE PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse07', 'Sanjeetha R', 'Female', 'Sri Manjunatha Swamy Nilaya, #78, 2nd cross, Vinay', 'Hindu', 'vokkaliga', 'vokkaliga', '1980-10-16', 'Regular', '9986406819', 'sanjeetha.r@msrit.edu', 'rit', 'BTYPS2093H', '141201011000968', 'KN/BN/8146/1102', 'Sanjeetha R. is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include software defined networks, computer networks, data communications, operating systems, and database systems.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse08', 'A Parkavi', 'Female', 'C/O, C.SINGARAM, NO.124, 6TH MAIN, 3RD CROSS, IST ', 'Christian', 'Pallan', 'SC', '1979-05-05', 'Regular', '9902524685', 'parkavi.a@msrit.edu', 'rit', 'APHPP4199M', '141201011000983', 'KN/BN/8146/1097', 'Parkavi A. is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include data mining, educational data mining, social network analysis, compiler design and educational technology.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse09', 'Veena GS ', 'Female', '#48, 2nd Main, 2nd Stage, Near Aveksha Hospital, S', 'Hindu', 'Bramhin', 'Other', '1972-06-15', 'Regular', '9886030842', 'veenags@msrit.edu', 'rit', 'AKGPG5600C', '141201011000958', 'KN/BN/8146/1099', 'Veena G.S. is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include, image processing, embedded systems, mathematical modeling, cognition, IOT.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse10', 'J Geetha', 'Female', 'NO-106 SLV Durga Apartments Vidyaranipura,  BANGAL', 'Hindu', 'reddy', 'GM', '1979-07-16', 'Regular', '9916912573', 'geetha@msrit.edu', 'rit', 'ALDPG4963E', '141201011001787', 'KN/BN/8146/1161', 'Geetha J. is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include cloud computing, big data, semantic web, graph theory and web designing.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse11', 'T.N R. Kumar', 'Male', '#1/3(212) 3RD CROSS CHIKKANNA, Gardenns Shankarpur', 'Hindu', 'Bramhin', 'Other', '1967-06-19', 'Regular', '9844636865', 'tnrkumar@msrit.edu', 'rit', 'AHWPR2220G', '141201011002750', 'KN/BN/8146/1174', 'Dr. T.N.R.Kumar is working as an Associate Professor in Computer Science Department of Ramaiah Institute of Technology. His areas of interest include image processing, software engineering and computer networks.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse12', 'Mamatha  Jadhav V', 'Female', '#2709 11TH MAIN D BLOCK, II stage Rajajinagar Blor', 'Hindu', 'Marathi', 'Other', '1973-10-22', 'Regular', '9844094962', 'mamsdalvi@msrit.edu', 'rit', 'AKDPJ5187A', '141201011011032', 'KN/BN/8146/1263', 'Mamatha Jadhav V. is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include computer networks, database management systems and data mining.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse13', 'Chethan C T', 'Male', '#208 PATEL CHANNAPA\'S, 1ST Main Dwaraka nagar BSK ', 'Hindu', 'Gowda', '3A', '1985-10-28', 'Regular', '9449035534', 'ctchethan@msrit.edu', 'rit', 'AIDPC7398G', '141201011004919', 'KN/BN/8146/1299', 'Mr. Chethan is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. His areas of interest include analytics, entrepreneurship, incubation, consultancy, and industry association.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse14', 'Sini Anna Alex', 'Female', '#171, BETHEL, 1st main, AYR Layout, Shettyhalli, J', 'Christian', 'Orthodox', 'GM', '1983-02-24', 'Regular', '9845437091', 'sinialex@msrit.edu', 'rit', 'CDKPS5458K', '141201011005688', 'KN/BN/8146/1322', 'Mrs. Sini Anna Alex is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include, ubiquitous computing, compiler design, mobile and wireless sensor networks, distributed, database systems and algorithm analysis.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse15', 'Sardar Vandana Sudhakar', 'Female', '#14, Venkateshwara Layout, MSR Nagar', 'Hindu', 'Mahar', 'SC', '1979-05-19', 'Regular', '9886878953', 'vandana.s@msrit.edu', 'rit', 'BCBPS9768K', '141201011007877', 'KN/BN/8146/1398', 'Vandana Sudhakar Sardar is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include information retrieval and machine learning.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse16', 'Meera Devi A Kawalgi', 'Female', '#307, Garuda Royal Apt, Sharadamba Nagar, Jalahall', 'Hindu', 'Lingayath', 'GM', '1984-09-13', 'Regular', '8792068734', 'meera_ak@msrit.edu', 'rit', 'AWCPP1652M', '141201011007888', 'KN/BN/8146/1400', 'Meeradevi A. K. is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include Computer Networks, Information Security, Data Communications, WSN & IoT.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse17', 'Malle Gowda M', 'Male', '#243/2 , II CROSS , mathikere(near univercell)', 'Hindu', 'Gowda', 'OBC', '1983-09-12', 'Regular', '9535834471', 'mallegowdam@msrit.edu', 'rit', 'AQXPM5349P', '141201011007996', 'KN/BN/8146/1418', 'Mr. Mallegowda M. is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. His areas of interest include WSN, SOA, middleware solution, IOT, and embedded system.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse18', 'Dr.H.V. Divakar', 'Male', '#105, TELECOM COLONY, behind new timberyard', 'Hindu', 'Bramhin', 'Other', '1965-07-03', 'Regular', '9980315974', 'divakar.h@msrit.edu', 'rit', 'AAYPD4812D', '141201011009452', 'KN/BN/8146/1453', 'Dr. Divakar Harekal is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. His areas of interest include software engineering, embedded system design and cloud computing.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse19', 'Chandrika Prasad', 'Female', '#143, I STAGE, II CROSS, B.E.M.L., Basaveshwara Na', 'Hindu', 'Bramhin', 'Other', '1980-05-28', 'Regular', '9845053122', 'chandrika@msrit.edu', 'rit', 'AHZPC9945N', '141201011009473', 'KN/BN/8146/1454', 'Chandrika Prasad is working as an assistant professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include operating system and are teaching computer organization and UNIX system programming.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse20', 'Rajarajeswari S', 'Female', '#501, SIRI RESIDENCY, I CROSS, PAPPANA LAYOUT, V.N', 'Hindu', 'Vanniya Kula Ks', 'OBC', '1975-08-02', 'Regular', '9886958079', 'raji@msrit.edu', 'rit', 'ANFPR9711D', '141201011009606', 'KN/BN/8146/1467', 'S. Rajarajeswari is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include cloud computing, big data and data sciences, artificial intelligence, data mining and image processing.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse21', 'Pramod C Sunagar', 'Male', '#18, \"GURUKRUPA NILAYA\" 17TH A CROSS, BNS LAYOUT, ', 'Hindu', 'Ambiger', 'CAT - I', '1984-12-16', 'Regular', '9886358659', 'pramods@msrit.edu', 'rit', 'BPVPS0308L', '141201011013869', 'KN/BN/8146/1552', 'Mr. Pramod Sunagar is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. His areas of interest include data analytics algorithms, android development, java & j2ee and data structures.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse22', 'Sowmya B J', 'Female', '829, 1ST CROSS, 4 BLOCK, HMT LAYOUT', 'Hindu', 'Lingayath', '3BG', '1986-11-30', 'Regular', '9886733368', 'sowmyabj@msrit.edu', 'rit', 'CJRPS4964D', '141201011015419', 'KN/BN/8146/4801', 'Sowmya B. J. is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include software engineering, computer organization, computer security and data analytics.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse23', 'Pradeep kumar D ', 'Male', 'NO 740, 9MAIN 9 BLOCK, NAGARBAVI', 'Hindu', 'Gowda', 'OBC', '1985-09-27', 'Regular', '9886715235', 'pradeepkumard@msrit.edu', 'rit', 'BCOPD2999E', '141201011017395', 'KN/BN/8146/5011', 'Mr. Pradeep Kumar D. is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. His areas of interest include data mining, data sciences, big data, machine learning and internet of things.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse24', 'Chetan  Shetty ', 'Male', 'NO 13, B 306, 3RD FLOOR, RENAISSANCE BRINDAVAN, UT', 'Hindu', 'Bunts', 'GM', '1986-02-24', 'Regular', '9686575665', 'chetanshetty@msrit.edu', 'rit', 'CPFPS0001H', '141201011008572', 'KN/BN/8146/5014', 'Chetan Shetty is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. His areas of interest include data analytics and teach design and analysis of algorithms, software engineering and computer security.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse25', 'Ganeshayya I Shidaganti', 'Male', '106, MANASA BULDING, SIDDESWARA PARK, HUBLI', 'Hindu', 'Lingayath', 'GM', '1987-11-29', 'Regular', '9880251131', 'ganeshayyashidaganti@msrit.edu', 'rit', 'ETQPS2411N', '141201011017391', 'KN/BN/8146/1629', 'Ganeshayya Shidaganti is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. His areas of interest include cloud computing, big data, and computational intelligence.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse26', 'Darshana A Naik', 'Female', '1592, 6 MAIN E BLOCK, 2ND STAGE , SHIVA KRUPA, RAJ', 'Hindu', 'Konkan Maratha', 'GM', '1987-04-25', 'Regular', '9900821964', 'darshananaik@msrit.edu', 'rit', 'APHPN3564N', '141201011017362', 'KN/BN/8146/1626', 'Darshana A. Naik is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include, data mining, big data networks, social network and image processing.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse27', 'Srinidhi H', 'Male', 'NO 62, 3RD CROSS, 4TH MAIN, KIRLOSKAR COLONY, 1ST ', 'Hindu', 'Bramhin', 'GM\r\n', '1989-11-07', 'Regular', '9591690191', 'srinidhih@msrit.edu', 'rit', 'CVJPS2592H', '141201011017392', 'KN/BN/8146/1630', 'Srinidhi Hiriyannaiah is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. His areas of interest include big data and analytics, internet of things, algorithms and data structures, software engineering and information management.', 'ASST PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse28', 'Hanumantha Raju R', 'Male', 'Sri Maruti Nilaya, 4th ward, vinayak nagar, Dodbal', 'Hindu', 'Gowda', 'OBC', '1988-12-20', 'Regular', '9901287316', 'hmrcs@msrit.edu', 'rit', 'AGRPH6781L', '141201011019438', 'KN/BN/8146/1650', 'Mr. Hanumantha Raju R. is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. His areas of interest include internet of things and wireless sensor networks.', 'Assistant Professor', '', '', '', '', '', '', '', '', 'cse'),
('cse29', 'Aparna R', 'Female', 'No. 13, Sastry Apartments, Gannappa Gardens, 8th C', 'Hindu', 'Brahmin', 'GM', '1979-09-17', 'Regular', '9886867568', 'aparna@msrit.edu', 'rit', 'AJXPA7953J', '141201011019432', 'KN/BN/8146/1651', 'Aparna R. is working as an Assistant Professor in Computer Science Department of Ramaiah Institute of Technology. Her areas of interest include, cloud computing, high performance computing, data mining, data structures and database systems.', 'Assistant Professor', '', '', '', '', '', '', '', '', 'cse'),
('cse30', 'Shilpa S Chaudhari', 'Female', 'J-21, Shriram Sadhana Apt, Gokula Mathiker, Bangal', 'Hindu', 'Leva Patidhar', 'GM', '1976-10-29', 'Regular', '9886054151', 'shilpasc29@msrit.edu', 'rit', 'AEJPC6125R', '141201010018835', 'KN/BN/8146/D010', 'Dr. Shilpa Chaudhari is working as Associate Professor at department of CSE, MSRIT, Bangalore at present. She has been a technology educator and corporate trainer since 1999. Her   areas of  research and teaching include network security, RTOS, computational intelligence, wireless networks, embedded', 'Associate Professor', '', '', '', '', '', '', '', '', 'cse'),
('cse31', 'Raghuram Krishnapuram', 'Male', 'null', 'null', 'null', 'null', '1956-02-13', 'null', 'null', 'raghuk@msrit.edu', 'rit', 'AGIPK4840L', 'null', 'null', 'null', 'PROFESSOR, R&D Head', '', '', '', '', '', '', '', '', 'cse'),
('cse32', 'Ramani S', 'Male', 'Malleshwaram, Bangalore, 560003', 'Hindu', 'Bramhin', 'GM', '1954-04-17', 'Regular', '9343457890', 'ramanis@msrit.edu', 'rit', 'ABVPS3193C', 'null', 'null', 'Dr. S. Ramani is working as a professor in Computer Science Department of Ramaiah Institute of Technology. His areas of interest include software architecture, e-governance, networking, and information security.', 'PROFESSOR', '', '', '', '', '', '', '', '', 'cse'),
('cse33', 'Nagabhushan A M', 'Male', '12_seetharamaiah lay out, Yeswanthpur, 560022', 'Hindu', 'Lingayath', 'GM', '1963-07-13', 'Visiting', '9844864526', 'bhushan@msrit.edu', 'rit', 'AAIPN8611J', 'null', 'null', 'Bhushan A. Matad is working as an Associate Professor in Computer Science Department of Ramaiah Institute of Technology. His areas of interest include future work skills, and start-up software engineering.', 'Associate Professor', '', '', '', '', '', '', '', '', 'cse'),
('cv01', 'Nandeesh M S', 'Male', '977/A 4th Main D Block, 2nd Stage Rajajinagar, Ban', 'Hindu', '', 'null', '1990-07-04', 'Regular', '9482421729', 'nandeeshms@msrit.edu', 'cv06', 'DFCPS6026E', '141201141001504', '', 'Mr. Nandeesh M S has completed B.E in Civil Engineering from UVCE, Bangalore and M.Tech in Structural Engineering from MSRIT, Bangalore. He has previously worked as Assistant Professor in Acharya Institute of Technology. His fields of interest are Earthquake Resistant Structural Design, Rehabilitati', 'Assistant Professor', '', '', '', '', '', '', '', '', 'cv'),
('ece01', 'flory.f@msrit.edu', 'undefined', 'null', 'null', 'null', 'null', '0000-00-00', 'Regular', '', 'flory.f@msrit.edu', 'ece05', 'null', 'null', 'null', 'null', '', '', '', '', '', '', '', '', '', 'ece'),
('ece02', 'K. Indira', 'Female', 'No 19 10th block 1 stage Nagarbhavi Bangalore 72', 'Hindu', 'Vokalliga', 'General', '1966-02-20', 'Regular', '9449446302', 'indira@msrit.edu', 'rit', 'AACPI7219P', '141201010010586', 'KN/BN/8146/0669', 'Dr. K. Indira is working as a Professor in the Electronics and Communication Department of MSRIT. Her subjects of interests are signal processing, image processing, neural networks, speech processing, and fuzzy logic.', 'Professor', '', '', '', '', '', '', '', '', 'ece'),
('eee01', 'tushar@msrit.edu', 'Male', 'A-301, Sruthika Springfields, Singapura layout, Ba', 'Hindu', 'Brahmin', '', '1984-12-19', 'Regular', '9916942948', 'tushar@msrit.edu', 'passyu', 'AIDPN2028E', '', '', 'null', 'Assistant Professor', '', '', '', '', '', '', '', '', 'ee'),
('iem01', 'Deepak Kumar', 'Male', '', '', '', '', '0000-00-00', 'Regular', '', 'deepak_kr246@msrit.edu', 'passtp', '', '', '', 'null', 'Associate Professor', '', '', '', '', '', '', '', '', 'im'),
('ise01', 'Dr. Mydhili K. Nair', 'Female', 'null', 'null', 'null', 'null', '1972-07-11', 'Regular', '9880092392', 'mydhili.nair@msrit.edu', 'passfg', 'null', 'null', 'null', 'Dr. Mydhili K. Nair is a Ph.D. degree holder and is serving as a professor in IS&E department of MSRIT. She is interested in subjects related to IoT & WSN.', 'Professor', '', '', '', '', '', '', '', '', 'ise'),
('it01', 'bagatsaran@msrit.edu', 'undefined', 'null', 'null', 'null', 'null', '0000-00-00', 'Regular', '', 'bagatsaran@msrit.edu', 'it01', 'null', 'null', 'null', 'null', '', '', '', '', '', '', '', '', '', 'it'),
('mat01', 'amonica@msrit.edu', 'undefined', 'null', 'null', 'null', 'null', '0000-00-00', 'Regular', '', 'amonica@msrit.edu', 'mat01', 'null', 'null', 'null', 'null', '', '', '', '', '', '', '', '', '', 'mat'),
('mba01', '', '', '', '', '', '', '0000-00-00', '', '', 'way2arun@gmail.com', 'qsdert', '', '', '', NULL, '', '', '', '', '', '', '', '', '', 'mba'),
('mca01', 'nithyabn@msrit.edu', 'undefined', 'null', 'null', 'null', 'null', '0000-00-00', 'Regular', '', 'nithyabn@msrit.edu', 'mca01', 'null', 'null', 'null', 'null', '', '', '', '', '', '', '', '', '', 'mca'),
('ml01', 'Dr. Narayanappa C K', 'Male', 'Associate Professor, Dept. of Medical Electronics,', 'Hindu', 'Vokkaliga', 'GM', '1970-06-01', 'Regular', '9845355829', 'c_k_narayanappa@msrit.edu', 'ml01', 'ACDPN4743J', '141201010015576', 'KN/BN/8146/0930', 'null', 'Associate Professor', '', '', '', '', '', '', '', '', 'ml'),
('phy01', 'kalpana@msrit.edu', 'Female', 'null', 'null', 'null', 'null', '1985-07-17', 'Regular', '', 'kalpana@msrit.edu', 'phy01', 'null', 'null', 'null', 'null', 'Assistant Professor', '', '', '', '', '', '', '', '', 'phy'),
('te01', 'Dr. B. K. Sujatha', 'female', 'Flat no. 308, Rohitha Gardens, Opp.Tatanagar water', 'Hindu', 'Balija', 'null', '1964-05-04', 'Permanent', '+91 9448963245', 'bksujatha@msrit.edu', 'qytred', 'AOOPS7241B', '141201010021132', 'KN/BN/8146/1064', '', 'Professor & Head', '', '', '', '', '', '', '', '', 'te'),
('te02', 'Dr. ViswanathTalasila', 'male', 'Dept of Telecommunication Engineering, RIT, Bangal', 'HINDU', 'GM', 'GM', '1975-03-07', 'Permanent', '9900597164', 'viswanath.talasila@msrit.edu', 'jdegsv', 'AGHPT7850N', '141201011013657', 'KN/BN/8146/1538', 'Professor', 'Professor', '', '', '', '', '', '', '', '', 'te'),
('te03', 'Dr. Shobha K. R.', 'female', '77/2, \" Deepodaya\", 1st main Road, Malleswaram, Ba', 'HINDU', 'BRAHMIN', 'null', '2018-10-13', 'Full time', '9886493763', 'shobha_shankar@msrit.edu', 'dycsjf', 'AACPU4102H', '141201010015400', ' KN/BN/8146/0914', 'Associate professor', 'Associate professor', '', '', '', '', '', '', '', '', 'te'),
('te04', 'Dr. SatishTunga', 'male', '347/H, 9th J Main Road, 2nd Cross, near pipeline,V', 'Hindu', 'Brahmin', 'General', '1962-06-22', 'permanent', '08023204202(R) 9448384202(M)', 'satish.tunga@msrit.edu', 'oeyvsm', 'AKPPS9283A', '141201010016616', 'KN/BN/8146/0956', 'null', 'Associate Professor', '', '', '', '', '', '', '', '', 'te'),
('te05', 'S.J. Krishna Prasad', 'male', '#453, Lakshmi Narasimha Krupa,Srinagar Pipeline,Br', 'Hindu', 'Brahmin', 'null', '1964-11-19', 'Permanent ', '9448734179', 'krishnaprasad@msrit.edu', 'chridk', 'ALRPK0444L', '141201011002788', 'KN/BN/8146/1184', 'Associate Professor', 'Associate Professor', '', '', '', '', '', '', '', '', 'te'),
('te06', 'Dr. S. G. ShivaprasadYadav', 'male', 'Department of TCE, RIT, MSR Nagar, MSRIT Post, Ban', 'Hindu', 'Golla', 'null', '1980-12-02', 'Full time', '9880500861', 'shivaprasad@msrit.edu', 'shvris', 'BRYPS2217P', '141201011004178', 'KN/BN/8146/1495', 'Dr. Shivaprasad has around 18 years of Industry, Research and Teaching experience in the field of Embedded Systems, DSP and Wireless Networks. During this tenure most of the time is dedicated in Research and developing & delivering lectures/Training for students and corporate engineers at all levels', 'Associate Professor', '', '', '', '', '', '', '', '', 'te'),
('te07', 'Dr. ParimalaPrabhakar', 'Female', 'Sugandha, D146, Ds max signature,RMV 2nd stage, De', 'Hindu', 'Veerashiva Ling', 'null', '1974-04-18', 'Permanent', '9845119418', 'parimalap@msrit.edu', 'shcshd', 'AJMPP0809P', '141201010015399', 'KN/BN/8146/0920', 'Assistant Professor', 'Assistant Professor', '', '', '', '', '', '', '', '', 'te'),
('te08', 'Venu K.N', 'male', 'null', 'null', 'null', 'null', '0007-00-00', 'null', 'null', 'venu1.kn@msrit.edu', 'idfbwf', 'null', 'null', 'null', 'null', 'null', '', '', '', '', '', '', '', '', 'te'),
('te09', 'Ramya H. R.', 'Female', 'Dept of TCE.RIT,M S Ramaiah Nagar,Bengaluru-560054', 'Hindu', 'Iyengar', 'null', '1979-05-15', 'Permanent', '9845809853', 'ramya_hr@msrit.edu', 'ssrhnu', 'AJSPR2834E', '141201011000988', 'KN/BN/8146/1119', 'Assistant Professor', 'ASSISTANT PROFESSOR', '', '', '', '', '', '', '', '', 'te'),
('te10', 'Umesharaddy', 'male', 'Ramaiah Institute of Technolgy, Bangalore-560054', 'Hindu', 'Raddy', 'null', '1982-06-01', 'Full Time', '9901073574', 'umesh.reddy@msrit.edu', 'awgkgb', 'ALTPR1511P', '141201011004563', 'KN/BN/8146/1268', 'Asst Professor', 'Asst. Professor', '', '', '', '', '', '', '', '', 'te'),
('te11', 'Nisha S.L.', 'female', 'Department Of Telecommunication Engineering', 'Hindu', 'Nadar', 'null', '1978-11-17', 'Permanent', '9341959586', 'nisha_sln@msrit.edu', 'dxfhjd', 'AFAPN5855R', '141201011009557', 'KN/BN/8146/1461', 'Assistant professor', 'Assistant Professor', '', '', '', '', '', '', '', '', 'te'),
('te12', 'Kusuma S. M.', 'female', 'TCE Department, RIT', 'HINDU', 'Lingayat', 'null', '1970-05-20', 'Full time', '9900949383', 'kusumasm@msrit.edu', 'fzxhgd', 'BDFPK5802H', '141201011013482', 'KN/BN/8146/1548', 'Assistant Professor', 'Assistant Professor', '', '', '', '', '', '', '', '', 'te'),
('te13', 'Swetha Amit', 'female', 'Dept of Telecommunication Engineering, RIT, Bangal', 'Hindu', 'Maratha', 'null', '1983-10-28', 'permanent', '9901998724', 'swetha.amit@msrit.edu', 'tfuygj', 'AVHPA2551J', '141201011013472', 'KN/BN/8146/1547', 'null', 'Assistant Professor', '', '', '', '', '', '', '', '', 'te'),
('te14', 'Arvind Kumar G.', 'arvind kum', 'DEPT OF TCE., RIT, BANGALORE', 'HINDU', 'BALGIJA', 'null', '0000-00-00', 'PERMAMENT', '8095139694', 'arvind@msrit.edu', 'xdjjsb', 'null', 'null', 'null', 'asst.prof', 'Assistant Professor', '', '', '', '', '', '', '', '', 'te');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_conference_symposia`
--

CREATE TABLE `faculty_conference_symposia` (
  `slNo` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `place` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `role` varchar(20) NOT NULL,
  `noOfPapersPresented` int(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_conference_symposia`
--

INSERT INTO `faculty_conference_symposia` (`slNo`, `title`, `place`, `date`, `role`, `noOfPapersPresented`, `type`, `facultyId`) VALUES
(1, 'Driving Big Data with Hadoop Technologies', 'Dept of MCA, MSRIT', '2014-08-21', 'null', 0, '', 'cse27'),
(2, 'IEEE Event on Software Engineering in Industry', 'RVCE, Bengaluru', '2016-01-23', 'null', 0, '', 'cse27'),
(3, 'Staff development program on Desktop and cloud based office utilities', 'Dept of CSE, MSRIT', '2017-01-19', 'null', 0, '', 'cse27'),
(4, 'Advances and Research challenges in the Applications of Artificial Intelligence in Gaming, Medical I', 'Dept of CSE, MSRIT', '2016-07-18', 'null', 0, '', 'cse27'),
(5, 'One of the resource person in “Advances and Research Challenges in the Applications of Artificial In', 'MSRIT, Bangalore.', '2016-07-18', 'null', 0, '', 'cse07'),
(6, 'The 1st International Workshop on Recommendation systems supported Teaching and Learning Environment', 'IIT Bombay, India', '2016-11-28', 'null', 0, '', 'cse08'),
(7, '“Educational data mining using R and Python” , The 8th IEEE International Conference on Technology f', 'Indian Institute of Technology, Bombay, Mumbai', '2016-12-02', 'null', 0, '', 'cse08'),
(8, 'Delivered Expert talk and shown demo to MTech students  “Data lake and Data Analytics “', 'RV college of Engineering, Bangalore', '2016-12-19', 'null', 0, '', 'cse08'),
(9, 'IoT& Cyber Security using Watson &Bluemix“', 'MSRIT, Bangalore.', '2017-01-09', 'null', 0, '', 'cse08'),
(10, 'Best practices in Outcome Based Education- case study based approach', 'RYMCE, Ballari College of engineering', '2017-08-11', 'null', 0, '', 'cse02'),
(11, 'Tutorial conduction on Recommendation systems using Data mining techniques for Educational Domain in', 'Reva University,Bangalore', '2017-08-17', 'null', 0, '', 'cse08'),
(12, 'Driving Big Data with Hadoop Technologies', 'Dept of MCA, MSRIT', '2014-08-22', 'null', 0, '', 'cse27'),
(13, 'Staff development program on Desktop and cloud based office utilities', 'Dept of CSE, MSRIT', '2017-01-20', 'null', 0, '', 'cse27'),
(14, 'Advances and Research challenges in the Applications of Artificial Intelligence in Gaming, Medical I', 'Dept of CSE, MSRIT', '2016-07-19', 'null', 0, '', 'cse27'),
(15, 'The 1st International Workshop on Recommendation systems supported Teaching and Learning Environment', 'IIT Bombay, India', '2016-11-29', 'null', 0, '', 'cse08'),
(16, '“Educational data mining using R and Python” , The 8th IEEE International Conference on Technology f', 'Indian Institute of Technology, Bombay, Mumbai', '2016-12-03', 'null', 0, '', 'cse08'),
(17, 'IoT& Cyber Security using Watson &Bluemix“', 'MSRIT, Bangalore.', '2017-01-10', 'null', 0, '', 'cse08'),
(18, 'Tutorial conduction on Recommendation systems using Data mining techniques for Educational Domain in', 'Reva University,Bangalore', '2017-08-18', 'null', 0, '', 'cse08'),
(21, 'Staff development program on Desktop and cloud based office utilities', 'Dept of CSE, MSRIT', '2017-01-19', 'null', 0, '', 'ise01'),
(25, '“Educational data mining using R and Python” , The 8th IEEE International Conference on Technology f', 'Indian Institute of Technology, Bombay, Mumbai', '2016-12-02', 'null', 0, '', 'ece02'),
(37, '2nd Cyber-Physical Systems Symposium', 'IISC ,Bangalore', '2018-07-11', 'Deputed', 0, '', 'te07'),
(38, 'I4C-2016', 'MSRIT, BANGALORE', '2016-10-04', 'DEPUTED', 1, '', 'te10'),
(41, 'International conference on Optical Engineering Two day conference from 07/26/2012 to 07/28/2012', 'VTU campus Belgaum', '2012-07-28', 'Deputed from RIT', 0, '', 'te05'),
(42, 'Three day International  I4C hosted by Circuit branches RIT from 12/20/2014 to 12/23/2014', 'RIT', '2014-11-23', 'Deputed from RIT', 1, '', 'te05'),
(43, ' IEEE International conference on Smart Sensors and Systems IC-SSS-2015from 12/21/2015 to12 /23/ 20', 'RIT', '2015-12-23', 'Deputed from RIT', 0, '', 'te05'),
(44, 'Three day International  I4C hosted by Circuit branches RIT from 10/04/2016 to 10/06/2016', 'RIT', '2016-10-06', 'Deputed from RIT', 0, '', 'te05'),
(45, 'International conference    on advanced trends in engineering  ICATE-2018 from 04/06/2018 to 04/07/2', 'Datta Meghe college of engineering,Airoli ,Navi Mu', '2018-04-07', 'Deputed from RIT', 1, '', 'te05'),
(46, 'National Conference on Emerging Mobile Technologies &Policies, 05/28/2012 to 05/30/2012', 'RIT,Bangalore ', '2012-05-30', 'Deputed from RIT', 4, '', 'te05'),
(47, '1.    Two day Symposium 2018 IEEE- “Women in Engineering: Technology Development and Community Outre', 'Bangalore', '2018-04-08', 'Invited', 0, '', 'te03'),
(48, '2.    Two day Symposium on “Women in Engineering Empowering Innovation and Leadership Qualities” hel', 'RIT, Bangalore', '2017-03-08', 'Deputed', 0, '', 'te03'),
(49, '3.    One day ARM Technology Symposia 2013, 12th Nov 2013, leMeridian ,Bangalore', 'Bangalore', '2013-11-12', 'Invited', 0, '', 'te03'),
(50, 'ICRAES 2016', 'MSRIT Bangalore', '2018-09-07', 'Invited', 2, '', 'cv01');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_guest_lecture`
--

CREATE TABLE `faculty_guest_lecture` (
  `slNo` int(11) NOT NULL,
  `organization` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_guest_lecture`
--

INSERT INTO `faculty_guest_lecture` (`slNo`, `organization`, `title`, `date`, `facultyId`) VALUES
(1, 'RIT, Bangalore', 'Vocational Course on “Advanced Java Programming”', '2013-01-07', 'cse21'),
(2, 'MSRIT Bangalore', 'Python Programming  for 5 weeks', '2013-01-07', 'cse10'),
(3, 'MSRIT', 'Takeaways of T4E IEEE conference, OBE national seminar to CSE Department Teaching Faculties', '2015-01-01', 'cse08'),
(4, 'PMU, Thanjavur', 'TCP/IP in for MCA students', '2015-01-05', 'cse08'),
(5, 'RIT, Bangalore', 'Vocational Course on “Java Programming”', '2014-01-07', 'cse21'),
(6, 'MSRIT Bangalore', 'Python Programming  for 5 weeks', '2014-01-07', 'cse10'),
(7, 'IEEE RVCE Software Engineering Chapter', 'Talk  on “Agile Methodology”,  ', '2016-01-01', 'cse02'),
(8, 'First National   Conference/Workshop on Enhancing Information Technology Education (EITE), NIT Goa.', 'Talk on “Artificial Intelligence and Cognitive Computing: The next Big Revolution in Information Tec', '2016-01-01', 'cse02'),
(9, 'RIT, Bangalore', 'Vocational Course on “Android Application Development”', '2015-01-07', 'cse21'),
(10, 'Dept of CSE, MSRIT', 'Python Programming (Vocational course)', '2015-01-06', 'cse27'),
(11, 'Dept of CSE, MSRIT', 'Web Application development (Vocational course)', '2015-01-06', 'cse27'),
(12, 'BMSIT, Bengaluru', 'Setting up CUDA', '2016-01-01', 'cse27'),
(13, 'MSRIT Bangalore', 'Python Programming  and Advanced Java Programming', '2015-01-07', 'cse10'),
(14, 'MSRIT Bangalore', 'Advanced Java Programming', '2015-01-07', 'cse20'),
(15, 'Conference on recent trends in 4G/5G wireless mobile communication: Dept. of EC, MSRIT', 'Talk on\" Protocol Engineering: From Specification, to Design to Implementation \".', '2016-01-07', 'cse02'),
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
(27, 'R V College of Engineering, Bangalore', ' IEEE CS Chapter expert talk on Data Lake', '2016-01-12', 'cse03'),
(28, 'RIT, Bangalore', 'Advances and Research Challenges in the Applications of Artificial Intelligence in Gaming, Medical I', '2016-01-07', 'cse14'),
(29, 'MSRIT,Bangalore', 'Web application', '2016-01-07', 'cse29'),
(30, 'Dept of CSE, MSRIT', 'Python Programming (Vocational course)', '2017-01-07', 'cse27'),
(31, 'MSRIT,  Bangalore', 'Advanced Java Programming for 5 weeks', '2017-01-07', 'cse10'),
(32, 'Conference on “Challenges and Opportunities in Industry 4.0: Manufacturing and operations in smart f', 'Fundamentals of Internet of Things (IoT)', '2017-01-07', 'cse02'),
(33, 'ACM Women in Research (ISDB-ACM-WIR 2018) SAIT, Indore, MP, India.', 'Applying Machine Learning techniques for Big Data Analytics', '2018-01-01', 'cse02'),
(34, 'MSRIT,Bangalore', 'Data Science course , Vocational Course', '2017-01-07', 'cse08'),
(35, 'MSRIT,Bangalore', 'Web application', '2017-01-07', 'cse29'),
(36, 'MSRIT,Bangalore', 'Data Science course , Vocational Course', '2017-01-07', 'cse24'),
(37, 'RIT, Bangalore', 'Vocational Course on “Android Application Development”', '2017-01-07', 'cse23'),
(38, 'RIT, Bangalore', 'Web application', '2017-01-07', 'cse25'),
(39, 'null', 'Python Programming', '2017-01-11', 'cse28'),
(40, 'CMRIT, Bangalore', 'FDP on “Wireless Networks and IoT”', '2018-01-01', 'cse30'),
(41, 'MSRIT, Bangalore', 'Web application', '2016-01-07', 'cse29'),
(51, 'Dept of CSE, MSRIT', 'Python Programming (Vocational course)', '2015-01-06', 'ise01'),
(57, 'RIT, Bangalore', 'Internet of Things', '2016-01-10', 'ece02'),
(60, 'RIT, Bangalore', 'Desktop and cloud based utilities', '2017-01-01', 'ise01'),
(66, 'MSRIT,  Bangalore', 'Advanced Java Programming for 5 weeks', '2016-01-07', 'ise01'),
(71, 'Dept of CSE, MSRIT', 'Python Programming (Vocational course)', '2017-01-07', 'ece02'),
(83, 'Invited talk delivered at IETE Bengaluru centre ', '“ Rectifiers, Transistors and Regulators  Theorotical  ideas and Design aspects”. ', '2018-05-04', 'te05'),
(84, 'Inauguration of the Department of Students Association Annual Activity, Faculty of Engineering, Chri', 'An Uncertain Talk - Is anything certain at all?', '2017-08-24', 'te02'),
(85, 'IIT-Madras ', 'NPTEL lectures recording (on Control Engineering)', '2017-06-08', 'te02'),
(86, 'VJTI-Mumbai and IIT-Madras', 'Workshop on Complex Networks', '2017-03-21', 'te02'),
(87, 'Stanford University', 'State Controllability', '2015-06-08', 'te02'),
(88, 'University of Groningen, Netherlands', 'Workshop on Mathematical Control Theory', '2015-07-12', 'te02'),
(89, 'NITK – Surtakal', 'INTEL Youth Enterprise Workshop', '2014-04-15', 'te02'),
(90, 'IETE Bangalore centre for the Summer School programme in Electronics and   Computers (SUSIEC) for', 'Fundamentals of Electronic Devices Part II Linear ICs 741 OPAMP & characteristics’, Oscillator, 555 ', '2018-05-06', 'te13'),
(91, 'Dept of Telecommunication Engineering, BMSIT,Bangalore', 'Introduction to MATLAB Antenna Toolbox', '2018-08-03', 'te13');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_patent`
--

CREATE TABLE `faculty_patent` (
  `slNo` int(11) NOT NULL,
  `patentTitle` varchar(100) NOT NULL,
  `inventors` varchar(100) NOT NULL,
  `dateOfFilingApplication` date NOT NULL,
  `publicationDate` date NOT NULL,
  `dateGranted` date NOT NULL,
  `typeOfPatent` varchar(30) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_patent`
--

INSERT INTO `faculty_patent` (`slNo`, `patentTitle`, `inventors`, `dateOfFilingApplication`, `publicationDate`, `dateGranted`, `typeOfPatent`, `facultyId`) VALUES
(1, 'Sensor integrated cloud based internet of things (IOT) ', '2271/CHE/2014', '2014-05-00', '0000-00-00', '0000-00-00', '', 'cse33'),
(2, 'Anonymity for privacy preserving data ', '2696/CHE/2015', '2015-00-00', '0000-00-00', '0000-00-00', '', 'cse22'),
(3, 'Device, System and Apparatus for Functional Electrical Stimulation of Muscle', '15424807', '2017-02-04', '0000-00-00', '0000-00-00', '', 'te02'),
(4, 'Device and a Method of Automatically Triggering a Functional Electrical Stimulator', '201641004692', '2016-02-10', '0000-00-00', '0000-00-00', '', 'te02'),
(5, 'Feedback Control For Reducing Flaring Process Smoke and Noise', '20150293506', '2014-04-08', '0000-00-00', '0000-00-00', '', 'te02'),
(6, 'Integrated Smoke Monitoring and Control Systems for Flaring Operations', '0150260397', '2014-03-09', '0000-00-00', '0000-00-00', '', 'te02'),
(7, 'Vision Based Zero Velocity and Zero Attitude Rate Update', 'US Patent 13/009,368', '2011-01-19', '0000-00-00', '0000-00-00', '', 'te02');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_qualification`
--

CREATE TABLE `faculty_qualification` (
  `slNo` int(11) NOT NULL,
  `degree` varchar(10) NOT NULL,
  `university` varchar(100) NOT NULL,
  `collegeName` varchar(50) NOT NULL,
  `passClass` varchar(10) NOT NULL,
  `passYear` varchar(10) NOT NULL,
  `areaOfSpecialization` varchar(100) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_qualification`
--

INSERT INTO `faculty_qualification` (`slNo`, `degree`, `university`, `collegeName`, `passClass`, `passYear`, `areaOfSpecialization`, `facultyId`) VALUES
(1, 'BE', 'Karnatak University', '0', 'FCD', '1988', 'ECE', 'cse01'),
(2, 'BE', 'Gulbarga', '0', 'FCD', '1994', 'CSE', 'cse02'),
(3, 'BE', 'BU', '0', 'FCD', '2001', 'CSE', 'cse29'),
(4, 'BE', 'vtu', '0', 'FC', '2003', 'CSE', 'cse19'),
(5, 'BE', 'vtu', '0', 'FC', '2009', 'ISE', 'cse24'),
(6, 'BE', 'vtu', '0', 'FCD', '2005', 'CSE', 'cse13'),
(7, 'BE', 'vtu', '0', 'FC', '2009', 'CSE', 'cse26'),
(8, 'BE', 'Karnatak University', '0', 'FCD', '1986', 'CSE', 'cse18'),
(9, 'BE', 'vtu', '0', 'FC', '2010', 'CSE', 'cse25'),
(10, 'BE', 'BU', '0', 'FCD', '2001', 'CSE', 'cse10'),
(11, 'BE', 'vtu', '0', 'FCD', '2010', 'CSE', 'cse28'),
(12, 'BE', 'Karnatak University', '0', 'FCD', '1999', 'CSE', 'cse04'),
(13, 'BE', 'Mysore', '0', 'FCD', '1988', 'CSE', 'cse05'),
(14, 'BE', 'Mysore', '0', 'FCD', '1988', 'CSE', 'cse11'),
(15, 'BE', 'vtu', '0', 'FCD', '2005', 'CSE', 'cse17'),
(16, 'BE', 'BU', '', 'FCD', '1996', 'CSE', 'cse12'),
(17, 'BE', 'Gulbarga', '0', 'FC', '2006', 'CSE', 'cse16'),
(18, 'BE', 'Gulbarga', '0', 'FCD', '1996', 'CSE', 'cse06'),
(19, 'BE', 'Mysore', '0', 'FCD', '1984', 'ECE', 'cse33'),
(20, 'BE', 'Trichy', '0', 'FC', '2001', 'CSE', 'cse08'),
(21, 'BE', 'vtu', '0', 'FCD', '2009', 'CSE', 'cse23'),
(22, 'BE', 'VTU', '0', 'FCD', '2006', 'CSE', 'cse21'),
(23, 'BE', 'TN', '0', 'FCD', '1998', 'CSE', 'cse20'),
(24, 'BSc', 'Madhurai', '0', 'FCD', '1974', 'Mathematics, Computer Science', 'cse32'),
(25, 'BE', 'VTU', '0', 'FC', '2002', 'CSE', 'cse07'),
(26, 'BE', 'Gulbarga', '0', 'FCD', '1991', 'CSE', 'cse03'),
(27, 'BE', 'North Maharashtra University', '0', 'FCD', '1998', 'CSE', 'cse30'),
(28, 'BTECH', 'Kerala', '0', 'FC', '2004', 'CSE', 'cse14'),
(29, 'BE', 'vtu', '0', 'FCD', '2008', 'CSE', 'cse22'),
(30, 'BE', 'vtu', '0', 'FCD', '2011', 'CSE', 'cse27'),
(31, 'BE', 'Pune', '0', 'FCD', '2000', 'CSE', 'cse15'),
(32, 'BE', 'Kuvempu', '0', 'FCD', '1994', 'CSE', 'cse09'),
(33, 'ME', 'Karnatak University', '0', 'FCD', '1995', 'Computer networks', 'cse01'),
(34, 'MTECH', 'VTU', '0', 'FCD', '2001', 'CSE', 'cse02'),
(35, 'MTECH', 'NITK, Surathkal', '0', 'FCD', '2007', 'COMPUTER SCIENCE AND ENGINEERI', 'cse29'),
(36, 'MTECH', 'vtu', '0', 'FC', '2007', 'CSE', 'cse19'),
(37, 'MTECH', 'vtu', '0', 'FCD', '2012', 'COMPUTER SCIENCE', 'cse24'),
(38, 'M TECH', 'vtu', '0', 'FCD', '2011', 'BMSPI', 'cse26'),
(39, 'ME', 'Karnatak University', '0', 'FCD', '1998', 'CSE', 'cse18'),
(40, 'M TECH', 'vtu', '0', 'FCD', '2012', 'COMPUTER SCIENCE', 'cse25'),
(41, 'MTECH', 'JNTU,HYD', '0', 'FCD', '2007', 'Computer Science &ENgg', 'cse10'),
(42, 'MTECH', 'vtu', '0', 'FCD', '2013', 'Computer science and engineering', 'cse28'),
(43, 'MTECH', 'vtu', '0', 'FCD', '2004', 'Artificial Intelligence, Information retrieval, Text Summarization', 'cse04'),
(44, 'MSC(Engg) ', 'vtu', '0', 'FCD', '2008', 'CSE', 'cse05'),
(45, 'MTECH', 'Mysore', '0', 'FCD', '1995', 'COMPUTER SCIENCE AND ENGG', 'cse11'),
(46, 'MTECH', 'vtu', '0', 'FCD', '2009', 'COMPUTER SCIENCE AND ENGG', 'cse17'),
(47, 'MTECH', 'vtu', '', 'FCD', '2006', 'CSE', 'cse12'),
(48, 'MTECH', 'vtu', '0', 'FCD', '2010', 'CSE', 'cse16'),
(49, 'MTECH', 'vtu', '0', 'FCD', '2003', 'Computer Science & Engineering', 'cse06'),
(50, 'MTECH', 'IIT, Mumbai', '0', 'FCD', '1987', 'CSE', 'cse33'),
(51, 'ME', 'Trichy', '0', 'FC', '2005', 'Data Analytics', 'cse08'),
(52, 'M TECH', 'vtu', '0', 'FCD', '2011', 'SOFTWARE ENGG', 'cse23'),
(53, 'MTECH', 'VTU', '0', 'FCD', '2011', 'COMPUTER SCIENCE', 'cse21'),
(54, 'ME', 'TN', '0', 'FCD', '2005', 'CSE', 'cse20'),
(55, 'MSc', 'madhurai', '0', 'FCD', '1976', 'Mathematics, Space Dynamics', 'cse32'),
(56, 'MTECH', 'MGR', '0', 'Honours', '2007', 'Computer Science & Engineering', 'cse07'),
(57, 'MS', 'BITS Pilani', '0', 'FCD', '1996', 'Data Mining', 'cse03'),
(58, 'MTECH', 'Pune', '0', 'FCD', '2003', 'Electronics(Computer)', 'cse30'),
(59, 'ME', 'Anna University', '0', 'FCD', '2006', 'COMPUTER SCIENCE & ENGINEERING', 'cse14'),
(60, 'MTECH', 'vtu', '0', 'FCD', '2013', 'SOFTWARE ENGG', 'cse22'),
(61, 'MTECH', 'vtu', '0', 'FCD', '2013', 'SOFTWARE ENGG\r\n', 'cse27'),
(62, 'ME', 'Pune', '0', 'FCD', '2008', 'COMPUTER ENGINEERING', 'cse15'),
(63, 'MTECH', 'vtu', '0', 'FCD', '1998', 'Image Processing', 'cse09'),
(64, 'PhD', 'BU', '0', 'null', '2013', 'Computer networks', 'cse01'),
(65, 'PhD', 'VTU', '0', 'null', '2014', 'CSE', 'cse02'),
(66, 'PhD', 'VTU', '0', 'null', 'Pursuing', 'CSE', 'cse26'),
(67, 'PhD', 'JJ University, Rajasthan', '0', 'null', '2017', 'CSE', 'cse18'),
(68, 'PhD', 'JNTU', '0', 'null', '2015', 'Artificial Intelligence, Information retrieval, Text Summarization', 'cse04'),
(69, 'PhD', 'VELS', '0', 'null', '2014', 'COMPUTER SCIENCE AND ENGG', 'cse11'),
(70, 'PhD', 'Dr MGR Educational and Research Institute', '0', 'null', '2014', 'Wireless sensor networks', 'cse06'),
(71, 'null', 'IIT Bombay', '0', 'null', 'null', 'software engineering', 'cse33'),
(72, 'PhD', 'MSU', '0', 'null', 'null', 'Cloud Computing', 'cse20'),
(73, 'PhD', 'MGR', '0', 'null', '2014', 'Software Architecture', 'cse32'),
(74, 'PhD', 'VTU', '0', 'null', '2014', 'Data Mining', 'cse03'),
(75, 'PhD', 'VTU', '0', 'null', '2017', 'Routing in Mobile Ad-hoc Network', 'cse30'),
(77, 'M.Tech', 'VTU', '0', 'FIRST CLAS', '2009', 'DIGITAL ELECTRONICS AND COMMUNICATION', 'te09'),
(79, 'PhD', 'ANNA University', '0', 'FCD', '2018', 'Embedded Wireless Networks', 'te06'),
(80, 'M. Tech', 'VTU', '0', 'FCD', '2006', 'Digital Communication with Networking', 'te06'),
(81, 'B. E.', 'University of Mysore', '0', 'FC', '2001', 'Electronics and Communication Engineering', 'te06'),
(82, 'M.Tech', 'V.T.U', '0', 'FCD', '2007', 'DIGITAL COMMUNICATION ENGINEERING', 'te14'),
(83, 'BE', 'Bangalore University', '0', '1st class', '1996', 'Telecommunication Engineeing', 'te07'),
(84, 'ME', 'Bangalore University', '0', '1st class,', '1999', 'Digital Communication Engineering', 'te07'),
(85, 'PhD', 'Jain University', '0', '-', '2018', 'Electronics and Communication', 'te07'),
(86, 'B E ', 'BANGALORE UNIVERSITY', '0', 'FIRST', '1993', 'ELECTRONICS AND COMMUNICATION', 'te03'),
(87, 'M.E', 'BANGALORE UNIVERSITY', '0', 'FIRST', '1999', 'DIGITAL COMMUNICATION', 'te03'),
(88, 'Ph.D', 'VTU', '0', 'FIRST', '2014', 'MOBILE ADHOC NETWORKS', 'te03'),
(90, 'Mtech', 'VTU', '0', 'first clas', '2012', 'VLSI Design and embedded systems', 'te12'),
(91, 'M TECH', 'VTU', '0', 'FCD', '2006', 'VLSI DESIGN & EMBEDDED SYSTEMS', 'te10'),
(92, 'BE', 'Bangalore University', '0', 'First Clas', '2000', 'Telecommunication Engineering', 'te11'),
(93, 'Mtech', 'VTU', '0', 'First Clas', '2009', 'Digital Communication Engineering', 'te11'),
(94, '', '', '0', '', '', '', 'te05'),
(95, 'B.E(Electr', 'University of  Mysore', '0', 'First Clas', '1988', 'Electronics and Communication', 'te05'),
(96, 'M.Tech ', 'Visvevaraya Technological University ,Belgaum', '0', 'First clas', '2001', 'Digital Electronics ', 'te05'),
(97, 'PhD(Pursui', 'Visvevaraya Technological University ,Belgaum', '0', '', '', 'Optical sensors, pattern analysis and machine learning ', 'te05'),
(98, 'B.E', 'VTU', '0', 'FCD', '2005', 'ELECTRONICS AND COMMUNICATION', 'te13'),
(99, 'M.TECH', 'VTU', '0', 'FCD', '2009', 'COMMUNICATION SYSTEMS', 'te13'),
(100, 'BE', 'BANGALORE UNIVERSITY', '0', 'FCD', '1997', 'Instrumentation Engineering', 'te02'),
(101, 'Ph.D', 'University of Twente', '0', '', '2004', 'Dept of Applied Mathematics', 'te02'),
(102, 'Post-docto', 'Imperial College, London', '0', '', '2007', '', 'te02'),
(103, 'BE', 'Kuvempu', '0', 'First clas', '1998', 'Electronics and communication', 'te08'),
(104, 'MTech', 'VTU', '0', 'First clas', '2003', 'Industrial electronics', 'te08'),
(105, 'Ph.D', 'Jain University', '0', '', '2018', 'Image Processing', 'te04'),
(106, 'M.E', 'Bangalore University', '0', 'First', '1991', 'Electronics', 'te04'),
(107, 'B.E', 'Bangalore University', '0', 'Second', '1984', 'Electronics', 'te04'),
(108, 'Ph.D', 'Visvesvariah Technological University', '0', 'Nil', '2012', 'Image Processing', 'ece02'),
(109, 'M E', 'Bangalore University', '0', 'First Clas', '1992', 'Electronics', 'ece02'),
(110, 'B E', 'Bangalore University', '0', 'First Clas', '1989', 'Electronics', 'ece02'),
(111, 'Ph.D(Elect', 'Visveswaraya Technological university', '0', '', '2014', 'Control Systems', 'ml01'),
(112, 'M.Tech ', 'Mysore University', '0', 'First', '1996', 'Biomedical instrumentation', 'ml01'),
(113, 'B E', 'Bangalore University', '0', 'First', '1993', 'Electronics', 'ml01'),
(114, 'BE', 'Bangalore University', '0', 'FCD', '2012', 'Civil Engineering', 'cv01'),
(115, 'M.Tech', 'Visvesvaraya Technological University', '0', 'FCD', '2016', 'Structural Engineering', 'cv01'),
(116, 'Bachelor o', 'VTU', '0', 'First', '2009', 'Biotechnology', 'bt01'),
(117, 'Master of ', 'Manipal University', '0', 'First with', '2012', 'Chemical Engineering', 'bt01'),
(118, 'PhD', 'VTU', '0', 'null', 'Pursuing', 'Chemical Engineering', 'bt01'),
(119, 'BE ', 'GUJARAT UNIVERSITY', '0', 'FCD', '2006', 'ELECTRICAL ENGINEERING', 'eee01'),
(120, 'MTECH', 'VISVESVARAYA TECHNOLOGICAL UNIVERSITY', '0', 'FCD', '2008', 'COMPUTER APPLICATIONS IN INDUSTRIAL DRIVES', 'eee01');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_research`
--

CREATE TABLE `faculty_research` (
  `slNo` int(11) NOT NULL,
  `guideName` varchar(50) NOT NULL,
  `usn` varchar(30) NOT NULL,
  `centreName` varchar(50) NOT NULL,
  `university` varchar(30) NOT NULL,
  `registrationYear` varchar(20) NOT NULL,
  `yearOfCompletion` varchar(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `status` varchar(30) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_research`
--

INSERT INTO `faculty_research` (`slNo`, `guideName`, `usn`, `centreName`, `university`, `registrationYear`, `yearOfCompletion`, `title`, `status`, `facultyId`) VALUES
(1, 'null', 'null', 'null', 'null', '2015', '', 'Design and Development of Efficient Algorithms for', 'Completed 2 subjects of Course', 'cse07'),
(2, 'Dr.Anita Kanavalli', 'null', 'null', 'null', '2015', '', 'Insightful data analytics on big data using effici', 'Completed 2 subjects of Course', 'cse23'),
(3, 'Dr. Seema S', 'null', 'null', 'null', '2015', '', 'Cryptographically secured Data Mining', 'Completed 2 subjects of Course', 'cse22'),
(4, 'Dr. Anita Kanavalli', 'null', 'null', 'null', '2014', '', 'Design and Development of Efficient Big Data Analy', 'Completed the Course Work', 'cse21'),
(5, 'Dr. Anita Kanavalli', 'null', 'null', 'null', '2013', '', 'Modeling Context Information in Pervasive Computin', 'COMPLETED Course Work of all s', 'cse14'),
(6, ' Dr. Jagadish S. Kallimani', 'null', 'null', 'null', '2017', '', 'Development and analysis of real-time computationa', 'null', 'cse19'),
(7, 'Dr Seema S', 'null', 'null', 'null', '2015', '', 'Leveraging  Data Mining Technique in analyzing and', 'Completed 2 subjects of Course', 'cse26'),
(8, 'Dr. Monica R Mundada', 'null', 'null', 'null', '2016', '', 'Design and Implimentation of Algorithms for better', 'null', 'cse16'),
(9, 'Dr. Anita Kanavalli', 'null', 'null', 'null', '2015', '', 'Energy efficient Service Oriented Architeture base', 'Completed 3 papers', 'cse17'),
(10, 'Dr. B K SUJATHA', '1MS11PEN06', 'MSRIT', 'VTU', '2012', '', 'Performance Improvement of QPSK MODEM Implementing', 'submitted thesis', 'te10');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_service`
--

CREATE TABLE `faculty_service` (
  `slNo` int(11) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `fromDate` date NOT NULL,
  `toDate` date NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_service`
--

INSERT INTO `faculty_service` (`slNo`, `designation`, `fromDate`, `toDate`, `facultyId`) VALUES
(2, 'PROFESSOR', '1998-04-16', '0001-00-00', 'cse02'),
(3, 'PROFESSOR', '1995-10-31', '0002-00-00', 'cse03'),
(4, 'ASSOCIATE PROFESSOR', '1999-12-17', '0003-00-00', 'cse04'),
(5, 'ASSOCIATE PROFESSOR', '2002-08-30', '0004-00-00', 'cse05'),
(6, 'ASSOCIATE PROFESSOR', '2000-04-18', '0005-00-00', 'cse06'),
(7, 'ASST PROFESSOR', '2005-08-16', '0006-00-00', 'cse07'),
(8, 'ASST PROFESSOR', '2005-08-17', '0007-00-00', 'cse08'),
(9, 'ASST PROFESSOR', '2005-08-18', '0008-00-00', 'cse09'),
(10, 'ASST PROFESSOR', '2006-02-27', '0009-00-00', 'cse10'),
(11, 'ASST PROFESSOR', '2006-08-01', '0010-00-00', 'cse11'),
(12, 'ASST PROFESSOR', '2007-08-08', '0011-00-00', 'cse12'),
(13, 'ASST PROFESSOR', '2007-09-24', '0012-00-00', 'cse13'),
(14, 'ASST PROFESSOR', '2008-02-27', '0013-00-00', 'cse14'),
(15, 'ASST PROFESSOR', '2009-08-14', '0014-00-00', 'cse15'),
(16, 'ASST PROFESSOR', '2009-08-17', '0015-00-00', 'cse16'),
(17, 'ASST PROFESSOR', '2009-09-23', '0016-00-00', 'cse17'),
(18, 'ASST PROFESSOR', '2010-02-07', '0017-00-00', 'cse18'),
(19, 'ASST PROFESSOR', '2010-07-15', '0018-00-00', 'cse19'),
(20, 'ASST PROFESSOR', '2010-09-08', '0019-00-00', 'cse20'),
(21, 'ASST PROFESSOR', '2012-10-09', '0020-00-00', 'cse21'),
(22, 'ASST PROFESSOR', '2013-08-08', '0021-00-00', 'cse22'),
(23, 'ASST PROFESSOR', '2014-04-08', '0022-00-00', 'cse23'),
(24, 'ASST PROFESSOR', '2014-04-08', '0023-00-00', 'cse24'),
(25, 'ASST PROFESSOR', '2014-04-08', '0024-00-00', 'cse25'),
(26, 'ASST PROFESSOR', '2014-04-08', '0025-00-00', 'cse26'),
(27, 'ASST PROFESSOR', '2014-11-08', '0026-00-00', 'cse27'),
(28, 'Assistant Professor', '2015-12-08', '0027-00-00', 'cse28'),
(29, 'Assistant Professor', '2015-08-13', '0028-00-00', 'cse29'),
(30, 'Associate Professor', '2017-08-08', '0029-00-00', 'cse30'),
(31, 'PROFESSOR, R&D Head', '2016-07-26', '0030-00-00', 'cse31'),
(32, 'PROFESSOR', '2014-11-08', '0031-00-00', 'cse32'),
(33, 'Associate Professor', '2015-02-28', '0032-00-00', 'cse33'),
(38, 'Associate Professor', '2011-03-25', '2018-06-20', 'te06'),
(39, 'Assistant Professor', '2016-01-11', '0000-00-00', 'te14'),
(40, 'Lecturer', '1999-12-13', '2011-12-25', 'te07'),
(41, 'Assistant Professor', '2011-12-25', '0000-00-00', 'te07'),
(42, 'LECTURER', '1999-12-01', '2004-12-24', 'te03'),
(43, 'SENIOR LECTURER', '2004-12-25', '2006-03-01', 'te03'),
(44, 'ASSISTANT PROFESSOR', '2006-03-01', '2011-06-01', 'te03'),
(45, 'Associate professor', '2011-06-01', '0000-00-00', 'te03'),
(46, 'ASSISTANT PROFESSOR', '2005-08-17', '2011-01-01', 'te09'),
(47, 'Assistant Professor', '2012-08-22', '0000-00-00', 'te12'),
(48, 'Assistant Professor', '2007-06-01', '2010-08-01', 'te06'),
(49, 'Project Trainee', '2005-10-01', '2006-07-30', 'te06'),
(50, 'Lecturer', '2005-08-24', '2007-06-05', 'te06'),
(51, 'Assistant Professor', '2010-09-08', '0000-00-00', 'te11'),
(52, 'Technical Support Executive', '2003-07-28', '2004-09-09', 'te06'),
(53, 'Software Programmer', '2001-10-12', '2003-04-28', 'te06'),
(54, 'Asst. Professor', '2007-08-03', '0000-00-00', 'te10'),
(55, 'Associate Professor , Joined as Assistant Professo', '2005-09-05', '2011-01-01', 'te05'),
(56, 'LECTURER', '2006-06-05', '0000-00-00', 'te13'),
(57, 'LECTURER', '2009-06-05', '2012-06-05', 'te13'),
(58, 'Principal Research Scientist', '2007-02-01', '0000-00-00', 'te02'),
(59, 'Associate Professor', '2012-09-01', '2017-08-01', 'te02'),
(60, 'Professor', '2017-08-01', '0000-00-00', 'te02'),
(61, 'Lecturer', '0000-00-00', '0000-00-00', 'te08'),
(62, 'Assistant Professor', '0000-00-00', '0000-00-00', 'te08'),
(63, 'Lecturer', '2001-03-29', '2003-09-02', 'te04'),
(64, 'assistant professor', '2012-08-22', '0000-00-00', 'te13'),
(65, 'Professor', '1992-09-21', '2013-04-12', 'ece02'),
(66, 'Assistant Professor', '1992-09-21', '2005-12-25', 'ece02'),
(67, 'Assistant Professor', '2017-09-04', '2015-06-23', 'cv01'),
(68, 'Asst Professor', '2014-08-04', '0000-00-00', 'bt01');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_workshop_fdp`
--

CREATE TABLE `faculty_workshop_fdp` (
  `slNo` int(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  `title` varchar(100) NOT NULL,
  `sponsoredOrFunded` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `noOfParticipants` int(11) NOT NULL,
  `duration` varchar(10) NOT NULL,
  `role` varchar(30) NOT NULL,
  `nationalOrInternational` varchar(10) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_workshop_fdp`
--

INSERT INTO `faculty_workshop_fdp` (`slNo`, `type`, `title`, `sponsoredOrFunded`, `date`, `noOfParticipants`, `duration`, `role`, `nationalOrInternational`, `facultyId`) VALUES
(2, '', 'Cyber-Physical Systems Symposium (CyPhySS)', 'null', '2017-07-19', 1, '', '', 'null', 'cse05'),
(3, '', 'Distributed and cognitive technologies, business and security', 'null', '2017-07-24', 1, '', '', 'null', 'cse05'),
(4, '', 'Cloud Computing With Amazon Web Services', 'null', '2017-07-31', 1, '', '', 'null', 'cse05'),
(5, '', 'Distributed and cognitive technologies, business and security', 'null', '2017-07-24', 1, '', '', 'null', 'cse06'),
(6, '', 'Distributed and cognitive technologies, business and security', 'null', '2017-07-24', 1, '', '', 'null', 'cse14'),
(7, '', 'Distributed and cognitive technologies, business and security', 'null', '2017-07-24', 1, '', '', 'null', 'cse19'),
(8, '', 'Machine learning techniques and advances for cognitive computing', 'null', '2017-07-31', 1, '', '', 'null', 'cse19'),
(9, '', 'AWS educate', 'null', '2017-07-31', 1, '', '', 'null', 'cse13'),
(10, '', 'Distributed and cognitive technologies, business and security', 'null', '2017-07-24', 1, '', '', 'null', 'cse13'),
(11, '', 'Entrepreneurship Educator Program from Wadhwani Foundation', 'null', '2017-11-23', 1, '', '', 'null', 'cse13'),
(12, '', 'Teaching techniques and Learning management System using ICT tools', 'null', '2018-01-16', 1, '', '', 'null', 'cse26'),
(13, '', 'Workshop on “Research Methodology” ', 'null', '2017-07-17', 1, '', '', 'null', 'cse26'),
(14, '', 'Workshop on “Role of Statistics in Scientific Research”', 'null', '2018-01-04', 1, '', '', 'null', 'cse26'),
(15, '', 'Cyber-Physical Systems Symposium (CyPhySS)', 'null', '2017-07-19', 1, '', '', 'null', 'cse29'),
(16, '', 'Distributed and Cognitive Technologies, Business and Security', 'null', '2017-07-24', 1, '', '', 'null', 'cse29'),
(17, '', 'Cloud Computing With Amazon Web Services', 'null', '2017-07-31', 1, '', '', 'null', 'cse29'),
(18, '', 'Android developer fundamentals faculty training ', 'null', '2017-12-18', 1, '', '', 'null', 'cse23'),
(19, '', 'Teaching techniques and Management systems using ICT tools', 'null', '2018-01-16', 1, '', '', 'null', 'cse23'),
(20, '', 'One week FDP on “Cloud based IOT Programming” ', 'null', '2018-01-16', 1, '', '', 'null', 'cse25'),
(21, '', 'Cyber-Physical Systems Symposium', 'null', '2017-07-19', 1, '', '', 'null', 'cse25'),
(22, '', 'One Week FDP on “Cloud Computing with AWS”', 'null', '2018-02-15', 1, '', '', 'null', 'cse25'),
(23, '', 'oneM2M Developers Tutorial ', 'null', '2013-08-22', 1, '', '', 'null', 'cse25'),
(24, '', 'International Conference on Advances in Computing, Communications and Informatics (ICACCI-2013)', 'null', '2013-08-22', 1, '', '', 'null', 'cse25'),
(25, '', 'AWS Educate ', 'null', '2017-07-31', 1, '', '', 'null', 'cse18'),
(26, '', 'Machine learning techniques and advances for cognitive computing ', 'null', '2017-07-31', 1, '', '', 'null', 'cse18'),
(27, '', 'Distributed and cognitive Technologies , Business and security ', 'null', '2017-07-24', 1, '', '', 'null', 'cse18'),
(28, '', 'AWS educate', 'null', '2017-07-31', 1, '', '', 'null', 'cse17'),
(29, '', 'Distributed and cognitive technologies, business and security', 'null', '2017-07-24', 1, '', '', 'null', 'cse17'),
(30, '', 'FDP on Distributed and cognitive technologies business and security” ', 'null', '2017-07-24', 1, '', '', 'null', 'cse06'),
(31, '', 'FDP on Distributed and cognitive technologies business and security” ', 'null', '2017-07-24', 1, '', '', 'null', 'cse12'),
(32, '', 'Workshop on ”Computational machine learning and artificial intelligence”', 'null', '2018-01-18', 1, '', '', 'null', 'cse12'),
(33, '', 'FDP on Distributed and cognitive technologies business and security” ', 'null', '2017-07-24', 1, '', '', 'null', 'cse27'),
(34, '', 'One week workshop on “Distributed and cognitive Technologies, Business and Security', 'null', '2017-07-24', 1, '', '', 'null', 'cse15'),
(35, '', 'Four days course on “  Social and Information. Networks Analysis: Problems, Models and Machine Learn', 'null', '2018-12-11', 1, '', '', 'null', 'cse15'),
(36, '', 'Two Day National Seminar on” Empowering Indian Society Towards Cashles Economy”', 'null', '2017-11-24', 1, '', '', 'null', 'cse09'),
(37, '', 'Two Day Workshop on “ Research to Impact” ', 'null', '2017-11-13', 1, '', '', 'null', 'cse09'),
(38, '', 'National Workshop on “ Popularisation of Remote Sensing Based Maps and Geospatial Information”', 'null', '2017-08-11', 1, '', '', 'null', 'cse09'),
(39, '', 'Workshop on Cloud Computing with Amazon web services', 'null', '2005-07-31', 1, '', '', 'null', 'cse04'),
(41, '', 'Social and Information Networks Analysis: Problems, Models and Machine Learning Methods”', 'null', '2017-12-11', 1, '', '', 'null', 'cse15'),
(42, '', 'workshop on Distributed and Cognitive technologies, Business and Security ', 'null', '2017-07-24', 1, '', '', 'null', 'cse03'),
(43, '', 'Machine learning techniques and advances for cognitive computing', 'null', '2017-07-31', 1, '', '', 'null', 'cse19'),
(46, '', 'Distributed and cognitive technologies, business and security', 'null', '2017-07-24', 1, '', '', 'null', 'ise01'),
(50, '', 'RF Circuits and Antenna Design', 'Nil', '2017-01-30', 0, '', '', 'National', 'ece02'),
(66, '', 'oneM2M Developers Tutorial ', 'null', '2013-08-22', 1, '', '', 'null', 'ise01'),
(70, '', 'Distributed and cognitive Technologies , Business and security ', 'null', '2017-07-24', 1, '', '', 'null', 'ece02'),
(87, '', 'Building Learning Machines', 'Sponsored', '2018-08-16', 0, '', '', 'Participan', 'te09'),
(89, '', 'RF CIRCUITS AND MICROWAVE SYSTEMS', 'Sponsored', '2018-07-08', 1, '', '', 'FDP', 'te10'),
(90, '', 'ADVANCED DSP APPLICATIONS USING TMS320C6713/6748', 'Sponsored', '2018-07-30', 1, '', '', 'FDP', 'te10'),
(91, '', 'IOT SYSTEM DESIGN USING RPI AND DATA ANALYTICS', 'Sponsored', '2018-01-16', 1, '', '', 'FDP', 'te10'),
(92, '', 'ADVANCED ENGG APPLICATIONS OF INTEGRAL TRANSFORMS, WAVELETS AND STOCHASTIC PROCESS', 'Sponsored', '2017-07-31', 1, '', '', 'FDP', 'te10'),
(93, '', 'Research Trends & Development on IOT enabled 5G Wireless Networks', 'Sponsored', '2017-01-16', 1, '', '', 'FDP', 'te10'),
(94, '', 'Rf circuits and microwave systems', '', '2018-07-23', 40, '', '', '1 week FDP', 'te07'),
(95, '', 'IOT for Wireless Applications', 'Sponsored', '2016-07-25', 1, '', '', 'FDP', 'te10'),
(98, '', '‘Smart Ph.D Planning and how to do research effectively”,', 'Sponsored ', '2013-02-08', 70, '', '', 'Faculty de', 'te05'),
(99, '', '“Advanced Communication Technologies “ ', 'Sponsored', '2013-02-13', 60, '', '', 'Two day wo', 'te05'),
(100, '', '“Heterogeneous Computing: A Roadmap to parallel processing “', 'Sponsored', '2013-03-15', 70, '', '', 'Three day ', 'te05'),
(101, '', '“Probability, Mathematical Statistics and its applications to Engineering “', 'Sponsored ', '2013-03-23', 70, '', '', 'Three day ', 'te05'),
(102, '', '“Advances in Signal processing and Pattern Recognition “', 'Sponsored ', '2013-08-03', 75, '', '', 'Five day w', 'te05'),
(103, '', '“Recent advances in Computer and communication  Networks “', 'Sponsored ', '2013-11-23', 65, '', '', 'Two day wo', 'te05'),
(104, '', '“Software defined radio” ', 'Sponsored ', '2014-01-24', 50, '', '', 'One day wo', 'te05'),
(105, '', 'Springer Author workshop', 'Sponsored ', '2014-02-13', 200, '', '', ' one day w', 'te05'),
(106, '', '“Light runner an optical test bench and its applications”,', 'Sponsored and Organised ', '2014-04-30', 60, '', '', 'Organized ', 'te05'),
(107, '', '“Pedagogy (Core Module)”', 'Sponsored', '2014-08-02', 75, '', '', 'Five day w', 'te05'),
(108, '', '“Advances on RF and Terahertz  Technologies “', 'Sponsored', '2014-11-20', 60, '', '', 'Pre confer', 'te05'),
(109, '', '“Trends in RF, Microwave and Sensor Networks  Technology” ', 'Sponsored', '2015-06-06', 70, '', '', 'Five day w', 'te05'),
(110, '', 'Optical biosensors and biomedical signal processing ', 'Sponsored ', '2015-06-06', 65, '', '', 'One day wo', 'te05'),
(111, '', '“Embedded system design using MSP 430”,', 'Sponsored', '2015-07-24', 70, '', '', 'Five day w', 'te05'),
(112, '', '“Soft Computing and its application in  Engineering”,', 'Sponsored', '2015-08-12', 65, '', '', 'Three day ', 'te05'),
(113, '', '” Pedagogy(Outcome Based Education)”Under TEQIP-II ', 'Sponsored', '2015-08-18', 70, '', '', 'Two day wo', 'te05'),
(114, '', '‘Recent Developments in Signal and Image Processing  with Applications “', 'Sponsored', '2016-01-09', 70, '', '', 'Three day ', 'te05'),
(115, '', '“MICRO AND NANO SENSORS FOR HEALTH  MONITORING”', 'Sponsored', '2016-06-11', 70, '', '', 'Five day w', 'te05'),
(116, '', '“Latex and Research Methodologies “', 'Sponsored', '2016-07-21', 80, '', '', 'Three day ', 'te05'),
(117, '', '“IOT for Wireless application “,', 'Sponsored', '2016-07-29', 70, '', '', 'Five day w', 'te05'),
(118, '', '“ I –Care 2016”  ', 'Sponsored', '2016-10-16', 70, '', '', 'Three day ', 'te05'),
(119, '', '“Research Trends and Development of IOT enabled 5G Wireless Network” ', 'Sponsored', '2017-01-21', 70, '', '', 'Five day w', 'te05'),
(120, '', '“Machine learning techniques and advances for Cognitive  Computing “,', 'Sponsored', '2017-08-05', 80, '', '', 'Five day w', 'te05'),
(121, '', '“IOT SYSTEM DESIGN USING RPI AND DATA ANALYTICS” ', 'Sponsored', '2018-01-20', 80, '', '', 'Five day w', 'te05'),
(122, '', '“RF Circuits and Systems” ', 'Sponsored', '2018-07-28', 40, '', '', 'Five day w', 'te05'),
(123, '', '“Building Learning Machines”', 'Sponsored', '2018-07-21', 70, '', '', 'Five day w', 'te05'),
(124, '', 'RF Circuits and Systems', 'MSRIT', '2018-07-23', 30, '', '', '', 'te02'),
(125, '', 'iot system design using rpi and data analytics', 'MSRIT', '2018-01-16', 0, '', '', '', 'te02'),
(126, '', 'Research Trends & Development on IOT enabled 5G Wireless Networks', '', '2017-01-16', 0, '', '', '', 'te02'),
(127, '', 'Three Day International Conference on I4C-2016', '', '2016-10-06', 0, '', '', '', 'te02'),
(128, '', 'IOT for Wireless Applications', 'teqip II', '2016-07-25', 0, '', '', '', 'te02'),
(129, '', 'RF CIRCUITS AND MICROWAVE SYSTEMS', 'MSRIT', '2018-07-28', 0, '', '', '', 'te13'),
(130, '', 'ATMS INDIA-2018', 'ATMS', '2018-02-05', 0, '', '', '', 'te13'),
(131, '', '“IOT SYSTEM DESIGN USING RPI AND DATA ANALYTICS', 'MSRIT', '2018-01-16', 0, '', '', '', 'te13'),
(132, '', 'MAPLESOFT PRODUCT OVERVIEW- LEVEL 1', 'MSRIT', '2017-09-10', 0, '', '', '', 'te13'),
(133, '', 'ADVANCED ENGG APPLICATIONS OF INTEGRAL TRANSFORMS, WAVELETS AND STOCHASTIC PROCESS', 'MSRIT', '2017-07-31', 0, '', '', '', 'te13'),
(134, '', '1.    One week FDP on “RF Circuits and Systems” held at RIT from 23rd  to 28th   July 2018 ', '', '2018-07-23', 150, '', '', 'National', 'te03'),
(135, '', '2.    One week FDP on “Building Learning Machines” held at RIT from 16th to 21st  July 2018 ', '', '2018-07-16', 150, '', '', 'National', 'te03'),
(136, '', '3.    One week FDP on “Practical Statistical Machine Learning and data Science with Julia” held at R', '', '2018-06-11', 130, '', '', 'National', 'te03'),
(137, '', '4.    One week  faculty development programme on “IOT system design using RPI and data analytics” he', '', '2018-01-16', 150, '', '', 'National', 'te03'),
(138, '', '5.    Two day Workshop on “Entrepreneurship Educator program” organized by DC, RIT and Wadwani Found', '', '2017-11-23', 150, '', '', 'National', 'te03'),
(139, '', '6.    Workshop on Analysis and Inference from UGC (WAIU) held at IISC on October 9th and 10th 2017', '', '2017-10-09', 100, '', '', 'National', 'te03'),
(140, '', '7.    One day National workshop on Popularization of remote Sensing Based Maps and Geospatial inform', '', '2017-08-11', 0, '', '', 'National', 'te03'),
(141, '', '8.    One day Transition training on ISO 9001:2015 International Standard held at MSRIT on 27th Feb ', '', '2017-02-27', 160, '', '', 'Internatio', 'te03'),
(142, '', '9.    Two days training at Nihon Communication on Qualnet Simulator in Feb 2017', '', '2017-02-15', 30, '', '', 'National', 'te03'),
(143, '', '10. One week FDP on “Research Trends and Development on IOT enabled 5G Wireless Networks” Under ', '', '2017-01-16', 50, '', '', 'National', 'te03'),
(144, '', '11.    Three day Winterschool on Web Designing held at MSRIT during Jan 19th to 21st Jan 2017, Condu', '', '2017-01-19', 60, '', '', 'National', 'te03'),
(145, '', '12.    One week FDP on “IOT and Cyber Security using Watson and Bluemix” Under TEQIP-II  held at de', '', '2017-01-09', 60, '', '', 'National', 'te03'),
(146, '', '13.    Two day workshop – “ICARE-2016” organized jointly by IBM and MSRIT from 14-15th October 2016', '', '2016-10-14', 120, '', '', 'National', 'te03'),
(147, '', '14.    One week FDP on “IoT for Wireless Applications “C  from 25th to 29th July 2016 Organized at  ', '', '2016-07-25', 60, '', '', 'National', 'te03'),
(148, '', '15.    One week FDP on “Analog, Power, Embedded Systems and Wireless(IOT) Hands on Workshop” conduct', '', '2016-07-11', 140, '', '', 'National', 'te03'),
(149, '', '16.    One week FDP on “NS3 and its Advanced usage” conducted Under ISTE sponsorship  from 27th June', '', '2016-07-01', 65, '', '', 'National', 'te03'),
(150, '', '17.    One week FDP on Micro –Nano Sensors for health Monitoring Under TEQIP-II  from 6th   to 11th', '', '2016-06-06', 60, '', '', 'National', 'te03'),
(151, '', '18.    Faculty development programme on “Recent Developments in signal and Image processing with app', '', '2016-01-07', 60, '', '', 'National', 'te03'),
(152, '', '19.    Two day workshop on “IEEE Smart Tech Workshop-2015”conducted by IEEE region 10 held at Bangal', '', '2015-09-25', 160, '', '', 'National', 'te03'),
(153, '', '20.    Two days Faculty development programme on “Pedagogy(Outcome Based Education)”Under TEQIP-II  ', '', '2015-08-17', 100, '', '', 'National', 'te03'),
(154, '', '21.Three days Faculty development programme on “Soft Computing and its Applications in Engg” from 10', '', '2015-08-10', 60, '', '', 'National', 'te03'),
(155, '', '22.One week Faculty development programme on “A Practical Approach Towards Embedded System Design”Un', '', '2015-07-27', 70, '', '', 'National', 'te03'),
(156, '', '23.    Two week Faculty development programme on “Foundations For Innovation in Cyber Physical Syst', 'Sponsored by DST', '2015-07-20', 80, '', '', 'National', 'te03'),
(157, '', '24. One week Faculty development programme on “Embedded System Design Using MSP-430” from 20th  to 2', '', '2015-07-20', 70, '', '', 'National', 'te03'),
(158, '', '25. One week workshop on “Trends in RF, Microwave and Sensor Networks Technology”  on 01-06-2015', '', '2015-06-01', 50, '', '', 'National', 'te03'),
(159, '', '26.    Three day workshop on “Embedded System Design Using ARM Cortex M4” from 25th  to 27th May 20', '', '2015-05-25', 40, '', '', 'National', 'te03'),
(160, '', '27.    Three DaysFDP  on Applications of Machine Learning for Music Data Analyticsunder TEQIP-II, 2', '', '2015-05-20', 65, '', '', 'National', 'te03'),
(161, '', '28.     Two Day Work-shop  on Emerging Technologies in Data Science(Machine Learning)under TEQIP-II,', 'Funded under TEQIP-II', '2015-03-26', 100, '', '', 'National', 'te03'),
(162, '', '29. Two day workshop on Sensing and control for Automotive applications, 27-28th Feb 2015, held ', '', '2015-02-27', 80, '', '', 'National', 'te03'),
(163, '', '30.    One day workshop titled Contiki  workshop on Middleware for IOT on 26th Feb 2015 ayt Robert ', '', '2015-02-26', 100, '', '', 'National', 'te03'),
(164, '', '31.    One Day Pre- Conference Work-shop  on Application of RF and TeraHertz Technologies at MSRIT ', '', '2014-11-20', 75, '', '', 'National', 'te03'),
(165, '', '32.    One Day Workshop on Sensors for Robotics on 15th Nov 2014, at MSRIT-IEEE Sensor Council', '', '2015-11-15', 70, '', '', 'National', 'te03'),
(166, '', '33. One day preconference workshop on “Micro and Nano Technology for Consumer electronics” organ', '', '2014-07-08', 60, '', '', 'National', 'te03'),
(167, '', '34. 1 day workshop on “Light Runner –an Optical Test Bench and Its Applications”, 30th Apr, 2014, De', '', '2015-08-30', 50, '', '', 'National', 'te03'),
(168, '', '35.1 day workshop on Software defined radio,24th Jan 2014, Dept of TCE, MSRIT', '', '2014-01-24', 40, '', '', 'National', 'te03'),
(169, '', '36. 2 days workshop on Recent Advances in Computer and Communications Network,22-23 Nov-2013, Dept o', '', '2013-11-22', 60, '', '', 'National', 'te03'),
(170, '', '37.3 days workshop on Wireless Sensor Networks: Recent Trends and Applications, 7-9 Nov 2013, D', '', '2013-11-07', 70, '', '', 'National', 'te03'),
(171, '', '38. 2 days workshop on NovotonNuMicro ARM Cortex-M0 and its Applications under TEQIP-II,10-11thsepte', '', '2013-09-10', 60, '', '', 'National', 'te03'),
(172, '', '39. 3 day NBA workshop , 9-11th May 2013,t PESIT,Bangalore ', '', '2013-05-11', 150, '', '', 'National', 'te03'),
(173, '', '40. 3 day workshop on Micro and Nano Technology Applications under TEQIP-II,25-27th April. 2013, Dep', '', '2013-04-25', 60, '', '', 'National', 'te03'),
(174, '', '41. 3 days workshop on Advances in RF & Wireless Technology, 18 -20th March. 2013,  Dept of ECE,', '', '2013-03-18', 60, '', '', 'National', 'te03'),
(175, '', '42. 3 days workshop on  Heterogeneous Computing:A Road Map to Parallel Processing, 13-15 march 2013,', '', '2013-03-13', 70, '', '', 'National', 'te03'),
(176, '', '43.    One day workshop from Nokia at National Institute of Design,Bangalore.', '', '0000-00-00', 0, '', '', 'National', 'te03'),
(177, '', '44. 2 days workshop on Advanced Communication Technologies,12-13 Feb. 2013,  Dept of TCE, MSRIT', '', '2013-02-12', 60, '', '', 'National', 'te03'),
(178, '', '45. 2 days workshop on Food Adulteration and safety Measures, 4-5 Feb 2013, Dept of Chemistry, M', '', '2013-02-04', 100, '', '', 'National', 'te03'),
(179, '', 'Teaching Techniques and Learning Management Systems using ICT Tools', 'NA', '2018-06-01', 0, '', '', 'National', 'cv01');

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
  `role` varchar(50) NOT NULL,
  `projectTitle` varchar(50) NOT NULL,
  `nameOfFundingAgent` varchar(30) NOT NULL,
  `scheme` varchar(50) NOT NULL,
  `sanctionOrderNumber` varchar(10) NOT NULL,
  `projectDuration` varchar(20) NOT NULL,
  `dateSanctioned` date NOT NULL,
  `sanctionedAmount` int(11) NOT NULL,
  `status` varchar(30) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `funded_projects`
--

INSERT INTO `funded_projects` (`slNo`, `role`, `projectTitle`, `nameOfFundingAgent`, `scheme`, `sanctionOrderNumber`, `projectDuration`, `dateSanctioned`, `sanctionedAmount`, `status`, `facultyId`) VALUES
(2, '', 'Advanced Biometrics for Cockpit Security', 'Boeing', '', '', '2014-2015', '0000-00-00', 3, '', 'te02'),
(3, '', 'Human Brain Controllability', 'Stanford University', '', '', '2015-2016', '0000-00-00', 6, '', 'te02'),
(4, '', 'Wireless Mesh Networks', 'ABB', '', '', '2015-2019', '0000-00-00', 24, '', 'te02'),
(5, '', 'A low cost portable Gait analysis system', 'DST', '', '', '2015-2018', '0000-00-00', 55, '', 'te02'),
(6, '', '', '', '', '', '', '2018-09-19', 0, '', 'cse01');

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
(12, 'Council Nominee to be nominated by the Council (AI', 'Professor B. S. Sonde', 'Former Vice Chancellor Goa University, 274-C, Shree Ananth Nagar 18th Cross, Electronic City, P. O. ', 'Member', 'Ramaiah Institute of Technology'),
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
(12, 'Rishab Animesh', 'Alumni, CSE MSRIT', 'Invited Talk', 'null', '2014-01-24', 'cse'),
(13, 'Mr. P N Santosh', 'Byju’s, Think and Learn Pvt. Ltd.', 'Higher Education  Opportunities for  Biotechnology', 'Biotechnology', '2018-09-07', 'bt');

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
(4, 'Embedded Center', 'Carpet Area', 'Pentium Core II Deo , 1 GB RAM , 160 GB HDD, DVD Writer, Mother Board Intel 945,ACER TFT Monitor, AC', 50, 'cse'),
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
  `typeOfMou` varchar(50) NOT NULL,
  `nationalOrInternational` varchar(20) NOT NULL,
  `mouSigningDate` date NOT NULL,
  `validTill` varchar(20) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `industrial_collaboration_mou`
--

INSERT INTO `industrial_collaboration_mou` (`slNo`, `mouTitle`, `mouSignedWithIndustryOrGovt`, `typeOfMou`, `nationalOrInternational`, `mouSigningDate`, `validTill`, `facultyId`) VALUES
(1, '', '', 'Intership', '', '0000-00-00', '', 'cse22');

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
  `issnPrint` varchar(30) NOT NULL,
  `issnOnline` varchar(50) NOT NULL,
  `journalName` varchar(100) NOT NULL,
  `journalType` varchar(100) NOT NULL,
  `volumeNumber` int(11) NOT NULL,
  `pageNumberFrom` int(11) NOT NULL,
  `pageNumberTo` int(11) NOT NULL,
  `year` varchar(10) NOT NULL,
  `issueNumber` varchar(20) NOT NULL,
  `impactFactor` varchar(20) NOT NULL,
  `citation` varchar(20) NOT NULL,
  `doi` varchar(20) NOT NULL,
  `sjrQuartile` varchar(10) NOT NULL,
  `hIndex1` varchar(20) NOT NULL,
  `hIndex2` varchar(20) NOT NULL,
  `hIndex3` varchar(20) NOT NULL,
  `hIndex4` varchar(20) NOT NULL,
  `hIndex5` varchar(20) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `journal_paper`
--

INSERT INTO `journal_paper` (`slNo`, `authors`, `title`, `issnPrint`, `issnOnline`, `journalName`, `journalType`, `volumeNumber`, `pageNumberFrom`, `pageNumberTo`, `year`, `issueNumber`, `impactFactor`, `citation`, `doi`, `sjrQuartile`, `hIndex1`, `hIndex2`, `hIndex3`, `hIndex4`, `hIndex5`, `facultyId`) VALUES
(1, 'H.R. Roopashree, A. Kanavalli', 'Joint Algorithm for Energy-Conservation and Secure Key Generation in Wireless Sensor Network', '0973-4562', '', 'International Journal of Applied Engineering Research ', 'International', 11, 2250, 0, '2015', '', '', '', '', 'null', '', '', '', '', '', 'cse01'),
(2, ' Jagadish S Kallimani, KG Srinivasa, B Eswara Reddy', 'Statistical and analytical study of guided abstractive text summarization.', '0011-3891', '', 'Journal Current Science', 'null', 110, 0, 0, '2016', '', '', '', '', 'null', '', '', '', '', '', 'cse04'),
(3, 'Rashmi Ranjana T P,  Jayalakshmi D.S., and R. Srinivasan', 'On Replication Strategies for Data Intensive Cloud Applications', '0975-9646', '', 'International Journal of Computer Science and Information Technologies(IJCSIT) ', 'International', 0, 2479, 0, '2015', '', '', '', '', 'null', '', '', '', '', '', 'cse05'),
(4, 'Vinay Kumar N, Chandan G S,Sudershan Rai N, Ganesh Prasad Bhagwat,Monica R Mundada ', 'Smart Crop Monitoring Using Cooja Network Simulator', '1087-1090', '', 'IJAER journal', 'null', 70, 0, 0, '2015', '', '', '', '', 'null', '', '', '', '', '', 'cse06'),
(5, 'Parkavi.A, Dr.N.Vetrivelan ', 'A Flipped Selection: Strategic Approach for Project', 'null', '', 'International Journal of Applied Engineering Research', 'International', 10, 0, 0, '2015', '', '', '', '', 'null', '', '', '', '', '', 'cse08'),
(6, 'Geetha J, Uday Bhaskar, PChenna Reddy\r\n', 'Data Local Reduce Task Scheduling', 'null', '', 'Procedia Computer science', 'null', 0, 598, 0, '2016', '', '', '', '', 'null', '', '', '', '', '', 'cse10'),
(7, 'T.N.R.Kumar', 'A Real Time Approach for Indian Road Analysis using Image Processing and Computer Vision', 'null', '', 'International organization of Scientific Research Journal of Computer Engineering', 'International', 17, 1, 0, '2015', '', '', '', '', 'null', '', '', '', '', '', 'cse11'),
(8, 'Madhusudan G  T.N.R.Kumar', 'MINIMUM ENERGY CONSUMPTION IN ROUTING OF MOBILE AD HOC NETWORK', 'null', '', 'IRACST – International Journal of Computer Networks and Wireless Communications', 'International', 6, 0, 0, '2016', '', '', '', '', 'null', '', '', '', '', '', 'cse11'),
(9, 'Vinay Shankar and Mallegowda  M', 'Time Evolving Rating Prediction with Privacy Preserving and Defending Sybil Attack in Online Service', 'null', '', 'International Imperial Journal of Interdisciplinary Research (IJIR IS)', 'International', 2, 0, 0, '2016', '', '', '', '', 'null', '', '', '', '', '', 'cse17'),
(10, 'S.Rajarajeswari, K.Somasundaram ', 'Data Cleansing using Probabilistic classification for prediction of heart disease', '0973-4562', '', 'International Journal of Applied Engineering Research', 'International', 10, 0, 0, '2015', '', '', '', '', 'null', '', '', '', '', '', 'cse20'),
(11, 'S.Rajarajeswari, K. Somasundaram', 'Data confidentiality and privacy in cloud computing', '0974-5645', '', 'SCI Indian Journal of Science and Technology', 'National', 9, 0, 0, '2016', '', '', '', '', 'null', '', '', '', '', '', 'cse20'),
(12, ' S.Rajarajeswari,  Tulasi srinivas', 'Empirical Analysis of Location Based Service Approaches to Preserve Privacy: A Cloud Computing Appro', '0973-4562', '', 'International Journal of Applied Engineering Research', 'International', 10, 0, 0, '2015', '', '', '', '', 'null', '', '', '', '', '', 'cse20'),
(13, 'S.Rajarajeswari, K.Somasundaram ', 'Data Cleansing using Automated Extraction Tools', '1995-0772', '', 'Advances in Natural and Applied Sciences', 'null', 10, 68, 0, '2016', '', '', '', '', 'null', '', '', '', '', '', 'cse20'),
(14, 'Swamy L N,Sukruth Gowda M A, Rajesh S M, HanumanthaRaju R', 'Improving Social Networks for P2p Content and Context Based File Sharing In Mobile Ubiquitous Comput', 'null', '', 'International -Journal of Engineering Trends and Technology (IJETT)', 'International', 30, 0, 0, '2015', '', '', '', '', 'null', '', '', '', '', '', 'cse28'),
(15, 'Sanjeetha.R, Monisha.B, Anita Kanavalli', 'Prevention of DdoS Attacks in SDN by Using Virtual IP Addresses', '2230-9659', '', 'Journal of Advances in Science and Technology', 'null', 12, 1, 0, '2016', '', '', '', '', 'null', '', '', '', '', '', 'cse01'),
(16, 'Roopashree H.R. and Anita Kanavalli', 'Behavior analysis of STREE, SABR and SARDS under different simulation environments :A Case Study', 'null', '', 'International Journal Of Engineering And Computer Science (IJECS)', 'International', 6, 20033, 0, '2017', '', '', '', '', 'null', '', '', '', '', '', 'cse01'),
(17, 'Sini Anna Alex and Dr. Anita Kanavalli', 'CONTEXT AWARE TEACHING AID CEM FOR LEARNING COMPILER DESIGN CONCEPT FOR STUDENTS WITH LEARNING DISAB', '2320-5407', '', 'International Journal of Advanced Research (IJAR)', 'International', 0, 0, 0, '2017', '', '', '', '', 'null', '', '', '', '', '', 'cse01'),
(18, 'Archana M Kanthi, Annapurna P Patil', 'Analytics on Command Center Data in Healthcare Systems: A Case Study Implemented using Apache, Hadoo', '2320-9801', '', 'IJIRCCE', 'International', 4, 13674, 0, '2016', '', '', '', '', 'null', '', '', '', '', '', 'cse02'),
(19, 'Rachana N B, K G Srinivasa, S Seema', 'Airplane Health Surveillance System: A Framework', 'null', '', 'International Journal of Aviation Systems, Operations and Training', 'International', 3, 11, 0, '2016', '', '', '', '', 'null', '', '', '', '', '', 'cse03'),
(20, 'Shantveer, Jagadish S Kallimani', 'A Study on Dynamic Multilevel Priority Packet Scheduling Scheme for WSNs', '2278-2540', '', 'International Journal of Latest Technology in Engineering, Management & Applied Science', 'International', 5, 58, 0, '2016', '', '', '', '', 'null', '', '', '', '', '', 'cse04'),
(21, 'Meera Devi, Monica R Mundada', 'Real Time Monitoring of Environmental Parameters in Precision Agriculture using Wireless Sensor Netw', 'null', '', 'International Journal of Information and Communication Technology Research', 'International', 6, 0, 0, '2016', '', '', '', '', 'null', '', '', '', '', '', 'cse06'),
(22, 'Sanjeetha.R, Monisha.B, Anita Kanavalli', 'Prevention of DdoS Attacks in SDN by Using Virtual IP Addresses', '2230-9659', '', 'Journal of Advances in Science and Technology', 'null', 12, 1, 0, '2016', '', '', '', '', 'null', '', '', '', '', '', 'cse07'),
(23, 'Madhusudan G  T.N.R.Kumar   ', 'Simulation of Mobile Backbone Network', 'null', '', 'International Journal of Computer Networks and Communications Security', 'International', 4, 213, 0, '2016', '', '', '', '', 'null', '', '', '', '', '', 'cse11'),
(24, 'Madhusudan G  T.N.R.Kumar', 'MODRP: Multipath on-Demand Routing Protocol for MANET', 'null', '', 'International Journal of Wireless Communications and Networking Technologies', 'International', 5, 0, 0, '2016', '', '', '', '', 'null', '', '', '', '', '', 'cse11'),
(25, 'Madhusudhan G  T N R Kumar', 'Performance Analysis of MANET Protocols for DTN', 'null', '', 'International Journal of Latest Trends in Engineering and Technology (IJLTET)', 'International', 7, 0, 0, '2016', '', '', '', '', 'null', '', '', '', '', '', 'cse11'),
(26, 'Sini Anna Alex and Dr. Anita Kanavalli', 'CONTEXT AWARE TEACHING AID CEM FOR LEARNING COMPILER DESIGN CONCEPT FOR STUDENTS WITH LEARNING DISAB', '2320-5407', '', 'International Journal of Advanced Research (IJAR)', 'International', 0, 0, 0, '2017', '', '', '', '', 'null', '', '', '', '', '', 'cse14'),
(27, 'Meera Devi, Monica R Mundada', 'Real Time Monitoring of Environmental Parameters in Precision Agriculture using Wireless Sensor Netw', 'null', '', 'International Journal of Information and Communication Technology Research', 'International', 6, 0, 0, '2016', '', '', '', '', 'null', '', '', '', '', '', 'cse16'),
(28, 'Banerjee Shekhar, and Divakar Harekal', 'Vehicle Control in Vehicle to Infrastructure (V2I) Environment', 'null', '', 'International Journal of Computer Applications', 'International', 168, 0, 0, '2017', '', '', '', '', 'null', '', '', '', '', '', 'cse18'),
(29, 'S.Rajarajeswari, K. Somasundaram', 'Data Cleansing Framework for Heart Disease Data Set in Cloud Environment', '1943-023X', '', 'SJR Journal of Advanced Research in Dynamical and Control Systems', 'null', 9, 0, 0, '2017', '', '', '', '', 'null', '', '', '', '', '', 'cse20'),
(30, 'Shruthi B, Pramod Sunagar', 'Multi-Authentication for File Access in Cloud Storage with DNA Crypto System', '2454-1362', '', ' International Journal Imperial Journal of Interdisciplinary Research (IJIR)', 'International', 3, 0, 0, '2017', '', '', '', '', 'null', '', '', '', '', '', 'cse21'),
(31, 'Sowmya B J, Chetan, Pradeep, K.G.Srinivasa', 'Efficient Image Denoising for Effective Digitization using Image Processing Techniques and Neural Ne', 'null', '', 'IJAEC ', 'International', 7, 77, 0, '2016', '', '', '', '', 'null', '', '', '', '', '', 'cse22'),
(32, 'Sowmya B J, Chetan, Pradeep, K.G.Srinivasa', 'Efficient Image Denoising for Effective Digitization using Image Processing Techniques and Neural Ne', 'null', '', 'IJAEC ', 'International', 7, 77, 0, '2016', '', '', '', '', 'null', '', '', '', '', '', 'cse23'),
(33, 'Srinivasa, K. G., Hegde, G., Mishra, K., Siddiqui, M. N., Kumar, A., & Kumar, Pradeep', 'Microsense: Sensor Framework for IoT System-on-Chip', 'null', '', 'International Journal of Handheld Computing Research (IJHCR)', 'International', 7, 38, 0, '2016', '', '', '', '', 'null', '', '', '', '', '', 'cse23'),
(34, 'Sowmya B J, Chetan, Pradeep, K.G.Srinivasa', 'Efficient Image Denoising for Effective Digitization using Image Processing Techniques and Neural Ne', 'null', '', 'IJAEC ', 'International', 7, 77, 0, '2016', '', '', '', '', 'null', '', '', '', '', '', 'cse24'),
(35, 'Shilpa Shashikant Chaudhari, Rajashekhar C. Biradar\r\n', 'Resource prediction-based routing using agents in mobile ad hoc networks\r\n\r\n\r\n', 'null', '', 'Int. J. Communication Networks and Distributed Systems\r\n\r\n', 'International', 0, 0, 0, 'null', '', '', '', '', 'null', '', '', '', '', '', 'cse30'),
(36, 'Srinidhi Hiriyannaiah, G.M. Siddesh, P. Anoop, K.G. Srinivasa', 'Semi-structured data analysis and visualisation using NoSQL', 'null', '', 'International Journal of Big Data Intelligence', 'International', 0, 0, 0, '2018', '', '', '', '', 'null', '', '', '', '', '', 'cse27'),
(37, 'Sanjeetha R., Akshar Prasanna, Pradeep Kumar D., Anita Kanavalli', 'Mitigation of Controller induced DDoS Attack on Primary Server in High Traffic Scenarios of Software', 'null', '', 'International Journal of Pure and Applied Mathematics', 'International', 0, 0, 0, '2018', '', '', '', '', 'null', '', '', '', '', '', 'cse23'),
(38, 'Shruthi B R, Pramod C SUNAGAR', 'Multi-Authentication for File Access in Cloud Storage with DNA Crypto System', '2454-1362', '', 'Imperial Journal of Interdisciplinary Research', 'null', 3, 0, 0, '2017', '', '', '', '', 'null', '', '', '', '', '', 'cse21'),
(39, 'Pramod Sunagar, Pradeep Kumar, Mallegowda M, Dr. Anita Kanavalli', 'A Vehicular Apprehension Scheme in Wireless Networks', '2347-8616', '', 'International Journal of Innovations & Advancement in Computer Science', 'International', 0, 0, 0, '2017', '', '', '', '', 'null', '', '', '', '', '', 'cse21'),
(40, 'Shishir Mathew, Mamatha Jadav V,', 'SE2R2: Secure Energy Efficient and Reliable Routing Protocol in Presence of Phishing Attacks for WSN', '2395-0056', '', 'International Research Journal of Engineering and Technology (IRJET)', 'International', 4, 0, 0, '2017', '', '', '', '', 'null', '', '', '', '', '', 'cse12'),
(41, 'Varunashree N  T N R Kumar', 'Identification and classification of brain tumor MRI images with feature extraction using DWT and pr', 'null', '', 'Springer Nature Journal', 'null', 5, 0, 0, '2018', '', '', '', '', 'null', '', '', '', '', '', 'cse11'),
(42, 'Geetha J, Uday Bhaskar, P Chenna Reddy\r\n', 'New Hadoop Scheduler Framework', '0973-4562', '', 'International Journal of Applied Engineering Research\r\n\r\n', 'International', 12, 15152, 0, '2017', '', '', '', '', 'null', '', '', '', '', '', 'cse10'),
(43, 'Geetha J, Uday Bhaskar, P Chenna Reddy', 'An Analytical Approach for Optimizing the Performance of Hadoop Map Reduce over RoCE\r\n\r\n', 'null', '', 'IGI Global Special Issue : IoT, Fog and Cloud Computing Towards Building Intelligent Systems\r\n\r\n', 'null', 10, 0, 0, '2018', '', '', '', '', 'null', '', '', '', '', '', 'cse10'),
(44, 'Parkavi.A, Dr.K.Lakshmi, Dr.K.G.Srinivasa', 'Predicting effective course conduction strategy using Datamining techniques', 'null', '', 'Educational research and reviews, Academic Journals', 'null', 12, 1188, 0, '2017', '', '', '', '', 'null', '', '', '', '', '', 'cse08'),
(45, 'Sanjeetha R., Akshar Prasanna, Pradeep Kumar D., Anita Kanavalli', 'Mitigation of Controller induced DDoS Attack on Primary Server in High Traffic Scenarios of Software', 'null', '', 'International Journal of Pure and Applied Mathematics', 'International', 0, 0, 0, '2018', '', '', '', '', 'null', '', '', '', '', '', 'cse07'),
(46, 'Sanjeetha, R., Shikhar Srivastava, Rishab Pokharna, Syed Shafiq, and Anita Kanavalli', 'Mitigation of DDoS attack instigated by compromised switches on SDN controller by analyzing the flow', 'null', '', 'International Journal of Engineering and Technology (UAE)', 'International', 7, 46, 0, '2018', '', '', '', '', 'null', '', '', '', '', '', 'cse07'),
(47, 'Jayalakshmi D S,  R Srinivasan', 'A Greedy File Merging Algorithm for Handling Small Files in HDFS', 'null', '', 'International Journal of Pure and Applied mathematics', 'International', 0, 0, 0, 'null', '', '', '', '', 'null', '', '', '', '', '', 'cse05'),
(48, 'Jayalakshmi D S,  R Srinivasan', 'An Analytical Model for HDFS Replication Pipeline based on Queuing Theory', 'null', '', 'International Journal of Applied Engineering Research', 'International', 12, 15158, 0, '2017', '', '', '', '', 'null', '', '', '', '', '', 'cse05'),
(49, 'N.M. Annigeri, S. Shetty, A.P. Patil', 'Analysing the supervised learning methods for prediction of healthcare data in cloud environment: A ', '2347-2693', '', 'International Journal of Computer Sciences and Engineering', 'International', 6, 447, 0, '2018', '', '', '', '', 'null', '', '', '', '', '', 'cse02'),
(50, 'Shashikala Gudimani, Koushik S, Dr Annapurna P. Patil', 'SLA Based Brokerage for Multicloud Migration', '2347-8616', '', 'International Journal of Innovations & Advancement in Computer Science IJIACS', 'International', 6, 128, 0, '2017', '', '', '', '', 'null', '', '', '', '', '', 'cse02'),
(51, 'Sanjeetha R., Akshar Prasanna, Pradeep Kumar D., Anita Kanavalli', 'Mitigation of Controller induced DDoS Attack on Primary Server in High Traffic Scenarios of Software', 'null', '', 'International Journal of Pure and Applied Mathematics', 'International', 0, 0, 0, '2018', '', '', '', '', 'null', '', '', '', '', '', 'cse01'),
(52, 'Sanjeetha, R., Shikhar Srivastava, Rishab Pokharna, Syed Shafiq, and Anita Kanavalli', 'Mitigation of DDoS attack instigated by compromised switches on SDN controller by analyzing the flow', 'null', '', 'International Journal of Engineering and Technology (UAE)', 'International', 7, 46, 0, '2018', '', '', '', '', 'null', '', '', '', '', '', 'cse01'),
(55, 'Rashmi Ranjana T P,  Jayalakshmi D.S., and R. Srinivasan', 'On Replication Strategies for Data Intensive Cloud Applications', '0975-9646', '', 'International Journal of Computer Science and Information Technologies(IJCSIT) ', 'International', 0, 2479, 0, '2015', '', '', '', '', 'null', '', '', '', '', '', 'ise01'),
(59, 'T.N.R.Kumar', 'A Real Time Approach for Indian Road Analysis using Image Processing and Computer Vision', 'null', '', 'International organization of Scientific Research Journal of Computer Engineering', 'International', 17, 1, 0, '2015', '', '', '', '', 'null', '', '', '', '', '', 'ece02'),
(75, 'Madhusudan G  T.N.R.Kumar   ', 'Simulation of Mobile Backbone Network', 'null', '', 'International Journal of Computer Networks and Communications Security', 'International', 4, 213, 0, '2016', '', '', '', '', 'null', '', '', '', '', '', 'ise01'),
(79, 'Meera Devi, Monica R Mundada', 'Real Time Monitoring of Environmental Parameters in Precision Agriculture using Wireless Sensor Netw', 'null', '', 'International Journal of Information and Communication Technology Research', 'International', 6, 0, 0, '2016', '', '', '', '', 'null', '', '', '', '', '', 'ece02'),
(99, 'Jayalakshmi D S,  R Srinivasan', 'A Greedy File Merging Algorithm for Handling Small Files in HDFS', 'null', '', 'International Journal of Pure and Applied mathematics', 'International', 0, 0, 0, 'null', '', '', '', '', 'null', '', '', '', '', '', 'ise01'),
(100, 'Jayalakshmi D S,  R Srinivasan', 'An Analytical Model for HDFS Replication Pipeline based on Queuing Theory', 'null', '', 'International Journal of Applied Engineering Research', 'International', 12, 15158, 0, '2017', '', '', '', '', 'null', '', '', '', '', '', 'ece02'),
(105, 'ARVIND KUMAR G', 'Adaptive Noise Detection Using Texture Feature Extraction and Random Forest Classification', '2185310X', '', 'International Journal of IntelligentEngineering Systems', 'INTERNATIONAL', 11, 254, 0, '2018', '', '', '', '', '6', '', '', '', '', '', 'te14'),
(106, 'ARVIND KUMAR G', 'A NOVEL APPROACH FOR IMAGE NOISE ESTIMATION AND ITS REMOVAL', ' 2393-9028', '', 'International Journal of Research in electronics and Computer Engineering', 'INTERNATIONAL', 6, 135, 0, '2018', '', '', '', '', '', '', '', '', '', '', 'te14'),
(107, 'Umesharaddy, B.K.Sujatha', 'SDR IMPLEMENTATION OF QPSK MODEM WITH AWGN', '2229-5518', '', 'International Journal of Scientific & Engineering Research', 'INTERNATIONAL JOURNAL', 8, 484, 0, '2017', '', '', '', '', 'THOMSON RO', '', '', '', '', '', 'te10'),
(108, 'Umesharaddy, B.K.Sujatha', 'Performance Improvement of QPSK Modem with AWGN Implemented in FPGA', '2229-5518', '', 'International Journal of Scientific & Engineering Research', 'INTERNATIONAL JOURNAL', 8, 206, 0, '2017', '', '', '', '', 'THOMSON RO', '', '', '', '', '', 'te10'),
(109, 'Umesharaddy, B.K.Sujatha', 'OPTIMIZED MODEM DESIGN FOR SDR APPLICATIONS', '2395-0056', '', 'International Research Journal of Engineering and Technology', 'INTERNATIONAL JOURNAL', 2, 1831, 0, '2015', '', '', '', '', '2.3 IF', '', '', '', '', '', 'te10'),
(110, 'Umesharaddy, B.K.Sujatha', 'FPGA Implementation of High Throughput Digital QPSK Modulator using Verilog HDL', '2277-7970', '', 'International Journal of Advanced Computer Research', 'INTERNATIONAL JOURNAL', 4, 217, 0, '2014', '', '', '', '', '1.83 IF SC', '', '', '', '', '', 'te10'),
(111, 'Sai Lakshmi Ramya H R', 'Fuzzy Based Multimodal Medical Image  Fusion ', '2321-2705', '', 'International Journal of Research and Scientific Innovation ', 'International', 0, 0, 0, 'May 2015', '', '', '', '', '', '', '', '', '', '', 'te09'),
(112, 'Mamata M Teggihalli, Mrs. H R Ramya', 'Image Fusion Based on DWT Type-2 Fuzzy      Logic System', '2229-5518', '', 'SystemInternational Journal of Scientific & Engineering Research ', 'International', 0, 716, 0, 'May-2018 ', '', '', '', '', '', '', '', '', '', '', 'te09'),
(113, 'Swathi Rathore, Krishna Prasad ', 'Binary offset Carrier Modulation for Wireless Radio Communication”', '', '', 'Inter science Research  Network, Journal', 'National ', 1, 154, 0, 'April 2013', '', '', '', '', '', '', '', '', '', '', 'te05'),
(114, 'Priyanka D C, Krishna Prasad S J ', 'Development of prototype for tremor data collection', 'ISSN 2229-5518', '', 'in International journal of Scientific and Engineering Research IJSER', 'International', 5, 0, 0, ' June 2014', '', '', '', '', '', '', '', '', '', '', 'te05'),
(115, 'S.J.Krishna Prasad, Prajwal R, Amrutha Haritha B N, Neha M V, Lakshmi Priya J', 'Automatic anesthesia monitoring and Control system', 'ISSN 2394-1588', '', 'International advanced research Journal In Science, Engineering and Technology,IARJSET ', 'International', 3, 0, 0, ' May 2016', '', '', '', '', '', '', '', '', '', '', 'te05'),
(116, 'Santhosh Kumar G, Krishna Prasad S J', 'Blood Pressure Measurement and Prediction of  BP Effects Using Classification Algorithm', 'ISSN NO:2348 - 9480 ', '', 'International journal of Emerging Trends in Science and Technology IJETST', 'International', 3, 0, 0, 'June 2016', '', '', '', '', '', '', '', '', '', '', 'te05'),
(117, 'Akash, Krishna Prasad S.J', 'Design and Implementation of web based Vehicle emission  Monitoring and notification system using Zi', 'ISSN 2395-0072', '', 'International research Journal        of Engineering and Technology IRJET,', 'International', 3, 0, 0, 'Feb 2016', '', '', '', '', '', '', '', '', '', '', 'te05'),
(118, 'Joice John, S.J.Krishna Prasad, R.Prabhakara ', 'Effect of lead distance on the Transmittance of the light through mortar made out of Optical fiber', 'ISSN 2321-7308', '', 'International Journal of Research in Engineering and Technology, IJRET', 'International', 5, 0, 0, 'Sep2016', '', '', '', '', '', '', '', '', '', '', 'te05'),
(119, 'Pooja viswanath,SoumenRoy,S.J.KrishnaPrasad', 'ION driving app development for android  based smart phones', ' ISSN  2321-0613', '', 'IJSRD journal', 'International', 5, 1069, 0, 'May2017', '', '', '', '', '', '', '', '', '', '', 'te05'),
(120, 'Eswaran, Rajatha,Viswanath Talasila', 'Design of a novel pressure signal based biometric system for automated identification of cockpit per', 'ISSN (Online): 2394-0697, ISSN', '', '', 'International Journal of Current Engineering And Scientific Research (IJCESR)', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', 'te02'),
(121, 'Sandeep K, Viswanath T', 'Recognition of Medicinal Plants Based on Its Leaf Features', '', '', 'Springer Book on Systems Thinking Approach for Social Problems', '', 0, 0, 0, 'Springer-2', '', '', '', '', '', '', '', '', '', '', 'te02'),
(122, 'Swetha Amit', 'Design and Implementation of Printed Folded Dipole Antenna for GPS Application', 'ISSN: 23210613', '', 'International Journal for Scientific Research and Development (IJSRD)', '', 3, 0, 0, '2015', '', '', '', '', '', '', '', '', '', '', 'te13'),
(123, 'Swetha, A., and Raol, J. R', 'Generalized model error estimators for nonlinear systems', '2319-7463', '', 'International Journal of Enhanced Research in Science, Technology & Engineering ', 'Thomson Reuters Researcher Id: B-6734-2016', 5, 77, 0, '2016', '', '', '', '', '', '', '', '', '', '', 'te13'),
(124, 'Swetha, A., and Raol, J. R', 'Continuous Time H-infinity Filter with Asymptotic Convergence', '2454-2261', '', 'International Research Journal of Engineering, IT and Scientific Research', '', 3, 69, 0, '2017', '', '', '', '', '', '', '', '', '', '', 'te13'),
(125, 'Swetha, A., and Raol, J. R', 'Data Fusion with Model Error Estimators and Stability Analysis', '0973-4562', '', 'International Journal of Applied  Engineering Research', 'SCOPUS', 12, 5819, 0, '2017', '', '', '', '', '', '', '', '', '', '', 'te13'),
(126, '    Sushmita Tapashetti, Dr. Shobha K.R', 'Precision Agriculture using LoRa', '2229-5518', '', 'International Journal of Scientific & Engineering Research', 'National', 9, 0, 0, 'May 2018', '', '', '', '', '3.8', '', '', '', '', '', 'te03'),
(127, 'Anusha P, Dr.Shobha K R  ', 'Design and Implementation of Wireless Sensor Network for Precision Agriculture', '2395-3470', '', 'International Journal of Scientific Engineering and Applied Science (IJSEAS)', 'National', 1, 521, 0, 'July 2015', '', '', '', '', '4.214', '', '', '', '', '', 'te03'),
(128, 'Sampada H K, Dr.Shobha K R, Rakhi S ', 'Review on Prevention and Detection of Black hole Attack in MANETs', '0976-1353 ', '', ',International Journal of Emerging Technology in Computer Science & Electronics (IJETCSE)', 'International', 14, 437, 0, 'APRIL 2015', '', '', '', '', '', '', '', '', '', '', 'te03'),
(129, 'Rakhi S, Dr.Shobha K R, Sampada H K   ', 'A Comprehensive Survey on Security Issues in VANETs for Safe Communication', '0976-1353', '', 'International Journal of Emerging Technology in Computer Science & Electronics (IJETCSE)', 'International', 14, 446, 0, 'APRIL 2015', '', '', '', '', '', '', '', '', '', '', 'te03'),
(130, ' Shobha.K.R,  Dr.K.Rajanikanth ', 'Adaptive AODV routing protocol for Mobile Ad hoc Networks', '0976-2205', '', 'International Journal of Ad hoc, Sensor & Ubiquitous Computing (IJASUC)', 'International', 2, 0, 0, ' March 201', '', '', '', '', '', '', '', '', '', '', 'te03'),
(131, ' Shobha.K.R. and Dr.K.Rajanikanth    ', 'Analysis of performance of DSR using different types of cache in dynamic Environment', ' 2229 – 3957', '', 'International Journal of Distributed and Parallel Systems (IJDPS)', 'International', 2, 0, 0, ' January 2', '', '', '', '', '', '', '', '', '', '', 'te03'),
(132, ' Shobha.K.R. and Dr.K.Rajanikanth', 'Enhanced Dynamic Source Routing Protocol using On Demand Passive Clustering', '1947-5500', '', 'International Journal of Computer Science and information Security(IJCSIS)', 'International', 8, 0, 0, 'August 201', '', '', '', '', '0.438 ', '', '', '', '', '', 'te03'),
(133, 'Bharath Yoganarasimha, Vivek Chandramohan, Thirupathihalli Pandurangappa Krishna Murthy, Bhavya Soma', 'Prediction of deleterious single nucleotide polymorphisms and their effect on the sequence and struc', '1658-3612', '', 'Journal of Taibah University Medical Sciences', 'International', 12, 221, 0, '2017', '', '', '', '', 'Q3', '', '', '', '', '', 'bt01'),
(134, 'Nandeesh M S, Arjun Reddy, R Prabhakara', 'Investigations On Effect of CFRP Strips Retrofitted Using NSM Method On Two-Way NSC and HSC Slabs Su', '2321-7308', '', 'International Journal of Research in Engineering and Technology', 'National', 5, 53, 0, '2016', '', '', '', '', '', '', '', '', '', '', 'cv01'),
(135, 'Arjun Reddy, Nandeesh M S, R Prabhakara', 'Studies on Strength and Deformation Behaviour of Two-way NSC and HSC Slabs under Single Point Loadin', '2321-7308', '', 'International Journal of Research in Engineering and Technology', 'International', 5, 42, 0, '2016', '', '', '', '', '', '', '', '', '', '', 'cv01'),
(136, 'a', 'b', 'c', 'd', 'e', 'f', 0, 0, 0, 's', 'j', 'k', 'l', 'm', 't', 'n', 'o', 'p', 'q', 'r', 'cse22');

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
-- Table structure for table `phd_scholar`
--

CREATE TABLE `phd_scholar` (
  `slNo` int(11) NOT NULL,
  `role` varchar(20) NOT NULL,
  `scholarName` varchar(50) NOT NULL,
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

INSERT INTO `phd_scholar` (`slNo`, `role`, `scholarName`, `researchCentre`, `university`, `registrationYear`, `usn`, `title`, `status`, `facultyId`) VALUES
(1, '', 'Chetan Shetty', 'null', 'null', '2015', 'null', 'null', 'Completed 2 course w', 'cse24'),
(2, '', 'Sowmya B J', 'null', 'null', '2015', 'null', 'null', 'Completed 2 course w', 'cse22'),
(3, '', 'Sanjeetha. R', 'null', 'null', '2015', 'null', 'null', 'Completed 2 course w', 'cse07'),
(4, '', 'Pradeep kumar D', 'null', 'null', '2015', 'null', 'null', 'Completed 2 course w', 'cse23'),
(5, '', 'Pramod Sunagar', 'null', 'null', '2014', 'null', 'null', 'Completed the course', 'cse21'),
(6, '', 'Sini Anna Alex', 'null', 'null', '2013', 'null', 'null', 'Completed Course Wor', 'cse14'),
(7, '', 'Chandrika C.P', 'null', 'null', '2017', 'null', 'null', 'To start Course Work', 'cse19'),
(8, '', 'Darshana A Naik', 'null', 'null', '2015', 'null', 'null', 'Completed 2 course w', 'cse26'),
(9, '', 'Parkavi.A', 'null', 'null', '2012', 'null', 'null', 'Comprehensive viva c', 'cse08'),
(10, '', 'Meera A Kawagi', 'null', 'null', '2016', 'null', 'null', 'Completed 2 course w', 'cse16'),
(11, '', 'Mallegowda M', 'null', 'null', '2015', 'null', 'null', 'completed 3 subjects', 'cse17'),
(12, '', 'Ramya H R', 'Telecommunication Engineering', 'VTU', 'May 2012', '1MS11PEN08', 'Fuzzy Logic', 'Persuing', 'te09'),
(13, '', 'Parimala.P', 'Jain University', 'Jain University', '2011', '11PPEEE011', 'Image Tracking and fusion using Square root Inform', 'Completed (July 2018', 'te07'),
(14, '', 'UMESHARADDY', 'DEPT. OF TCE, MSRIT, BANGALORE-560054', 'VTU', '2012', '1MS11PEN06', 'Performance Improvement of QPSK MODEM Implementing', 'submitted thesis', 'te10'),
(15, '', 'S J Krishnaprasad', 'MSRIT', 'VTU, Belgaum', '2014', '1MS13PEN13', 'APPLICATIONS OF FBG SENSORS FOR DIAGNOSIS OF NEURO', 'Completed 3 subjects', 'te02'),
(16, '', 'Mahendra SJ', 'MSRIT', 'VTU', '2014', '1MS15PEJ03', 'Design of advanced FES system for control of movem', 'Registered for cours', 'te02'),
(17, '', 'Vanitha KM', 'MSRIT', 'VTU', 'Dec 2014', '1MS15PEJ06', 'Sensor fusion for tremor detection and analysis', 'Completed Course wor', 'te02'),
(18, '', 'Balaji V', 'MSRIT', 'VTU', 'Dec 2014', '1MS15PEJ14', 'Performance validation of a wireless mesh network', 'Registered for cours', 'te02'),
(19, '', 'Sandeep Kumar E', 'MSRIT', 'VTU', '31-07-2017', '1MS17PEA17', 'Analysis of Large Scale Complex Networks in the co', '•    Completed cours', 'te02');

-- --------------------------------------------------------

--
-- Table structure for table `professional_activities`
--

CREATE TABLE `professional_activities` (
  `slNo` int(11) NOT NULL,
  `board` varchar(50) NOT NULL,
  `college` varchar(100) NOT NULL,
  `externalOrInternal` varchar(20) NOT NULL,
  `year` varchar(10) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `professional_body_membership`
--

CREATE TABLE `professional_body_membership` (
  `slNo` int(11) NOT NULL,
  `professionalBodyName` varchar(50) NOT NULL,
  `membershipType` varchar(30) NOT NULL,
  `subscriptionYear` varchar(20) NOT NULL,
  `facultyId` varchar(10) NOT NULL
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

--
-- Dumping data for table `projects_handled`
--

INSERT INTO `projects_handled` (`slNo`, `batch`, `ugOrPg`, `projectTitle`, `facultyId`) VALUES
(3, '', '', '', 'cse01'),
(4, ' 2018 batch-Shreyanka N, Shubhangi T, Soundharya A', 'UG', 'Smart parking system', 'te07'),
(5, ' 2018 batch- Kavyashree M.S, Niharika S.N ,Chandra', 'UG', 'In-pipe inspection robot', 'te07'),
(6, '2018-K.Lakshmi Sowmya (1MS16LDC03)', 'PG', 'Recursive Algorithm for detection and Tracking of ', 'te07'),
(8, '2018', 'UG', 'Soldier Tracking System using LoRa Technology', 'te10'),
(9, '2017', 'PG', 'SDR IMPLEMENTATION OF QPSK MODEM WITH AWGN', 'te10'),
(10, '2017-18', 'UG', 'Muscle fatigue measurement using EMG', 'te02'),
(11, '2017-18', 'UG', 'Gait analysis for gym applications', 'te02'),
(12, '2017-18', 'UG', 'Real time animation visualization of gait', 'te02'),
(13, '2017', 'Ug', 'Automatic Vehical Number Recognition System', 'ece02'),
(14, '2017-18', 'Ug', 'Extensive Survey Project', 'cv01');

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

--
-- Dumping data for table `software`
--

INSERT INTO `software` (`slNo`, `softwareName`, `licenseNumber`, `noOfUsers`, `expiryDate`, `vendorName`, `departmentId`) VALUES
(1, 'uho;i', 'oihj', 0, '0000-00-00', 'oi;h', 'cse');

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
-- Indexes for table `administrator_login`
--
ALTER TABLE `administrator_login`
  ADD PRIMARY KEY (`emailId`);

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
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `professional_body_membership`
--
ALTER TABLE `professional_body_membership`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

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
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `conference_paper`
--
ALTER TABLE `conference_paper`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `consultancy`
--
ALTER TABLE `consultancy`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses_handled`
--
ALTER TABLE `courses_handled`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `faculty_conference_symposia`
--
ALTER TABLE `faculty_conference_symposia`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `faculty_guest_lecture`
--
ALTER TABLE `faculty_guest_lecture`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `faculty_patent`
--
ALTER TABLE `faculty_patent`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `faculty_qualification`
--
ALTER TABLE `faculty_qualification`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `faculty_research`
--
ALTER TABLE `faculty_research`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `faculty_service`
--
ALTER TABLE `faculty_service`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `faculty_workshop_fdp`
--
ALTER TABLE `faculty_workshop_fdp`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `finance`
--
ALTER TABLE `finance`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `funded_projects`
--
ALTER TABLE `funded_projects`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `governing_body`
--
ALTER TABLE `governing_body`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `guest_lectures_invited`
--
ALTER TABLE `guest_lectures_invited`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `hardware`
--
ALTER TABLE `hardware`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `industrial_collaboration_mou`
--
ALTER TABLE `industrial_collaboration_mou`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `industrial_visit`
--
ALTER TABLE `industrial_visit`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `journal_paper`
--
ALTER TABLE `journal_paper`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `phd_scholar`
--
ALTER TABLE `phd_scholar`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `seminar_workshop`
--
ALTER TABLE `seminar_workshop`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `software`
--
ALTER TABLE `software`
  MODIFY `slNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  ADD CONSTRAINT `academic_council_ibfk_1` FOREIGN KEY (`instituteName`) REFERENCES `institution` (`instituteName`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `admissions`
--
ALTER TABLE `admissions`
  ADD CONSTRAINT `admissions_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `book_chapter`
--
ALTER TABLE `book_chapter`
  ADD CONSTRAINT `book_chapter_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `conference_paper`
--
ALTER TABLE `conference_paper`
  ADD CONSTRAINT `conference_paper_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `consultancy`
--
ALTER TABLE `consultancy`
  ADD CONSTRAINT `consultancy_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `courses_handled`
--
ALTER TABLE `courses_handled`
  ADD CONSTRAINT `courses_handled_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`instituteName`) REFERENCES `institution` (`instituteName`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faculty_conference_symposia`
--
ALTER TABLE `faculty_conference_symposia`
  ADD CONSTRAINT `faculty_conference_symposia_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faculty_guest_lecture`
--
ALTER TABLE `faculty_guest_lecture`
  ADD CONSTRAINT `faculty_guest_lecture_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faculty_patent`
--
ALTER TABLE `faculty_patent`
  ADD CONSTRAINT `faculty_patent_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faculty_qualification`
--
ALTER TABLE `faculty_qualification`
  ADD CONSTRAINT `faculty_qualification_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faculty_research`
--
ALTER TABLE `faculty_research`
  ADD CONSTRAINT `faculty_research_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faculty_service`
--
ALTER TABLE `faculty_service`
  ADD CONSTRAINT `faculty_service_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faculty_workshop_fdp`
--
ALTER TABLE `faculty_workshop_fdp`
  ADD CONSTRAINT `faculty_workshop_fdp_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `finance`
--
ALTER TABLE `finance`
  ADD CONSTRAINT `finance_ibfk_1` FOREIGN KEY (`instituteName`) REFERENCES `institution` (`instituteName`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `funded_projects`
--
ALTER TABLE `funded_projects`
  ADD CONSTRAINT `funded_projects_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `governing_body`
--
ALTER TABLE `governing_body`
  ADD CONSTRAINT `governing_body_ibfk_1` FOREIGN KEY (`instituteName`) REFERENCES `institution` (`instituteName`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `guest_lectures_invited`
--
ALTER TABLE `guest_lectures_invited`
  ADD CONSTRAINT `guest_lectures_invited_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hardware`
--
ALTER TABLE `hardware`
  ADD CONSTRAINT `hardware_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `industrial_collaboration_mou`
--
ALTER TABLE `industrial_collaboration_mou`
  ADD CONSTRAINT `industrial_collaboration_mou_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `industrial_visit`
--
ALTER TABLE `industrial_visit`
  ADD CONSTRAINT `industrial_visit_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `journal_paper`
--
ALTER TABLE `journal_paper`
  ADD CONSTRAINT `journal_paper_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `non_teaching_staff`
--
ALTER TABLE `non_teaching_staff`
  ADD CONSTRAINT `non_teaching_staff_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `phd_scholar`
--
ALTER TABLE `phd_scholar`
  ADD CONSTRAINT `phd_scholar_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `professional_activities`
--
ALTER TABLE `professional_activities`
  ADD CONSTRAINT `professional_activities_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `professional_body_membership`
--
ALTER TABLE `professional_body_membership`
  ADD CONSTRAINT `professional_body_membership_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `projects_handled`
--
ALTER TABLE `projects_handled`
  ADD CONSTRAINT `projects_handled_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `scholarship`
--
ALTER TABLE `scholarship`
  ADD CONSTRAINT `scholarship_ibfk_1` FOREIGN KEY (`instituteName`) REFERENCES `institution` (`instituteName`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seminar_workshop`
--
ALTER TABLE `seminar_workshop`
  ADD CONSTRAINT `seminar_workshop_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `software`
--
ALTER TABLE `software`
  ADD CONSTRAINT `software_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff_achievement`
--
ALTER TABLE `staff_achievement`
  ADD CONSTRAINT `staff_achievement_ibfk_1` FOREIGN KEY (`staffId`) REFERENCES `non_teaching_staff` (`staffId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff_service`
--
ALTER TABLE `staff_service`
  ADD CONSTRAINT `staff_service_ibfk_1` FOREIGN KEY (`staffId`) REFERENCES `non_teaching_staff` (`staffId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_achievement`
--
ALTER TABLE `student_achievement`
  ADD CONSTRAINT `student_achievement_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_activities`
--
ALTER TABLE `student_activities`
  ADD CONSTRAINT `student_activities_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_publication`
--
ALTER TABLE `student_publication`
  ADD CONSTRAINT `student_publication_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
