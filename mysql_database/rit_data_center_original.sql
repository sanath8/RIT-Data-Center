-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 29, 2018 at 08:25 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
('cse', 'Computer Science & Engineering', '1984', 'division of electrical sciences block, 1st floor', '080-23600822/23606939', 'hod-cse@msrit.edu', 'Dr. Anita Kanavalli', '080-23600822/23606939', 'Ramaiah Institute of Technology');

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
  `departmentId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`facultyId`, `facultyName`, `gender`, `address`, `religion`, `caste`, `category`, `dob`, `natureOfAppointment`, `contactNumber`, `emailId`, `password`, `panNumber`, `accountNumber`, `pfNumber`, `departmentId`) VALUES
('cse01', 'Anita Kanavalli', 'Female', 'NO 25 ANASWARA 1ST MAIN, 2nd cross MSR Ngar', 'Christian', 'Protestant', 'GM', '1967-04-04', 'Regular', '9845899681', 'anithak@msrit.edu', 'rit', 'AKOPK7232J', '141201010012262', 'KN/BN/8146/0754', 'cse'),
('cse02', 'Annapurna P. Patil', 'Female', '#308, C Block Gowri Apartment, NEW BEL Road', 'Hindu', 'Veershaiva Jang', 'GM 371J', '1972-10-10', 'Regular', '9945409177', 'annapurnap2@msrit.edu', 'rit', 'AIMPP9079L', '141201010013904', 'KN/BN/8146/0852', 'cse'),
('cse03', 'Seema S', 'Female', '#327, 7TH CROSS,  3RD BLOCK, HMT layout, Vidyarany', 'Hindu', 'Marathi', 'GM', '1970-06-29', 'Regular', '9901688004', 'seemas@msrit.edu', 'rit', 'ARJPS9571N', '141201010010588', 'KN/BN/8146/0779', 'cse'),
('cse04', 'Jagadish S.K.', 'Male', 'NO.79, 9TH MAIN, 6TH CROSS, J C Nagar, Kurubara ha', 'Hindu', 'Lingayath', 'GM', '1977-07-19', 'Regular', '9844413643', 'jagadish.k@msrit.edu', 'rit', 'AHRPK8437B', '141201010015421', 'KN/BN/8146/0942', 'cse'),
('cse05', 'Jayalakshmi D.S', 'Female', '#325/6, "SRINIDHI", F BLOCK, Sahakara nagar', 'Hindu', 'Bramhin', 'GM', '1967-04-21', 'Regular', '8197820657', 'jayalakshmids@msrit.edu', 'rit', 'AHGPD5509A', '141201010018116', 'KN/BN/8146/0984', 'cse'),
('cse06', 'Monica R Mundada', 'Female', '137/A1, 13th cross ASCS layout, Near RMV Hosptial,', 'Hindu', 'Marwadi', 'GM', '1974-09-15', 'Regular', '9008365087', 'monica@msrit.edu', 'rit', 'AIWPM8762H', '141201010015521', 'KN/BN/8146/0924', 'cse'),
('cse07', 'Sanjeetha R', 'Female', 'Sri Manjunatha Swamy Nilaya, #78, 2nd cross, Vinay', 'Hindu', 'vokkaliga', 'vokkaliga', '1980-10-16', 'Regular', '9986406819', 'sanjeetha.r@msrit.edu', 'rit', 'BTYPS2093H', '141201011000968', 'KN/BN/8146/1102', 'cse'),
('cse08', 'A Parkavi', 'Female', 'C/O, C.SINGARAM, NO.124, 6TH MAIN, 3RD CROSS, IST ', 'Christian', 'Pallan', 'SC', '1979-05-05', 'Regular', '9902524685', 'parkavi.a@msrit.edu', 'rit', 'APHPP4199M', '141201011000983', 'KN/BN/8146/1097', 'cse'),
('cse09', 'Veena GS ', 'Female', '#48, 2nd Main, 2nd Stage, Near Aveksha Hospital, S', 'Hindu', 'Bramhin', 'Other', '1972-06-15', 'Regular', '9886030842', 'veenags@msrit.edu', 'rit', 'AKGPG5600C', '141201011000958', 'KN/BN/8146/1099', 'cse'),
('cse10', 'J Geetha', 'Female', 'NO-106 SLV Durga Apartments Vidyaranipura,  BANGAL', 'Hindu', 'reddy', 'GM', '1979-07-16', 'Regular', '9916912573', 'geetha@msrit.edu', 'rit', 'ALDPG4963E', '141201011001787', 'KN/BN/8146/1161', 'cse'),
('cse11', 'T.N R. Kumar', 'Male', '#1/3(212) 3RD CROSS CHIKKANNA, Gardenns Shankarpur', 'Hindu', 'Bramhin', 'Other', '1967-06-19', 'Regular', '9844636865', 'tnrkumar@msrit.edu', 'rit', 'AHWPR2220G', '141201011002750', 'KN/BN/8146/1174', 'cse'),
('cse12', 'Mamatha  Jadhav V', 'Female', '#2709 11TH MAIN D BLOCK, II stage Rajajinagar Blor', 'Hindu', 'Marathi', 'Other', '1973-10-22', 'Regular', '9844094962', 'mamsdalvi@msrit.edu', 'rit', 'AKDPJ5187A', '141201011011032', 'KN/BN/8146/1263', 'cse'),
('cse13', 'Chethan C T', 'Male', '#208 PATEL CHANNAPA''S, 1ST Main Dwaraka nagar BSK ', 'Hindu', 'Gowda', '3A', '1985-10-28', 'Regular', '9449035534', 'ctchethan@msrit.edu', 'rit', 'AIDPC7398G', '141201011004919', 'KN/BN/8146/1299', 'cse'),
('cse14', 'Sini Anna Alex', 'Female', '#171, BETHEL, 1st main, AYR Layout, Shettyhalli, J', 'Christian', 'Orthodox', 'GM', '1983-02-24', 'Regular', '9845437091', 'sinialex@msrit.edu', 'rit', 'CDKPS5458K', '141201011005688', 'KN/BN/8146/1322', 'cse'),
('cse15', 'Sardar Vandana Sudhakar', 'Female', '#14, Venkateshwara Layout, MSR Nagar', 'Hindu', 'Mahar', 'SC', '1979-05-19', 'Regular', '9886878953', 'vandana.s@msrit.edu', 'rit', 'BCBPS9768K', '141201011007877', 'KN/BN/8146/1398', 'cse'),
('cse16', 'Meera Devi A Kawalgi', 'Female', '#307, Garuda Royal Apt, Sharadamba Nagar, Jalahall', 'Hindu', 'Lingayath', 'GM', '1984-09-13', 'Regular', '8792068734', 'meera_ak@msrit.edu', 'rit', 'AWCPP1652M', '141201011007888', 'KN/BN/8146/1400', 'cse'),
('cse17', 'Malle Gowda M', 'Male', '#243/2 , II CROSS , mathikere(near univercell)', 'Hindu', 'Gowda', 'OBC', '1983-09-12', 'Regular', '9535834471', 'mallegowdam@msrit.edu', 'rit', 'AQXPM5349P', '141201011007996', 'KN/BN/8146/1418', 'cse'),
('cse18', 'Dr.H.V. Divakar', 'Male', '#105, TELECOM COLONY, behind new timberyard', 'Hindu', 'Bramhin', 'Other', '1965-07-03', 'Regular', '9980315974', 'divakar.h@msrit.edu', 'rit', 'AAYPD4812D', '141201011009452', 'KN/BN/8146/1453', 'cse'),
('cse19', 'Chandrika Prasad', 'Female', '#143, I STAGE, II CROSS, B.E.M.L., Basaveshwara Na', 'Hindu', 'Bramhin', 'Other', '1980-05-28', 'Regular', '9845053122', 'chandrika@msrit.edu', 'rit', 'AHZPC9945N', '141201011009473', 'KN/BN/8146/1454', 'cse'),
('cse20', 'Rajarajeswari S', 'Female', '#501, SIRI RESIDENCY, I CROSS, PAPPANA LAYOUT, V.N', 'Hindu', 'Vanniya Kula Ks', 'OBC', '1975-08-02', 'Regular', '9886958079', 'raji@msrit.edu', 'rit', 'ANFPR9711D', '141201011009606', 'KN/BN/8146/1467', 'cse'),
('cse21', 'Pramod C Sunagar', 'Male', '#18, "GURUKRUPA NILAYA" 17TH A CROSS, BNS LAYOUT, ', 'Hindu', 'Ambiger', 'CAT - I', '1984-12-16', 'Regular', '9886358659', 'pramods@msrit.edu', 'rit', 'BPVPS0308L', '141201011013869', 'KN/BN/8146/1552', 'cse'),
('cse22', 'Sowmya B J', 'Female', '829, 1ST CROSS, 4 BLOCK, HMT LAYOUT', 'Hindu', 'Lingayath', '3BG', '1986-11-30', 'Regular', '9886733368', 'sowmyabj@msrit.edu', 'rit', 'CJRPS4964D', '141201011015419', 'KN/BN/8146/4801', 'cse'),
('cse23', 'Pradeep kumar D ', 'Male', 'NO 740, 9MAIN 9 BLOCK, NAGARBAVI', 'Hindu', 'Gowda', 'OBC', '1985-09-27', 'Regular', '9886715235', 'pradeepkumard@msrit.edu', 'rit', 'BCOPD2999E', '141201011017395', 'KN/BN/8146/5011', 'cse'),
('cse24', 'Chetan  Shetty ', 'Male', 'NO 13, B 306, 3RD FLOOR, RENAISSANCE BRINDAVAN, UT', 'Hindu', 'Bunts', 'GM', '1986-02-24', 'Regular', '9686575665', 'chetanshetty@msrit.edu', 'rit', 'CPFPS0001H', '141201011008572', 'KN/BN/8146/5014', 'cse'),
('cse25', 'Ganeshayya I Shidaganti', 'Male', '106, MANASA BULDING, SIDDESWARA PARK, HUBLI', 'Hindu', 'Lingayath', 'GM', '1987-11-29', 'Regular', '9880251131', 'ganeshayyashidaganti@msrit.edu', 'rit', 'ETQPS2411N', '141201011017391', 'KN/BN/8146/1629', 'cse'),
('cse26', 'Darshana A Naik', 'Female', '1592, 6 MAIN E BLOCK, 2ND STAGE , SHIVA KRUPA, RAJ', 'Hindu', 'Konkan Maratha', 'GM', '1987-04-25', 'Regular', '9900821964', 'darshananaik@msrit.edu', 'rit', 'APHPN3564N', '141201011017362', 'KN/BN/8146/1626', 'cse'),
('cse27', 'Srinidhi H', 'Male', 'NO 62, 3RD CROSS, 4TH MAIN, KIRLOSKAR COLONY, 1ST ', 'Hindu', 'Bramhin', 'GM\n', '1989-11-07', 'Regular', '9591690191', 'srinidhih@msrit.edu', 'rit', 'CVJPS2592H', '141201011017392', 'KN/BN/8146/1630', 'cse'),
('cse28', 'Hanumantha Raju R', 'Male', 'Sri Maruti Nilaya, 4th ward, vinayak nagar, Dodbal', 'Hindu', 'Gowda', 'OBC', '1988-12-20', 'Regular', '9901287316', 'hmrcs@msrit.edu', 'rit', 'AGRPH6781L', '141201011019438', 'KN/BN/8146/1650', 'cse'),
('cse29', 'Aparna R', 'Female', 'No. 13, Sastry Apartments, Gannappa Gardens, 8th C', 'Hindu', 'Brahmin', 'GM', '1979-09-17', 'Regular', '9886867568', 'aparna@msrit.edu', 'rit', 'AJXPA7953J', '141201011019432', 'KN/BN/8146/1651', 'cse'),
('cse30', 'Shilpa S Chaudhari', 'Female', 'J-21, Shriram Sadhana Apt, Gokula Mathiker, Bangal', 'Hindu', 'Leva Patidhar', 'GM', '1976-10-29', 'Regular', '9886054151', 'shilpasc29@msrit.edu', 'rit', 'AEJPC6125R', '141201010018835', 'KN/BN/8146/D010', 'cse'),
('cse31', 'Raghuram Krishnapuram', 'Male', 'null', 'null', 'null', 'null', '1956-02-13', 'null', 'null', 'raghuk@msrit.edu', 'rit', 'AGIPK4840L', 'null', 'null', 'cse'),
('cse32', 'Ramani S', 'Male', 'Malleshwaram, Bangalore, 560003', 'Hindu', 'Bramhin', 'GM', '1954-04-17', 'Regular', '9343457890', 'ramanis@msrit.edu', 'rit', 'ABVPS3193C', 'null', 'null', 'cse'),
('cse33', 'Nagabhushan A M', 'Male', '12_seetharamaiah lay out, Yeswanthpur, 560022', 'Hindu', 'Lingayath', 'GM', '1963-07-13', 'Visiting', '9844864526', 'bhushan@msrit.edu', 'rit', 'AAIPN8611J', 'null', 'null', 'cse');

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

-- --------------------------------------------------------

--
-- Table structure for table `faculty_qualification`
--

CREATE TABLE `faculty_qualification` (
  `slNo` int(11) NOT NULL,
  `degree` varchar(10) NOT NULL,
  `university` varchar(100) NOT NULL,
  `passClass` float NOT NULL,
  `passYear` varchar(10) NOT NULL,
  `areaOfSpecialization` varchar(100) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_qualification`
--

INSERT INTO `faculty_qualification` (`slNo`, `degree`, `university`, `passClass`, `passYear`, `areaOfSpecialization`, `facultyId`) VALUES
(1, 'BE', 'Karnatak University', 0, '1988', 'ECE', 'cse01'),
(2, 'BE', 'Gulbarga', 0, '1994', 'CSE', 'cse02'),
(3, 'BE', 'BU', 0, '2001', 'CSE', 'cse29'),
(4, 'BE', 'vtu', 0, '2003', 'CSE', 'cse19'),
(5, 'BE', 'vtu', 0, '2009', 'ISE', 'cse24'),
(6, 'BE', 'vtu', 0, '2005', 'CSE', 'cse13'),
(7, 'BE', 'vtu', 0, '2009', 'CSE', 'cse26'),
(8, 'BE', 'Karnatak University', 0, '1986', 'CSE', 'cse18'),
(9, 'BE', 'vtu', 0, '2010', 'CSE', 'cse25'),
(10, 'BE', 'BU', 0, '2001', 'CSE', 'cse10'),
(11, 'BE', 'vtu', 0, '2010', 'CSE', 'cse28'),
(12, 'BE', 'Karnatak University', 0, '1999', 'CSE', 'cse04'),
(13, 'BE', 'Mysore', 0, '1988', 'CSE', 'cse05'),
(14, 'BE', 'Mysore', 0, '1988', 'CSE', 'cse11'),
(15, 'BE', 'vtu', 0, '2005', 'CSE', 'cse17'),
(16, 'BE', 'BU', 0, '1996', 'CSE', 'cse12'),
(17, 'BE', 'Gulbarga', 0, '2006', 'CSE', 'cse16'),
(18, 'BE', 'Gulbarga', 0, '1996', 'CSE', 'cse06'),
(19, 'BE', 'Mysore', 0, '1984', 'ECE', 'cse33'),
(20, 'BE', 'Trichy', 0, '2001', 'CSE', 'cse08'),
(21, 'BE', 'vtu', 0, '2009', 'CSE', 'cse23'),
(22, 'BE', 'VTU', 0, '2006', 'CSE', 'cse21'),
(23, 'BE', 'TN', 0, '1998', 'CSE', 'cse20'),
(24, 'BSc', 'Madhurai', 0, '1974', 'Mathematics, Computer Science', 'cse32'),
(25, 'BE', 'VTU', 0, '2002', 'CSE', 'cse07'),
(26, 'BE', 'Gulbarga', 0, '1991', 'CSE', 'cse03'),
(27, 'BE', 'North Maharashtra University', 0, '1998', 'CSE', 'cse30'),
(28, 'BTECH', 'Kerala', 0, '2004', 'CSE', 'cse14'),
(29, 'BE', 'vtu', 0, '2008', 'CSE', 'cse22'),
(30, 'BE', 'vtu', 0, '2011', 'CSE', 'cse27'),
(31, 'BE', 'Pune', 0, '2000', 'CSE', 'cse15'),
(32, 'BE', 'Kuvempu', 0, '1994', 'CSE', 'cse09'),
(33, 'ME', 'Karnatak University', 0, '1995', 'Computer networks', 'cse01'),
(34, 'MTECH', 'VTU', 0, '2001', 'CSE', 'cse02'),
(35, 'MTECH', 'NITK, Surathkal', 0, '2007', 'COMPUTER SCIENCE AND ENGINEERI', 'cse29'),
(36, 'MTECH', 'vtu', 0, '2007', 'CSE', 'cse19'),
(37, 'MTECH', 'vtu', 0, '2012', 'COMPUTER SCIENCE', 'cse24'),
(38, 'M TECH', 'vtu', 0, '2011', 'BMSPI', 'cse26'),
(39, 'ME', 'Karnatak University', 0, '1998', 'CSE', 'cse18'),
(40, 'M TECH', 'vtu', 0, '2012', 'COMPUTER SCIENCE', 'cse25'),
(41, 'MTECH', 'JNTU,HYD', 0, '2007', 'Computer Science &ENgg', 'cse10'),
(42, 'MTECH', 'vtu', 0, '2013', 'Computer science and engineering', 'cse28'),
(43, 'MTECH', 'vtu', 0, '2004', 'Artificial Intelligence, Information retrieval, Text Summarization', 'cse04'),
(44, 'MSC(Engg) ', 'vtu', 0, '2008', 'CSE', 'cse05'),
(45, 'MTECH', 'Mysore', 0, '1995', 'COMPUTER SCIENCE AND ENGG', 'cse11'),
(46, 'MTECH', 'vtu', 0, '2009', 'COMPUTER SCIENCE AND ENGG', 'cse17'),
(47, 'MTECH', 'vtu', 0, '2006', 'CSE', 'cse12'),
(48, 'MTECH', 'vtu', 0, '2010', 'CSE', 'cse16'),
(49, 'MTECH', 'vtu', 0, '2003', 'Computer Science & Engineering', 'cse06'),
(50, 'MTECH', 'IIT, Mumbai', 0, '1987', 'CSE', 'cse33'),
(51, 'ME', 'Trichy', 0, '2005', 'Data Analytics', 'cse08'),
(52, 'M TECH', 'vtu', 0, '2011', 'SOFTWARE ENGG', 'cse23'),
(53, 'MTECH', 'VTU', 0, '2011', 'COMPUTER SCIENCE', 'cse21'),
(54, 'ME', 'TN', 0, '2005', 'CSE', 'cse20'),
(55, 'MSc', 'madhurai', 0, '1976', 'Mathematics, Space Dynamics', 'cse32'),
(56, 'MTECH', 'MGR', 0, '2007', 'Computer Science & Engineering', 'cse07'),
(57, 'MS', 'BITS Pilani', 0, '1996', 'Data Mining', 'cse03'),
(58, 'MTECH', 'Pune', 0, '2003', 'Electronics(Computer)', 'cse30'),
(59, 'ME', 'Anna University', 0, '2006', 'COMPUTER SCIENCE & ENGINEERING', 'cse14'),
(60, 'MTECH', 'vtu', 0, '2013', 'SOFTWARE ENGG', 'cse22'),
(61, 'MTECH', 'vtu', 0, '2013', 'SOFTWARE ENGG\r\n', 'cse27'),
(62, 'ME', 'Pune', 0, '2008', 'COMPUTER ENGINEERING', 'cse15'),
(63, 'MTECH', 'vtu', 0, '1998', 'Image Processing', 'cse09'),
(64, 'PhD', 'BU', 0, '2013', 'Computer networks', 'cse01'),
(65, 'PhD', 'VTU', 0, '2014', 'CSE', 'cse02'),
(66, 'PhD', 'VTU', 0, 'Pursuing', 'CSE', 'cse26'),
(67, 'PhD', 'JJ University, Rajasthan', 0, '2017', 'CSE', 'cse18'),
(68, 'PhD', 'JNTU', 0, '2015', 'Artificial Intelligence, Information retrieval, Text Summarization', 'cse04'),
(69, 'PhD', 'VELS', 0, '2014', 'COMPUTER SCIENCE AND ENGG', 'cse11'),
(70, 'PhD', 'Dr MGR Educational and Research Institute', 0, '2014', 'Wireless sensor networks', 'cse06'),
(71, 'null', 'IIT Bombay', 0, 'null', 'software engineering', 'cse33'),
(72, 'PhD', 'MSU', 0, 'null', 'Cloud Computing', 'cse20'),
(73, 'PhD', 'MGR', 0, '2014', 'Software Architecture', 'cse32'),
(74, 'PhD', 'VTU', 0, '2014', 'Data Mining', 'cse03'),
(75, 'PhD', 'VTU', 0, '2017', 'Routing in Mobile Ad-hoc Network', 'cse30');

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
('Ramaiah Institute of Technology', '1962', 'MSR College Road, MSR Nagar, MSRIT Post, Bengaluru, Karnataka 560054', '+9180-23606939', 'msrit.edu', 'admn@msrit.edu', 'NVR Naidu', '+9180-23600822');

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
  ADD KEY `instituteName` (`instituteName`);

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
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `book_chapter`
--
ALTER TABLE `book_chapter`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `conference_paper`
--
ALTER TABLE `conference_paper`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `consultancy`
--
ALTER TABLE `consultancy`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `courses_handled`
--
ALTER TABLE `courses_handled`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`departmentId`),
  ADD KEY `instituteName` (`instituteName`);

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
