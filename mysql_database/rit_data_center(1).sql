-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2018 at 07:18 AM
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
  `panNumber` varchar(20) NOT NULL,
  `accountNumber` varchar(30) NOT NULL,
  `pfNumber` varchar(30) NOT NULL,
  `departmentId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
