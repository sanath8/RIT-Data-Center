-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 27, 2018 at 03:02 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

create Database rit_data_center;
use rit_data_center;

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

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`slNo`, `bookTitle`, `bookAuthors`, `bookPublisher`, `year`, `facultyId`) VALUES
(1, 'booktitle1', 'author1', 'publisher1', '2008', '1'),
(2, 'booktitle2', 'author2', 'publisher2', '2008', '2'),
(3, 'booktitle3', 'author3', 'publisher3', '2009', '3'),
(4, 'booktitle4', 'author4', 'publisher4', '2009', '6'),
(5, 'booktitle5', 'author5', 'publisher5', '2009', '3'),
(6, 'booktitle6', 'author6', 'publisher6', '2010', '5'),
(7, 'booktitle7', 'author7', 'publisher7', '2010', '2'),
(8, 'booktitle8', 'author8', 'publisher8', '2010', '3'),
(9, 'booktitle9', 'author9', 'publisher9', '2011', '2'),
(10, 'booktitle10', 'author10', 'publisher10', '2011', '4'),
(11, 'booktitle11', 'author11', 'publisher11', '2011', '5'),
(12, 'booktitle12', 'author12', 'publisher12', '2011', '6'),
(13, 'booktitle13', 'author13', 'publisher13', '2012', '4'),
(14, 'booktitle14', 'author14', 'publisher14', '2012', '6'),
(15, 'booktitle15', 'author15', 'publisher15', '2012', '7'),
(16, 'booktitle16', 'author16', 'publisher16', '2013', '8'),
(17, 'booktitle17', 'author17', 'publisher17', '2013', '4'),
(18, 'booktitle18', 'author18', 'publisher18', '2013', '6'),
(19, 'booktitle19', 'author19', 'publisher19', '2014', '9'),
(20, 'booktitle20', 'author20', 'publisher20', '2014', '5'),
(21, 'booktitle21', 'author21', 'publisher21', '2014', '11'),
(22, 'booktitle22', 'author22', 'publisher22', '2015', '14');

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
(1, 'chapter1', 'booktitle1', 'author1', 'publisher1', '2008', '1'),
(2, 'chapter2', 'booktitle2', 'author2', 'publisher2', '2008', '2'),
(3, 'chapter3', 'booktitle3', 'author3', 'publisher3', '2009', '3'),
(4, 'chapter4', 'booktitle4', 'author4', 'publisher4', '2009', '6'),
(5, 'chapter5', 'booktitle5', 'author5', 'publisher5', '2009', '3'),
(6, 'chapter6', 'booktitle6', 'author6', 'publisher6', '2010', '5'),
(7, 'chapter7', 'booktitle7', 'author7', 'publisher7', '2010', '2'),
(8, 'chapter8', 'booktitle8', 'author8', 'publisher8', '2010', '3'),
(9, 'chapter9', 'booktitle9', 'author9', 'publisher9', '2011', '2'),
(10, 'chapter10', 'booktitle10', 'author10', 'publisher10', '2011', '4'),
(11, 'chapter11', 'booktitle11', 'author11', 'publisher11', '2011', '5'),
(12, 'chapter12', 'booktitle12', 'author12', 'publisher12', '2011', '6'),
(13, 'chapter13', 'booktitle13', 'author13', 'publisher13', '2012', '4'),
(14, 'chapter14', 'booktitle14', 'author14', 'publisher14', '2012', '6'),
(15, 'chapter15', 'booktitle15', 'author15', 'publisher15', '2012', '7'),
(16, 'chapter16', 'booktitle16', 'author16', 'publisher16', '2013', '8'),
(17, 'chapter17', 'booktitle17', 'author17', 'publisher17', '2013', '4'),
(18, 'chapter18', 'booktitle18', 'author18', 'publisher18', '2013', '6'),
(19, 'chapter19', 'booktitle19', 'author19', 'publisher19', '2014', '9'),
(20, 'chapter20', 'booktitle20', 'author20', 'publisher20', '2014', '5'),
(21, 'chapter21', 'booktitle21', 'author21', 'publisher21', '2014', '11'),
(22, 'chapter22', 'booktitle22', 'author22', 'publisher22', '2015', '14');

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
(1, 'author1', 'title1', 'conference1', 'International', 'organizer1', '2008', '1'),
(2, 'author2', 'title2', 'conference2', 'International', 'organizer2', '2008', '2'),
(3, 'author3', 'title3', 'conference3', 'International', 'organizer3', '2009', '3'),
(4, 'author4', 'title4', 'conference4', 'International', 'organizer4', '2009', '6'),
(5, 'author5', 'title5', 'conference5', 'International', 'organizer5', '2009', '3'),
(6, 'author6', 'title6', 'conference6', 'International', 'organizer6', '2010', '5'),
(7, 'author7', 'title7', 'conference7', 'National', 'organizer7', '2010', '2'),
(8, 'author8', 'title8', 'conference8', 'National', 'organizer8', '2010', '3'),
(9, 'author9', 'title9', 'conference9', 'National', 'organizer9', '2011', '2'),
(10, 'author10', 'title10', 'conference10', 'National', 'organizer10', '2011', '4'),
(11, 'author11', 'title11', 'conference11', 'National', 'organizer11', '2011', '5'),
(12, 'author12', 'title12', 'conference12', 'National', 'organizer12', '2011', '6'),
(13, 'author13', 'title13', 'conference13', 'National', 'organizer13', '2012', '4'),
(14, 'author14', 'title14', 'conference14', 'National', 'organizer14', '2012', '6'),
(15, 'author15', 'title15', 'conference15', 'National', 'organizer15', '2012', '7'),
(16, 'author16', 'title16', 'conference16', 'National', 'organizer16', '2013', '8'),
(17, 'author17', 'title17', 'conference17', 'National', 'organizer17', '2013', '4'),
(18, 'author18', 'title18', 'conference18', 'National', 'organizer18', '2013', '6'),
(19, 'author19', 'title19', 'conference19', 'National', 'organizer19', '2014', '9'),
(20, 'author20', 'title20', 'conference20', 'National', 'organizer20', '2014', '5'),
(21, 'author21', 'title21', 'conference21', 'National', 'organizer21', '2014', '11'),
(22, 'author22', 'title22', 'conference22', 'National', 'organizer22', '2015', '14');

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

--
-- Dumping data for table `consultancy`
--

INSERT INTO `consultancy` (`slNo`, `financialYear`, `clientOrganization`, `consultancyProjectTitle`, `amountReceived`, `facultyId`) VALUES
(1, '2008', 'client1', 'title1', 120000, '1'),
(2, '2008', 'client2', 'title2', 150000, '2'),
(3, '2009', 'client3', 'title3', 200000, '3'),
(4, '2009', 'client4', 'title4', 120000, '6'),
(5, '2009', 'client5', 'title5', 150000, '3'),
(6, '2010', 'client6', 'title6', 200000, '5'),
(7, '2010', 'client7', 'title7', 180000, '2'),
(8, '2010', 'client8', 'title8', 90000, '3'),
(9, '2011', 'client9', 'title9', 25000, '2'),
(10, '2011', 'client10', 'title10', 120000, '4'),
(11, '2011', 'client11', 'title11', 150000, '5'),
(12, '2011', 'client12', 'title12', 200000, '6'),
(13, '2012', 'client13', 'title13', 180000, '4'),
(14, '2012', 'client14', 'title14', 90000, '6'),
(15, '2012', 'client15', 'title15', 25000, '7'),
(16, '2013', 'client16', 'title16', 250000, '8'),
(17, '2013', 'client17', 'title17', 300000, '4'),
(18, '2013', 'client18', 'title18', 140000, '6'),
(19, '2014', 'client19', 'title19', 120000, '9'),
(20, '2014', 'client20', 'title20', 130000, '5');

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

--
-- Dumping data for table `courses_handled`
--

INSERT INTO `courses_handled` (`slNo`, `yearHandled`, `subjectName`, `ugOrPg`, `labHandled`, `facultyId`) VALUES
(1, '2008', 'subject1', 'ug', 'yes', '1'),
(2, '2008', 'subject2', 'pg', 'no', '2'),
(3, '2009', 'subject3', 'pg', 'no', '3'),
(4, '2009', 'subject4', 'ug', 'yes', '6'),
(5, '2009', 'subject5', 'ug', 'yes', '3'),
(6, '2010', 'subject6', 'pg', 'yes', '5'),
(7, '2010', 'subject7', 'pg', 'no', '2'),
(8, '2010', 'subject8', 'ug', 'no', '3'),
(9, '2011', 'subject9', 'ug', 'yes', '2'),
(10, '2011', 'subject10', 'pg', 'yes', '4'),
(11, '2011', 'subject11', 'pg', 'yes', '5'),
(12, '2011', 'subject12', 'ug', 'no', '6'),
(13, '2012', 'subject13', 'ug', 'no', '4'),
(14, '2012', 'subject14', 'pg', 'yes', '6'),
(15, '2012', 'subject15', 'pg', 'yes', '7'),
(16, '2013', 'subject16', 'ug', 'yes', '8'),
(17, '2013', 'subject17', 'ug', 'no', '4'),
(18, '2013', 'subject18', 'pg', 'no', '6'),
(19, '2014', 'subject19', 'pg', 'yes', '3'),
(20, '2014', 'subject20', 'ug', 'yes', '8'),
(21, '2014', 'subject21', 'ug', 'yes', '12'),
(22, '2015', 'subject22', 'ug', 'yes', '14');

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
('1', 'faculty1', 'M', 'address1', 'religion1', 'caste1', 'category1', '1987-10-24', 'fulltime', '9089543678', 'email1', 'pass1', '567384322', '2345464223', '827487240', 'cse'),
('10', 'faculty10', 'F', 'address10', 'religion1', 'caste1', 'category1', '1978-10-24', 'fulltime', '9089543777', 'email10', 'pass10', '567387526', '2345277923', '827487384', 'cse'),
('11', 'faculty11', 'F', 'address11', 'religion2', 'caste2', 'category3', '1977-10-24', 'fulltime', '9089543788', 'email11', 'pass11', '567387882', '2345257223', '827487400', 'cse'),
('12', 'faculty12', 'M', 'address12', 'religion3', 'caste3', 'category2', '1976-10-24', 'fulltime', '9089543799', 'email12', 'pass12', '567388238', '2345236523', '827487416', 'cse'),
('13', 'faculty13', 'M', 'address13', 'religion1', 'caste1', 'category1', '1975-10-24', 'fulltime', '9089543810', 'email13', 'pass13', '567388594', '2345215823', '827487432', 'cse'),
('14', 'faculty14', 'F', 'address14', 'religion2', 'caste2', 'category3', '1974-10-24', 'fulltime', '9089543821', 'email14', 'pass14', '567388950', '2345195123', '827487448', 'cse'),
('15', 'faculty15', 'F', 'address15', 'religion3', 'caste3', 'category2', '1973-10-24', 'fulltime', '9089543832', 'email15', 'pass15', '567389306', '2345174423', '827487464', 'cse'),
('16', 'faculty16', 'M', 'address16', 'religion1', 'caste1', 'category1', '1972-10-24', 'fulltime', '9089543843', 'email16', 'pass16', '567389662', '2345153723', '827487480', 'cse'),
('17', 'faculty17', 'M', 'address17', 'religion2', 'caste2', 'category3', '1971-10-24', 'fulltime', '9089543854', 'email17', 'pass17', '567390018', '2345133023', '827487496', 'cse'),
('18', 'faculty18', 'F', 'address18', 'religion3', 'caste3', 'category2', '1970-10-24', 'fulltime', '9089543865', 'email18', 'pass18', '567390374', '2345112323', '827487512', 'cse'),
('19', 'faculty19', 'F', 'address19', 'religion1', 'caste1', 'category1', '1969-10-24', 'fulltime', '9089543876', 'email19', 'pass19', '567390730', '2345091623', '827487528', 'cse'),
('2', 'faculty2', 'F', 'address2', 'religion2', 'caste2', 'category3', '1986-10-24', 'fulltime', '9089543689', 'email2', 'pass2', '567384678', '2345443523', '827487256', 'cse'),
('20', 'faculty20', 'M', 'address20', 'religion2', 'caste2', 'category3', '1968-10-24', 'fulltime', '9089543887', 'email20', 'pass20', '567391086', '2345070923', '827487544', 'cse'),
('3', 'faculty3', 'F', 'address3', 'religion3', 'caste3', 'category2', '1985-10-24', 'fulltime', '9089543700', 'email3', 'pass3', '567385034', '2345422823', '827487272', 'cse'),
('4', 'faculty4', 'M', 'address4', 'religion1', 'caste1', 'category1', '1984-10-24', 'fulltime', '9089543711', 'email4', 'pass4', '567385390', '2345402123', '827487288', 'cse'),
('5', 'faculty5', 'M', 'address5', 'religion2', 'caste2', 'category3', '1983-10-24', 'fulltime', '9089543722', 'email5', 'pass5', '567385746', '2345381423', '827487304', 'cse'),
('6', 'faculty6', 'F', 'address6', 'religion3', 'caste3', 'category2', '1982-10-24', 'fulltime', '9089543733', 'email6', 'pass6', '567386102', '2345360723', '827487320', 'cse'),
('7', 'faculty7', 'F', 'address7', 'religion1', 'caste1', 'category1', '1981-10-24', 'fulltime', '9089543744', 'email7', 'pass7', '567386458', '2345340023', '827487336', 'cse'),
('8', 'faculty8', 'M', 'address8', 'religion2', 'caste2', 'category3', '1980-10-24', 'fulltime', '9089543755', 'email8', 'pass8', '567386814', '2345319323', '827487352', 'cse'),
('9', 'faculty9', 'M', 'address9', 'religion3', 'caste3', 'category2', '1979-10-24', 'fulltime', '9089543766', 'email9', 'pass9', '567387170', '2345298623', '827487368', 'cse');

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
(1, 'event1', 'place1', '2013-03-11', 'invited', 3, '1'),
(2, 'event2', 'place2', '2012-03-11', 'deputed', 2, '2'),
(3, 'event3', 'place3', '2011-03-11', 'invited', 1, '3'),
(4, 'event4', 'place4', '2010-03-11', 'deputed', 2, '6'),
(5, 'event5', 'place5', '2009-03-11', 'deputed', 2, '3'),
(6, 'event6', 'place6', '2008-03-11', 'invited', 1, '5'),
(7, 'event7', 'place7', '2007-03-11', 'invited', 2, '2'),
(8, 'event8', 'place8', '2006-03-11', 'deputed', 3, '3'),
(9, 'event9', 'place9', '2005-03-11', 'invited', 2, '2'),
(10, 'event10', 'place10', '2004-03-11', 'deputed', 1, '4'),
(11, 'event11', 'place11', '2003-03-11', 'deputed', 2, '5'),
(12, 'event12', 'place12', '2002-03-11', 'invited', 2, '6'),
(13, 'event13', 'place13', '2001-03-11', 'invited', 1, '4'),
(14, 'event14', 'place14', '2000-03-11', 'deputed', 2, '6'),
(15, 'event15', 'place15', '1999-03-11', 'invited', 3, '7'),
(16, 'event16', 'place16', '1998-03-11', 'deputed', 2, '8'),
(17, 'event17', 'place17', '1997-03-11', 'deputed', 1, '4'),
(18, 'event18', 'place18', '1996-03-11', 'invited', 2, '6'),
(19, 'event19', 'place19', '1995-03-11', 'invited', 2, '9'),
(20, 'event20', 'place20', '1994-03-11', 'deputed', 1, '5'),
(21, 'event21', 'place21', '1993-03-11', 'invited', 2, '11'),
(22, 'event22', 'place22', '1992-03-11', 'deputed', 2, '14');

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
(1, 'place1', 'title1', '2013-03-11', '1'),
(2, 'place2', 'title2', '2012-03-11', '2'),
(3, 'place3', 'title3', '2011-03-11', '3'),
(4, 'place4', 'title4', '2010-03-11', '6'),
(5, 'place5', 'title5', '2009-03-11', '3'),
(6, 'place6', 'title6', '2008-03-11', '5'),
(7, 'place7', 'title7', '2007-03-11', '2'),
(8, 'place8', 'title8', '2006-03-11', '3'),
(9, 'place9', 'title9', '2005-03-11', '2'),
(10, 'place10', 'title10', '2004-03-11', '4'),
(11, 'place11', 'title11', '2003-03-11', '5'),
(12, 'place12', 'title12', '2002-03-11', '6'),
(13, 'place13', 'title13', '2001-03-11', '4'),
(14, 'place14', 'title14', '2000-03-11', '6'),
(15, 'place15', 'title15', '1999-03-11', '7'),
(16, 'place16', 'title16', '1998-03-11', '8'),
(17, 'place17', 'title17', '1997-03-11', '4'),
(18, 'place18', 'title18', '1996-03-11', '6'),
(19, 'place19', 'title19', '1995-03-11', '9'),
(20, 'place20', 'title20', '1994-03-11', '5');

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
(1, 'patent1', '1523', '2013-03-11', '2013-06-13', '3'),
(2, 'patent2', '1634', '2012-03-11', '2012-06-13', '5'),
(3, 'patent3', '1745', '2011-03-11', '2011-06-13', '2'),
(4, 'patent4', '1856', '2010-03-11', '2010-06-13', '7'),
(5, 'patent5', '1967', '2009-03-11', '2009-06-13', '9'),
(6, 'patent6', '2078', '2008-03-11', '2008-06-13', '12'),
(7, 'patent7', '2189', '2007-03-11', '2007-06-13', '16'),
(8, 'patent8', '2300', '2006-03-11', '2006-06-13', '18'),
(9, 'patent9', '2411', '2005-03-11', '2005-06-13', '4'),
(10, 'patent10', '2522', '2004-03-11', '2004-06-13', '1'),
(11, 'patent11', '2633', '2003-03-11', '2003-06-13', '10'),
(12, 'patent12', '2744', '2002-03-11', '2002-06-13', '8'),
(13, 'patent13', '2855', '2001-03-11', '2001-06-13', '13');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_qualification`
--

CREATE TABLE `faculty_qualification` (
  `slNo` int(11) NOT NULL,
  `beUniversity` varchar(100) NOT NULL,
  `bePassPercentage` float NOT NULL,
  `bePassYear` varchar(10) NOT NULL,
  `mtechUniversity` varchar(100) NOT NULL,
  `mtechPassPercentage` float NOT NULL,
  `mtechPassYear` varchar(20) NOT NULL,
  `phdUniversity` varchar(100) NOT NULL,
  `phdAwardYear` varchar(10) NOT NULL,
  `phdAreaOfSpecialization` varchar(100) NOT NULL,
  `facultyId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- CREATE TABLE `faculty_qualification` (
--   `slNo` int(11) NOT NULL,
--   `degree` varchar(10) NOT NULL,
--   `university` varchar(100) NOT NULL,
--   `passClass` float NOT NULL,
--   `passYear` varchar(10) NOT NULL,
--   `areaOfSpecialization` varchar(100) NOT NULL,
--   `facultyId` varchar(10) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_qualification`
--

INSERT INTO `faculty_qualification` (`slNo`, `beUniversity`, `bePassPercentage`, `bePassYear`, `mtechUniversity`, `mtechPassPercentage`, `mtechPassYear`, `phdUniversity`, `phdAwardYear`, `phdAreaOfSpecialization`, `facultyId`) VALUES
(1, 'university1', 55.9, '1989', 'mtech university1', 53.8, '1991', 'phd university1', '1995', 'spl area1', '1'),
(2, 'university2', 57.4, '1990', 'mtech university2', 55.2, '1992', 'phd university2', '1996', 'spl area2', '2'),
(3, 'university3', 58.9, '1991', 'mtech university3', 56.6, '1993', 'phd university3', '1997', 'spl area3', '3'),
(4, 'university4', 60.4, '1992', 'mtech university4', 58, '1994', 'phd university4', '1998', 'spl area4', '4'),
(5, 'university5', 61.9, '1993', 'mtech university5', 59.4, '1995', 'phd university5', '1999', 'spl area5', '5'),
(6, 'university6', 63.4, '1994', 'mtech university6', 60.8, '1996', 'phd university6', '2000', 'spl area6', '6'),
(7, 'university7', 64.9, '1995', 'mtech university7', 62.2, '1997', 'phd university7', '2001', 'spl area7', '7'),
(8, 'university8', 66.4, '1996', 'mtech university8', 63.6, '1998', 'phd university8', '2002', 'spl area8', '8'),
(9, 'university9', 67.9, '1997', 'mtech university9', 65, '1999', 'phd university9', '2003', 'spl area9', '9'),
(10, 'university10', 69.4, '1998', 'mtech university10', 66.4, '2000', 'phd university10', '2004', 'spl area10', '10'),
(11, 'university11', 70.9, '1999', 'mtech university11', 67.8, '2001', 'phd university11', '2005', 'spl area11', '11'),
(12, 'university12', 72.4, '2000', 'mtech university12', 69.2, '2002', 'phd university12', '2006', 'spl area12', '12'),
(13, 'university13', 73.9, '2001', 'mtech university13', 70.6, '2003', 'phd university13', '2007', 'spl area13', '13'),
(14, 'university14', 75.4, '2002', 'mtech university14', 72, '2004', 'phd university14', '2008', 'spl area14', '14'),
(15, 'university15', 76.9, '2003', 'mtech university15', 73.4, '2005', 'phd university15', '2009', 'spl area15', '15'),
(16, 'university16', 78.4, '2004', 'mtech university16', 74.8, '2006', 'phd university16', '2010', 'spl area16', '16'),
(17, 'university17', 79.9, '2005', 'mtech university17', 76.2, '2007', 'phd university17', '2011', 'spl area17', '17'),
(18, 'university18', 81.4, '2006', 'mtech university18', 77.6, '2008', 'phd university18', '2012', 'spl area18', '18'),
(19, 'university19', 82.9, '2007', 'mtech university19', 79, '2009', 'phd university19', '2013', 'spl area19', '19'),
(20, 'university20', 84.4, '2008', 'mtech university20', 80.4, '2010', 'phd university20', '2014', 'spl area20', '20');

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
(1, 'guide1', 'candidate1', '1ms09hj032', 'centre1', 'university1', '2008', 'title1', 'completed', '1'),
(2, 'guide2', 'candidate2', '1ms09hj033', 'centre2', 'university2', '2008', 'title2', 'completed', '2'),
(3, 'guide3', 'candidate3', '1ms09hj034', 'centre3', 'university3', '2009', 'title3', 'completed', '3'),
(4, 'guide4', 'candidate4', '1ms09hj035', 'centre4', 'university4', '2009', 'title4', 'completed', '6'),
(5, 'guide5', 'candidate5', '1ms09hj036', 'centre5', 'university5', '2009', 'title5', 'completed', '3'),
(6, 'guide6', 'candidate6', '1ms09hj037', 'centre6', 'university6', '2010', 'title6', 'completed', '5'),
(7, 'guide7', 'candidate7', '1ms09hj038', 'centre7', 'university7', '2010', 'title7', 'completed', '2'),
(8, 'guide8', 'candidate8', '1ms09hj039', 'centre8', 'university8', '2010', 'title8', 'completed', '3'),
(9, 'guide9', 'candidate9', '1ms09hj040', 'centre9', 'university9', '2011', 'title9', 'completed', '2'),
(10, 'guide10', 'candidate10', '1ms09hj041', 'centre10', 'university10', '2011', 'title10', 'completed', '4'),
(11, 'guide11', 'candidate11', '1ms09hj042', 'centre11', 'university11', '2011', 'title11', 'completed', '5'),
(12, 'guide12', 'candidate12', '1ms09hj043', 'centre12', 'university12', '2011', 'title12', 'ongoing', '6'),
(13, 'guide13', 'candidate13', '1ms09hj044', 'centre13', 'university13', '2012', 'title13', 'ongoing', '4'),
(14, 'guide14', 'candidate14', '1ms09hj045', 'centre14', 'university14', '2012', 'title14', 'ongoing', '6'),
(15, 'guide15', 'candidate15', '1ms09hj046', 'centre15', 'university15', '2012', 'title15', 'ongoing', '7'),
(16, 'guide16', 'candidate16', '1ms09hj047', 'centre16', 'university16', '2013', 'title16', 'ongoing', '8'),
(17, 'guide17', 'candidate17', '1ms09hj048', 'centre17', 'university17', '2013', 'title17', 'ongoing', '4'),
(18, 'guide18', 'candidate18', '1ms09hj049', 'centre18', 'university18', '2013', 'title18', 'ongoing', '6'),
(19, 'guide19', 'candidate19', '1ms09hj050', 'centre19', 'university19', '2014', 'title19', 'ongoing', '3'),
(20, 'guide20', 'candidate20', '1ms09hj051', 'centre20', 'university20', '2014', 'title20', 'ongoing', '8');

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
(1, 'professor', 'phd', '1995-03-12', 21, '1996-09-30', '60000', '1'),
(2, 'professor', 'phd', '1994-03-12', 20, '1995-09-30', '60000', '2'),
(3, 'professor', 'phd', '1993-03-12', 19, '1994-09-30', '60000', '3'),
(4, 'professor', 'phd', '1992-03-12', 18, '1993-09-30', '60000', '4'),
(5, 'asst professor', 'phd', '1991-03-12', 17, '1992-09-30', '45000', '5'),
(6, 'asst professor', 'phd', '1990-03-12', 16, '1991-09-30', '45000', '6'),
(7, 'asst professor', 'mtech', '1989-03-12', 15, '1990-09-30', '45000', '7'),
(8, 'asst professor', 'mtech', '1988-03-12', 15, '1989-09-30', '45000', '8'),
(9, 'asst professor', 'mtech', '1987-03-12', 14, '1988-09-30', '45000', '9'),
(10, 'asst professor', 'mtech', '1986-03-12', 13, '1987-09-30', '45000', '10'),
(11, 'asst professor', 'mtech', '1985-03-12', 12, '1986-09-30', '45000', '11'),
(12, 'asst professor', 'mtech', '1984-03-12', 12, '1985-09-30', '45000', '12'),
(13, 'asst professor', 'mtech', '1983-03-12', 11, '1984-09-30', '45000', '13'),
(14, 'assoct professor', 'mtech', '1982-03-12', 10, '1983-09-30', '30000', '14'),
(15, 'assoct professor', 'mtech', '1981-03-12', 9, '1982-09-30', '30000', '15'),
(16, 'assoct professor', 'mtech', '1980-03-12', 9, '1981-09-30', '30000', '16'),
(17, 'assoct professor', 'mtech', '1979-03-12', 8, '1980-09-30', '30000', '17'),
(18, 'assoct professor', 'be', '1978-03-12', 7, '1979-09-30', '30000', '18'),
(19, 'assoct professor', 'be', '1977-03-12', 6, '1978-09-30', '30000', '19'),
(20, 'assoct professor', 'be', '1976-03-12', 6, '1977-09-30', '30000', '20');

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
(1, 'title1', 'sponsored', '2013-03-11', 20, 'national', '1'),
(2, 'title2', 'funded', '2012-03-11', 25, 'internatio', '2'),
(3, 'title3', 'funded', '2011-03-11', 30, 'internatio', '3'),
(4, 'title4', 'sponsored', '2010-03-11', 26, 'national', '6'),
(5, 'title5', 'sponsored', '2009-03-11', 31, 'national', '3'),
(6, 'title6', 'funded', '2008-03-11', 25, 'inernation', '5'),
(7, 'title7', 'sponsored', '2007-03-11', 20, 'national', '2'),
(8, 'title8', 'funded', '2006-03-11', 25, 'internatio', '3'),
(9, 'title9', 'funded', '2005-03-11', 30, 'internatio', '2'),
(10, 'title10', 'sponsored', '2004-03-11', 26, 'national', '4'),
(11, 'title11', 'sponsored', '2003-03-11', 31, 'national', '5'),
(12, 'title12', 'funded', '2002-03-11', 25, 'inernation', '6'),
(13, 'title13', 'sponsored', '2001-03-11', 20, 'national', '4'),
(14, 'title14', 'funded', '2000-03-11', 25, 'internatio', '6'),
(15, 'title15', 'funded', '1999-03-11', 30, 'internatio', '7'),
(16, 'title16', 'sponsored', '1998-03-11', 26, 'national', '8'),
(17, 'title17', 'sponsored', '1997-03-11', 31, 'national', '4'),
(18, 'title18', 'funded', '1996-03-11', 25, 'inernation', '6'),
(19, 'title19', 'sponsored', '1995-03-11', 20, 'national', '9'),
(20, 'title20', 'funded', '1994-03-11', 25, 'internatio', '5'),
(21, 'title21', 'funded', '1993-03-11', 30, 'internatio', '11'),
(22, 'title22', 'sponsored', '1992-03-11', 26, 'national', '14');

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

--
-- Dumping data for table `funded_projects`
--

INSERT INTO `funded_projects` (`slNo`, `investigatorName`, `projectTitle`, `nameOfFundingAgent`, `sanctionOrderNumber`, `projectDuration`, `dateSanctioned`, `sanctionedAmount`, `facultyId`) VALUES
(1, 'investigator1', 'projecttitle1', 'agent1', '178432', '6 months', '2013-03-11', 120000, '1'),
(2, 'investigator2', 'projecttitle2', 'agent2', '188479', '7 months', '2012-03-11', 150000, '2'),
(3, 'investigator3', 'projecttitle3', 'agent3', '198526', '12 months', '2011-03-11', 200000, '3'),
(4, 'investigator4', 'projecttitle4', 'agent4', '208573', '5 months', '2010-03-11', 120000, '6'),
(5, 'investigator5', 'projecttitle5', 'agent5', '218620', '3 months', '2009-03-11', 150000, '3'),
(6, 'investigator6', 'projecttitle6', 'agent6', '228667', '9 months', '2008-03-11', 200000, '5'),
(7, 'investigator7', 'projecttitle7', 'agent7', '238714', '6 months', '2007-03-11', 180000, '2'),
(8, 'investigator8', 'projecttitle8', 'agent8', '248761', '7 months', '2006-03-11', 90000, '3'),
(9, 'investigator9', 'projecttitle9', 'agent9', '258808', '12 months', '2005-03-11', 25000, '2'),
(10, 'investigator10', 'projecttitle10', 'agent10', '268855', '5 months', '2004-03-11', 120000, '4'),
(11, 'investigator11', 'projecttitle11', 'agent11', '278902', '3 months', '2003-03-11', 150000, '5'),
(12, 'investigator12', 'projecttitle12', 'agent12', '288949', '9 months', '2002-03-11', 200000, '6'),
(13, 'investigator13', 'projecttitle13', 'agent13', '298996', '6 months', '2001-03-11', 180000, '4'),
(14, 'investigator14', 'projecttitle14', 'agent14', '309043', '7 months', '2000-03-11', 90000, '6'),
(15, 'investigator15', 'projecttitle15', 'agent15', '319090', '12 months', '1999-03-11', 25000, '7'),
(16, 'investigator16', 'projecttitle16', 'agent16', '329137', '5 months', '1998-03-11', 250000, '8'),
(17, 'investigator17', 'projecttitle17', 'agent17', '339184', '3 months', '1997-03-11', 300000, '4'),
(18, 'investigator18', 'projecttitle18', 'agent18', '349231', '9 months', '1996-03-11', 140000, '6'),
(19, 'investigator19', 'projecttitle19', 'agent19', '359278', '4 months', '1995-03-11', 120000, '9');

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

--
-- Dumping data for table `industrial_collaboration_mou`
--

INSERT INTO `industrial_collaboration_mou` (`slNo`, `mouTitle`, `mouSignedWithIndustryOrGovt`, `mouSigningDate`, `facultyId`) VALUES
(1, 'moutitle1', 'industry1', '2013-03-11', '1'),
(2, 'moutitle2', 'industry2', '2012-03-11', '12'),
(3, 'moutitle3', 'industry3', '2011-03-11', '14'),
(4, 'moutitle4', 'industry4', '2010-03-11', '5'),
(5, 'moutitle5', 'industry5', '2009-03-11', '11'),
(6, 'moutitle6', 'industry6', '2008-03-11', '7'),
(7, 'moutitle7', 'industry7', '2007-03-11', '2'),
(8, 'moutitle8', 'industry8', '2006-03-11', '8'),
(9, 'moutitle9', 'industry9', '2005-03-11', '3'),
(10, 'moutitle10', 'industry10', '2004-03-11', '4'),
(11, 'moutitle11', 'industry11', '2003-03-11', '9'),
(12, 'moutitle12', 'industry12', '2002-03-11', '10');

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

--
-- Dumping data for table `journal_paper`
--

INSERT INTO `journal_paper` (`slNo`, `authors`, `title`, `issn`, `journalName`, `journalType`, `volumeNumber`, `pageNumbers`, `year`, `sjrQuartile`, `facultyId`) VALUES
(1, 'author1', 'title1', '12343234', 'journal1', 'international', 4, 20, '2008', 'q1', '1'),
(2, 'author2', 'title2', '12343536', 'journal2', 'international', 5, 21, '2008', 'q1', '2'),
(3, 'author3', 'title3', '12343838', 'journal3', 'international', 6, 22, '2009', 'q2', '3'),
(4, 'author4', 'title4', '12344140', 'journal4', 'international', 3, 23, '2009', 'q3', '6'),
(5, 'author5', 'title5', '12344442', 'journal5', 'international', 4, 24, '2009', 'q1', '3'),
(6, 'author6', 'title6', '12344744', 'journal6', 'international', 5, 25, '2010', 'q1', '5'),
(7, 'author7', 'title7', '12345046', 'journal7', 'international', 6, 26, '2010', 'q1', '2'),
(8, 'author8', 'title8', '12345348', 'journal8', 'international', 3, 27, '2010', 'q2', '3'),
(9, 'author9', 'title9', '12345650', 'journal9', 'international', 4, 28, '2011', 'q3', '2'),
(10, 'author10', 'title10', '12345952', 'journal10', 'natinoal', 5, 29, '2011', 'q1', '4'),
(11, 'author11', 'title11', '12346254', 'journal11', 'natinoal', 6, 30, '2011', 'q1', '5'),
(12, 'author12', 'title12', '12346556', 'journal12', 'natinoal', 3, 31, '2011', 'q1', '6'),
(13, 'author13', 'title13', '12346858', 'journal13', 'natinoal', 4, 32, '2012', 'q2', '4'),
(14, 'author14', 'title14', '12347160', 'journal14', 'natinoal', 5, 33, '2012', 'q3', '6'),
(15, 'author15', 'title15', '12347462', 'journal15', 'natinoal', 6, 34, '2012', 'q1', '7'),
(16, 'author16', 'title16', '12347764', 'journal16', 'natinoal', 3, 35, '2013', 'q1', '8'),
(17, 'author17', 'title17', '12348066', 'journal17', 'natinoal', 4, 36, '2013', 'q1', '4'),
(18, 'author18', 'title18', '12348368', 'journal18', 'natinoal', 5, 37, '2013', 'q2', '6'),
(19, 'author19', 'title19', '12348670', 'journal19', 'natinoal', 6, 38, '2014', 'q3', '9'),
(20, 'author20', 'title20', '12348972', 'journal20', 'natinoal', 3, 39, '2014', 'q1', '5'),
(21, 'author21', 'title21', '12349274', 'journal21', 'natinoal', 4, 40, '2014', 'q1', '11'),
(22, 'author22', 'title22', '12349576', 'journal22', 'natinoal', 5, 41, '2015', 'q1', '14');

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
(1, 'scholar1', 'guide1', 'centre1', 'university1', '2008', 'p08gt098', 'title1', 'completed', '1'),
(2, 'scholar2', 'guide2', 'centre2', 'university2', '2008', 'p08gt099', 'title2', 'completed', '2'),
(3, 'scholar3', 'guide3', 'centre3', 'university3', '2009', 'p08gt100', 'title3', 'completed', '3'),
(4, 'scholar4', 'guide4', 'centre4', 'university4', '2009', 'p08gt101', 'title4', 'completed', '6'),
(5, 'scholar5', 'guide5', 'centre5', 'university5', '2009', 'p08gt102', 'title5', 'completed', '3'),
(6, 'scholar6', 'guide6', 'centre6', 'university6', '2010', 'p08gt103', 'title6', 'completed', '5'),
(7, 'scholar7', 'guide7', 'centre7', 'university7', '2010', 'p08gt104', 'title7', 'completed', '2'),
(8, 'scholar8', 'guide8', 'centre8', 'university8', '2010', 'p08gt105', 'title8', 'completed', '3'),
(9, 'scholar9', 'guide9', 'centre9', 'university9', '2011', 'p08gt106', 'title9', 'completed', '2'),
(10, 'scholar10', 'guide10', 'centre10', 'university10', '2011', 'p08gt107', 'title10', 'completed', '4'),
(11, 'scholar11', 'guide11', 'centre11', 'university11', '2011', 'p08gt108', 'title11', 'completed', '5'),
(12, 'scholar12', 'guide12', 'centre12', 'university12', '2011', 'p08gt109', 'title12', 'ongoing', '6'),
(13, 'scholar13', 'guide13', 'centre13', 'university13', '2012', 'p08gt110', 'title13', 'ongoing', '4'),
(14, 'scholar14', 'guide14', 'centre14', 'university14', '2012', 'p08gt111', 'title14', 'ongoing', '6'),
(15, 'scholar15', 'guide15', 'centre15', 'university15', '2012', 'p08gt112', 'title15', 'ongoing', '7'),
(16, 'scholar16', 'guide16', 'centre16', 'university16', '2013', 'p08gt113', 'title16', 'ongoing', '8'),
(17, 'scholar17', 'guide17', 'centre17', 'university17', '2013', 'p08gt114', 'title17', 'ongoing', '4'),
(18, 'scholar18', 'guide18', 'centre18', 'university18', '2013', 'p08gt115', 'title18', 'ongoing', '6');

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

--
-- Dumping data for table `projects_handled`
--

INSERT INTO `projects_handled` (`slNo`, `batch`, `ugOrPg`, `projectTitle`, `facultyId`) VALUES
(1, '2008', 'ug', 'title1', '1'),
(2, '2008', 'pg', 'title2', '2'),
(3, '2009', 'pg', 'title3', '3'),
(4, '2009', 'ug', 'title4', '1'),
(5, '2009', 'ug', 'title5', '4'),
(6, '2010', 'pg', 'title6', '2'),
(7, '2010', 'pg', 'title7', '6'),
(8, '2010', 'ug', 'title8', '5'),
(9, '2011', 'ug', 'title9', '7'),
(10, '2011', 'pg', 'title10', '3'),
(11, '2011', 'pg', 'title11', '7'),
(12, '2011', 'ug', 'title12', '4'),
(13, '2012', 'ug', 'title13', '8'),
(14, '2012', 'pg', 'title14', '9'),
(15, '2012', 'pg', 'title15', '2'),
(16, '2013', 'ug', 'title16', '4'),
(17, '2013', 'ug', 'title17', '6'),
(18, '2013', 'pg', 'title18', '2'),
(19, '2014', 'pg', 'title19', '7'),
(20, '2014', 'ug', 'title20', '8'),
(21, '2014', 'ug', 'title21', '3');

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
