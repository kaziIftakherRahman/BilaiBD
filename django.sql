-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8888
-- Generation Time: Oct 29, 2023 at 08:29 PM
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
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add user profile', 9, 'add_userprofile'),
(26, 'Can change user profile', 9, 'change_userprofile'),
(27, 'Can delete user profile', 9, 'delete_userprofile'),
(28, 'Can view user profile', 9, 'view_userprofile'),
(29, 'Can add vets', 7, 'add_vets'),
(30, 'Can change vets', 7, 'change_vets'),
(31, 'Can delete vets', 7, 'delete_vets'),
(32, 'Can view vets', 7, 'view_vets'),
(33, 'Can add products', 10, 'add_products'),
(34, 'Can change products', 10, 'change_products'),
(35, 'Can delete products', 10, 'delete_products'),
(36, 'Can view products', 10, 'view_products'),
(37, 'Can add cart', 11, 'add_cart'),
(38, 'Can change cart', 11, 'change_cart'),
(39, 'Can delete cart', 11, 'delete_cart'),
(40, 'Can view cart', 11, 'view_cart');

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
  `date_joined` datetime(6) NOT NULL,
  `catName` varchar(150) DEFAULT NULL,
  `catAge` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `catName`, `catAge`) VALUES
(1, 'pbkdf2_sha256$600000$nY8wmEntNEHz6at00jCjSJ$3MJTui8pgoXkjbXdLmOlFG9EbsNH4rqjuU/mdbcHSI0=', '2023-10-29 13:09:47.200517', 0, 'kazi', '', '', '', 0, 1, '2023-09-23 16:22:50.261082', NULL, NULL),
(3, 'pbkdf2_sha256$600000$dMK3wyxTJp3jYc9kpmce0s$NX9peHrjd0NWzM+4HMli3X3EhfCIZxLGItiAOkPSy6A=', '2023-10-04 05:30:46.584443', 0, 'saif', '', '', '', 0, 1, '2023-09-23 17:24:55.909917', NULL, NULL),
(5, 'pbkdf2_sha256$600000$klBkaTrjBmj8ODvoHTottZ$mwwFwKPxR/outsg9ZQS6jGTYEsnspDB7N8MRCaRn5kk=', '2023-09-25 19:00:42.152665', 0, 'aaraf', '', '', '', 0, 1, '2023-09-25 19:00:29.102022', NULL, NULL),
(6, 'pbkdf2_sha256$600000$7yAq76LPtCmSX6N7INjGNh$qswVdxYMPr1SAGhUicH+XNtUyZ4I2nSNRVnt1ZfjkgU=', '2023-10-01 09:50:22.694574', 0, 'arif', '', '', '', 0, 1, '2023-10-01 09:50:11.739459', NULL, NULL),
(7, 'pbkdf2_sha256$600000$lfzyWy914rfykZ8QAKyaax$xXVAGe/kbAkeNMVK1ctxGuRb9ssTnve2nsKF76n3RQE=', '2023-10-29 19:21:32.690249', 1, 'itn', '', '', 'saif.hasan.3017@gmail.com', 1, 1, '2023-10-02 13:05:42.078892', 'Tom', '4'),
(9, 'pbkdf2_sha256$600000$9OUvPt9sIW9NXihmhm0coi$R6FfFQ4m0StsClFD0C3lB047/Sq99aOECkytZi4bakc=', '2023-10-02 17:27:30.961059', 0, 'nafiz', '', '', '', 0, 1, '2023-10-02 17:21:18.686932', NULL, NULL),
(14, 'pbkdf2_sha256$600000$SUytnJJMfuCF7pKvldYDG0$6wyPJpdiOfxhPwZ29RjRpW7E247M4H+U9X2uFr5MFTU=', '2023-10-03 04:24:42.392330', 0, 'moly', '', '', '', 0, 1, '2023-10-03 04:24:41.616685', NULL, NULL),
(15, 'pbkdf2_sha256$600000$byDMZuGaH7klngDzTpMNet$apvJI6Ia92AibAOOP/eGN29L+2uWh30Fuz9smnGUWd4=', '2023-10-03 04:47:48.954687', 0, 'mosakif', '', '', '', 0, 1, '2023-10-03 04:47:08.450682', NULL, NULL),
(16, 'pbkdf2_sha256$600000$sS9N4pE4gsxeiVFdN5nTPk$OFu147Wb8mMK+zoddlgCbOS/6D+Gm3eaGjhXONfNr8g=', '2023-10-03 14:45:27.907049', 0, 'ruqat', '', '', '', 0, 1, '2023-10-03 14:45:09.869803', NULL, NULL),
(17, 'pbkdf2_sha256$600000$5TUs9B3K8cR7nGnIMKRfDG$Dk8SoSCnJV4y2S28rjO9z6ZPu3zi5vbapqC02Hc3uQg=', '2023-10-03 14:50:17.660385', 0, 'nafiz1234', '', '', '', 0, 1, '2023-10-03 14:50:16.883374', NULL, NULL),
(19, 'pbkdf2_sha256$600000$LxGmCkUilKtkzA8NqxUrOC$qq+Vj+mera2wQZ7RpCsXGH2qm/J1j/Du2E4aIPCz9Mw=', '2023-10-03 15:16:37.208841', 0, 'rashik', '', '', '', 0, 1, '2023-10-03 15:16:36.458067', NULL, NULL),
(20, 'pbkdf2_sha256$600000$XJm9jL4UTA3Qadt5oNmE1g$drPBXzb7V924Dexs7iavYK5hZ3sDE4gS0mcUo5oZyTs=', '2023-10-03 15:30:27.112008', 0, 'mikej', '', '', '', 0, 1, '2023-10-03 15:30:06.633193', NULL, NULL),
(21, 'pbkdf2_sha256$600000$3SSi8Q6zuTykfCaSEB1DLM$GMD0slH67cwNzYndstQyxlb3gUlq2OvYll6qtmwoYp0=', '2023-10-03 15:37:34.474465', 0, 'zaed', '', '', '', 0, 1, '2023-10-03 15:35:41.916999', NULL, NULL),
(22, 'pbkdf2_sha256$600000$Gz7UZqnxj4R30JVOeZwxbV$s+cV5LBzQ0/SlZyVzK3rDdpJNBp/cziFCfCOfJZ5gjE=', '2023-10-03 15:37:58.300261', 0, 'absara', '', '', '', 0, 1, '2023-10-03 15:37:57.535241', NULL, NULL),
(23, 'pbkdf2_sha256$600000$1xWggKL7yVFfxPxMG1OyhS$ZOwy+klW6FWGm13CE0hYroJEZ6LKUqfZR1wG/24aCNY=', '2023-10-14 18:09:24.057283', 0, 'testuser1', '', '', '', 0, 1, '2023-10-14 18:09:23.573142', NULL, NULL),
(24, 'pbkdf2_sha256$600000$AGCaL10skT0UMZY2yJvSFl$N+0Mq0OL2H10zIrRis/QOiv+vikLOAhWjTrIW3zIPD8=', '2023-10-27 20:36:24.720388', 0, 'testuser2', '', '', '', 0, 1, '2023-10-27 20:21:34.806733', NULL, NULL),
(25, 'pbkdf2_sha256$600000$ywVhG8poXfmOD1k0ZbloPr$GRmz1/H8UaQ048lWGq3IfqpFxivS4cNYvY3j/gh/Wak=', '2023-10-27 22:04:03.507219', 0, 'rashikIram', '', '', '', 0, 1, '2023-10-27 20:35:15.047962', NULL, NULL),
(26, 'pbkdf2_sha256$600000$cf5ypFmGUGf96hTlMotdN0$TauW4DdvyGHLfQBWBhvY9MLWLNxnSomufsz3zDXC3I0=', '2023-10-28 09:42:21.800036', 0, 'testuser3', '', '', '', 0, 1, '2023-10-27 21:43:09.215797', NULL, NULL),
(27, 'pbkdf2_sha256$600000$uhgxlIdUyGomzvJwI0ahvp$qxIR00E8at3M+g7hFtZE1A8BFLAYnnu/ysBqMQq30ow=', '2023-10-27 22:04:45.065673', 0, 'testuser4', '', '', '', 0, 1, '2023-10-27 21:59:38.727884', NULL, NULL),
(28, 'pbkdf2_sha256$600000$yqrkzuXv0ZKqxyyPGVlx9P$cONlfOgRLQG9el1aP7OZWXladpyBZ2LZxiQ7RuUsaS0=', '2023-10-27 22:07:29.799872', 0, 'testuser5', '', '', '', 0, 1, '2023-10-27 22:05:11.446051', NULL, NULL),
(29, 'pbkdf2_sha256$600000$HHY1roR6G9IlZKxI3agSVM$7NKorLtu8mO+Zj4L5eRjHifpB0sa9qzlCoo1GQEVboc=', '2023-10-28 11:33:41.872031', 0, 'testuser7', '', '', '', 0, 1, '2023-10-28 11:33:41.420705', NULL, NULL);

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
(1, '2023-10-02 16:58:28.103756', '8', 'mike', 3, '', 4, 7),
(2, '2023-10-03 14:52:53.065047', '11', 'adham', 3, '', 4, 7),
(3, '2023-10-03 14:52:53.070541', '12', 'asd123', 3, '', 4, 7),
(4, '2023-10-03 14:52:53.071543', '18', 'maruf', 3, '', 4, 7),
(5, '2023-10-03 14:52:53.075547', '4', 'qwerty', 3, '', 4, 7),
(6, '2023-10-03 14:52:53.076548', '10', 'rashik', 3, '', 4, 7),
(7, '2023-10-03 14:52:53.077549', '2', 'ruqatzaman', 3, '', 4, 7),
(8, '2023-10-03 14:52:53.078550', '13', 'sakif', 3, '', 4, 7),
(9, '2023-10-05 06:10:35.298572', '0', 'vets object (0)', 1, '[{\"added\": {}}]', 7, 7),
(10, '2023-10-05 16:50:27.999394', '59', 'vets object (59)', 3, '', 7, 7),
(11, '2023-10-06 15:38:26.537389', '69', 'vets object (69)', 1, '[{\"added\": {}}]', 7, 7),
(12, '2023-10-14 18:11:03.998101', '1', 'kazi Profile', 1, '[{\"added\": {}}]', 8, 7),
(13, '2023-10-14 18:12:26.229265', '1', 'kazi Profile', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 7),
(14, '2023-10-14 18:13:31.872794', '1', 'kazi Profile', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 7),
(15, '2023-10-14 18:16:34.784822', '5', 'testuser1 Profile', 1, '[{\"added\": {}}]', 8, 7),
(16, '2023-10-14 18:24:54.575149', '5', 'testuser1 Profile', 3, '', 8, 7),
(17, '2023-10-14 18:24:54.577151', '1', 'kazi Profile', 3, '', 8, 7),
(18, '2023-10-14 18:25:06.807355', '6', 'kazi Profile', 1, '[{\"added\": {}}]', 8, 7),
(19, '2023-10-14 18:25:16.911808', '7', 'testuser1 Profile', 1, '[{\"added\": {}}]', 8, 7),
(20, '2023-10-29 08:12:42.716800', '1', 'products object (1)', 1, '[{\"added\": {}}]', 10, 7),
(21, '2023-10-29 08:13:38.916320', '2', 'products object (2)', 1, '[{\"added\": {}}]', 10, 7),
(22, '2023-10-29 11:58:36.378022', '2', 'products object (2)', 2, '[{\"changed\": {\"fields\": [\"Stock quantity\"]}}]', 10, 7),
(23, '2023-10-29 12:05:00.859836', '2', 'products object (2)', 2, '[{\"changed\": {\"fields\": [\"Stock quantity\"]}}]', 10, 7),
(24, '2023-10-29 12:05:44.932835', '2', 'products object (2)', 2, '[{\"changed\": {\"fields\": [\"Stock quantity\"]}}]', 10, 7),
(25, '2023-10-29 12:07:06.277256', '2', 'products object (2)', 2, '[{\"changed\": {\"fields\": [\"Stock quantity\"]}}]', 10, 7),
(26, '2023-10-29 12:07:31.685521', '2', 'products object (2)', 2, '[{\"changed\": {\"fields\": [\"Stock quantity\"]}}]', 10, 7),
(27, '2023-10-29 12:07:59.794179', '2', 'products object (2)', 2, '[]', 10, 7),
(28, '2023-10-29 12:08:21.034821', '2', 'products object (2)', 2, '[{\"changed\": {\"fields\": [\"Stock quantity\"]}}]', 10, 7),
(29, '2023-10-29 12:10:39.979491', '2', 'products object (2)', 2, '[{\"changed\": {\"fields\": [\"Stock quantity\"]}}]', 10, 7),
(30, '2023-10-29 12:21:24.178059', '2', 'products object (2)', 2, '[{\"changed\": {\"fields\": [\"Stock quantity\"]}}]', 10, 7),
(31, '2023-10-29 12:24:37.112663', '2', 'products object (2)', 2, '[{\"changed\": {\"fields\": [\"Stock quantity\"]}}]', 10, 7),
(32, '2023-10-29 13:09:23.088895', '2', 'products object (2)', 2, '[{\"changed\": {\"fields\": [\"Stock quantity\"]}}]', 10, 7),
(33, '2023-10-29 13:47:55.198217', '2', 'products object (2)', 2, '[{\"changed\": {\"fields\": [\"Stock quantity\"]}}]', 10, 7);

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
(11, 'myapp', 'cart'),
(10, 'myapp', 'products'),
(8, 'myapp', 'profile'),
(9, 'myapp', 'userprofile'),
(7, 'myapp', 'vets'),
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
(18, 'sessions', '0001_initial', '2023-09-23 15:19:33.121446'),
(19, 'myapp', '0001_initial', '2023-10-27 18:54:41.859543'),
(20, 'myapp', '0002_products', '2023-10-29 08:11:05.351480'),
(21, 'myapp', '0003_cart', '2023-10-29 08:21:15.908048');

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
('9jzrskafjtg51yi6w30svhktnle764lj', '.eJxVjEEOwiAQAP_C2RBaWKAevfcNZBdYqRqalPZk_Lsh6UGvM5N5i4DHXsLR8haWJK7CicsvI4zPXLtID6z3Vca17ttCsifytE3Oa8qv29n-DQq20rdx8B4gk1E4Kk_ASSc2lFlZAvSaBwXeEWs36TzyFAlRRQvGao4OxOcL8B44PA:1qxBLo:mFDvfXFO9KB5Uvlk489hGNNwCqF-9LgwB4E7iHq6i2I', '2023-11-12 19:21:32.693099'),
('etjo1bt322jw0sbytqb7syg8iiedaoeu', '.eJxVjEEOwiAQAP_C2RBaWKAevfcNZBdYqRqalPZk_Lsh6UGvM5N5i4DHXsLR8haWJK7CicsvI4zPXLtID6z3Vca17ttCsifytE3Oa8qv29n-DQq20rdx8B4gk1E4Kk_ASSc2lFlZAvSaBwXeEWs36TzyFAlRRQvGao4OxOcL8B44PA:1qomv3:PoRlRW7bwj1DzTpWfd0Ghplku72H4PpFW7QyP_-ozzY', '2023-10-20 15:39:13.939856'),
('ptt9atu1qdhjxacjbmsl6cqz5hk1oy4t', '.eJxVjEEOwiAQRe_C2hAoDAWX7nsGMsOgVA0kpV0Z765NutDtf-_9l4i4rSVuPS9xZnEWRpx-N8L0yHUHfMd6azK1ui4zyV2RB-1yapyfl8P9OyjYy7ceOQE4MkQW9dV5m4IjUj6QG4MdLGRW4NBZ4KysCgMb0j4BKe11AhTvD91gN20:1qk6NU:RTeZieHH-SZCEglomqjvMcZ5MIhcn8v8mMwdnix2v-Y', '2023-10-07 17:25:12.264390');

-- --------------------------------------------------------

--
-- Table structure for table `myapp_cart`
--

CREATE TABLE `myapp_cart` (
  `id` bigint(20) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `product_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `myapp_cart`
--

INSERT INTO `myapp_cart` (`id`, `quantity`, `product_id`, `user_id`) VALUES
(76, 5, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `catagory_id` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock_quantity` int(11) NOT NULL,
  `productPic` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `catagory_id`, `description`, `price`, `stock_quantity`, `productPic`) VALUES
(1, 'test toy', 1, 'this is a test description.', 1000.00, 76, 'productImages/Blue_Bold_Creative_Studio_Logo.png'),
(2, 'test toy 2', 2, 'Test', 50.00, 0, 'productImages/392871715_162730683582920_8495901719697046285_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `userprofile`
--

CREATE TABLE `userprofile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `catName` varchar(100) NOT NULL,
  `catAge` varchar(100) NOT NULL,
  `catBreed` varchar(100) NOT NULL,
  `profilePic` varchar(100) DEFAULT NULL,
  `catImg` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userprofile`
--

INSERT INTO `userprofile` (`user_id`, `name`, `phone`, `address`, `catName`, `catAge`, `catBreed`, `profilePic`, `catImg`) VALUES
(1, 'Kazi Iftakher Rahman', '01915691675', 'rampura', 'bonu', '10', 'desi', '', ''),
(7, 'tester', '011', 'asdsa', 'Pushi', '3', 'faf', '', ''),
(24, 'tester', '1111', '2222', '3333', '4444', '5555', 'profileImages/samir1.jpg', 'catImages/default.png'),
(25, 'Chowdhury Shaheb', '69', 'dmd', 'RashikParso', '2', 'Laal', 'profileImages/saif.jpg', 'catImages/392811160_162730636916258_4378570261076754925_n.jpg'),
(26, 'test3', '33', '44', '55', '66', '77', 'profileImages/wallpaperflare.com_wallpaper_7.jpg', 'catImages/cute-domestic-kitten-sits-window-staring-outside-generative-ai.jpg'),
(27, 'test4', '444', '555', '666', '777', '888', 'profileImages/samir1_NKg5vYQ.jpg', 'catImages/cute-domestic-kitten-sits-window-staring-outside-generative-ai_neywLmf.jpg'),
(29, '777', '777', '777', '777', '77', '777', 'profileImages/wallpaperflare.com_wallpaper.jpg', 'catImages/wallpaperflare.com_wallpaper_2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `vets`
--

CREATE TABLE `vets` (
  `id` bigint(20) NOT NULL,
  `vName` varchar(100) NOT NULL,
  `vAddress` varchar(300) NOT NULL,
  `vPhone` varchar(15) NOT NULL,
  `vLocation` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vets`
--

INSERT INTO `vets` (`id`, `vName`, `vAddress`, `vPhone`, `vLocation`) VALUES
(1, 'Biocare Pet Zone and Veterinary Clinic', 'House 404 ব্লক # এ, Dhaka 1219', '01779593933', 'Khilgaon'),
(2, 'The Pet Vet', 'Ta 173/2 Lake view road, Godara ghat to Hatirjheel Road, Dhaka 1212', '01785636036', 'Hatirjheel'),
(3, 'Pet Cure Point & Orthopaedics Center', '741, Block- A Comilla Hotel Mor, Dhaka 1219', '01725808534', 'Khilgaon'),
(4, 'Bala G Pet Clinic', '364 DIT Rd, Dhaka 1219', '01881227204', 'Rampura'),
(5, 'Biswas Veterinary Clinic', 'TA - 131, 109 Gulshan Badda Link Rd, Dhaka 1212', '01322581020', 'Badda'),
(6, 'Companion Care & Food Accessories', 'GP,E, 124 Wireless Gate Rd, Dhaka 1212', '01774398004', 'Mohakhali'),
(7, 'Dr. Sagirs Pet Clinic', 'Lalmatia, House # 3/2 Block No. D, Dhaka 1207', '01912251312', 'Lalmatia'),
(8, 'Vet and Pet Care (VNPC)', '1/1 (E), Block.-C, Lalmatia, Behind Genetic Plaza at Dhanmondi 27, 1st floor of Titas Confectionery, Dhaka 1207', '01674173844', 'Lalmatia'),
(9, 'MR Veterinary Clinic', '126/6 Patwari Goli Chowrasta, Dhaka 1214', '01521489206', 'Shabujbag'),
(10, 'AKS Animal Care Centre', 'Diplomatic Zone, 13/1 Road No. 12, Dhaka 1212', '01770476749', 'Nodda kalachandpur'),
(11, 'Mr. Vet', '5/15, Block-C Tajmahal Rd, Dhaka 1207', '01723649754', 'Mohammadpur'),
(12, 'AniMedCare', 'House 03, Floor 01, Road 08 Baridhara J Block, Dhaka 1212', '01894947411', 'Baridhara'),
(13, 'Care & Cure Veterinary Clinic', '28 Rd No. 7, Dhaka 1205', '01551807384', 'Dhanmondi'),
(14, 'Pet Doctor Robi', '5/15 Block- C, Tajmahal Road, (West Side of Dhaka Residential Model College, Dhaka 1207', '01723649754', 'Mohammadpur'),
(15, 'Pet Doctor', 'House#49, Dhaka Vets Chamber, Road#13, Dhaka 1229', '01731492093', 'Nikunja, kurmitola'),
(16, 'Mirpur Pet Animal Clinic', 'House-04 (Ground Floor), Road-01, Mirpur 12, Dhaka', '01320823299', 'Mirpur'),
(17, 'Dr. Sharbaris Pet Care', '496 Lane - 9, Dhaka', '01722926032', 'DOHS baridhara'),
(18, 'PAW Life Care Lalmatia', '1/12, Dhaka 1207', '01909617994', 'Lalmatia'),
(19, 'Dr.Anawars Pet Care', 'House#18 Road#06, Dhaka 1229', '01723256771', 'Nikunja kurmitola'),
(20, 'Pet Care & Vet Point, Mirpur', 'Lift-2 House-13/14, Block-D, Avenue-2, Mirpur Ceramic Rd, Dhaka 1216', '01727014209', 'Mirpur'),
(21, 'Teaching & Training Pet Hospital and Research Center', 'Plot 5B, Road 114, Dhaka', '01960136749', 'Purbacahal'),
(22, 'Dr. MD. Abul Kalam Azads Prani chikitsa kendro', 'Nasirabad Uttar para, nearby bridge, ward no 75, khilgaon, Dhaka 1219', '01819043941', 'khilgaon'),
(23, 'Pet Care', 'S Paikpara Rd, Dhaka', '01819263621', 'Paikpara'),
(24, 'Pet And Bird Care', 'Block- A,Location: House- 13/14, Lane- 1, Mirpur 6, Dhaka 1216', '01701073107', 'Mirpur'),
(25, 'Bd Pet Care', 'Ka-1/1 Bashundhara Road, Dhaka 1229 Bashundhara Road, Dhaka 1229 Opposite to jamuna future Park pocket Gate Al-Arabian Cake & Sweets r 3rd floor, Dhaka 1229', '01713267313', 'Bashundhara'),
(26, 'Elite Pet Care', 'House-72 Rd No 11, Dhaka 1230', '01818417804', 'Uttra'),
(27, 'Evergreen Pet Care', 'H#53, R#12, Sec#13, Dhaka 1230', '01716535822', 'Uttra'),
(28, 'Pets Doctor & Care', 'RC6F+Q42, Bashundhara Rd, Dhaka 1229', '01914528629', 'Bashundhara'),
(29, 'RobinHood Care - Animal Clinic', 'Khilgaon, Dhaka', '01616737283', 'Khilgaon'),
(30, 'Healers Pet Clinic', 'House-708 W Nakhalpara Rd, Dhaka 1215', '01886880825', 'Nakhalpara'),
(31, 'Pets Care Clinic & Veterinary Hospital', 'Block B House, 17 Lane 2, Dhaka 1216', '01767163050', 'Mirpur'),
(32, 'Siamak Pet Clinic', 'House-56 Road-9/B, Dhaka 1230', '01711561155', 'Uttara'),
(33, 'Care For Paws', 'Moneshwor Rd, House no : 68/3C, Jigatola Road, Dhaka 1209', '01635817270', 'Jigatola Dhanmondi'),
(34, 'Pet Expert Dhaka', 'house no 128 Road No. 04, Dhaka', '01747150063', 'Dhanmondi'),
(35, 'PAW Life Care Mirpur', '80 Commercial Plot, Zoo Road, Dhaka 1216', '01310336835', 'Mirpur'),
(36, 'Doctors Pet Care', 'Block D, 2/1 Rd 1, Dhaka', '01774795970', 'Mirpur'),
(37, 'Vet sharif(DVM) pet care', 'House#73, Road#48, Hatim Bagh,Girls school road, Dakkhinkhan, Uttara, Dhaka, Opposite to Bank colony, Dhaka 1230', '01406384738', 'Uttara'),
(38, 'Vet Rx Pet Health Center', ' 210, Kataban Market, 2nd floor, room no. 210, kataban market(university market), opposit of Top 10, 1215', '01724017240', 'Kataban'),
(39, 'All Creatures Pet Clinic', '26 Chamelibagh Shantinagar Rd, Dhaka 1217', '01712953333', 'Chamelibagh Shantinagar'),
(40, 'Vet Abdullah Mujahid', '68, Harirampur, Golartek Mosque Rd, Dhaka 1216', '01715728760', 'Harirampur'),
(41, 'Dhaka Pet Clinic', 'Ground floor, 9, 2 Nawab St, Dhaka 1203', '01886921867', 'Wari'),
(42, 'LD Veterinary Hospital', '15 Sonargaon Janapath, Dhaka 1230', '01733339597', 'Sonargaon Janapath Uttara'),
(43, 'Dr. Imran Pet Care', 'Boishakhi Sarani, 134A Gulshan Badda Link Rd, Dhaka 1212', '01849583864', 'Gulshan Badda'),
(44, 'Veterinary Specialized Hospital & Diagnostic Center', 'House-47 Road-2, Dhaka 1230', '01305843505', 'Uttara'),
(45, 'TnT VetCare', '10 Tala market (Estern Banbithi shopping Complex Shop # G-23, Ground Floor, Khilgaon South, Dhaka 1219', '01711781052', 'Khilgaon South'),
(46, 'Dr. Mozahid Veterinary Clinic', 'D-7 South, Dhaka 1219', '01716297665', 'South Banasree'),
(47, 'Gulshan Pet Clinic', '4,5, DCC Super Market, Gulshan-2, Dhaka 1212', '01715078434', 'Gulshan'),
(48, 'VetSheba-Banasree Pet Clinic', 'house number 10, Road No. 2', '01558624491', 'Banasree'),
(49, 'Narayanganj Veterinary clinic', 'JFQW+F45, Dhaka - Narayanganj Rd, Narayanganj', '01712019116', 'Narayanganj'),
(50, 'Pranicool Animal Wellness Center', '205, 1 Bir Uttam Mir Shawkat Sarak, Dhaka 1208', '01329666431', 'Gulshan'),
(51, 'Dada Pet Care ( Dr. Gopal Chandra Das)', 'Dhaka 1216', '01644983713', 'Mirpur'),
(52, 'Mew Care Animal Clinic', 'PF49+66F, Rahmotpur-Bainarbag Rd, Dhaka', '01778109989', 'Matuail Shantibagh'),
(53, 'Prani Shastho Sheba Kendro', '214-215, Prani Sastho Seba Kendro, Katabon, Dhaka University Market, Dhaka 1000', '01841654881', 'Katabon'),
(54, 'ACI Animal Health', 'Police Plaza Concord Shopping Mall, Dhaka 1212', '01324732792', 'Gulshan'),
(55, 'Gulshan Pet Clinic (Madani Avenue Branch)', '34 Madani Avenue, 100 feet road, Dhaka 1212', '01625235662', 'Gulshan'),
(56, 'Pet Heaven Veterinary Clinic', 'Q9W7+HRC, Dhaka', '01944370090', 'Monipur'),
(57, 'Pet Vet Dr. Sujan', '1/1 (E) (1st Floor), C Block, Lalmatia, (Near Dhanmondi 27). ( Just Behind Genetic Plaza; Titas Confectionery Building), Dhaka 1207', '01777516183', 'Lalmatia'),
(58, 'Kholapara Animals Pharmacy', 'QF2M+3QG, Thulthuia Bazar, Demra, Dhaka 1360', '01811373343', 'Demra'),
(59, 'For pets Care Veterinary Clinic', '68/3c, 1209 Moneshwar Rd, Dhaka 1209', '01635817270', 'Moneshwar road, Dhanmondi, Pilkhana, Hazaribagh'),
(60, 'উপজেলা প্রাণিসম্পদ দপ্তর এবং ভেটেরিনারি হাসপাতাল', 'A-1, N5, Savar 1340', '01715111417', 'Savar'),
(61, 'City Pet Care', 'R98W+G7C, Matikata Rd, Dhaka', '01779749033', 'Mirpur'),
(62, 'Animal Health Care Center', 'House 13, Line 1, 13', '01318862297', 'Hazaribagh'),
(63, 'KittyPups', 'Basundhara main road,Ground floor, 1229', '01767675206', 'Basundhara'),
(64, 'Naf Veterinary Hospital (Pvt.)', 'P8JM+3M2, Yusuf Khan Plaza, Atibazar, Keraniganj, Dhaka 1312', '01712694788', 'Keraniganj'),
(65, 'Rampura Pet Hospital', '363 DIT Rd, Dhaka 1219', '01881227204', 'Rampura'),
(66, 'Pet Care Clinic (Pet Care Zone)', 'Q9J4+XP4, Mirpur Rd, Dhaka', '01703449996', 'Mirpur'),
(67, 'Jatrabari Pet Care and Cure Center', 'Gate Number- 2, Dhaka', '01711364651', 'Jatrabari');

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
-- Indexes for table `myapp_cart`
--
ALTER TABLE `myapp_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `myapp_cart_product_id_8e7aeeb3_fk_products_id` (`product_id`),
  ADD KEY `myapp_cart_user_id_d6c51e4b_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userprofile`
--
ALTER TABLE `userprofile`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `vets`
--
ALTER TABLE `vets`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `myapp_cart`
--
ALTER TABLE `myapp_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vets`
--
ALTER TABLE `vets`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

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

--
-- Constraints for table `myapp_cart`
--
ALTER TABLE `myapp_cart`
  ADD CONSTRAINT `myapp_cart_product_id_8e7aeeb3_fk_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `myapp_cart_user_id_d6c51e4b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `userprofile`
--
ALTER TABLE `userprofile`
  ADD CONSTRAINT `UserProfile_user_id_d5588aad_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
