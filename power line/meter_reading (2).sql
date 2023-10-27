-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2022 at 07:07 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `meter reading`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add complaint', 7, 'add_complaint'),
(26, 'Can change complaint', 7, 'change_complaint'),
(27, 'Can delete complaint', 7, 'delete_complaint'),
(28, 'Can view complaint', 7, 'view_complaint'),
(29, 'Can add connection', 8, 'add_connection'),
(30, 'Can change connection', 8, 'change_connection'),
(31, 'Can delete connection', 8, 'delete_connection'),
(32, 'Can view connection', 8, 'view_connection'),
(33, 'Can add consumer', 9, 'add_consumer'),
(34, 'Can change consumer', 9, 'change_consumer'),
(35, 'Can delete consumer', 9, 'delete_consumer'),
(36, 'Can view consumer', 9, 'view_consumer'),
(37, 'Can add employee', 10, 'add_employee'),
(38, 'Can change employee', 10, 'change_employee'),
(39, 'Can delete employee', 10, 'delete_employee'),
(40, 'Can view employee', 10, 'view_employee'),
(41, 'Can add image reading', 11, 'add_imagereading'),
(42, 'Can change image reading', 11, 'change_imagereading'),
(43, 'Can delete image reading', 11, 'delete_imagereading'),
(44, 'Can view image reading', 11, 'view_imagereading'),
(45, 'Can add login', 12, 'add_login'),
(46, 'Can change login', 12, 'change_login'),
(47, 'Can delete login', 12, 'delete_login'),
(48, 'Can view login', 12, 'view_login'),
(49, 'Can add organization', 13, 'add_organization'),
(50, 'Can change organization', 13, 'change_organization'),
(51, 'Can delete organization', 13, 'delete_organization'),
(52, 'Can view organization', 13, 'view_organization'),
(53, 'Can add payment', 14, 'add_payment'),
(54, 'Can change payment', 14, 'change_payment'),
(55, 'Can delete payment', 14, 'delete_payment'),
(56, 'Can view payment', 14, 'view_payment'),
(57, 'Can add work', 15, 'add_work'),
(58, 'Can change work', 15, 'change_work'),
(59, 'Can delete work', 15, 'delete_work'),
(60, 'Can view work', 15, 'view_work');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `comp_id` int(11) NOT NULL,
  `o_id` int(11) NOT NULL,
  `complaint` varchar(100) NOT NULL,
  `reply` varchar(100) NOT NULL,
  `Cons_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`comp_id`, `o_id`, `complaint`, `reply`, `Cons_id`) VALUES
(1, 1, 'abc', 'complaint resolved..........................', 1),
(2, 2, 'hello ', 'completed', 2),
(3, 1, 'test', 'completed', 1);

-- --------------------------------------------------------

--
-- Table structure for table `connection`
--

CREATE TABLE `connection` (
  `conn_id` int(11) NOT NULL,
  `o_id` int(11) NOT NULL,
  `Cons_id` int(11) NOT NULL,
  `request` varchar(100) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `connection`
--

INSERT INTO `connection` (`conn_id`, `o_id`, `Cons_id`, `request`, `status`) VALUES
(2, 1, 1, 'hiii', 'accepted'),
(3, 1, 1, 'gfjhjj', 'accepted'),
(4, 1, 1, '', 'pending'),
(5, 1, 1, '', 'pending'),
(6, 1, 1, '', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `consumer`
--

CREATE TABLE `consumer` (
  `Cons_id` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Address` varchar(25) NOT NULL,
  `Contact_no` varchar(25) NOT NULL,
  `email_id` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `consumer`
--

INSERT INTO `consumer` (`Cons_id`, `Name`, `Address`, `Contact_no`, `email_id`) VALUES
(1, 'rashid', 'hhfgg', '9654126851', 'rashid1325@gmail.com'),
(2, 'amal', 'abc', '9656845612', 'kiranrajk2003@gmail.com');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'complaints', 'complaint'),
(8, 'connection', 'connection'),
(9, 'consumer', 'consumer'),
(5, 'contenttypes', 'contenttype'),
(10, 'employee', 'employee'),
(11, 'image', 'imagereading'),
(12, 'login', 'login'),
(13, 'organisation', 'organization'),
(14, 'payments', 'payment'),
(6, 'sessions', 'session'),
(15, 'work', 'work');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-10-30 07:29:05.491538'),
(2, 'auth', '0001_initial', '2022-10-30 07:29:05.909937'),
(3, 'admin', '0001_initial', '2022-10-30 07:29:06.043939'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-10-30 07:29:06.043939'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-10-30 07:29:06.057297'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-10-30 07:29:06.114306'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-10-30 07:29:06.162164'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-10-30 07:29:06.178921'),
(9, 'auth', '0004_alter_user_username_opts', '2022-10-30 07:29:06.178921'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-10-30 07:29:06.225024'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-10-30 07:29:06.227651'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-10-30 07:29:06.232729'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-10-30 07:29:06.246575'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-10-30 07:29:06.264239'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-10-30 07:29:06.284023'),
(16, 'auth', '0011_update_proxy_permissions', '2022-10-30 07:29:06.299692'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-10-30 07:29:06.313065'),
(18, 'complaints', '0001_initial', '2022-10-30 07:29:06.313065'),
(19, 'connection', '0001_initial', '2022-10-30 07:29:06.328724'),
(20, 'consumer', '0001_initial', '2022-10-30 07:29:06.331450'),
(21, 'employee', '0001_initial', '2022-10-30 07:29:06.331450'),
(22, 'image', '0001_initial', '2022-10-30 07:29:06.331450'),
(23, 'login', '0001_initial', '2022-10-30 07:29:06.331450'),
(24, 'organisation', '0001_initial', '2022-10-30 07:29:06.344592'),
(25, 'payments', '0001_initial', '2022-10-30 07:29:06.344592'),
(26, 'sessions', '0001_initial', '2022-10-30 07:29:06.373982'),
(27, 'work', '0001_initial', '2022-10-30 07:29:06.373982');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('ct3x9b0g9ly8mhi0wnwdbdh2f8i9lfyy', 'eyJ1X2lkIjoyfQ:1orYUR:_0lvBrm9bPYV_IMP1eQr6CuPIV_EOY-K45T2lFvlu3k', '2022-11-20 05:46:39.045526');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `E_id` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Age` int(11) NOT NULL,
  `Address` varchar(25) NOT NULL,
  `Department` varchar(25) NOT NULL,
  `Salary` int(11) NOT NULL,
  `Contact_no` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`E_id`, `Name`, `Age`, `Address`, `Department`, `Salary`, `Contact_no`, `status`) VALUES
(1, 'rashid', 20, 'hhfgg', 'hjh', 100000000, '9654126851', 'approved'),
(2, 'amal', 25, 'abc', 'abc', 20000, '9656845612', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `image_reading`
--

CREATE TABLE `image_reading` (
  `i_id` int(11) NOT NULL,
  `Cons_id` int(11) NOT NULL,
  `o_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `reading` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `image_reading`
--

INSERT INTO `image_reading` (`i_id`, `Cons_id`, `o_id`, `image`, `reading`) VALUES
(1, 1, 1, 'wallpaperflare.com_wallpaper (3).jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `type` varchar(25) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `username`, `password`, `type`, `uid`) VALUES
(1, 'admin', 'admin', 'admin', 0),
(2, 'amal', 'amal', 'consumer', 2),
(3, 'employee', 'employee', 'employee', 2),
(4, 'rashi', 'rashi', 'organisation', 2),
(6, 'k', 'k', 'organisation', 4),
(7, 'k', 'k', 'organisation', 5),
(8, 'k', 'k', 'organisation', 6),
(9, 'amal', 'employee', 'organisation', 7),
(10, 'amal', 'employee', 'organisation', 8),
(11, 'an', 'an', 'organisation', 9),
(12, 'rijula', 'rijula', 'organisation', 10);

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE `organization` (
  `o_id` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Address` varchar(25) NOT NULL,
  `Contact_no` varchar(10) NOT NULL,
  `email_id` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`o_id`, `Name`, `Address`, `Contact_no`, `email_id`) VALUES
(1, 'rashid', 'hhfgg', '32654895', 'rashid1325@gmail.com'),
(2, 'abc', 'hhh', '2147483647', 'rashid1325@gmail.com'),
(4, 'kiran', 'abc', '2147483647', 'abc@gmail.com'),
(5, 'kiran', 'abc', '1', 'abc@gmail.com'),
(6, 'kiran', 'abc', '2147483647', 'abc@gmail.com'),
(7, 'at', 'abc', '2147483647', 'kiranrajk2003@gmail.com'),
(8, 'at', 'abc', '9876543210', 'kiranrajk2003@gmail.com'),
(9, 'adhi', 'aaa', '9876543250', 'amal@gmail.com'),
(10, 'Rijula', 'shjs', '985465213', 'rashid1325@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `p_id` int(11) NOT NULL,
  `o_id` int(11) NOT NULL,
  `Cons_id` int(11) NOT NULL,
  `bill_amount` varchar(11) NOT NULL,
  `payment method` varchar(25) NOT NULL,
  `payment status` varchar(25) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`p_id`, `o_id`, `Cons_id`, `bill_amount`, `payment method`, `payment status`, `Date`) VALUES
(1, 1, 1, '7', 'paytm', '', '2022-10-01'),
(2, 1, 1, '3', 'paytm', '', '2022-10-01'),
(3, 1, 1, '800', 'gpay', '', '2022-10-01'),
(4, 1, 1, '', 'choose your method', '', '2022-10-30'),
(5, 1, 1, '', 'choose your method', '', '2022-10-30'),
(6, 1, 1, '', 'choose your method', '', '2022-10-30'),
(7, 1, 1, '', 'choose your method', '', '2022-10-30'),
(8, 1, 1, '', 'choose your method', '', '2022-10-30'),
(9, 1, 1, '', 'choose your method', '', '2022-10-30'),
(10, 1, 1, '', 'choose your method', '', '2022-10-30'),
(11, 1, 1, '', 'choose your method', '', '2022-10-30'),
(12, 1, 1, '', 'choose your method', '', '2022-10-30');

-- --------------------------------------------------------

--
-- Table structure for table `work`
--

CREATE TABLE `work` (
  `w_id` int(11) NOT NULL,
  `E_id` int(11) NOT NULL,
  `o_id` int(11) NOT NULL,
  `work` varchar(25) NOT NULL,
  `work_status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `work`
--

INSERT INTO `work` (`w_id`, `E_id`, `o_id`, `work`, `work_status`) VALUES
(1, 2226, 1, 'poyi paniyedkedaaaaa', 'COMPLETED');

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
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`comp_id`);

--
-- Indexes for table `connection`
--
ALTER TABLE `connection`
  ADD PRIMARY KEY (`conn_id`);

--
-- Indexes for table `consumer`
--
ALTER TABLE `consumer`
  ADD PRIMARY KEY (`Cons_id`);

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
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`E_id`);

--
-- Indexes for table `image_reading`
--
ALTER TABLE `image_reading`
  ADD PRIMARY KEY (`i_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `work`
--
ALTER TABLE `work`
  ADD PRIMARY KEY (`w_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `comp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `connection`
--
ALTER TABLE `connection`
  MODIFY `conn_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `consumer`
--
ALTER TABLE `consumer`
  MODIFY `Cons_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `E_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `image_reading`
--
ALTER TABLE `image_reading`
  MODIFY `i_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `organization`
--
ALTER TABLE `organization`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `work`
--
ALTER TABLE `work`
  MODIFY `w_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
