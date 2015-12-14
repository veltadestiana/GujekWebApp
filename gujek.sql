-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Dec 14, 2015 at 07:13 AM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `gujek`
--

-- --------------------------------------------------------

--
-- Table structure for table `ANALYST`
--

CREATE TABLE `ANALYST` (
  `ID_Analyst` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ANALYST`
--

INSERT INTO `ANALYST` (`ID_Analyst`) VALUES
('817515441'),
('901393998');

-- --------------------------------------------------------

--
-- Table structure for table `APPLICATION`
--

CREATE TABLE `APPLICATION` (
  `Version_Application` char(10) NOT NULL,
  `Date_Application` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `APPLICATION`
--

INSERT INTO `APPLICATION` (`Version_Application`, `Date_Application`) VALUES
('ver 1.3', '2014-12-12'),
('ver 1.4.1', '2015-04-25');

-- --------------------------------------------------------

--
-- Table structure for table `APPLICATION_DESIGNER`
--

CREATE TABLE `APPLICATION_DESIGNER` (
  `ID_AppDesign` char(9) NOT NULL,
  `Education` varchar(20) DEFAULT NULL,
  `Email_AppDesign` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `APPLICATION_DESIGNER`
--

INSERT INTO `APPLICATION_DESIGNER` (`ID_AppDesign`, `Education`, `Email_AppDesign`) VALUES
('381244202', 'Universitas Indonesi', 'codinggod@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `APP_FEEDBACK`
--

CREATE TABLE `APP_FEEDBACK` (
  `Customer_ID` char(9) NOT NULL,
  `App_Version` char(10) NOT NULL,
  `Date_Feedback` date DEFAULT NULL,
  `Rating_Feedback` int(1) DEFAULT NULL,
  `Comment_Feedback` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `APP_FEEDBACK`
--

INSERT INTO `APP_FEEDBACK` (`Customer_ID`, `App_Version`, `Date_Feedback`, `Rating_Feedback`, `Comment_Feedback`) VALUES
('437583839', 'ver 1.3', '2014-12-20', 4, 'Lemot Appnya, otherwise bagus'),
('716636448', 'ver 1.4.1', '2015-04-27', 4, 'Great app, response cepet');

-- --------------------------------------------------------

--
-- Table structure for table `APP_RELEASE`
--

CREATE TABLE `APP_RELEASE` (
  `App_Version` varchar(10) NOT NULL DEFAULT '',
  `Design_ID` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `APP_RELEASE`
--

INSERT INTO `APP_RELEASE` (`App_Version`, `Design_ID`) VALUES
('ver 1.3', 901393998),
('ver 1.4.1', 817515441);

-- --------------------------------------------------------

--
-- Table structure for table `CUSTOMER`
--

CREATE TABLE `CUSTOMER` (
  `ID_Customer` char(9) NOT NULL,
  `Name_Customer` varchar(30) DEFAULT NULL,
  `Email_Customer` varchar(30) NOT NULL,
  `Uname_Customer` varchar(15) NOT NULL,
  `PassW_Customer` varchar(15) NOT NULL,
  `Phone_Customer` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CUSTOMER`
--

INSERT INTO `CUSTOMER` (`ID_Customer`, `Name_Customer`, `Email_Customer`, `Uname_Customer`, `PassW_Customer`, `Phone_Customer`) VALUES
('159688813', 'Kusuma Darma', 'kesemek@live.com', 'kuskus29', 'gombal', '081247789357'),
('211588953', 'Putra Eka', 'namapasaran@hotmail.com', 'ekaekisilang', 'tanggallahir', '088123494953'),
('437583839', 'Yuda Iman', 'masteryoda@ymail.com', 'yudadongs', 'yudaganteng', '083429595742'),
('716636448', 'Cahya Sukarno', 'sinardunia@gmail.com', 'soe_karno', 'passw0rd', '081529520403');

-- --------------------------------------------------------

--
-- Table structure for table `DRIVER`
--

CREATE TABLE `DRIVER` (
  `ID_Driver` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DRIVER`
--

INSERT INTO `DRIVER` (`ID_Driver`) VALUES
('494389315'),
('522152749'),
('751635819'),
('973622310');

-- --------------------------------------------------------

--
-- Table structure for table `EMPLOYEE`
--

CREATE TABLE `EMPLOYEE` (
  `ID_Empl` char(9) NOT NULL,
  `Super_ID` char(9) DEFAULT NULL,
  `Name_Empl` varchar(15) NOT NULL,
  `DoB_Empl` date DEFAULT NULL,
  `Gender_Empl` char(1) DEFAULT NULL,
  `Address_Empl` varchar(50) DEFAULT NULL,
  `Phone_Empl` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EMPLOYEE`
--

INSERT INTO `EMPLOYEE` (`ID_Empl`, `Super_ID`, `Name_Empl`, `DoB_Empl`, `Gender_Empl`, `Address_Empl`, `Phone_Empl`) VALUES
('113865205', '663732870', 'Adi Cahaya', '1962-12-03', 'M', '8999 Woodland Drive\nOmaha, NE 68107', '0812345678910'),
('381244202', '630031439', 'Bambang Wibawa', '1988-08-24', 'M', '1097 Clay Street\nSolon, OH 44139', '0821696966643'),
('494389315', '899174063', 'Aditya Yuniar', '1974-05-09', 'M', '3952 Cemetery Road\nRidgecrest, CA 93555', '0857723629452'),
('522152749', '973622310', 'Iskandar Setiaw', '1969-04-15', 'M', '920 Elizabeth Street\nGrand Blanc, MI 48439', '0821339902134'),
('675465875', '994846269', 'Thomas Tanjung', '1966-05-03', 'M', '    4234 Route 10\n    New Kensington, PA 15068', '0851285923042'),
('751635819', '918703849', 'Surya Dian', '1985-11-12', 'F', '7077 Arch Street\nMenasha, WI 54952', '0813986457234'),
('779129457', '165130241', 'Eko Surya ', '1964-05-10', 'M', '8581 Madison Street\nHamtramck, MI 48212', '0837373737373'),
('817515441', '163986935', 'Budiono Liang', '1978-01-12', 'M', '843 Pleasant Street\nLiverpool, NY 13090', '0812200550005'),
('901393998', '261619297', 'Sriningsih', '1986-08-17', 'F', '33 Main Street\nRomeoville, IL 60446', '0837567923913'),
('973622310', '650305191', 'Cyril Amrullah ', '1969-09-06', 'M', '861 High Street\nFreeport, NY 11520', '0816969696969'),
('ID_Empl', 'Super_ID', 'Name_Empl', '0000-00-00', 'G', 'Address_Empl', 'Phone_Empl');

-- --------------------------------------------------------

--
-- Table structure for table `RESTAURANT`
--

CREATE TABLE `RESTAURANT` (
  `Name_Restaurant` varchar(20) NOT NULL,
  `Menu_Restaurant` varchar(200) DEFAULT NULL,
  `Price_Restaurant` varchar(100) DEFAULT NULL,
  `Address_Restaurant` varchar(100) DEFAULT NULL,
  `Phone_Restaurant` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `RESTAURANT`
--

INSERT INTO `RESTAURANT` (`Name_Restaurant`, `Menu_Restaurant`, `Price_Restaurant`, `Address_Restaurant`, `Phone_Restaurant`) VALUES
('Takarajima', 'Sushi Set 1', 'Rp 80,000', 'Jalan Margonda Raya, Depok', '185738394012');

-- --------------------------------------------------------

--
-- Table structure for table `SOFTWARE_ENG`
--

CREATE TABLE `SOFTWARE_ENG` (
  `ID_SWeng` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SOFTWARE_ENG`
--

INSERT INTO `SOFTWARE_ENG` (`ID_SWeng`) VALUES
('381244202'),
('675465875');

-- --------------------------------------------------------

--
-- Table structure for table `SUPERVISOR`
--

CREATE TABLE `SUPERVISOR` (
  `ID_Super` char(9) NOT NULL,
  `Email_Super` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SUPERVISOR`
--

INSERT INTO `SUPERVISOR` (`ID_Super`, `Email_Super`) VALUES
('113865205', 'adicahya@live.com'),
('779129457', 'ekokingkong@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `TRANSACTION`
--

CREATE TABLE `TRANSACTION` (
  `No_Transaction` char(9) NOT NULL,
  `Driver_ID` char(9) NOT NULL,
  `Customer_ID` char(9) NOT NULL,
  `Time_Transaction` char(17) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `TRANSACTION`
--

INSERT INTO `TRANSACTION` (`No_Transaction`, `Driver_ID`, `Customer_ID`, `Time_Transaction`) VALUES
('179077926', '751635819', '159688813', '04:20'),
('397337566', '973622310', '437583839', '16:00'),
('417941907', '494389315', '716636448', '10:15'),
('524711558', '522152749', '211588953', '16:30');

-- --------------------------------------------------------

--
-- Table structure for table `TR_DELIVERY`
--

CREATE TABLE `TR_DELIVERY` (
  `D_Trans_No` char(9) NOT NULL,
  `D_Goods` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `TR_DELIVERY`
--

INSERT INTO `TR_DELIVERY` (`D_Trans_No`, `D_Goods`) VALUES
('397337566', 'Dokumen');

-- --------------------------------------------------------

--
-- Table structure for table `TR_FOOD`
--

CREATE TABLE `TR_FOOD` (
  `F_Trans_No` char(9) NOT NULL,
  `F_Rest_Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `TR_FOOD`
--

INSERT INTO `TR_FOOD` (`F_Trans_No`, `F_Rest_Name`) VALUES
('524711558', 'Takarajima');

-- --------------------------------------------------------

--
-- Table structure for table `TR_TRANSPORT`
--

CREATE TABLE `TR_TRANSPORT` (
  `T_Trans_No` char(9) NOT NULL,
  `T_Destination` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `TR_TRANSPORT`
--

INSERT INTO `TR_TRANSPORT` (`T_Trans_No`, `T_Destination`) VALUES
('179077926', 'Monas'),
('417941907', 'Margo City');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(5) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(35) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES
(1, 'superadmin', 'super@admin.com', '202cb962ac59075b964b07152d234b70'),
(2, 'admin', 'admin@admin.com', '5f4dcc3b5aa765d61d8327deb882cf99'),
(3, 'supervisor', 'supervisor@supervisor.com', 'ac43724f16e9241d990427ab7c8f4228');

-- --------------------------------------------------------

--
-- Table structure for table `VEHICLE`
--

CREATE TABLE `VEHICLE` (
  `License_Plate` char(9) NOT NULL,
  `Driver_ID` char(9) NOT NULL,
  `Veh_Type` varchar(15) DEFAULT NULL,
  `Veh_Years` char(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `VEHICLE`
--

INSERT INTO `VEHICLE` (`License_Plate`, `Driver_ID`, `Veh_Type`, `Veh_Years`) VALUES
('B  1  MS', '751635819', 'BMW S1000RR', '2012'),
('B  17  LY', '522152749', 'Suzuki Hayabusa', '2011'),
('B  2  DOI', '494389315', 'Ducati Desmosed', '2009'),
('B  47  MA', '973622310', 'MV Agusta Tambu', '2014');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ANALYST`
--
ALTER TABLE `ANALYST`
  ADD PRIMARY KEY (`ID_Analyst`);

--
-- Indexes for table `APPLICATION`
--
ALTER TABLE `APPLICATION`
  ADD PRIMARY KEY (`Version_Application`,`Date_Application`);

--
-- Indexes for table `APPLICATION_DESIGNER`
--
ALTER TABLE `APPLICATION_DESIGNER`
  ADD PRIMARY KEY (`ID_AppDesign`);

--
-- Indexes for table `APP_FEEDBACK`
--
ALTER TABLE `APP_FEEDBACK`
  ADD PRIMARY KEY (`Customer_ID`),
  ADD KEY `App_Version` (`App_Version`);

--
-- Indexes for table `APP_RELEASE`
--
ALTER TABLE `APP_RELEASE`
  ADD PRIMARY KEY (`App_Version`),
  ADD KEY `App_Version` (`App_Version`);

--
-- Indexes for table `CUSTOMER`
--
ALTER TABLE `CUSTOMER`
  ADD PRIMARY KEY (`ID_Customer`);

--
-- Indexes for table `DRIVER`
--
ALTER TABLE `DRIVER`
  ADD PRIMARY KEY (`ID_Driver`);

--
-- Indexes for table `EMPLOYEE`
--
ALTER TABLE `EMPLOYEE`
  ADD PRIMARY KEY (`ID_Empl`);

--
-- Indexes for table `RESTAURANT`
--
ALTER TABLE `RESTAURANT`
  ADD PRIMARY KEY (`Name_Restaurant`);

--
-- Indexes for table `SOFTWARE_ENG`
--
ALTER TABLE `SOFTWARE_ENG`
  ADD PRIMARY KEY (`ID_SWeng`);

--
-- Indexes for table `SUPERVISOR`
--
ALTER TABLE `SUPERVISOR`
  ADD PRIMARY KEY (`ID_Super`);

--
-- Indexes for table `TRANSACTION`
--
ALTER TABLE `TRANSACTION`
  ADD PRIMARY KEY (`No_Transaction`),
  ADD KEY `Driver_ID` (`Driver_ID`),
  ADD KEY `Customer_ID` (`Customer_ID`);

--
-- Indexes for table `TR_DELIVERY`
--
ALTER TABLE `TR_DELIVERY`
  ADD PRIMARY KEY (`D_Trans_No`);

--
-- Indexes for table `TR_FOOD`
--
ALTER TABLE `TR_FOOD`
  ADD PRIMARY KEY (`F_Trans_No`),
  ADD KEY `F_Rest_Name` (`F_Rest_Name`);

--
-- Indexes for table `TR_TRANSPORT`
--
ALTER TABLE `TR_TRANSPORT`
  ADD PRIMARY KEY (`T_Trans_No`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `VEHICLE`
--
ALTER TABLE `VEHICLE`
  ADD PRIMARY KEY (`License_Plate`,`Driver_ID`),
  ADD KEY `Driver_ID` (`Driver_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ANALYST`
--
ALTER TABLE `ANALYST`
  ADD CONSTRAINT `analyst_ibfk_1` FOREIGN KEY (`ID_Analyst`) REFERENCES `EMPLOYEE` (`ID_Empl`);

--
-- Constraints for table `APPLICATION_DESIGNER`
--
ALTER TABLE `APPLICATION_DESIGNER`
  ADD CONSTRAINT `application_designer_ibfk_1` FOREIGN KEY (`ID_AppDesign`) REFERENCES `EMPLOYEE` (`ID_Empl`);

--
-- Constraints for table `APP_FEEDBACK`
--
ALTER TABLE `APP_FEEDBACK`
  ADD CONSTRAINT `app_feedback_ibfk_1` FOREIGN KEY (`App_Version`) REFERENCES `APPLICATION` (`Version_Application`),
  ADD CONSTRAINT `app_feedback_ibfk_2` FOREIGN KEY (`Customer_ID`) REFERENCES `CUSTOMER` (`ID_Customer`);

--
-- Constraints for table `DRIVER`
--
ALTER TABLE `DRIVER`
  ADD CONSTRAINT `driver_ibfk_1` FOREIGN KEY (`ID_Driver`) REFERENCES `EMPLOYEE` (`ID_Empl`);

--
-- Constraints for table `SOFTWARE_ENG`
--
ALTER TABLE `SOFTWARE_ENG`
  ADD CONSTRAINT `software_eng_ibfk_1` FOREIGN KEY (`ID_SWeng`) REFERENCES `EMPLOYEE` (`ID_Empl`);

--
-- Constraints for table `SUPERVISOR`
--
ALTER TABLE `SUPERVISOR`
  ADD CONSTRAINT `supervisor_ibfk_1` FOREIGN KEY (`ID_Super`) REFERENCES `EMPLOYEE` (`ID_Empl`);

--
-- Constraints for table `TRANSACTION`
--
ALTER TABLE `TRANSACTION`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`Driver_ID`) REFERENCES `DRIVER` (`ID_Driver`),
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`Customer_ID`) REFERENCES `CUSTOMER` (`ID_Customer`);

--
-- Constraints for table `TR_DELIVERY`
--
ALTER TABLE `TR_DELIVERY`
  ADD CONSTRAINT `tr_delivery_ibfk_1` FOREIGN KEY (`D_Trans_No`) REFERENCES `TRANSACTION` (`No_Transaction`);

--
-- Constraints for table `TR_FOOD`
--
ALTER TABLE `TR_FOOD`
  ADD CONSTRAINT `tr_food_ibfk_1` FOREIGN KEY (`F_Trans_No`) REFERENCES `TRANSACTION` (`No_Transaction`),
  ADD CONSTRAINT `tr_food_ibfk_2` FOREIGN KEY (`F_Rest_Name`) REFERENCES `RESTAURANT` (`Name_Restaurant`);

--
-- Constraints for table `TR_TRANSPORT`
--
ALTER TABLE `TR_TRANSPORT`
  ADD CONSTRAINT `tr_transport_ibfk_1` FOREIGN KEY (`T_Trans_No`) REFERENCES `TRANSACTION` (`No_Transaction`);

--
-- Constraints for table `VEHICLE`
--
ALTER TABLE `VEHICLE`
  ADD CONSTRAINT `vehicle_ibfk_1` FOREIGN KEY (`Driver_ID`) REFERENCES `DRIVER` (`ID_Driver`);
