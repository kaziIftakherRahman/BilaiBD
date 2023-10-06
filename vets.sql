-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Oct 06, 2023 at 05:59 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `django`
--

-- --------------------------------------------------------

--
-- Table structure for table `vets`
--

CREATE TABLE `vets` (
  `id` int(11) NOT NULL,
  `vName` varchar(100) NOT NULL,
  `vAddress` varchar(300) NOT NULL,
  `vPhone` varchar(15) NOT NULL,
  `vLocation` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vets`
--

INSERT INTO `vets` (`id`, `vName`, `vAddress`, `vPhone`, `vLocation`) VALUES
(1, 'ACI Animal Health', 'Police Plaza Concord Shopping Mall, Dhaka 1212', '01324732792', 'Gulshan'),
(2, 'AKS Animal Care Centre', 'Diplomatic Zone, 13/1 Road No. 12, Dhaka 1212', '01770476749', 'Nodda kalachandpur'),
(3, 'All Creatures Pet Clinic', '26 Chamelibagh Shantinagar Rd, Dhaka 1217', '01712953333', 'Chamelibagh Shantinagar'),
(4, 'Animal Health Care Center', 'House 13, Line 1, 13', '01318862297', 'Hazaribagh'),
(5, 'AniMedCare', 'House 03, Floor 01, Road 08 Baridhara J Block, Dhaka 1212', '01894947411', 'Baridhara'),
(6, 'Bala G Pet Clinic', '364 DIT Rd, Dhaka 1219', '01881227204', 'Rampura'),
(7, 'Bd Pet Care', 'Ka-1/1 Bashundhara Road, Dhaka 1229 Bashundhara Road, Dhaka 1229 Opposite to jamuna future Park pocket Gate Al-Arabian Cake & Sweets r 3rd floor, Dhaka 1229', '01713267313', 'Bashundhara'),
(8, 'Biocare Pet Zone and Veterinary Clinic', 'House 404 ব্লক # এ, Dhaka 1219', '01779593933', 'Khilgaon'),
(9, 'Biswas Veterinary Clinic', 'TA - 131, 109 Gulshan Badda Link Rd, Dhaka 1212', '01322581020', 'Badda'),
(10, 'Care & Cure Veterinary Clinic', '28 Rd No. 7, Dhaka 1205', '01551807384', 'Dhanmondi'),
(11, 'Care For Paws', 'Moneshwor Rd, House no : 68/3C, Jigatola Road, Dhaka 1209', '01635817270', 'Jigatola Dhanmondi'),
(12, 'City Pet Care', 'R98W+G7C, Matikata Rd, Dhaka', '01779749033', 'Mirpur'),
(13, 'Companion Care & Food Accessories', 'GP,E, 124 Wireless Gate Rd, Dhaka 1212', '01774398004', 'Mohakhali'),
(14, 'Dada Pet Care ( Dr. Gopal Chandra Das)', 'Dhaka 1216', '01644983713', 'Mirpur'),
(15, 'Dhaka Pet Clinic', 'Ground floor, 9, 2 Nawab St, Dhaka 1203', '01886921867', 'Wari'),
(16, 'Doctors Pet Care', 'Block D, 2/1 Rd 1, Dhaka', '01774795970', 'Mirpur'),
(17, 'Dr. Imran Pet Care', 'Boishakhi Sarani, 134A Gulshan Badda Link Rd, Dhaka 1212', '01849583864', 'Gulshan Badda'),
(18, 'Dr. MD. Abul Kalam Azads Prani chikitsa kendro', 'Nasirabad Uttar para, nearby bridge, ward no 75, khilgaon, Dhaka 1219', '01819043941', 'khilgaon'),
(19, 'Dr. Mozahid Veterinary Clinic', 'D-7 South, Dhaka 1219', '01716297665', 'South Banasree'),
(20, 'Dr. Sagirs Pet Clinic', 'Lalmatia, House # 3/2 Block No. D, Dhaka 1207', '01912251312', 'Lalmatia'),
(21, 'Dr. Sharbaris Pet Care', '496 Lane - 9, Dhaka', '01722926032', 'DOHS baridhara'),
(22, 'Dr.Anawars Pet Care', 'House#18 Road#06, Dhaka 1229', '01723256771', 'Nikunja kurmitola'),
(23, 'Elite Pet Care', 'House-72 Rd No 11, Dhaka 1230', '01818417804', 'Uttra'),
(24, 'Evergreen Pet Care', 'H#53, R#12, Sec#13, Dhaka 1230', '01716535822', 'Uttra'),
(25, 'For pets Care Veterinary Clinic', '68/3c, 1209 Moneshwar Rd, Dhaka 1209', '01635817270', 'Moneshwar road, Dhanmondi, Pilkhana, Hazaribagh'),
(26, 'Gulshan Pet Clinic', '4,5, DCC Super Market, Gulshan-2, Dhaka 1212', '01715078434', 'Gulshan'),
(27, 'Gulshan Pet Clinic (Madani Avenue Branch)', '34 Madani Avenue, 100 feet road, Dhaka 1212', '01625235662', 'Gulshan'),
(28, 'Healers Pet Clinic', 'House-708 W Nakhalpara Rd, Dhaka 1215', '01886880825', 'Nakhalpara'),
(29, 'Jatrabari Pet Care and Cure Center', 'Gate Number- 2, Dhaka', '01711364651', 'Jatrabari'),
(30, 'Kholapara Animals Pharmacy', 'QF2M+3QG, Thulthuia Bazar, Demra, Dhaka 1360', '01811373343', 'Demra'),
(31, 'KittyPups', 'Basundhara main road,Ground floor, 1229', '01767675206', 'Basundhara'),
(32, 'LD Veterinary Hospital', '15 Sonargaon Janapath, Dhaka 1230', '01733339597', 'Sonargaon Janapath Uttara'),
(33, 'Mew Care Animal Clinic', 'PF49+66F, Rahmotpur-Bainarbag Rd, Dhaka', '01778109989', 'Matuail Shantibagh'),
(34, 'Mirpur Pet Animal Clinic', 'House-04 (Ground Floor), Road-01, Mirpur 12, Dhaka', '01320823299', 'Mirpur'),
(35, 'MR Veterinary Clinic', '126/6 Patwari Goli Chowrasta, Dhaka 1214', '01521489206', 'Shabujbag'),
(36, 'Mr. Vet', '5/15, Block-C Tajmahal Rd, Dhaka 1207', '01723649754', 'Mohammadpur'),
(37, 'Naf Veterinary Hospital (Pvt.)', 'P8JM+3M2, Yusuf Khan Plaza, Atibazar, Keraniganj, Dhaka 1312', '01712694788', 'Keraniganj'),
(38, 'Narayanganj Veterinary clinic', 'JFQW+F45, Dhaka - Narayanganj Rd, Narayanganj', '01712019116', 'Narayanganj'),
(39, 'PAW Life Care Lalmatia', '1/12, Dhaka 1207', '01909617994', 'Lalmatia'),
(40, 'PAW Life Care Mirpur', '80 Commercial Plot, Zoo Road, Dhaka 1216', '01310336835', 'Mirpur'),
(41, 'Pet And Bird Care', 'Block- A,Location: House- 13/14, Lane- 1, Mirpur 6, Dhaka 1216', '01701073107', 'Mirpur'),
(42, 'Pet Care', 'S Paikpara Rd, Dhaka', '01819263621', 'Paikpara'),
(43, 'Pet Care & Vet Point, Mirpur', 'Lift-2 House-13/14, Block-D, Avenue-2, Mirpur Ceramic Rd, Dhaka 1216', '01727014209', 'Mirpur'),
(44, 'Pet Care Clinic (Pet Care Zone)', 'Q9J4+XP4, Mirpur Rd, Dhaka', '01703449996', 'Mirpur'),
(45, 'Pet Cure Point & Orthopaedics Center', '741, Block- A Comilla Hotel Mor, Dhaka 1219', '01725808534', 'Khilgaon'),
(46, 'Pet Doctor', 'House#49, Dhaka Vets Chamber, Road#13, Dhaka 1229', '01731492093', 'Nikunja, kurmitola'),
(47, 'Pet Doctor Robi', '5/15 Block- C, Tajmahal Road, (West Side of Dhaka Residential Model College, Dhaka 1207', '01723649754', 'Mohammadpur'),
(48, 'Pet Expert Dhaka', 'house no 128 Road No. 04, Dhaka', '01747150063', 'Dhanmondi'),
(49, 'Pet Heaven Veterinary Clinic', 'Q9W7+HRC, Dhaka', '01944370090', 'Monipur'),
(50, 'Pet Vet Dr. Sujan', '1/1 (E) (1st Floor), C Block, Lalmatia, (Near Dhanmondi 27). ( Just Behind Genetic Plaza; Titas Confectionery Building), Dhaka 1207', '01777516183', 'Lalmatia'),
(51, 'Pets Care Clinic & Veterinary Hospital', 'Block B House, 17 Lane 2, Dhaka 1216', '01767163050', 'Mirpur'),
(52, 'Pets Doctor & Care', 'RC6F+Q42, Bashundhara Rd, Dhaka 1229', '01914528629', 'Bashundhara'),
(53, 'Prani Shastho Sheba Kendro', '214-215, Prani Sastho Seba Kendro, Katabon, Dhaka University Market, Dhaka 1000', '01841654881', 'Katabon'),
(54, 'Pranicool Animal Wellness Center', '205, 1 Bir Uttam Mir Shawkat Sarak, Dhaka 1208', '01329666431', 'Gulshan'),
(55, 'Rampura Pet Hospital', '363 DIT Rd, Dhaka 1219', '01881227204', 'Rampura'),
(56, 'RobinHood Care - Animal Clinic', 'Khilgaon, Dhaka', '01616737283', 'Khilgaon'),
(57, 'Siamak Pet Clinic', 'House-56 Road-9/B, Dhaka 1230', '01711561155', 'Uttara'),
(58, 'Teaching & Training Pet Hospital and Research Center', 'Plot 5B, Road 114, Dhaka', '01960136749', 'Purbacahal'),
(60, 'The Pet Vet', 'Ta 173/2 Lake view road, Godara ghat to Hatirjheel Road, Dhaka 1212', '01785636036', 'Hatirjheel'),
(61, 'TnT VetCare', '10 Tala market (Estern Banbithi shopping Complex Shop # G-23, Ground Floor, Khilgaon South, Dhaka 1219', '01711781052', 'Khilgaon South'),
(62, 'Vet Abdullah Mujahid', '68, Harirampur, Golartek Mosque Rd, Dhaka 1216', '01715728760', 'Harirampur'),
(63, 'Vet and Pet Care (VNPC)', '1/1 (E), Block.-C, Lalmatia, Behind Genetic Plaza at Dhanmondi 27, 1st floor of Titas Confectionery, Dhaka 1207', '01674173844', 'Lalmatia'),
(64, 'Vet Rx Pet Health Center', ' 210, Kataban Market, 2nd floor, room no. 210, kataban market(university market), opposit of Top 10, 1215', '01724017240', 'Kataban'),
(65, 'Vet sharif(DVM) pet care', 'House#73, Road#48, Hatim Bagh,Girls school road, Dakkhinkhan, Uttara, Dhaka, Opposite to Bank colony, Dhaka 1230', '01406384738', 'Uttara'),
(66, 'Veterinary Specialized Hospital & Diagnostic Center', 'House-47 Road-2, Dhaka 1230', '01305843505', 'Uttara'),
(67, 'VetSheba-Banasree Pet Clinic', 'house number 10, Road No. 2', '01558624491', 'Banasree'),
(68, 'উপজেলা প্রাণিসম্পদ দপ্তর এবং ভেটেরিনারি হাসপাতাল', 'A-1, N5, Savar 1340', '01715111417', 'Savar'),
(69, 'Kazi Bhai', 'SIU', 'TEXT', 'SIUUUUUUUUUUUUUUUUUU');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `vets`
--
ALTER TABLE `vets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `vName` (`vName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `vets`
--
ALTER TABLE `vets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
