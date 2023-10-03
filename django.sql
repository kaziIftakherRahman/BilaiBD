-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3308
-- Generation Time: Oct 03, 2023 at 03:48 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

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
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$nY8wmEntNEHz6at00jCjSJ$3MJTui8pgoXkjbXdLmOlFG9EbsNH4rqjuU/mdbcHSI0=', '2023-10-02 17:00:47.898571', 0, 'kazi', '', '', '', 0, 1, '2023-09-23 16:22:50.261082'),
(2, 'pbkdf2_sha256$600000$9lImiLjMpSz02tzeWFxNwm$GDQNKcs2SWIQ2teJbs8oX8xDz8NudwuBbbqNK5Vq0dE=', '2023-09-23 17:24:06.092310', 0, 'ruqatzaman', '', '', '', 0, 1, '2023-09-23 17:01:29.086420'),
(3, 'pbkdf2_sha256$600000$dMK3wyxTJp3jYc9kpmce0s$NX9peHrjd0NWzM+4HMli3X3EhfCIZxLGItiAOkPSy6A=', '2023-10-03 04:24:28.779216', 0, 'saif', '', '', '', 0, 1, '2023-09-23 17:24:55.909917'),
(4, 'pbkdf2_sha256$600000$64LAwx3LPnfbzWYnKfgERa$M+HjrnENbagPFvZN/Rw8e+GxJWJmpsrl6ltxu7X2UjE=', '2023-09-24 09:05:50.121652', 0, 'qwerty', '', '', '', 0, 1, '2023-09-24 09:04:29.030599'),
(5, 'pbkdf2_sha256$600000$klBkaTrjBmj8ODvoHTottZ$mwwFwKPxR/outsg9ZQS6jGTYEsnspDB7N8MRCaRn5kk=', '2023-09-25 19:00:42.152665', 0, 'aaraf', '', '', '', 0, 1, '2023-09-25 19:00:29.102022'),
(6, 'pbkdf2_sha256$600000$7yAq76LPtCmSX6N7INjGNh$qswVdxYMPr1SAGhUicH+XNtUyZ4I2nSNRVnt1ZfjkgU=', '2023-10-01 09:50:22.694574', 0, 'arif', '', '', '', 0, 1, '2023-10-01 09:50:11.739459'),
(7, 'pbkdf2_sha256$600000$lfzyWy914rfykZ8QAKyaax$xXVAGe/kbAkeNMVK1ctxGuRb9ssTnve2nsKF76n3RQE=', '2023-10-03 04:55:52.954186', 1, 'itn', '', '', 'saif.hasan.3017@gmail.com', 1, 1, '2023-10-02 13:05:42.078892'),
(9, 'pbkdf2_sha256$600000$9OUvPt9sIW9NXihmhm0coi$R6FfFQ4m0StsClFD0C3lB047/Sq99aOECkytZi4bakc=', '2023-10-02 17:27:30.961059', 0, 'nafiz', '', '', '', 0, 1, '2023-10-02 17:21:18.686932'),
(10, 'pbkdf2_sha256$600000$cTmykiXSXEQDf3D5jlDHDL$SSNkL2h+x7fxj6bslPyPuVwed0+sZYK5p5RNB9kf/P4=', '2023-10-02 17:57:50.023060', 0, 'rashik', '', '', '', 0, 1, '2023-10-02 17:57:35.651301'),
(11, 'pbkdf2_sha256$600000$J5e8a6FHqPDw3bop911UsF$489lDlVbXboQMewWuUIf4xfTOz5BCF+y8VUCuVxXu9w=', '2023-10-02 18:20:26.899452', 0, 'adham', '', '', '', 0, 1, '2023-10-02 18:20:14.858209'),
(12, 'pbkdf2_sha256$600000$BVA1przujdvtLECTKeAzs1$xea/zjMUYvRannLJHScwIPbeNbPYnq5tYz0SckX8rO8=', '2023-10-03 03:43:53.516506', 0, 'asd123', '', '', '', 0, 1, '2023-10-03 03:43:52.751149'),
(13, 'pbkdf2_sha256$600000$R79ipYJO78TZvVHJxYpa2l$nq0oIZv2Z+/8OrBGPe5hnPo0PsiEjz7nVuczn9+ej+U=', '2023-10-03 03:52:37.828924', 0, 'sakif', '', '', '', 0, 1, '2023-10-03 03:52:11.361841'),
(14, 'pbkdf2_sha256$600000$SUytnJJMfuCF7pKvldYDG0$6wyPJpdiOfxhPwZ29RjRpW7E247M4H+U9X2uFr5MFTU=', '2023-10-03 04:24:42.392330', 0, 'moly', '', '', '', 0, 1, '2023-10-03 04:24:41.616685'),
(15, 'pbkdf2_sha256$600000$byDMZuGaH7klngDzTpMNet$apvJI6Ia92AibAOOP/eGN29L+2uWh30Fuz9smnGUWd4=', '2023-10-03 04:47:48.954687', 0, 'mosakif', '', '', '', 0, 1, '2023-10-03 04:47:08.450682');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-10-02 16:58:28.103756', '8', 'mike', 3, '', 4, 7);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-09-23 15:19:32.482818'),
(2, 'auth', '0001_initial', '2023-09-23 15:19:32.800958'),
(3, 'admin', '0001_initial', '2023-09-23 15:19:32.886086'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-09-23 15:19:32.892092'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-09-23 15:19:32.897096'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-09-23 15:19:32.943615'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-09-23 15:19:32.975572'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-09-23 15:19:32.990585'),
(9, 'auth', '0004_alter_user_username_opts', '2023-09-23 15:19:32.995590'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-09-23 15:19:33.032927'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-09-23 15:19:33.034929'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-09-23 15:19:33.040935'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-09-23 15:19:33.052946'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-09-23 15:19:33.066578'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-09-23 15:19:33.079590'),
(16, 'auth', '0011_update_proxy_permissions', '2023-09-23 15:19:33.085414'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-09-23 15:19:33.098425'),
(18, 'sessions', '0001_initial', '2023-09-23 15:19:33.121446');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('ptt9atu1qdhjxacjbmsl6cqz5hk1oy4t', '.eJxVjEEOwiAQRe_C2hAoDAWX7nsGMsOgVA0kpV0Z765NutDtf-_9l4i4rSVuPS9xZnEWRpx-N8L0yHUHfMd6azK1ui4zyV2RB-1yapyfl8P9OyjYy7ceOQE4MkQW9dV5m4IjUj6QG4MdLGRW4NBZ4KysCgMb0j4BKe11AhTvD91gN20:1qk6NU:RTeZieHH-SZCEglomqjvMcZ5MIhcn8v8mMwdnix2v-Y', '2023-10-07 17:25:12.264390');

-- --------------------------------------------------------

--
-- Table structure for table `vets`
--

CREATE TABLE `vets` (
  `vName` varchar(100) NOT NULL,
  `vAddress` varchar(300) NOT NULL,
  `vPhone` varchar(15) NOT NULL,
  `vLocation` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vets`
--

INSERT INTO `vets` (`vName`, `vAddress`, `vPhone`, `vLocation`) VALUES
('ACI Animal Health', 'Police Plaza Concord Shopping Mall, Dhaka 1212', '01324732792', 'Gulshan'),
('AKS Animal Care Centre', 'Diplomatic Zone, 13/1 Road No. 12, Dhaka 1212', '01770476749', 'Nodda kalachandpur'),
('All Creatures Pet Clinic', '26 Chamelibagh Shantinagar Rd, Dhaka 1217', '01712953333', 'Chamelibagh Shantinagar'),
('Animal Health Care Center', 'House 13, Line 1, 13', '01318862297', 'Hazaribagh'),
('AniMedCare', 'House 03, Floor 01, Road 08 Baridhara J Block, Dhaka 1212', '01894947411', 'Baridhara'),
('Bala G Pet Clinic', '364 DIT Rd, Dhaka 1219', '01881227204', 'Rampura'),
('Bd Pet Care', 'Ka-1/1 Bashundhara Road, Dhaka 1229 Bashundhara Road, Dhaka 1229 Opposite to jamuna future Park pocket Gate Al-Arabian Cake & Sweets r 3rd floor, Dhaka 1229', '01713267313', 'Bashundhara'),
('Biocare Pet Zone and Veterinary Clinic', 'House 404 ব্লক # এ, Dhaka 1219', '01779593933', 'Khilgaon'),
('Biswas Veterinary Clinic', 'TA - 131, 109 Gulshan Badda Link Rd, Dhaka 1212', '01322581020', 'Badda'),
('Care & Cure Veterinary Clinic', '28 Rd No. 7, Dhaka 1205', '01551807384', 'Dhanmondi'),
('Care For Paws', 'Moneshwor Rd, House no : 68/3C, Jigatola Road, Dhaka 1209', '01635817270', 'Jigatola Dhanmondi'),
('City Pet Care', 'R98W+G7C, Matikata Rd, Dhaka', '01779749033', 'Mirpur'),
('Companion Care & Food Accessories', 'GP,E, 124 Wireless Gate Rd, Dhaka 1212', '01774398004', 'Mohakhali'),
('Dada Pet Care ( Dr. Gopal Chandra Das)', 'Dhaka 1216', '01644983713', 'Mirpur'),
('Dhaka Pet Clinic', 'Ground floor, 9, 2 Nawab St, Dhaka 1203', '01886921867', 'Wari'),
('Doctors Pet Care', 'Block D, 2/1 Rd 1, Dhaka', '01774795970', 'Mirpur'),
('Dr. Imran Pet Care', 'Boishakhi Sarani, 134A Gulshan Badda Link Rd, Dhaka 1212', '01849583864', 'Gulshan Badda'),
('Dr. MD. Abul Kalam Azads Prani chikitsa kendro', 'Nasirabad Uttar para, nearby bridge, ward no 75, khilgaon, Dhaka 1219', '01819043941', 'khilgaon'),
('Dr. Mozahid Veterinary Clinic', 'D-7 South, Dhaka 1219', '01716297665', 'South Banasree'),
('Dr. Sagirs Pet Clinic', 'Lalmatia, House # 3/2 Block No. D, Dhaka 1207', '01912251312', 'Lalmatia'),
('Dr. Sharbaris Pet Care', '496 Lane - 9, Dhaka', '01722926032', 'DOHS baridhara'),
('Dr.Anawars Pet Care', 'House#18 Road#06, Dhaka 1229', '01723256771', 'Nikunja kurmitola'),
('Elite Pet Care', 'House-72 Rd No 11, Dhaka 1230', '01818417804', 'Uttra'),
('Evergreen Pet Care', 'H#53, R#12, Sec#13, Dhaka 1230', '01716535822', 'Uttra'),
('For pets Care Veterinary Clinic', '68/3c, 1209 Moneshwar Rd, Dhaka 1209', '01635817270', 'Moneshwar road, Dhanmondi, Pilkhana, Hazaribagh'),
('Gulshan Pet Clinic', '4,5, DCC Super Market, Gulshan-2, Dhaka 1212', '01715078434', 'Gulshan'),
('Gulshan Pet Clinic (Madani Avenue Branch)', '34 Madani Avenue, 100 feet road, Dhaka 1212', '01625235662', 'Gulshan'),
('Healers Pet Clinic', 'House-708 W Nakhalpara Rd, Dhaka 1215', '01886880825', 'Nakhalpara'),
('Jatrabari Pet Care and Cure Center', 'Gate Number- 2, Dhaka', '01711364651', 'Jatrabari'),
('Kholapara Animals Pharmacy', 'QF2M+3QG, Thulthuia Bazar, Demra, Dhaka 1360', '01811373343', 'Demra'),
('KittyPups', 'Basundhara main road,Ground floor, 1229', '01767675206', 'Basundhara'),
('LD Veterinary Hospital', '15 Sonargaon Janapath, Dhaka 1230', '01733339597', 'Sonargaon Janapath Uttara'),
('Mew Care Animal Clinic', 'PF49+66F, Rahmotpur-Bainarbag Rd, Dhaka', '01778109989', 'Matuail Shantibagh'),
('Mirpur Pet Animal Clinic', 'House-04 (Ground Floor), Road-01, Mirpur 12, Dhaka', '01320823299', 'Mirpur'),
('MR Veterinary Clinic', '126/6 Patwari Goli Chowrasta, Dhaka 1214', '01521489206', 'Shabujbag'),
('Mr. Vet', '5/15, Block-C Tajmahal Rd, Dhaka 1207', '01723649754', 'Mohammadpur'),
('Naf Veterinary Hospital (Pvt.)', 'P8JM+3M2, Yusuf Khan Plaza, Atibazar, Keraniganj, Dhaka 1312', '01712694788', 'Keraniganj'),
('Narayanganj Veterinary clinic', 'JFQW+F45, Dhaka - Narayanganj Rd, Narayanganj', '01712019116', 'Narayanganj'),
('PAW Life Care Lalmatia', '1/12, Dhaka 1207', '01909617994', 'Lalmatia'),
('PAW Life Care Mirpur', '80 Commercial Plot, Zoo Road, Dhaka 1216', '01310336835', 'Mirpur'),
('Pet And Bird Care', 'Block- A,Location: House- 13/14, Lane- 1, Mirpur 6, Dhaka 1216', '01701073107', 'Mirpur'),
('Pet Care', 'S Paikpara Rd, Dhaka', '01819263621', 'Paikpara'),
('Pet Care & Vet Point, Mirpur', 'Lift-2 House-13/14, Block-D, Avenue-2, Mirpur Ceramic Rd, Dhaka 1216', '01727014209', 'Mirpur'),
('Pet Care Clinic (Pet Care Zone)', 'Q9J4+XP4, Mirpur Rd, Dhaka', '01703449996', 'Mirpur'),
('Pet Cure Point & Orthopaedics Center', '741, Block- A Comilla Hotel Mor, Dhaka 1219', '01725808534', 'Khilgaon'),
('Pet Doctor', 'House#49, Dhaka Vets Chamber, Road#13, Dhaka 1229', '01731492093', 'Nikunja, kurmitola'),
('Pet Doctor Robi', '5/15 Block- C, Tajmahal Road, (West Side of Dhaka Residential Model College, Dhaka 1207', '01723649754', 'Mohammadpur'),
('Pet Expert Dhaka', 'house no 128 Road No. 04, Dhaka', '01747150063', 'Dhanmondi'),
('Pet Heaven Veterinary Clinic', 'Q9W7+HRC, Dhaka', '01944370090', 'Monipur'),
('Pet Vet Dr. Sujan', '1/1 (E) (1st Floor), C Block, Lalmatia, (Near Dhanmondi 27). ( Just Behind Genetic Plaza; Titas Confectionery Building), Dhaka 1207', '01777516183', 'Lalmatia'),
('Pets Care Clinic & Veterinary Hospital', 'Block B House, 17 Lane 2, Dhaka 1216', '01767163050', 'Mirpur'),
('Pets Doctor & Care', 'RC6F+Q42, Bashundhara Rd, Dhaka 1229', '01914528629', 'Bashundhara'),
('Prani Shastho Sheba Kendro', '214-215, Prani Sastho Seba Kendro, Katabon, Dhaka University Market, Dhaka 1000', '01841654881', 'Katabon'),
('Pranicool Animal Wellness Center', '205, 1 Bir Uttam Mir Shawkat Sarak, Dhaka 1208', '01329666431', 'Gulshan'),
('Rampura Pet Hospital', '363 DIT Rd, Dhaka 1219', '01881227204', 'Rampura'),
('RobinHood Care - Animal Clinic', 'Khilgaon, Dhaka', '01616737283', 'Khilgaon'),
('Siamak Pet Clinic', 'House-56 Road-9/B, Dhaka 1230', '01711561155', 'Uttara'),
('Teaching & Training Pet Hospital and Research Center', 'Plot 5B, Road 114, Dhaka', '01960136749', 'Purbacahal'),
('The Pet Vet', 'Ta 173/2 Lake view road, Godara ghat to Hatirjheel Road, Dhaka 1212', '01785636036', 'Hatirjheel'),
('TnT VetCare', '10 Tala market (Estern Banbithi shopping Complex Shop # G-23, Ground Floor, Khilgaon South, Dhaka 1219', '01711781052', 'Khilgaon South'),
('Vet Abdullah Mujahid', '68, Harirampur, Golartek Mosque Rd, Dhaka 1216', '01715728760', 'Harirampur'),
('Vet and Pet Care (VNPC)', '1/1 (E), Block.-C, Lalmatia, Behind Genetic Plaza at Dhanmondi 27, 1st floor of Titas Confectionery, Dhaka 1207', '01674173844', 'Lalmatia'),
('Vet Rx Pet Health Center', ' 210, Kataban Market, 2nd floor, room no. 210, kataban market(university market), opposit of Top 10, 1215', '01724017240', 'Kataban'),
('Vet sharif(DVM) pet care', 'House#73, Road#48, Hatim Bagh,Girls school road, Dakkhinkhan, Uttara, Dhaka, Opposite to Bank colony, Dhaka 1230', '01406384738', 'Uttara'),
('Veterinary Specialized Hospital & Diagnostic Center', 'House-47 Road-2, Dhaka 1230', '01305843505', 'Uttara'),
('VetSheba-Banasree Pet Clinic', 'house number 10, Road No. 2', '01558624491', 'Banasree'),
('উপজেলা প্রাণিসম্পদ দপ্তর এবং ভেটেরিনারি হাসপাতাল', 'A-1, N5, Savar 1340', '01715111417', 'Savar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `vets`
--
ALTER TABLE `vets`
  ADD PRIMARY KEY (`vName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
