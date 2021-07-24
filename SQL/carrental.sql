-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2021 at 09:27 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2017-06-18 12:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `BookingNumber` bigint(12) DEFAULT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `BookingNumber`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`, `LastUpdationDate`) VALUES
(3, 41563, 'piyush@gmail.com', 9, '2021-01-01', '2021-01-11', 'I want to rent a Car.', 1, '2020-12-22 06:04:45', '2021-04-12 07:11:42');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Maruti', '2017-06-18 16:24:34', '2017-06-19 06:42:23'),
(2, 'BMW', '2017-06-18 16:24:50', NULL),
(3, 'Audi', '2017-06-18 16:25:03', NULL),
(4, 'Nissan', '2017-06-18 16:25:13', NULL),
(5, 'Toyota', '2017-06-18 16:25:24', NULL),
(7, 'Volkswagon', '2017-06-19 06:22:13', '2020-07-07 14:14:09'),
(8, 'Hyundai', '2020-12-21 18:30:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Trinity Institute of Professional Studies, Dwarka sec-9', 'contact@carrental.com', '7982868648');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Kunal ', 'kunal@gmail.com', '7977779798', 'I want to know you brach in Chandigarh?', '2020-07-07 09:34:51', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>Welcome to Yahoo! India. 1Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <A href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</A>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>'),
(2, 'Privacy Policy', 'privacy', '										<h1 style=\"text-align: left; -webkit-tap-highlight-color: rgba(243, 113, 33, 0); padding: 0px; font-weight: 700; color: rgb(31, 31, 31); margin-top: 0px; margin-bottom: 0.705882rem; font-size: 1.58824em; line-height: 1.22222; font-family: Roboto, Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">Unified Privacy Statement</h1><p style=\"text-align: left; -webkit-tap-highlight-color: rgba(243, 113, 33, 0); padding: 0px; margin-bottom: 0px; font-size: 17px; line-height: 1.41176; color: rgb(97, 97, 97); font-family: Roboto, Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">Last Updated: August 21st 2020</p><p style=\"text-align: left; -webkit-tap-highlight-color: rgba(243, 113, 33, 0); padding: 0px; margin-top: 0.705882em; margin-bottom: 0px; font-size: 17px; line-height: 1.41176; color: rgb(97, 97, 97); font-family: Roboto, Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">CarRentals.com, part of the&nbsp;<a href=\"https://www.expediagroup.com/expedia-brands/\" style=\"-webkit-tap-highlight-color: rgba(243, 113, 33, 0); padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(243, 113, 33);\">Expedia Group</a>, (“we” or “us”) values you as our customer and recognizes that privacy is important to you. This Privacy Statement explains how we collect, use, and disclose data when you use our platform and associated services, and tells you how to contact us.</p><h2 style=\"text-align: left; -webkit-tap-highlight-color: rgba(243, 113, 33, 0); padding: 0px; font-weight: 700; color: rgb(31, 31, 31); margin: 1.41176em 0px 0.352941em; font-size: 1.35294em; line-height: 1.30435; font-family: Roboto, Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">Privacy Statement Summary</h2><p style=\"text-align: left; -webkit-tap-highlight-color: rgba(243, 113, 33, 0); padding: 0px; margin-bottom: 0px; font-size: 17px; line-height: 1.41176; color: rgb(97, 97, 97); font-family: Roboto, Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">This is a summary of our Privacy Statement. To review our Privacy Statement in full, please click&nbsp;<a href=\"https://www.carrentals.com/cr-privacy-policy#privacystatement\" style=\"-webkit-tap-highlight-color: rgba(243, 113, 33, 0); padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(243, 113, 33);\">here</a>, or scroll down.</p><ol style=\"-webkit-tap-highlight-color: rgba(243, 113, 33, 0); padding: 0px 0px 0px 1.41176em; margin: 0.705882em 0px 0px; color: rgb(97, 97, 97); font-family: Roboto, Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 17px;\"><li style=\"-webkit-tap-highlight-color: rgba(243, 113, 33, 0); padding-bottom: 0.461538em;\"><div style=\"text-align: left;\"><span style=\"font-weight: 700;\">What does this Privacy Statement cover?</span></div><div style=\"text-align: left;\">This Privacy Statement is designed to describe:</div><ul style=\"-webkit-tap-highlight-color: rgba(243, 113, 33, 0); padding-left: 1.41176em; list-style-type: disc; margin: 0.705882em;\"><li style=\"text-align: left; -webkit-tap-highlight-color: rgba(243, 113, 33, 0); padding-bottom: 0.461538em;\">How and what type of personal information we collect and use</li><li style=\"text-align: left; -webkit-tap-highlight-color: rgba(243, 113, 33, 0); padding-bottom: 0.461538em;\">When and with whom we share your personal information</li><li style=\"text-align: left; -webkit-tap-highlight-color: rgba(243, 113, 33, 0); padding-bottom: 0.461538em;\">What choices you can make about how we collect, use, and share your personal information</li></ul></li><li style=\"-webkit-tap-highlight-color: rgba(243, 113, 33, 0); padding-bottom: 0.461538em;\"><div style=\"text-align: left;\"><span style=\"font-weight: 700;\">What personal information do we collect and use, and how do we collect it?</span></div><div style=\"text-align: left;\">We collect personal information when:</div><ul style=\"-webkit-tap-highlight-color: rgba(243, 113, 33, 0); padding-left: 1.41176em; list-style-type: disc; margin: 0.705882em;\"><li style=\"text-align: left; -webkit-tap-highlight-color: rgba(243, 113, 33, 0); padding-bottom: 0.461538em;\">You give us the information</li><li style=\"text-align: left; -webkit-tap-highlight-color: rgba(243, 113, 33, 0); padding-bottom: 0.461538em;\">We collect it automatically</li><li style=\"text-align: left; -webkit-tap-highlight-color: rgba(243, 113, 33, 0); padding-bottom: 0.461538em;\">We receive it from others</li></ul><div style=\"text-align: left;\">When you create an account on one of our sites, sign up to receive offers or information, or make a booking using our platform, you give us your personal information. We also collect such information through automated technology such as cookies placed on your browser, with your consent where applicable, when you visit our sites or download and use our Apps. We also receive information from affiliated companies within Expedia Group, as well as business partners and other third-parties, which help us improve our platform and associated tools and services, update and maintain accurate records, potentially detect and investigate fraud, and more effectively market our services.</div></li><li style=\"-webkit-tap-highlight-color: rgba(243, 113, 33, 0); padding-bottom: 0.461538em;\"><div style=\"text-align: left;\"><span style=\"font-weight: 700;\">How is your personal information shared?</span></div><div style=\"text-align: left;\">Your personal information may be shared to help you book your travel and/or vacation, assist with your travel and/or vacation stay, communicate with you (including when we send information on products and services or enable you to communicate with travel providers and/or property owners), and comply with the law. The full Privacy Statement details how personal information is shared.</div></li><li style=\"-webkit-tap-highlight-color: rgba(243, 113, 33, 0); padding-bottom: 0.461538em;\"><div style=\"text-align: left;\"><span style=\"font-weight: 700;\">What are your rights and choices?</span></div><div style=\"text-align: left;\">You can exercise your data protection rights in various ways. For example, you can opt out of marketing by clicking the “unsubscribe” link in the emails, in your account as applicable, or contacting our customer service. Our Privacy Statement has&nbsp;<a href=\"https://www.carrentals.com/cr-privacy-policy#rights\" style=\"background: 0px 0px rgb(255, 255, 255); -webkit-tap-highlight-color: rgba(243, 113, 33, 0); padding: 0px; color: rgb(243, 113, 33);\">more information</a>&nbsp;about the options and data protection rights available to you.</div></li><li style=\"-webkit-tap-highlight-color: rgba(243, 113, 33, 0); padding-bottom: 0.461538em;\"><div style=\"text-align: left;\"><span style=\"font-weight: 700;\">How to contact us</span></div><div style=\"text-align: left;\">More information about our privacy practices is in our full Privacy Statement. You can also contact us as described below in the “<a href=\"https://www.carrentals.com/cr-privacy-policy#contact\" style=\"background: 0px 0px rgb(255, 255, 255); -webkit-tap-highlight-color: rgba(243, 113, 33, 0); padding: 0px; color: rgb(243, 113, 33);\">Contact Us</a>” section to ask questions about how we handle your personal information or make requests about your personal information.</div></li></ol>\r\n										'),
(3, 'About Us ', 'aboutus', '										<p><span style=\"font-size: large; font-family: georgia;\"><span style=\"color: rgb(32, 33, 34);\">CarRental,</span><span style=\"color: rgb(32, 33, 34);\">&nbsp;is an&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/India\" title=\"India\" style=\"color: rgb(11, 0, 128); background: none rgb(255, 255, 255);\">Indian</a><span style=\"color: rgb(32, 33, 34);\">&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Self-driving_car\" title=\"Self-driving car\" style=\"color: rgb(11, 0, 128); background: none rgb(255, 255, 255);\">self-drive</a><span style=\"color: rgb(32, 33, 34);\">&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Car_rental\" title=\"Car rental\" style=\"color: rgb(11, 0, 128); background: none rgb(255, 255, 255);\">car rental</a><span style=\"color: rgb(32, 33, 34);\">&nbsp;company, headquartered in Delhi</span><span style=\"color: rgb(32, 33, 34);\">, India</span><span style=\"color: rgb(32, 33, 34);\">. The company was founded in 2020 by Piyush and Mayank .</span><span style=\"color: rgb(32, 33, 34);\">As of April, the company operates in&nbsp; 3 cities across the country.</span></span></p><p><span style=\"color: rgb(32, 33, 34); font-size: large; font-family: georgia;\"><br></span></p><p><span style=\"font-size: large; font-family: georgia;\"><span style=\"color: rgb(32, 33, 34);\">CarRental faces competition from&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Revv_Cars\" title=\"Revv Cars\" style=\"color: rgb(11, 0, 128); background: none rgb(255, 255, 255);\">Revv Cars</a><span style=\"color: rgb(32, 33, 34);\">, ZoomCar, Drivezy,&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/MylesCar\" title=\"MylesCar\" style=\"color: rgb(11, 0, 128); background: none rgb(255, 255, 255);\">MylesCars</a><span style=\"color: rgb(32, 33, 34);\">&nbsp;(backed by&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Carzonrent\" title=\"Carzonrent\" style=\"color: rgb(11, 0, 128); background: none rgb(255, 255, 255);\">Carzonrent</a><span style=\"color: rgb(32, 33, 34);\">), Ola Drive by (</span><a href=\"https://en.wikipedia.org/wiki/Ola_Cabs\" title=\"Ola Cabs\" style=\"color: rgb(11, 0, 128); background: none rgb(255, 255, 255);\">Ola Cabs</a><span style=\"color: rgb(32, 33, 34);\">) and other similar car rental companies</span></span><span style=\"font-size: large; font-family: georgia;\"><span style=\"color: rgb(32, 33, 34);\"><br></span></span></p>\r\n										'),
(11, 'FAQs', 'faqs', '																														<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address------Test &nbsp; &nbsp;dsfdsfds</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(2, 'piyush@gmail.com', 'Great Service, but prices are a little high.', '2020-12-22 06:11:13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(2, 'Piyush', 'piyush@gmail.com', '86f500cd7b7d38e5d4ae6cde3920f589', '9910854067', '20-03-2000', 'G-8 Gali no-37 Upper Ground Floor, Mahendra Park.', 'Delhi', 'India', '2020-12-22 06:01:49', '2020-12-22 06:03:09');

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, 'Maruti Suzuki Wagon R', 1, 'Maruti Wagon R Latest Updates\r\n\r\nMaruti Suzuki has launched the BS6 Wagon R S-CNG in India. The LXI CNG and LXI (O) CNG variants now cost Rs 5.25 lakh and Rs 5.32 lakh respectively, up by Rs 19,000. Maruti claims a fuel economy of 32.52km per kg. The CNG Wagon R’s continuation in the BS6 era is part of the carmaker’s ‘Mission Green Million’ initiative announced at Auto Expo 2020.\r\n\r\nPreviously, the carmaker had updated the 1.0-litre powertrain to meet BS6 emission norms. It develops 68PS of power and 90Nm of torque, same as the BS4 unit. However, the updated motor now returns 21.79 kmpl, which is a little less than the BS4 unit’s 22.5kmpl claimed figure. Barring the CNG variants, the prices of the Wagon R 1.0-litre have been hiked by Rs 8,000.', 500, 'Petrol', 2019, 5, 'rear-3-4-left-589823254_930x620.jpg', 'tail-lamp-1666712219_930x620.jpg', 'rear-3-4-right-520328200_930x620.jpg', 'steering-close-up-1288209207_930x620.jpg', 'boot-with-standard-luggage-202327489_930x620.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 07:04:35', '2020-07-07 07:27:08'),
(2, 'BMW 5 Series', 2, 'BMW 5 Series price starts at ? 55.4 Lakh and goes upto ? 68.39 Lakh. The price of Petrol version for 5 Series ranges between ? 55.4 Lakh - ? 60.89 Lakh and the price of Diesel version for 5 Series ranges between ? 60.89 Lakh - ? 68.39 Lakh.', 1000, 'Petrol', 2018, 5, 'BMW-5-Series-Exterior-102005.jpg', 'BMW-5-Series-New-Exterior-89729.jpg', 'BMW-5-Series-Exterior-102006.jpg', 'BMW-5-Series-Interior-102021.jpg', 'BMW-5-Series-Interior-102022.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2020-07-07 07:12:02', '2020-07-07 07:27:44'),
(3, 'Audi Q8', 3, 'As per ARAI, the mileage of Q8 is 0 kmpl. Real mileage of the vehicle varies depending upon the driving habits. City and highway mileage figures also vary depending upon the road conditions.', 3000, 'Petrol', 2017, 5, 'audi-q8-front-view4.jpg', '1920x1080_MTC_XL_framed_Audi-Odessa-Armaturen_Spiegelung_CC_v05.jpg', 'audi1.jpg', '1audiq8.jpg', 'audi-q8-front-view4.jpeg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 07:19:21', '2020-07-07 07:28:02'),
(4, 'Nissan Kicks', 4, 'Latest Update: Nissan has launched the Kicks 2020 with a new turbocharged petrol engine. You can read more about it here.\r\n\r\nNissan Kicks Price and Variants: The Kicks is available in four variants: XL, XV, XV Premium, and XV Premium(O).', 800, 'Petrol', 2020, 5, 'front-left-side-47.jpg', 'kicksmodelimage.jpg', 'download.jpg', 'kicksmodelimage.jpg', '', 1, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, '2020-07-07 07:25:28', NULL),
(5, 'Nissan GT-R', 4, ' The GT-R packs a 3.8-litre V6 twin-turbocharged petrol, which puts out 570PS of max power at 6800rpm and 637Nm of peak torque. The engine is mated to a 6-speed dual-clutch transmission in an all-wheel-drive setup. The 2+2 seater GT-R sprints from 0-100kmph in less than 3', 2000, 'Petrol', 2019, 5, 'Nissan-GTR-Right-Front-Three-Quarter-84895.jpg', 'Best-Nissan-Cars-in-India-New-and-Used-1.jpg', '2bb3bc938e734f462e45ed83be05165d.jpg', '2020-nissan-gtr-rakuda-tan-semi-aniline-leather-interior.jpg', 'images.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 07:34:17', NULL),
(6, 'Nissan Sunny 2020', 4, 'Value for money product and it was so good It is more spacious than other sedans It looks like a luxurious car.', 400, 'CNG', 2018, 5, 'Nissan-Sunny-Right-Front-Three-Quarter-48975_ol.jpg', 'images (1).jpg', 'Nissan-Sunny-Interior-114977.jpg', 'nissan-sunny-8a29f53-500x375.jpg', 'new-nissan-sunny-photo.jpg', 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 09:12:49', NULL),
(7, 'Toyota Fortuner', 5, 'Toyota Fortuner Features: It is a premium seven-seater SUV loaded with features such as LED projector headlamps with LED DRLs, LED fog lamp, and power-adjustable and foldable ORVMs. Inside, the Fortuner offers features such as power-adjustable driver seat, automatic climate control, push-button stop/start, and cruise control.\r\n\r\nToyota Fortuner Safety Features: The Toyota Fortuner gets seven airbags, hill assist control, vehicle stability control with brake assist, and ABS with EBD.', 3000, 'Petrol', 2020, 5, '2015_Toyota_Fortuner_(New_Zealand).jpg', 'toyota-fortuner-legender-rear-quarters-6e57.jpg', 'zw-toyota-fortuner-2020-2.jpg', 'download (1).jpg', '', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 1, 1, 1, '2020-07-07 09:17:46', NULL),
(8, 'Maruti Suzuki Vitara Brezza', 1, 'The new Vitara Brezza is a well-rounded package that is feature-loaded and offers good drivability. And it is backed by Maruti’s vast service network, which ensures a peace of mind to customers. The petrol motor could have been more refined and offered more pep.', 600, 'Petrol', 2018, 5, 'marutisuzuki-vitara-brezza-right-front-three-quarter3.jpg', 'marutisuzuki-vitara-brezza-rear-view37.jpg', 'marutisuzuki-vitara-brezza-dashboard10.jpg', 'marutisuzuki-vitara-brezza-boot-space59.jpg', 'marutisuzuki-vitara-brezza-boot-space28.jpg', NULL, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, '2020-07-07 09:23:11', NULL),
(9, 'Hyundai Venue', 8, 'Hyundai Venue, the compact sub-4 metre SUV has arrived in India at a lucrative price tag. The vehicle is available in 13 variants across four trims, seven colours and with three engine options. The compact SUV competes against the likes of Ford EcoSport, Tata Nexon, Maruti Suzuki Vitara Brezza and the Honda WR-V in the sub-4 SUV segment.', 1200, 'Petrol', 2019, 5, 'V1.PNG', 'V2.PNG', 'V3.PNG', 'V4.PNG', 'V5.PNG', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, 1, '2020-12-22 05:57:00', NULL),
(10, 'Maruti Suzuki Baleno', 1, 'Maruti Suzuki Baleno gets a mid-life update with fresh set of cosmetic and added features inside the cabin. The vehicle is available in four trims – Sigma, Delta, Zeta and Alpha. The vehicle is available in petrol and diesel engine options. The vehicle is available in six colour options – pearl artic white, premium silver, nexa blue, autumn orange, phoenix red and magma grey.', 900, 'Diesel', 2018, 5, 'B1.PNG', 'B2.PNG', 'B3.PNG', 'B4.PNG', 'B5.PNG', 1, 1, NULL, 1, 1, 1, 1, 1, NULL, 1, NULL, NULL, '2020-12-22 05:58:42', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
