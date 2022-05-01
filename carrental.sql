-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2021 at 10:39 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

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
(1, 'admin', 'e00cf25ad42683b3df678c61f42c6bda', '2021-06-24 17:07:15');

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
(12, NULL, 'piyarpan@gmail.com', 22, '2021-06-12', '2021-06-14', 'Urgent', 1, '2021-06-11 08:13:06', '2021-06-11 08:15:10'),
(13, NULL, 'piyarpan@gmail.com', 20, '2021-06-15', '2021-06-17', 'trip', 2, '2021-06-11 08:17:21', '2021-06-11 08:17:32'),
(14, NULL, 'kanchan12@gmail.com', 21, '2021-06-18', '2021-06-21', 'Urgent\r\n', 1, '2021-06-17 12:47:20', '2021-06-17 12:49:16'),
(15, NULL, 'arun123@gmail.com', 22, '2021-06-22', '2021-06-30', 'Trip to Lumbini', 2, '2021-06-20 16:33:41', '2021-06-20 17:01:21'),
(16, NULL, 'arun123@gmail.com', 20, '2021-06-22', '2021-06-29', 'Trip to Upper Mustang', 0, '2021-06-21 18:06:36', NULL);

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
(12, 'Kia', '2021-06-03 13:35:24', NULL),
(13, 'Suzuki', '2021-06-03 13:35:27', NULL),
(14, 'Honda', '2021-06-08 12:21:54', NULL),
(15, 'Land Rover', '2021-06-08 12:21:58', NULL),
(16, 'Hyundai', '2021-06-08 12:22:01', NULL),
(17, 'BMW', '2021-06-08 12:22:03', NULL),
(18, 'Nissan', '2021-06-24 16:59:14', NULL),
(19, 'Volkswagen', '2021-07-04 15:48:41', NULL);

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
(1, 'London Gally, Gairidhara, Kathmandu', 'hanglootech26@gmail.com', '9843126298');

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
(2, 'Jahnavi', 'jahnavi123@outlook.com', '8989898989', 'Can i get cars in baglung also?', '2021-06-02 04:57:18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(7, 'abhishek_dahal@outlook.com', '2021-06-24 17:12:04'),
(8, 'prajwaldc12@yahoo.com', '2021-06-24 17:12:17');

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
(3, 'piyarpan@gmail.com', 'I liked the serice.', '2021-06-01 17:25:11', 1),
(4, 'piyarpan@gmail.com', 'The web app eas very pleasing\r\n', '2021-06-01 17:25:29', 1),
(5, 'piyarpan@gmail.com', 'The web app eas very pleasing\r\n', '2021-06-01 17:26:38', NULL),
(6, 'arun123@gmail.com', 'I loved the customer service\r\n', '2021-06-02 04:53:11', 1),
(7, 'arun123@gmail.com', 'Good Job', '2021-06-02 04:53:20', 1),
(8, 'arun123@gmail.com', 'Good Job', '2021-06-02 04:53:36', NULL),
(9, 'piyarpan@gmail.com', 'Very pleasing UI and very easy to use', '2021-06-21 18:29:46', 1);

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
(3, 'Arun', 'arun123@gmail.com', '15fbed0db1646879db87fef9c52d18c4', '9851167412', '05/11/1980', 'Pulchowk, Chitwan, ', 'Narayani', 'Nepal', '2021-06-01 18:48:23', '2021-06-29 11:58:31'),
(5, 'Pushpa', 'piyapushpa@gmail.com', '5a00dd603ede958b6931edec61104511', '9851167410', '07/07/1980', 'Damauli', 'Damauli', 'Nepal', '2021-06-01 19:06:07', '2021-06-24 17:33:10'),
(7, 'Kanchan', 'kanchan12@gmail.com', 'e663763c7bae2122a07ceb8ea522313d', '9851167490', '20/05/1990', 'Jagati', 'Bhaktapur', 'Nepal', '2021-06-13 09:42:07', '2021-06-24 18:00:53'),
(9, 'Arpan', 'piyarpan@gmail.com', '0df1347a7b7cb08cc813802320aecdbc', '9843126245', NULL, NULL, NULL, NULL, '2021-06-21 18:11:30', '2021-06-29 11:31:18'),
(10, 'Sampat', 'sampat12@outlook.com', '51f9166e2ada5b2451f995095c6d472e', 'Dhakal', NULL, NULL, NULL, NULL, '2021-06-26 09:47:51', NULL),
(14, 'Prajwal DC', 'prajwal@gmail.com', 'fd03c078f77ca75d4d0ecfb534e0677a', '6666666666', NULL, NULL, NULL, NULL, '2021-06-29 11:34:01', NULL);

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
(20, 'Defender', 15, 'The Land Rover Defender (originally called simply Land Rover Ninety, and later called the Land Rover Ninety and Land Rover One Ten) is a British off-road vehicle. ... The original Defender is still being produced in developing countries despite the arrival of the Land Rover Defender (L663).', 15000, 'Diesel', 2020, 7, 'Land-Rover-Defender-90-2021_1.jpg', 'land_rover_defender_55.jpg', 'defender-interior-dashboard.jpeg', 'defender-interior-bootspace-rear-seat-folded.jpeg', '20210312083923_Land_Rover_Defender_110.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2021-06-09 10:51:51', '2021-07-04 15:42:06'),
(21, 'Swift', 13, 'The Petrol engine is 1197 cc . It is available with the Manual & Automatic transmission. Depending upon the variant and fuel type the Swift has a mileage of 23.2 to 23.76 kmpl. The Swift is a 5 seater and has length of 3845, width of 1735 and a wheelbase of 2450. Read More.', 4000, 'Petrol', 2020, 4, 'swift.jpg', 'maruti-suzuki-swift-nepal-interior-gadgetsgaadi.png', 'New-Suzuki-Swift-bootspace-e1482826191374.jpeg', '2021-Suzuki-Swift-facelift-Thailand-accessories-2.jpg', '', 1, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-06-09 10:52:56', '2021-07-04 15:42:18'),
(22, 'City', 14, 'Honda launched the new City in India a few months ago and its upscale design, levels of refinement and features on offer, were all one step above the outgoing model (which is still on sale). However, it continues to use the 1.5-litre petrol and diesel engines in India that we have grown accustomed to seeing under the bonnet of the City. There was an RS-spec version in Thailand that made use of a new 1.0-litre turbo-petrol engine, but it was quickly ruled out for India. Now, however, there’s a new powertrain that has us excited -- a hybrid.', 6000, 'Hybrid', 2021, 5, 'City-Hybrid-India.jpg', 'city-interior-steering-wheel.jpeg', 'Honda-City-2021-Specs-price-nepal-space-banner.jpg', 'main.orig.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-06-09 10:54:05', '2021-07-04 15:42:30'),
(23, 'Seltos', 12, 'The Kia Seltos has 1 Diesel Engine and 2 Petrol Engine on offer. The Diesel engine is 1493 cc while the Petrol engine is 1497 cc and 1353 cc . It is available with the Automatic & Manual transmission. ... The Seltos is a 5 seater and has length of 4315mm, width of 1800mm and a wheelbase of 2610mm.', 9000, 'Petrol', 2021, 5, 'seltos.jpg', 'seltos int.jpg', 'boot seltos.jpg', 'kia-seltos-front-running-shot-1566458712.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2021-06-24 17:06:27', '2021-07-04 15:42:44'),
(24, 'KONA', 16, 'The powertrain line-up for the new Kona reaches new heights in terms of performance and sustainability. Enhanced 48-volt mild hybrid powertrains help you lower your CO2 emissions and burn less fuel. The mild hybrid technology is applied to the 1.0-litre T-GDi petrol engine with 120 PS.', 8500, 'Electrical', 2020, 5, 'images.jfif', '2021-kona-ev-osev-0006-carplay_16-9.jfif', 'airbags-94.jpg', '2020-Hyundai-Kona-Electric.png', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-07-04 15:36:14', '2021-07-04 15:42:56'),
(25, 'I20', 16, 'The Hyundai i20 has 1 Diesel Engine and 2 Petrol Engine on offer. The Diesel engine is 1493 cc while the Petrol engine is 1197 cc and 998 cc . ... The i20 is a 5 seater and has length of 3995, width of 1775 and a wheelbase of 2580.', 4500, 'Petrol', 2019, 4, 'hyundai-i20-2021-606019.jpg', 'i20-3rd-generation-nepal-launch-2021-price-features.jpg', 'Hyundai-i20-2021-1600-32.jpg', 'Hyundai-i20-2021-1600-15.jpg', '', 1, 1, NULL, NULL, 1, 1, 1, 1, NULL, 1, 1, 1, '2021-07-04 15:38:57', '2021-07-04 15:43:10'),
(26, 'X1', 17, 'The BMW X1 is a five-seat SUV available in two trims: the front-wheel-drive sDrive28i or the all-wheel-drive xDrive28i. Both are powered by a turbocharged 2.0-liter four-cylinder engine (228 hp, 258 lb-ft) mated to an eight-speed automatic transmission.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 12000, 'Diesel', 2020, 5, 'bmw-x1.jpg', 'bmw-x1-dashboard63.jpeg', 'x1 engine.jpg', 'bootDimensions2 x1.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2021-07-04 15:41:55', NULL),
(27, 'Polo', 19, 'The Volkswagen Polo is a supermini car (B-segment) produced by the German car manufacturer Volkswagen since 1975. It is sold in Europe and other markets worldwide in hatchback, saloon and estate variants throughout its production run.', 5000, 'Petrol', 2019, 5, 'maxresdefault.jpg', 'Polo_SE_1.0TSI-17703.jpg', 'hqdefault.jpg', 'GF67BUO-used-VOLKSWAGEN-POLO-HATCHBACK-1.2-TSI-Match-Edition-5dr-petrol-WHITE-2017-XC-M-19.jpg', '', 1, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-07-04 15:49:40', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
