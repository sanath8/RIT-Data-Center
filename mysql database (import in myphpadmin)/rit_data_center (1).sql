-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2018 at 03:45 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

create Database rit_data_center;
use rit_data_center;

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
  `name` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `instituteName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `achievement`
--

CREATE TABLE `achievement` (
  `slNo` int(11) NOT NULL,
  `facultyName` varchar(100) NOT NULL,
  `eventName` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `facultyId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admissions`
--

CREATE TABLE `admissions` (
  `year` varchar(30) NOT NULL,
  `noOfStudents` int(11) NOT NULL,
  `noOfPgStudentsWithGateScore` int(11) NOT NULL,
  `fullTime` int(11) NOT NULL,
  `partTime` int(11) NOT NULL,
  `mscByResearch` int(11) NOT NULL,
  `lateralEntry` int(11) NOT NULL,
  `ugCet` int(11) NOT NULL,
  `ugComedK` int(11) NOT NULL,
  `pgCet` int(11) NOT NULL,
  `pgComedK` int(11) NOT NULL,
  `departmentNumber` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `award_achivement`
--

CREATE TABLE `award_achivement` (
  `slNo` int(11) NOT NULL,
  `studentName` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `award` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `eventName` varchar(100) NOT NULL,
  `departmentNumber` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `bookTitle` varchar(100) NOT NULL,
  `publisher` varchar(30) NOT NULL,
  `year` varchar(20) NOT NULL,
  `slNo` int(11) NOT NULL,
  `facultyId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `book_author`
--

CREATE TABLE `book_author` (
  `author` varchar(50) NOT NULL,
  `slNo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `book_chapter`
--

CREATE TABLE `book_chapter` (
  `slNo` int(11) NOT NULL,
  `bookName` varchar(100) NOT NULL,
  `chapterName` varchar(100) NOT NULL,
  `publisher` varchar(50) NOT NULL,
  `year` varchar(20) NOT NULL,
  `facultyId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `book_chapter_author`
--

CREATE TABLE `book_chapter_author` (
  `author` varchar(50) NOT NULL,
  `slNo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `conference`
--

CREATE TABLE `conference` (
  `slNo` int(11) NOT NULL,
  `eventName` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `place` varchar(50) NOT NULL,
  `noOfPapersPresented` int(11) NOT NULL,
  `invitedOrDeputed` varchar(20) NOT NULL,
  `facultyId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `conference_author`
--

CREATE TABLE `conference_author` (
  `author` varchar(50) NOT NULL,
  `slNo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `conference_paper`
--

CREATE TABLE `conference_paper` (
  `slNo` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `year` varchar(10) NOT NULL,
  `confName` varchar(100) NOT NULL,
  `confType` varchar(100) NOT NULL,
  `organizedBy` varchar(100) NOT NULL,
  `facultyId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `slNo` int(11) NOT NULL,
  `ugOrPg` varchar(5) NOT NULL,
  `year` varchar(10) NOT NULL,
  `labHandled` varchar(30) NOT NULL,
  `subjectName` varchar(50) NOT NULL,
  `facultyId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cunsultancy`
--

CREATE TABLE `cunsultancy` (
  `slNo` int(11) NOT NULL,
  `amountReceived` int(11) NOT NULL,
  `year` varchar(10) NOT NULL,
  `projectTitle` varchar(100) NOT NULL,
  `client` varchar(100) NOT NULL,
  `facultyId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `departmentNumber` varchar(10) NOT NULL,
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

INSERT INTO `department` (`departmentNumber`, `departmentName`, `yearOfEstablishment`, `address`, `contactNumber`, `officialMailId`, `hodName`, `hodContactNumber`, `instituteName`) VALUES
('1', 'Computer Science & Engineering', '1984', 'division of electrical sciences block, 1st floor', '080-23600822/23606939', 'hod-cse@msrit.edu', 'Dr. Anita Kanavalli', '080-23600822/23606939', 'Ramaiah Institution of Technology');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `facultyName` varchar(50) NOT NULL,
  `panNumber` varchar(20) NOT NULL,
  `accountNumber` varchar(30) NOT NULL,
  `pfNumber` varchar(30) NOT NULL,
  `natureOfAppointment` varchar(50) NOT NULL,
  `emailId` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `category` varchar(50) NOT NULL,
  `caste` varchar(15) NOT NULL,
  `religion` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `contactNumber` varchar(30) NOT NULL,
  `facultyId` int(11) NOT NULL,
  `departmentNumber` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`facultyName`, `panNumber`, `accountNumber`, `pfNumber`, `natureOfAppointment`, `emailId`, `address`, `dob`, `category`, `caste`, `religion`, `gender`, `contactNumber`, `facultyId`, `departmentNumber`) VALUES
('Dr. Anita Kanavalli', 'not provided', 'not provided', 'not provided', 'permanent', 'anithak@msrit.edu', 'not provided', '2018-03-01', 'not provided', 'not provide ', 'not provided', 'female', '080-23600822/23606939', 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_research`
--

CREATE TABLE `faculty_research` (
  `status` varchar(30) NOT NULL,
  `usn` varchar(30) NOT NULL,
  `title` varchar(50) NOT NULL,
  `researchCandidateName` varchar(50) NOT NULL,
  `guideName` varchar(50) NOT NULL,
  `centreName` varchar(50) NOT NULL,
  `registrationYear` varchar(20) NOT NULL,
  `university` varchar(30) NOT NULL,
  `slNo` int(11) NOT NULL,
  `facultyId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `finance`
--

CREATE TABLE `finance` (
  `slNo` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
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
  `sanctionedAmount` int(11) NOT NULL,
  `investigatorName` varchar(30) NOT NULL,
  `nameOfFundingAgent` varchar(30) NOT NULL,
  `dateSanctioned` date NOT NULL,
  `sanctionOrderNumber` varchar(10) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `projectTitle` varchar(50) NOT NULL,
  `facultyId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `governance`
--

CREATE TABLE `governance` (
  `name` varchar(100) NOT NULL,
  `slNo` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `instituteName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `guest_lecture`
--

CREATE TABLE `guest_lecture` (
  `slNo` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `placeInvited` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `facultyId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `guest_lectures_invited`
--

CREATE TABLE `guest_lectures_invited` (
  `slNo` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `areaOfSpecialization` varchar(50) NOT NULL,
  `expertOrganisationOrAddress` varchar(100) NOT NULL,
  `departmentNumber` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hardware`
--

CREATE TABLE `hardware` (
  `labName` varchar(100) NOT NULL,
  `carpetArea` varchar(100) NOT NULL,
  `majorEquipments` varchar(100) NOT NULL,
  `totalInvestment` int(11) NOT NULL,
  `slNo` int(11) NOT NULL,
  `departmentNumber` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `industrial_collaboration_mou`
--

CREATE TABLE `industrial_collaboration_mou` (
  `slNo` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `signingDate` date NOT NULL,
  `mouSignedWithIndustryGovt` varchar(30) NOT NULL,
  `facultyId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `industrial_visit`
--

CREATE TABLE `industrial_visit` (
  `slNo` int(11) NOT NULL,
  `scheduleDate` date NOT NULL,
  `industryName` varchar(50) NOT NULL,
  `departmentNumber` varchar(10) NOT NULL
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
('Ramaiah Institution of Technology', '1962', 'MSR College Road, MSR Nagar, MSRIT Post, Bengaluru, Karnataka 560054', '+9180-23606939', 'msrit.edu', 'admn@msrit.edu', 'NVR Naidu', '+9180-23600822');

-- --------------------------------------------------------

--
-- Table structure for table `journal_author`
--

CREATE TABLE `journal_author` (
  `author` varchar(50) NOT NULL,
  `slNo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `journal_paper`
--

CREATE TABLE `journal_paper` (
  `slNo` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `year` varchar(10) NOT NULL,
  `journalName` varchar(100) NOT NULL,
  `journalType` varchar(100) NOT NULL,
  `volumeNumber` int(11) NOT NULL,
  `pageNumbers` int(11) NOT NULL,
  `facultyId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `non_teaching_staff`
--

CREATE TABLE `non_teaching_staff` (
  `slNo` int(11) NOT NULL,
  `facultyId` int(11) NOT NULL,
  `fName` varchar(30) NOT NULL,
  `lName` varchar(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `religion` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `category` varchar(100) NOT NULL,
  `caste` varchar(100) NOT NULL,
  `natureOfAppointment` varchar(100) NOT NULL,
  `emailId` varchar(100) NOT NULL,
  `mobileNo` varchar(100) NOT NULL,
  `pfNo` varchar(100) NOT NULL,
  `accountNo` varchar(100) NOT NULL,
  `panNo` varchar(100) NOT NULL,
  `NewAttribute` int(11) NOT NULL,
  `departmentNumber` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `other_membership`
--

CREATE TABLE `other_membership` (
  `slNo` int(11) NOT NULL,
  `facultyName` varchar(30) NOT NULL,
  `nameOfTheEvent` varchar(100) NOT NULL,
  `internalOrExternal` varchar(50) NOT NULL,
  `year` varchar(10) NOT NULL,
  `departmentNumber` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patent`
--

CREATE TABLE `patent` (
  `slNo` int(11) NOT NULL,
  `applicationNumber` varchar(20) NOT NULL,
  `dateOfFilingApplication` date NOT NULL,
  `publicationDate` date NOT NULL,
  `patentTitle` varchar(100) NOT NULL,
  `facultyId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `phd_scholar`
--

CREATE TABLE `phd_scholar` (
  `slNo` int(11) NOT NULL,
  `researchCentre` varchar(50) NOT NULL,
  `usn` varchar(30) NOT NULL,
  `title` varchar(50) NOT NULL,
  `scholarName` varchar(50) NOT NULL,
  `guideName` varchar(30) NOT NULL,
  `registrationYear` varchar(10) NOT NULL,
  `university` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL,
  `facultyId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `professional_activities`
--

CREATE TABLE `professional_activities` (
  `slNo` int(11) NOT NULL,
  `facultyName` varchar(50) NOT NULL,
  `college` varchar(100) NOT NULL,
  `board` varchar(50) NOT NULL,
  `externalOrInternal` varchar(20) NOT NULL,
  `year` varchar(10) NOT NULL,
  `departmentNumber` varchar(10) NOT NULL
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
  `departmentNumber` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `slNo` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `ugOrPg` varchar(5) NOT NULL,
  `batch` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `facultyId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `publication`
--

CREATE TABLE `publication` (
  `slNo` int(11) NOT NULL,
  `studentName` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `title` varchar(30) NOT NULL,
  `place` varchar(30) NOT NULL,
  `conferenceOrJournal` varchar(30) NOT NULL,
  `departmentNumber` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qualification`
--

CREATE TABLE `qualification` (
  `slNo` int(11) NOT NULL,
  `beUniversity` varchar(100) NOT NULL,
  `bePassYear` varchar(10) NOT NULL,
  `bePassPercentage` float NOT NULL,
  `mtechUniversity` varchar(100) NOT NULL,
  `mtechPassYear` varchar(20) NOT NULL,
  `mtechPassPercentage` float NOT NULL,
  `phdUniversity` varchar(100) NOT NULL,
  `phdAwardYear` varchar(10) NOT NULL,
  `phdAreaOfSpecialization` varchar(100) NOT NULL,
  `facultyId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qualification`
--

INSERT INTO `qualification` (`slNo`, `beUniversity`, `bePassYear`, `bePassPercentage`, `mtechUniversity`, `mtechPassYear`, `mtechPassPercentage`, `phdUniversity`, `phdAwardYear`, `phdAreaOfSpecialization`, `facultyId`) VALUES
(1, 'ramaiah', '1998', 23, 'ramaiah', '2004', 40, 'ramiah', '2013', 'computer', 1);

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
  `title` varchar(50) NOT NULL,
  `event` varchar(50) NOT NULL,
  `broadArea` varchar(50) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `slNo` int(11) NOT NULL,
  `departmentNumber` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `slNo` int(11) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `joiningDate` date NOT NULL,
  `promotionDate` date NOT NULL,
  `payScale` varchar(20) NOT NULL,
  `yearsOfExperience` int(11) NOT NULL,
  `facultyId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `service_details`
--

CREATE TABLE `service_details` (
  `slNo` int(11) NOT NULL,
  `facultyName` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `qualification` varchar(100) NOT NULL,
  `yearsOfExperience` int(11) NOT NULL,
  `dateOfJoining` date NOT NULL,
  `scaleOfPay` varchar(100) NOT NULL,
  `promotionDate` date NOT NULL,
  `facultyId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `software`
--

CREATE TABLE `software` (
  `noOfUsers` int(11) NOT NULL,
  `licenseNumber` varchar(30) NOT NULL,
  `softwareName` varchar(50) NOT NULL,
  `slNo` int(11) NOT NULL,
  `departmentNumber` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `workshop_fdp`
--

CREATE TABLE `workshop_fdp` (
  `slNo` int(11) NOT NULL,
  `eventName` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `type` varchar(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `noOfParticipants` int(11) NOT NULL,
  `sponsoredOrFunded` varchar(100) NOT NULL,
  `facultyId` int(11) NOT NULL
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
-- Indexes for table `achievement`
--
ALTER TABLE `achievement`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `admissions`
--
ALTER TABLE `admissions`
  ADD PRIMARY KEY (`year`),
  ADD KEY `departmentNumber` (`departmentNumber`);

--
-- Indexes for table `award_achivement`
--
ALTER TABLE `award_achivement`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `departmentNumber` (`departmentNumber`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `book_author`
--
ALTER TABLE `book_author`
  ADD PRIMARY KEY (`author`,`slNo`),
  ADD KEY `slNo` (`slNo`);

--
-- Indexes for table `book_chapter`
--
ALTER TABLE `book_chapter`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `book_chapter_author`
--
ALTER TABLE `book_chapter_author`
  ADD PRIMARY KEY (`author`,`slNo`),
  ADD KEY `slNo` (`slNo`);

--
-- Indexes for table `conference`
--
ALTER TABLE `conference`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `conference_author`
--
ALTER TABLE `conference_author`
  ADD PRIMARY KEY (`author`,`slNo`),
  ADD KEY `slNo` (`slNo`);

--
-- Indexes for table `conference_paper`
--
ALTER TABLE `conference_paper`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `cunsultancy`
--
ALTER TABLE `cunsultancy`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`departmentNumber`),
  ADD KEY `instituteName` (`instituteName`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`facultyId`),
  ADD KEY `departmentNumber` (`departmentNumber`);

--
-- Indexes for table `faculty_research`
--
ALTER TABLE `faculty_research`
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
-- Indexes for table `governance`
--
ALTER TABLE `governance`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `instituteName` (`instituteName`);

--
-- Indexes for table `guest_lecture`
--
ALTER TABLE `guest_lecture`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `guest_lectures_invited`
--
ALTER TABLE `guest_lectures_invited`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `departmentNumber` (`departmentNumber`);

--
-- Indexes for table `hardware`
--
ALTER TABLE `hardware`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `departmentNumber` (`departmentNumber`);

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
  ADD KEY `departmentNumber` (`departmentNumber`);

--
-- Indexes for table `institution`
--
ALTER TABLE `institution`
  ADD PRIMARY KEY (`instituteName`);

--
-- Indexes for table `journal_author`
--
ALTER TABLE `journal_author`
  ADD PRIMARY KEY (`author`,`slNo`),
  ADD KEY `slNo` (`slNo`);

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
  ADD PRIMARY KEY (`facultyId`),
  ADD KEY `departmentNumber` (`departmentNumber`);

--
-- Indexes for table `other_membership`
--
ALTER TABLE `other_membership`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `departmentNumber` (`departmentNumber`);

--
-- Indexes for table `patent`
--
ALTER TABLE `patent`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

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
  ADD KEY `departmentNumber` (`departmentNumber`);

--
-- Indexes for table `professional_body_membership`
--
ALTER TABLE `professional_body_membership`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `departmentNumber` (`departmentNumber`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `publication`
--
ALTER TABLE `publication`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `departmentNumber` (`departmentNumber`);

--
-- Indexes for table `qualification`
--
ALTER TABLE `qualification`
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
  ADD KEY `departmentNumber` (`departmentNumber`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `service_details`
--
ALTER TABLE `service_details`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `software`
--
ALTER TABLE `software`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `departmentNumber` (`departmentNumber`);

--
-- Indexes for table `workshop_fdp`
--
ALTER TABLE `workshop_fdp`
  ADD PRIMARY KEY (`slNo`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `academic_council`
--
ALTER TABLE `academic_council`
  ADD CONSTRAINT `academic_council_ibfk_1` FOREIGN KEY (`instituteName`) REFERENCES `institution` (`instituteName`);

--
-- Constraints for table `achievement`
--
ALTER TABLE `achievement`
  ADD CONSTRAINT `achievement_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `non_teaching_staff` (`facultyId`);

--
-- Constraints for table `admissions`
--
ALTER TABLE `admissions`
  ADD CONSTRAINT `admissions_ibfk_1` FOREIGN KEY (`departmentNumber`) REFERENCES `department` (`departmentNumber`);

--
-- Constraints for table `award_achivement`
--
ALTER TABLE `award_achivement`
  ADD CONSTRAINT `award_achivement_ibfk_1` FOREIGN KEY (`departmentNumber`) REFERENCES `department` (`departmentNumber`);

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`);

--
-- Constraints for table `book_author`
--
ALTER TABLE `book_author`
  ADD CONSTRAINT `book_author_ibfk_1` FOREIGN KEY (`slNo`) REFERENCES `book` (`slNo`);

--
-- Constraints for table `book_chapter`
--
ALTER TABLE `book_chapter`
  ADD CONSTRAINT `book_chapter_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`);

--
-- Constraints for table `book_chapter_author`
--
ALTER TABLE `book_chapter_author`
  ADD CONSTRAINT `book_chapter_author_ibfk_1` FOREIGN KEY (`slNo`) REFERENCES `book_chapter` (`slNo`);

--
-- Constraints for table `conference`
--
ALTER TABLE `conference`
  ADD CONSTRAINT `conference_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`);

--
-- Constraints for table `conference_author`
--
ALTER TABLE `conference_author`
  ADD CONSTRAINT `conference_author_ibfk_1` FOREIGN KEY (`slNo`) REFERENCES `conference_paper` (`slNo`);

--
-- Constraints for table `conference_paper`
--
ALTER TABLE `conference_paper`
  ADD CONSTRAINT `conference_paper_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`);

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`);

--
-- Constraints for table `cunsultancy`
--
ALTER TABLE `cunsultancy`
  ADD CONSTRAINT `cunsultancy_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`);

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`instituteName`) REFERENCES `institution` (`instituteName`);

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`departmentNumber`) REFERENCES `department` (`departmentNumber`);

--
-- Constraints for table `faculty_research`
--
ALTER TABLE `faculty_research`
  ADD CONSTRAINT `faculty_research_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`);

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
-- Constraints for table `governance`
--
ALTER TABLE `governance`
  ADD CONSTRAINT `governance_ibfk_1` FOREIGN KEY (`instituteName`) REFERENCES `institution` (`instituteName`);

--
-- Constraints for table `guest_lecture`
--
ALTER TABLE `guest_lecture`
  ADD CONSTRAINT `guest_lecture_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`);

--
-- Constraints for table `guest_lectures_invited`
--
ALTER TABLE `guest_lectures_invited`
  ADD CONSTRAINT `guest_lectures_invited_ibfk_1` FOREIGN KEY (`departmentNumber`) REFERENCES `department` (`departmentNumber`);

--
-- Constraints for table `hardware`
--
ALTER TABLE `hardware`
  ADD CONSTRAINT `hardware_ibfk_1` FOREIGN KEY (`departmentNumber`) REFERENCES `department` (`departmentNumber`);

--
-- Constraints for table `industrial_collaboration_mou`
--
ALTER TABLE `industrial_collaboration_mou`
  ADD CONSTRAINT `industrial_collaboration_mou_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`);

--
-- Constraints for table `industrial_visit`
--
ALTER TABLE `industrial_visit`
  ADD CONSTRAINT `industrial_visit_ibfk_1` FOREIGN KEY (`departmentNumber`) REFERENCES `department` (`departmentNumber`);

--
-- Constraints for table `journal_author`
--
ALTER TABLE `journal_author`
  ADD CONSTRAINT `journal_author_ibfk_1` FOREIGN KEY (`slNo`) REFERENCES `journal_paper` (`slNo`);

--
-- Constraints for table `journal_paper`
--
ALTER TABLE `journal_paper`
  ADD CONSTRAINT `journal_paper_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`);

--
-- Constraints for table `non_teaching_staff`
--
ALTER TABLE `non_teaching_staff`
  ADD CONSTRAINT `non_teaching_staff_ibfk_1` FOREIGN KEY (`departmentNumber`) REFERENCES `department` (`departmentNumber`);

--
-- Constraints for table `other_membership`
--
ALTER TABLE `other_membership`
  ADD CONSTRAINT `other_membership_ibfk_1` FOREIGN KEY (`departmentNumber`) REFERENCES `department` (`departmentNumber`);

--
-- Constraints for table `patent`
--
ALTER TABLE `patent`
  ADD CONSTRAINT `patent_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`);

--
-- Constraints for table `phd_scholar`
--
ALTER TABLE `phd_scholar`
  ADD CONSTRAINT `phd_scholar_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`);

--
-- Constraints for table `professional_activities`
--
ALTER TABLE `professional_activities`
  ADD CONSTRAINT `professional_activities_ibfk_1` FOREIGN KEY (`departmentNumber`) REFERENCES `department` (`departmentNumber`);

--
-- Constraints for table `professional_body_membership`
--
ALTER TABLE `professional_body_membership`
  ADD CONSTRAINT `professional_body_membership_ibfk_1` FOREIGN KEY (`departmentNumber`) REFERENCES `department` (`departmentNumber`);

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`);

--
-- Constraints for table `publication`
--
ALTER TABLE `publication`
  ADD CONSTRAINT `publication_ibfk_1` FOREIGN KEY (`departmentNumber`) REFERENCES `department` (`departmentNumber`);

--
-- Constraints for table `qualification`
--
ALTER TABLE `qualification`
  ADD CONSTRAINT `qualification_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`);

--
-- Constraints for table `scholarship`
--
ALTER TABLE `scholarship`
  ADD CONSTRAINT `scholarship_ibfk_1` FOREIGN KEY (`instituteName`) REFERENCES `institution` (`instituteName`);

--
-- Constraints for table `seminar_workshop`
--
ALTER TABLE `seminar_workshop`
  ADD CONSTRAINT `seminar_workshop_ibfk_1` FOREIGN KEY (`departmentNumber`) REFERENCES `department` (`departmentNumber`);

--
-- Constraints for table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`);

--
-- Constraints for table `service_details`
--
ALTER TABLE `service_details`
  ADD CONSTRAINT `service_details_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `non_teaching_staff` (`facultyId`);

--
-- Constraints for table `software`
--
ALTER TABLE `software`
  ADD CONSTRAINT `software_ibfk_1` FOREIGN KEY (`departmentNumber`) REFERENCES `department` (`departmentNumber`);

--
-- Constraints for table `workshop_fdp`
--
ALTER TABLE `workshop_fdp`
  ADD CONSTRAINT `workshop_fdp_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`facultyId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
