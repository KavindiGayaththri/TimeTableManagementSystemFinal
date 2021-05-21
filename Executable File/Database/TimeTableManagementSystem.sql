-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2021 at 06:06 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

--
-- Database: `timetable`
--
CREATE DATABASE `timetable`;
USE `timetable`;

-- --------------------------------------------------------

--
-- Table structure for table `academicdetails`
--

CREATE TABLE `academicdetails` (
  `id` int(11) NOT NULL,
  `year` varchar(255) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `academicdetails`
--

INSERT INTO `academicdetails` (`id`, `year`, `semester`, `type`) VALUES
(5, 'y1', 's2', 'y1s1'),
(6, 'y1', 's2', 'y1s2'),
(7, 'y2', 's2', 'y1s2');

-- --------------------------------------------------------

--
-- Table structure for table `allocations`
--

CREATE TABLE `allocations` (
  `id` int(11) NOT NULL,
  `building` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `tag` varchar(100) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `session_name` varchar(255) DEFAULT NULL,
  `lecturer_name` varchar(255) DEFAULT NULL,
  `room` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `allocations`
--

INSERT INTO `allocations` (`id`, `building`, `subject`, `tag`, `session_id`, `session_name`, `lecturer_name`, `room`) VALUES
(2, 'B5001', 'ITPM001', 'tute', NULL, NULL, 'kolitha', '3'),
(4, 'B5002', 'ITPM001', 'tute', NULL, NULL, 'ravindu', '2'),
(5, 'B5002', 'ITPM001', 'tute', NULL, NULL, 'kolitha', '3');

-- --------------------------------------------------------

--
-- Table structure for table `building`
--

CREATE TABLE `building` (
  `buildingId` varchar(10) NOT NULL,
  `buildingName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `building`
--

INSERT INTO `building` (`buildingId`, `buildingName`) VALUES
('B5000', 'Computing'),
('B5001', 'Engineering'),
('B5002', 'New Building'),
('B5003', 'Business');

-- --------------------------------------------------------

--
-- Table structure for table `building_allocations`
--

CREATE TABLE `building_allocations` (
  `id` int(11) NOT NULL,
  `building` varchar(255) NOT NULL,
  `room` varchar(255) NOT NULL,
  `tag` varchar(100) NOT NULL,
  `day` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `building_allocations`
--

INSERT INTO `building_allocations` (`id`, `building`, `room`, `tag`, `day`) VALUES
(2, 'Engineering', 'E305', 'Tute', '2021-05-21'),
(3, 'BM', 'BM405', 'Lab', '2021-05-21'),
(4, 'new building', 'A102', 'lab', '2021-05-06');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryId` varchar(10) NOT NULL,
  `categoryName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryId`, `categoryName`) VALUES
('CAT4000', 'Professor'),
('CAT4001', 'Senior Lecturer'),
('CAT4002', 'Lecturer'),
('CAT4003', 'Assistant Lecturer'),
('CAT4004', 'Visiting Lecturer'),
('CAT4005', 'Instructor');

-- --------------------------------------------------------

--
-- Table structure for table `center`
--

CREATE TABLE `center` (
  `centerId` varchar(10) NOT NULL,
  `centerName` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `center`
--

INSERT INTO `center` (`centerId`, `centerName`, `address`) VALUES
('C3000', 'Malabe', 'Kandy Road, Malabe'),
('C3001', 'Metro', 'Kollupitiya'),
('C3002', 'Kandy', 'Kandy'),
('C3003', 'Kurunagala', 'Kurunagala');

-- --------------------------------------------------------

--
-- Table structure for table `consecativetable`
--

CREATE TABLE `consecativetable` (
  `id` int(10) NOT NULL,
  `Year` varchar(100) NOT NULL,
  `Semmester` varchar(100) NOT NULL,
  `Programe` varchar(100) NOT NULL,
  `Room` varchar(100) NOT NULL,
  `consecutivesession` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `consecativetable`
--

INSERT INTO `consecativetable` (`id`, `Year`, `Semmester`, `Programe`, `Room`, `consecutivesession`) VALUES
(1, '2018', 'hi', 'information tachnolodgy', 'BM405', 'ITP'),
(2, '2018', 'hi', 'information tachnolodgy', 'BM405', 'ITP'),
(3, '2018', 'hi', 'information tachnolodgy', 'BM405', 'ITP');

-- --------------------------------------------------------

--
-- Table structure for table `consecutive_session`
--

CREATE TABLE `consecutive_session` (
  `id` int(11) NOT NULL,
  `subjectname` varchar(10) NOT NULL,
  `subjectid` varchar(100) NOT NULL,
  `lecturename` varchar(10) NOT NULL,
  `lecturetime` varchar(10) NOT NULL,
  `tutorialtime` varchar(10) NOT NULL,
  `yearsem` varchar(10) NOT NULL,
  `groupid` varchar(10) NOT NULL,
  `sgroupid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `consecutive_session`
--

INSERT INTO `consecutive_session` (`id`, `subjectname`, `subjectid`, `lecturename`, `lecturetime`, `tutorialtime`, `yearsem`, `groupid`, `sgroupid`) VALUES
(1, 'ITP', 'ITPM002', 'Kavindi', '100', '100', 'y1s2', '1', 2),
(2, 'ITP', 'ITPM002', 'Kolitha', '100', '100', 'y1s2', '1', 2);

-- --------------------------------------------------------

--
-- Table structure for table `day`
--

CREATE TABLE `day` (
  `id` int(5) NOT NULL,
  `No_workigdays` int(5) NOT NULL,
  `workingDays` varchar(100) NOT NULL,
  `workinghours` varchar(10) NOT NULL,
  `workingminute` varchar(10) NOT NULL,
  `timeSlot` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `day`
--

INSERT INTO `day` (`id`, `No_workigdays`, `workingDays`, `workinghours`, `workingminute`, `timeSlot`) VALUES
(1, 4, 'Monday\nTuesday\nWednesday\nfriday', '8H', '30Min', '2.30'),
(2, 5, 'monday\ntuesday', '8', '30', '2'),
(3, 5, 'monday\ntuesday', '8', '30', '2'),
(2, 5, 'monday\ntuesday', '8', '30', '2'),
(3, 5, 'monday\ntuesday', '8', '30', '2');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `departmentId` varchar(10) NOT NULL,
  `departmentName` varchar(100) NOT NULL,
  `faculty` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`departmentId`, `departmentName`, `faculty`) VALUES
('D2000', 'Software Engineering', 'F1000'),
('D2001', 'Information Technology', 'F1000'),
('D2002', 'Data Science', 'F1000'),
('D2003', 'Information System Engineering', 'F1000'),
('D2004', 'Computer System and Network', 'F1000'),
('D2005', 'Civil Engineering', 'F1001'),
('D2006', 'Mathematics', 'F1001'),
('D2007', 'Management of Technology', 'F1002'),
('D2008', 'Decision Science', 'F1002'),
('D2009', 'Medicine', 'F1003'),
('D2010', 'Anatomy', 'F1003');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `facultyId` varchar(10) NOT NULL,
  `facultyName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`facultyId`, `facultyName`) VALUES
('F1000', 'Computing'),
('F1001', 'Engineering'),
('F1002', 'Business'),
('F1003', 'Medical');

-- --------------------------------------------------------

--
-- Table structure for table `generateid`
--

CREATE TABLE `generateid` (
  `id` int(11) NOT NULL,
  `year_sem` varchar(255) NOT NULL,
  `programe` varchar(255) NOT NULL,
  `gnum` varchar(255) NOT NULL,
  `sgnum` varchar(255) NOT NULL,
  `groupid` varchar(255) NOT NULL,
  `subgid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `generateid`
--

INSERT INTO `generateid` (`id`, `year_sem`, `programe`, `gnum`, `sgnum`, `groupid`, `subgid`) VALUES
(6, 'y2s2', 'se', '2', '1', 'y2s21', 'y2s21.1'),
(7, 'y3s1', 'ise', '1', '1', 'y3s1.1', 'y3s1.1.1');

-- --------------------------------------------------------

--
-- Table structure for table `groupdetails`
--

CREATE TABLE `groupdetails` (
  `id` int(11) NOT NULL,
  `year_sem` varchar(255) NOT NULL,
  `program` varchar(255) NOT NULL,
  `gnum` varchar(255) NOT NULL,
  `sgnum` varchar(255) NOT NULL,
  `group_id` varchar(255) NOT NULL,
  `sgroup_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `groupdetails`
--

INSERT INTO `groupdetails` (`id`, `year_sem`, `program`, `gnum`, `sgnum`, `group_id`, `sgroup_id`) VALUES
(55, 'y1s2', 'csne', '1', '2', '1', '2');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `ID` int(10) NOT NULL,
  `groupN` varchar(45) NOT NULL,
  `startTime` varchar(45) NOT NULL,
  `subgroup` varchar(45) NOT NULL,
  `endTime` varchar(45) NOT NULL,
  `room` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`ID`, `groupN`, `startTime`, `subgroup`, `endTime`, `room`) VALUES
(1, '1', '2', 'a234', '2.00', '4.00'),
(2, '1', '2', 'q', '2.00', '4.00');

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE `lecturer` (
  `lecturerId` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `faculty` varchar(10) NOT NULL,
  `building` varchar(10) NOT NULL,
  `center` varchar(10) NOT NULL,
  `department` varchar(10) NOT NULL,
  `category` varchar(10) NOT NULL,
  `level` int(11) NOT NULL,
  `rank` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`lecturerId`, `name`, `faculty`, `building`, `center`, `department`, `category`, `level`, `rank`) VALUES
('19', 'Kavindi', 'F1001', 'B5001', 'C3002', 'D2006', 'CAT4001', 1, '23'),
('L12', 'Kolitha', 'F1001', 'B5001', 'C3000', 'D2006', 'CAT4001', 2, '12');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `level` int(11) NOT NULL,
  `levelName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`level`, `levelName`) VALUES
(1, 'Level 1'),
(2, 'Level 2'),
(3, 'Level 3'),
(4, 'Level 4');

-- --------------------------------------------------------

--
-- Table structure for table `managetags`
--

CREATE TABLE `managetags` (
  `id` int(11) NOT NULL,
  `tname` varchar(255) NOT NULL,
  `tcode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `managetags`
--

INSERT INTO `managetags` (`id`, `tname`, `tcode`) VALUES
(5, 'lecture', '4'),
(6, 'practicale', '1'),
(7, 'tute', '3');

-- --------------------------------------------------------

--
-- Table structure for table `nonoverlapping`
--

CREATE TABLE `nonoverlapping` (
  `id` int(255) NOT NULL,
  `subjectname1` varchar(255) NOT NULL,
  `lecturename` varchar(255) NOT NULL,
  `yearsem` varchar(255) NOT NULL,
  `groupid` varchar(255) NOT NULL,
  `sgroupid` varchar(255) NOT NULL,
  `startingtime` varchar(255) NOT NULL,
  `endtime` varchar(255) NOT NULL,
  `day` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nonoverlapping`
--

INSERT INTO `nonoverlapping` (`id`, `subjectname1`, `lecturename`, `yearsem`, `groupid`, `sgroupid`, `startingtime`, `endtime`, `day`, `duration`) VALUES
(2, 'ITPM', 'Kavindi', 'y1s2', '1', '2', '2.30', '4.30', 'wednesday', '2'),
(3, 'ITPM', 'Bandara', 'y1s2', '1', '2', '9.30', '11.30', 'monday', '2');

-- --------------------------------------------------------

--
-- Table structure for table `parallelsession`
--

CREATE TABLE `parallelsession` (
  `id` int(11) NOT NULL,
  `subjectname1` varchar(255) NOT NULL,
  `subjectname2` varchar(255) NOT NULL,
  `lecturename` varchar(10) NOT NULL,
  `yearsem` varchar(255) NOT NULL,
  `groupid` varchar(255) NOT NULL,
  `sgroupid` varchar(255) NOT NULL,
  `startingtime` varchar(255) NOT NULL,
  `endtime` varchar(255) NOT NULL,
  `day` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parallelsession`
--

INSERT INTO `parallelsession` (`id`, `subjectname1`, `subjectname2`, `lecturename`, `yearsem`, `groupid`, `sgroupid`, `startingtime`, `endtime`, `day`, `duration`) VALUES
(2, 'ITPM', 'ITP', 'Kasun', 'y1s2', '1', '2', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `programdetails`
--

CREATE TABLE `programdetails` (
  `id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `pf_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `programdetails`
--

INSERT INTO `programdetails` (`id`, `p_name`, `pf_name`) VALUES
(5, 'information technology', 'it'),
(6, 'information tachnolodgy', 'it'),
(9, '123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `reservedtime`
--

CREATE TABLE `reservedtime` (
  `id` int(10) NOT NULL,
  `Building` varchar(100) NOT NULL,
  `Room` varchar(100) NOT NULL,
  `day` varchar(100) NOT NULL,
  `StartTime` varchar(100) NOT NULL,
  `Endtime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservedtime`
--

INSERT INTO `reservedtime` (`id`, `Building`, `Room`, `day`, `StartTime`, `Endtime`) VALUES
(1, 'a234', 'Monday', '8.00', '1.00', 'Computing'),
(4, 'q', '', '', '', 'Computing'),
(5, 'q', '', '', '', 'Computing'),
(6, 'q', '', '', '', 'Computing');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `tfId` int(10) NOT NULL,
  `tfRoom` varchar(45) NOT NULL,
  `tfDay` varchar(45) NOT NULL,
  `tfStartTime` varchar(45) NOT NULL,
  `tfEndTime` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`tfId`, `tfRoom`, `tfDay`, `tfStartTime`, `tfEndTime`) VALUES
(2, 'A302', 'monday', '10.20', '02.10'),
(3, 'B401', 'monday', '08.30', '12.00');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(10) NOT NULL,
  `subjectname` varchar(10) CHARACTER SET latin1 NOT NULL,
  `subjectcode` varchar(100) CHARACTER SET latin1 NOT NULL,
  `sgroupid` varchar(100) NOT NULL,
  `tag` int(10) NOT NULL,
  `duration` varchar(40) CHARACTER SET latin1 NOT NULL,
  `studentcount` varchar(40) CHARACTER SET latin1 NOT NULL,
  `lecturer` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `subjectname`, `subjectcode`, `sgroupid`, `tag`, `duration`, `studentcount`, `lecturer`) VALUES
(3, 'OOP', 'IT2010', 'y2s21.1', 5, '2', '123', 'L12');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subjectCode` varchar(10) NOT NULL,
  `subjectName` varchar(100) NOT NULL,
  `offeredYear` varchar(10) NOT NULL,
  `offeredSemester` varchar(50) NOT NULL,
  `noOfLecHours` int(11) NOT NULL,
  `noOfTutHours` int(11) NOT NULL,
  `noOfLabHours` int(11) NOT NULL,
  `noOfEvaHours` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subjectCode`, `subjectName`, `offeredYear`, `offeredSemester`, `noOfLecHours`, `noOfTutHours`, `noOfLabHours`, `noOfEvaHours`) VALUES
('IT1080', 'OOP', '2002', '1st Year 2st Semester', 2, 22222, 2, 2),
('IE2010', 'ISDM', '2003', '1st Year 2st Semester', 3, 33, 36, 33),
('SE1020', 'ITPM', '2004', '1st Year 1st Semester', 22, 22, 22, 22);

-- --------------------------------------------------------

--
-- Table structure for table `tableviewint3`
--

CREATE TABLE `tableviewint3` (
  `ID` int(11) NOT NULL,
  `LecturersName` varchar(255) NOT NULL,
  `Subjects` varchar(255) NOT NULL,
  `LecturersDate` varchar(255) NOT NULL,
  `SubGroup` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tableviewint3`
--

INSERT INTO `tableviewint3` (`ID`, `LecturersName`, `Subjects`, `LecturersDate`, `SubGroup`) VALUES
(7, 'Saman Edirisinghe', 'mc', 'monday', '0.9'),
(10, 'K.G Panduwawala', 'mc', '21/2/2021', '4.5');

-- --------------------------------------------------------

--
-- Table structure for table `viewtable`
--

CREATE TABLE `viewtable` (
  `id` int(11) NOT NULL,
  `Year` varchar(255) NOT NULL,
  `Semester` varchar(255) NOT NULL,
  `Batch` varchar(255) NOT NULL,
  `Group` varchar(255) NOT NULL,
  `Subgroup` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `viewtable`
--

INSERT INTO `viewtable` (`id`, `Year`, `Semester`, `Batch`, `Group`, `Subgroup`) VALUES
(15, '2018', 'hi', 'IT', '7', '7.2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academicdetails`
--
ALTER TABLE `academicdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `allocations`
--
ALTER TABLE `allocations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `building`
--
ALTER TABLE `building`
  ADD PRIMARY KEY (`buildingId`);

--
-- Indexes for table `building_allocations`
--
ALTER TABLE `building_allocations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryId`);

--
-- Indexes for table `center`
--
ALTER TABLE `center`
  ADD PRIMARY KEY (`centerId`);

--
-- Indexes for table `consecativetable`
--
ALTER TABLE `consecativetable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `consecutive_session`
--
ALTER TABLE `consecutive_session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`departmentId`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`facultyId`);

--
-- Indexes for table `generateid`
--
ALTER TABLE `generateid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groupdetails`
--
ALTER TABLE `groupdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`lecturerId`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`level`);

--
-- Indexes for table `managetags`
--
ALTER TABLE `managetags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nonoverlapping`
--
ALTER TABLE `nonoverlapping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parallelsession`
--
ALTER TABLE `parallelsession`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `programdetails`
--
ALTER TABLE `programdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservedtime`
--
ALTER TABLE `reservedtime`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`tfId`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`offeredYear`);

--
-- Indexes for table `tableviewint3`
--
ALTER TABLE `tableviewint3`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `viewtable`
--
ALTER TABLE `viewtable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academicdetails`
--
ALTER TABLE `academicdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `allocations`
--
ALTER TABLE `allocations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `building_allocations`
--
ALTER TABLE `building_allocations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `consecativetable`
--
ALTER TABLE `consecativetable`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `consecutive_session`
--
ALTER TABLE `consecutive_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `generateid`
--
ALTER TABLE `generateid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `groupdetails`
--
ALTER TABLE `groupdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `managetags`
--
ALTER TABLE `managetags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nonoverlapping`
--
ALTER TABLE `nonoverlapping`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `parallelsession`
--
ALTER TABLE `parallelsession`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `programdetails`
--
ALTER TABLE `programdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `reservedtime`
--
ALTER TABLE `reservedtime`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `tfId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tableviewint3`
--
ALTER TABLE `tableviewint3`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `viewtable`
--
ALTER TABLE `viewtable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;


