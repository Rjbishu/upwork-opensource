-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 10 Avril 2017 à 16:48
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `winjobx`
--
CREATE DATABASE IF NOT EXISTS `winjobx` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `winjobx`;

-- --------------------------------------------------------

--
-- Structure de la table `adminresettoken`
--

DROP TABLE IF EXISTS `adminresettoken`;
CREATE TABLE `adminresettoken` (
  `id` int(11) NOT NULL,
  `token` varchar(100) NOT NULL,
  `user` varchar(20) NOT NULL,
  `status` varchar(2) NOT NULL,
  `ctime` int(30) NOT NULL,
  `etime` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `adminresettoken`
--

INSERT INTO `adminresettoken` (`id`, `token`, `user`, `status`, `ctime`, `etime`) VALUES
(43, 'e3eb4d4881cd75d219f7ed4fb7cfe51e', '1', '1', 1458927045, 1458937845),
(44, '154dab1587e7dbeab8c900b4e4bdc7ed', '1', '1', 1458927183, 1458937983),
(45, '6569f67932da930d67c7f1e8f4ac00a2', '1', '1', 1458929951, 1458940751),
(46, '1f1db6df057bf9206f7d6396af6d90fd', '1', '1', 1458929966, 1458940766),
(48, 'c1efc57fa035febbc8074680321afa81', '1', '1', 1458931712, 1458942512),
(49, '281be79944e62868b00a8c8ef765236e', '1', '1', 1458931734, 1458942534),
(51, '4e56b82be5325c986a0faa1e7569321c', '1', '1', 1469139039, 1469149839),
(52, '7aee0ff929f83daefdec66a0f897b876', '1', '1', 1469139228, 1469150028),
(53, '2dd6f6ef5393b54f0e963178a706d86f', '1', '1', 1469139628, 1469150428);

-- --------------------------------------------------------

--
-- Structure de la table `billingmethodlist`
--

DROP TABLE IF EXISTS `billingmethodlist`;
CREATE TABLE `billingmethodlist` (
  `sr` int(255) NOT NULL,
  `belongsTo` int(255) NOT NULL,
  `paymentMethod` varchar(11) COLLATE utf8_bin NOT NULL COMMENT 'cc or paypal',
  `attachedTo` int(11) NOT NULL,
  `isPrimary` int(11) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `billingmethodlist`
--

INSERT INTO `billingmethodlist` (`sr`, `belongsTo`, `paymentMethod`, `attachedTo`, `isPrimary`, `isDeleted`) VALUES
(21, 18, 'stripe', 40, 0, 1),
(22, 18, 'stripe', 41, 0, 1),
(55, 18, 'paypal', 36, 0, 1),
(56, 18, 'paypal', 38, 0, 1),
(57, 29, 'paypal', 39, 0, 1),
(58, 18, 'paypal', 40, 0, 1),
(59, 18, 'paypal', 41, 1, 0),
(60, 18, 'stripe', 47, 0, 1),
(61, 18, 'stripe', 48, 0, 1),
(62, 18, 'stripe', 52, 0, 1),
(63, 18, 'stripe', 53, 0, 1),
(64, 18, 'stripe', 54, 0, 1),
(65, 18, 'stripe', 55, 0, 1),
(66, 18, 'stripe', 56, 0, 1),
(67, 18, 'stripe', 57, 0, 1),
(68, 18, 'stripe', 58, 0, 1),
(69, 18, 'stripe', 59, 0, 1),
(70, 18, 'stripe', 60, 0, 1),
(71, 18, 'stripe', 61, 0, 1),
(72, 18, 'stripe', 62, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ccdetails`
--

DROP TABLE IF EXISTS `ccdetails`;
CREATE TABLE `ccdetails` (
  `sr` int(255) NOT NULL,
  `fname` varchar(255) COLLATE utf8_bin NOT NULL,
  `lname` varchar(255) COLLATE utf8_bin NOT NULL,
  `cardNumber` varchar(20) COLLATE utf8_bin NOT NULL,
  `cvv` int(3) NOT NULL,
  `month` int(2) NOT NULL,
  `year` int(4) NOT NULL,
  `country` varchar(255) COLLATE utf8_bin NOT NULL,
  `address` longtext COLLATE utf8_bin NOT NULL,
  `address2` longtext COLLATE utf8_bin NOT NULL,
  `city` varchar(255) COLLATE utf8_bin NOT NULL,
  `zip` varchar(255) COLLATE utf8_bin NOT NULL,
  `dateAdded` double NOT NULL,
  `dateUpdated` double NOT NULL,
  `belongsTo` double NOT NULL COMMENT 'userID from the user''s table',
  `isDeleted` tinyint(4) NOT NULL COMMENT 'update to 0 if user delete the row'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `ccdetails`
--

INSERT INTO `ccdetails` (`sr`, `fname`, `lname`, `cardNumber`, `cvv`, `month`, `year`, `country`, `address`, `address2`, `city`, `zip`, `dateAdded`, `dateUpdated`, `belongsTo`, `isDeleted`) VALUES
(40, 'asda', 'asdasd', '4242', 123, 2, 2017, 'Pakistan', 'asd32', 'asdsad', 'asdsa', '12456', 1477682792, 1477682792, 18, 0),
(41, 'asdsa', 'sdfds', '4242', 123, 2, 2020, 'Pakistan', 'adsfdsf', 'sdfds', 'dsfsd', 'dsf', 1477685897, 1477685897, 18, 0),
(42, 'John', 'Smith', '4242', 123, 1, 2017, 'Pakistan', 'dgfsdg', 'fghdh', 'gdhgh', '2154', 1479583671, 1479583671, 18, 0),
(43, 'John', 'Smith', '4242', 123, 1, 2017, 'Pakistan', 'dgfsdg', 'fghdh', 'gdhgh', '2154', 1479583685, 1479583685, 18, 0),
(44, 'John', 'Smith', '4242', 123, 1, 2017, 'Pakistan', 'dgfsdg', 'fghdh', 'gdhgh', '2154', 1479583691, 1479583691, 18, 0),
(45, 'John ', 'Smith', '4242', 123, 11, 2017, 'Pakistan', 'test', 'test', 'test', '2154', 1479584352, 1479584352, 18, 0),
(46, 'Haseeb', 'Test', '4242', 223, 2, 2018, 'Pakistan', 'test address', 'te', 'rawalpindi', '46000', 1479655130, 1479655130, 18, 0),
(47, 'Haseeb', 'Test', '4242', 223, 2, 2018, 'Pakistan', 'test address', 'te', 'rawalpindi', '46000', 1479655320, 1479655320, 18, 0),
(48, 'Haseeb', 'Ur Rehma', '4242', 122, 5, 2019, 'Pakistan', 'test address', 'test', 'rawalpindi', '46000', 1479655524, 1479655524, 18, 0),
(49, 'Haseeb', 'Haseeb', '4242', 123, 2, 2017, 'Pakistan', 'tesssssst adddddreess', 'Haseeb', 'Islamabad', '44000', 1480453282, 1480453282, 18, 0),
(50, 'Haseeb', 'Haseeb', '4242', 123, 2, 2017, 'Pakistan', 'tesssssst adddddreess', 'Haseeb', 'Islamabad', '44000', 1480453416, 1480453416, 18, 0),
(51, 'Haseeb', 'Haseeb', '4242', 123, 2, 2017, 'Pakistan', 'tesssssst adddddreess', 'Haseeb', 'Islamabad', '44000', 1480453723, 1480453723, 18, 0),
(52, 'Haseeb', 'Haseeb', '4242', 123, 2, 2017, 'Pakistan', 'tesssssst adddddreess', 'Haseeb', 'Islamabad', '44000', 1480453744, 1480453744, 18, 0),
(53, 'Haseeb', 'Ur Rehma', '0002', 123, 2, 2017, 'Pakistan', 'test', 'dfg', 'Islamabad', '44000', 1480515877, 1480515877, 18, 0),
(54, 'Haseeb', 'Ur Rehma', '0002', 123, 2, 2017, 'Pakistan', 'test', 'dfg', 'Islamabad', '44000', 1480515897, 1480515897, 18, 0),
(55, 'Haseeb', 'Ur Rehma', '0002', 123, 2, 2017, 'Pakistan', 'test', 'dfg', 'Islamabad', '44000', 1480516042, 1480516042, 18, 0),
(56, 'Haseeb', 'Ur Rehma', '0002', 123, 2, 2017, 'Pakistan', 'test', 'dfg', 'Islamabad', '44000', 1480516108, 1480516108, 18, 0),
(57, 'Haseeb', 'Ur Rehma', '0002', 123, 2, 2017, 'Pakistan', 'test', 'dfg', 'Islamabad', '44000', 1480516351, 1480516351, 18, 0),
(58, 'Haseeb', 'Ur Rehma', '0002', 123, 2, 2017, 'Pakistan', 'test', 'dfg', 'Islamabad', '44000', 1480516359, 1480516359, 18, 0),
(59, 'Haseeb', 'Ur Rehma', '0002', 123, 2, 2017, 'Pakistan', 'test', 'dfg', 'Islamabad', '44000', 1480516398, 1480516398, 18, 0),
(60, 'Haseeb', 'Ur Rehma', '5564', 123, 2, 2017, 'Pakistan', 'test', 'dfg', 'Islamabad', '44000', 1480516656, 1480516656, 18, 0),
(61, 'Haseeb', 'deb', '5556', 123, 2, 2018, 'Pakistan', 'teras', 'asdsa', 'Islamabad', '44000', 1480516905, 1480516905, 18, 0),
(62, 'John', 'Smith', '4242', 123, 2, 2019, 'Pakistan', 'sdd', 'dfdf', 'dfd', '1234', 1490117867, 1490117867, 18, 0);

-- --------------------------------------------------------

--
-- Structure de la table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(100) NOT NULL,
  `country_shortcode` varchar(50) NOT NULL,
  `country_dialingcode` varchar(50) NOT NULL,
  `country_currency` varchar(50) NOT NULL,
  `country_currencycode` varchar(50) NOT NULL,
  `country_sub` varchar(2) NOT NULL,
  `country_avaliable` varchar(3) NOT NULL,
  `country_index` int(10) NOT NULL,
  `country_status` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `country`
--

INSERT INTO `country` (`country_id`, `country_name`, `country_shortcode`, `country_dialingcode`, `country_currency`, `country_currencycode`, `country_sub`, `country_avaliable`, `country_index`, `country_status`) VALUES
(1, 'UK', 'GB', '+44', '', '', '', '', 0, '1'),
(2, 'USA', 'US', '+1', '', '', '', '', 0, '1'),
(3, 'Algeria', 'DZ', '+213', '', '', '', '', 0, '1'),
(4, 'Andorra', 'AD', '+376', '', '', '', '', 0, '1'),
(5, 'Angola', 'AO', '+244', '', '', '', '', 0, '1'),
(6, 'Anguilla', 'AI', '+1264', '', '', '', '', 0, ''),
(7, 'Antigua & Barbuda', 'AG', '+1268', '', '', '', '', 0, '1'),
(8, 'Argentina', 'AR', '+54', '', '', '', '', 0, '1'),
(9, 'Armenia', 'AM', '+374', '', '', '', '', 0, '1'),
(10, 'Aruba', 'AW', '+297', '', '', '', '', 0, '1'),
(11, 'Australia', 'AU', '+61', '', '', '', '', 0, '1'),
(12, 'Austria', 'AT', '+43', '', '', '', '', 0, '1'),
(13, 'Azerbaijan', 'AZ', '+994', '', '', '', '', 0, '1'),
(14, 'Bahamas', 'BS', '+1242', '', '', '', '', 0, '1'),
(15, 'Bahrain', 'BH', '+973', '', '', '', '', 0, '1'),
(16, 'Bangladesh', 'BD', '+880', '', '', '', '', 0, '1'),
(17, 'Barbados', 'BB', '+1246', '', '', '', '', 0, '1'),
(18, 'Belarus', 'BY', '+375', '', '', '', '', 0, '1'),
(19, 'Belgium', 'BE', '+32', '', '', '', '', 0, '1'),
(20, 'Belize', 'BZ', '+501', '', '', '', '', 0, '1'),
(21, 'Benin', 'BJ', '+229', '', '', '', '', 0, '1'),
(22, 'Bermuda', 'BM', '+1441', '', '', '', '', 0, '1'),
(23, 'Bhutan', 'BT', '+975', '', '', '', '', 0, '1'),
(24, 'Bolivia', 'BO', '+591', '', '', '', '', 0, '1'),
(25, 'Bosnia Herzegovina', 'BA', '+387', '', '', '', '', 0, '1'),
(26, 'Botswana', 'BW', '+267', '', '', '', '', 0, '1'),
(27, 'Brazil', 'BR', '+55', '', '', '', '', 0, '1'),
(28, 'Brunei', 'BN', '+673', '', '', '', '', 0, '1'),
(29, 'Bulgaria', 'BG', '+359', '', '', '', '', 0, '1'),
(30, 'Burkina Faso', 'BF', '+226', '', '', '', '', 0, '1'),
(31, 'Burundi', 'BI', '+257', '', '', '', '', 0, '1'),
(32, 'Cambodia', 'KH', '+855', '', '', '', '', 0, '1'),
(33, 'Cameroon', 'CM', '+327', '', '', '', '', 0, '1'),
(34, 'Canada', 'CA', '+1', '', '', '', '', 0, '1'),
(35, 'Cape Verde Islands', 'CV', '+238', '', '', '', '', 0, '1'),
(36, 'Cayman Islands', 'KY', '+1345', '', '', '', '', 0, '1'),
(37, 'Central African Republic', 'CF', '+236', '', '', '', '', 0, '1'),
(38, 'Chile', 'CL', '+56', '', '', '', '', 0, '1'),
(39, 'China', 'CN', '+86', '', '', '', '', 0, '1'),
(40, 'Colombia', 'CO', '+57', '', '', '', '', 0, '1'),
(41, 'Comoros', 'KM', '+269', '', '', '', '', 0, '1'),
(42, 'Congo', 'CG', '+242', '', '', '', '', 0, '1'),
(43, 'Cook Islands', 'CK', '+682', '', '', '', '', 0, '1'),
(44, 'Costa Rica', 'CR', '+506', '', '', '', '', 0, '1'),
(45, 'Croatia', 'HR', '+385', '', '', '', '', 0, '1'),
(46, 'Cuba', 'CU', '+53', '', '', '', '', 0, '1'),
(47, 'Cyprus North', 'CY', '+90392', '', '', '', '', 0, '1'),
(48, 'Cyprus South', 'CY', '+357', '', '', '', '', 0, '1'),
(49, 'Czech Republic', 'CZ', '+42', '', '', '', '', 0, '1'),
(50, 'Denmark', 'DK', '+45', '', '', '', '', 0, '1'),
(51, 'Djibouti', 'DJ', '+253', '', '', '', '', 0, '1'),
(52, 'Dominica', 'DM', '+1809', '', '', '', '', 0, '1'),
(53, 'Dominican Republic', 'DO', '+1809', '', '', '', '', 0, '1'),
(54, 'Ecuador', 'EC', '+593', '', '', '', '', 0, '1'),
(55, 'Egypt', 'EG', '+20', '', '', '', '', 0, '1'),
(56, 'El Salvador', 'SV', '+503', '', '', '', '', 0, '1'),
(57, 'Equatorial Guinea', 'GQ', '+240', '', '', '', '', 0, '1'),
(58, 'Eritrea', 'ER', '+291', '', '', '', '', 0, '1'),
(59, 'Estonia', 'EE', '+372', '', '', '', '', 0, '1'),
(60, 'Ethiopia', 'ET', '+251', '', '', '', '', 0, '1'),
(61, 'Falkland Islands', 'FK', '+500', '', '', '', '', 0, '1'),
(62, 'Faroe Islands', 'FO', '+298', '', '', '', '', 0, '1'),
(63, 'Fiji', 'FJ', '+679', '', '', '', '', 0, '1'),
(64, 'Finland', 'FI', '+358', '', '', '', '', 0, '1'),
(65, 'France', 'FR', '+33', '', '', '', '', 0, '1'),
(66, 'French Guiana', 'GF', '+594', '', '', '', '', 0, '1'),
(67, 'French Polynesia', 'PF', '+689', '', '', '', '', 0, '1'),
(68, 'Gabon', 'GA', '+241', '', '', '', '', 0, '1'),
(69, 'Gambia', 'GM', '+220', '', '', '', '', 0, '1'),
(70, 'Georgia', 'GE', '+7880', '', '', '', '', 0, '1'),
(71, 'Germany', 'DE', '+49', '', '', '', '', 0, '1'),
(72, 'Ghana', 'GH', '+233', '', '', '', '', 0, '1'),
(73, 'Gibraltar', 'GI', '+350', '', '', '', '', 0, '1'),
(74, 'Greece', 'GR', '+30', '', '', '', '', 0, '1'),
(75, 'Greenland', 'GL', '+299', '', '', '', '', 0, '1'),
(76, 'Grenada', 'GD', '+1473', '', '', '', '', 0, '1'),
(77, 'Guadeloupe', 'GP', '+590', '', '', '', '', 0, '1'),
(78, 'Guatemala', 'GT', '502', '', '', '', '', 0, '1'),
(79, 'Guinea', 'GN', '+224', '', '', '', '', 0, '1'),
(80, 'Guinea - Bissau', 'GW', '+245', '', '', '', '', 0, '1'),
(81, 'Guyana', 'GY', '+592', '', '', '', '', 0, '1'),
(82, 'Haiti', 'HT', '+509', '', '', '', '', 0, '1'),
(83, 'Honduras', 'HN', '+504', '', '', '', '', 0, '1'),
(84, 'Hong Kong', 'HK', '+852', '', '', '', '', 0, '1'),
(85, 'Hungary', 'HU', '+36', '', '', '', '', 0, '1'),
(86, 'Iceland', 'IS', '+354', '', '', '', '', 0, '1'),
(87, 'India', 'IN', '+91', '', '', '', '', 0, '1'),
(88, 'Indonesia', 'ID', '+62', '', '', '', '', 0, '1'),
(89, 'Iran', 'IR', '+98', '', '', '', '', 0, '1'),
(90, 'Iraq', 'IQ', '+964', '', '', '', '', 0, '1'),
(91, 'Ireland', 'IE', '+353', '', '', '', '', 0, '1'),
(92, 'Israel', 'IL', '+972', '', '', '', '', 0, '1'),
(93, 'Italy', 'IT', '+39', '', '', '', '', 0, '1'),
(94, 'Jamaica', 'JM', '+1876', '', '', '', '', 0, '1'),
(95, 'Japan', 'JP', '+81', '', '', '', '', 0, '1'),
(96, 'Jordan', 'JO', '+962', '', '', '', '', 0, '1'),
(97, 'Kazakhstan', 'KZ', '+7', '', '', '', '', 0, '1'),
(98, 'Kenya', 'KE', '+254', '', '', '', '', 0, '1'),
(99, 'Kiribati', 'KI', '+686', '', '', '', '', 0, '1'),
(100, 'Korea North', 'KP', '+850', '', '', '', '', 0, '1'),
(101, 'Korea South', 'KR', '+82', '', '', '', '', 0, '1'),
(102, 'Kuwait', 'KW', '+965', '', '', '', '', 0, '1'),
(103, 'Kyrgyzstan', 'KG', '+996', '', '', '', '', 0, '1'),
(104, 'Laos', 'LA', '+856', '', '', '', '', 0, '1'),
(105, 'Latvia', 'LV', '+371', '', '', '', '', 0, '1'),
(106, 'Lebanon', 'LB', '+961', '', '', '', '', 0, '1'),
(107, 'Lesotho', 'LS', '+266', '', '', '', '', 0, '1'),
(108, 'Liberia', 'LR', '+231', '', '', '', '', 0, '1'),
(109, 'Libya', 'LY', '+218', '', '', '', '', 0, '1'),
(110, 'Liechtenstein', 'LI', '+417', '', '', '', '', 0, '1'),
(111, 'Lithuania', 'LT', '+370', '', '', '', '', 0, '1'),
(112, 'Luxembourg', 'LU', '+352', '', '', '', '', 0, '1'),
(113, 'Macao', 'MO', '+853', '', '', '', '', 0, '1'),
(114, 'Macedonia', 'MK', '+389', '', '', '', '', 0, '1'),
(115, 'Madagascar', 'MG', '+261', '', '', '', '', 0, '1'),
(116, 'Malawi', 'MW', '+265', '', '', '', '', 0, '1'),
(117, 'Malaysia', 'MY', '+60', '', '', '', '', 0, '1'),
(118, 'Maldives', 'MV', '+960', '', '', '', '', 0, '1'),
(119, 'Mali', 'ML', '+223', '', '', '', '', 0, '1'),
(120, 'Malta', 'MT', '+356', '', '', '', '', 0, '1'),
(121, 'Marshall Islands', 'MH', '+692', '', '', '', '', 0, '1'),
(122, 'Martinique', 'MQ', '+596', '', '', '', '', 0, '1'),
(123, 'Mauritania', 'MR', '+222', '', '', '', '', 0, '1'),
(124, 'Mayotte', 'YT', '+269', '', '', '', '', 0, '1'),
(125, 'Mexico', 'MX', '+52', '', '', '', '', 0, '1'),
(126, 'Micronesia', 'FM', '+691', '', '', '', '', 0, '1'),
(127, 'Moldova', 'MD', '+373', '', '', '', '', 0, '1'),
(128, 'Monaco', 'MC', '+377', '', '', '', '', 0, '1'),
(129, 'Mongolia', 'MN', '+976', '', '', '', '', 0, '1'),
(130, 'Montserrat', 'MS', '+1664', '', '', '', '', 0, '1'),
(131, 'Morocco', 'MA', '+212', '', '', '', '', 0, '1'),
(132, 'Mozambique', 'MZ', '+258', '', '', '', '', 0, '1'),
(133, 'Myanmar', 'MN', '+95', '', '', '', '', 0, '1'),
(134, 'Namibia', 'NA', '+264', '', '', '', '', 0, '1'),
(135, 'Nauru', 'NR', '+674', '', '', '', '', 0, '1'),
(136, 'Nepal', 'NP', '+977', '', '', '', '', 0, '1'),
(137, 'Netherlands', 'NL', '+31', '', '', '', '', 0, '1'),
(138, 'New Caledonia', 'NC', '+687', '', '', '', '', 0, '1'),
(139, 'Nicaragua', 'NI', '+505', '', '', '', '', 0, '1'),
(140, 'New Zealand', 'NZ', '+64', '', '', '', '', 0, '1'),
(141, 'Niger', 'NE', '+227', '', '', '', '', 0, '1'),
(142, 'Nigeria', 'NG', '234', '', '', '', '', 0, '1'),
(143, 'Niue', 'NU', '+683', '', '', '', '', 0, '1'),
(144, 'Norfolk Islands', 'NF', '+672', '', '', '', '', 0, '1'),
(145, 'Northern Marianas', 'NP', '+670', '', '', '', '', 0, '1'),
(146, 'Norway', 'NO', '+47', '', '', '', '', 0, '1'),
(147, 'Oman', 'OM', '+968', '', '', '', '', 0, '1'),
(148, 'Palau', 'PW', '+680', '', '', '', '', 0, '1'),
(149, 'Panama', 'PA', '+507', '', '', '', '', 0, '1'),
(150, 'Papua New Guinea', 'PG', '+675', '', '', '', '', 0, '1'),
(151, 'Paraguay', 'PY', '595', '', '', '', '', 0, '1'),
(152, 'Peru', 'PE', '+51', '', '', '', '', 0, '1'),
(153, 'Philippines', 'PH', '+63', '', '', '', '', 0, '1'),
(154, 'Poland', 'PL', '+48', '', '', '', '', 0, '1'),
(155, 'Portugal', 'PT', '+351', '', '', '', '', 0, '1'),
(156, 'Puerto Rico', 'PR', '+1787', '', '', '', '', 0, '1'),
(157, 'Qatar', 'QA', '+974', '', '', '', '', 0, '1'),
(158, 'Reunion', 'RE', '+262', '', '', '', '', 0, '1'),
(159, 'Romania', 'RO', '+40', '', '', '', '', 0, '1'),
(160, 'Russia', 'RU', '+7', '', '', '', '', 0, '1'),
(161, 'Rwanda', 'RW', '+250', '', '', '', '', 0, '1'),
(162, 'San Marino', 'SM', '+378', '', '', '', '', 0, '1'),
(163, 'Sao Tome & Principe', 'ST', '+239', '', '', '', '', 0, '1'),
(164, 'Saudi Arabia', 'SA', '+966', '', '', '', '', 0, '1'),
(165, 'Senegal', 'SN', '+221', '', '', '', '', 0, '1'),
(166, 'Serbia', 'CS', '+381', '', '', '', '', 0, '1'),
(167, 'Seychelles', 'SC', '+248', '', '', '', '', 0, '1'),
(168, 'Sierra Leone', 'SL', '+232', '', '', '', '', 0, '1'),
(169, 'Singapore', 'SG', '+65', '', '', '', '', 0, '1'),
(170, 'Slovak Republic', 'SK', '+421', '', '', '', '', 0, '1'),
(171, 'Slovenia', 'SI', '+386', '', '', '', '', 0, '1'),
(172, 'Solomon Islands', 'SB', '+677', '', '', '', '', 0, '1'),
(173, 'Somalia', 'SO', '+252', '', '', '', '', 0, '1'),
(174, 'South Africa', 'ZA', '+27', '', '', '', '', 0, '1'),
(175, 'Spain', 'ES', '+34', '', '', '', '', 0, '1'),
(176, 'Sri Lanka', 'LK', '+94', '', '', '', '', 0, '1'),
(177, 'St. Helena', 'SH', '+290', '', '', '', '', 0, '1'),
(178, 'St. Kitts', 'KN', '+1869', '', '', '', '', 0, '1'),
(179, 'St. Lucia', 'SC', '+1758', '', '', '', '', 0, '1'),
(180, 'Sudan', 'SD', '+249', '', '', '', '', 0, '1'),
(181, 'Suriname', 'SR', '+597', '', '', '', '', 0, '1'),
(182, 'Swaziland', 'SZ', '+268', '', '', '', '', 0, '1'),
(183, 'Sweden', 'SE', '+46', '', '', '', '', 0, '1'),
(184, 'Switzerland', 'CH', '+41', '', '', '', '', 0, '1'),
(185, 'Syria', 'SI', '+963', '', '', '', '', 0, '1'),
(186, 'Taiwan', 'TW', '+886', '', '', '', '', 0, '1'),
(187, 'Tajikstan', 'TJ', '+7', '', '', '', '', 0, '1'),
(188, 'Thailand', 'TH', '+66', '', '', '', '', 0, '1'),
(189, 'Togo', 'TG', '+228', '', '', '', '', 0, '1'),
(190, 'Tonga', 'TO', '+676', '', '', '', '', 0, '1'),
(191, 'Trinidad & Tobago', 'TT', '+1868', '', '', '', '', 0, '1'),
(192, 'Tunisia', 'TN', '+216', '', '', '', '', 0, '1'),
(193, 'Turkey', 'TR', '+90', '', '', '', '', 0, '1'),
(194, 'Turkmenistan', 'TM', '+7', '', '', '', '', 0, '1'),
(195, 'Turkmenistan', 'TM', '+993', '', '', '', '', 0, '1'),
(196, 'Turks & Caicos Islands', 'TC', '+1649', '', '', '', '', 0, '1'),
(197, 'Tuvalu', 'TV', '+688', '', '', '', '', 0, '1'),
(198, 'Uganda', 'UG', '+256', '', '', '', '', 0, '1'),
(199, 'Ukraine', 'UA', '+380', '', '', '', '', 0, '1'),
(200, 'United Arab Emirates', 'AE', '+971', '', '', '', '', 0, '1'),
(201, 'Uruguay', 'UY', '+598', '', '', '', '', 0, '1'),
(202, 'Uzbekistan', 'UZ', '+7', '', '', '', '', 0, '1'),
(203, 'Vanuatu', 'VU', '+678', '', '', '', '', 0, '1'),
(204, 'Vatican City', 'VA', '+379', '', '', '', '', 0, '1'),
(205, 'Venezuela', 'VE', '+58', '', '', '', '', 0, '1'),
(206, 'Vietnam', 'VN', '+84', '', '', '', '', 0, '1'),
(207, 'Virgin Islands - British', 'VG', '+1284', '', '', '', '', 0, '1'),
(208, 'Virgin Islands - US', 'VI', '+1340', '', '', '', '', 0, '1'),
(209, 'Wallis & Futuna', 'WF', '+681', '', '', '', '', 0, '1'),
(210, 'Yemen (North)', 'YE', '+969', '', '', '', '', 0, '1'),
(211, 'Yemen (South)', 'YE', '+967', '', '', '', '', 0, '1'),
(212, 'Zambia', 'ZM', '+260', '', '', '', '', 0, '1'),
(213, 'Zimbabwe', 'ZW', '+263', '', '', '', '', 0, '1');

-- --------------------------------------------------------

--
-- Structure de la table `daily_hourly_invoice`
--

DROP TABLE IF EXISTS `daily_hourly_invoice`;
CREATE TABLE `daily_hourly_invoice` (
  `id_daily_hourly_invoice` int(11) NOT NULL,
  `contract_id` int(100) NOT NULL,
  `des` text NOT NULL,
  `fuser_id` int(10) NOT NULL,
  `cuser_id` int(10) NOT NULL,
  `trans_through` varchar(100) NOT NULL,
  `transaction_id` varchar(100) NOT NULL,
  `invoice_no` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL,
  `currency` varchar(20) NOT NULL,
  `amount` decimal(10,3) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `daily_hourly_transaction`
--

DROP TABLE IF EXISTS `daily_hourly_transaction`;
CREATE TABLE `daily_hourly_transaction` (
  `id_daily_hourly_transaction` int(11) NOT NULL,
  `contract_id` varchar(100) NOT NULL,
  `des` text NOT NULL,
  `fuser_id` int(10) NOT NULL,
  `cuser_id` int(10) NOT NULL,
  `trans_through` varchar(100) NOT NULL,
  `transaction_id` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL,
  `currency` varchar(20) NOT NULL,
  `amount` decimal(10,3) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `daily_hourly_transaction`
--

INSERT INTO `daily_hourly_transaction` (`id_daily_hourly_transaction`, `contract_id`, `des`, `fuser_id`, `cuser_id`, `trans_through`, `transaction_id`, `status`, `currency`, `amount`, `date`) VALUES
(1, '13_NYVK5HQ3QP', '1hrs*$5.00', 13, 18, 'paypal', '49B73233JS3005517', 'Processed', '', '5.000', '2017-02-05 11:59:59'),
(2, '13_3Q6QGBXY20', '5hrs*$5.00', 13, 18, 'paypal', '4VV765549N6529153', 'Processed', '', '25.000', '2017-02-06 11:59:59'),
(3, '13_NYVK5HQ3QP', '5hrs*$5.00', 13, 18, 'paypal', '2H871260K5306254F', 'Processed', '', '25.000', '2017-02-21 11:59:59'),
(4, '13_3Q6QGBXY20', '1hrs*$5.00', 13, 18, 'paypal', '98V44572SM6041738', 'Processed', '', '5.000', '2017-03-01 11:59:59'),
(5, '13_3Q6QGBXY20', '3hrs*$5.00', 13, 18, 'stripe', 'ch_1A0FU4C3aXjEIlyVXTQ8Sd5S', 'Processed', '', '15.000', '2017-03-21 11:59:59'),
(6, '13_NYVK5HQ3QP', '4hrs*$5.00', 13, 18, 'paypal', '32942857AB511993E', 'Processed', '', '20.000', '2017-03-24 11:59:59'),
(7, '13_3Q6QGBXY20', '3hrs*$5.00', 13, 18, 'paypal', '5NB99321KX267570B', 'Processed', '', '15.000', '2017-03-25 11:59:59'),
(8, '13_NYVK5HQ3QP', '2hrs*$5.00', 13, 18, 'paypal', '32410708VH209382Y', 'Processed', '', '10.000', '2017-04-04 11:59:59'),
(9, '13_NYVK5HQ3QP', '5hrs*$5.00', 13, 18, 'paypal', '1AH73721T6583002E', 'Processed', '', '25.000', '2017-04-05 11:59:59');

-- --------------------------------------------------------

--
-- Structure de la table `freelancer_education`
--

DROP TABLE IF EXISTS `freelancer_education`;
CREATE TABLE `freelancer_education` (
  `id` int(11) NOT NULL,
  `fuser_id` int(11) NOT NULL,
  `school` varchar(300) NOT NULL,
  `dates_attend_from` varchar(100) NOT NULL,
  `dates_attend_to` varchar(100) NOT NULL,
  `degree` varchar(300) NOT NULL,
  `field_of_study` varchar(300) NOT NULL,
  `grade` decimal(10,3) NOT NULL,
  `activities` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `freelancer_education`
--

INSERT INTO `freelancer_education` (`id`, `fuser_id`, `school`, `dates_attend_from`, `dates_attend_to`, `degree`, `field_of_study`, `grade`, `activities`, `description`) VALUES
(3, 26, 'rsv', '1982', '1981', 'btech', 'adadad', '0.000', 'adadad', 'adada adad'),
(4, 9, 'dfdfg', '1995', '1993', 'fgfg', 'fgfg', '0.000', 'fgfg', 'fgfg'),
(9, 13, 'S1', '1984', '1988', 'D1', 'FS1', '0.000', 'AaS1', 'Descr1'),
(10, 13, 'S1', '1984', '1988', 'D1', 'FS1', '0.000', 'AaS1', 'Descr1'),
(15, 13, 'S1', '1984', '1988', 'D1', 'FS1', '0.000', 'AaS1', 'Descr1');

-- --------------------------------------------------------

--
-- Structure de la table `hourly_invoices`
--

DROP TABLE IF EXISTS `hourly_invoices`;
CREATE TABLE `hourly_invoices` (
  `id` int(11) NOT NULL,
  `invoice_service_id` varchar(255) NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `status` enum('PAID','PROCESSING_FAILED','UNPAID','') NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `hourly_invoices`
--

INSERT INTO `hourly_invoices` (`id`, `invoice_service_id`, `service_name`, `transaction_id`, `status`, `created_at`, `updated_at`) VALUES
(13, 'in_1A6LvzC3aXjEIlyVPmhwkSlb', 'stripe', 'txn_1A6LwKC3aXjEIlyVeHMd6hFH', 'PAID', '2017-04-05 18:00:16', '2017-04-05 18:00:16');

-- --------------------------------------------------------

--
-- Structure de la table `hourly_invoices_items`
--

DROP TABLE IF EXISTS `hourly_invoices_items`;
CREATE TABLE `hourly_invoices_items` (
  `id` int(11) NOT NULL,
  `bid_id` int(11) NOT NULL,
  `amount_due` double NOT NULL,
  `description` text NOT NULL,
  `status` enum('UNPAID','PAID','PROCESSING_FAILED','') NOT NULL DEFAULT 'UNPAID',
  `unpaid_reason` text,
  `invoice_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `hourly_invoices_items`
--

INSERT INTO `hourly_invoices_items` (`id`, `bid_id`, `amount_due`, `description`, `status`, `unpaid_reason`, `invoice_id`, `created_at`, `updated_at`) VALUES
(10, 210, 10, 'Invoice for Contract ID: 13_NYVK5HQ3QP - 2hrs*$5.00/hr', 'PAID', NULL, '13', '2017-04-05 19:00:16', '2017-04-05 19:00:16'),
(9, 210, 15, 'Invoice for Contract ID: 13_NYVK5HQ3QP - 3hrs*$5.00/hr', 'PAID', NULL, '13', '2017-04-05 18:56:33', '2017-04-05 18:56:33');

-- --------------------------------------------------------

--
-- Structure de la table `instagramtoken`
--

DROP TABLE IF EXISTS `instagramtoken`;
CREATE TABLE `instagramtoken` (
  `instagramtoken_id` int(11) NOT NULL,
  `instagramtoken_owner` varchar(100) NOT NULL,
  `instagramtoken_userid` varchar(100) NOT NULL,
  `instagramtoken_usertoken` varchar(200) NOT NULL,
  `instagramtoken_name` varchar(100) NOT NULL,
  `instagramtoken_username` varchar(50) NOT NULL,
  `instagramtoken_picture` varchar(500) NOT NULL,
  `instagramtoken_media` varchar(10) NOT NULL,
  `instagramtoken_followedby` varchar(10) NOT NULL,
  `instagramtoken_follows` varchar(10) NOT NULL,
  `instagramtoken_status` varchar(2) NOT NULL,
  `instagramtoken_updated` varchar(30) NOT NULL,
  `instagramtoken_added` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `instagramtoken`
--

INSERT INTO `instagramtoken` (`instagramtoken_id`, `instagramtoken_owner`, `instagramtoken_userid`, `instagramtoken_usertoken`, `instagramtoken_name`, `instagramtoken_username`, `instagramtoken_picture`, `instagramtoken_media`, `instagramtoken_followedby`, `instagramtoken_follows`, `instagramtoken_status`, `instagramtoken_updated`, `instagramtoken_added`) VALUES
(7, 'na', '665850116', '665850116.9d4f6d0.910bbf5551c94e3dbeac83b9b5657a9a', 'Noam', 'noampinch', 'https://scontent.cdninstagram.com/t51.2885-19/11296870_872387159494395_697383944_a.jpg', '19', '54', '34', '1', '1469933454', '1469890816'),
(9, 'na', '1524272104', '1524272104.9d4f6d0.da8ee346945f4265a7790fd0797150d7', 'Sabbir Hossain Sagar', 'sagarmebd', 'https://scontent.cdninstagram.com/t51.2885-19/s150x150/12965801_960344197407034_1432089091_a.jpg', '87', '829', '580', '1', '1469962249', '1469961581');

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `category` int(11) DEFAULT NULL,
  `job_description` text,
  `job_type` varchar(100) DEFAULT NULL,
  `skills` text,
  `job_duration` varchar(100) DEFAULT NULL,
  `experience_level` varchar(100) DEFAULT NULL,
  `budget` float(10,2) DEFAULT NULL,
  `hours_per_week` varchar(100) DEFAULT NULL,
  `userfile` varchar(200) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0=>close,open=>1',
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `job_created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `jobs`
--

INSERT INTO `jobs` (`id`, `user_id`, `title`, `category`, `job_description`, `job_type`, `skills`, `job_duration`, `experience_level`, `budget`, `hours_per_week`, `userfile`, `status`, `created`, `job_created`) VALUES
(49, 35, 'seo ', 80, 'need seo for few website', 'fixed', 'seo ', 'less_than_1_week', 'Entry level', 1000.00, 'not_sure', '', 0, '2016-10-14 16:33:27', '0000-00-00 00:00:00'),
(50, 29, 'Wordpress Web Development', 1, 'Wordpress Web Development', 'fixed', 'PHP, ', '3_6_months', 'Entry level', 100.00, 'not_sure', '', 0, '2016-10-14 18:38:22', '0000-00-00 00:00:00'),
(59, 37, 'House keeper ', 32, 'Sweeping dusting,mopping, wiping down walls and desks. ', 'hourly', 'House keeper /Janitor ', 'more_than_6_months', 'Entry level', 0.00, '10-19', '/uploads/147779522717037.pdf', 0, '2016-10-30 02:40:52', '0000-00-00 00:00:00'),
(65, 29, 'houry testing job', 9, 'sdgggggggggggggggggggggggggggggggggggggggggggg\r\nfdghhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh\r\ndgfhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', 'hourly', 'PHP, ', '3_6_months', 'Experienced', 0.00, '1-9', '/uploads/1479844248144229.png', 0, '2016-11-22 19:50:48', '0000-00-00 00:00:00'),
(72, 29, 'Categorty test 1', 84, 'Categorty test 1', 'hourly', 'PHP', '3_6_months', 'Entry level', 0.00, '1-9', '', 0, '2016-11-24 15:00:11', '0000-00-00 00:00:00'),
(73, 29, 'catergory 2', 1, 'Create website current website is www.movingtargets.ca Use this as a basic outline of what I need. -must be easy to add or remove a product -integrated inventory tracking. Only sell product that is in stock. List products as in stock or out of stock -phone and desktop friendly -send to search engines, do initial SEO -main shipper for canada is Canpar courier. Canpar will provide sandbox to test website. -secondary couriers for international shipping are Fedex and DHL. Use the courier that is the least expensive -website will notify me when an order is placed, print out shipping labels -payment methods are paypal and credit card If this one is successful I have one other online store to create', 'fixed', 'PHP', '1_3_months', 'Entry level', 500.00, 'not_sure', '', 0, '2016-11-24 15:11:03', '0000-00-00 00:00:00'),
(74, 29, 'category 3', 84, 'Create website current website is www.movingtargets.ca Use this as a basic outline of what I need. -must be easy to add or remove a product -integrated inventory tracking. Only sell product that is in stock. List products as in stock or out of stock -phone and desktop friendly -send to search engines, do initial SEO -main shipper for canada is Canpar courier. Canpar will provide sandbox to test website. -secondary couriers for international shipping are Fedex and DHL. Use the courier that is the least expensive -website will notify me when an order is placed, print out shipping labels -payment methods are paypal and credit card If this one is successful I have one other online store to create', 'hourly', 'HTML', '3_6_months', 'Entry level', 0.00, '20-29', '', 0, '2016-11-24 15:11:35', '0000-00-00 00:00:00'),
(75, 29, 'category 4', 84, 'gdfhgfdhj', 'fixed', 'Jquery', '3_6_months', 'Entry level', 100.00, 'not_sure', '', 0, '2016-11-24 15:12:00', '0000-00-00 00:00:00'),
(82, 29, 'Archive testing', 80, 'dfhggtfdh', 'fixed', 'PHP', '3_6_months', 'Entry level', 500.00, 'not_sure', '', 0, '2016-12-03 17:04:50', '0000-00-00 00:00:00'),
(180, 18, 'testing', 1, 'Description We are looking for Business Development Manager For IT Company with experience in handling International clients and who can work on commission base only.Arranging business meetings with prospective clients.Developing a growth strategy focused both on financial gain and customer satisfaction.Generate Business from Online Bidding Portals (Upwork / Freelancer) and from other websites.Able to propose project budgeting to client.Can hire talented and highly-motivated employees.Who can work on commission basis.Build long-term relationships with new and existing customers. Qualities needed to be successful • Excellent English in Read, Write and Verbal are important. • Above 2 Years of working experience in Business Development. • Proven working experience as a business development manager, sales executive. • Proven sales track record. • Can hire talented and highly-motivated employees. • Experience in customer support is a plus. • Knowledge of SEO/ Internet marketing, Web Applications, eCommerce, CMS, etc. • Proficiency in English. • Market knowledge. • Should be highly self motivated and ambitious in achieving goals. • Should be capable of thriving in the competitive market. • Must have business mindset, not a job mindset. • Communication and negotiation skills. • Time management and planning skills.', 'hourly', '', 'more_than_6_months', 'Entry level', 0.00, '1-9', '', 0, '2017-03-07 21:38:06', '2017-03-07 21:38:06'),
(179, 18, 'php hourly', 1, 'Description We are looking for Business Development Manager For IT Company with experience in handling International clients and who can work on commission base only. • Arranging business meetings with prospective clients. • Developing a growth strategy focused both on financial gain and customer satisfaction. • Generate Business from Online Bidding Portals (Upwork / Freelancer) and from other websites. • Able to propose project budgeting to client. •Can hire talented and highly-motivated employees. •Who can work on commission basis. • Build long-term relationships with new and existing customers. Qualities needed to be successful • Excellent English in Read, Write and Verbal are important. • Above 2 Years of working experience in Business Development. • Proven working experience as a business development manager, sales executive. • Proven sales track record. • Can hire talented and highly-motivated employees. • Experience in customer support is a plus. • Knowledge of SEO/ Internet marketing, Web Applications, eCommerce, CMS, etc. • Proficiency in English. • Market knowledge. • Should be highly self motivated and ambitious in achieving goals. • Should be capable of thriving in the competitive market. • Must have business mindset, not a job mindset. • Communication and negotiation skills. • Time management and planning skills.', 'hourly', '', '3_6_months', 'Entry level', 0.00, '10-19', '', 0, '2017-03-04 17:33:54', '2017-03-04 17:33:54'),
(178, 18, 'Developer testing ', 1, 'Developer testing ', 'fixed', '', '3_6_months', 'Entry level', 15.00, 'not_sure', '', 0, '2017-03-03 21:06:24', '2017-03-03 21:06:24'),
(177, 18, 't9', 1, 'g09', 'hourly', '', 'not_sure', 'Entry level', 0.00, 'not_sure', '', 0, '2017-02-27 20:49:38', '2017-02-27 20:49:38'),
(90, 41, 'seo for 20 websites ', 29, 'i need seo ', 'fixed', 'HTML', 'less_than_1_week', 'Entry level', 450.00, 'not_sure', '', 0, '2016-12-04 19:56:20', '0000-00-00 00:00:00'),
(158, 18, 'test', 1, 'test', 'hourly', 'PHP', 'more_than_6_months', 'Entry level', 0.00, '10-19', '', 0, '2017-02-27 18:05:05', '0000-00-00 00:00:00'),
(159, 18, 'test', 1, 'test', 'hourly', 'PHP', 'more_than_6_months', 'Entry level', 0.00, '10-19', '', 0, '2017-02-27 18:07:18', '0000-00-00 00:00:00'),
(160, 18, 'test', 1, 'test', 'hourly', '', 'more_than_6_months', 'Entry level', 0.00, '10-19', '', 0, '2017-02-27 18:07:56', '2017-02-27 18:07:56'),
(161, 18, 'test', 1, 'test', 'hourly', '', 'not_sure', 'Entry level', 0.00, 'not_sure', '', 0, '2017-02-27 18:57:48', '2017-02-27 18:57:48'),
(162, 18, 'test', 1, 'test', 'hourly', '', 'not_sure', 'Entry level', 0.00, 'not_sure', '', 0, '2017-02-27 19:01:48', '2017-02-27 19:01:48'),
(163, 18, 'test', 1, 'test', 'hourly', '', 'not_sure', 'Entry level', 0.00, 'not_sure', '', 0, '2017-02-27 19:20:46', '2017-02-27 19:20:46'),
(164, 18, 'test', 1, 'test', 'hourly', '', 'not_sure', 'Entry level', 0.00, 'not_sure', '', 0, '2017-02-27 19:25:13', '2017-02-27 19:25:13'),
(165, 18, 'test', 1, 'test', 'hourly', '', 'not_sure', 'Entry level', 0.00, 'not_sure', '', 0, '2017-02-27 19:31:15', '2017-02-27 19:31:15'),
(166, 18, 'test', 1, 'test', 'hourly', '', 'not_sure', 'Entry level', 0.00, 'not_sure', '', 0, '2017-02-27 19:37:31', '2017-02-27 19:37:31'),
(167, 18, 'test', 1, 'test', 'hourly', '', 'not_sure', 'Entry level', 0.00, 'not_sure', '', 0, '2017-02-27 19:44:23', '2017-02-27 19:44:23'),
(168, 18, 'test', 1, 'test', 'hourly', '', 'not_sure', 'Entry level', 0.00, 'not_sure', '', 0, '2017-02-27 19:45:39', '2017-02-27 19:45:39'),
(169, 18, 'test', 1, 'test', 'hourly', '', 'not_sure', 'Entry level', 0.00, 'not_sure', '', 0, '2017-02-27 19:46:39', '2017-02-27 19:46:39'),
(170, 18, 'test', 1, 'tess', 'hourly', '', 'not_sure', 'Entry level', 0.00, 'not_sure', '', 0, '2017-02-27 19:50:19', '2017-02-27 19:50:19'),
(171, 18, 'test', 1, 'test', 'hourly', '', 'not_sure', 'Entry level', 0.00, 'not_sure', '', 0, '2017-02-27 19:53:33', '2017-02-27 19:53:33'),
(172, 18, 'test', 1, 'test', 'hourly', '', 'not_sure', 'Entry level', 0.00, 'not_sure', '', 0, '2017-02-27 19:54:36', '0000-00-00 00:00:00'),
(173, 18, 'test', 1, 'test', 'hourly', '', 'not_sure', 'Entry level', 0.00, 'not_sure', '', 0, '2017-02-27 19:58:46', '0000-00-00 00:00:00'),
(174, 18, 't2', 1, 't2', 'hourly', '', 'not_sure', 'Entry level', 0.00, 'not_sure', '', 0, '2017-02-27 19:59:26', '0000-00-00 00:00:00'),
(175, 18, 'te', 1, 'te', 'hourly', '', 'not_sure', 'Entry level', 0.00, 'not_sure', '', 0, '2017-02-27 20:02:02', '2017-02-28 03:02:02'),
(176, 18, 't8', 1, 's', 'hourly', '', 'not_sure', 'Entry level', 0.00, 'not_sure', '', 0, '2017-02-28 03:10:46', '2017-02-28 03:10:46'),
(157, 18, 'job testing', 1, 'job testing', 'fixed', '', '1_3_months', 'Entry level', 100.00, '1-9', '', 0, '2017-02-22 11:25:33', '2017-02-22 11:25:33'),
(156, 18, 'skills ', 1, 'wdefwf', 'hourly', '', '1_3_months', 'Entry level', 0.00, '10-19', '', 0, '2017-02-19 17:09:48', '2017-02-19 17:09:48'),
(155, 18, 'Hourly-Applied count and hire page interview count issue', 1, 'Hourly-Applied count and hire page interview count issue', 'hourly', '', '1_3_months', 'Experienced', 0.00, '10-19', '', 0, '2017-02-18 10:22:29', '2017-02-18 10:22:29'),
(154, 18, 'Fixed-Applied count and hire page interview count issue', 1, 'Fixed-Applied count and hire page interview count issue', 'fixed', '', '3_6_months', 'Entry level', 30.00, 'not_sure', '', 0, '2017-02-18 10:21:51', '2017-02-18 10:21:51'),
(153, 18, 'seo for 1 webiste', 1, 'seo for 1 webiste', 'fixed', '', 'more_than_6_months', 'Entry level', 500.00, 'not_sure', '', 0, '2017-02-17 10:34:36', '2017-02-17 10:34:36'),
(152, 18, 'Designer', 1, 'Designer', 'hourly', '', '1_3_months', 'Entry level', 0.00, '20-29', '', 0, '2017-02-15 08:21:01', '2017-02-15 08:21:01'),
(151, 29, 'php', 1, 'saf safsaf ', 'hourly', '', 'not_sure', 'Entry level', 0.00, 'not_sure', '', 0, '2017-02-12 15:52:53', '2017-02-12 15:52:53'),
(150, 18, 'fixed rate', 1, 'fixed rate', 'fixed', '', '3_6_months', 'Entry level', 300.00, 'not_sure', '', 0, '2017-02-03 18:53:10', '2017-02-03 18:53:10'),
(102, 29, 'html', 4, 'We need few html expert', 'hourly', 'Java', 'less_than_1_week', 'Entry level', 0.00, '1-9', '', 0, '2016-12-09 17:52:31', '2016-12-09 17:52:31'),
(103, 29, 'html', 8, 'we are testing ', 'fixed', 'PHP', 'less_than_1_week', 'Entry level', 1000.00, 'not_sure', '', 0, '2016-12-09 17:53:34', '2016-12-09 17:53:34'),
(104, 29, 'html 2', 9, 'etfew', 'fixed', 'CSS', 'less_than_1_months', 'Entry level', 45.00, 'not_sure', '', 0, '2016-12-09 17:54:26', '2016-12-09 17:54:26'),
(149, 18, 'testing hourly payment', 1, 'testing hourly payment', 'hourly', '', '3_6_months', 'Entry level', 0.00, '1-9', '', 0, '2017-02-03 18:20:58', '2017-02-03 18:20:58'),
(106, 29, 'fixed job test', 4, 'sryer', 'fixed', 'PHP', '3_6_months', 'Entry level', 30.00, 'not_sure', '', 0, '2016-12-11 15:34:36', '2016-12-11 15:34:36'),
(148, 18, 'test fixed', 1, 'rtrtrt', 'fixed', '', '3_6_months', 'Entry level', 50.00, 'not_sure', '', 0, '2017-02-02 16:02:01', '2017-02-05 16:02:01'),
(147, 18, 'web design', 1, 'web design', 'hourly', '', '3_6_months', 'Entry level', 0.00, '10-19', '', 0, '2017-01-25 11:49:17', '2017-01-25 11:49:17'),
(146, 18, 'wordpress', 1, 'sdf', 'fixed', '', 'more_than_6_months', 'Entry level', 20.00, 'not_sure', '', 0, '2017-01-18 07:53:20', '2017-01-18 07:53:20'),
(145, 18, 'dddd', 1, 'dddd', 'hourly', '', 'not_sure', 'Entry level', 0.00, 'not_sure', '', 0, '2017-01-17 10:48:14', '2017-01-17 10:48:14'),
(144, 18, 'New job 31', 8, 'Testing skills', 'hourly', '', '3_6_months', 'Entry level', 0.00, '40_plus', '/uploads/1484650767708318.jpg', 0, '2017-01-17 06:26:03', '2017-01-17 06:26:03'),
(143, 18, 'New job', 3, 'ssssss ssssss', 'hourly', '', 'less_than_1_months', 'Entry level', 0.00, '20-29', '', 0, '2017-01-16 12:07:11', '2017-01-16 12:07:11'),
(142, 18, 'Test job777', 12, 'aaaa aaaa', 'hourly', 'PHP Javascript', 'less_than_1_week', 'Entry level', 0.00, '20-29', '', 0, '2017-01-16 12:00:33', '2017-01-16 12:00:33'),
(141, 18, 'Test job1 9', 5, 'sss sssss', 'hourly', 'HTML CSS Javascript', '3_6_months', 'Entry level', 0.00, '20-29', '', 0, '2017-01-16 11:59:35', '2017-01-16 11:59:35'),
(140, 18, 'Job ', 1, 'aaa aaaa', 'hourly', 'Javascript Jquery', 'not_sure', 'Entry level', 0.00, 'not_sure', '', 0, '2017-01-16 11:16:10', '2017-01-16 11:16:10'),
(139, 18, 'Test job1', 8, 'aaaa aaaaa', 'hourly', 'PHP HTML CSS Javascript', '3_6_months', 'Entermediate', 0.00, '40_plus', '', 0, '2017-01-16 05:34:57', '2017-01-16 05:34:57'),
(138, 18, 'fixed description', 1, 'fixed description', 'fixed', 'PHP', 'more_than_6_months', 'Entry level', 999.00, 'not_sure', '', 0, '2017-01-15 18:34:07', '2017-01-15 18:34:07'),
(137, 18, 'skills', 1, 'skills', 'hourly', 'Java HTML CSS Javascript', '1_3_months', 'Entry level', 0.00, '20-29', '', 0, '2017-01-14 08:09:12', '2017-01-14 08:09:12'),
(136, 18, 'fixed job test', 1, 'test 4', 'fixed', 'PHP', '3_6_months', 'Entry level', 600.00, 'not_sure', '', 0, '2017-01-13 17:50:45', '2017-01-13 17:50:45'),
(135, 18, 'test 4', 1, 'test 4', 'hourly', 'HTML', 'less_than_1_months', 'Entry level', 0.00, '10-19', '', 0, '2017-01-13 17:49:50', '2017-01-13 17:49:50'),
(134, 18, 'test3', 1, 'test3', 'fixed', 'PHP', 'more_than_6_months', 'Entry level', 300.00, 'not_sure', '', 0, '2017-01-13 10:46:47', '2017-01-13 10:46:47'),
(133, 18, 'fixed 1', 1, 'fixed 1', 'fixed', 'PHP', '3_6_months', 'Entry level', 12.00, 'not_sure', '', 0, '2017-01-13 09:53:13', '2017-01-13 09:53:13'),
(131, 18, 'hourly', 1, 'html', 'hourly', 'HTML', '3_6_months', 'Entry level', 0.00, '20-29', '', 0, '2017-01-13 05:18:10', '2017-01-13 05:18:10'),
(132, 18, 'fixed', 1, 'fixed', 'fixed', 'PHP', 'more_than_6_months', 'Entry level', 4000.00, 'not_sure', '', 0, '2017-01-13 05:18:33', '2017-01-13 05:18:33'),
(181, 18, 'Work to validate hired payment', 1, 'This job will allow us to validate our job on hired payment confirmation.', 'fixed', '', '1_3_months', 'Entry level', 1500.00, 'not_sure', '/uploads/1490553809592018.jpg', 1, '2017-03-26 18:43:29', '2017-03-26 17:43:29');

-- --------------------------------------------------------

--
-- Structure de la table `job_accepted`
--

DROP TABLE IF EXISTS `job_accepted`;
CREATE TABLE `job_accepted` (
  `id` int(11) NOT NULL,
  `fuser_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `buser_id` int(11) NOT NULL,
  `bid_id` int(11) NOT NULL,
  `comments` text NOT NULL,
  `contact_id` varchar(100) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `job_accepted`
--

INSERT INTO `job_accepted` (`id`, `fuser_id`, `job_id`, `buser_id`, `bid_id`, `comments`, `contact_id`, `created`) VALUES
(136, 15, 136, 18, 193, 'dfd', '15_HS9LEP53BT', '2017-03-07 20:08:07'),
(115, 13, 132, 18, 181, 'df', '13_5OS7HI6P95', '2017-01-13 06:55:31'),
(116, 9, 132, 18, 185, 'ok', '9_0NT7FC39XL', '2017-01-13 10:04:34'),
(135, 15, 146, 18, 198, 'fh', '15_2J646C1XIL', '2017-03-07 20:07:56'),
(134, 13, 178, 18, 235, 'ok', '13_YFAQFUN0YA', '2017-03-03 21:19:24'),
(95, 9, 65, 0, 83, 'hyuru', '9_WWOOUT9B5L', '2016-12-01 15:28:43'),
(85, 15, 75, 0, 86, 'dfhfghj', '15_03I82BY0GD', '2016-11-28 22:22:35'),
(133, 13, 153, 18, 221, 'sfg', '13_1X5O5V630B', '2017-02-17 11:39:00'),
(132, 13, 150, 18, 211, 'rrgt', '13_6VACM2N6VV', '2017-02-03 18:57:27'),
(131, 13, 149, 18, 210, 'fv', '13_NYVK5HQ3QP', '2017-02-03 18:25:09'),
(130, 9, 147, 18, 204, 'sdfgdsfgh', '9_13NJIATSZ0', '2017-02-02 16:08:25'),
(129, 9, 148, 18, 209, 'dfrgdfhd', '9_MBEP11MAJ8', '2017-02-02 16:08:18'),
(128, 13, 148, 18, 208, 'rg', '13_375DHRBC2N', '2017-02-02 16:06:56'),
(97, 9, 49, 0, 62, 'rtr', '9_ISOUWTHDXC', '2016-12-01 15:32:19'),
(127, 13, 147, 18, 207, 'gg', '13_3Q6QGBXY20', '2017-02-02 16:06:25'),
(126, 13, 138, 18, 194, ' zdsf gfg gfhfdhfsgh fgh hfg hg', '13_GQ3IHS2DAA', '2017-01-28 20:50:14'),
(125, 15, 147, 18, 202, 'fhyt', '15_K6ZUBBW98F', '2017-01-25 12:19:18'),
(124, 13, 146, 18, 197, 'ok', '13_P9UHHJUIYE', '2017-01-24 21:20:06'),
(123, 9, 144, 18, 200, 'ok', '9_8KWV2TM0MM', '2017-01-21 17:20:00'),
(122, 15, 144, 18, 199, 'ok', '15_PPLABLF5BP', '2017-01-21 17:15:42'),
(121, 13, 143, 18, 196, 'ok', '13_SKLXYCCNF7', '2017-01-16 17:36:14'),
(108, 15, 104, 0, 121, 'fdgdfg', '15_21N61P8TMV', '2016-12-11 15:33:09'),
(120, 15, 138, 18, 195, 'ok', '15_WPR0OF00WT', '2017-01-15 19:04:31'),
(119, 9, 134, 18, 191, 'ok', '9_6JJDVCZN36', '2017-01-15 17:46:29'),
(118, 13, 133, 18, 188, 'tt', '13_Z8HRW2SQWT', '2017-01-13 10:50:55'),
(117, 13, 134, 18, 189, 'reyt5re', '13_P6ZSH0RTC9', '2017-01-13 10:48:33'),
(114, 15, 132, 18, 183, 'ok', '15_FIXB6XV8ZH', '2017-01-13 05:43:02');

-- --------------------------------------------------------

--
-- Structure de la table `job_bids`
--

DROP TABLE IF EXISTS `job_bids`;
CREATE TABLE `job_bids` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `bid_amount` float(10,2) DEFAULT NULL,
  `bid_fee` float(10,2) DEFAULT NULL,
  `bid_earning` float(10,2) DEFAULT NULL,
  `job_duration` varchar(100) DEFAULT NULL,
  `cover_latter` text,
  `status` tinyint(4) NOT NULL DEFAULT '0'COMMENT
) ;

--
-- Contenu de la table `job_bids`
--

INSERT INTO `job_bids` (`id`, `user_id`, `job_id`, `bid_amount`, `bid_fee`, `bid_earning`, `job_duration`, `cover_latter`, `status`, `hired`, `hire_title`, `hire_message`, `weekly_limit`, `offer_bid_amount`, `offer_bid_fee`, `offer_bid_earning`, `allow_freelancer`, `fixed_pay_status`, `weekly_amount`, `fixedpay_amount`, `start_date`, `created`, `jobstatus`, `end_date`, `bid_reject`, `hired_on`, `payment_status`, `withdrawn`, `withdrawn_by`, `job_progres_status`) VALUES
(1, 9, 27, 12.00, 1.20, 10.80, '10-19', 'fgdfhgfhgf', 1, '0', NULL, NULL, 0, 0.00, 0.00, 0.00, '0', '0', 0.00, NULL, '0', '2016-08-25 20:15:06', 0, '', 0, '0.00', 0, NULL, NULL, 0),
(2, 9, 27, 12.00, 1.20, 10.80, '10-19', 'hgfhjgj', 0, '0', NULL, NULL, 0, 0.00, 0.00, 0.00, '0', '0', 0.00, NULL, '0', '2016-08-25 20:17:17', 0, '', 0, '0.00', 0, NULL, NULL, 0),
(3, 9, 26, 123.00, 12.30, 111.70, 'not_sure', 'vsfbgdfbhgf', 1, '0', NULL, NULL, 0, 0.00, 0.00, 0.00, '0', '0', 0.00, NULL, '0', '2016-08-25 20:17:46', 0, '', 0, '0.00', 0, NULL, NULL, 0),
(238, 15, 178, 233.00, 23.30, 209.70, 'Less than 1 month', 'rgrg', 0, '1', 'Developer testing ', 'dfdff', 0, NULL, NULL, NULL, '0', '1', 0.00, 233.00, '18/03/2017', '2017-03-06 17:10:26', 0, NULL, 1, '233.00', 0, 1, 2, 2),
(5, 9, 24, 12.00, 1.20, 10.80, '1-9', 'hello', 0, '0', NULL, NULL, 0, 0.00, 0.00, 0.00, '0', '0', 0.00, NULL, '0', '2016-08-26 17:10:01', 0, '', 0, '0.00', 0, NULL, NULL, 0),
(10, 9, 23, 12.00, 1.20, 10.80, '10-19', 'dfgdfh', 0, '0', NULL, NULL, 0, 0.00, 0.00, 0.00, '0', '0', 0.00, NULL, '0', '2016-08-26 18:36:10', 0, '', 0, '0.00', 0, NULL, NULL, 0),
(11, 9, 21, 0.00, 0.00, 0.00, '1-9', 'ghgfh', 0, '0', NULL, NULL, 0, 0.00, 0.00, 0.00, '0', '0', 0.00, NULL, '0', '2016-08-26 18:37:18', 0, '', 0, '0.00', 0, NULL, NULL, 0),
(12, 9, 31, 22.00, 2.20, 19.80, '1-9', 'dfgdg', 0, '0', NULL, NULL, 0, 0.00, 0.00, 0.00, '0', '0', 0.00, NULL, '0', '2016-08-26 18:56:07', 0, '', 0, '0.00', 0, NULL, NULL, 0),
(237, 15, 179, 5.00, 0.50, 4.50, NULL, 'rrgrg', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2017-03-06 17:09:53', 0, NULL, 1, '0.00', 0, 1, 2, 0),
(15, 9, 32, 5.00, 0.50, 4.50, '1-9', 'fgdfh', 0, '0', 'Testing', 'rujygfjh', 50, 10.00, 1.00, 9.00, '0', '0', 500.00, NULL, '2016/09/27 21:07', '2016-08-26 19:04:21', 0, '', 0, '0.00', 1, NULL, NULL, 0),
(16, 15, 33, 5.00, 0.50, 4.50, '30-39', 'dgfghfdh', 1, '0', NULL, NULL, 0, 0.00, 0.00, 0.00, '0', '0', 0.00, NULL, '0', '2016-08-26 19:20:36', 0, '', 0, '0.00', 0, NULL, NULL, 0),
(17, 25, 27, 11.00, 1.10, 9.90, '1-9', 'I want to do the job', 0, '0', 'Need Virtual Assistant with excellent English writing skills for email, blog, and social media upkee', 'vnjmgngfn', 10, 5.00, 0.50, 4.50, '1', '0', 0.00, NULL, '2016/09/15 00:25', '2016-08-30 05:24:23', 0, '', 0, '0.00', 0, NULL, NULL, 0),
(18, 26, 33, 190.00, 19.00, 171.00, '40_plus', 'test bid', 0, '0', NULL, NULL, 0, 0.00, 0.00, 0.00, '0', '0', 0.00, NULL, '0', '2016-08-30 06:39:50', 0, '', 1, '0.00', 0, NULL, NULL, 0),
(19, 9, 33, 200.00, 20.00, 180.00, '1-9', 'Hi I am highly interested to work with you.I am professional and full time quality worker.\n\nRegards\n', 0, '0', 'Testing 2', 'af', 0, 0.00, 0.00, 0.00, '0', '2', 0.00, 10.00, '2016/09/14 00:22', '2016-08-30 11:42:07', 1, '', 0, '0.00', 0, NULL, NULL, 0),
(20, 26, 32, 15.00, 1.50, 13.50, '10-19', 'testing', 0, '0', NULL, NULL, 0, 0.00, 0.00, 0.00, '0', '0', 0.00, NULL, '0', '2016-08-30 11:56:20', 0, '', 1, '0.00', 0, NULL, NULL, 0),
(21, 15, 27, 6.00, 0.60, 5.40, '1-9', 'afef', 0, '0', NULL, NULL, 0, 0.00, 0.00, 0.00, '0', '0', 0.00, NULL, '0', '2016-08-30 15:47:04', 0, '', 0, '0.00', 0, NULL, NULL, 0),
(22, 28, 33, 23.00, 2.30, 20.70, '1-9', 'hi this is tuhin', 0, '0', NULL, NULL, 0, 0.00, 0.00, 0.00, '0', '0', 0.00, NULL, '0', '2016-08-30 19:45:41', 0, '', 0, '0.00', 0, NULL, NULL, 0),
(23, 25, 32, 40.00, 4.00, 36.00, 'not_sure', 'd rfgd gcd hdfhdf h dt hdf hdf hdf hdr hdfhd hd hd', 0, '0', 'Testing 1', 'jiojjj', 0, 45.00, 4.50, 40.50, '0', '', 0.00, 0.00, '2016/09/07 13:38', '2016-08-30 21:56:37', 0, '2016-09-26 08:09:19', 0, '0.00', 0, NULL, NULL, 0),
(43, 25, 33, 450.00, 45.00, 405.00, '20-29', 'i like to do it', 0, '0', 'tets test 2 hire', 'adadad', 0, NULL, NULL, NULL, '0', '2', 0.00, 152.00, '2016/09/29 16:21', '2016-09-29 05:37:45', 0, '', 0, '0.00', 1, NULL, NULL, 0),
(25, 9, 34, 5.00, 0.50, 4.50, '1-9', 'Testing hourly', 0, '0', 'Hourly testing', 'fgfdg', 23, 25.00, 2.50, 22.50, '0', '0', 0.00, NULL, '2016/09/07 20:21', '2016-09-02 11:11:10', 0, '', 0, '0.00', 0, NULL, NULL, 0),
(26, 15, 34, 5.00, 0.50, 4.50, '10-19', 'sfgdfhg', 0, '0', 'go', 'sfgetrgy', 0, 25.00, 2.50, 22.50, '0', '0', 0.00, NULL, '2016/09/07 05:34', '2016-09-02 17:31:09', 1, '2016-10-10 20:10:50', 0, '0.00', 0, NULL, NULL, 0),
(27, 25, 35, 500.00, 50.00, 450.00, '10-19', 'Test BID', 0, '0', 'Fixed test', 'rdt', 0, 0.00, 0.00, 0.00, '0', '2', 0.00, 122.00, '2016/09/30 21:08', '2016-09-06 18:24:35', 1, '2016-09-28 13:09:19', 0, '0.00', 0, NULL, NULL, 0),
(28, 15, 35, 400.00, 40.00, 360.00, '10-19', 'erghedrkjghjdsflhj;', 0, '0', 'Fixed test', 'test', 0, 0.00, 0.00, 0.00, '0', '2', 0.00, 100.00, '2016/10/28 21:25', '2016-09-06 20:10:50', 1, '2016-09-28 08:09:06', 0, '0.00', 1, NULL, NULL, 0),
(29, 9, 36, 30.00, 3.00, 27.00, '1-9', 'dxvfgsdgbfd', 0, '0', 'hourly rate testing', 'testing', 0, 20.00, 2.00, 18.00, '0', '0', 0.00, NULL, '2016/09/20 20:17', '2016-09-07 10:35:34', 1, '2016-09-20 14:09:35', 1, '0.00', 0, NULL, NULL, 0),
(30, 25, 36, 5.00, 0.50, 4.50, 'not_sure', 'test', 0, '0', 'tesrt', 'test', 20, 3.00, 0.30, 2.70, '1', '0', 60.00, NULL, '2016/09/26 20:30', '2016-09-07 10:35:37', 0, '2016-09-20 09:09:42', 0, '0.00', 1, NULL, NULL, 0),
(236, 13, 179, 5.00, 0.50, 4.50, NULL, 'wregtert', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2017-03-04 17:34:18', 0, NULL, 1, '0.00', 0, 1, 2, 1),
(33, 15, 37, 5.00, 0.50, 4.50, '10-19', 'thythy', 0, '0', 'test', 'hi', 23, NULL, NULL, NULL, '0', '0', 0.00, NULL, '2016/09/09 21:51', '2016-09-07 21:02:45', 1, '2016-09-20 10:09:51', 1, '0.00', 0, NULL, NULL, 0),
(34, 9, 38, 500.00, 50.00, 450.00, '10-19', 'hghfgh', 0, '0', 'Fiixed 1000 job', 'adadad adada', 0, NULL, NULL, NULL, '0', '1', 0.00, 500.00, '2016/09/23 19:26', '2016-09-08 07:45:16', 1, '2016-09-25 16:09:55', 0, '0.00', 1, NULL, NULL, 0),
(35, 25, 38, 800.00, 80.00, 720.00, '40_plus', 'Cover Letter FIXED', 0, '1', ' Fiixed 1000 job', 'asdadadadada', 0, NULL, NULL, NULL, '0', '2', 0.00, 150.00, '2016/09/30 19:23', '2016-09-08 07:45:35', 0, '0000-00-00 00:00:00', 1, '0.00', 1, NULL, NULL, 0),
(36, 15, 36, 5.00, 0.50, 4.50, 'not_sure', 'dfdhdfh', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2016-09-16 09:44:18', 0, '0000-00-00 00:00:00', 1, '0.00', 0, NULL, NULL, 0),
(37, 15, 39, 23.00, 2.30, 20.70, '10-19', 'testing', 0, '0', 'Google top Ranker', 'cbfdgxb', 12, NULL, NULL, NULL, '0', NULL, 276.00, 0.00, '2016/09/19 13:23', '2016-09-16 09:53:31', 1, '0000-00-00 00:00:00', 0, '0.00', 0, NULL, NULL, 0),
(38, 25, 2, 10.00, 1.00, 9.00, '10-19', 'sassafsaf', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2016-09-21 08:06:18', 0, NULL, 0, '0.00', 0, NULL, NULL, 0),
(39, 9, 40, 400.00, 40.00, 360.00, '20-29', 'testing', 0, '0', 'asdadadad', 'dadada', 0, NULL, NULL, NULL, '0', '2', 0.00, 400.00, '2016/09/17 16:46', '2016-09-21 19:22:05', 1, '2016-09-28 07:09:12', 1, '0.00', 0, NULL, NULL, 0),
(40, 9, 37, 5.00, 0.50, 4.50, 'not_sure', 'gdfg', 0, '0', 'seo', 'dwdfwf', 20, NULL, NULL, NULL, '0', NULL, 100.00, 0.00, '2016/09/22 14:42', '2016-09-22 16:24:48', 1, '2016-09-23 14:09:47', 1, '0.00', 0, NULL, NULL, 0),
(234, 13, 176, 5.00, 0.50, 4.50, NULL, 'tett', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2017-02-27 20:37:00', 0, NULL, 1, '0.00', 0, 1, 2, 0),
(231, 9, 157, 34.00, 3.40, 30.60, 'Less than 1 month', 'dafdf', 0, '1', 'job testing', 'fgg', 0, NULL, NULL, NULL, '0', '1', 0.00, 34.00, '05/03/2017', '2017-02-27 17:02:08', 0, NULL, 1, '34.00', 0, 1, 2, 2),
(235, 13, 178, 45.00, 4.50, 40.50, 'Less than 1 month', 'df', 0, '0', 'Developer testing ', 'thfgj', 0, NULL, NULL, NULL, '0', '1', 0.00, 48.00, '03/03/2017', '2017-03-03 21:07:36', 1, '2017-03-20 05:03:58', 0, '45.00', 0, NULL, NULL, 1),
(45, 15, 40, 444.00, 44.40, 399.60, '1-9', 'fdgdfg', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2016-10-05 23:02:45', 0, NULL, 0, '0.00', 0, NULL, NULL, 0),
(46, 15, 41, 5.00, 0.50, 4.50, NULL, 'rgtrgy', 0, '0', 'Web Developer -Professional', 'ryhtryh', 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '2016/10/11 23:55', '2016-10-05 23:03:12', 1, '2016-10-10 22:10:18', 0, '0.00', 0, NULL, NULL, 0),
(205, 13, 140, 5.00, 0.50, 4.50, NULL, 'My proven SEO is in reference to Search Engine Optimization (SEO) Services for proven Results, offering "1st page rank on Google, Yahoo and Bing (whatever is your preferable search engine) and targeted traffic" at a very competitive cost. We will do online promotional activities and work as an Online Marketing Team for your business.', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2017-02-02 06:54:33', 0, NULL, 1, '0.00', 0, 1, 2, 0),
(206, 15, 140, 5.00, 0.50, 4.50, NULL, 'My proven SEO is in reference to Search Engine Optimization (SEO) Services for proven Results, offering "1st page rank on Google, Yahoo and Bing (whatever is your preferable search engine) and targeted traffic" at a very competitive cost. We will do online promotional activities and work as an Online Marketing Team for your business.', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2017-02-02 06:55:34', 0, NULL, 1, '0.00', 0, 1, 2, 0),
(207, 13, 147, 5.00, 0.50, 4.50, NULL, 'fgfhdf', 0, '0', 'web design', 'kjghkjg', 43, NULL, NULL, NULL, '0', NULL, 215.00, 0.00, '2017/02/15 22:04', '2017-02-02 15:18:18', 0, NULL, 0, '0.00', 0, NULL, NULL, 3),
(208, 13, 148, 10.00, 1.00, 9.00, '3-6 months', 'ehsh', 0, '0', 'test fixed', 'dfgdfg', 0, NULL, NULL, NULL, '0', '1', 0.00, 110.00, '2017/01/31 22:06', '2017-02-02 16:02:50', 0, NULL, 0, '10.00', 0, NULL, NULL, 3),
(209, 9, 148, 77.00, 7.70, 69.30, 'Less than 1 month', 'wrtrere', 0, '0', 'test fixed', 'dtgdfg', 0, NULL, NULL, NULL, '0', '1', 0.00, 77.00, '2017/02/07 22:05', '2017-02-02 16:03:55', 1, '2017-02-03 19:02:14', 0, '77.00', 0, NULL, NULL, 3),
(210, 13, 149, 5.00, 0.50, 4.50, NULL, 'eryhrtjutyru', 0, '0', 'testing hourly payment', 'yjyuk', 60, NULL, NULL, NULL, '0', NULL, 300.00, 0.00, '2017/02/04 00:23', '2017-02-03 18:21:22', 0, NULL, 0, '0.00', 0, NULL, NULL, 3),
(211, 13, 150, 300.00, 30.00, 270.00, 'Less than 1 week', 'frgtdh', 0, '0', 'fixed rate', 'sfdgrhtr', 0, NULL, NULL, NULL, '0', '1', 0.00, 319.00, '2017/02/04 00:55', '2017-02-03 18:54:25', 0, NULL, 0, '300.00', 0, NULL, NULL, 3),
(212, 9, 150, 44.00, 4.40, 39.60, 'Less than 1 month', 'rgrgh', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2017-02-03 19:47:02', 0, NULL, 0, '0.00', 0, NULL, NULL, 1),
(213, 9, 149, 4.00, 0.40, 3.60, NULL, 'djffshg', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2017-02-05 10:38:46', 0, NULL, 0, '0.00', 0, NULL, NULL, 1),
(214, 15, 149, 7.00, 0.70, 6.30, NULL, 'fgdf', 0, '0', NULL, NULL, 0, 562.00, 56.20, 505.80, '0', NULL, 0.00, 0.00, '0', '2017-02-05 10:39:29', 0, NULL, 0, '0.00', 0, NULL, NULL, 1),
(215, 15, 150, 1424.00, 142.40, 1281.60, 'not_sure', 'ghfghfg', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2017-02-05 10:50:32', 0, NULL, 1, '0.00', 0, 1, 2, 0),
(216, 9, 151, 12.00, 1.20, 10.80, NULL, 'sfvgrger', 0, '0', 'php', 'tgt', 23, NULL, NULL, NULL, '0', NULL, 276.00, 0.00, '14/02/2017', '2017-02-14 16:03:01', 0, NULL, 0, '0.00', 0, NULL, NULL, 2),
(217, 13, 151, 454.00, 45.40, 408.60, NULL, 'gfhgh', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2017-02-14 16:40:52', 0, NULL, 0, '0.00', 0, NULL, NULL, 0),
(218, 13, 152, 5.00, 0.50, 4.50, NULL, 'yrtuytru', 1, '0', NULL, NULL, 0, 5.00, 0.50, 4.50, '0', NULL, 0.00, 0.00, '0', '2017-02-15 08:21:32', 0, NULL, 0, '0.00', 0, 1, 1, 0),
(219, 9, 152, 5.00, 0.50, 4.50, NULL, 'tyur6tu', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2017-02-17 10:30:57', 0, NULL, 1, '0.00', 0, 1, 2, 0),
(220, 15, 152, 5.00, 0.50, 4.50, NULL, 'fgdfhg', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2017-02-17 10:31:24', 0, NULL, 0, '0.00', 0, NULL, NULL, 0),
(221, 13, 153, 600.00, 60.00, 540.00, 'Less than 1 month', 'fsgfdg', 0, '0', 'seo for 1 webiste', 'fdhfdh', 0, NULL, NULL, NULL, '0', '1', 0.00, 200684.00, '17/02/2017', '2017-02-17 10:35:06', 0, NULL, 0, '600.00', 0, NULL, NULL, 3),
(222, 9, 153, 61.00, 6.10, 54.90, 'Less than 1 week', 'frgtdfy', 0, '1', 'seo for 1 webiste', 'hfdh', 0, NULL, NULL, NULL, '0', '1', 0.00, 61.00, '17/02/2017', '2017-02-17 10:35:34', 0, NULL, 0, '61.00', 0, NULL, NULL, 2),
(223, 15, 153, 45.00, 4.50, 40.50, 'Less than 1 month', 'dgfhftghj', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2017-02-18 09:57:40', 0, NULL, 0, '0.00', 0, NULL, NULL, 0),
(224, 9, 154, 12.00, 1.20, 10.80, 'Less than 1 month', 'Hourly-Applied count and hire page interview count issue', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2017-02-18 10:23:10', 0, NULL, 1, '0.00', 0, 1, 2, 1),
(225, 13, 154, 4555.00, 455.50, 4099.50, 'Less than 1 week', 'gdfhytgh', 0, '1', 'Fixed-Applied count and hire page interview count issue', 'gh', 0, NULL, NULL, NULL, '0', '1', 0.00, 4555.00, '18/02/2017', '2017-02-18 10:29:21', 0, NULL, 1, '4555.00', 0, 1, 2, 2),
(226, 13, 156, 5.00, 0.50, 4.50, NULL, 'sfefef', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2017-02-21 06:48:56', 0, NULL, 1, '0.00', 0, 1, 2, 1),
(227, 13, 155, 5.00, 0.50, 4.50, NULL, 'wdef', 1, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2017-02-21 06:49:12', 0, NULL, 0, '0.00', 0, 1, 1, 0),
(228, 13, 157, 90.00, 9.00, 81.00, '3-6 months', 'Hi\nI have 4 + Years Exp. My Skill\'s are PHP, My Sql, \n\nRegards\n\nArun', 0, '1', 'job testing', '', 0, NULL, NULL, NULL, '0', '1', 0.00, 90.00, '02/03/2017', '2017-02-22 11:27:55', 0, NULL, 0, '90.00', 0, NULL, NULL, 1),
(229, 15, 156, 5.00, 0.50, 4.50, NULL, 'srgthtft', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2017-02-27 16:39:43', 0, NULL, 0, '0.00', 0, NULL, NULL, 0),
(230, 15, 157, 12.00, 1.20, 10.80, 'Less than 1 week', 'dsd', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2017-02-27 17:01:26', 0, NULL, 1, '0.00', 0, 1, 2, 0),
(48, 9, 41, 5.00, 0.50, 4.50, NULL, 'We are a virtual digital marketing firm focused on provided digital marketing solutions to businesses and organisations in USA and around the world. Currently the firm has around 10 virtual staff around the world with most based in Australia. Stuart is currently looking to add an experienced Web Developer to our team. The commitment required for this role will be between 35 – 40 hours per week. Tasks • Manage and develop existing and new client websites. Experience/Skills • Experience in CSS, HTML, Java Script, Joomla and Google Analytics. • Experience with SSL wildcards. • Ecommerce set up and management. • SEO set up and running experience. • Prior experience or exposure to Healcode would be advantageous. • Well versed in several WP templates. • Regularly communicate with the rest of the team on project status. • Attention to detail. • Fast turnaround on tasks. • Fluent in English, both conversational and written. Both individuals and small development firms are encouraged to apply. Please do not call, email or Skype OUTSIDE of Upwork. Those who do so will be immediately eliminated from the process', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2016-10-09 18:22:50', 0, NULL, 1, '0.00', 0, NULL, NULL, 0),
(49, 9, 42, 5.00, 0.50, 4.50, NULL, 'We are a virtual digital marketing firm focused on provided digital marketing solutions to businesses and organisations in USA and around the world. Currently the firm has around 10 virtual staff around the world with most based in Australia. Stuart is currently looking to add an experienced Web Developer to our team. The commitment required for this role will be between 35 – 40 hours per week. Tasks • Manage and develop existing and new client websites. Experience/Skills • Experience in CSS, HTML, Java Script, Joomla and Google Analytics. • Experience with SSL wildcards. • Ecommerce set up and management. • SEO set up and running experience. • Prior experience or exposure to Healcode would be advantageous. • Well versed in several WP templates. • Regularly communicate with the rest of the team on project status. • Attention to detail. • Fast turnaround on tasks. • Fluent in English, both conversational and written. Both individuals and small development firms are encouraged to apply. Please do not call, email or Skype OUTSIDE of Upwork. Those who do so will be immediately eliminated from the process', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2016-10-09 19:03:07', 0, NULL, 1, '0.00', 0, NULL, NULL, 0),
(204, 9, 147, 5.00, 0.50, 4.50, NULL, 'dfrgtdfgfg', 0, '0', 'web design', 'oyiiuyi', 4, NULL, NULL, NULL, '0', NULL, 20.00, 0.00, '2017/02/09 22:05', '2017-01-30 06:43:08', 0, NULL, 0, '0.00', 0, NULL, NULL, 3),
(52, 15, 43, 200.00, 20.00, 180.00, '20-29', 'gdfghdfhg', 0, '0', 'Fixed price Payments', 'dgfsdg', 0, NULL, NULL, NULL, '0', '1', 0.00, 200.00, '2016/10/11 23:30', '2016-10-11 17:24:17', 1, '2016-10-11 17:10:29', 1, '0.00', 0, NULL, NULL, 0),
(203, 9, 131, 5.00, 0.50, 4.50, NULL, 'c', 0, '1', 'hourly', 'thytr', 13, NULL, NULL, NULL, '0', NULL, 65.00, 0.00, '2017/01/27 14:07', '2017-01-27 07:58:20', 0, NULL, 0, '0.00', 0, NULL, NULL, 2),
(202, 15, 147, 5.00, 0.50, 4.50, NULL, 'ertyhtruj', 0, '0', 'web design', 'fg', 15, NULL, NULL, NULL, '0', NULL, 75.00, 0.00, '2017/01/25 18:18', '2017-01-25 12:18:27', 1, '2017-01-27 20:01:20', 0, '0.00', 0, NULL, NULL, 3),
(55, 9, 44, 100.00, 10.00, 90.00, '10-19', 'dfghdfh', 0, '0', 'Fixed price Payments 1', 'dfhgdfh', 0, NULL, NULL, NULL, '0', '2', 0.00, 100.00, '2016/10/12 02:27', '2016-10-11 20:26:45', 0, NULL, 0, '0.00', 0, NULL, NULL, 0),
(56, 15, 45, 5.00, 0.50, 4.50, NULL, 'rytrurty', 0, '0', 'seo', 'gfhfhgyj', 20, NULL, NULL, NULL, '0', NULL, 100.00, 0.00, '2016/10/12 04:00', '2016-10-11 22:19:10', 1, '2016-10-11 22:10:45', 0, '0.00', 0, NULL, NULL, 0),
(58, 15, 46, 200.00, 20.00, 180.00, '10-19', 'rtyh', 0, '0', 'fsedgfsrdg', 'fgfdg', 0, NULL, NULL, NULL, '0', '1', 0.00, 200.00, '2016/10/14 03:32', '2016-10-12 21:59:27', 0, NULL, 0, '0.00', 0, NULL, NULL, 0),
(61, 15, 47, 5.00, 0.50, 4.50, NULL, 'fergteryg', 0, '0', 'Wordpress Web Development', 'dfdsgf', 50, 6.00, 0.60, 5.40, '0', NULL, 300.00, 0.00, '2016/10/14 01:14', '2016-10-13 19:13:41', 1, '2017-01-06 21:01:05', 0, '0.00', 0, NULL, NULL, 0),
(62, 9, 49, 1000.00, 100.00, 900.00, '20-29', 'Hi Adi\n Please try to understand I am we are testing website', 1, '0', 'SEO', 'hey', 0, NULL, NULL, NULL, '0', '1', 0.00, 1000.00, '2016/10/14 12:41', '2016-10-14 16:36:06', 0, NULL, 0, '0.00', 0, NULL, NULL, 0),
(65, 9, 46, 1000.00, 100.00, 900.00, 'Less than 1 month', 'dgfsdg', 0, '0', 'aryan test 2', 'adadadad', 0, NULL, NULL, NULL, '0', '2', 0.00, 200.00, '2016/10/14 13:09', '2016-10-18 21:57:31', 1, '2016-10-18 22:10:27', 0, '0.00', 0, NULL, NULL, 0),
(66, 9, 50, 55.00, 5.50, 49.50, 'not_sure', 'hjfghgjfhgj', 1, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2016-10-19 13:44:33', 0, NULL, 0, '0.00', 0, NULL, NULL, 0),
(201, 9, 146, 50.00, 5.00, 45.00, 'Less than 1 month', 'I am interested your SEO project. I have +4 years experience about Search engine RANKING, On-page optimization, Off-page optimization, SEM, WordPress Etc. A superior ranking in the major search engines is the best way to bring Quality and Unique visitors to your website. I am using 100% white heat and manually technology in my work. Because Google doesn\'t accept Black-Hat and Spam techniques.\nI am using Recent Panda & Penguin 2.1, Algorithm\'s with Hummingbird update strategy.\nI provide you Guaranteed top ranking at search engine.\n\nPlease see my work Plan: \n\n**On-Page as Keywords Research and Selection, Competitor analysis, webmaster tools, Sitemap.xml, Google Analytic, Title Tags Optimization, Description Tags, ALT tag, Anchor text, H1 tags, Content Etc.\n\n**Off-Page namely: \nWeb 2.0 creation eg. wordpress.com, livejournal.com etc.\nRelevant Forum Back links\nRelevant Blog Commenting on different websites\nArticle Submission, Article Submission directories eg. Ezinearticles.com, Goarticles.com etc.\nPress Release submission in press release network sites eg. 24-7pressrelease.com, prweb.com etc.\nSubmission in Search Engine Friendly Directories eg. Dmoz.org, allwebsites.org etc.\nSubmission to Social Bookmarking websites eg. Del.icio.us, Digg, Stumbleupon etc.\nRSS Feed Submission in sites eg. Feedburner.com, rssfeeds.com etc.\nBlog Posting and Optimization e.g. blog-search.com, bloghub.com, blogspot.com, wordpress.com etc\nSocial Network Marketing eg. Facebook.com, myspace.com, linkedin.com, orkut.com, twitter.com et\nBlog Creation & Optimization e.g. blog-search.com, bloghub.com, blogspot.com, wordpress.com etc\nBlog Directory Submission\n\nCreation of Social Network Marketing Profiles eg. Pinterest.com, myspace.com, linkedin.com, orkut.com, Hi5.com, tumblr.com etc.\n\n\nSee my Attachment about the new strategy.\n\nI am waiting for you', 1, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2017-01-24 08:56:45', 0, NULL, 0, '0.00', 0, 1, 1, 1),
(68, 15, 51, 500.00, 50.00, 450.00, '1-3 months', 'fdsghfdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', 0, '0', 'Fixed job test', 'sdefed', 0, NULL, NULL, NULL, '0', '1', 0.00, 710.00, '2016/10/28 03:11', '2016-10-20 22:49:40', 1, '2016-11-27 20:11:03', 0, '0.00', 0, NULL, NULL, 0),
(200, 9, 144, 5.00, 0.50, 4.50, NULL, 'dfhkf', 0, '0', 'New job 31', 'ok', 40, NULL, NULL, NULL, '0', NULL, 200.00, 0.00, '2017/01/21 23:18', '2017-01-21 17:17:59', 1, '2017-01-25 15:01:47', 0, '0.00', 0, NULL, NULL, 3),
(70, 15, 52, 200.00, 20.00, 180.00, 'Less than 1 month', 'dgfgf', 0, '0', 'Testing', 'dfghfghj', 0, NULL, NULL, NULL, '0', '1', 0.00, 200.00, '2016/10/23 05:44', '2016-10-22 20:06:38', 1, '2016-10-22 23:10:46', 0, '0.00', 0, NULL, NULL, 0),
(198, 15, 146, 2.00, 0.20, 1.80, 'Less than 1 month', 'fgvhgfhj', 0, '0', 'wordpress', 'ryrte', 0, NULL, NULL, NULL, '0', '1', 0.00, 2.00, '2017/02/03 15:29', '2017-01-20 14:27:38', 1, '2017-03-20 05:03:58', 0, '2.00', 0, NULL, NULL, 3),
(199, 15, 144, 5.00, 0.50, 4.50, NULL, 'dkjfhf', 0, '0', 'New job 31', 'ok', 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '2017/01/21 23:14', '2017-01-21 17:14:02', 1, '2017-01-24 18:01:02', 0, '0.00', 0, NULL, NULL, 3),
(72, 15, 53, 300.00, 30.00, 270.00, 'Less than 1 month', 'sfdsf', 0, '0', 'testing 2', '', 0, NULL, NULL, NULL, '0', '2', 0.00, 682.00, '2016/10/26 03:37', '2016-10-25 21:36:29', 1, '2016-11-29 22:11:08', 0, '0.00', 0, NULL, NULL, 0),
(197, 13, 146, 1.00, 0.10, 0.90, 'Less than 1 week', 'rfgt', 0, '0', 'wordpress', 'ok', 0, NULL, NULL, NULL, '0', '1', 0.00, 1.00, '2017/01/18 13:54', '2017-01-18 07:54:02', 1, '2017-01-29 07:01:29', 0, '1.00', 0, NULL, NULL, 3),
(75, 15, 56, 12313.00, 1231.30, 11081.70, '3-6 months', 'fgfhgfdhdf', 1, '0', 'fdhggdfh', 'dsgsfd', 0, NULL, NULL, NULL, '0', '1', 0.00, 1115863.00, '2016/10/27 03:47', '2016-10-26 20:14:18', 1, '2016-11-30 13:11:28', 0, '0.00', 0, NULL, NULL, 0),
(76, 33, 57, 5.00, 0.50, 4.50, NULL, 'dfgsfdgfgh', 0, '1', 'date checking', 'rtyhtyh', 10, NULL, NULL, NULL, '0', NULL, 50.00, 0.00, '2016/10/28 03:49', '2016-10-26 21:43:26', 0, NULL, 0, '0.00', 0, NULL, NULL, 0),
(77, 15, 57, 5.00, 0.50, 4.50, NULL, 'fsgfg', 0, '0', 'date checking', 'etgregy', 10, NULL, NULL, NULL, '0', NULL, 50.00, 0.00, '2016/09/27 03:44', '2016-10-26 21:43:41', 0, NULL, 0, '0.00', 0, NULL, NULL, 0),
(196, 13, 143, 5.00, 0.50, 4.50, NULL, 'frdgh', 0, '0', 'New job', 'tyu', 50, NULL, NULL, NULL, '0', NULL, 250.00, 0.00, '2017/01/16 23:34', '2017-01-16 17:33:55', 1, '2017-02-28 17:02:23', 0, '0.00', 0, NULL, NULL, 3),
(80, 15, 60, 5.00, 0.50, 4.50, NULL, 'tgesrdtfhrgtjhty', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2016-11-21 18:33:05', 0, NULL, 1, '0.00', 0, NULL, NULL, 0),
(81, 15, 64, 199.00, 19.90, 179.10, 'Less than 1 week', 'hyjhjttyukyutkiytlkuiylkyl', 0, '0', 'fixed job', 'tyuhrtu', 0, NULL, NULL, NULL, '0', '1', 0.00, 774.00, '2016/11/29 23:36', '2016-11-22 19:33:26', 1, '2016-11-29 22:11:49', 1, '0.00', 0, NULL, NULL, 0),
(82, 9, 64, 98.00, 40.00, 360.00, 'Less than 1 month', 'sdgdfhgfhj\r\nfghdfhfgyjhgjjjjjjjjjjjjjj\r\nfgdsssssssssssssss', 0, '0', 'fixed job', '', 0, NULL, NULL, NULL, '0', '2', 0.00, 98.00, '', '2016-11-22 19:45:25', 1, '2017-01-02 09:01:31', 1, '0.00', 0, NULL, NULL, 0),
(83, 9, 65, 5.00, 0.50, 4.50, NULL, 'dghtrhy', 0, '0', 'houry testing job', 'deteryt', 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '2016/12/01 16:35', '2016-11-22 20:01:16', 0, NULL, 0, '0.00', 0, NULL, NULL, 0),
(195, 15, 138, 222.00, 22.20, 199.80, 'Less than 1 week', 'djfnjf', 0, '0', 'fixed description', 'rt', 0, NULL, NULL, NULL, '0', '1', 0.00, 222.00, '2017/01/16 01:03', '2017-01-15 18:35:24', 1, '2017-01-24 18:01:39', 0, '222.00', 0, NULL, NULL, 3),
(194, 13, 138, 111.00, 11.10, 99.90, 'Less than 1 week', 'jwdfnjk', 0, '0', 'sfsds', 'test', 0, NULL, NULL, NULL, '0', '2', 0.00, 16.00, '2017/01/16 01:00', '2017-01-15 18:34:46', 1, '2017-02-03 18:02:12', 0, '111.00', 0, NULL, NULL, 3),
(86, 15, 75, 20000.00, 40.00, 360.00, 'not_sure', 'hgdfhjfgjfhjghj', 1, '0', 'category 4', 'rftyery', 0, NULL, NULL, NULL, '0', '1', 0.00, 20000.00, '2016/12/01 16:27', '2016-11-27 20:14:14', 0, NULL, 0, '0.00', 0, NULL, NULL, 0),
(88, 15, 76, 5.00, 0.50, 4.50, NULL, 'hytryurt6u', 0, '0', 'hourly testing', 'htuyt', 567, 6.00, 0.60, 5.40, '0', NULL, 2835.00, 0.00, '2016/11/29 02:18', '2016-11-28 20:16:26', 1, '2017-01-06 21:01:20', 1, '0.00', 0, NULL, NULL, 0),
(170, 15, 126, 12.00, 1.20, 10.80, 'Less than 1 month', 'ryeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2017-01-04 08:07:26', 0, NULL, 0, '0.00', 0, NULL, NULL, 1),
(91, 15, 77, 100.00, 35.00, 315.00, '1-3 months', 'fdsghdfjkgdfjkg', 0, '0', 'Payment testing', '', 0, NULL, NULL, NULL, '0', '2', 0.00, 100.00, '', '2016-11-29 22:56:00', 1, '2016-11-30 15:11:28', 1, '0.00', 0, NULL, NULL, 0),
(193, 15, 136, 700.00, 70.00, 630.00, 'Less than 1 month', 'frg', 0, '0', 'fixed job test', 'ghgfh', 0, NULL, NULL, NULL, '0', '1', 0.00, 700.00, '2017/01/15 23:59', '2017-01-13 17:52:45', 1, '2017-03-09 20:03:12', 0, '700.00', 0, NULL, NULL, 3),
(192, 13, 136, 300.00, 30.00, 270.00, 'Less than 1 month', 'gfh', 1, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2017-01-13 17:51:27', 0, NULL, 0, '0.00', 0, 1, 1, 1),
(94, 9, 79, 32434.00, 3243.40, 29190.60, 'Less than 1 month', 'fdghth', 0, '0', 'seo job testing', 'rytr', 0, NULL, NULL, NULL, '0', '1', 0.00, 32454.00, '2016/12/01 21:26', '2016-12-01 10:57:53', 0, NULL, 1, '0.00', 0, NULL, NULL, 0),
(95, 15, 79, 23.00, 2.30, 20.70, 'Less than 1 month', 'fhtgfhj', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2016-12-01 10:59:10', 0, NULL, 1, '0.00', 0, NULL, NULL, 0),
(191, 9, 134, 10000.00, 1000.00, 9000.00, 'Less than 1 month', 'ghgfj', 0, '0', 'test3', 'ok', 0, NULL, NULL, NULL, '0', '1', 0.00, 10014.00, '2017/01/15 23:44', '2017-01-13 17:45:26', 1, '2017-01-16 17:01:22', 0, '10000.00', 0, NULL, NULL, 3),
(98, 9, 80, 5.00, 0.50, 4.50, NULL, 'ryhrtuytru', 1, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2016-12-02 20:42:11', 0, NULL, 0, '0.00', 0, NULL, NULL, 0),
(99, 15, 80, 5.00, 0.50, 4.50, NULL, 'ertyuhrtj', 1, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2016-12-02 20:42:28', 0, NULL, 0, '0.00', 0, NULL, NULL, 0),
(101, 15, 81, 3.00, 0.30, 2.70, NULL, 'ethytrhy', 1, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2016-12-02 20:48:21', 0, NULL, 0, '0.00', 0, NULL, NULL, 0),
(102, 9, 82, 300.00, 30.00, 270.00, 'Less than 1 month', 'tyhtru', 1, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2016-12-03 17:05:42', 0, NULL, 0, '0.00', 0, 1, 1, 0),
(190, 15, 134, 49.00, 4.90, 44.10, '1-3 months', 'gghf', 0, '1', 'test3', 'rt', 0, NULL, NULL, NULL, '0', '2', 0.00, 25000.00, '2017/01/13 21:17', '2017-01-13 15:16:18', 0, NULL, 0, '49.00', 0, NULL, NULL, 2),
(189, 13, 134, 150.00, 15.00, 135.00, '1-3 months', 'sgre', 0, '0', 'test3', 'eter', 0, NULL, NULL, NULL, '0', '1', 0.00, 150.00, '2017/01/13 16:47', '2017-01-13 10:47:09', 1, '2017-01-15 18:01:33', 0, '150.00', 0, NULL, NULL, 3),
(105, 15, 83, 150.00, 15.00, 50.00, '1-3 months', 'fgdtfh', 0, '0', 'testing9', 'gdhgfj', 0, NULL, NULL, NULL, '0', '2', 0.00, 50.00, '2016/12/04 01:36', '2016-12-03 19:36:06', 1, '2016-12-11 20:12:08', 0, '0.00', 0, NULL, NULL, 0),
(188, 13, 133, 11.00, 1.10, 9.90, 'Less than 1 month', 'reyter', 0, '0', 'fixed 1', '', 0, NULL, NULL, NULL, '0', '2', 0.00, 100024.00, '2017/01/13 16:33', '2017-01-13 10:12:39', 1, '2017-01-16 18:01:00', 0, '11.00', 0, NULL, NULL, 3),
(187, 9, 133, 5.00, 0.50, 4.50, 'Less than 1 month', 'sdfg', 0, '1', 'fixed 1', 'ery', 0, NULL, NULL, NULL, '0', '1', 0.00, 5.00, '2017/01/13 16:29', '2017-01-13 09:56:51', 0, NULL, 1, '5.00', 0, 1, 2, 2),
(108, 15, 85, 99.00, 9.90, 89.10, 'Less than 1 month', 'dghfj', 0, '1', 'a', 'fggjyt', 0, NULL, NULL, NULL, '0', '1', 0.00, 99.00, '2016/12/04 02:17', '2016-12-03 20:15:50', 0, NULL, 0, '99.00', 0, NULL, NULL, 0),
(110, 15, 86, 2.00, 0.20, 1.80, 'Less than 1 month', 'fsdrhtrh', 0, '1', 'b', 'teryr', 0, NULL, NULL, NULL, '0', '2', 0.00, 8.00, '2016/12/04 02:26', '2016-12-03 20:26:08', 0, NULL, 0, '8.00', 0, NULL, NULL, 0),
(186, 15, 133, 6.00, 0.60, 5.40, 'Less than 1 month', 'sdgrf', 0, '1', 'fixed 1', 'tguty', 0, NULL, NULL, NULL, '0', '1', 0.00, 6.00, '2017/01/13 15:55', '2017-01-13 09:54:55', 0, NULL, 0, '6.00', 0, NULL, NULL, 2),
(113, 15, 88, 22.00, 2.20, 19.80, 'Less than 1 week', 'asdasda', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2016-12-04 18:02:36', 0, NULL, 1, '0.00', 0, NULL, NULL, 0),
(115, 15, 89, 5.00, 0.50, 4.50, NULL, 'ertyhtr', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2016-12-04 18:40:09', 0, NULL, 0, '0.00', 0, NULL, NULL, 0),
(116, 15, 91, 500.00, 50.00, 450.00, 'Less than 1 month', 'You need to create eBay listings for my products. I provide images, the “sell for” price, and a link where you can get a general description of the product. the way it will work: I will share an excel file on google sheets and also a google drive. The excel file contains 2 columns, number + link. By the number you can know which images are for this product on the google drive. And the link helps you to get a general description for the product. After that you need to: 1. Generate an accurate, and high rating keywords title. (must be at least 75 to 80 chars, 80 is the ebay limit). The best way is to see the main keywords that describe the product, use them and add other keywords to it that you can see other eBay sellers uses, or on google search they come up, or using Terapeak.com which is a great tool to generate titles. Cannot use brand keywords that is not really the product. Each keyword must be 100% accurate for the product it self. Keywords such as:Fits a brand name, or some product. Is OK! 2. create a listing description, most of the links already have descriptions but you need to enhance it for better looking + English correction. (It must look different than the source, in a better way) 3. Settings the listing for Variations, in case a product has more than 1 variation such as size, or different color and so on. free shipping selling wordwide (exlude Israel) Product Live for duartion: “Good Till Canceled” 4. Update the unique Item number eBay provides to the excel file right after you publish the product live. You must use WhatsApp + have fluent English for a long term work. you`ll have about 20 links a day. We pay 0.5$ per listing.', 0, '1', 'PHP DEVELOPER - ONGOING WORK', 'fhgdtgf', 0, NULL, NULL, NULL, '0', '1', 0.00, 500.00, '2016/12/07 02:23', '2016-12-04 21:57:46', 0, NULL, 0, '500.00', 0, NULL, NULL, 0),
(117, 15, 92, 5.00, 0.50, 4.50, NULL, 'ryhtr', 0, '1', 'time and date testing', 'THRYTH', 45, NULL, NULL, NULL, '0', NULL, 225.00, 0.00, '2016/12/06 03:49', '2016-12-05 21:23:14', 0, NULL, 1, '0.00', 0, NULL, NULL, 0),
(179, 9, 128, 3456.00, 345.60, 3110.40, 'Less than 1 week', 'rtery', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2017-01-06 14:07:48', 0, NULL, 0, '0.00', 0, NULL, NULL, 0),
(119, 15, 100, 34.00, 3.40, 30.60, 'Less than 1 week', 'ret', 0, '1', 'hire testing', 'gtrtyr', 0, NULL, NULL, NULL, '0', '1', 0.00, 34.00, '2016/12/07 21:46', '2016-12-07 15:46:05', 0, NULL, 0, '34.00', 0, NULL, NULL, 0),
(178, 9, 129, 5.00, 0.50, 4.50, NULL, 'ryetry', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2017-01-06 14:07:20', 0, NULL, 0, '0.00', 0, NULL, NULL, 0),
(121, 15, 104, 500.00, 50.00, 450.00, 'Less than 1 week', 'dfhtr', 0, '0', 'html 2', 'htg', 0, NULL, NULL, NULL, '0', '2', 0.00, 9.00, '2016/12/11 21:31', '2016-12-09 23:30:45', 0, NULL, 0, '500.00', 0, NULL, NULL, 0),
(185, 9, 132, 250.00, 25.00, 225.00, 'Less than 1 month', 'bjhkgh', 0, '0', 'fixed', 'rstr', 0, NULL, NULL, NULL, '0', '2', 0.00, 9.00, '2017/01/13 15:53', '2017-01-13 08:03:05', 1, '2017-01-16 17:01:23', 1, '250.00', 0, 1, 2, 3),
(177, 15, 128, 50.00, 5.00, 45.00, 'Less than 1 week', 'stre', 0, '1', 'test-5', 'fghfg', 0, NULL, NULL, NULL, '0', '1', 0.00, 50.00, '', '2017-01-05 22:29:17', 0, NULL, 0, '50.00', 0, NULL, NULL, 2),
(123, 15, 101, 400.00, 40.00, 360.00, 'not_sure', 'sghdfhtdh', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2016-12-10 21:10:38', 0, NULL, 1, '0.00', 0, NULL, NULL, 0),
(124, 15, 105, 40.00, 4.00, 36.00, 'Less than 1 month', 'tretre', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2016-12-10 21:10:51', 0, NULL, 0, '0.00', 0, NULL, NULL, 0),
(125, 15, 106, 111.00, 11.10, 99.90, 'Less than 1 week', 'fgdth', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2016-12-11 15:35:52', 0, NULL, 1, '0.00', 0, 1, 2, 0),
(126, 9, 106, 999.00, 99.90, 899.10, 'Less than 1 week', 'htht', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2016-12-11 15:37:05', 0, NULL, 0, '0.00', 0, NULL, NULL, 1),
(127, 15, 107, 11.00, 1.10, 9.90, 'Less than 1 month', 'rgrg', 0, '0', 'payment testing', 'ttfuru', 0, NULL, NULL, NULL, '0', '1', 0.00, 6.00, '2016/12/11 21:47', '2016-12-11 15:41:37', 0, NULL, 0, '6.00', 0, NULL, NULL, 0),
(128, 9, 107, 99.00, 9.90, 89.10, '1-3 months', 'sdgdyd', 0, '1', 'payment testing', 'fhgfh', 0, NULL, NULL, NULL, '0', '2', 0.00, 1.00, '2016/12/11 21:45', '2016-12-11 15:42:41', 0, NULL, 1, '99.00', 0, NULL, NULL, 0),
(174, 15, 127, 150.00, 15.00, 135.00, 'Less than 1 month', 'sdgtre', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2017-01-04 09:39:45', 0, NULL, 1, '0.00', 0, 1, 2, 0),
(130, 15, 108, 100.00, 10.00, 90.00, 'Less than 1 week', 'tewst', 0, '1', 'php', 'wggfhfg', 0, NULL, NULL, NULL, '0', '1', 0.00, 10100.00, '2016/12/13 00:56', '2016-12-11 16:21:42', 0, NULL, 0, '10100.00', 0, NULL, NULL, 0),
(184, 15, 131, 5.00, 0.50, 4.50, NULL, 'ok', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2017-01-13 05:53:29', 0, NULL, 1, '0.00', 0, 1, 2, 0),
(132, 9, 108, 34.00, 3.40, 30.60, '1-3 months', 'rtey', 0, '1', 'php', 'sdgdthtr', 0, NULL, NULL, NULL, '0', '1', 0.00, 34.00, '2016/12/13 00:47', '2016-12-11 16:49:48', 0, NULL, 1, '34.00', 0, NULL, NULL, 0),
(172, 15, 124, 5.00, 0.50, 4.50, NULL, 'etyeryetryu', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2017-01-04 09:33:52', 0, NULL, 0, '0.00', 0, NULL, NULL, 0),
(134, 15, 109, 300.00, 30.00, 270.00, '3-6 months', 'dyty', 0, '0', 'php payment ', 'edgr', 0, NULL, NULL, NULL, '0', '', 0.00, 50.00, '2016/12/16 15:14', '2016-12-11 17:59:08', 0, NULL, 0, '300.00', 0, NULL, NULL, 0),
(136, 15, 110, 23.00, 2.30, 20.70, 'Less than 1 month', 'rtry', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2016-12-12 18:11:31', 0, NULL, 1, '0.00', 0, NULL, NULL, 0),
(137, 15, 111, 39.00, 3.90, 35.10, 'Less than 1 month', 'dfhgf', 1, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2016-12-14 16:48:41', 0, NULL, 0, '0.00', 0, 1, 1, 0),
(183, 15, 132, 60.00, 6.00, 54.00, 'Less than 1 week', 'sftgr', 0, '0', 'fixed', 'hi', 0, NULL, NULL, NULL, '0', '1', 0.00, 85.00, '2017/01/13 11:42', '2017-01-13 05:21:50', 1, '2017-01-14 18:01:50', 0, '60.00', 0, NULL, NULL, 3),
(140, 15, 112, 1.00, 0.10, 0.90, 'Less than 1 month', 'frytru', 1, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2016-12-16 05:12:21', 0, NULL, 0, '0.00', 0, NULL, NULL, 0),
(141, 9, 112, 2.00, 0.20, 1.80, 'Less than 1 week', 'frytry', 1, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2016-12-16 05:12:45', 0, NULL, 0, '0.00', 0, NULL, NULL, 0),
(143, 15, 113, 5.00, 0.50, 4.50, NULL, 'erye5ye5', 1, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2016-12-16 05:29:41', 0, NULL, 0, '0.00', 0, 1, 1, 0),
(144, 9, 113, 5.00, 0.50, 4.50, NULL, 'truyityik', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2016-12-19 10:50:57', 0, NULL, 1, '0.00', 0, NULL, NULL, 0),
(168, 9, 123, 5.00, 0.50, 4.50, NULL, 'sgtery', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2016-12-28 18:11:25', 0, NULL, 1, '0.00', 0, 1, 2, 0),
(148, 9, 115, 34.00, 3.40, 30.60, 'not_sure', 'wergtergyhert', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2016-12-22 09:02:37', 0, NULL, 1, '0.00', 0, NULL, NULL, 0),
(149, 9, 116, 5.00, 0.50, 4.50, NULL, 'ergterhgy', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2016-12-22 09:04:50', 0, NULL, 1, '0.00', 0, NULL, NULL, 0),
(167, 15, 123, 5.00, 0.50, 4.50, NULL, 'srgyetry', 1, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2016-12-28 18:10:00', 0, NULL, 0, '0.00', 0, 1, 1, 1),
(151, 15, 117, 34354.00, 3435.40, 30918.60, 'Less than 1 month', 'sghthtr', 1, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2016-12-23 17:24:56', 0, NULL, 1, '0.00', 0, NULL, NULL, 0),
(152, 15, 118, 5.00, 0.50, 4.50, NULL, 'Hi we are testing job details', 1, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2016-12-23 17:47:02', 0, NULL, 0, '0.00', 0, NULL, NULL, 0),
(153, 9, 118, 5.00, 0.50, 4.50, NULL, 'ytkt', 1, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2016-12-23 17:47:53', 0, NULL, 1, '0.00', 0, NULL, NULL, 0),
(155, 15, 119, 5.00, 0.50, 4.50, NULL, 'egdfgh', 1, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2016-12-23 20:48:03', 0, NULL, 0, '0.00', 0, NULL, NULL, 0),
(156, 9, 119, 5.00, 0.50, 4.50, NULL, 'sdg', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2016-12-23 20:50:12', 0, NULL, 1, '0.00', 0, NULL, NULL, 0),
(181, 13, 132, 100.00, 10.00, 90.00, 'Less than 1 month', 'we are testing fixed ', 0, '0', 'fixed', 'fgfg', 0, NULL, NULL, NULL, '0', '1', 0.00, 101.00, '2017/01/13 12:51', '2017-01-13 05:19:06', 1, '2017-01-16 18:01:29', 0, '100.00', 0, NULL, NULL, 3),
(158, 15, 120, 5.00, 0.50, 4.50, NULL, 'fdhdfh', 1, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2016-12-24 04:58:08', 0, NULL, 0, '0.00', 0, NULL, NULL, 0),
(160, 9, 120, 5.00, 0.50, 4.50, NULL, 'ryghtreuhru', 1, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2016-12-24 05:07:14', 0, NULL, 0, '0.00', 0, NULL, NULL, 0),
(161, 43, 120, 5.00, 0.50, 4.50, NULL, 'this is testing page', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2016-12-24 08:49:44', 0, NULL, 1, '0.00', 0, 1, 2, 0),
(162, 15, 120, 5.00, 0.50, 4.50, NULL, 'rtyurturu', 1, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2016-12-24 15:30:08', 0, NULL, 0, '0.00', 0, NULL, NULL, 0),
(182, 13, 131, 5.00, 0.50, 4.50, NULL, 'we are testing hourly', 0, '1', 'hourly', 'fgh', 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '2017/01/13 15:50', '2017-01-13 05:19:18', 0, NULL, 0, '0.00', 0, NULL, NULL, 2),
(164, 15, 121, 5.00, 0.50, 4.50, NULL, 'teyrt6', 1, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2016-12-25 16:02:35', 0, NULL, 0, '0.00', 0, NULL, NULL, 0),
(165, 15, 121, 5.00, 0.50, 4.50, NULL, 'a', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2016-12-25 16:06:06', 0, NULL, 1, '0.00', 0, NULL, NULL, 0),
(239, 13, 180, 5.00, 0.50, 4.50, NULL, 'rttder', 0, '0', NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, 0.00, 0.00, '0', '2017-03-07 21:38:47', 0, NULL, 0, '0.00', 0, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `job_bid_attachments`
--

DROP TABLE IF EXISTS `job_bid_attachments`;
CREATE TABLE `job_bid_attachments` (
  `id` int(11) NOT NULL,
  `job_bid_id` int(11) NOT NULL,
  `path` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `job_bid_attachments`
--

INSERT INTO `job_bid_attachments` (`id`, `job_bid_id`, `path`) VALUES
(1, 18, '/uploads/1472539190866726.jpg'),
(2, 82, '/uploads/147984392568749.png');

-- --------------------------------------------------------

--
-- Structure de la table `job_categories`
--

DROP TABLE IF EXISTS `job_categories`;
CREATE TABLE `job_categories` (
  `cat_id` int(11) NOT NULL,
  `category_name` varchar(100) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `job_categories`
--

INSERT INTO `job_categories` (`cat_id`, `category_name`, `date_created`) VALUES
(1, 'Web, Mobile & Software Dev', '2016-08-16 20:07:11'),
(2, 'IT & Networking', '2016-08-16 20:07:11'),
(3, 'Data Science & Analytics', '2016-08-16 20:07:11'),
(4, 'Engineering & Architecture', '2016-08-16 20:07:11'),
(5, 'Design & Creative', '2016-08-16 20:07:11'),
(6, 'Writing', '2016-08-16 20:07:11'),
(7, 'Translation', '2016-08-16 20:07:11'),
(8, 'Legal', '2016-08-16 20:07:11'),
(9, 'Admin Support', '2016-08-16 20:07:11'),
(10, 'Customer Service', '2016-08-16 20:07:11'),
(11, 'Sales & Marketing', '2016-08-16 20:07:11'),
(12, 'Accounting & Consulting', '2016-08-16 20:07:11');

-- --------------------------------------------------------

--
-- Structure de la table `job_conversation`
--

DROP TABLE IF EXISTS `job_conversation`;
CREATE TABLE `job_conversation` (
  `id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `bid_id` int(11) NOT NULL,
  `message_conversation` text NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `have_seen` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1= unseen,0=seen'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `job_conversation`
--

INSERT INTO `job_conversation` (`id`, `job_id`, `bid_id`, `message_conversation`, `sender_id`, `receiver_id`, `created`, `have_seen`) VALUES
(348, 178, 235, 'fg', 13, 18, '2017-03-09 21:25:21', 0),
(349, 157, 228, 'ff', 13, 0, '2017-03-09 21:26:11', 1),
(350, 153, 221, 'd', 13, 18, '2017-03-09 21:30:34', 0),
(347, 180, 239, 'hi', 18, 0, '2017-03-09 15:48:53', 0),
(15, 32, 14, 'dfbdfbvdf bdf dfb', 25, 18, '2016-09-01 14:27:19', 0),
(16, 32, 14, 'dfbdfbdbd bdbdbbfdfbdf b', 25, 18, '2016-09-01 14:40:54', 0),
(17, 32, 14, 'fgnfnfnfgn bdfbgdf b', 25, 18, '2016-09-01 14:41:42', 0),
(18, 32, 14, 'sdvfgsdv sv sdv sd v', 25, 18, '2016-09-01 14:45:10', 0),
(19, 32, 14, 'sbvsfbsbsb', 25, 18, '2016-09-01 14:45:43', 0),
(20, 32, 14, 'test message', 25, 18, '2016-09-01 14:50:01', 0),
(21, 32, 14, 'test', 25, 18, '2016-09-01 14:51:34', 0),
(23, 32, 14, 'fgncgnbdf sdf vsdv', 25, 18, '2016-09-01 15:20:27', 0),
(24, 32, 14, 'ppp', 25, 18, '2016-09-01 15:20:42', 0),
(25, 32, 14, 'uu', 25, 18, '2016-09-01 15:21:03', 0),
(26, 32, 14, 'wer', 25, 18, '2016-09-01 18:58:40', 0),
(27, 32, 14, '', 25, 18, '2016-09-01 18:58:41', 0),
(28, 32, 14, '', 25, 18, '2016-09-01 18:58:41', 0),
(29, 32, 14, 'sad', 25, 18, '2016-09-01 18:58:49', 0),
(346, 153, 221, 'go', 13, 18, '2017-03-08 23:00:32', 0),
(345, 178, 235, 'hi', 13, 18, '2017-03-08 22:59:54', 0),
(32, 32, 14, 'test', 25, 18, '2016-09-01 19:01:02', 0),
(355, 178, 235, 'sdgsjfhsdjfsdfjhdsfhds\r\n', 13, 18, '2017-03-12 15:12:58', 0),
(344, 178, 235, 'hi', 13, 18, '2017-03-08 22:58:03', 0),
(35, 32, 14, 'test', 25, 18, '2016-09-01 19:01:40', 0),
(36, 32, 14, 'hi', 25, 18, '2016-09-01 19:01:54', 0),
(37, 33, 19, 'hi', 9, 18, '2016-09-01 19:03:56', 0),
(38, 32, 14, 'gh,fhfdfh hd hd', 25, 18, '2016-09-01 19:12:10', 0),
(343, 153, 221, 'ok', 13, 18, '2017-03-08 22:15:45', 0),
(340, 153, 221, 'fgh', 18, 18, '2017-03-08 22:10:47', 0),
(341, 180, 239, 'h', 13, 18, '2017-03-08 22:14:16', 0),
(342, 153, 221, 'cghgggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggwe are testing time', 18, 18, '2017-03-08 22:14:48', 0),
(338, 153, 221, 'j', 18, 18, '2017-03-04 18:50:42', 0),
(339, 180, 239, 'dff', 18, 13, '2017-03-07 21:39:12', 0),
(337, 179, 236, 'dd', 18, 13, '2017-03-04 17:51:44', 0),
(336, 153, 221, 'hi', 13, 18, '2017-03-01 17:02:36', 0),
(335, 157, 228, 'h', 13, 18, '2017-03-01 08:01:38', 0),
(334, 157, 228, 'hi', 13, 18, '2017-02-27 20:29:00', 0),
(128, 36, 30, 'yes m here', 25, 18, '2016-09-29 07:14:57', 0),
(333, 153, 221, 'ssssssaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 13, 18, '2017-02-27 18:50:25', 0),
(84, 34, 26, 'hi', 9, 15, '2016-09-05 13:50:30', 0),
(332, 157, 228, 'Hi arun please chcek website www.winjiob.com I need high experience php expert', 18, 13, '2017-02-27 10:21:14', 0),
(86, 32, 23, 'SsS', 25, 18, '2016-09-05 14:13:22', 0),
(331, 153, 221, 'h', 18, 18, '2017-02-26 09:22:14', 0),
(88, 34, 25, 'hi', 9, 18, '2016-09-05 14:23:46', 0),
(330, 153, 221, 'h', 18, 13, '2017-02-26 09:21:02', 0),
(329, 153, 221, 'hh', 18, 13, '2017-02-26 09:20:24', 0),
(91, 32, 23, 'helli ji', 25, 18, '2016-09-07 11:55:09', 0),
(125, 32, 15, 'hi', 9, 18, '2016-09-28 11:34:40', 0),
(328, 153, 221, 'h', 18, 13, '2017-02-26 09:20:16', 0),
(94, 32, 23, 'test 1 confirme', 25, 18, '2016-09-07 12:38:46', 0),
(95, 35, 32, 'hi', 13, 18, '2016-09-07 16:57:01', 0),
(327, 156, 226, 'dfsd', 18, 13, '2017-02-21 15:18:57', 0),
(326, 154, 224, 'gh', 18, 9, '2017-02-18 11:03:22', 1),
(324, 153, 221, 'fghgh', 18, 13, '2017-02-17 11:58:00', 0),
(325, 153, 221, 'hi\r\n', 13, 18, '2017-02-18 07:00:47', 0),
(323, 153, 221, 'fghgfh', 18, 13, '2017-02-17 11:57:58', 0),
(322, 153, 221, 'fhh', 18, 13, '2017-02-17 11:57:56', 0),
(321, 153, 221, 'fdhfdh', 18, 13, '2017-02-17 11:57:54', 0),
(317, 133, 187, 'FGFGTH', 18, 9, '2017-02-17 10:00:14', 1),
(316, 150, 211, 'dfhgdfh', 18, 13, '2017-02-17 09:41:27', 0),
(315, 131, 182, 'afgfg', 18, 13, '2017-02-17 09:21:25', 0),
(314, 131, 182, 'asgg', 18, 13, '2017-02-17 09:21:24', 0),
(313, 131, 182, 'dfgdsg', 18, 13, '2017-02-17 09:21:22', 0),
(110, 32, 23, 'yes m here ', 25, 18, '2016-09-23 07:55:23', 0),
(320, 153, 222, 'fgjfgj', 18, 9, '2017-02-17 11:30:19', 1),
(112, 35, 27, 'i am here', 25, 18, '2016-09-23 07:59:09', 0),
(312, 150, 212, 'dfhdfh', 18, 9, '2017-02-17 05:17:10', 0),
(117, 40, 39, 'hi', 9, 18, '2016-09-23 14:09:20', 0),
(311, 150, 212, 'dfhdfh', 18, 9, '2017-02-17 05:17:08', 0),
(119, 40, 39, 'hi', 9, 18, '2016-09-25 15:53:09', 0),
(120, 38, 34, 'hi', 9, 18, '2016-09-25 15:53:28', 0),
(121, 38, 34, 'ok', 9, 18, '2016-09-25 15:53:49', 0),
(122, 32, 23, 'yes m here\r\n', 25, 18, '2016-09-26 12:16:16', 0),
(310, 150, 212, 'dfhdfh', 18, 9, '2017-02-17 05:17:07', 0),
(319, 153, 221, 'gfjfgjfgj', 18, 13, '2017-02-17 11:30:16', 0),
(129, 40, 39, 'Hi', 9, 18, '2016-10-01 18:49:35', 0),
(309, 150, 212, 'dfhdfh', 18, 9, '2017-02-17 05:17:06', 0),
(308, 150, 212, 'fyty', 18, 9, '2017-02-17 04:47:23', 0),
(304, 148, 208, 'dfgr', 18, 13, '2017-02-16 06:38:15', 0),
(303, 9, 204, 'dffg', 18, 18, '2017-02-16 06:38:08', 1),
(302, 13, 210, 'fgfrg', 18, 18, '2017-02-16 06:38:01', 1),
(301, 149, 213, 'thanks okay', 18, 9, '2017-02-16 06:14:15', 1),
(300, 149, 213, 'hello testing ', 18, 9, '2017-02-16 06:14:01', 1),
(299, 149, 214, 'hello', 18, 15, '2017-02-16 05:34:35', 1),
(298, 150, 212, 'vjkjk', 9, 18, '2017-02-15 15:35:53', 0),
(297, 150, 212, 'dfghfgh', 18, 9, '2017-02-15 15:29:42', 0),
(307, 150, 212, 'fjfgj', 18, 9, '2017-02-17 04:06:18', 0),
(296, 150, 212, 'fghfgh', 18, 9, '2017-02-15 15:29:39', 0),
(145, 48, 59, 'test message', 13, 18, '2016-10-13 17:44:18', 0),
(146, 48, 59, 'test message', 13, 18, '2016-10-13 17:44:18', 0),
(147, 49, 62, 'Hi', 35, 9, '2016-10-14 16:38:58', 0),
(148, 50, 64, 'dfgdg', 29, 13, '2016-10-14 18:55:03', 0),
(295, 150, 212, 'fghfghfgh', 18, 9, '2017-02-15 15:29:38', 0),
(294, 150, 212, 'gfhfgh', 18, 9, '2017-02-15 09:22:57', 0),
(318, 150, 212, 'frg', 18, 9, '2017-02-17 10:07:05', 0),
(293, 150, 212, 'gfhgfh', 18, 9, '2017-02-15 09:22:54', 0),
(153, 50, 64, 'ghgj', 13, 29, '2016-10-18 17:41:45', 0),
(154, 50, 64, 'etruuuuuuuuuuuuuuuuu', 13, 29, '2016-10-18 17:41:51', 0),
(292, 150, 212, 'dfgfdg', 18, 9, '2017-02-07 08:31:07', 0),
(306, 150, 212, 'ghjghj', 18, 9, '2017-02-17 04:06:16', 0),
(157, 46, 58, 'fgdfh', 15, 18, '2016-10-18 17:45:12', 0),
(158, 46, 58, 'thytrh', 15, 18, '2016-10-18 17:45:14', 0),
(291, 150, 212, 'dfgdfg', 18, 9, '2017-02-07 08:31:05', 0),
(290, 150, 212, 'sdfgsdg', 18, 9, '2017-02-07 08:30:57', 0),
(289, 150, 211, 'ghgh', 18, 13, '2017-02-07 08:03:26', 0),
(288, 150, 211, 'fgjhfghj', 18, 13, '2017-02-07 08:03:24', 0),
(164, 46, 57, 'dsdfsd', 13, 18, '2016-11-02 17:49:45', 0),
(165, 55, 73, 'sgetrfdhrteh', 13, 18, '2016-11-21 18:16:13', 0),
(166, 55, 73, 'sgetrfdhrteh', 13, 18, '2016-11-21 18:16:15', 0),
(167, 55, 73, 'rthyrthryt', 13, 18, '2016-11-21 18:16:19', 0),
(168, 55, 73, 'rthyrthr', 13, 18, '2016-11-21 18:16:24', 0),
(170, 65, 83, 'dgfhrfghjt', 29, 9, '2016-11-22 20:04:52', 0),
(287, 150, 211, 'ftdhfgh', 18, 13, '2017-02-07 08:03:22', 0),
(286, 150, 211, ';ojjhoiyhio', 18, 13, '2017-02-07 06:21:20', 0),
(175, 75, 86, 'dfyhtruy', 29, 15, '2016-12-01 10:29:00', 0),
(176, 75, 85, 'tryrtuyrtu', 29, 13, '2016-12-01 10:29:55', 0),
(285, 132, 181, 'gfjhfgjfg\r\n', 18, 18, '2017-02-06 16:03:05', 0),
(284, 149, 214, 'hgjghj', 18, 15, '2017-02-05 10:42:14', 1),
(305, 150, 212, 'ghjgj', 18, 9, '2017-02-17 04:06:15', 0),
(283, 150, 212, 'dfgdfsgfdg', 18, 9, '2017-02-05 10:35:50', 0),
(188, 88, 113, 'xx', 13, 15, '2016-12-04 19:11:26', 0),
(190, 89, 114, 'gg', 13, 18, '2016-12-04 21:08:51', 0),
(282, 147, 207, 'fdg dfg dfsg dfgdfg dfgdfg fdg dfg dfsg dfgdfg dfgdfg fdg dfg dfsg dfgdfg dfgdfg fdg dfg dfsg dfgdfg dfgdfg fdg dfg dfsg dfgdfg dfgdfg fdg dfg dfsg dfgdfg dfgdfg fdg dfg dfsg dfgdfg dfgdfg fdg dfg dfsg dfgdfg dfgdfg ', 13, 18, '2017-02-04 16:44:21', 0),
(281, 147, 207, 'dgf', 13, 18, '2017-02-04 16:15:53', 0),
(193, 88, 113, 'ryty', 15, 18, '2016-12-05 21:28:41', 0),
(280, 147, 207, 'ghkghk', 13, 18, '2017-02-04 15:36:05', 0),
(279, 147, 207, 'fgjfgjfg fgj', 18, 18, '2017-02-04 15:35:34', 0),
(278, 147, 207, 'fghfgh', 13, 18, '2017-02-03 19:17:14', 0),
(277, 147, 207, 'hi', 18, 13, '2017-02-02 15:27:22', 0),
(276, 147, 204, 'dfgrg', 18, 9, '2017-01-30 06:43:35', 0),
(275, 146, 198, 'gkhfjkg', 15, 15, '2017-01-29 17:32:01', 1),
(274, 146, 198, 'ghkgkh', 15, 15, '2017-01-29 17:31:59', 1),
(273, 146, 198, 'khgjkk', 15, 15, '2017-01-29 17:31:57', 1),
(272, 146, 198, 'hi', 18, 15, '2017-01-29 15:59:55', 1),
(271, 146, 198, 'hi\ngfdsagafg', 18, 15, '2017-01-29 15:59:51', 1),
(207, 111, 137, 'ertyt', 15, 18, '2016-12-16 09:16:09', 0),
(270, 146, 201, 'fdjfgj', 18, 9, '2017-01-24 20:57:37', 1),
(210, 113, 142, 'hi', 13, 18, '2016-12-19 18:45:39', 0),
(269, 146, 201, 'fdjdfj', 18, 9, '2017-01-24 20:57:35', 1),
(268, 146, 201, 'hjfgjfg', 18, 9, '2017-01-24 20:57:34', 1),
(213, 116, 147, 'ok', 13, 18, '2016-12-22 14:25:32', 0),
(267, 146, 201, 'fgjfgj', 18, 9, '2017-01-24 20:57:32', 1),
(266, 146, 201, 'fgjnfgj', 18, 9, '2017-01-24 20:57:31', 1),
(265, 146, 201, 'df gdfg df', 13, 9, '2017-01-24 20:39:24', 1),
(218, 118, 0, 'fgf', 9, 18, '2016-12-23 18:42:39', 0),
(219, 118, 153, 'ryt', 9, 18, '2016-12-23 18:46:32', 1),
(264, 146, 201, 'fsdg dfg dfg ', 13, 9, '2017-01-24 20:39:22', 1),
(222, 117, 0, 'frgterh', 13, 18, '2016-12-25 13:59:22', 0),
(223, 117, 0, 'frghtrh', 13, 18, '2016-12-25 13:59:27', 0),
(263, 146, 201, 'sdfgdsfg df', 13, 9, '2017-01-24 20:39:19', 1),
(262, 146, 201, 'hi', 13, 9, '2017-01-24 20:39:17', 1),
(226, 121, 164, '1', 15, 18, '2016-12-25 16:05:17', 0),
(227, 120, 159, 'fdghtjhyfj', 13, 18, '2016-12-27 10:39:27', 0),
(261, 146, 201, 'hello\n', 13, 9, '2017-01-24 20:39:14', 1),
(260, 136, 192, 'gi', 18, 13, '2017-01-14 07:44:18', 0),
(259, 133, 188, 'test ', 13, 18, '2017-01-14 05:22:29', 0),
(258, 133, 188, 'sss', 13, 18, '2017-01-14 05:07:12', 0),
(257, 106, 126, 'ee', 29, 9, '2017-01-13 15:35:07', 1),
(256, 132, 181, 'aaa', 13, 18, '2017-01-13 15:05:42', 0),
(255, 132, 181, 'aaa', 13, 18, '2017-01-13 15:03:36', 0),
(248, 75, 85, 'test remove ', 13, 29, '2017-01-13 09:18:20', 0),
(249, 75, 85, 'test removed ', 13, 29, '2017-01-13 09:20:27', 0),
(250, 75, 85, 'aaa', 13, 29, '2017-01-13 09:21:12', 0),
(251, 132, 181, 'hi', 18, 13, '2017-01-13 09:24:28', 0),
(252, 132, 181, 'hello', 13, 18, '2017-01-13 09:26:04', 0),
(253, 133, 188, 'er', 18, 13, '2017-01-13 10:14:31', 0),
(254, 75, 85, 'aaa', 13, 29, '2017-01-13 15:02:19', 0),
(247, 75, 85, 'ssss', 13, 29, '2017-01-13 09:16:21', 0),
(238, 126, 170, 'ok', 15, 18, '2017-01-11 21:20:12', 0),
(239, 0, 0, '', 13, 0, '2017-01-12 07:07:54', 0),
(240, 0, 0, '', 13, 0, '2017-01-12 07:08:56', 0),
(241, 0, 0, 'sdsd', 13, 0, '2017-01-12 09:20:47', 0),
(242, 0, 0, 'aaa', 13, 0, '2017-01-12 09:21:00', 0),
(243, 0, 0, 'aaa', 13, 0, '2017-01-12 09:25:34', 0),
(244, 0, 0, 'sss', 13, 0, '2017-01-12 09:26:43', 0),
(246, 75, 85, 'ssssss', 13, 29, '2017-01-13 07:21:18', 0),
(351, 178, 235, 'test', 13, 18, '2017-03-12 14:54:26', 0),
(352, 180, 239, 'fgfgg', 13, 0, '2017-03-12 15:02:37', 0),
(353, 178, 235, 'ghgfh', 13, 18, '2017-03-12 15:07:14', 0),
(354, 178, 235, 'fgh', 18, 13, '2017-03-12 15:08:49', 0),
(356, 180, 239, 'dff', 18, 0, '2017-03-12 15:33:20', 0),
(357, 180, 239, 'test\r\n', 18, 0, '2017-03-12 16:00:35', 0),
(358, 180, 239, 'asda\r\nasd\r\nasd\r\nasd\r\n', 18, 0, '2017-03-12 16:00:54', 0),
(359, 178, 235, 'test', 13, 18, '2017-03-12 16:07:02', 0),
(360, 178, 235, 'test', 13, 18, '2017-03-12 16:07:36', 0),
(361, 178, 235, 'test', 13, 18, '2017-03-12 16:07:41', 0),
(362, 180, 239, 'test', 18, 0, '2017-03-12 16:09:02', 0),
(363, 180, 239, 'testtete', 18, 0, '2017-03-12 16:09:15', 0),
(364, 180, 239, 'aweawe', 18, 0, '2017-03-12 16:09:19', 0),
(365, 180, 239, 'WAIT', 18, 0, '2017-03-12 16:09:26', 0),
(366, 180, 239, 'TEST', 18, 0, '2017-03-12 16:09:31', 0),
(367, 180, 239, 'test', 13, 0, '2017-03-12 16:12:53', 0),
(368, 178, 235, 'test', 13, 18, '2017-03-12 16:13:19', 0),
(369, 178, 235, 'testte', 13, 18, '2017-03-12 16:14:26', 0),
(370, 178, 235, 'wait', 13, 18, '2017-03-12 16:14:35', 0),
(371, 180, 239, 'sample', 13, 0, '2017-03-12 16:16:14', 0),
(372, 178, 235, 'test', 13, 18, '2017-03-12 16:16:53', 0),
(373, 178, 235, 'this is a sample message', 13, 18, '2017-03-12 16:17:01', 0),
(374, 178, 235, 'this is a sample message', 13, 18, '2017-03-12 16:18:13', 0),
(375, 178, 235, 'sample', 13, 18, '2017-03-12 16:19:53', 0),
(376, 180, 239, 'This is updated', 13, 0, '2017-03-12 16:20:00', 0),
(377, 178, 235, 'TEST', 13, 18, '2017-03-12 16:20:17', 0),
(378, 180, 239, 'test', 18, 0, '2017-03-12 16:23:07', 0),
(379, 178, 235, 'SAMPLE', 18, 18, '2017-03-12 16:23:50', 0),
(380, 178, 235, 'TEST', 18, 18, '2017-03-12 16:25:05', 0),
(381, 178, 235, 'HI JOHN', 13, 18, '2017-03-12 16:25:32', 0),
(382, 178, 235, 'HELLO', 13, 18, '2017-03-12 16:27:24', 0),
(383, 178, 235, 'TEST', 18, 18, '2017-03-12 16:27:38', 0),
(384, 178, 235, 'test', 13, 18, '2017-03-12 16:33:26', 0),
(385, 180, 239, 'ff', 13, 0, '2017-03-12 16:49:24', 0),
(386, 180, 239, 'ff', 13, 0, '2017-03-12 16:49:28', 0),
(387, 180, 239, 'ff', 13, 0, '2017-03-12 16:49:35', 0),
(388, 180, 239, 'ff', 13, 0, '2017-03-12 16:49:36', 0),
(389, 180, 239, 'ff', 13, 0, '2017-03-12 16:49:38', 0),
(390, 180, 239, 'ff', 13, 0, '2017-03-12 16:49:38', 0),
(391, 180, 239, 'ff', 13, 0, '2017-03-12 16:49:39', 0),
(392, 180, 239, 'ff', 13, 0, '2017-03-12 16:49:40', 0),
(393, 180, 239, 'ff', 13, 0, '2017-03-12 16:49:54', 0),
(394, 180, 239, 'ff', 13, 0, '2017-03-12 16:49:55', 0),
(395, 180, 239, 'ff', 13, 0, '2017-03-12 16:49:55', 0),
(396, 180, 239, 'ff', 13, 0, '2017-03-12 16:49:55', 0),
(397, 180, 239, 'ff', 13, 0, '2017-03-12 16:49:55', 0),
(398, 180, 239, 'ff', 13, 0, '2017-03-12 16:49:55', 0),
(399, 180, 239, 'ff', 13, 0, '2017-03-12 16:49:55', 0),
(400, 178, 235, 'sample message', 13, 18, '2017-03-12 16:52:17', 0),
(401, 178, 235, 'sample message', 13, 18, '2017-03-12 16:52:20', 0),
(402, 178, 235, 'dddd', 13, 18, '2017-03-12 16:54:54', 0),
(403, 178, 235, 'TEST', 13, 18, '2017-03-12 17:09:15', 0),
(404, 180, 239, 'SAMPLE', 13, 0, '2017-03-12 17:25:03', 0),
(405, 180, 239, 'SA', 13, 0, '2017-03-12 17:28:08', 0),
(406, 180, 239, 'TEAST', 13, 0, '2017-03-12 17:37:27', 0),
(407, 180, 239, 'TEST', 13, 0, '2017-03-12 17:44:26', 0),
(408, 150, 211, 'TEST', 13, 18, '2017-03-12 17:47:00', 0),
(409, 180, 239, 'HEY', 18, 0, '2017-03-12 17:53:38', 0),
(410, 180, 239, 'WEEE', 13, 0, '2017-03-12 18:01:05', 0),
(411, 180, 239, 'TE', 13, 0, '2017-03-12 18:07:42', 0),
(412, 178, 235, 'TEST', 13, 18, '2017-03-12 18:28:53', 0),
(413, 178, 235, 'SAMPLE', 13, 0, '2017-03-12 18:29:20', 0),
(414, 178, 235, 'SAMPLE', 13, 18, '2017-03-12 18:29:32', 0),
(415, 178, 235, 'TEST', 13, 18, '2017-03-12 18:31:53', 0),
(416, 178, 235, 'TEST ', 13, 0, '2017-03-12 18:32:00', 0),
(417, 178, 235, 'This is a sample', 13, 18, '2017-03-12 18:32:14', 0),
(418, 178, 235, 'Holy cow', 13, 18, '2017-03-12 18:35:57', 0),
(419, 178, 235, 'Holy cow', 13, 0, '2017-03-12 18:36:14', 0),
(420, 178, 235, 'Holy chow', 13, 18, '2017-03-12 18:36:23', 0),
(421, 178, 235, 'Timcheck', 13, 18, '2017-03-12 18:37:35', 0),
(422, 178, 235, 'TEST', 13, 18, '2017-03-12 18:38:24', 0),
(423, 178, 235, 'TEST', 13, 0, '2017-03-12 18:38:35', 0),
(424, 178, 235, 'test', 13, 18, '2017-03-12 18:44:43', 0),
(425, 178, 235, '\r\ntest', 13, 0, '2017-03-12 18:45:04', 0),
(426, 178, 235, 'TEST', 13, 18, '2017-03-12 18:46:49', 0),
(427, 178, 235, 'test', 13, 18, '2017-03-12 18:49:43', 0),
(428, 178, 235, 'Sample', 13, 0, '2017-03-12 18:50:21', 0),
(429, 178, 235, 'Sample', 13, 18, '2017-03-12 18:50:30', 0),
(430, 178, 235, 'TEST', 13, 0, '2017-03-12 18:56:27', 0),
(431, 178, 235, 'TEST', 13, 0, '2017-03-12 18:57:01', 0),
(432, 178, 235, 'Sample', 13, 18, '2017-03-12 18:57:51', 0),
(433, 178, 235, 'TEST', 13, 0, '2017-03-12 18:58:32', 0),
(434, 0, 0, '', 13, 0, '2017-03-12 19:00:55', 0),
(435, 0, 0, '', 13, 0, '2017-03-12 19:06:08', 0),
(436, 0, 0, '', 13, 0, '2017-03-12 19:06:23', 0),
(437, 0, 0, '', 13, 0, '2017-03-12 19:06:31', 0),
(438, 0, 0, '', 13, 0, '2017-03-12 19:07:05', 0),
(439, 0, 0, '', 13, 0, '2017-03-12 19:09:41', 0),
(440, 178, 235, 'vf', 13, 18, '2017-03-12 19:11:22', 0),
(441, 0, 0, '', 13, 0, '2017-03-12 19:14:55', 0),
(442, 178, 235, 'FGG', 13, 18, '2017-03-12 19:17:52', 0),
(443, 178, 235, 'GGGGGGGGGGG', 13, 18, '2017-03-12 19:18:12', 0),
(444, 0, 0, '', 13, 0, '2017-03-12 20:58:57', 0),
(445, 0, 0, '', 13, 0, '2017-03-13 00:16:21', 0),
(446, 178, 235, 'test', 13, 18, '2017-03-13 00:16:36', 0),
(447, 178, 235, 'test', 13, 18, '2017-03-13 00:36:57', 0),
(448, 0, 0, '', 13, 0, '2017-03-13 00:49:55', 0),
(449, 0, 0, '', 13, 0, '2017-03-13 00:51:58', 0),
(450, 0, 0, '', 13, 0, '2017-03-13 00:53:36', 0),
(451, 0, 0, '', 13, 0, '2017-03-13 00:59:18', 0),
(452, 178, 235, 'TEST', 13, 18, '2017-03-13 00:59:28', 0),
(453, 178, 235, 'This is a test', 13, 18, '2017-03-13 00:59:46', 0),
(454, 178, 235, 'This is a test', 13, 0, '2017-03-13 00:59:57', 0),
(455, 178, 235, 'TEST', 13, 0, '2017-03-13 01:00:27', 0),
(456, 0, 0, '', 13, 0, '2017-03-13 01:00:53', 0),
(457, 0, 0, '', 13, 0, '2017-03-13 01:01:59', 0),
(458, 0, 0, '', 13, 0, '2017-03-13 01:04:22', 0),
(459, 0, 0, '', 13, 0, '2017-03-13 01:05:39', 0),
(460, 0, 0, '', 13, 0, '2017-03-13 01:06:05', 0),
(461, 178, 235, 'TEST', 13, 18, '2017-03-13 01:07:35', 0),
(462, 178, 235, 'S', 13, 18, '2017-03-13 01:11:49', 0),
(463, 178, 235, 'T', 13, 18, '2017-03-13 01:14:05', 0),
(464, 178, 235, 'Sa', 13, 18, '2017-03-13 01:15:22', 0),
(465, 178, 235, 'Sample', 13, 18, '2017-03-13 01:15:40', 0),
(466, 178, 235, 'TEST', 13, 0, '2017-03-13 01:20:46', 0),
(467, 178, 235, 'Sample', 13, 0, '2017-03-13 01:24:24', 0),
(468, 178, 235, 'TEST', 13, 0, '2017-03-13 01:26:01', 0),
(469, 178, 235, 'TEST', 13, 18, '2017-03-13 01:26:04', 0),
(470, 178, 235, 'TEST', 13, 0, '2017-03-13 01:35:48', 0),
(471, 178, 235, 'TEST', 13, 18, '2017-03-13 01:35:55', 0),
(472, 178, 235, 'test', 13, 0, '2017-03-13 09:20:33', 0),
(473, 178, 235, 're', 13, 0, '2017-03-14 13:32:44', 0),
(474, 178, 235, 'test', 13, 0, '2017-03-14 14:44:22', 0),
(475, 0, 0, '', 13, 0, '2017-03-14 14:54:23', 1),
(476, 0, 0, '', 13, 0, '2017-03-14 14:54:33', 1),
(477, 178, 235, 'qwe', 13, 0, '2017-03-14 14:54:47', 0),
(478, 178, 235, '\'llll', 13, 0, '2017-03-14 14:56:05', 0);

-- --------------------------------------------------------

--
-- Structure de la table `job_conversation_files`
--

DROP TABLE IF EXISTS `job_conversation_files`;
CREATE TABLE `job_conversation_files` (
  `id` int(11) NOT NULL,
  `job_conversation_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `original_name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `job_conversation_files`
--

INSERT INTO `job_conversation_files` (`id`, `job_conversation_id`, `name`, `original_name`) VALUES
(1, 242, 'image_58774a7c8ad8b.jpg', 'Hydrangeas.jpg'),
(2, 242, 'image_58774a7c8b31c.jpg', 'Jellyfish.jpg'),
(3, 243, 'image_58774b8ec7a9a.jpg', 'Hydrangeas.jpg'),
(4, 243, 'image_58774b8ec805f.jpg', 'Jellyfish.jpg'),
(5, 244, 'image_58774bd3b02b8.jpg', 'Hydrangeas.jpg'),
(6, 244, 'image_58774bd3b08e9.jpg', 'Jellyfish.jpg'),
(7, 246, 'image_58787fee57ce1.jpg', 'Hydrangeas.jpg'),
(8, 246, 'image_58787fee582c0.jpg', 'Jellyfish.jpg'),
(9, 247, 'image_58789ae5c5a11.', NULL),
(10, 247, 'image_58789ae5c5c77.', NULL),
(11, 248, 'image_58789b5c205ec.jpg', NULL),
(12, 248, 'image_58789b5c207e2.jpg', 'Hydrangeas.jpg'),
(13, 249, 'image_58789bdb86f48.jpg', 'Hydrangeas.jpg'),
(14, 249, 'image_58789bdb87575.jpg', NULL),
(15, 249, 'image_58789bdb8771e.jpg', NULL),
(16, 250, 'image_58789c0836a6c.jpg', 'Desert.jpg'),
(17, 254, 'image_5878ebfbebf50.jpg', 'Hydrangeas.jpg'),
(18, 254, 'image_5878ebfbec4f8.jpg', 'Jellyfish.jpg'),
(19, 255, 'image_5878ec48ee15f.jpg', 'Hydrangeas.jpg'),
(20, 255, 'image_5878ec48ee649.jpg', 'Jellyfish.jpg'),
(21, 256, 'image_5878ecc662bba.jpg', 'Hydrangeas.jpg'),
(22, 256, 'image_5878ecc66307a.jpg', 'Jellyfish.jpg'),
(23, 256, 'image_5878ecc663670.jpg', 'Koala.jpg'),
(24, 258, 'image_5879b20086412.jpg', 'Desert.jpg'),
(25, 258, 'image_5879b20086c15.jpg', 'Hydrangeas.jpg'),
(26, 258, 'image_5879b20087050.jpg', 'Jellyfish.jpg'),
(27, 259, 'image_5879b595068c8.jpg', 'Jellyfish.jpg'),
(28, 259, 'image_5879b59506fff.jpg', NULL),
(29, 281, 'image_5895fe3951b73.jpg', 'screenshot_61.png'),
(30, 355, 'image_58c5657a58c1e.jpg', '001.jpg'),
(31, 425, 'image_58c59730b6b92.jpg', 'Bajaj-Dominar-400-side.jpg'),
(32, 428, 'image_58c5986d95283.jpg', 'Bajaj-Dominar-400-side.jpg'),
(33, 431, 'image_58c599fdc01e5.jpg', '01.jpg'),
(34, 433, 'image_58c59a58dc43a.jpg', 'box.gif'),
(35, 455, 'image_58c5ef2b74cd2.jpg', 'Bajaj-Dominar-400-side.jpg'),
(36, 473, 'image_58c7f0fc5518f.jpg', '.gitattributes');

-- --------------------------------------------------------

--
-- Structure de la table `job_feedback`
--

DROP TABLE IF EXISTS `job_feedback`;
CREATE TABLE `job_feedback` (
  `feedback_id` int(11) NOT NULL,
  `feedback_job_id` int(11) NOT NULL,
  `feedback_userid` int(11) NOT NULL,
  `feedback_clientid` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `feedback_skill` float(10,2) DEFAULT NULL,
  `feedback_quality` float(10,2) DEFAULT NULL,
  `feedback_ability` float(10,2) DEFAULT NULL,
  `feedback_deadline` int(11) NOT NULL,
  `feedback_communication` float(10,2) DEFAULT NULL,
  `feedback_score` float(10,2) DEFAULT NULL,
  `feedback_comment` text NOT NULL,
  `feedback_creted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `haveseen` tinyint(1) NOT NULL DEFAULT '0'COMMENT
) ;

--
-- Contenu de la table `job_feedback`
--

INSERT INTO `job_feedback` (`feedback_id`, `feedback_job_id`, `feedback_userid`, `feedback_clientid`, `sender_id`, `feedback_skill`, `feedback_quality`, `feedback_ability`, `feedback_deadline`, `feedback_communication`, `feedback_score`, `feedback_comment`, `feedback_creted`, `haveseen`) VALUES
(94, 143, 13, 18, 13, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 'gfyfu', '2017-02-28 17:24:23', 0),
(95, 136, 15, 18, 18, 4.50, 4.50, 5.00, 5, 4.50, 4.60, 'ok', '2017-03-09 20:03:12', 0),
(96, 146, 15, 18, 18, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 'ok', '2017-03-20 05:46:58', 1),
(97, 146, 15, 18, 18, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 'ok', '2017-03-20 05:46:58', 1),
(98, 178, 13, 18, 13, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 'rgdf', '2017-03-20 05:55:58', 1),
(92, 138, 13, 18, 13, 5.00, 5.00, 5.00, 5, 4.50, 4.90, 'dfgh', '2017-02-03 18:59:12', 0),
(93, 148, 9, 18, 18, 5.00, 5.00, 5.00, 5, 5.00, 5.00, 'fgt', '2017-02-03 19:12:14', 0),
(89, 132, 13, 18, 18, 5.00, 5.00, 5.00, 5, 5.00, 5.00, 'ok', '2017-01-27 17:18:43', 0),
(90, 147, 15, 18, 18, 5.00, 5.00, 5.00, 5, 5.00, 5.00, 'kjhg bkjh kj', '2017-01-27 20:56:20', 0),
(91, 146, 13, 18, 13, 4.50, 4.50, 3.50, 4, 3.50, 3.90, 'ergt dfg fdgfg fg', '2017-01-29 07:54:29', 0),
(88, 144, 9, 18, 18, 5.00, 5.00, 5.00, 5, 5.00, 5.00, 'satu did a great job.I will him in future.satu did a great job.I will him in future.satu did a great job.I will him in future.satu did a great job.I will him in future.satu did a great job.I will him in future', '2017-01-25 15:54:47', 0),
(87, 144, 9, 18, 9, 5.00, 5.00, 5.00, 5, 5.00, 5.00, 'satu did a great job.I will him in future.satu did a great job.I will him in future.satu did a great job.I will him in future.satu did a great job.I will him in future.satu did a great job.I will him in future\r\n', '2017-01-25 15:54:07', 0),
(84, 132, 13, 18, 13, 5.00, 5.00, 5.00, 5, 5.00, 5.00, 'ok', '2017-01-16 18:01:29', 0),
(85, 138, 15, 18, 15, 5.00, 5.00, 5.00, 5, 5.00, 5.00, 'ghjh', '2017-01-24 18:04:39', 0),
(86, 144, 15, 18, 15, 5.00, 5.00, 5.00, 5, 5.00, 5.00, 'fdyhg', '2017-01-24 18:07:02', 0),
(83, 133, 13, 18, 18, 5.00, 5.00, 5.00, 5, 5.00, 5.00, 'rtr', '2017-01-16 18:00:00', 0),
(82, 134, 9, 18, 18, 5.00, 5.00, 5.00, 5, 5.00, 5.00, 'rr', '2017-01-16 17:59:22', 0),
(81, 132, 9, 18, 18, 5.00, 5.00, 5.00, 5, 5.00, 5.00, 'g', '2017-01-16 17:56:23', 0),
(80, 134, 13, 18, 18, 4.50, 4.50, 4.50, 5, 5.00, 4.60, 'ok', '2017-01-15 18:09:33', 0),
(79, 132, 15, 18, 18, 4.50, 4.50, 4.50, 5, 4.50, 4.50, 'vcv', '2017-01-14 18:24:50', 0);

-- --------------------------------------------------------

--
-- Structure de la table `job_hire_end`
--

DROP TABLE IF EXISTS `job_hire_end`;
CREATE TABLE `job_hire_end` (
  `id` int(11) NOT NULL,
  `bid_id` int(11) NOT NULL,
  `weekly_limit` int(10) NOT NULL DEFAULT '0',
  `offer_bid_amount` float(10,2) DEFAULT NULL,
  `offer_bid_fee` float(10,2) DEFAULT NULL,
  `offer_bid_earning` float(10,2) DEFAULT NULL,
  `fixed_pay_status` enum('0','1','2') DEFAULT NULL COMMENT AS `0 = paid nothing,1=padi partyl,2= paid all`,
  `weekly_amount` float(10,2) NOT NULL,
  `fixedpay_amount` float(10,2) DEFAULT '0.00',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `job_hire_end`
--

INSERT INTO `job_hire_end` (`id`, `bid_id`, `weekly_limit`, `offer_bid_amount`, `offer_bid_fee`, `offer_bid_earning`, `fixed_pay_status`, `weekly_amount`, `fixedpay_amount`, `created`) VALUES
(11, 59, 0, NULL, NULL, NULL, '0', 0.00, 0.00, '2016-10-19 18:52:29'),
(10, 57, 0, NULL, NULL, NULL, '0', 0.00, 0.00, '2016-10-19 18:52:18'),
(9, 65, 0, NULL, NULL, NULL, '2', 0.00, 500.00, '2016-10-18 22:00:01'),
(12, 67, 0, NULL, NULL, NULL, '2', 0.00, 30.00, '2016-10-22 19:20:49'),
(13, 70, 0, NULL, NULL, NULL, '0', 0.00, 0.00, '2016-10-22 23:45:44'),
(14, 68, 0, NULL, NULL, NULL, '2', 0.00, 10.00, '2016-11-27 20:19:03'),
(15, 71, 0, NULL, NULL, NULL, '0', 0.00, 0.00, '2016-11-27 21:32:33'),
(16, 72, 0, NULL, NULL, NULL, '2', 0.00, 50.00, '2016-11-29 22:30:08'),
(17, 72, 0, NULL, NULL, NULL, '0', 0.00, 0.00, '2016-11-29 22:30:55'),
(18, 74, 0, NULL, NULL, NULL, '2', 0.00, 7.00, '2016-11-29 22:34:41'),
(19, 74, 0, NULL, NULL, NULL, '2', 0.00, 7.00, '2016-11-29 22:36:08'),
(20, 81, 0, NULL, NULL, NULL, '2', 0.00, 198.00, '2016-11-29 22:44:49'),
(21, 75, 0, NULL, NULL, NULL, '2', 0.00, 10.00, '2016-11-30 13:20:28'),
(22, 91, 0, NULL, NULL, NULL, '2', 0.00, 78.00, '2016-11-30 15:46:28'),
(23, 82, 0, NULL, NULL, NULL, '0', 0.00, 0.00, '2016-12-01 15:32:54'),
(24, 96, 0, NULL, NULL, NULL, '0', 0.00, 0.00, '2016-12-04 21:38:15'),
(25, 106, 0, NULL, NULL, NULL, '0', 0.00, 0.00, '2016-12-04 21:49:32'),
(26, 105, 0, NULL, NULL, NULL, '2', 0.00, 50.00, '2016-12-11 20:09:08'),
(27, 183, 0, NULL, NULL, NULL, '2', 0.00, 700.00, '2017-01-14 18:24:50'),
(28, 189, 0, NULL, NULL, NULL, '2', 0.00, 13.00, '2017-01-15 18:09:33'),
(29, 185, 0, NULL, NULL, NULL, '0', 0.00, 0.00, '2017-01-16 17:56:23'),
(30, 191, 0, NULL, NULL, NULL, '0', 0.00, 0.00, '2017-01-16 17:59:22'),
(31, 188, 0, NULL, NULL, NULL, '0', 0.00, 0.00, '2017-01-16 18:00:00'),
(32, 181, 0, NULL, NULL, NULL, '0', 0.00, 0.00, '2017-01-27 17:18:43'),
(33, 209, 0, NULL, NULL, NULL, '0', 0.00, 0.00, '2017-02-03 19:12:14'),
(34, 193, 0, NULL, NULL, NULL, '0', 0.00, 0.00, '2017-03-09 20:03:12'),
(35, 198, 0, NULL, NULL, NULL, '0', 0.00, 0.00, '2017-03-20 05:46:58'),
(36, 198, 0, NULL, NULL, NULL, '0', 0.00, 0.00, '2017-03-20 05:46:58');

-- --------------------------------------------------------

--
-- Structure de la table `job_skills`
--

DROP TABLE IF EXISTS `job_skills`;
CREATE TABLE `job_skills` (
  `id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `skill_name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `job_skills`
--

INSERT INTO `job_skills` (`id`, `job_id`, `skill_name`) VALUES
(1, 143, 'Java'),
(2, 143, 'HTML'),
(27, 144, 'mysql'),
(26, 144, 'PHP'),
(25, 144, 'Apache Jakarta POI'),
(31, 146, 'Product Sourcing'),
(32, 146, 'Adobe InDesign'),
(33, 146, 'PHP'),
(35, 147, 'PHP'),
(36, 148, 'PHP'),
(37, 149, 'phonegap'),
(38, 150, 'Photography'),
(39, 151, 'Product Sourcing'),
(40, 152, 'Adobe InDesign'),
(41, 152, 'Virtual Assistant'),
(42, 152, 'Website Design'),
(43, 153, 'PHP'),
(44, 154, 'phonegap'),
(45, 155, 'Photography'),
(47, 156, 'Java'),
(48, 156, 'Object Oriented PHP'),
(49, 157, 'PHP'),
(50, 160, 'PHP'),
(51, 161, 'PHP'),
(52, 162, 'PHP'),
(53, 164, 'PHP'),
(54, 165, 'PHP'),
(55, 166, 'Typography'),
(56, 167, 'Technical Writing'),
(57, 168, 'Twitter'),
(58, 169, 'Twitter'),
(59, 170, 'Telemarketing'),
(60, 171, 'Twitter'),
(61, 172, 'Technical Writing'),
(62, 173, 'Twitter'),
(63, 174, 'Telemarketing Exp'),
(64, 175, 'Translation'),
(65, 176, 'Brochure Design'),
(66, 177, 'Lead Generation'),
(67, 178, 'PHP'),
(71, 179, 'phonegap'),
(72, 180, 'Product Sourcing'),
(73, 181, 'PHP'),
(74, 181, 'Object Oriented PHP');

-- --------------------------------------------------------

--
-- Structure de la table `job_subcategories`
--

DROP TABLE IF EXISTS `job_subcategories`;
CREATE TABLE `job_subcategories` (
  `subcat_id` int(11) NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `subcategory_name` varchar(100) DEFAULT NULL,
  `url_rewrite` varchar(100) NOT NULL,
  `date_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `job_subcategories`
--

INSERT INTO `job_subcategories` (`subcat_id`, `cat_id`, `subcategory_name`, `url_rewrite`, `date_created`) VALUES
(1, 1, 'Desktop Software Development', 'desktop-software-development', '2016-08-16 22:02:31'),
(2, 1, 'Ecommerce Development', 'ecommerce-development', '2016-08-16 22:02:31'),
(3, 1, 'Game Development', 'game-development', '2016-08-16 22:02:31'),
(4, 1, 'Mobile Development', 'mobile-development', '2016-08-16 22:02:31'),
(5, 1, 'Product Management', 'product-management', '2016-08-16 22:02:31'),
(6, 1, 'QA & Testing', 'qa-and-testing', '2016-08-16 22:02:31'),
(7, 1, 'Scripts & Utilities', 'scripts-and-utilities', '2016-08-16 22:02:31'),
(8, 1, 'Web Development', 'web-development', '2016-08-16 22:02:31'),
(9, 1, 'Web & Mobile Design', 'web-and-mobile-design', '2016-08-16 22:02:31'),
(10, 1, 'Other - Software Development', 'other-software-development', '2016-08-16 22:02:31'),
(11, 2, 'Database Administration', 'database-administration', '2016-08-16 22:02:31'),
(12, 2, 'ERP / CRM Software', 'erp/crm-software', '2016-08-16 22:02:31'),
(13, 2, 'Information Security', 'information-security', '2016-08-16 22:02:31'),
(14, 2, 'Network & System Administration', 'network-and-system-administration', '2016-08-16 22:02:31'),
(15, 2, 'Other - IT & Networking', 'other-it-and-networking', '2016-08-16 22:02:31'),
(16, 3, 'A/B Testing', 'a/b-testing', '2016-08-16 22:02:31'),
(17, 3, 'Data Visualization', 'data-visualization', '2016-08-16 22:02:31'),
(18, 3, 'Data Extraction / ETL', 'data-extraction/etl', '2016-08-16 22:02:31'),
(19, 3, 'Data Mining & Management', 'data-mining-and-management', '2016-08-16 22:02:31'),
(20, 3, 'Machine Learning', 'machine-learning', '2016-08-16 22:02:31'),
(21, 3, 'Quantitative Analysis', 'quantitative-analysis', '2016-08-16 22:02:31'),
(22, 3, 'Other - Data Science & Analytics', 'other-data-science-and-analytics', '2016-08-16 22:02:31'),
(23, 4, '3D Modeling & CAD', '3d-modeling-and-cad', '2016-08-16 22:02:31'),
(24, 4, 'Architecture', 'architecture', '2016-08-16 22:02:31'),
(25, 4, 'Chemical Engineering', 'chemical-engineering', '2016-08-16 22:02:31'),
(26, 4, 'Civil & Structural Engineering', 'civil-and-structural-engineering', '2016-08-16 22:02:31'),
(27, 4, 'Contract Manufacturing', 'contract-manufacturing', '2016-08-16 22:02:31'),
(28, 4, 'Electrical Engineering', 'electrical-engineering', '2016-08-16 22:02:31'),
(29, 4, 'Interior Design', 'interior-design', '2016-08-16 22:02:31'),
(30, 4, 'Mechanical Engineering', 'mechanical-engineering', '2016-08-16 22:02:31'),
(31, 4, 'Product Design', 'product-design', '2016-08-16 22:02:31'),
(32, 4, 'Other - Engineering & Architecture', 'other-engineering-and-architecture', '2016-08-16 22:02:31'),
(33, 5, 'Animation', 'animation', '2016-08-16 22:02:31'),
(34, 5, 'Audio Production', 'audio-production', '2016-08-16 22:02:31'),
(35, 5, 'Graphic Design', 'graphic-design', '2016-08-16 22:02:31'),
(36, 5, 'Illustration', 'illustration', '2016-08-16 22:02:31'),
(37, 5, 'Logo Design & Branding', 'logo-design-and-branding', '2016-08-16 22:02:31'),
(38, 5, 'Photography', 'photography', '2016-08-16 22:02:31'),
(39, 5, 'Presentations', 'presentations', '2016-08-16 22:02:31'),
(40, 5, 'Video Production', 'video-production', '2016-08-16 22:02:31'),
(41, 5, 'Voice Talent', 'voice-talent', '2016-08-16 22:02:31'),
(42, 5, 'Other - Design & Creative', 'other-design-and-creative', '2016-08-16 22:02:31'),
(43, 6, 'Academic Writing & Research', 'academic-writing-and-research', '2016-08-16 22:02:31'),
(44, 6, 'Article & Blog Writing', 'article-and-blog-writing', '2016-08-16 22:02:31'),
(45, 6, 'Copywriting', 'copywriting', '2016-08-16 22:02:31'),
(46, 6, 'Creative Writing', 'creative-writing', '2016-08-16 22:02:31'),
(47, 6, 'Editing & Proofreading', 'editing-and-proofreading', '2016-08-16 22:02:31'),
(48, 6, 'Grant Writing', 'grant-writing', '2016-08-16 22:02:31'),
(49, 6, 'Resumes & Cover Letters', 'resumes-and-cover-letters', '2016-08-16 22:02:31'),
(50, 6, 'Technical Writing', 'technical-writing', '2016-08-16 22:02:31'),
(51, 6, 'Web Content', 'web-content', '2016-08-16 22:02:31'),
(52, 6, 'Web Content', 'web-content', '2016-08-16 22:02:31'),
(53, 7, 'General Translation', 'general-translation', '2016-08-16 22:02:31'),
(54, 7, 'Legal Translation', 'legal-translation', '2016-08-16 22:02:31'),
(55, 7, 'Medical Translation', 'medical-translation', '2016-08-16 22:02:31'),
(56, 7, 'Technical Translation', 'technical-translation', '2016-08-16 22:02:31'),
(57, 8, 'Contract Law', 'contract-law', '2016-08-16 22:02:31'),
(58, 8, 'Corporate Law', 'corporate-law', '2016-08-16 22:02:31'),
(59, 8, 'Criminal Law', 'criminal-law', '2016-08-16 22:02:31'),
(60, 8, 'Family Law', 'family-law', '2016-08-16 22:02:31'),
(61, 8, 'Intellectual Property Law', 'intellectual-property-law', '2016-08-16 22:02:31'),
(62, 8, 'Paralegal Services', 'paralegal-services', '2016-08-16 22:02:31'),
(63, 8, 'Other - Legal', 'other-legal', '2016-08-16 22:02:31'),
(64, 9, 'Data Entry', 'data-entry', '2016-08-16 22:02:31'),
(65, 9, 'Personal / Virtual Assistant', 'personal/virtual-assistant', '2016-08-16 22:02:31'),
(66, 9, 'Project Management', 'project-management', '2016-08-16 22:02:31'),
(67, 9, 'Transcription', 'transcription', '2016-08-16 22:02:31'),
(68, 9, 'Web Research', 'web-research', '2016-08-16 22:02:31'),
(69, 9, 'Other - Admin Support', 'other-admin-support', '2016-08-16 22:02:31'),
(70, 10, 'Customer Service', 'customer-service', '2016-08-16 22:02:31'),
(71, 10, 'Technical Support', 'technical-support', '2016-08-16 22:02:31'),
(72, 10, 'Other - Customer Service', 'other-customer-service', '2016-08-16 22:02:31'),
(73, 11, 'Display Advertising', 'display-advertising', '2016-08-16 22:02:31'),
(74, 11, 'Email & Marketing Automation', 'email-and-marketing-automation', '2016-08-16 22:02:31'),
(75, 11, 'Lead Generation', 'lead-generation', '2016-08-16 22:02:31'),
(76, 11, 'Market & Customer Research', 'market-and-customer-research', '2016-08-16 22:02:31'),
(77, 11, 'Marketing Strategy', 'marketing-strategy', '2016-08-16 22:02:31'),
(78, 11, 'Public Relations', 'public-relations', '2016-08-16 22:02:31'),
(79, 11, 'SEM - Search Engine Marketing', 'sem-search-engine-marketing', '2016-08-16 22:02:31'),
(80, 11, 'SEO - Search Engine Optimization', 'seo-search-engine-optimization', '2016-08-16 22:02:31'),
(81, 11, 'SMM - Social Media Marketing', 'smm-social-media-marketing', '2016-08-16 22:02:31'),
(82, 11, 'Telemarketing & Telesales', 'telemarketing-and-telesales', '2016-08-16 22:02:31'),
(83, 11, 'Other - Sales & Marketing', 'other-sales-and-marketing', '2016-08-16 22:02:31'),
(84, 12, 'Accounting', 'accounting', '2016-08-16 22:02:31'),
(85, 12, 'Financial Planning', 'financial-planning', '2016-08-16 22:02:31'),
(86, 12, 'Human Resources', 'human-resources', '2016-08-16 22:02:31'),
(87, 12, 'Management Consulting', 'management-consulting', '2016-08-16 22:02:31'),
(88, 12, 'Other - Accounting & Consulting', 'other-accounting-and-consulting', '2016-08-16 22:02:31');

-- --------------------------------------------------------

--
-- Structure de la table `job_workdairy`
--

DROP TABLE IF EXISTS `job_workdairy`;
CREATE TABLE `job_workdairy` (
  `workdairy_id` int(11) NOT NULL,
  `jobid` int(11) NOT NULL,
  `bid_id` int(11) NOT NULL,
  `cuser_id` int(11) NOT NULL,
  `fuser_id` int(11) NOT NULL,
  `starting_hour` datetime NOT NULL,
  `ending_hour` datetime NOT NULL,
  `total_hour` text NOT NULL,
  `working_date` date DEFAULT NULL,
  `end_work` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `job_workdairy`
--

INSERT INTO `job_workdairy` (`workdairy_id`, `jobid`, `bid_id`, `cuser_id`, `fuser_id`, `starting_hour`, `ending_hour`, `total_hour`, `working_date`, `end_work`) VALUES
(78, 149, 210, 18, 13, '2017-03-24 11:00:00', '2017-03-24 12:00:00', '1', '2017-03-24', '2017-03-24 11:00:00'),
(66, 147, 207, 18, 13, '2017-03-21 11:00:16', '2017-03-21 14:00:20', '3', '2017-03-21', '2017-03-21 14:00:20'),
(62, 149, 210, 18, 13, '2017-02-05 17:00:12', '2017-02-05 18:00:15', '1', '2017-02-05', '2017-02-06 01:00:15'),
(63, 147, 207, 18, 13, '2017-02-06 13:00:03', '2017-02-06 18:00:10', '5', '2017-02-06', '2017-02-07 01:00:10'),
(64, 149, 210, 18, 13, '2017-02-21 18:00:20', '2017-02-21 23:00:23', '5', '2017-02-21', '2017-02-22 06:00:23'),
(65, 147, 207, 18, 13, '2017-03-01 18:00:08', '2017-03-01 19:00:10', '1', '2017-03-01', '2017-03-01 19:00:10'),
(79, 149, 210, 18, 13, '2017-03-24 12:00:00', '2017-03-24 13:00:00', '1', '2017-03-24', '2017-03-24 12:00:00'),
(80, 149, 210, 18, 13, '2017-03-24 13:00:00', '2017-03-24 14:00:00', '1', '2017-03-24', '2017-03-24 13:00:00'),
(81, 149, 210, 18, 13, '2017-03-24 14:00:00', '2017-03-24 15:00:00', '1', '2017-03-24', '2017-03-24 14:00:00'),
(82, 147, 207, 18, 13, '2017-03-25 13:00:00', '2017-03-25 16:00:00', '3', '2017-03-25', '2017-03-25 15:00:00'),
(94, 149, 210, 18, 13, '2017-04-04 16:00:00', '2017-04-04 18:00:00', '2', '2017-04-04', '2017-04-04 17:00:00'),
(95, 149, 210, 18, 13, '2017-04-05 13:00:00', '2017-04-05 16:00:00', '3', '2017-04-05', '2017-04-05 15:00:00'),
(96, 149, 210, 18, 13, '2017-04-05 16:00:00', '2017-04-05 18:00:00', '2', '2017-04-05', '2017-04-05 17:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `notification`
--

DROP TABLE IF EXISTS `notification`;
CREATE TABLE `notification` (
  `id_notification` int(11) NOT NULL,
  `link` varchar(400) NOT NULL,
  `description` text NOT NULL,
  `read_status` int(2) NOT NULL,
  `user_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `notification`
--

INSERT INTO `notification` (`id_notification`, `link`, `description`, `read_status`, `user_id`, `date`) VALUES
(1, '#', 'You have one job invitation', 1, 13, '2016-11-30 20:55:57'),
(2, '#', 'You have one job invitation', 1, 13, '2016-11-30 20:56:12'),
(3, '#', 'You have one job invitation', 1, 13, '2016-11-30 20:56:02'),
(4, '#', '', 0, 0, '2016-11-30 20:34:14'),
(5, '#', '', 0, 0, '2016-11-30 20:36:02'),
(6, '#', '', 0, 0, '2016-11-30 20:36:20'),
(7, '#', 'You have one job invitation', 1, 13, '2016-11-30 20:56:09'),
(8, '#', 'You have one job invitation', 1, 13, '2016-11-30 20:55:45'),
(9, '#', 'You have one job invitation', 1, 13, '2016-11-30 20:56:00'),
(10, '#', 'You have one job invitation', 1, 13, '2016-11-30 20:56:06'),
(11, 'http://www.winjob.com/active_interview', 'You have one job invitation', 1, 13, '2016-11-30 21:04:27'),
(12, 'http://www.winjob.com/active_interview', 'You have one job invitation', 1, 13, '2016-11-30 21:04:41'),
(13, 'http://www.winjob.com/active_interview', 'You have one job invitation', 1, 13, '2016-11-30 23:00:26'),
(14, 'http://www.winjob.com/active_interview', 'You have one job invitation', 1, 13, '2016-11-30 23:01:07'),
(15, 'http://www.winjob.com/active_interview', 'You have one job invitation', 1, 13, '2016-11-30 23:00:30'),
(16, 'http://www.winjob.com/active_interview', 'You have one job invitation', 1, 13, '2016-11-30 23:05:58'),
(17, 'http://www.winjob.com/active_interview', 'You have one job invitation', 1, 15, '2016-12-28 15:16:39'),
(18, 'http://www.winjob.com/active_interview', 'You have one job invitation', 1, 9, '2016-12-01 15:27:39'),
(19, 'http://www.winjob.com/active_interview', 'You have one job invitation', 1, 13, '2016-12-06 19:26:32'),
(20, 'http://www.winjob.com/active_interview', 'You have one job invitation', 1, 13, '2016-12-01 13:22:59'),
(21, 'http://www.winjob.com/active_interview', 'You have one job invitation', 1, 13, '2016-12-01 13:22:45'),
(22, 'http://www.winjob.com/active_interview', 'You have one job invitation', 1, 13, '2016-12-01 13:23:03'),
(23, 'http://www.winjob.com/active_interview', 'You have one job invitation', 1, 13, '2016-12-01 13:22:52'),
(24, 'http://www.winjob.com/active_interview', 'You have one job invitation', 1, 13, '2016-12-01 13:23:06'),
(25, 'http://www.winjob.com/active_interview', 'You have one job invitation', 1, 13, '2016-12-01 13:22:56'),
(26, 'http://www.winjob.com/active_interview', 'You have one job invitation', 1, 13, '2016-12-01 13:22:49'),
(27, 'http://www.winjob.com/active_interview', 'You have one job invitation', 1, 13, '2016-12-08 17:13:09');

-- --------------------------------------------------------

--
-- Structure de la table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `buser_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `bid_id` int(11) NOT NULL,
  `hire_end_id` int(11) NOT NULL DEFAULT '0',
  `txn_id` varchar(255) NOT NULL,
  `payment_condition` enum('0','1') NOT NULL DEFAULT '1' COMMENT '1=payment,0=withdawl',
  `processfees` int(11) DEFAULT '0',
  `payment_gross` float(10,2) NOT NULL,
  `des` text NOT NULL,
  `currency_code` varchar(5) NOT NULL,
  `payer_email` varchar(255) NOT NULL,
  `payment_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `payments`
--

INSERT INTO `payments` (`payment_id`, `user_id`, `buser_id`, `job_id`, `bid_id`, `hire_end_id`, `txn_id`, `payment_condition`, `processfees`, `payment_gross`, `des`, `currency_code`, `payer_email`, `payment_create`) VALUES
(247, 18, 0, 0, 0, 0, '', '1', 0, 1.00, 'Payment', '', '', '2017-03-06 02:55:15'),
(248, 18, 0, 0, 0, 0, '', '1', 0, 1.00, 'Payment', '', '', '2017-03-06 02:56:50'),
(249, 18, 0, 0, 0, 0, '', '1', 0, 1.00, 'Payment', '', '', '2017-03-06 03:00:29'),
(250, 18, 0, 0, 0, 0, '', '1', 0, 1.00, 'Payment', '', '', '2017-03-06 03:01:40'),
(251, 18, 18, 153, 0, 0, '', '1', 0, 1.00, 'Payment', '', '', '2017-03-06 03:04:16'),
(252, 18, 18, 153, 0, 0, '', '1', 0, 1.00, 'Payment', '', '', '2017-03-06 03:05:34'),
(253, 18, 18, 153, 0, 0, '', '1', 0, 1.00, 'Payment', '', '', '2017-03-06 03:12:47'),
(254, 13, 18, 153, 0, 0, '', '1', 0, 1.00, 'Payment', '', '', '2017-03-06 03:16:37'),
(255, 13, 18, 178, 0, 0, '', '1', 0, 1.00, 'Milestone', '', '', '2017-03-06 07:54:36'),
(256, 13, 18, 178, 0, 0, '', '1', 0, 1.00, 'Payment', '', '', '2017-03-06 08:30:22'),
(257, 15, 18, 178, 0, 0, '', '1', 0, 233.00, 'Full Paid', '', '', '2017-03-18 11:29:30'),
(258, 15, 18, 178, 0, 0, '', '1', 0, 233.00, 'Full Paid', '', '', '2017-03-18 11:29:36'),
(259, 15, 18, 178, 0, 0, '', '1', 0, 233.00, 'Full Paid', '', '', '2017-03-18 11:36:38'),
(243, 13, 18, 153, 0, 0, '', '1', 0, 1.00, 'Milestone', '', '', '2017-03-05 19:35:45'),
(244, 13, 18, 153, 0, 0, '', '1', 0, 1.00, 'Payment', '', '', '2017-03-05 19:46:08'),
(245, 13, 18, 153, 0, 0, '', '1', 0, 1.00, 'Payment', '', '', '2017-03-06 00:28:13'),
(246, 13, 18, 153, 0, 0, '', '1', 0, 1.00, 'Payment', '', '', '2017-03-06 00:29:59'),
(241, 13, 18, 153, 0, 0, '', '1', 0, 2.00, 'Payment', '', '', '2017-03-05 19:25:10'),
(242, 13, 18, 178, 0, 0, '', '1', 0, 1.00, 'Milestone', '', '', '2017-03-05 19:31:15'),
(235, 13, 18, 153, 0, 0, '', '1', 0, 600.00, 'Full Paid', '', '', '2017-02-17 11:34:51'),
(236, 13, 18, 153, 0, 0, '', '1', 0, 600.00, 'Full Paid', '', '', '2017-02-17 11:34:56'),
(237, 13, 18, 154, 0, 0, '', '1', 0, 4555.00, 'Full Paid', '', '', '2017-02-18 18:17:10'),
(238, 13, 18, 153, 0, 0, '', '1', 0, 10.00, 'Milestone', '', '', '2017-02-27 10:18:10'),
(239, 13, 18, 153, 0, 0, '', '1', 0, 5.00, 'Payment', '', '', '2017-03-01 14:39:24'),
(240, 13, 18, 153, 0, 0, '', '1', 0, 1.00, 'Payment', '', '', '2017-03-05 19:24:20'),
(232, 13, 18, 153, 0, 0, '', '1', 0, 600.00, 'Full Paid', '', '', '2017-02-17 11:34:35'),
(233, 13, 18, 153, 0, 0, '', '1', 0, 600.00, 'Full Paid', '', '', '2017-02-17 11:34:41'),
(234, 9, 18, 153, 0, 0, '', '1', 0, 61.00, 'Full Paid', '', '', '2017-02-17 11:34:46'),
(231, 13, 18, 153, 0, 0, '', '1', 0, 600.00, 'Full Paid', '', '', '2017-02-17 11:34:29'),
(229, 13, 18, 150, 0, 0, '', '1', 0, 300.00, 'Full Paid', '', '', '2017-02-03 18:56:03'),
(230, 13, 18, 150, 0, 0, '', '1', 0, 19.00, 'Milestone', '', '', '2017-02-03 19:44:02'),
(228, 13, 18, 148, 0, 0, '', '1', 0, 100.00, 'Milestone', '', '', '2017-02-03 18:50:08'),
(260, 13, 18, 153, 0, 0, '', '1', 0, 200000.00, 'Payment', '', '', '2017-03-24 11:12:25'),
(261, 13, 18, 153, 0, 0, '', '1', 0, 2.00, 'Payment', '', '', '2017-03-25 23:58:01'),
(262, 13, 18, 153, 0, 0, '', '1', 0, 1.00, 'Payment', '', '', '2017-03-26 00:10:42'),
(263, 13, 18, 153, 0, 0, '', '1', 0, 1.00, 'Payment', '', '', '2017-03-26 00:24:31'),
(264, 13, 18, 153, 0, 0, '', '1', 0, 1.00, 'Payment', '', '', '2017-03-26 00:24:48'),
(265, 13, 18, 153, 0, 0, '', '1', 0, 1.00, 'Payment', '', '', '2017-03-26 00:25:57'),
(266, 13, 18, 153, 0, 0, '', '1', 0, 1.00, 'Payment', '', '', '2017-03-26 00:31:38'),
(267, 13, 18, 153, 0, 0, '', '1', 0, 1.00, 'Payment', '', '', '2017-03-26 00:32:57'),
(268, 13, 18, 153, 0, 0, '', '1', 0, 1.00, 'Payment', '', '', '2017-03-26 00:34:45'),
(269, 13, 18, 153, 0, 0, '', '1', 0, 1.00, 'Payment', '', '', '2017-03-26 00:37:21'),
(270, 13, 18, 153, 0, 0, '', '1', 0, 5.00, 'Payment', '', '', '2017-03-26 00:38:58'),
(271, 13, 18, 153, 0, 0, '', '1', 0, 5.00, 'Payment', '', '', '2017-03-26 00:40:02'),
(272, 13, 18, 153, 0, 0, '', '1', 0, 1.00, 'Payment', '', '', '2017-03-26 00:42:18'),
(273, 13, 18, 153, 0, 0, '', '1', 0, 1.00, 'Payment', '', '', '2017-03-26 00:43:51'),
(274, 13, 18, 153, 0, 0, '', '1', 0, 5.00, 'Payment', '', '', '2017-03-26 00:45:42'),
(275, 13, 18, 153, 0, 0, '', '1', 0, 1.00, 'Payment', '', '', '2017-03-26 00:48:42'),
(276, 13, 18, 153, 0, 0, '', '1', 0, 5.00, 'Payment', '', '', '2017-03-26 00:50:10'),
(277, 13, 18, 153, 0, 0, '', '1', 0, 1.00, 'Payment', '', '', '2017-03-26 00:56:37'),
(278, 13, 18, 153, 0, 0, '', '1', 0, 1.00, 'Payment', '', '', '2017-03-26 01:09:29'),
(279, 13, 18, 153, 0, 0, '', '1', 0, 1.00, 'Milestone', '', '', '2017-03-26 01:14:19'),
(280, 13, 18, 153, 0, 0, '', '1', 0, 1.00, 'Payment', '', '', '2017-03-26 08:32:20'),
(281, 13, 18, 153, 0, 0, '', '1', 0, 1.00, 'Payment', '', '', '2017-03-26 08:33:57'),
(282, 13, 18, 153, 0, 0, '', '1', 0, 1.00, 'Milestone', '', '', '2017-03-26 08:34:25'),
(283, 13, 18, 153, 0, 0, '', '1', 0, 1.00, 'Milestone', '', '', '2017-03-26 08:50:23'),
(284, 13, 18, 153, 0, 0, '', '1', 0, 1.00, 'Milestone', '', '', '2017-03-26 09:38:27'),
(285, 13, 18, 153, 0, 0, '', '1', 0, 5.00, 'Payment', '', '', '2017-03-26 09:39:14'),
(286, 13, 18, 153, 0, 0, '', '1', 0, 5.00, 'Payment', '', '', '2017-03-26 09:41:54'),
(287, 13, 18, 153, 0, 0, '', '1', 0, 1.00, 'Payment', '', '', '2017-03-26 09:45:10'),
(288, 13, 18, 153, 0, 0, '', '1', 0, 1.00, 'Payment', '', '', '2017-03-26 09:55:39'),
(289, 13, 18, 153, 0, 0, '', '1', 0, 5.00, 'Payment', '', '', '2017-03-26 09:56:41'),
(290, 13, 18, 153, 0, 0, '', '1', 0, 1.00, 'Milestone', '', '', '2017-03-26 09:57:10');

-- --------------------------------------------------------

--
-- Structure de la table `payment_services`
--

DROP TABLE IF EXISTS `payment_services`;
CREATE TABLE `payment_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `service_description` varchar(255) NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `is_primary` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `service_payer_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `payment_services`
--

INSERT INTO `payment_services` (`id`, `user_id`, `service_description`, `service_name`, `is_primary`, `is_deleted`, `service_payer_id`) VALUES
(4, 18, 'personal@winjob.com', 'paypal', 0, 0, 'B-4KM10611LT757154G'),
(5, 18, 'Diners Club ending in 3237', 'stripe', 1, 0, 'cus_AOcBX5xN4zByCc');

-- --------------------------------------------------------

--
-- Structure de la table `paypal_object`
--

DROP TABLE IF EXISTS `paypal_object`;
CREATE TABLE `paypal_object` (
  `sr` double NOT NULL,
  `pp_fname` varchar(255) COLLATE utf8_bin NOT NULL,
  `pp_lname` varchar(255) COLLATE utf8_bin NOT NULL,
  `pp_email` varchar(255) COLLATE utf8_bin NOT NULL,
  `agreement_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `agreement_state` varchar(255) COLLATE utf8_bin NOT NULL,
  `payer_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `belongsTo` double NOT NULL,
  `dateadded` double NOT NULL,
  `completeObject` longtext COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `paypal_object`
--

INSERT INTO `paypal_object` (`sr`, `pp_fname`, `pp_lname`, `pp_email`, `agreement_id`, `agreement_state`, `payer_id`, `belongsTo`, `dateadded`, `completeObject`) VALUES
(40, 'test', 'buyer', 'buyer.test@haseeburrehman.com', 'B-230623087V2154031', '1', 'B3LWEJAZ5TJ9N', 18, 1479148431, 'a:46:{s:5:"TOKEN";s:20:"EC-1FV573579P9576916";s:30:"BILLINGAGREEMENTACCEPTEDSTATUS";s:1:"1";s:14:"CHECKOUTSTATUS";s:25:"PaymentActionNotInitiated";s:9:"TIMESTAMP";s:20:"2016-11-14T18:33:51Z";s:13:"CORRELATIONID";s:13:"bea7fbd8de564";s:3:"ACK";s:7:"Success";s:7:"VERSION";s:2:"86";s:5:"BUILD";s:8:"26966875";s:5:"EMAIL";s:29:"buyer.test@haseeburrehman.com";s:7:"PAYERID";s:13:"B3LWEJAZ5TJ9N";s:11:"PAYERSTATUS";s:8:"verified";s:9:"FIRSTNAME";s:4:"test";s:8:"LASTNAME";s:5:"buyer";s:11:"COUNTRYCODE";s:2:"US";s:10:"SHIPTONAME";s:10:"test buyer";s:12:"SHIPTOSTREET";s:9:"1 Main St";s:10:"SHIPTOCITY";s:8:"San Jose";s:11:"SHIPTOSTATE";s:2:"CA";s:9:"SHIPTOZIP";s:5:"95131";s:17:"SHIPTOCOUNTRYCODE";s:2:"US";s:17:"SHIPTOCOUNTRYNAME";s:13:"United States";s:13:"ADDRESSSTATUS";s:9:"Confirmed";s:12:"CURRENCYCODE";s:3:"USD";s:3:"AMT";s:4:"0.00";s:11:"SHIPPINGAMT";s:4:"0.00";s:11:"HANDLINGAMT";s:4:"0.00";s:6:"TAXAMT";s:4:"0.00";s:12:"INSURANCEAMT";s:4:"0.00";s:11:"SHIPDISCAMT";s:4:"0.00";s:29:"PAYMENTREQUEST_0_CURRENCYCODE";s:3:"USD";s:20:"PAYMENTREQUEST_0_AMT";s:4:"0.00";s:28:"PAYMENTREQUEST_0_SHIPPINGAMT";s:4:"0.00";s:28:"PAYMENTREQUEST_0_HANDLINGAMT";s:4:"0.00";s:23:"PAYMENTREQUEST_0_TAXAMT";s:4:"0.00";s:29:"PAYMENTREQUEST_0_INSURANCEAMT";s:4:"0.00";s:28:"PAYMENTREQUEST_0_SHIPDISCAMT";s:4:"0.00";s:39:"PAYMENTREQUEST_0_INSURANCEOPTIONOFFERED";s:5:"false";s:27:"PAYMENTREQUEST_0_SHIPTONAME";s:10:"test buyer";s:29:"PAYMENTREQUEST_0_SHIPTOSTREET";s:9:"1 Main St";s:27:"PAYMENTREQUEST_0_SHIPTOCITY";s:8:"San Jose";s:28:"PAYMENTREQUEST_0_SHIPTOSTATE";s:2:"CA";s:26:"PAYMENTREQUEST_0_SHIPTOZIP";s:5:"95131";s:34:"PAYMENTREQUEST_0_SHIPTOCOUNTRYCODE";s:2:"US";s:34:"PAYMENTREQUEST_0_SHIPTOCOUNTRYNAME";s:13:"United States";s:30:"PAYMENTREQUEST_0_ADDRESSSTATUS";s:9:"Confirmed";s:30:"PAYMENTREQUESTINFO_0_ERRORCODE";s:1:"0";}'),
(41, 'test', 'buyer', 'buyer.test@haseeburrehman.com', 'B-5AS93360SE9333008', '1', 'B3LWEJAZ5TJ9N', 18, 1479148662, 'a:46:{s:5:"TOKEN";s:20:"EC-7S126490AJ764335P";s:30:"BILLINGAGREEMENTACCEPTEDSTATUS";s:1:"1";s:14:"CHECKOUTSTATUS";s:25:"PaymentActionNotInitiated";s:9:"TIMESTAMP";s:20:"2016-11-14T18:37:42Z";s:13:"CORRELATIONID";s:13:"3f89beac26e24";s:3:"ACK";s:7:"Success";s:7:"VERSION";s:2:"86";s:5:"BUILD";s:8:"26966875";s:5:"EMAIL";s:29:"buyer.test@haseeburrehman.com";s:7:"PAYERID";s:13:"B3LWEJAZ5TJ9N";s:11:"PAYERSTATUS";s:8:"verified";s:9:"FIRSTNAME";s:4:"test";s:8:"LASTNAME";s:5:"buyer";s:11:"COUNTRYCODE";s:2:"US";s:10:"SHIPTONAME";s:10:"test buyer";s:12:"SHIPTOSTREET";s:9:"1 Main St";s:10:"SHIPTOCITY";s:8:"San Jose";s:11:"SHIPTOSTATE";s:2:"CA";s:9:"SHIPTOZIP";s:5:"95131";s:17:"SHIPTOCOUNTRYCODE";s:2:"US";s:17:"SHIPTOCOUNTRYNAME";s:13:"United States";s:13:"ADDRESSSTATUS";s:9:"Confirmed";s:12:"CURRENCYCODE";s:3:"USD";s:3:"AMT";s:4:"0.00";s:11:"SHIPPINGAMT";s:4:"0.00";s:11:"HANDLINGAMT";s:4:"0.00";s:6:"TAXAMT";s:4:"0.00";s:12:"INSURANCEAMT";s:4:"0.00";s:11:"SHIPDISCAMT";s:4:"0.00";s:29:"PAYMENTREQUEST_0_CURRENCYCODE";s:3:"USD";s:20:"PAYMENTREQUEST_0_AMT";s:4:"0.00";s:28:"PAYMENTREQUEST_0_SHIPPINGAMT";s:4:"0.00";s:28:"PAYMENTREQUEST_0_HANDLINGAMT";s:4:"0.00";s:23:"PAYMENTREQUEST_0_TAXAMT";s:4:"0.00";s:29:"PAYMENTREQUEST_0_INSURANCEAMT";s:4:"0.00";s:28:"PAYMENTREQUEST_0_SHIPDISCAMT";s:4:"0.00";s:39:"PAYMENTREQUEST_0_INSURANCEOPTIONOFFERED";s:5:"false";s:27:"PAYMENTREQUEST_0_SHIPTONAME";s:10:"test buyer";s:29:"PAYMENTREQUEST_0_SHIPTOSTREET";s:9:"1 Main St";s:27:"PAYMENTREQUEST_0_SHIPTOCITY";s:8:"San Jose";s:28:"PAYMENTREQUEST_0_SHIPTOSTATE";s:2:"CA";s:26:"PAYMENTREQUEST_0_SHIPTOZIP";s:5:"95131";s:34:"PAYMENTREQUEST_0_SHIPTOCOUNTRYCODE";s:2:"US";s:34:"PAYMENTREQUEST_0_SHIPTOCOUNTRYNAME";s:13:"United States";s:30:"PAYMENTREQUEST_0_ADDRESSSTATUS";s:9:"Confirmed";s:30:"PAYMENTREQUESTINFO_0_ERRORCODE";s:1:"0";}'),
(39, 'test', 'buyer', 'buyer.test@haseeburrehman.com', 'B-81L42860JF6639148', '1', 'B3LWEJAZ5TJ9N', 29, 1479144568, 'a:46:{s:5:"TOKEN";s:20:"EC-6AS10564L10001258";s:30:"BILLINGAGREEMENTACCEPTEDSTATUS";s:1:"1";s:14:"CHECKOUTSTATUS";s:25:"PaymentActionNotInitiated";s:9:"TIMESTAMP";s:20:"2016-11-14T17:29:28Z";s:13:"CORRELATIONID";s:13:"381b94821af9a";s:3:"ACK";s:7:"Success";s:7:"VERSION";s:2:"86";s:5:"BUILD";s:8:"26966875";s:5:"EMAIL";s:29:"buyer.test@haseeburrehman.com";s:7:"PAYERID";s:13:"B3LWEJAZ5TJ9N";s:11:"PAYERSTATUS";s:8:"verified";s:9:"FIRSTNAME";s:4:"test";s:8:"LASTNAME";s:5:"buyer";s:11:"COUNTRYCODE";s:2:"US";s:10:"SHIPTONAME";s:10:"test buyer";s:12:"SHIPTOSTREET";s:9:"1 Main St";s:10:"SHIPTOCITY";s:8:"San Jose";s:11:"SHIPTOSTATE";s:2:"CA";s:9:"SHIPTOZIP";s:5:"95131";s:17:"SHIPTOCOUNTRYCODE";s:2:"US";s:17:"SHIPTOCOUNTRYNAME";s:13:"United States";s:13:"ADDRESSSTATUS";s:9:"Confirmed";s:12:"CURRENCYCODE";s:3:"USD";s:3:"AMT";s:4:"0.00";s:11:"SHIPPINGAMT";s:4:"0.00";s:11:"HANDLINGAMT";s:4:"0.00";s:6:"TAXAMT";s:4:"0.00";s:12:"INSURANCEAMT";s:4:"0.00";s:11:"SHIPDISCAMT";s:4:"0.00";s:29:"PAYMENTREQUEST_0_CURRENCYCODE";s:3:"USD";s:20:"PAYMENTREQUEST_0_AMT";s:4:"0.00";s:28:"PAYMENTREQUEST_0_SHIPPINGAMT";s:4:"0.00";s:28:"PAYMENTREQUEST_0_HANDLINGAMT";s:4:"0.00";s:23:"PAYMENTREQUEST_0_TAXAMT";s:4:"0.00";s:29:"PAYMENTREQUEST_0_INSURANCEAMT";s:4:"0.00";s:28:"PAYMENTREQUEST_0_SHIPDISCAMT";s:4:"0.00";s:39:"PAYMENTREQUEST_0_INSURANCEOPTIONOFFERED";s:5:"false";s:27:"PAYMENTREQUEST_0_SHIPTONAME";s:10:"test buyer";s:29:"PAYMENTREQUEST_0_SHIPTOSTREET";s:9:"1 Main St";s:27:"PAYMENTREQUEST_0_SHIPTOCITY";s:8:"San Jose";s:28:"PAYMENTREQUEST_0_SHIPTOSTATE";s:2:"CA";s:26:"PAYMENTREQUEST_0_SHIPTOZIP";s:5:"95131";s:34:"PAYMENTREQUEST_0_SHIPTOCOUNTRYCODE";s:2:"US";s:34:"PAYMENTREQUEST_0_SHIPTOCOUNTRYNAME";s:13:"United States";s:30:"PAYMENTREQUEST_0_ADDRESSSTATUS";s:9:"Confirmed";s:30:"PAYMENTREQUESTINFO_0_ERRORCODE";s:1:"0";}'),
(36, 'test', 'buyer', 'buyer.test@haseeburrehman.com', 'B-8C7392409X743173D', '1', 'B3LWEJAZ5TJ9N', 18, 1479138922, 'a:46:{s:5:"TOKEN";s:20:"EC-4F5015012D549994U";s:30:"BILLINGAGREEMENTACCEPTEDSTATUS";s:1:"1";s:14:"CHECKOUTSTATUS";s:25:"PaymentActionNotInitiated";s:9:"TIMESTAMP";s:20:"2016-11-14T15:55:22Z";s:13:"CORRELATIONID";s:13:"c396f1d7e4250";s:3:"ACK";s:7:"Success";s:7:"VERSION";s:2:"86";s:5:"BUILD";s:8:"26966875";s:5:"EMAIL";s:29:"buyer.test@haseeburrehman.com";s:7:"PAYERID";s:13:"B3LWEJAZ5TJ9N";s:11:"PAYERSTATUS";s:8:"verified";s:9:"FIRSTNAME";s:4:"test";s:8:"LASTNAME";s:5:"buyer";s:11:"COUNTRYCODE";s:2:"US";s:10:"SHIPTONAME";s:10:"test buyer";s:12:"SHIPTOSTREET";s:9:"1 Main St";s:10:"SHIPTOCITY";s:8:"San Jose";s:11:"SHIPTOSTATE";s:2:"CA";s:9:"SHIPTOZIP";s:5:"95131";s:17:"SHIPTOCOUNTRYCODE";s:2:"US";s:17:"SHIPTOCOUNTRYNAME";s:13:"United States";s:13:"ADDRESSSTATUS";s:9:"Confirmed";s:12:"CURRENCYCODE";s:3:"USD";s:3:"AMT";s:4:"0.00";s:11:"SHIPPINGAMT";s:4:"0.00";s:11:"HANDLINGAMT";s:4:"0.00";s:6:"TAXAMT";s:4:"0.00";s:12:"INSURANCEAMT";s:4:"0.00";s:11:"SHIPDISCAMT";s:4:"0.00";s:29:"PAYMENTREQUEST_0_CURRENCYCODE";s:3:"USD";s:20:"PAYMENTREQUEST_0_AMT";s:4:"0.00";s:28:"PAYMENTREQUEST_0_SHIPPINGAMT";s:4:"0.00";s:28:"PAYMENTREQUEST_0_HANDLINGAMT";s:4:"0.00";s:23:"PAYMENTREQUEST_0_TAXAMT";s:4:"0.00";s:29:"PAYMENTREQUEST_0_INSURANCEAMT";s:4:"0.00";s:28:"PAYMENTREQUEST_0_SHIPDISCAMT";s:4:"0.00";s:39:"PAYMENTREQUEST_0_INSURANCEOPTIONOFFERED";s:5:"false";s:27:"PAYMENTREQUEST_0_SHIPTONAME";s:10:"test buyer";s:29:"PAYMENTREQUEST_0_SHIPTOSTREET";s:9:"1 Main St";s:27:"PAYMENTREQUEST_0_SHIPTOCITY";s:8:"San Jose";s:28:"PAYMENTREQUEST_0_SHIPTOSTATE";s:2:"CA";s:26:"PAYMENTREQUEST_0_SHIPTOZIP";s:5:"95131";s:34:"PAYMENTREQUEST_0_SHIPTOCOUNTRYCODE";s:2:"US";s:34:"PAYMENTREQUEST_0_SHIPTOCOUNTRYNAME";s:13:"United States";s:30:"PAYMENTREQUEST_0_ADDRESSSTATUS";s:9:"Confirmed";s:30:"PAYMENTREQUESTINFO_0_ERRORCODE";s:1:"0";}'),
(37, 'test', 'buyer', 'buyer.test@haseeburrehman.com', 'B-5B993055KF4095402', '1', 'B3LWEJAZ5TJ9N', 18, 1479141536, 'a:46:{s:5:"TOKEN";s:20:"EC-44M35648ME3663207";s:30:"BILLINGAGREEMENTACCEPTEDSTATUS";s:1:"1";s:14:"CHECKOUTSTATUS";s:25:"PaymentActionNotInitiated";s:9:"TIMESTAMP";s:20:"2016-11-14T16:38:56Z";s:13:"CORRELATIONID";s:13:"8e92ab221cfac";s:3:"ACK";s:7:"Success";s:7:"VERSION";s:2:"86";s:5:"BUILD";s:8:"26966875";s:5:"EMAIL";s:29:"buyer.test@haseeburrehman.com";s:7:"PAYERID";s:13:"B3LWEJAZ5TJ9N";s:11:"PAYERSTATUS";s:8:"verified";s:9:"FIRSTNAME";s:4:"test";s:8:"LASTNAME";s:5:"buyer";s:11:"COUNTRYCODE";s:2:"US";s:10:"SHIPTONAME";s:10:"test buyer";s:12:"SHIPTOSTREET";s:9:"1 Main St";s:10:"SHIPTOCITY";s:8:"San Jose";s:11:"SHIPTOSTATE";s:2:"CA";s:9:"SHIPTOZIP";s:5:"95131";s:17:"SHIPTOCOUNTRYCODE";s:2:"US";s:17:"SHIPTOCOUNTRYNAME";s:13:"United States";s:13:"ADDRESSSTATUS";s:9:"Confirmed";s:12:"CURRENCYCODE";s:3:"USD";s:3:"AMT";s:4:"0.00";s:11:"SHIPPINGAMT";s:4:"0.00";s:11:"HANDLINGAMT";s:4:"0.00";s:6:"TAXAMT";s:4:"0.00";s:12:"INSURANCEAMT";s:4:"0.00";s:11:"SHIPDISCAMT";s:4:"0.00";s:29:"PAYMENTREQUEST_0_CURRENCYCODE";s:3:"USD";s:20:"PAYMENTREQUEST_0_AMT";s:4:"0.00";s:28:"PAYMENTREQUEST_0_SHIPPINGAMT";s:4:"0.00";s:28:"PAYMENTREQUEST_0_HANDLINGAMT";s:4:"0.00";s:23:"PAYMENTREQUEST_0_TAXAMT";s:4:"0.00";s:29:"PAYMENTREQUEST_0_INSURANCEAMT";s:4:"0.00";s:28:"PAYMENTREQUEST_0_SHIPDISCAMT";s:4:"0.00";s:39:"PAYMENTREQUEST_0_INSURANCEOPTIONOFFERED";s:5:"false";s:27:"PAYMENTREQUEST_0_SHIPTONAME";s:10:"test buyer";s:29:"PAYMENTREQUEST_0_SHIPTOSTREET";s:9:"1 Main St";s:27:"PAYMENTREQUEST_0_SHIPTOCITY";s:8:"San Jose";s:28:"PAYMENTREQUEST_0_SHIPTOSTATE";s:2:"CA";s:26:"PAYMENTREQUEST_0_SHIPTOZIP";s:5:"95131";s:34:"PAYMENTREQUEST_0_SHIPTOCOUNTRYCODE";s:2:"US";s:34:"PAYMENTREQUEST_0_SHIPTOCOUNTRYNAME";s:13:"United States";s:30:"PAYMENTREQUEST_0_ADDRESSSTATUS";s:9:"Confirmed";s:30:"PAYMENTREQUESTINFO_0_ERRORCODE";s:1:"0";}'),
(38, 'test', 'buyer', 'buyer.test@haseeburrehman.com', 'B-6J5657438N068633W', '1', 'B3LWEJAZ5TJ9N', 18, 1479141645, 'a:46:{s:5:"TOKEN";s:20:"EC-3PE843797K883811J";s:30:"BILLINGAGREEMENTACCEPTEDSTATUS";s:1:"1";s:14:"CHECKOUTSTATUS";s:25:"PaymentActionNotInitiated";s:9:"TIMESTAMP";s:20:"2016-11-14T16:40:45Z";s:13:"CORRELATIONID";s:13:"81ccadddeb789";s:3:"ACK";s:7:"Success";s:7:"VERSION";s:2:"86";s:5:"BUILD";s:8:"26966875";s:5:"EMAIL";s:29:"buyer.test@haseeburrehman.com";s:7:"PAYERID";s:13:"B3LWEJAZ5TJ9N";s:11:"PAYERSTATUS";s:8:"verified";s:9:"FIRSTNAME";s:4:"test";s:8:"LASTNAME";s:5:"buyer";s:11:"COUNTRYCODE";s:2:"US";s:10:"SHIPTONAME";s:10:"test buyer";s:12:"SHIPTOSTREET";s:9:"1 Main St";s:10:"SHIPTOCITY";s:8:"San Jose";s:11:"SHIPTOSTATE";s:2:"CA";s:9:"SHIPTOZIP";s:5:"95131";s:17:"SHIPTOCOUNTRYCODE";s:2:"US";s:17:"SHIPTOCOUNTRYNAME";s:13:"United States";s:13:"ADDRESSSTATUS";s:9:"Confirmed";s:12:"CURRENCYCODE";s:3:"USD";s:3:"AMT";s:4:"0.00";s:11:"SHIPPINGAMT";s:4:"0.00";s:11:"HANDLINGAMT";s:4:"0.00";s:6:"TAXAMT";s:4:"0.00";s:12:"INSURANCEAMT";s:4:"0.00";s:11:"SHIPDISCAMT";s:4:"0.00";s:29:"PAYMENTREQUEST_0_CURRENCYCODE";s:3:"USD";s:20:"PAYMENTREQUEST_0_AMT";s:4:"0.00";s:28:"PAYMENTREQUEST_0_SHIPPINGAMT";s:4:"0.00";s:28:"PAYMENTREQUEST_0_HANDLINGAMT";s:4:"0.00";s:23:"PAYMENTREQUEST_0_TAXAMT";s:4:"0.00";s:29:"PAYMENTREQUEST_0_INSURANCEAMT";s:4:"0.00";s:28:"PAYMENTREQUEST_0_SHIPDISCAMT";s:4:"0.00";s:39:"PAYMENTREQUEST_0_INSURANCEOPTIONOFFERED";s:5:"false";s:27:"PAYMENTREQUEST_0_SHIPTONAME";s:10:"test buyer";s:29:"PAYMENTREQUEST_0_SHIPTOSTREET";s:9:"1 Main St";s:27:"PAYMENTREQUEST_0_SHIPTOCITY";s:8:"San Jose";s:28:"PAYMENTREQUEST_0_SHIPTOSTATE";s:2:"CA";s:26:"PAYMENTREQUEST_0_SHIPTOZIP";s:5:"95131";s:34:"PAYMENTREQUEST_0_SHIPTOCOUNTRYCODE";s:2:"US";s:34:"PAYMENTREQUEST_0_SHIPTOCOUNTRYNAME";s:13:"United States";s:30:"PAYMENTREQUEST_0_ADDRESSSTATUS";s:9:"Confirmed";s:30:"PAYMENTREQUESTINFO_0_ERRORCODE";s:1:"0";}');

-- --------------------------------------------------------

--
-- Structure de la table `paypal_pakey`
--

DROP TABLE IF EXISTS `paypal_pakey`;
CREATE TABLE `paypal_pakey` (
  `sr` double NOT NULL,
  `PA_key` varchar(255) NOT NULL,
  `belongsTo` double NOT NULL,
  `dateadded` double NOT NULL,
  `isActive` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `paypal_pakey`
--

INSERT INTO `paypal_pakey` (`sr`, `PA_key`, `belongsTo`, `dateadded`, `isActive`) VALUES
(1, 'PA-9AG24100N4705281W', 18, 0, 0),
(2, 'PA-7MH814029C4529254', 18, 1478956980, 1),
(3, 'PA-9BW363416M7605124', 18, 1478960520, 0),
(4, 'PA-9TP75252HR149563G', 18, 1478963231, 1),
(5, 'PA-7UE77539GP508924F', 18, 1478964479, 1),
(6, 'PA-15W045317E8400708', 18, 1478972380, 1),
(7, 'PA-74C305005N456842J', 18, 1478973381, 1);

-- --------------------------------------------------------

--
-- Structure de la table `paypal_pa_object`
--

DROP TABLE IF EXISTS `paypal_pa_object`;
CREATE TABLE `paypal_pa_object` (
  `sr` double NOT NULL,
  `completeObject` longtext COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `paypal_accID` varchar(255) COLLATE utf8_bin NOT NULL,
  `dateadded` double NOT NULL,
  `belongsTo` double NOT NULL,
  `PA_key` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `paypal_pa_object`
--

INSERT INTO `paypal_pa_object` (`sr`, `completeObject`, `email`, `paypal_accID`, `dateadded`, `belongsTo`, `PA_key`) VALUES
(1, '', 'buyer.test@haseeburrehman.com', 'B3LWEJAZ5TJ9N', 1478963704, 18, ''),
(2, 'O:42:"PayPal\\Types\\AP\\PreapprovalDetailsResponse":29:{s:16:"responseEnvelope";O:36:"PayPal\\Types\\Common\\ResponseEnvelope":4:{s:9:"timestamp";s:29:"2016-11-12T07:18:57.701-08:00";s:3:"ack";s:7:"Success";s:13:"correlationId";s:13:"bf95e4dc8fa10";s:5:"build";s:8:"26820131";}s:8:"approved";s:4:"true";s:9:"cancelUrl";s:62:"http://www.winjob.com/pay/addPP/ExecuteAgreement?success=false";s:11:"curPayments";s:1:"0";s:17:"curPaymentsAmount";s:4:"0.00";s:17:"curPeriodAttempts";s:1:"0";s:19:"curPeriodEndingDate";N;s:12:"currencyCode";s:3:"USD";s:11:"dateOfMonth";s:1:"0";s:9:"dayOfWeek";s:16:"NO_DAY_SPECIFIED";s:10:"endingDate";N;s:19:"maxAmountPerPayment";N;s:19:"maxNumberOfPayments";N;s:28:"maxNumberOfPaymentsPerPeriod";N;s:27:"maxTotalAmountOfAllPayments";N;s:13:"paymentPeriod";s:19:"NO_PERIOD_SPECIFIED";s:7:"pinType";s:12:"NOT_REQUIRED";s:9:"returnUrl";s:61:"http://www.winjob.com/pay/addPP/ExecuteAgreement?success=true";s:11:"senderEmail";s:29:"buyer.test@haseeburrehman.com";s:4:"memo";N;s:12:"startingDate";s:24:"2016-11-12T13:22:59.000Z";s:6:"status";s:6:"ACTIVE";s:18:"ipnNotificationUrl";N;s:11:"addressList";N;s:9:"feesPayer";N;s:21:"displayMaxTotalAmount";s:5:"false";s:6:"sender";O:32:"PayPal\\Types\\AP\\SenderIdentifier":5:{s:14:"useCredentials";N;s:12:"taxIdDetails";N;s:5:"email";N;s:5:"phone";N;s:9:"accountId";s:13:"B3LWEJAZ5TJ9N";}s:13:"agreementType";N;s:5:"error";N;}', 'buyer.test@haseeburrehman.com', 'B3LWEJAZ5TJ9N', 1478963937, 18, ''),
(3, 'O:42:"PayPal\\Types\\AP\\PreapprovalDetailsResponse":29:{s:16:"responseEnvelope";O:36:"PayPal\\Types\\Common\\ResponseEnvelope":4:{s:9:"timestamp";s:29:"2016-11-12T07:28:19.752-08:00";s:3:"ack";s:7:"Success";s:13:"correlationId";s:13:"3d05b7859c7d9";s:5:"build";s:8:"26820131";}s:8:"approved";s:4:"true";s:9:"cancelUrl";s:62:"http://www.winjob.com/pay/addPP/ExecuteAgreement?success=false";s:11:"curPayments";s:1:"0";s:17:"curPaymentsAmount";s:4:"0.00";s:17:"curPeriodAttempts";s:1:"0";s:19:"curPeriodEndingDate";N;s:12:"currencyCode";s:3:"USD";s:11:"dateOfMonth";s:1:"0";s:9:"dayOfWeek";s:16:"NO_DAY_SPECIFIED";s:10:"endingDate";N;s:19:"maxAmountPerPayment";N;s:19:"maxNumberOfPayments";N;s:28:"maxNumberOfPaymentsPerPeriod";N;s:27:"maxTotalAmountOfAllPayments";N;s:13:"paymentPeriod";s:19:"NO_PERIOD_SPECIFIED";s:7:"pinType";s:12:"NOT_REQUIRED";s:9:"returnUrl";s:61:"http://www.winjob.com/pay/addPP/ExecuteAgreement?success=true";s:11:"senderEmail";s:29:"buyer.test@haseeburrehman.com";s:4:"memo";N;s:12:"startingDate";s:24:"2016-11-12T13:22:59.000Z";s:6:"status";s:6:"ACTIVE";s:18:"ipnNotificationUrl";N;s:11:"addressList";N;s:9:"feesPayer";N;s:21:"displayMaxTotalAmount";s:5:"false";s:6:"sender";O:32:"PayPal\\Types\\AP\\SenderIdentifier":5:{s:14:"useCredentials";N;s:12:"taxIdDetails";N;s:5:"email";N;s:5:"phone";N;s:9:"accountId";s:13:"B3LWEJAZ5TJ9N";}s:13:"agreementType";N;s:5:"error";N;}', 'buyer.test@haseeburrehman.com', 'B3LWEJAZ5TJ9N', 1478964500, 18, 'PA-7MH814029C4529254'),
(4, 'O:42:"PayPal\\Types\\AP\\PreapprovalDetailsResponse":29:{s:16:"responseEnvelope";O:36:"PayPal\\Types\\Common\\ResponseEnvelope":4:{s:9:"timestamp";s:29:"2016-11-12T09:41:37.507-08:00";s:3:"ack";s:7:"Success";s:13:"correlationId";s:13:"37eb824c5cc9e";s:5:"build";s:8:"26820131";}s:8:"approved";s:4:"true";s:9:"cancelUrl";s:62:"http://www.winjob.com/pay/addPP/ExecuteAgreement?success=false";s:11:"curPayments";s:1:"0";s:17:"curPaymentsAmount";s:4:"0.00";s:17:"curPeriodAttempts";s:1:"0";s:19:"curPeriodEndingDate";N;s:12:"currencyCode";s:3:"USD";s:11:"dateOfMonth";s:1:"0";s:9:"dayOfWeek";s:16:"NO_DAY_SPECIFIED";s:10:"endingDate";N;s:19:"maxAmountPerPayment";N;s:19:"maxNumberOfPayments";N;s:28:"maxNumberOfPaymentsPerPeriod";N;s:27:"maxTotalAmountOfAllPayments";N;s:13:"paymentPeriod";s:19:"NO_PERIOD_SPECIFIED";s:7:"pinType";s:12:"NOT_REQUIRED";s:9:"returnUrl";s:61:"http://www.winjob.com/pay/addPP/ExecuteAgreement?success=true";s:11:"senderEmail";s:29:"buyer.test@haseeburrehman.com";s:4:"memo";N;s:12:"startingDate";s:24:"2016-11-12T13:22:59.000Z";s:6:"status";s:6:"ACTIVE";s:18:"ipnNotificationUrl";N;s:11:"addressList";N;s:9:"feesPayer";N;s:21:"displayMaxTotalAmount";s:5:"false";s:6:"sender";O:32:"PayPal\\Types\\AP\\SenderIdentifier":5:{s:14:"useCredentials";N;s:12:"taxIdDetails";N;s:5:"email";N;s:5:"phone";N;s:9:"accountId";s:13:"B3LWEJAZ5TJ9N";}s:13:"agreementType";N;s:5:"error";N;}', 'buyer.test@haseeburrehman.com', 'B3LWEJAZ5TJ9N', 1478972497, 18, 'PA-7MH814029C4529254');

-- --------------------------------------------------------

--
-- Structure de la table `site`
--

DROP TABLE IF EXISTS `site`;
CREATE TABLE `site` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `site`
--

INSERT INTO `site` (`id`, `name`, `value`) VALUES
(1, 'status', '1'),
(2, 'imagesize', '30'),
(9, 'smpthost', 'mail.gsdcard.com'),
(10, 'smptport', '587'),
(11, 'smptusername', 'mail@gsdcard.com'),
(12, 'smptpass', '#vQrq,!C{bUe'),
(13, 'smtpname', 'gsdcard mail'),
(14, 'replyto', 'mail@gsdcard.com'),
(15, 'replyname', 'gsdcard'),
(20, 'apiurl', 'http://www.gsdcard.com/api/'),
(30, 'upurl', 'http://localhost/admin/mobappapi/'),
(31, 'upuser', 'ghanamain'),
(32, 'uppass', 'ghanamain');

-- --------------------------------------------------------

--
-- Structure de la table `skills`
--

DROP TABLE IF EXISTS `skills`;
CREATE TABLE `skills` (
  `id_skills` int(11) NOT NULL,
  `skill_name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `skills`
--

INSERT INTO `skills` (`id_skills`, `skill_name`) VALUES
(1, 'Adobe InDesign'),
(2, 'Apache Solr'),
(3, 'YouTube'),
(4, 'ERP'),
(5, 'Virtual Assistant'),
(6, 'Supplier Sourcing'),
(7, 'Product Sourcing'),
(8, 'HTML'),
(9, 'HTML5'),
(10, 'Windows'),
(11, 'Web Scraping'),
(12, 'phonegap'),
(13, 'Google Adsense'),
(14, 'Adobe Flash'),
(15, 'Photography'),
(16, 'Paypal API'),
(17, 'Grant Writing'),
(18, 'Speech Writing'),
(19, 'Software Testing'),
(20, 'Business Cards'),
(21, 'Photoshop'),
(22, 'DNS'),
(23, 'Zen Cart'),
(24, 'Reviews'),
(25, 'Blog Design'),
(26, 'Editing'),
(27, 'Copywriting'),
(28, 'WIKI'),
(29, 'Academic Writing'),
(30, 'Brochure Design'),
(31, 'Branding'),
(32, 'Logo Design'),
(33, 'Banner Design'),
(34, 'Website Design'),
(35, 'Graphic Design'),
(36, 'PHP'),
(37, 'Laravel'),
(38, 'javascript'),
(39, 'AngularJS'),
(40, 'iOS'),
(41, 'Mobile App'),
(42, 'Wordpress'),
(43, 'Facebook'),
(44, 'Sales'),
(45, 'mysql'),
(46, 'jquery'),
(47, 'Backlink Building'),
(48, 'Java'),
(49, 'Telemarketing Exp'),
(50, 'Android'),
(51, 'CSS'),
(52, 'Lead Generation'),
(53, 'CMS'),
(54, 'PayU'),
(55, 'PayPal'),
(56, 'EBS'),
(57, 'Payment Gateway'),
(58, 'Blog Developer'),
(59, 'Joomla'),
(60, 'osCommerce'),
(61, 'PrestaShop'),
(62, 'Drupal'),
(63, 'CakePHP'),
(64, 'CodeIgniter'),
(65, 'Symfony'),
(66, 'Yii'),
(67, 'Zend'),
(68, 'ROR'),
(69, 'Go Lang'),
(70, 'Hadoop'),
(71, 'Stripe Payments'),
(72, 'Swift Language'),
(73, 'iPhone'),
(74, 'Python'),
(75, 'Perl'),
(76, 'ASP'),
(77, 'JSP'),
(78, 'XML'),
(79, 'Cold Fusion'),
(80, 'Typography'),
(81, 'Django'),
(82, 'PeopleSoft'),
(83, 'Cocoa'),
(84, 'Nginx'),
(85, 'Facebook Marketing'),
(86, 'Accounting'),
(87, 'Web Search'),
(88, 'Technical Writing'),
(89, '3D Modelling'),
(90, 'Engineering'),
(91, 'Rendering'),
(92, 'Illustrator'),
(93, 'Twitter'),
(94, 'Marketing'),
(95, 'AJAX'),
(96, 'Software Architecture'),
(97, 'Translation'),
(98, 'Content Writing'),
(99, 'Blog Writing'),
(100, 'software development'),
(101, 'Word'),
(102, 'Data Entry'),
(103, 'Articles'),
(104, 'Ghostwriting'),
(105, 'Article Rewriting'),
(106, 'C#'),
(107, 'C Programming'),
(108, 'C++ Programming'),
(109, 'Telemarketing'),
(110, 'iPad'),
(111, 'Magento'),
(112, 'Animation'),
(113, 'Linux'),
(114, 'sql'),
(115, 'Excel'),
(116, 'Link Building'),
(117, 'Advertising'),
(118, 'eCommerce'),
(119, 'Social Networking'),
(120, 'User Interface IA'),
(121, 'NET'),
(122, 'Research'),
(123, 'email marketing'),
(124, 'Internet Marketing'),
(125, 'SEO'),
(126, 'Salesmen'),
(127, 'Data Processing'),
(128, 'Leads'),
(129, 'Shopping Carts'),
(130, 'copy typing'),
(131, 'Bulk Marketing'),
(132, '3D Animation'),
(133, 'Video Services'),
(134, 'PSD to HTML'),
(135, 'Proofreading'),
(136, 'Web Security'),
(137, 'Computer Security'),
(138, 'Testing'),
(139, 'Apache Tomcat'),
(140, 'Redhat'),
(141, 'Nagios'),
(142, 'Icinga'),
(143, 'Puppet'),
(144, 'Chef'),
(145, 'Git'),
(146, 'SVN'),
(147, 'Cassandra'),
(148, 'Proxy'),
(149, 'LDAP'),
(150, 'Munin'),
(151, 'AWS'),
(152, 'MongoDB'),
(153, 'Memcached'),
(154, 'Apache'),
(155, 'Apache ActiveMQ'),
(156, 'SonarQube'),
(157, 'Elastic Search'),
(158, 'Scala'),
(159, 'Voiceover'),
(160, 'Audio Recording'),
(161, 'Narration'),
(162, 'Video Script'),
(163, 'Google Analytics'),
(164, 'Salesforce'),
(165, 'FileMaker'),
(166, 'Microsoft SQL Server'),
(167, 'VBNET'),
(168, 'Google Adword'),
(169, 'Business Development'),
(170, 'Business Strategy'),
(171, 'Server Administration'),
(172, 'Oracle Database'),
(173, 'Storage Administrator'),
(174, 'Matlab'),
(175, 'Mathematics'),
(176, 'Statistics'),
(177, 'Algorithm'),
(178, 'Social Marketing'),
(179, 'Digital Marketing'),
(180, 'Social Media'),
(181, 'Mobile Marketing'),
(182, 'GWT'),
(183, 'Cloud'),
(184, 'Google App Engine'),
(185, 'Ruby'),
(186, 'Ruby on Rails'),
(187, 'Sinatra'),
(188, 'BackboneJS'),
(189, 'NodeJS'),
(190, 'OpenStack'),
(191, 'VMware'),
(192, 'Datacenter Networking'),
(193, 'Network Design'),
(194, 'Cisco'),
(195, 'EmberJS'),
(196, 'Grails'),
(197, 'Teaching'),
(198, 'English Language'),
(199, 'Lesson Planning'),
(200, 'Ebay API'),
(201, 'Furniture Design'),
(202, 'Product Design'),
(203, 'Architectural Design'),
(204, 'CorelDraw'),
(205, 'UI Design'),
(206, 'UX Design'),
(207, 'Moodle'),
(208, 'Opencart'),
(209, 'Woocommerce'),
(210, 'polymer js'),
(211, 'Shopify'),
(212, 'Haskell'),
(213, 'SugarCRM'),
(214, 'Bootstrap'),
(215, 'CAD'),
(216, 'ExpressJS'),
(217, 'Qlikview'),
(218, 'Docker'),
(219, 'Apparel Design'),
(220, 'Jewellery Design'),
(221, 'Pinterest Marketing'),
(222, 'Meteor'),
(223, 'ReactJS'),
(224, 'Paytm Force Specialist'),
(225, 'Bamboo'),
(226, 'FishEye'),
(227, 'Atlassian Jira'),
(228, 'Ubuntu'),
(229, 'CentOS'),
(230, '.NET Compact Framework'),
(231, '.NET Framework'),
(232, '.NET Remoting'),
(233, '1ShoppingCart'),
(234, '2D Animation'),
(235, '2D Design'),
(236, '3D Design'),
(237, '3D Modeling'),
(238, '3D Printing'),
(239, '3D Rendering'),
(240, '3D Rigging'),
(241, '3D Scanning'),
(242, '3D Systems'),
(243, '3ds Max'),
(244, 'A2Billing'),
(245, 'Ab Initio'),
(246, 'AB Testing'),
(247, 'Abaqus'),
(248, 'AbleCommerce'),
(249, 'Ableton Live'),
(250, 'Absynth'),
(251, 'Account Management'),
(252, 'AccountMate'),
(253, 'Accounts Payable Management'),
(254, 'Accounts Receivable Management'),
(255, 'ACDSee'),
(256, 'ACPI'),
(257, 'Acquisitions'),
(258, 'Acronis'),
(259, 'Acrylic Painting'),
(260, 'ACT!'),
(261, 'Actian'),
(262, 'ActionScript'),
(263, 'ActionScript 3'),
(264, 'Active Directory'),
(265, 'Active Listening'),
(266, 'ActiveCollab'),
(267, 'ActiveX'),
(268, 'Ad Planning Buying'),
(269, '>Ad Posting'),
(270, 'Ad Servers'),
(271, 'Ada'),
(272, 'Adaco'),
(273, 'Adaptive Algorithms'),
(274, 'ADK'),
(275, 'Administrative Support'),
(276, 'ActiveX Data Objects ADO'),
(277, 'ADO.NET'),
(278, 'Adobe Acrobat'),
(279, 'Adobe After Effects'),
(280, 'Adobe AIR'),
(281, 'Adobe Analytics'),
(282, 'Adobe Audition'),
(283, 'Adobe Business Catalyst'),
(284, 'Adobe Captivate'),
(285, 'Adobe Content Server'),
(286, 'Adobe Contribute'),
(287, 'Adobe Creative Suite'),
(288, 'Adobe Digital Marketing Suite'),
(289, 'Adobe Director'),
(290, 'Adobe Dreamweaver'),
(291, 'Adobe eLearning Suite'),
(292, 'Adobe Encore'),
(293, 'Adobe Fireworks'),
(294, 'Adobe Flex'),
(295, 'Adobe Framemaker'),
(296, 'Adobe FreeHand'),
(297, 'Adobe GoLive'),
(298, 'AGA'),
(299, 'Adobe Illustrator'),
(300, 'Adobe Imageready'),
(301, 'Adobe InCopy'),
(302, 'Adobe Insight'),
(303, 'Adobe Photoshop Lightroom'),
(304, 'Adobe LiveCycle Designer'),
(305, 'Adobe Muse'),
(306, 'Adobe PageMaker'),
(307, 'Adobe PDF'),
(308, 'Adobe Photoshop'),
(309, 'Adobe Premiere'),
(310, 'Adobe Premiere Elements'),
(311, 'Adobe Premiere Pro'),
(312, 'Adobe RoboHelp'),
(313, 'Adobe Soundbooth'),
(314, 'Adobe Wallaby'),
(315, 'ADVA'),
(316, 'Advanced Business Application Programming ABAP'),
(317, 'Affiliate Marketing'),
(318, 'Afrikaans'),
(319, 'Agile software developmennt'),
(320, 'Agriculture'),
(321, 'Amharic Language'),
(322, 'AIX'),
(323, 'Akka'),
(324, 'Albanian'),
(325, 'Album Cover Design'),
(326, 'Alfresco development'),
(327, 'Alfresco user'),
(328, 'Algorithm Development'),
(329, 'Algorithms'),
(330, 'Alibre Design'),
(331, 'Alpha'),
(332, 'Alternative3D'),
(333, 'Alternative Dispute Resolution'),
(334, 'Altium Designer'),
(335, 'Amadeus'),
(336, 'Amanda Backup'),
(337, 'Amazon Appstore'),
(338, 'Amazon EC2'),
(339, 'Mechanical Turk API'),
(340, 'Amazon MWS'),
(341, 'Amazon Relational Database Service'),
(342, 'Amazon S3'),
(343, 'Amazon Web Services'),
(344, 'Amazon Webstore'),
(345, 'aMember'),
(346, 'American Sign Language'),
(347, 'Amplifiers and Filters'),
(348, 'AMQP'),
(349, 'Analog Electronics'),
(350, 'Analytics'),
(351, 'Android App Development'),
(352, 'Android SDK'),
(353, 'Anime Studio'),
(354, 'ANSI C'),
(355, 'ANSYS'),
(356, 'Antenna Design'),
(357, 'Antispam and Antivirus'),
(358, 'Antitrust'),
(359, 'AP Style Writing'),
(360, 'Apache administration'),
(361, 'Apache Ant'),
(362, 'Apache Avro'),
(363, 'Apache Camel'),
(364, 'Apache Click'),
(365, 'Apache CloudStack'),
(366, 'Apache Cocoon'),
(367, 'Apache Cordova'),
(368, 'Apache CXF'),
(369, 'Apache Flume'),
(370, 'Apache Hive'),
(371, 'Apache Kafka'),
(372, 'Apache Mahout'),
(373, 'Apache Maven'),
(374, 'Apache Nutch'),
(375, 'Apache OFBiz'),
(376, 'Apache Jakarta POI'),
(377, 'Apache Shirol'),
(378, 'Apache Spark'),
(379, 'Apache Struts'),
(380, 'Apache Thrift'),
(381, 'Apache Tiles'),
(382, 'API Development'),
(383, 'API Documentation'),
(384, 'Apollo'),
(385, 'App Store'),
(386, 'App Usability Analysis'),
(387, 'Appcelerator Titanium'),
(388, 'AppFuse'),
(389, 'Appian'),
(390, 'Appian BPM Suite'),
(391, 'Apple iBooks'),
(392, 'Apple iMovie'),
(393, 'iOS Jailbreaking'),
(394, 'Apple iWeb'),
(395, 'Apple iWork'),
(396, 'Apple Motion'),
(397, 'Apple UIKit Framework'),
(398, 'Apple WebObjects'),
(399, 'Apple Xcode'),
(400, 'AppleScript'),
(401, 'Applicant Tracking Systems'),
(402, 'Application Lifecycle Management'),
(403, 'Application Programming'),
(404, 'Application Server'),
(405, 'Appointment Setting'),
(406, 'Arabic'),
(407, 'Arbitration'),
(408, 'ArcGIS'),
(409, 'ArchiCAD'),
(410, 'Architecture'),
(411, 'Architectural Rendering'),
(412, 'ArcScene'),
(413, 'ARCserve'),
(414, 'Arduino'),
(415, 'ARM'),
(416, 'Art curation'),
(417, 'Art Direction'),
(418, 'Article curation'),
(419, 'Article Spinning'),
(420, 'Article Submission'),
(421, 'Article Writing'),
(422, 'Articulate'),
(423, 'Articulate Engage'),
(424, 'Articulate Presenter'),
(425, 'Articulate Storyline'),
(426, 'Articulate Studio'),
(427, 'Artificial Intelligence'),
(428, 'Artificial Neural Networks'),
(429, 'ArtiosCAD'),
(430, 'Artisteer'),
(431, 'Artlantis Render'),
(432, 'Artlantis Studio'),
(433, 'ArtRage'),
(434, 'Arts Crafts'),
(435, 'IBM AS400 Control Language'),
(436, 'ASIO'),
(437, 'ASP.NET'),
(438, 'ASP.NET MVC'),
(439, 'AspDotNetStorefront'),
(440, 'AspectJS'),
(441, 'Aspen HYSYS'),
(442, 'Assembla'),
(443, 'Assembly Language'),
(444, 'Asterisk'),
(445, 'Astrology'),
(446, 'Astrophysics'),
(447, 'Asynchronous IO'),
(448, 'ATL'),
(449, 'Atlas'),
(450, 'Atlassian Confluence'),
(451, 'Atlassian GreenHopper'),
(452, 'ATM Implementation'),
(453, 'Atmel AVR'),
(454, 'Atom'),
(455, 'Auctiva'),
(456, 'Audacity'),
(457, 'Audio Design'),
(458, 'Audio Editing'),
(459, 'Audio Engineering'),
(460, 'Audio Mastering'),
(461, 'Audio Mixing'),
(462, 'Audio Post Production'),
(463, 'Audio Postediting'),
(464, 'Audio Production'),
(465, 'Audio Restoration'),
(466, 'Auditing'),
(467, 'Autodesk Architecture'),
(468, 'Augmented Reality'),
(469, 'Author It'),
(470, 'Authorize.Net Development'),
(471, 'AutoCAD'),
(472, 'Autodesk'),
(473, 'Autodesk 3D Studio Max'),
(474, 'Autodesk Autocad Civil3D'),
(475, 'Autodesk Inventor'),
(476, 'Autodesk Maya'),
(477, 'Autodesk Mudbox'),
(478, 'Autodesk Navisworks'),
(479, 'Autodesk Revit'),
(480, 'Autodesk Sketchbook Pro'),
(481, 'Autodesk Softimage'),
(482, 'Autodys AcceliCAD'),
(483, 'AutoHotKey'),
(484, 'Autoit'),
(485, 'AutoLISP'),
(486, 'Automated Call Distribution'),
(487, 'Automated Testing'),
(488, 'Automation'),
(489, 'Automotive Engineering'),
(490, 'Avactis'),
(491, 'Avaya'),
(492, 'AVEVA PDMS'),
(493, 'Aviation'),
(494, 'Avid'),
(495, 'Avid Pro Tools'),
(496, 'Away3D'),
(497, 'aWeber'),
(498, 'Awk'),
(499, 'Abstract Window Toolkit AWT'),
(500, 'Axapta'),
(501, 'Axiis'),
(502, 'Axiom MicroStation Productivity Toolkit'),
(503, 'Axiom Productivity Tools'),
(504, 'Axure RP'),
(505, 'B2B Marketing'),
(506, 'Backbone.js'),
(507, 'Bacula'),
(508, 'Bada'),
(509, 'Baking'),
(510, 'Balsamiq'),
(511, 'Bank Reconciliation'),
(512, 'Bankruptcy'),
(513, 'Banner Ads'),
(514, 'Banner Ad Design'),
(515, 'Bartending'),
(516, 'Business Activity Monitoring'),
(517, 'Basecamp'),
(518, 'Bash'),
(519, 'Bash shell scripting'),
(520, 'Basic'),
(521, 'Basque'),
(522, 'Bassoon'),
(523, 'bbPress'),
(524, 'Behavior Driven Development BDD'),
(525, 'Behavioral Event Interviewing'),
(526, 'Belle Nuit Subtitler'),
(527, 'Benefits Law'),
(528, 'Bengali'),
(529, 'Bentley Microstation'),
(530, 'BeOS'),
(531, 'Betfair'),
(532, 'BGL Simple Fund'),
(533, 'Border Gateway Protocol'),
(534, 'Big Data'),
(535, 'BigCommerce'),
(536, 'Bing Ads'),
(537, 'Bioinformatics'),
(538, 'Biography Writing'),
(539, 'Biology'),
(540, 'Biostatistics'),
(541, 'Biotechnology'),
(542, 'BIRT'),
(543, 'Bitcoin'),
(544, 'Bitrix'),
(545, 'Bitrix Intranet'),
(546, 'BitRock Installbuilder'),
(547, 'BizTalk Server'),
(548, 'Black Box Testing'),
(549, 'Blackberry app development'),
(550, 'BlackBerry JDE'),
(551, 'Blackboard'),
(552, 'BlazeDS'),
(553, 'Blender3D'),
(554, 'Blitz BASIC'),
(555, 'Blog Commenting'),
(556, 'Blog Development'),
(557, 'blue.box'),
(558, 'Bluetooth'),
(559, 'BuildMyRank Writing'),
(560, 'Book Cover Design'),
(561, 'Book Writing'),
(562, 'Bookkeeping'),
(563, 'BoonEx Dolphin'),
(564, 'Boost'),
(565, 'Borland C++ Builder'),
(566, 'Borland SilkTest'),
(567, 'Bosnian'),
(568, 'Box.net Development'),
(569, 'Box2D'),
(570, 'BPCS'),
(571, 'Business Process Execution Language BPEL'),
(572, 'BPO Call Center'),
(573, 'BPO IT services'),
(574, 'Brand Consulting'),
(575, 'Brand Licensing'),
(576, 'Brand Management'),
(577, 'Brand Ambassador'),
(578, 'BREW'),
(579, 'Broadcast Advertising'),
(580, 'Broadcast Engineering'),
(581, 'BroadVision ClearVale'),
(582, 'BroadVision QuickSilver'),
(583, 'BuddyPress'),
(584, 'Budgeting Forecasting'),
(585, 'Bugzilla'),
(586, 'Building Estimation'),
(587, 'Building Regulations'),
(588, 'Buildium'),
(589, 'Bulgarian'),
(590, 'Business Analysis'),
(591, 'Business Card Design'),
(592, 'Business Coaching'),
(593, 'Business Continuity Planning'),
(594, 'Business intelligence'),
(595, 'Business IT Alignment'),
(596, 'Business Management'),
(597, 'Business Mathematics'),
(598, 'Business Modeling'),
(599, 'Business Planning'),
(600, 'Business Process Modeling'),
(601, 'Business Process Reengineering'),
(602, 'Business Proposal Writing'),
(603, 'Business Scenario Development'),
(604, 'Business valuation'),
(605, 'Business Writing'),
(606, 'C'),
(607, 'C++'),
(608, 'C Shell'),
(609, 'Cache Management'),
(610, 'Computer Aided Design'),
(611, 'Cadence Platform'),
(612, 'Cairngorm'),
(613, 'Cakewalk Sonar'),
(614, 'Calculus'),
(615, 'Calendar Management'),
(616, 'Call Center Management'),
(617, 'Call Handling'),
(618, 'Calligraphy'),
(619, 'Camtasia'),
(620, 'Cantonese'),
(621, 'Capistrano'),
(622, 'Capture NX2'),
(623, 'Carbide.c++'),
(624, 'Caricature Drawing'),
(625, 'Cartography Maps'),
(626, 'Cartooning'),
(627, 'Caspio Administration'),
(628, 'Caspio Programming'),
(629, 'Apache Cassandra'),
(630, 'Catalan'),
(631, 'Catch Phrases'),
(632, 'Catholic Theology'),
(633, 'CATIA'),
(634, 'Cavium Octeon Fusion'),
(635, 'Cavium OCTEON Plus MIPS64'),
(636, 'Cisco Certified Network Professional CCNP'),
(637, 'CDMA'),
(638, 'Celemony Melodyne'),
(639, 'Violoncello'),
(640, 'Central Desktop Development'),
(641, 'Central Reservation Systems'),
(642, 'Centreon'),
(643, 'Certified Information Systems Security Professiona'),
(644, 'Certified Public Accountant CPA'),
(645, 'CG Artwork'),
(646, 'CGI'),
(647, 'Change Management'),
(648, 'Chaos Group V Ray'),
(649, 'Character Design'),
(650, 'Chart.js'),
(651, 'chat support'),
(652, 'Check Point'),
(653, 'Chemical Engineering'),
(654, 'Chemistry'),
(655, 'Chicago Manual of Style'),
(656, 'Child Counseling'),
(657, 'Children&#039;s Writing'),
(658, 'Chinese'),
(659, 'Christian theology'),
(660, 'Chroma key'),
(661, 'Chrome Extension'),
(662, 'Chrome OS'),
(663, 'Customer Information Control System CICS'),
(664, 'Cinematography'),
(665, 'Circuit Design'),
(666, 'Cisco ASA'),
(667, 'Cisco Certified Design Associate CCDA'),
(668, 'Cisco Certified Design Expert CCDE'),
(669, 'Cisco Certified Design Professional CCDP'),
(670, 'Cisco Certified Entry Networking Technician CCENT'),
(671, 'Cisco Certified Internetwork Expert CCIE'),
(672, 'Cisco Certified Network Associate CCNA'),
(673, 'Cisco IOS'),
(674, 'Cisco PIX'),
(675, 'cisco routers'),
(676, 'Cisco CallManager'),
(677, 'Citrix NetScaler'),
(678, 'Citrix XenServer'),
(679, 'CiviCRM<'),
(680, 'Civil Engineering'),
(681, 'Civil Law'),
(682, 'ClamAV'),
(683, 'Classifieds Posting'),
(684, 'Clean Technology'),
(685, 'Clear Books'),
(686, 'ClearQuest'),
(687, 'clerical skills'),
(688, 'ClickBank'),
(689, 'Climate Sciences'),
(690, 'Clipping Path'),
(691, 'Clojure'),
(692, 'Cloud Security Framework'),
(693, 'Cloudera'),
(694, 'CloudForge'),
(695, 'Cluster Computing'),
(696, 'CMS Development'),
(697, 'CNC Programming'),
(698, 'COBOL'),
(699, 'Cocoa Touch'),
(700, 'Cocos2d'),
(701, 'Code Refactoring'),
(702, 'CoDeSys'),
(703, 'CodeWarrior'),
(704, 'CoffeeScript'),
(705, 'Cognos'),
(706, 'Cold calling'),
(707, 'ColdFusion'),
(708, 'CollabNet TeamForge'),
(709, 'Collaborative filtering'),
(710, 'Collection Agencies'),
(711, 'Component Object Model Microsoft COM'),
(712, 'Comedy Writing'),
(713, 'Comet'),
(714, 'Comic Art'),
(715, 'Comic Writing'),
(716, 'Commercial Lending'),
(717, 'Commercials'),
(718, 'Common Language Runtime'),
(719, 'Communications'),
(720, 'Compensation'),
(721, 'Compiler'),
(722, 'Complaint Management'),
(723, 'Compliance'),
(724, 'Compositing'),
(725, 'Computational Fluid Dynamics CFD'),
(726, 'Computational Linguistics'),
(727, 'Computer Aided Manufacturing CAM'),
(728, 'Computer Assembly'),
(729, 'Computer Engineering'),
(730, 'Computer Graphics'),
(731, 'Computer Hardware Design'),
(732, 'Computer Hardware Installation'),
(733, 'Comptuer Maintenance'),
(734, 'Computer Networking'),
(735, 'Computer Repair'),
(736, 'Computer Skills'),
(737, 'Computer vision'),
(738, 'comsat'),
(739, 'COMSOL Multiphysics'),
(740, 'Concept Artistry'),
(741, 'Concept Design'),
(742, 'Concept Software InPage'),
(743, 'ConceptShare Development'),
(744, 'Concrete5 CMS'),
(745, 'Conflict Resolution'),
(746, 'Constant Contact'),
(747, 'Construction'),
(748, 'Construction Monitoring'),
(749, 'Consumer Protection'),
(750, 'Contao CMS'),
(751, 'Content Management System'),
(752, 'Content Moderation'),
(753, 'Continuous Integration'),
(754, 'Contract Drafting'),
(755, 'Contract Law'),
(756, 'Contract Manufacturing'),
(757, 'Conversion Rate Optimization'),
(758, 'Cooking'),
(759, 'Copy editing'),
(760, 'Copyright'),
(761, 'CORBA'),
(762, 'Core Java'),
(763, 'Corel Paint Shop Pro'),
(764, 'Corel Painter'),
(765, 'Corel Ventura'),
(766, 'Corona'),
(767, 'Corporate Brand Identity'),
(768, 'Corporate Finance'),
(769, 'Corporate Law'),
(770, 'Corporate Strategy'),
(771, 'Corporate Taxes'),
(772, 'COSMO RS Chemical Engineering'),
(773, 'Cosmos OS'),
(774, 'Cost accounting'),
(775, 'CouchDB'),
(776, 'Counseling Psychology'),
(777, 'Cover Design'),
(778, 'Cover Letter Writing'),
(779, 'Covers Packaging'),
(780, 'CPanel'),
(781, 'CppUnit'),
(782, 'CPU Design'),
(783, 'Web Crawling'),
(784, 'Creative Talent'),
(785, 'Creative writing'),
(786, 'CRE Loaded'),
(787, 'Criminal Law'),
(788, 'CRM'),
(789, 'Croatian'),
(790, 'Crowdfunding'),
(791, 'Cryptography'),
(792, 'SAP Crystal Reports'),
(793, 'CS Cart'),
(794, 'CSS3'),
(795, 'CSUDSU'),
(796, 'Cubecart'),
(797, 'Cucumber'),
(798, 'CUDA'),
(799, 'CURL'),
(800, 'Curriculum Development'),
(801, 'Custom CMS'),
(802, 'Customer service'),
(803, 'Customer support'),
(804, 'CVS'),
(805, 'Czech'),
(806, 'D Programming Language'),
(807, 'd3.js'),
(808, 'DaVinci Resolve'),
(809, 'Dancing'),
(810, 'Danish'),
(811, 'DART'),
(812, 'Data Analytics'),
(813, 'Data Backup'),
(814, 'Data Center Operations'),
(815, 'Data Cleansing'),
(816, 'Data Encoding'),
(817, 'Data Engineering'),
(818, 'Data Ingestion'),
(819, 'Data Interpretation'),
(820, 'Data Logistics'),
(821, 'Data mining'),
(822, 'Data Modeling'),
(823, 'Data Protection'),
(824, 'Data Recovery'),
(825, 'Data Science'),
(826, 'Data scraping'),
(827, 'Data Sheet Writing'),
(828, 'Data Structures'),
(829, 'Data Sufficiency'),
(830, 'Data Visualization'),
(831, 'Data Warehousing'),
(832, 'Database Administration'),
(833, 'Database Caching'),
(834, 'Database Cataloguing'),
(835, 'Database design'),
(836, 'database management'),
(837, 'Database Modeling'),
(838, 'database programming'),
(839, 'Database testing'),
(840, 'DataLife Engine'),
(841, 'IBM InfoSphere DataStage'),
(842, 'dBase Administration'),
(843, 'dBase Programming'),
(844, 'DBMS'),
(845, 'DCOM'),
(846, 'Debian OS'),
(847, 'Defect Tracking'),
(848, 'Deja Vu'),
(849, 'DELFTship'),
(850, 'Delphi'),
(851, 'Demandware'),
(852, 'Dental Technology'),
(853, 'Derivatives'),
(854, 'Desk.com Administration'),
(855, 'Desk.com Development'),
(856, 'Desktop Applications'),
(857, 'Desktop Publishing'),
(858, 'Desktop Support'),
(859, 'DevExpress Reporting'),
(860, 'DevExpress'),
(861, 'DevOps'),
(862, 'DHCP'),
(863, 'DHTML'),
(864, 'Dialux'),
(865, 'Dietetics'),
(866, 'Diffbot'),
(867, 'Digital Access Pass'),
(868, 'Digital Electronics'),
(869, 'Digital Engineering'),
(870, 'Digital Mapping'),
(871, 'Digital Ocean'),
(872, 'Digital painting'),
(873, 'Digital Photography'),
(874, 'Digital scrapbooking'),
(875, 'Digital Sculpting'),
(876, 'Digital Signal Processing'),
(877, 'Dimdim Development'),
(878, 'Dinamica Ego'),
(879, 'Direct marketing'),
(880, 'Directory Submission'),
(881, 'DirectShow'),
(882, 'DirectX'),
(883, 'Disaster recovery'),
(884, 'Display Ads'),
(885, 'Distance Education'),
(886, 'Distributed computing'),
(887, 'DJing'),
(888, 'dmaic'),
(889, 'DNSsec'),
(890, 'DocBook'),
(891, 'Doctrine ORM'),
(892, 'Document Control'),
(893, 'Document Conversion'),
(894, 'Document Object Model'),
(895, 'Document review'),
(896, 'Dojo Toolkit'),
(897, 'Domain Migration'),
(898, 'DOS'),
(899, 'DotNetNuke'),
(900, 'Drafting'),
(901, 'Drawing'),
(902, 'Device Driver Development'),
(903, 'Driving'),
(904, 'Drones'),
(905, '>Drop Shipping'),
(906, 'Dropbox API'),
(907, 'Drums'),
(908, 'DSL Troubleshooting'),
(909, 'DTS'),
(910, 'Dundas Chart Controls'),
(911, 'Dutch'),
(912, 'dvd mastering'),
(913, 'DVD Studio Pro'),
(914, 'Dwolla API'),
(915, 'EHealth'),
(916, 'eLearning'),
(917, 'ePub'),
(918, 'E4X'),
(919, 'Eagle'),
(920, 'eBay ListingWriting'),
(921, 'eBay Marketing'),
(922, 'eBay Motors'),
(923, 'eBay Web Services'),
(924, 'eBook Design'),
(925, 'ebook Writing'),
(926, 'eBooks'),
(927, 'Eclipse'),
(928, 'ECMAScript'),
(929, 'Ecommerce Platform Development'),
(930, 'Econometrics'),
(931, 'Economic Analysis'),
(932, 'Economics'),
(933, 'EDGE'),
(934, 'Electronic data interchange EDI'),
(935, 'Editorial Writing'),
(936, 'Edius'),
(937, 'Education Technology'),
(938, 'Edufire'),
(939, 'Enterprise JavaBeans EJB'),
(940, 'Ekiga'),
(941, 'Ektron'),
(942, 'Elance'),
(943, 'Elasticsearch'),
(944, 'Elastix'),
(945, 'Electrical Drawing'),
(946, 'Electrical engineering'),
(947, 'Electronic Design'),
(948, 'Electronic funds transfer'),
(949, 'Electronic Workbench'),
(950, 'Electronics'),
(951, 'Elgg'),
(952, 'Elliptic Curve Cryptography ECC'),
(953, 'Eloqua'),
(954, 'Email Deliverability'),
(955, 'Email Etiquette'),
(956, 'Email Handling'),
(957, 'Email Technical Support'),
(958, 'Embedded C'),
(959, 'Embedded Linux'),
(960, 'Embedded Systems'),
(961, 'Ember.js'),
(962, 'Embroidery'),
(963, 'embroidery digitization'),
(964, 'EMC Symmetrix'),
(965, 'Employment Law'),
(966, 'Energy Engineering'),
(967, 'Engineering Design'),
(968, 'Engineering drawing'),
(969, 'English'),
(970, 'English Grammar'),
(971, 'English Proofreading'),
(972, 'English Punctuation'),
(973, 'English Spelling'),
(974, 'english tutoring'),
(975, 'ADO.NET Entity Framework'),
(976, 'Entity Framework'),
(977, 'Entrepreneurship'),
(978, 'Environmental Law'),
(979, 'Environmental science'),
(980, 'ERDAS IMAGINE'),
(981, 'Erlang'),
(982, 'Erotica Writing'),
(983, 'Enterprise Resource Planning ERP'),
(984, 'Erwin'),
(985, 'ESL Teaching'),
(986, 'Essay Writing'),
(987, 'Essbase'),
(988, 'ETABS'),
(989, 'Extract Transform and Load ETL'),
(990, 'Etsy Administration'),
(991, 'Eucalyptus Cloud'),
(992, 'Event Management'),
(993, 'Event planning'),
(994, 'EViews'),
(995, 'evolus pencil'),
(996, 'ExactTarget'),
(997, 'Excel VBA'),
(998, 'Exim'),
(999, 'Express Scribe<'),
(1000, 'Expression Engine'),
(1001, 'Ext JS'),
(1002, 'Eyeon Fusion'),
(1003, 'eZ Publish'),
(1004, 'F#'),
(1005, 'FAAC'),
(1006, 'Facebook Development'),
(1007, 'facebook games development'),
(1008, 'Facelets'),
(1009, 'Fact Checking'),
(1010, 'Family Law'),
(1011, 'Fashion design'),
(1012, 'Fashion Modeling'),
(1013, 'Fax'),
(1014, 'Facebook Javascript FBJS'),
(1015, 'FBML'),
(1016, 'Feature Writing'),
(1017, 'Federal Acquisition Regulations'),
(1018, 'Fedora'),
(1019, 'Fetchmail'),
(1020, 'FFmpeg'),
(1021, 'Fiber Optics'),
(1022, 'Fiction Writing'),
(1023, 'Field Map'),
(1024, 'Filing'),
(1025, 'Filipino'),
(1026, 'Film criticism'),
(1027, 'Film Direction'),
(1028, 'Film Dubbing'),
(1029, 'Film Production'),
(1030, 'Final Cut Pro'),
(1031, 'Final Cut Pro X'),
(1032, 'Final Draft'),
(1033, 'Finale'),
(1034, 'Financial Accounting'),
(1035, 'Financial analysis'),
(1036, 'Financial Forecasting'),
(1037, 'Financial Management'),
(1038, 'Financial modeling'),
(1039, 'Financial Prospectus Writing'),
(1040, 'Financial Reporting'),
(1041, 'Financial Writing'),
(1042, 'Finite Element Analysis'),
(1043, 'Finnish'),
(1044, 'ire OS Development'),
(1045, 'Fire Protection Engineering'),
(1046, 'Firebird'),
(1047, 'Firefox Plugin Development'),
(1048, 'Firewall'),
(1049, 'First aid'),
(1050, 'Five9'),
(1051, 'FL Studio'),
(1052, 'Flash 3D'),
(1053, 'Flask'),
(1054, 'Flowcharts'),
(1055, 'Flyer Design'),
(1056, 'Font Development'),
(1057, 'FontForge'),
(1058, 'Foreign Exchange Trading'),
(1059, 'Form Z'),
(1060, 'Format Layout'),
(1061, 'Fortran'),
(1062, 'Forum Development'),
(1063, 'Forum Moderation'),
(1064, 'Forum Posting'),
(1065, 'FourSquare Development'),
(1066, 'FoxPro Administration'),
(1067, 'FoxPro Programming'),
(1068, 'Field Programmable Gate Array FPGA'),
(1069, 'Franchise Consulting'),
(1070, 'Fraud Analysis'),
(1071, 'Fraud Mitigation'),
(1072, 'FreeBSD'),
(1073, 'Freelance Marketing'),
(1074, 'FreeMarker'),
(1075, 'FreePBX'),
(1076, 'Freeswitch'),
(1077, 'French'),
(1078, 'Friendster'),
(1079, 'Frontend Development'),
(1080, 'Microsoft FrontPage'),
(1081, 'FTP'),
(1082, 'fuel cms'),
(1083, 'Full text Search Engines'),
(1084, 'Functional testing'),
(1085, 'Fundraising'),
(1086, 'Fusebox'),
(1087, 'Fuzzing'),
(1088, 'GAAP'),
(1089, 'Gambling'),
(1090, 'Game Design'),
(1091, 'Game Development'),
(1092, 'Game Programming'),
(1093, 'Game Testing'),
(1094, 'GameSalad Creator'),
(1095, 'Gamification'),
(1096, 'GarageBand'),
(1097, 'Gearman'),
(1098, 'geartrax'),
(1099, 'Gemvision ClayTrix'),
(1100, 'gemvision matrix'),
(1101, 'General Office Skills'),
(1102, 'Genetic Algorithms'),
(1103, 'Genetic Engineering'),
(1104, 'Geolocation'),
(1105, 'Geology'),
(1106, 'Geomagic'),
(1107, 'Geomagic Design X'),
(1108, 'Geometry'),
(1109, 'Geospatial'),
(1110, 'German'),
(1111, 'getresponse'),
(1112, 'Ggplot2'),
(1113, 'GIMP'),
(1114, 'Geographic Information System GIS'),
(1115, 'GitHub'),
(1116, 'GlassFish'),
(1117, 'Glassware'),
(1118, 'GLSL'),
(1119, 'Go'),
(1120, 'Golang'),
(1121, 'GoldMine'),
(1122, 'GoodData'),
(1123, 'Google+ Marketing'),
(1124, 'Google AdSense API'),
(1125, 'Google AdWords'),
(1126, 'Google AdWords Development'),
(1127, 'Google Analytics API'),
(1128, 'Google App Engine API'),
(1129, 'Google Apps'),
(1130, 'Google Apps API'),
(1131, 'Google Calendar API'),
(1132, 'Google Calendar Development'),
(1133, 'Google Docs'),
(1134, 'Google Docs API'),
(1135, 'Google Gadgets'),
(1136, 'Google Gadgets API'),
(1137, 'Google Glass'),
(1138, 'Google Glass SDK'),
(1139, 'Google Go'),
(1140, 'Google Map Maker'),
(1141, 'Google Maps API'),
(1142, 'Google Places API'),
(1143, 'Google Play'),
(1144, 'Google+'),
(1145, 'Google+ Development'),
(1146, 'Google Reader'),
(1147, 'Google Reader API'),
(1148, 'Google Search API'),
(1149, 'Google search'),
(1150, 'Google Shopping'),
(1151, 'Google Sites Administration'),
(1152, 'Google Sites API'),
(1153, 'SketchUp'),
(1154, 'Google Spreadsheets'),
(1155, 'Google Spreadsheets API'),
(1156, 'Google Swiffy'),
(1157, 'Google Webmaster Central'),
(1158, 'Google Website Optimizer'),
(1159, 'GoToMyPC'),
(1160, 'GPRS'),
(1161, 'GPS Development'),
(1162, 'Gradle'),
(1163, 'Graph Databases'),
(1164, 'Graphics Programming'),
(1165, 'Grasshopper Virtual Phone'),
(1166, 'Gravity Forms'),
(1167, 'Greek'),
(1168, 'Greenline VeriFIX'),
(1169, 'Greenplum'),
(1170, 'Groovy'),
(1171, 'GruntJS'),
(1172, 'GTK+'),
(1173, 'GUI Design'),
(1174, 'Guitar Composition'),
(1175, 'Guitar Performance'),
(1176, 'Google Web Toolkit'),
(1177, 'HAML'),
(1178, 'haproxy'),
(1179, 'Hardware Troubleshooting'),
(1180, 'Haitian Creole'),
(1181, 'HaXe'),
(1182, 'HBase'),
(1183, 'headus UVLayout'),
(1184, 'Health Level 7'),
(1185, 'Hebrew'),
(1186, 'Helpdesk'),
(1187, 'Heroku'),
(1188, 'hi5'),
(1189, 'Hibernate'),
(1190, 'Highcharts'),
(1191, 'Hindi'),
(1192, 'History'),
(1193, 'Home Automation'),
(1194, 'Home Design'),
(1195, 'HootSuite'),
(1196, 'Hospitality'),
(1197, 'HotDog'),
(1198, 'Houdini'),
(1199, 'HP Cloud'),
(1200, 'HP Network Management Center HPNMC'),
(1201, 'HP QuickTest Professional HPQTP'),
(1202, 'HP Quality Center'),
(1203, 'HP UX'),
(1204, 'HP UX Administration'),
(1205, 'HR Benefits'),
(1206, 'Human Resource Information Systems'),
(1207, 'HRM'),
(1208, 'HubSpot'),
(1209, 'Human Resource Management'),
(1210, 'Human Sciences'),
(1211, 'Humor Writing'),
(1212, 'Hungarian'),
(1213, 'HVAC System Design'),
(1214, 'Hardware Prototyping'),
(1215, 'Hybris'),
(1216, 'Oracle Hyperion Planning'),
(1217, 'Hypnosis'),
(1218, 'IBATIS'),
(1219, 'IBM DB2 Administration'),
(1220, 'IBM DB2 Programming'),
(1221, 'IBM Lotus Notes Traveler'),
(1222, 'IBM Lotus Symphony'),
(1223, 'IBM PowerPC Programming'),
(1224, 'IBM System p'),
(1225, 'IBM Rational Rose'),
(1226, 'IBM SameTime'),
(1227, 'IBM SmartCloud'),
(1228, 'IBM SPSS'),
(1229, 'IBM System Storage'),
(1230, 'IBM Tivoli Framework'),
(1231, 'IBM Watson'),
(1232, 'IBM WebSphere'),
(1233, 'IBM System x'),
(1234, 'IBM zVM Administration'),
(1235, 'ICD Coding'),
(1236, 'Icefaces'),
(1237, 'IClone'),
(1238, 'Icon Design'),
(1239, 'IContact'),
(1240, 'IdeaBlade DevForce'),
(1241, 'IDRISI'),
(1242, 'ifbyphone Administration'),
(1243, 'ifbyphone API Development'),
(1244, 'Internet Information Services IIS'),
(1245, 'Illustration'),
(1246, 'IMacros'),
(1247, 'Image Editing'),
(1248, 'Image Processing'),
(1249, 'Imaging'),
(1250, 'Immigration Law'),
(1251, 'IMS'),
(1252, 'In Game Advertising'),
(1253, 'Inbound marketing'),
(1254, 'Indexing'),
(1255, 'Indonesian'),
(1256, 'Industrial design'),
(1257, 'Industrial Engineering'),
(1258, 'Infographics'),
(1259, 'Informatica'),
(1260, 'Information Architecture'),
(1261, 'Information Builders WebFOCUS'),
(1262, 'Information design'),
(1263, 'Information Management'),
(1264, 'Information Security'),
(1265, 'informatique'),
(1266, 'Informix Administration'),
(1267, 'Informix Programming'),
(1268, 'Infragistics'),
(1269, 'Infusionsoft Administration'),
(1270, 'Infusionsoft Development'),
(1271, 'InfusionSoft Marketing'),
(1272, 'Ingress'),
(1273, 'ingress filtering'),
(1274, 'Inkscape'),
(1275, 'Inno Setup'),
(1276, 'Instagram API'),
(1277, 'Instagram Marketing'),
(1278, 'Installer Development'),
(1279, 'InstallShield'),
(1280, 'Instructional design'),
(1281, 'Instrumentation'),
(1282, 'Insurance Consulting'),
(1283, 'Integrated Circuits'),
(1284, 'Intellectual Property Law'),
(1285, 'IntelliCred'),
(1286, 'IntelliJ IDEA'),
(1287, 'Interaction design'),
(1288, 'Interactive Voice Response'),
(1289, 'InterBase'),
(1290, 'Interior design'),
(1291, 'Internal Auditing'),
(1292, 'International Law'),
(1293, 'International taxation'),
(1294, 'Internet research'),
(1295, 'Internet Security'),
(1296, 'internet surveys'),
(1297, 'Interprise Suite ERP'),
(1298, 'interspire'),
(1299, 'Intersystems Cache'),
(1300, 'Interviewing'),
(1301, 'Intranet Architecture'),
(1302, 'Intranet Implementation'),
(1303, 'Intuit Lacerte Tax'),
(1304, 'Intuit QuickBooks'),
(1305, 'Intuit Quicken'),
(1306, 'Inventory Management'),
(1307, 'Investigative Reporting'),
(1308, 'Investment Research'),
(1309, 'Invitation Design'),
(1310, 'Invoicing'),
(1311, 'Ionic Framework'),
(1312, 'iOS Development'),
(1313, 'iPad App Development'),
(1314, 'iPad UI Design'),
(1315, 'iPhone App Development'),
(1316, 'iPhone UI Design'),
(1317, 'IronPython'),
(1318, 'IRM Income Tax Audits'),
(1319, 'ISA Server'),
(1320, 'ISEB'),
(1321, 'Islamic Banking'),
(1322, 'ISO 9000Islamic theology'),
(1323, '>ISO 9001'),
(1324, 'Issue Tracking Systems'),
(1325, 'IT Management'),
(1326, 'Italian'),
(1327, 'iTextSharp'),
(1328, 'ITIL'),
(1329, 'ITK'),
(1330, 'IT Service Management'),
(1331, 'J2EE'),
(1332, 'J2ME'),
(1333, 'J2SE'),
(1334, 'Japanese'),
(1335, 'JasperReports'),
(1336, 'Javanese'),
(1337, 'JAXB'),
(1338, 'JBoss'),
(1339, 'JBoss Seam'),
(1340, 'JBPM'),
(1341, 'JCL'),
(1342, 'Oracle JD Edwards EnterpriseOne'),
(1343, 'JDBC'),
(1344, 'JDeveloper'),
(1345, 'Jenkins'),
(1346, 'JetPack'),
(1347, 'Jewelry Design'),
(1348, 'Jewish Theology'),
(1349, 'JFC'),
(1350, 'Jig and Fixture Design'),
(1351, 'Jimdo'),
(1352, 'Jingle Program Production'),
(1353, 'Jinja2'),
(1354, 'JMeter'),
(1355, '>JMS'),
(1356, 'JNCIA Junos'),
(1357, 'JNDI'),
(1358, 'Job Costing'),
(1359, 'Job Definition Format JDF'),
(1360, 'Job Description Writing'),
(1361, 'JomSocial Development'),
(1362, 'JOnAS'),
(1363, 'Joomla!'),
(1364, 'Joomla Fabrik'),
(1365, 'Journalism WritingJoomla Migration'),
(1366, 'JPA'),
(1367, 'JQuery Mobile'),
(1368, 'JavaServer Faces JSF'),
(1369, 'Jsharp'),
(1370, 'json'),
(1371, 'JSTL'),
(1372, 'Juniper Routers'),
(1373, 'JUnit'),
(1374, 'Junos'),
(1375, 'Kaizen'),
(1376, 'Kajabi'),
(1377, 'Kaltura'),
(1378, 'Kannada'),
(1379, 'Kendo UI'),
(1380, 'Kentico CMS'),
(1381, 'Kerberos'),
(1382, 'Kerkythea'),
(1383, '>Kernel'),
(1384, 'KeyValue Stores'),
(1385, 'Keyboarding'),
(1386, 'Keynote'),
(1387, 'Kickstarter Marketing'),
(1388, 'Kindle App Development'),
(1389, 'Kindle Fire'),
(1390, 'Kindle Fire Apps'),
(1391, 'KISSMetrics'),
(1392, 'KitchenDraw'),
(1393, 'KiXtart'),
(1394, 'KnockoutJS'),
(1395, 'Kohana'),
(1396, 'Korean'),
(1397, 'Korn shell'),
(1398, 'KVM'),
(1399, 'KVM Switches'),
(1400, 'KVM Virtualization'),
(1401, 'Kyrgyz'),
(1402, 'Label and Package Design'),
(1403, 'LabVIEW'),
(1404, 'LabWindowsCVI'),
(1405, 'LAMP Administration'),
(1406, 'LAN Administration'),
(1407, 'LAN Implementation'),
(1408, 'LANDesk'),
(1409, 'Landing Pages'),
(1410, 'Landscape design'),
(1411, 'Filipino Visayan Dialect'),
(1412, 'Laravel Framework'),
(1413, 'laser engraving'),
(1414, 'Lasso'),
(1415, 'LaTeX'),
(1416, 'Latvian'),
(1417, 'Lean Consulting'),
(1418, 'Lectora'),
(1419, 'Legal Consulting'),
(1420, 'Legal research'),
(1421, 'Legal Transcription'),
(1422, 'Legal Translation'),
(1423, 'Legal writing'),
(1424, 'LemonStand'),
(1425, 'Leptonica'),
(1426, 'LESS'),
(1427, 'Lesson Plan Writing'),
(1428, 'Letter Writing'),
(1429, 'Lettering'),
(1430, 'Level Design'),
(1431, 'LexisNexis Accurint'),
(1432, 'LexisNexis Practice'),
(1433, 'libcurl'),
(1434, 'libGDX'),
(1435, 'LibreOffice'),
(1436, 'Lightwave 3d'),
(1437, 'Linear Programming'),
(1438, 'LimeSurvey'),
(1439, 'LimeJS'),
(1440, 'Lightworks'),
(1441, 'lingo'),
(1442, 'Linguistics'),
(1443, 'Link Wheel'),
(1444, 'LinkedIn Development'),
(1445, 'linq to entities'),
(1446, 'LINQ'),
(1447, 'Linkvana'),
(1448, 'LinkedIn Recruiting'),
(1449, 'linq to sql'),
(1450, 'Slackware Linux'),
(1451, 'Linux System Administration'),
(1452, 'LiquidPlanner'),
(1453, 'Lisp'),
(1454, 'Literature Review'),
(1455, 'Lithium Framework'),
(1456, 'Lithuanian'),
(1457, 'Litigation'),
(1458, 'Live Chat Operator'),
(1459, 'Live Chat Software'),
(1460, 'LivePerson'),
(1461, 'Learning Management System LMS'),
(1462, 'Load Balancing'),
(1463, 'Load testing'),
(1464, 'LoadRunner'),
(1465, 'IBM Lotus Domino'),
(1466, 'Lotus Notes'),
(1467, 'Loyalty Marketing'),
(1468, 'Lua'),
(1469, 'Lucene Search'),
(1470, 'Lyrics Writing'),
(1471, 'm0n0wall'),
(1472, 'Mac OS App Development'),
(1473, 'Mac OSX Administration'),
(1474, 'Macaw'),
(1475, 'Macedonian'),
(1476, 'Machine Design'),
(1477, 'Machine learning'),
(1478, 'MadCap Software'),
(1479, 'Maemo'),
(1480, 'Magazine Layout'),
(1481, 'Magic Bullet Colorista'),
(1482, 'Magic Bullet Looks'),
(1483, 'MailEnable'),
(1484, 'Make Build'),
(1485, 'Makerbot'),
(1486, 'Malay'),
(1487, 'Malayalam'),
(1488, 'Malware'),
(1489, 'ManageEngine'),
(1490, 'Management Consulting'),
(1491, 'Management Development'),
(1492, 'Mandarin'),
(1493, 'Manga'),
(1494, 'Mantis'),
(1495, 'Management Skills'),
(1496, 'Mandarin'),
(1497, 'Manga'),
(1498, 'Mantis'),
(1499, 'Manual Test Execution'),
(1500, 'Manufacturing'),
(1501, 'Manufacturing Design'),
(1502, 'MAPI'),
(1503, 'Mapinfo'),
(1504, 'Maple'),
(1505, 'Mapr'),
(1506, 'MapReduce'),
(1507, 'Marathi'),
(1508, 'Market research'),
(1509, 'Marketing Automation'),
(1510, 'Marketing Cloud Administration'),
(1511, 'Marketing Cloud Development'),
(1512, 'Marketing Cloud Marketing'),
(1513, 'Marketing strategy'),
(1514, 'Marketo'),
(1515, 'Marriage Counseling'),
(1516, 'Martial Arts'),
(1517, 'Master Production Schedule'),
(1518, 'Marketo'),
(1519, 'Marriage Counseling'),
(1520, 'Martial Arts'),
(1521, 'Master Production Schedule'),
(1522, 'Mastercam'),
(1523, 'Materials Engineering'),
(1524, 'MathCad'),
(1525, 'Mathematica'),
(1526, 'Max'),
(1527, 'Maxon BodyPaint 3D'),
(1528, 'Maxon Cinema 4D'),
(1529, 'McAfee ePolicy Orchestrator'),
(1530, 'MCP'),
(1531, 'McAfee SAA'),
(1532, 'McAfee VirusScan'),
(1533, 'Multi Criteria Decision Analysis'),
(1534, 'Mechanical Design'),
(1535, 'Mechanical Engineering'),
(1536, 'Mechatronics'),
(1537, 'Media buying'),
(1538, 'Media relations'),
(1539, 'MediaWiki'),
(1540, 'Medical Billing and Coding'),
(1541, 'Medical Illustration'),
(1542, 'Medical Imaging'),
(1543, 'Medical Informatics'),
(1544, 'Medical Law'),
(1545, 'Medical Records Research'),
(1546, 'Medical transcription'),
(1547, 'Medical Translation'),
(1548, 'Medical Writing'),
(1549, 'Meego Development'),
(1550, 'Menu Design'),
(1551, 'MerchantRun'),
(1552, 'MerchantRun GlobalLink'),
(1553, 'Mercurial'),
(1554, 'Merise'),
(1555, 'MetaTrader 4 MT4'),
(1556, 'Methods Engineering'),
(1557, 'Microsoft Foundation Classes MFC'),
(1558, 'Microcontroller Design'),
(1559, 'Microcontroller Programming'),
(1560, 'Microsoft Access Administration'),
(1561, 'Microsoft Access Programming'),
(1562, 'Microsoft Active Directory'),
(1563, 'Microsoft Business Intelligence Studio'),
(1564, 'Microsoft Certified Information Technology Profess'),
(1565, 'Microsoft Commerce Server'),
(1566, 'Windows Media Connect'),
(1567, 'Microsoft Dynamics Administration'),
(1568, 'Microsoft Dynamics CRM'),
(1569, 'Microsoft Dynamics Development'),
(1570, 'Microsoft Dynamics ERP'),
(1571, '>Microsoft Entity Framework'),
(1572, 'Microsoft Hyper V Server'),
(1573, 'Microsoft Lync Server'),
(1574, 'Microsoft PowerPoint'),
(1575, 'Microsoft Project'),
(1576, 'Microsoft Publisher'),
(1577, 'Microsoft SCVMM'),
(1578, 'Microsoft Server'),
(1579, 'Microsoft SharePoint Administration'),
(1580, 'Microsoft SharePoint Development'),
(1581, 'Microsoft Silverlight'),
(1582, 'Microsoft Small Business Server Administration'),
(1583, 'Microsoft SQL CE'),
(1584, 'Microsoft SQL Server Administration'),
(1585, 'Microsoft SQL Server Programming'),
(1586, 'Microsoft SQL Server Notification Services'),
(1587, 'Microsoft SQL Server Service Broker'),
(1588, 'Microsoft SQL SSAS'),
(1589, 'Microsoft SQL SSRS'),
(1590, 'Microsoft Transaction Server MTS'),
(1591, 'Microsoft Virtual Server'),
(1592, 'Microsoft Visio'),
(1593, 'Visual Basic'),
(1594, 'Microsoft Visual C++'),
(1595, 'Microsoft Visual Studio'),
(1596, 'Microsoft Windows Powershell'),
(1597, 'Microsoft Windows Server'),
(1598, 'Microsoft Word'),
(1599, 'Microstration v8'),
(1600, 'Microstock Photography'),
(1601, 'MicroStrategy'),
(1602, 'MIDI'),
(1603, 'Mikrotik RouterBOARD'),
(1604, 'Mikrotik RouterOS'),
(1605, 'Mind Mapping'),
(1606, 'MindTouch'),
(1607, 'Minecraft'),
(1608, 'Mining Engineering'),
(1609, 'Minitab'),
(1610, 'Miva Merchant'),
(1611, 'Mixpanel'),
(1612, 'MLS Consulting'),
(1613, 'mobi'),
(1614, 'Mobile Advertising'),
(1615, 'Mobile App Development'),
(1616, 'Mobile App Testing'),
(1617, 'Mobile Development Framework'),
(1618, 'Mobile Programming'),
(1619, 'Mobile UI Design'),
(1620, 'Modul8'),
(1621, 'MODx'),
(1622, 'Molecule Editors'),
(1623, 'Mongrel'),
(1624, 'Mono'),
(1625, 'Moonfruit SiteMaker'),
(1626, 'MoonScript'),
(1627, 'moraeMootools'),
(1628, 'Microsoft Office SharePoint Server'),
(1629, 'Motion graphics'),
(1630, 'MovableTypeMotivational Speaking'),
(1631, 'Mozenda Scraper'),
(1632, 'MPD'),
(1633, 'Multiprotocol Label Switching MPLS'),
(1634, 'MQL 4'),
(1635, 'Multi Router Traffic Grapher MRTG'),
(1636, 'MS DOS Administration'),
(1637, 'MS Office 365'),
(1638, 'Microsoft Visual Studio LightSwitch'),
(1639, 'Microsoft adCenter'),
(1640, 'mtek'),
(1641, 'Multi Level Marketing MLM'),
(1642, 'Multi touch Hardware Development'),
(1643, 'Multi touch Hardware Programming'),
(1644, 'Multithreaded Programming'),
(1645, 'Murals'),
(1646, 'Music'),
(1647, 'Music Arrangement'),
(1648, 'Musical composition'),
(1649, 'Music Dubbing'),
(1650, 'Music engraving'),
(1651, 'Music Producing'),
(1652, 'MVC Framework'),
(1653, 'Model View ViewModel MVVT'),
(1654, 'MXML'),
(1655, 'MYOB Administration'),
(1656, 'Myspace MarketingMyspace Marketing'),
(1657, 'Myspace Marketing'),
(1658, 'MySQL Administration'),
(1659, 'Nanotechnology'),
(1660, 'Natural language processing'),
(1661, 'Navigation System Design'),
(1662, 'Navigation System Implementation'),
(1663, 'Negotiation'),
(1664, 'Neo4j'),
(1665, 'NetBeans'),
(1666, 'NetBSD'),
(1667, 'Netezza'),
(1668, 'Netfabb'),
(1669, 'NetSuite'),
(1670, 'Network Engineering'),
(1671, 'Network Monitoring'),
(1672, 'Network Pentesting'),
(1673, 'Network Planning'),
(1674, 'Network Programming'),
(1675, 'Network Security'),
(1676, 'Neuro linguistic programming'),
(1677, 'News Writing Style'),
(1678, 'Newsletter Writing'),
(1679, 'Nexmo'),
(1680, 'Next Limit Maxwell Render'),
(1681, 'Next Limit RealFlow'),
(1682, 'Nextengine'),
(1683, 'NFS Administration'),
(1684, 'NFS Implementation'),
(1685, 'ngcore'),
(1686, 'NHibernate'),
(1687, 'NI Multisim'),
(1688, 'Ning Development'),
(1689, 'Ning Marketing'),
(1690, 'Non disclosure Agreements'),
(1691, 'Non Fiction Writing'),
(1692, 'Non linear editing system'),
(1693, 'NopCommerce'),
(1694, 'Norwegian'),
(1695, 'NoSQL'),
(1696, 'Notary public'),
(1697, 'nservicebusNovell NetWare'),
(1698, 'Nuendo'),
(1699, 'NUKE'),
(1700, 'Nursing'),
(1701, 'Nutrition'),
(1702, 'NVIDIA Mental Ray'),
(1703, 'OAuth'),
(1704, 'Object oriented design'),
(1705, 'Object Oriented PHP'),
(1706, 'Object Pascal'),
(1707, 'Objective C'),
(1708, 'Objective J'),
(1709, 'OCaml'),
(1710, 'Occupational Health'),
(1711, 'OCR algorithms'),
(1712, 'OCR Tesseract'),
(1713, 'GNU Octave'),
(1714, 'OCX'),
(1715, 'ODBC'),
(1716, 'odesk api'),
(1717, 'Odoo'),
(1718, 'Off page Optimization'),
(1719, 'Office Administration'),
(1720, 'OGRE'),
(1721, 'Oil painting'),
(1722, 'OLAP'),
(1723, 'OLE Automation'),
(1724, 'Online Transaction Processing OLTP'),
(1725, 'OmniGraffle'),
(1726, 'On Page Optimization'),
(1727, 'Online Community Management'),
(1728, 'Online Help'),
(1729, 'Online Writing'),
(1730, 'Object Oriented Programming OOP'),
(1731, 'OOPS'),
(1732, 'ooVoo Development'),
(1733, 'OpenOffice'),
(1734, 'OpenACS'),
(1735, 'OpenBravo PoS'),
(1736, 'OpenBSD'),
(1737, 'OpenCL'),
(1738, 'OpenCV'),
(1739, 'openemm'),
(1740, 'OpenERP Administration'),
(1741, 'OpenERP Development'),
(1742, 'Openflow'),
(1743, 'OpenGL'),
(1744, 'OpenGL ES'),
(1745, 'OpenLayers'),
(1746, 'OpenSIPS'),
(1747, 'OpenSocial'),
(1748, 'openSUSE'),
(1749, 'opentext'),
(1750, 'OpenTok Development'),
(1751, 'OpenType'),
(1752, 'OpenVBX'),
(1753, 'OpenVMS'),
(1754, 'OpenVPN'),
(1755, 'OpenVZ'),
(1756, 'OpenWrt'),
(1757, 'OpenX'),
(1758, 'Operating Systems Development'),
(1759, 'Operations Management'),
(1760, 'Operations Research'),
(1761, 'Optimizely'),
(1762, 'Optimizepress'),
(1763, 'Optimizepress'),
(1764, 'Oracle Agile'),
(1765, 'Oracle APEX'),
(1766, 'Oracle Application Framework'),
(1767, 'Oracle Application Server'),
(1768, 'Oracle ATG Web Commerce'),
(1769, 'Oracle BRM'),
(1770, 'Oracle Complex Events Processing'),
(1771, 'Oracle CRM On Demand'),
(1772, 'Oracle Data Guard'),
(1773, 'Oracle Database Administration<'),
(1774, 'Oracle Demantra'),
(1775, 'Oracle E Business Suite'),
(1776, 'Oracle Endeca'),
(1777, 'Oracle Enterprise Service Bus'),
(1778, 'Oracle Financials Applications'),
(1779, 'Oracle Forms'),
(1780, 'Oracle Fusion Applications'),
(1781, 'Oracle Fusion Middleware'),
(1782, 'Oracle Global Trade Management'),
(1783, 'Oracle Java EE'),
(1784, 'Orace OBIEE Plus'),
(1785, 'Oracle Patching'),
(1786, 'oracle performance tuning'),
(1787, 'Oracle PLSQL'),
(1788, 'Oracle Policy Automation'),
(1789, 'Oracle Primavera'),
(1790, 'Oracle Programming'),
(1791, 'Oracle Real Application Clusters RAC'),
(1792, 'Oracle Reports'),
(1793, 'Oracle RightNow'),
(1794, 'Oracle Siebel'),
(1795, 'Oracle SOA Suite'),
(1796, 'Oracle Sun Ray'),
(1797, 'Oracle Taleo'),
(1798, 'Oracle Team Productivity Center'),
(1799, 'Oracle Transportation Management'),
(1800, 'Oracle Universal Content Management'),
(1801, 'Oracle Unified Method'),
(1802, 'Oracle Upgrade'),
(1803, 'OrangeCRM'),
(1804, 'OrCAD'),
(1805, 'Orchard CMS'),
(1806, 'Order Entry'),
(1807, 'Order processing'),
(1808, 'Organizational Behavior'),
(1809, 'Organizational Development'),
(1810, 'ORM'),
(1811, 'ORMLite'),
(1812, 'OS2'),
(1813, 'osclass'),
(1814, 'OSGi'),
(1815, 'OSPF'),
(1816, 'Outbound Sales'),
(1817, 'P CAD'),
(1818, 'Packaging Design'),
(1819, 'Paint.NET'),
(1820, 'Palm'),
(1821, 'Palm App Development'),
(1822, 'Panoramic Stitching'),
(1823, 'Papercraft'),
(1824, 'Papervision3D'),
(1825, 'Paralegal'),
(1826, 'Parallels Virtual Desktop'),
(1827, 'Pardot Administration'),
(1828, 'Pardot Development'),
(1829, 'Pardot Marketing'),
(1830, 'Parse Mobile App Platform'),
(1831, 'ParticleIllusion'),
(1832, 'Pascal'),
(1833, 'Pashto'),
(1834, 'Patent Law'),
(1835, 'Pattern recognition'),
(1836, 'Pay per click'),
(1837, 'Payment Gateway Integration'),
(1838, 'Payment Processing'),
(1839, 'PayPal Development'),
(1840, 'Paypal Integration'),
(1841, 'Payroll Processing'),
(1842, 'PBwiki'),
(1843, 'PBworks Development'),
(1844, 'PCAP'),
(1845, 'PeopleCode'),
(1846, 'Oracle Peoplesoft Administration'),
(1847, 'Oracle Peoplesoft Development'),
(1848, 'Perforce'),
(1849, 'Performance testing'),
(1850, 'Performance Tuning'),
(1851, 'Performing arts'),
(1852, 'Perl Catalyst'),
(1853, 'Perl Mojolicious'),
(1854, 'PerlDancer'),
(1855, 'Persian'),
(1856, 'Personal Development'),
(1857, 'Pervasive Software'),
(1858, 'PESTEL'),
(1859, 'Petroleum Engineering'),
(1860, 'PfSense'),
(1861, 'Phing'),
(1862, 'Phone Support'),
(1863, 'Photo Editing'),
(1864, 'Photo Manipulation'),
(1865, 'Photo Retouching'),
(1866, 'Photograph Color Correction'),
(1867, 'PhotoScape'),
(1868, 'PhpBB'),
(1869, 'phpfox'),
(1870, 'phpMyAdmin'),
(1871, 'phpMyDirectory'),
(1872, 'PHP Nuke'),
(1873, 'Physical Fitness'),
(1874, 'Physics'),
(1875, 'Piano Composition'),
(1876, 'Piano Performance'),
(1877, 'Pig'),
(1878, 'Pinnacle Studio'),
(1879, 'Pixologic Zbrush'),
(1880, 'Platform Migration'),
(1881, 'Play Framework'),
(1882, 'PLC SCADA'),
(1883, 'PLC Programming'),
(1884, 'Plesk'),
(1885, 'Pligg'),
(1886, 'Plivo'),
(1887, 'Plone'),
(1888, 'Plumbing'),
(1889, 'PMDS'),
(1890, 'Pocket PC'),
(1891, 'Podio'),
(1892, 'Poetry'),
(1893, 'Policy Writing'),
(1894, 'Polish'),
(1895, 'Polymer Clay Sculpting'),
(1896, 'Pomodoro Technique'),
(1897, 'Portrait Painting'),
(1898, 'Portfolio Performance Modeling'),
(1899, 'Portlets'),
(1900, 'Portuguese'),
(1901, 'POS Terminal Development'),
(1902, 'Poser'),
(1903, 'Poster Design'),
(1904, 'Posterous'),
(1905, 'Postfix SMTP Server'),
(1906, 'PostgreSQL Administration'),
(1907, 'PostgreSQL Programming'),
(1908, 'PostScript'),
(1909, 'Power Builder'),
(1910, 'Windows PowerShell'),
(1911, 'Pay Per Click Advertising'),
(1912, 'PRADO PHP Framework'),
(1913, 'Prepress'),
(1914, 'Predictive Analytics'),
(1915, 'Presentation Design'),
(1916, 'Presentations'),
(1917, 'PreSonus Studio One'),
(1918, 'Press Advertising'),
(1919, 'Press Release Writing'),
(1920, 'Prezi'),
(1921, 'PrimeFaces'),
(1922, 'Print Advertising'),
(1923, 'Print design'),
(1924, 'Print Layout Design'),
(1925, 'Privacy'),
(1926, 'Private Clouds'),
(1927, 'Process architecture'),
(1928, 'Process improvement'),
(1929, 'Processing'),
(1930, 'Product Descriptions'),
(1931, 'Product Development'),
(1932, 'Product Liability'),
(1933, 'Product management'),
(1934, 'Pro E'),
(1935, 'Program Management'),
(1936, 'Project management'),
(1937, 'Project Management professional'),
(1938, 'Project Planning'),
(1939, 'Project Scheduling'),
(1940, 'Prolog'),
(1941, 'Propellerhead Reason'),
(1942, 'Property Development'),
(1943, 'Property Management'),
(1944, 'Property Tax'),
(1945, 'Proposal Writing'),
(1946, 'ProTools'),
(1947, 'Protoshare'),
(1948, 'Prototype Javascript Framework'),
(1949, 'PSD to MailChimp'),
(1950, 'PSD to Wordpress'),
(1951, 'PSD to XHTML'),
(1952, 'PSD2CMS'),
(1953, 'PSPICE'),
(1954, 'Psychometric Examination'),
(1955, 'PTC Creo ElementsPro'),
(1956, 'PTGui'),
(1957, 'PSPICE'),
(1958, 'Psychometric Examination'),
(1959, 'PTC Creo ElementsPro'),
(1960, 'PTGui'),
(1961, 'Public Relations'),
(1962, 'Public speaking'),
(1963, 'Publishing Fundamentals'),
(1964, 'Punch Home Design Studio Pro'),
(1965, 'punching'),
(1966, 'Punjabi'),
(1967, 'Puppet Administration'),
(1968, 'Purchasing Management'),
(1969, 'Pure Data'),
(1970, 'Pyjamas'),
(1971, 'Pylons'),
(1972, 'PyQt'),
(1973, 'pyro'),
(1974, 'Python Numpy'),
(1975, 'Python SciPy'),
(1976, 'Q'),
(1977, 'Quality of Service Q oS'),
(1978, 'QA Engineering'),
(1979, 'Qcodo'),
(1980, 'QGIS'),
(1981, 'qhse'),
(1982, 'QlikTech QlikView'),
(1983, 'Qmail'),
(1984, 'QNX'),
(1985, 'Qooxdoo'),
(1986, 'QS Cad'),
(1987, 'Qt'),
(1988, 'Qualitative Research'),
(1989, 'Quantitative Analysis'),
(1990, 'Quantity Surveying'),
(1991, 'Quark Xpress'),
(1992, 'quartz'),
(1993, 'Quartz Composer'),
(1994, 'quick sales system'),
(1995, 'QuickFIX'),
(1996, 'R'),
(1997, 'R Hadoop'),
(1998, 'RabbitMQ'),
(1999, 'Rackspace'),
(2000, 'Rackspace Cloud Servers'),
(2001, 'Radiant CMS'),
(2002, 'Radiant Zemax'),
(2003, 'Radio Broadcasting'),
(2004, 'Radio personality'),
(2005, 'RADIUS'),
(2006, 'RAID Administration'),
(2007, 'Raphael JS'),
(2008, 'Rapid Miner'),
(2009, 'Rapid Prototyping'),
(2010, 'RapidWorks'),
(2011, 'Raspberry Pi'),
(2012, 'Retail Sales Management'),
(2013, 'Razor Template Engine'),
(2014, 'Real Estate Appraisal'),
(2015, 'Real Estate IDX'),
(2016, 'Real Estate Law'),
(2017, 'Real Estate Management'),
(2018, 'Real time stream processing'),
(2019, 'Realbasic'),
(2020, 'Realist Painting'),
(2021, 'Receipt Parsing'),
(2022, 'Receptionist Skills'),
(2023, 'Recipe Writing'),
(2024, 'Recommender Systems'),
(2025, 'Records Management'),
(2026, 'Recruiting'),
(2027, 'Red5'),
(2028, 'Red Hat Administration'),
(2029, 'Redis'),
(2030, 'Redmine'),
(2031, 'Refinery CMS'),
(2032, 'Regression testing'),
(2033, 'Regular Expressions'),
(2034, 'Relational Databases'),
(2035, 'Relationship Management'),
(2036, 'Remote Sensing'),
(2037, 'Remoting'),
(2038, 'report writing'),
(2039, 'RepRap'),
(2040, 'Reputation Management'),
(2041, 'Requirement Management'),
(2042, 'Requirements analysis'),
(2043, 'Research Papers'),
(2044, 'Resin'),
(2045, 'Resource Description Framework RDF'),
(2046, 'Responsive Web Design'),
(2047, 'Responsys Administration'),
(2048, 'Responsys Development'),
(2049, 'Responsys Marketing'),
(2050, 'REST'),
(2051, 'Resume Writing'),
(2052, 'Retail Merchandising'),
(2053, 'Retail Ops Management'),
(2054, 'RETS'),
(2055, 'Reverse engineering'),
(2056, 'Autodesk Revit Architecture'),
(2057, 'RFID'),
(2058, 'Red Hat Certified Engineer RHCE'),
(2059, 'Red Hat Enterprise Linux RHEL'),
(2060, 'Rhinoceros 3D'),
(2061, 'RhinoScript'),
(2062, 'Rhino Service Bus'),
(2063, 'Rhodes Framework'),
(2064, 'Richfaces'),
(2065, 'RightScale'),
(2066, 'Risk management'),
(2067, 'Java Remote Method Invocation Java RMI'),
(2068, 'Robot Framework'),
(2069, 'Robotics'),
(2070, 'Romanian'),
(2071, 'Roomorama API'),
(2072, 'Root Cause Analysis'),
(2073, 'Robotscope'),
(2074, 'Rotoscoping'),
(2075, 'RPG Development'),
(2076, 'RPG OS400'),
(2077, 'RPG Writing'),
(2078, 'RSpec'),
(2079, 'RSS'),
(2080, 'RTL'),
(2081, 'RTLinux'),
(2082, 'RTML'),
(2083, 'RTOS'),
(2084, 'Rational Unified Process RUP'),
(2085, 'Russian Language'),
(2086, 'S'),
(2087, 'SaaS'),
(2088, 'Sassu'),
(2089, 'Sabre'),
(2090, 'Sage ERP Accpac'),
(2091, 'Sage Peachtree Complete Accounting'),
(2092, 'SAI'),
(2093, 'Salary Surveys'),
(2094, 'Sales Letters'),
(2095, 'Sales management'),
(2096, 'Sales Promotion'),
(2097, 'Sales Writing'),
(2098, 'Salesforce Apex'),
(2099, 'Salesforce App Development'),
(2100, 'Salesforce.com'),
(2101, 'Salesgenie.com'),
(2102, 'Samba'),
(2103, 'SAP'),
(2104, 'SAP2000'),
(2105, 'SAP ABAP'),
(2106, 'SAP Analysis'),
(2107, 'SAP BASIS'),
(2108, 'SAP BSP'),
(2109, 'SAP Business Objects'),
(2110, 'SAP BusinessOne'),
(2111, 'SAP CRM'),
(2112, 'SAP ERP'),
(2113, 'SAP ERP HCM'),
(2114, 'SAP AG'),
(2115, 'SAP Hana'),
(2116, 'SAP Logistics Execution'),
(2117, 'SAP Manufacturing Execution'),
(2118, 'SAP Materials '),
(2119, 'SAP NetWeaver'),
(2120, 'SAP Programming'),
(2121, 'SAP SD'),
(2122, 'SAP Solution Manager'),
(2123, 'SAP Sybase Adaptive Server Enterprise'),
(2124, 'SAP Web Dynpro'),
(2125, 'Scientific Research'),
(2126, 'Scientific Writing'),
(2127, 'SCORM'),
(2128, 'scrapebox'),
(2129, 'Scrapy'),
(2130, 'Screenwriting'),
(2131, 'Script.aculo.us'),
(2132, 'Scripting'),
(2133, 'Scripts Utilities'),
(2134, 'Scrum'),
(2135, 'ScrumWorks'),
(2136, 'Sculpting'),
(2137, 'Sculpture'),
(2138, 'SDL Passolo'),
(2139, 'SDL Trados'),
(2140, 'SDLX');
INSERT INTO `skills` (`id_skills`, `skill_name`) VALUES
(2141, 'Section 508 Compliance'),
(2142, 'Security Analysis'),
(2143, 'Security Engineering'),
(2144, 'Security Infrastructure'),
(2145, 'Selenium'),
(2146, 'Selenium WebDriver'),
(2147, 'Selling'),
(2148, 'Search engine marketing SEM'),
(2149, 'Semiconductor'),
(2150, 'Sencha Touch'),
(2151, 'Sencha GXT'),
(2152, 'Sendmail'),
(2153, 'sensable claytrix'),
(2154, 'Sentiment analysis'),
(2155, 'SENuke X'),
(2156, 'Search Engine Optimization SEO'),
(2157, 'SEO Audit'),
(2158, 'SEO Backlinking'),
(2159, 'SEO Keyword Research'),
(2160, 'SEO Writing'),
(2161, 'SEOMoz'),
(2162, 'Sequential Art'),
(2163, 'Serbian'),
(2164, 'Serenic Navigator'),
(2165, 'Serial Port Interfacing'),
(2166, 'Serialization'),
(2167, 'Sermon'),
(2168, 'Service Cloud Administration'),
(2169, 'Service Cloud Development'),
(2170, 'Service Level Management'),
(2171, 'Servlet'),
(2172, 'Servoy'),
(2173, 'Session Description Protocol'),
(2174, 'Microsoft SharePoint Designer<'),
(2175, 'ShiVa3D'),
(2176, 'Shopify Templates'),
(2177, 'Short Story Writing'),
(2178, 'SHOUTcast'),
(2179, 'Sibelius'),
(2180, 'Siemens NX'),
(2181, 'SigmaPlot'),
(2182, 'Silex Framework'),
(2183, 'Simple DirectMedia Layer'),
(2184, 'SimpleDB'),
(2185, 'Simplified Chinese'),
(2186, 'Simulink'),
(2187, 'Sinatra Framework'),
(2188, 'Singing'),
(2189, 'Sinhala'),
(2190, 'SIP'),
(2191, 'SiteBuildIt'),
(2192, 'Sitecore'),
(2193, 'Telerik Sitefinity CMS'),
(2194, 'SiteScope'),
(2195, 'Six Sigma'),
(2196, 'SkaDate'),
(2197, 'Skeleton'),
(2198, 'Sketch'),
(2199, 'Sketching'),
(2200, 'Skype'),
(2201, 'skype development'),
(2202, 'Slogans'),
(2203, 'Slovakian'),
(2204, 'Slovenian'),
(2205, 'Smalltalk'),
(2206, 'SmartFoxServer'),
(2207, 'Smarty'),
(2208, 'SMO'),
(2209, 'SMPP'),
(2210, 'SMS'),
(2211, 'SMS Gateway'),
(2212, 'SMTP'),
(2213, 'SnagIt'),
(2214, 'SNMP'),
(2215, 'Snort'),
(2216, 'SOAP'),
(2217, 'soapUI'),
(2218, 'Social bookmarking'),
(2219, 'Social Media Management'),
(2220, 'Social Media Marketing'),
(2221, 'Social Media Optimization SMO'),
(2222, 'Social Network Administration'),
(2223, 'Social Networking Development'),
(2224, 'SocialEngine'),
(2225, 'Socket Programming'),
(2226, 'Software Debugging'),
(2227, 'Software Defined Networking SDN'),
(2228, 'Software Documentation'),
(2229, 'Software QA Testing'),
(2230, 'Solaris Administration'),
(2231, 'Spring Framework'),
(2232, 'Spring Security'),
(2233, 'SQA'),
(2234, 'SQL Azure'),
(2235, 'SQL CLR'),
(2236, 'SQL Programming'),
(2237, 'SQLite Administration'),
(2238, 'SQLite Programming'),
(2239, 'Sqoop'),
(2240, 'SQR'),
(2241, 'SquareSpace'),
(2242, 'Squid'),
(2243, 'SSH'),
(2244, 'SSI'),
(2245, 'SQL Server Integration Services SSIS'),
(2246, 'SSL'),
(2247, 'STAAD'),
(2248, 'Stakeholder Management'),
(2249, 'Startup Consulting'),
(2250, 'Stata'),
(2251, 'Stationery Design'),
(2252, 'Statistical Computing'),
(2253, 'Statpoint Statgraphics'),
(2254, 'Steinberg Cubase'),
(2255, 'Steinberg WaveLab'),
(2256, 'stenography'),
(2257, 'Stereoscopy'),
(2258, 'Sticker Design'),
(2259, 'Still Life Painting'),
(2260, 'Standard Template Library STL'),
(2261, 'Stock Management'),
(2262, 'Stored Procedure Development'),
(2263, 'Storyboarding'),
(2264, 'Stratasys'),
(2265, 'Strategic planning'),
(2266, 'Stream Processing'),
(2267, 'Stress Management'),
(2268, 'Stripe'),
(2269, 'StrongMail'),
(2270, 'Structural Analysis'),
(2271, 'Structural Engineering'),
(2272, 'Structured Cabling'),
(2273, 'Style Guide Development'),
(2274, 'Subtitling'),
(2275, 'Subversion'),
(2276, 'ugarCRM Development'),
(2277, 'SunGard'),
(2278, 'Supervised learning'),
(2279, 'supervisory skills'),
(2280, 'Supply chain management'),
(2281, 'Survey Design'),
(2282, 'SurveyMonkey'),
(2283, 'Sustainable Energy'),
(2284, 'Apache Subversion SVN'),
(2285, 'Software Configuration Management'),
(2286, 'Swedish'),
(2287, 'Swift'),
(2288, 'Swing'),
(2289, 'SWiSH Max'),
(2290, 'SWT'),
(2291, 'Sybase Programming'),
(2292, 'Symbian Development'),
(2293, 'Syncsort'),
(2294, 'Synopsis Writing'),
(2295, 'Programming'),
(2296, 'Symbian Development'),
(2297, 'Syncsort'),
(2298, 'Synopsis Writing'),
(2299, 'Synthetic Aperture Color Finesse'),
(2300, 'System Administration'),
(2301, 'System Analysis'),
(2302, 'System Automation'),
(2303, 'System Programming'),
(2304, 'Systems Development'),
(2305, 'T Shirt Design'),
(2306, 'Transact SQL'),
(2307, 'Tableau Software'),
(2308, 'Tagalog'),
(2309, 'Talend Open Studio'),
(2310, 'Tally Shoper'),
(2311, 'Tally .ERP'),
(2312, 'Tamil'),
(2313, 'Tapestry'),
(2314, 'TAPI'),
(2315, 'Tastypie'),
(2316, 'Tax Law'),
(2317, 'Tax preparation'),
(2318, 'Taxonomy'),
(2319, 'TclTk'),
(2320, 'TCPIP'),
(2321, 'Teaching Algebra'),
(2322, 'Teaching English'),
(2323, 'Teaching Mathematics'),
(2324, 'Teaching Physics'),
(2325, 'Tealeaf cxImpact'),
(2326, 'TeamViewer'),
(2327, 'technical analysis'),
(2328, 'Technical Documentation'),
(2329, 'Technical Editing'),
(2330, 'Technical Recruiter'),
(2331, 'Technical Support'),
(2332, 'Technical Translation'),
(2333, 'Tekla Structures'),
(2334, 'Telecommunications Engineering'),
(2335, 'Telephone Handling'),
(2336, 'Telerik'),
(2337, 'Telugu'),
(2338, 'Templates'),
(2339, 'Teradata'),
(2340, 'Tesseract'),
(2341, 'Test Automation'),
(2342, 'Test Case Design'),
(2343, 'Test Driven Development'),
(2344, 'TestComplete'),
(2345, 'TestLink'),
(2346, 'TestLodge'),
(2347, 'Testing Framework'),
(2348, 'Testopia'),
(2349, 'Textile Engineering'),
(2350, 'Textpattern'),
(2351, 'Texture Artist'),
(2352, 'Team Foundation Server'),
(2353, 'Thai'),
(2354, 'The Foundry NUKE'),
(2355, 'The Pixel Farm PFTrack'),
(2356, 'Theology'),
(2357, 'TIBCO ActiveMatrix BusinessWorks'),
(2358, 'Trade Law'),
(2359, 'Trade marketing'),
(2360, 'Trade Show Exhibition Design'),
(2361, 'trade2bharat'),
(2362, 'Transaction '),
(2363, 'Translation Armenian English'),
(2364, 'Translation Belarusian English'),
(2365, 'Translation Bengali English'),
(2366, 'Translation Bulgarian English'),
(2367, 'Translation Catalan English'),
(2368, 'Translation Chinese English'),
(2369, 'Translation Croatian English'),
(2370, 'Translation Czech English'),
(2371, 'Translation Danish English'),
(2372, 'Translation Dutch English'),
(2373, 'Translation English Afrikaans'),
(2374, 'Translation English Albanian'),
(2375, 'Translation English Arabic'),
(2376, 'Translation English Armenian'),
(2377, 'Translation Persian English'),
(2378, 'Translation Portuguese English'),
(2379, 'Translation Romanian'),
(2380, 'Translation Polish English'),
(2381, 'Translation Mandarin English'),
(2382, 'Translation Macedonian English'),
(2383, 'Translation Turkish English'),
(2384, 'Translation Ukrainian English'),
(2385, 'Translation Yiddish English'),
(2386, 'Travel Agent<'),
(2387, 'Travel Planning'),
(2388, 'Trusts Estates and Wills'),
(2389, 'Translation Armenian English'),
(2390, 'Translation Belarusian English'),
(2391, 'Translation Bengali English'),
(2392, 'Translation Bulgarian English'),
(2393, 'Translation Catalan English'),
(2394, 'Translation Chinese English'),
(2395, 'Translation Croatian English'),
(2396, 'Translation Czech English'),
(2397, 'Translation Danish English'),
(2398, 'Translation Dutch English'),
(2399, 'Translation English Afrikaans'),
(2400, 'Translation English Albanian'),
(2401, 'Translation English Arabic'),
(2402, 'Translation English Armenian'),
(2403, 'Translation Persian English'),
(2404, 'Translation Portuguese English'),
(2405, 'Triakis VSI'),
(2406, 'Trixbox'),
(2407, 'Tropo'),
(2408, 'Trusts Estates and Wills'),
(2409, 'TSM Administration'),
(2410, 'TSR'),
(2411, 'Tumblr'),
(2412, 'Turbo '),
(2413, 'Turkish'),
(2414, 'TV Broadcasting'),
(2415, 'Twig'),
(2416, 'Twilio API'),
(2417, 'twitter api'),
(2418, 'twitter bootstrap'),
(2419, 'Twitter Marketing'),
(2420, 'TypePad'),
(2421, 'Typesetting'),
(2422, 'Typing'),
(2423, 'TYPO3'),
(2424, 'U.S. Culture'),
(2425, 'Ubercart'),
(2426, 'User interface design'),
(2427, 'Ukrainian'),
(2428, 'Ulead COOL 3D'),
(2429, 'Ubercart'),
(2430, 'User interface design'),
(2431, 'Umbraco'),
(2432, 'UML'),
(2433, 'unbounce'),
(2434, 'Underwriting'),
(2435, 'Unified Threat Management'),
(2436, 'Unify'),
(2437, 'Unify SQLBase'),
(2438, 'Unify Corporation'),
(2439, 'Unit Testing'),
(2440, 'Unity'),
(2441, 'Unix'),
(2442, 'Unix shell'),
(2443, 'Unix System Administration'),
(2444, 'Unreal Engine'),
(2445, 'UnrealScript'),
(2446, 'Urban Design'),
(2447, 'Urdu'),
(2448, 'Usability testing'),
(2449, 'USB Electronics'),
(2450, 'User acceptance testing'),
(2451, 'User Experience Design'),
(2452, 'User&#039;s Guide Writing'),
(2453, 'UV Mapping'),
(2454, 'Vaadin Framework'),
(2455, 'Vagrant'),
(2456, 'Valgrind'),
(2457, 'Varnish Cache'),
(2458, 'VB.NET'),
(2459, 'VBA'),
(2460, 'VBScript'),
(2461, 'vbseo'),
(2462, 'VBulletin'),
(2463, 'vCita'),
(2464, 'VectorWorks'),
(2465, 'Veeam'),
(2466, 'Velocity Template Engine'),
(2467, 'Vendor Management Systems'),
(2468, 'Venture Capital Consulting'),
(2469, 'Verilog  VHDL'),
(2470, 'Version Control'),
(2471, 'Vertica'),
(2472, 'VFX Animation'),
(2473, 'VFX Design'),
(2474, 'VHDL'),
(2475, 'vicidial'),
(2476, 'Video Conversion'),
(2477, 'Video editing'),
(2478, 'Video Post Editing'),
(2479, 'Video production'),
(2480, 'Video Publishing'),
(2481, 'Video Ripping'),
(2482, 'Video Sales Letter'),
(2483, 'Video Streaming'),
(2484, 'Video Upload'),
(2485, 'Videography'),
(2486, 'VIDVOX VDMX'),
(2487, 'Vietnamese'),
(2488, 'Vim'),
(2489, 'Violin Composition'),
(2490, 'Violin Performance'),
(2491, 'Viral marketing'),
(2492, 'Virtual Currency'),
(2493, 'Virtual Machine'),
(2494, 'Virtual Private Server VPS'),
(2495, 'Virtualization'),
(2496, 'VirtueMart'),
(2497, 'Virtuoso'),
(2498, 'virus removal'),
(2499, 'isual Arts'),
(2500, 'Visual Dataflex'),
(2501, 'Visual FoxPro'),
(2502, 'Vizrt'),
(2503, 'VKontakte API'),
(2504, 'VLookup Tables'),
(2505, 'VLSI'),
(2506, 'Voice Talent'),
(2507, 'VoiceXML'),
(2508, 'VOIP Administration'),
(2509, 'Voldemort'),
(2510, 'Volleyball'),
(2511, 'volusion'),
(2512, 'VPN'),
(2513, 'V Ray'),
(2514, 'Virtual storage access method VSAM'),
(2515, 'VSS'),
(2516, 'vtiger Adminstration'),
(2517, 'vtiger Development'),
(2518, 'VTK'),
(2519, 'Vugen Scripting'),
(2520, 'Vulnerability assessment'),
(2521, 'VxWorks'),
(2522, 'W3C Widget API'),
(2523, 'WAMP'),
(2524, 'WAN'),
(2525, 'WAN Optimization'),
(2526, 'Wardrobe Styling'),
(2527, 'Watercolor Painting'),
(2528, 'Wave Accounting'),
(2529, 'Windows Communication Foundation WCF'),
(2530, 'Web Analytics'),
(2531, 'Web Host Manager'),
(2532, 'Web Hosting'),
(2533, 'Palm webOS Application Development'),
(2534, 'Web Programming'),
(2535, 'Web Services'),
(2536, 'Web Services Development'),
(2537, 'Web Testing'),
(2538, 'WebApp Pentesting'),
(2539, 'webeeh'),
(2540, 'webERP'),
(2541, 'Webflow'),
(2542, 'WebGL'),
(2543, 'Webisode Presentation'),
(2544, 'Webisode Production'),
(2545, 'Oracle WebLogic'),
(2546, 'WebRTC'),
(2547, 'Website Analytics'),
(2548, 'Website Baker'),
(2549, 'Website Development'),
(2550, 'Website Prototyping'),
(2551, 'Website Wireframing'),
(2552, 'Weebly'),
(2553, 'Weka'),
(2554, 'Welding'),
(2555, 'Welsh'),
(2556, 'Westlaw'),
(2557, 'White Paper Writing'),
(2558, 'Whiteboard Animation'),
(2559, 'WebHost Manager WHM'),
(2560, 'WHMCS Development'),
(2561, 'Wi Fi'),
(2562, 'Wi Fi'),
(2563, 'Wikipedia'),
(2564, 'Wilcom Embroidery Digitization'),
(2565, 'Wilcom Embroidery Digitization'),
(2566, 'WiMAX'),
(2567, 'Win32 App Development'),
(2568, 'WinAutomation'),
(2569, 'Wind Power Consulting'),
(2570, 'WinDev'),
(2571, 'WinDev Mobile'),
(2572, 'Windows 7 Administration'),
(2573, 'Windows 8 Administration'),
(2574, 'Windows 8 App Development'),
(2575, 'Windows Administration'),
(2576, 'Windows App Development'),
(2577, 'Microsoft Windows Azure'),
(2578, 'Windows Forms Development'),
(2579, 'microsoft windows media connect'),
(2580, 'Windows Mobile'),
(2581, 'Microsoft Windows Movie Maker'),
(2582, 'Windows NT Administration'),
(2583, 'Windows Phone'),
(2584, 'Microsoft Windows Phone 7 App Development'),
(2585, 'Windows Vista'),
(2586, 'Microsoft Windows Workflow Foundation'),
(2587, 'Windows XP Administration'),
(2588, 'WinRunner'),
(2589, 'Winsock'),
(2590, 'Wireframing'),
(2591, 'Wireless Network Implementation'),
(2592, 'Wireless Security'),
(2593, 'WiX'),
(2594, 'WML Script'),
(2595, 'Word of Mouth'),
(2596, 'Word processing'),
(2597, 'Wordfast'),
(2598, 'Wordperfect'),
(2599, 'Wordpress Plugi'),
(2600, 'Worketc'),
(2601, 'Workforce Management'),
(2602, 'Workshop Facilities'),
(2603, 'Worldbuilding'),
(2604, 'Worldspan'),
(2605, 'Wowza Media Server'),
(2606, 'WordPress e Commerce'),
(2607, 'Windows Presentation Foundation WPF'),
(2608, 'Wrap Advertising'),
(2609, 'Writing'),
(2610, 'Slang style Writing'),
(2611, 'Wu'),
(2612, 'Xactimate'),
(2613, 'Xamarin'),
(2614, 'WxWidgets'),
(2615, 'X Cart'),
(2616, 'X86 assembly language'),
(2617, 'XAML'),
(2618, 'XAMPP'),
(2619, 'Xara Xtreme'),
(2620, 'Xbox'),
(2621, 'SAP Xcelsius'),
(2622, 'Xen Cloud Platform'),
(2623, 'Xen Hypervisor'),
(2624, 'XenForo'),
(2625, 'Xero'),
(2626, 'XHTML'),
(2627, 'Xilinx'),
(2628, 'Xlinesoft PHPRunner'),
(2629, 'XML RPC'),
(2630, 'xml web services'),
(2631, 'XMPP'),
(2632, 'XOOPS'),
(2633, 'XPath'),
(2634, 'XQuery'),
(2635, 'XRumer'),
(2636, 'XSD'),
(2637, 'XSL'),
(2638, 'XSLT'),
(2639, 'XUL'),
(2640, 'Yahoo! Advertising Solutions'),
(2641, 'Yahoo Developer Skills'),
(2642, 'Yahoo! Merchant Solutions'),
(2643, 'Yahoo! Messenger'),
(2644, 'Yahoo! Query Language'),
(2645, 'Yahoo! Search Marketing'),
(2646, 'Yahoo! Store'),
(2647, 'YAML'),
(2648, 'Yandex API'),
(2649, 'Yandex MatrixNet'),
(2650, 'Yoga'),
(2651, 'Yola'),
(2652, 'YouTube Development'),
(2653, 'YouTube Marketing'),
(2654, 'YUI Library'),
(2655, 'Zabbix'),
(2656, 'zapier'),
(2657, 'Zaxwerks'),
(2658, 'Zend Framework'),
(2659, 'Zend Studio'),
(2660, 'Zendesk'),
(2661, 'Zendesk API Development'),
(2662, 'Zennolab ZennoPoster'),
(2663, 'Zillow Marketing'),
(2664, 'Zimbra Administration'),
(2665, 'Zimbra Development'),
(2666, 'ZK'),
(2667, 'Zoho Creator'),
(2668, 'Zoho CRM'),
(2669, 'zoomla'),
(2670, 'Zope'),
(2671, 'Zurb Foundation'),
(2672, 'Google Sketchup'),
(2673, 'MEAN'),
(2674, 'Craigslist Adposting'),
(2675, 'Rust'),
(2676, 'threejs'),
(2677, 'Amazon Lightsail');

-- --------------------------------------------------------

--
-- Structure de la table `stripe_customerdetail`
--

DROP TABLE IF EXISTS `stripe_customerdetail`;
CREATE TABLE `stripe_customerdetail` (
  `sr` int(255) NOT NULL,
  `belongsTo` int(11) NOT NULL,
  `stripeObject` longtext COLLATE utf8_bin NOT NULL,
  `stripeCustomerID` varchar(255) COLLATE utf8_bin NOT NULL,
  `attachedTo` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `stripe_customerdetail`
--

INSERT INTO `stripe_customerdetail` (`sr`, `belongsTo`, `stripeObject`, `stripeCustomerID`, `attachedTo`) VALUES
(20, 18, 'Stripe\\Customer JSON: {\n    "id": "cus_9SbCzK3u1Z7ZuL",\n    "object": "customer",\n    "account_balance": 0,\n    "created": 1477682792,\n    "currency": null,\n    "default_source": "card_199fz5C3aXjEIlyVDXRGTqpt",\n    "delinquent": false,\n    "description": "asda asdasd - 18",\n    "discount": null,\n    "email": null,\n    "livemode": false,\n    "metadata": [],\n    "shipping": null,\n    "sources": {\n        "object": "list",\n        "data": [\n            {\n                "id": "card_199fz5C3aXjEIlyVDXRGTqpt",\n                "object": "card",\n                "address_city": "asdsa",\n                "address_country": null,\n                "address_line1": "asd32",\n                "address_line1_check": "pass",\n                "address_line2": "asdsad",\n                "address_state": null,\n                "address_zip": "12456",\n                "address_zip_check": "pass",\n                "brand": "Visa",\n                "country": "US",\n                "customer": "cus_9SbCzK3u1Z7ZuL",\n                "cvc_check": "pass",\n                "dynamic_last4": null,\n                "exp_month": 2,\n                "exp_year": 2017,\n                "fingerprint": "JwrXRbpQcf45MXIv",\n                "funding": "credit",\n                "last4": "4242",\n                "metadata": [],\n                "name": "asda asdasd",\n                "tokenization_method": null\n            }\n        ],\n        "has_more": false,\n        "total_count": 1,\n        "url": "\\/v1\\/customers\\/cus_9SbCzK3u1Z7ZuL\\/sources"\n    },\n    "subscriptions": {\n        "object": "list",\n        "data": [],\n        "has_more": false,\n        "total_count": 0,\n        "url": "\\/v1\\/customers\\/cus_9SbCzK3u1Z7ZuL\\/subscriptions"\n    }\n}', 'cus_9SbCzK3u1Z7ZuL', 40),
(21, 18, 'Stripe\\Customer JSON: {\n    "id": "cus_9Sc1YquOlmEAKD",\n    "object": "customer",\n    "account_balance": 0,\n    "created": 1477685899,\n    "currency": null,\n    "default_source": "card_199gnsC3aXjEIlyVSGAGjyka",\n    "delinquent": false,\n    "description": "asdsa sdfds - 18",\n    "discount": null,\n    "email": null,\n    "livemode": false,\n    "metadata": [],\n    "shipping": null,\n    "sources": {\n        "object": "list",\n        "data": [\n            {\n                "id": "card_199gnsC3aXjEIlyVSGAGjyka",\n                "object": "card",\n                "address_city": "dsfsd",\n                "address_country": null,\n                "address_line1": "adsfdsf",\n                "address_line1_check": "pass",\n                "address_line2": "sdfds",\n                "address_state": null,\n                "address_zip": "dsf",\n                "address_zip_check": "pass",\n                "brand": "Visa",\n                "country": "US",\n                "customer": "cus_9Sc1YquOlmEAKD",\n                "cvc_check": "pass",\n                "dynamic_last4": null,\n                "exp_month": 2,\n                "exp_year": 2020,\n                "fingerprint": "JwrXRbpQcf45MXIv",\n                "funding": "credit",\n                "last4": "4242",\n                "metadata": [],\n                "name": "asdsa sdfds",\n                "tokenization_method": null\n            }\n        ],\n        "has_more": false,\n        "total_count": 1,\n        "url": "\\/v1\\/customers\\/cus_9Sc1YquOlmEAKD\\/sources"\n    },\n    "subscriptions": {\n        "object": "list",\n        "data": [],\n        "has_more": false,\n        "total_count": 0,\n        "url": "\\/v1\\/customers\\/cus_9Sc1YquOlmEAKD\\/subscriptions"\n    }\n}', 'cus_9Sc1YquOlmEAKD', 41),
(22, 18, 'Stripe\\Customer JSON: {\n    "id": "cus_9b9RM7dAILU1Ca",\n    "object": "customer",\n    "account_balance": 0,\n    "created": 1479655321,\n    "currency": null,\n    "default_source": "card_19Hx5hC3aXjEIlyVVby50dNx",\n    "delinquent": false,\n    "description": "Haseeb Test - 18",\n    "discount": null,\n    "email": null,\n    "livemode": false,\n    "metadata": [],\n    "shipping": null,\n    "sources": {\n        "object": "list",\n        "data": [\n            {\n                "id": "card_19Hx5hC3aXjEIlyVVby50dNx",\n                "object": "card",\n                "address_city": "rawalpindi",\n                "address_country": null,\n                "address_line1": "test address",\n                "address_line1_check": "pass",\n                "address_line2": "te",\n                "address_state": null,\n                "address_zip": "46000",\n                "address_zip_check": "pass",\n                "brand": "Visa",\n                "country": "US",\n                "customer": "cus_9b9RM7dAILU1Ca",\n                "cvc_check": "pass",\n                "dynamic_last4": null,\n                "exp_month": 2,\n                "exp_year": 2018,\n                "fingerprint": "JwrXRbpQcf45MXIv",\n                "funding": "credit",\n                "last4": "4242",\n                "metadata": [],\n                "name": "Haseeb Test",\n                "tokenization_method": null\n            }\n        ],\n        "has_more": false,\n        "total_count": 1,\n        "url": "\\/v1\\/customers\\/cus_9b9RM7dAILU1Ca\\/sources"\n    },\n    "subscriptions": {\n        "object": "list",\n        "data": [],\n        "has_more": false,\n        "total_count": 0,\n        "url": "\\/v1\\/customers\\/cus_9b9RM7dAILU1Ca\\/subscriptions"\n    }\n}', 'cus_9b9RM7dAILU1Ca', 47),
(23, 18, 'Stripe\\Customer JSON: {\n    "id": "cus_9b9V3guZOqQr2J",\n    "object": "customer",\n    "account_balance": 0,\n    "created": 1479655525,\n    "currency": null,\n    "default_source": "card_19HxC3C3aXjEIlyVzveKqqV0",\n    "delinquent": false,\n    "description": "Haseeb Ur Rehma - 18",\n    "discount": null,\n    "email": null,\n    "livemode": false,\n    "metadata": [],\n    "shipping": null,\n    "sources": {\n        "object": "list",\n        "data": [\n            {\n                "id": "card_19HxC3C3aXjEIlyVzveKqqV0",\n                "object": "card",\n                "address_city": "rawalpindi",\n                "address_country": null,\n                "address_line1": "test address",\n                "address_line1_check": "pass",\n                "address_line2": "test",\n                "address_state": null,\n                "address_zip": "46000",\n                "address_zip_check": "pass",\n                "brand": "Visa",\n                "country": "US",\n                "customer": "cus_9b9V3guZOqQr2J",\n                "cvc_check": "pass",\n                "dynamic_last4": null,\n                "exp_month": 5,\n                "exp_year": 2019,\n                "fingerprint": "JwrXRbpQcf45MXIv",\n                "funding": "credit",\n                "last4": "4242",\n                "metadata": [],\n                "name": "Haseeb Ur Rehma",\n                "tokenization_method": null\n            }\n        ],\n        "has_more": false,\n        "total_count": 1,\n        "url": "\\/v1\\/customers\\/cus_9b9V3guZOqQr2J\\/sources"\n    },\n    "subscriptions": {\n        "object": "list",\n        "data": [],\n        "has_more": false,\n        "total_count": 0,\n        "url": "\\/v1\\/customers\\/cus_9b9V3guZOqQr2J\\/subscriptions"\n    }\n}', 'cus_9b9V3guZOqQr2J', 48),
(24, 18, 'Stripe\\Customer JSON: {\n    "id": "cus_9ec4YsOLxCTTN3",\n    "object": "customer",\n    "account_balance": 0,\n    "created": 1480453745,\n    "currency": null,\n    "default_source": "card_19LIj6C3aXjEIlyVBfjF0rny",\n    "delinquent": false,\n    "description": "Haseeb Haseeb - 18",\n    "discount": null,\n    "email": null,\n    "livemode": false,\n    "metadata": [],\n    "shipping": null,\n    "sources": {\n        "object": "list",\n        "data": [\n            {\n                "id": "card_19LIj6C3aXjEIlyVBfjF0rny",\n                "object": "card",\n                "address_city": "Islamabad",\n                "address_country": null,\n                "address_line1": "tesssssst adddddreess",\n                "address_line1_check": "pass",\n                "address_line2": "Haseeb",\n                "address_state": null,\n                "address_zip": "44000",\n                "address_zip_check": "pass",\n                "brand": "Visa",\n                "country": "US",\n                "customer": "cus_9ec4YsOLxCTTN3",\n                "cvc_check": "pass",\n                "dynamic_last4": null,\n                "exp_month": 2,\n                "exp_year": 2017,\n                "fingerprint": "JwrXRbpQcf45MXIv",\n                "funding": "credit",\n                "last4": "4242",\n                "metadata": [],\n                "name": "Haseeb Haseeb",\n                "tokenization_method": null\n            }\n        ],\n        "has_more": false,\n        "total_count": 1,\n        "url": "\\/v1\\/customers\\/cus_9ec4YsOLxCTTN3\\/sources"\n    },\n    "subscriptions": {\n        "object": "list",\n        "data": [],\n        "has_more": false,\n        "total_count": 0,\n        "url": "\\/v1\\/customers\\/cus_9ec4YsOLxCTTN3\\/subscriptions"\n    }\n}', 'cus_9ec4YsOLxCTTN3', 52),
(25, 18, 'Stripe\\Customer JSON: {\n    "id": "cus_9esuJVS0Y6wDHN",\n    "object": "customer",\n    "account_balance": 0,\n    "created": 1480516351,\n    "currency": null,\n    "default_source": null,\n    "delinquent": false,\n    "description": "  - 18",\n    "discount": null,\n    "email": null,\n    "livemode": false,\n    "metadata": [],\n    "shipping": null,\n    "sources": {\n        "object": "list",\n        "data": [],\n        "has_more": false,\n        "total_count": 0,\n        "url": "\\/v1\\/customers\\/cus_9esuJVS0Y6wDHN\\/sources"\n    },\n    "subscriptions": {\n        "object": "list",\n        "data": [],\n        "has_more": false,\n        "total_count": 0,\n        "url": "\\/v1\\/customers\\/cus_9esuJVS0Y6wDHN\\/subscriptions"\n    }\n}', 'cus_9esuJVS0Y6wDHN', 57),
(26, 18, 'Stripe\\Customer JSON: {\n    "id": "cus_9esugBuHcRBnVT",\n    "object": "customer",\n    "account_balance": 0,\n    "created": 1480516359,\n    "currency": null,\n    "default_source": null,\n    "delinquent": false,\n    "description": "  - 18",\n    "discount": null,\n    "email": null,\n    "livemode": false,\n    "metadata": [],\n    "shipping": null,\n    "sources": {\n        "object": "list",\n        "data": [],\n        "has_more": false,\n        "total_count": 0,\n        "url": "\\/v1\\/customers\\/cus_9esugBuHcRBnVT\\/sources"\n    },\n    "subscriptions": {\n        "object": "list",\n        "data": [],\n        "has_more": false,\n        "total_count": 0,\n        "url": "\\/v1\\/customers\\/cus_9esugBuHcRBnVT\\/subscriptions"\n    }\n}', 'cus_9esugBuHcRBnVT', 58),
(27, 18, 'Stripe\\Customer JSON: {\n    "id": "cus_9esuzjLasKYjey",\n    "object": "customer",\n    "account_balance": 0,\n    "created": 1480516397,\n    "currency": null,\n    "default_source": null,\n    "delinquent": false,\n    "description": "Haseeb Ur Rehma - 18",\n    "discount": null,\n    "email": null,\n    "livemode": false,\n    "metadata": [],\n    "shipping": null,\n    "sources": {\n        "object": "list",\n        "data": [],\n        "has_more": false,\n        "total_count": 0,\n        "url": "\\/v1\\/customers\\/cus_9esuzjLasKYjey\\/sources"\n    },\n    "subscriptions": {\n        "object": "list",\n        "data": [],\n        "has_more": false,\n        "total_count": 0,\n        "url": "\\/v1\\/customers\\/cus_9esuzjLasKYjey\\/subscriptions"\n    }\n}', 'cus_9esuzjLasKYjey', 59),
(28, 18, 'Stripe\\Customer JSON: {\n    "id": "cus_9esz6WKY0zuG3e",\n    "object": "customer",\n    "account_balance": 0,\n    "created": 1480516656,\n    "currency": null,\n    "default_source": "card_19LZDGC3aXjEIlyVa44pNS03",\n    "delinquent": false,\n    "description": "Haseeb Ur Rehma - 18",\n    "discount": null,\n    "email": null,\n    "livemode": false,\n    "metadata": [],\n    "shipping": null,\n    "sources": {\n        "object": "list",\n        "data": [\n            {\n                "id": "card_19LZDGC3aXjEIlyVa44pNS03",\n                "object": "card",\n                "address_city": "Islamabad",\n                "address_country": null,\n                "address_line1": "test",\n                "address_line1_check": "pass",\n                "address_line2": "dfg",\n                "address_state": null,\n                "address_zip": "44000",\n                "address_zip_check": "pass",\n                "brand": "Visa",\n                "country": "US",\n                "customer": "cus_9esz6WKY0zuG3e",\n                "cvc_check": "pass",\n                "dynamic_last4": null,\n                "exp_month": 2,\n                "exp_year": 2017,\n                "fingerprint": "P1jySqVjoseAwIfT",\n                "funding": "debit",\n                "last4": "5564",\n                "metadata": [],\n                "name": "Haseeb Ur Rehma",\n                "tokenization_method": null\n            }\n        ],\n        "has_more": false,\n        "total_count": 1,\n        "url": "\\/v1\\/customers\\/cus_9esz6WKY0zuG3e\\/sources"\n    },\n    "subscriptions": {\n        "object": "list",\n        "data": [],\n        "has_more": false,\n        "total_count": 0,\n        "url": "\\/v1\\/customers\\/cus_9esz6WKY0zuG3e\\/subscriptions"\n    }\n}', 'cus_9esz6WKY0zuG3e', 60),
(29, 18, 'Stripe\\Customer JSON: {\n    "id": "cus_9et3b0FnBdFngB",\n    "object": "customer",\n    "account_balance": 0,\n    "created": 1480516905,\n    "currency": null,\n    "default_source": "card_19LZHHC3aXjEIlyVTlH5Q5Rd",\n    "delinquent": false,\n    "description": "Haseeb deb - 18",\n    "discount": null,\n    "email": null,\n    "livemode": false,\n    "metadata": [],\n    "shipping": null,\n    "sources": {\n        "object": "list",\n        "data": [\n            {\n                "id": "card_19LZHHC3aXjEIlyVTlH5Q5Rd",\n                "object": "card",\n                "address_city": "Islamabad",\n                "address_country": null,\n                "address_line1": "teras",\n                "address_line1_check": "pass",\n                "address_line2": "asdsa",\n                "address_state": null,\n                "address_zip": "44000",\n                "address_zip_check": "pass",\n                "brand": "Visa",\n                "country": "US",\n                "customer": "cus_9et3b0FnBdFngB",\n                "cvc_check": "pass",\n                "dynamic_last4": null,\n                "exp_month": 2,\n                "exp_year": 2018,\n                "fingerprint": "NLQ6H0jolwCCwWBu",\n                "funding": "debit",\n                "last4": "5556",\n                "metadata": [],\n                "name": "Haseeb deb",\n                "tokenization_method": null\n            }\n        ],\n        "has_more": false,\n        "total_count": 1,\n        "url": "\\/v1\\/customers\\/cus_9et3b0FnBdFngB\\/sources"\n    },\n    "subscriptions": {\n        "object": "list",\n        "data": [],\n        "has_more": false,\n        "total_count": 0,\n        "url": "\\/v1\\/customers\\/cus_9et3b0FnBdFngB\\/subscriptions"\n    }\n}', 'cus_9et3b0FnBdFngB', 61),
(30, 18, 'Stripe\\Customer JSON: {\n    "id": "cus_AKVxytXmY3ZMYr",\n    "object": "customer",\n    "account_balance": 0,\n    "created": 1490117866,\n    "currency": null,\n    "default_source": "card_19zqvVC3aXjEIlyVE0Ix1joO",\n    "delinquent": false,\n    "description": "John Smith - 18",\n    "discount": null,\n    "email": null,\n    "livemode": false,\n    "metadata": [],\n    "shipping": null,\n    "sources": {\n        "object": "list",\n        "data": [\n            {\n                "id": "card_19zqvVC3aXjEIlyVE0Ix1joO",\n                "object": "card",\n                "address_city": "dfd",\n                "address_country": null,\n                "address_line1": "sdd",\n                "address_line1_check": "pass",\n                "address_line2": "dfdf",\n                "address_state": null,\n                "address_zip": "1234",\n                "address_zip_check": "pass",\n                "brand": "Visa",\n                "country": "US",\n                "customer": "cus_AKVxytXmY3ZMYr",\n                "cvc_check": "pass",\n                "dynamic_last4": null,\n                "exp_month": 2,\n                "exp_year": 2019,\n                "fingerprint": "JwrXRbpQcf45MXIv",\n                "funding": "credit",\n                "last4": "4242",\n                "metadata": [],\n                "name": "John Smith",\n                "tokenization_method": null\n            }\n        ],\n        "has_more": false,\n        "total_count": 1,\n        "url": "\\/v1\\/customers\\/cus_AKVxytXmY3ZMYr\\/sources"\n    },\n    "subscriptions": {\n        "object": "list",\n        "data": [],\n        "has_more": false,\n        "total_count": 0,\n        "url": "\\/v1\\/customers\\/cus_AKVxytXmY3ZMYr\\/subscriptions"\n    }\n}', 'cus_AKVxytXmY3ZMYr', 62);

-- --------------------------------------------------------

--
-- Structure de la table `timezones`
--

DROP TABLE IF EXISTS `timezones`;
CREATE TABLE `timezones` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `gmt` varchar(255) NOT NULL,
  `value` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `timezones`
--

INSERT INTO `timezones` (`id`, `name`, `gmt`, `value`) VALUES
(1, 'International Date Line West', 'GMT-12:00', '-12'),
(2, 'Midway Island, Samoa', 'GMT-11:00', '-11'),
(3, 'Hawaii', 'GMT-10:00', '-10'),
(4, 'Alaska', 'GMT-09:00', '-9'),
(5, 'Pacific Time (US & Canada)', 'GMT-08:00', '-8'),
(6, 'Tijuana, Baja California', 'GMT-08:00', '-8'),
(7, 'Arizona', 'GMT-07:00', '-7'),
(8, 'Chihuahua, La Paz, Mazatlan', 'GMT-07:00', '-7'),
(9, 'Mountain Time (US & Canada)', 'GMT-07:00', '-7'),
(10, 'Central America', 'GMT-06:00', '-6'),
(11, 'Central Time (US & Canada)', 'GMT-06:00', '-6'),
(12, 'Guadalajara, Mexico City, Monterrey', 'GMT-06:00', '-6'),
(13, 'Saskatchewan', 'GMT-06:00', '-6'),
(14, 'Bogota, Lima, Quito, Rio Branco', 'GMT-05:00', '-5'),
(15, 'Eastern Time (US & Canada)', 'GMT-05:00', '-5'),
(16, 'Indiana (East)', 'GMT-05:00', '-5'),
(17, 'Atlantic Time (Canada)', 'GMT-04:00', '-4'),
(18, 'Caracas, La Paz', 'GMT-04:00', '-4'),
(19, 'Manaus', 'GMT-04:00', '-4'),
(20, 'Santiago', 'GMT-04:00', '-4'),
(21, 'Newfoundland', 'GMT-03:30', '-3.5'),
(22, 'Brasilia', 'GMT-03:00', '-3'),
(23, 'Buenos Aires, Georgetown', 'GMT-03:00', '-3'),
(24, 'Greenland', 'GMT-03:00', '-3'),
(25, 'Montevideo', 'GMT-03:00', '-3'),
(26, 'Mid-Atlantic', 'GMT-02:00', '-2'),
(27, 'Cape Verde Is.', 'GMT-01:00', '-1'),
(28, 'Azores', 'GMT-01:00', '-1'),
(29, 'Casablanca, Monrovia, Reykjavik', 'GMT+00:00', '0'),
(30, 'Greenwich Mean Time : Dublin, Edinburgh, Lisbon, London', 'GMT+00:00', '0'),
(31, 'Amsterdam, Berlin, Bern, Rome, Stockholm, Vienna', 'GMT+01:00', '1'),
(32, 'Belgrade, Bratislava, Budapest, Ljubljana, Prague', 'GMT+01:00', '1'),
(33, 'Brussels, Copenhagen, Madrid, Paris', 'GMT+01:00', '1'),
(34, 'Sarajevo, Skopje, Warsaw, Zagreb', 'GMT+01:00', '1'),
(35, 'West Central Africa', 'GMT+01:00', '1'),
(36, 'Amman', 'GMT+02:00', '2'),
(37, 'Athens, Bucharest, Istanbul', 'GMT+02:00', '2'),
(38, 'Beirut', 'GMT+02:00', '2'),
(39, 'Cairo', 'GMT+02:00', '2'),
(40, 'Harare, Pretoria', 'GMT+02:00', '2'),
(41, 'Helsinki, Kyiv, Riga, Sofia, Tallinn, Vilnius', 'GMT+02:00', '2'),
(42, 'Jerusalem', 'GMT+02:00', '2'),
(43, 'Minsk', 'GMT+02:00', '2'),
(44, 'Windhoek', 'GMT+02:00', '2'),
(45, 'Kuwait, Riyadh, Baghdad', 'GMT+03:00', '3'),
(46, 'Moscow, St. Petersburg, Volgograd', 'GMT+03:00', '3'),
(47, 'Nairobi', 'GMT+03:00', '3'),
(48, 'Tbilisi', 'GMT+03:00', '3'),
(49, 'Tehran', 'GMT+03:30', '3.5'),
(50, 'Abu Dhabi, Muscat', 'GMT+04:00', '4'),
(51, 'Baku', 'GMT+04:00', '4'),
(52, 'Yerevan', 'GMT+04:00', '4'),
(53, 'Kabul', 'GMT+04:30', '4.5'),
(54, 'Yekaterinburg', 'GMT+05:00', '5'),
(55, 'Islamabad, Karachi, Tashkent', 'GMT+05:00', '5'),
(56, 'Sri Jayawardenapura', 'GMT+05:30', '5.5'),
(57, 'Chennai, Kolkata, Mumbai, New Delhi', 'GMT+05:30', '5.5'),
(58, 'Kathmandu', 'GMT+05:45', '5.75'),
(59, 'Almaty, Novosibirsk', 'GMT+06:00', '6'),
(60, 'Astana, Dhaka', 'GMT+06:00', '6'),
(61, 'Yangon (Rangoon)', 'GMT+06:30', '6.5'),
(62, 'Bangkok, Hanoi, Jakarta', 'GMT+07:00', '7'),
(63, 'Krasnoyarsk', 'GMT+07:00', '7'),
(64, 'Beijing, Chongqing, Hong Kong, Urumqi', 'GMT+08:00', '8'),
(65, 'Kuala Lumpur, Singapore', 'GMT+08:00', '8'),
(66, 'Irkutsk, Ulaan Bataar', 'GMT+08:00', '8'),
(67, 'Perth', 'GMT+08:00', '8'),
(68, 'Taipei', 'GMT+08:00', '8'),
(69, 'Osaka, Sapporo, Tokyo', 'GMT+09:00', '9'),
(70, 'Seoul', 'GMT+09:00', '9'),
(71, 'Yakutsk', 'GMT+09:00', '9'),
(72, 'Adelaide', 'GMT+09:30', '9.5'),
(73, 'Darwin', 'GMT+09:30', '9.5'),
(74, 'Brisbane', 'GMT+10:00', '10'),
(75, 'Canberra, Melbourne, Sydney', 'GMT+10:00', '10'),
(76, 'Hobart', 'GMT+10:00', '10'),
(77, 'Guam, Port Moresby', 'GMT+10:00', '10'),
(78, 'Vladivostok', 'GMT+10:00', '10'),
(79, 'Magadan, Solomon Is., New Caledonia', 'GMT+11:00', '11'),
(80, 'Auckland, Wellington', 'GMT+12:00', '12'),
(81, 'Fiji, Kamchatka, Marshall Is.', 'GMT+12:00', '12'),
(82, 'Nuku\'alofa', 'GMT+13:00', '13');

-- --------------------------------------------------------

--
-- Structure de la table `token`
--

DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id` int(11) NOT NULL,
  `token` varchar(100) NOT NULL,
  `user` varchar(20) NOT NULL,
  `status` varchar(2) NOT NULL,
  `ctime` int(30) NOT NULL,
  `etime` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `token`
--

INSERT INTO `token` (`id`, `token`, `user`, `status`, `ctime`, `etime`) VALUES
(1, '1577b5235835c05265bc3533402e0927', '3', '1', 1443808645, 1646400645),
(23, '3142f4eedf9b28378b3b6427a509ac2e', '3', '1', 1443824757, 1446416757),
(24, '299d6abe21a795d5f8f50a7bf0991318', '3', '1', 1443824832, 1446416832),
(25, 'ee1e5df0fbc1dad693bbe1849cf5d4ba', '6', '1', 1444150297, 1446742297),
(26, '81f3dc8e29643f3d1a6110b2f7ef00d2', '6', '1', 1444150313, 1446742313),
(27, '9fbe3feb2967ca522b702203ef3c7f0f', '6', '1', 1444150444, 1446742444),
(28, '8b809a1d816f956e396ac5d60589011a', '3', '1', 1444150668, 1446742668),
(29, 'b4cd1a229de8c60d6a8d60015e35e6a0', '3', '1', 1444152452, 1446744452),
(30, '26590fb4a1fecb7ccd069f3474c77009', '6', '1', 1444154236, 1446746236),
(31, 'eba986bfc0a5dba8c0103661cc7132cf', '6', '1', 1444154549, 1446746549),
(32, '2de4eee1f77cc26cf07987e7ca278ee2', '1', '1', 1458918125, 1458928925),
(33, '62ff46102532a8571e2c046a089f5ff5', '1', '1', 1458918156, 1458928956),
(34, 'aaaaad57a2ed51d4ce5afd4817a73fff', '1', '1', 1458919071, 1458929871),
(35, '541d2feea0f14af2eddcf0d7a7656516', '1', '1', 1458919173, 1458929973),
(36, '0564dc4f018046607530cd8fa3f287e7', '1', '1', 1458919208, 1458930008),
(37, 'e1077bd457ff5642acefd4b07de23b36', '1', '1', 1458919263, 1458930063),
(38, '63a54b49a4e5cb6326c893798c29a6d8', '1', '1', 1458919272, 1458930072),
(39, '80cef1ebd7e34be8a71eda845e4d0177', '1', '1', 1458919302, 1458930102),
(40, 'f389b88ff177bb8f8834695e292e0863', '1', '1', 1458919346, 1458930146),
(41, '626cbd58de4f6a1a4e96dced0eb47f18', '1', '1', 1458919400, 1458930200),
(42, '8fe071f57440514ec08a80e7838be104', '1', '1', 1458919913, 1458930713);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` varchar(2) NOT NULL,
  `status` varchar(2) NOT NULL,
  `lastlogin` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `email`, `password`, `type`, `status`, `lastlogin`, `position`, `country`, `phone`) VALUES
(1, 'Administrator', 'admin', 'getupwork@gmail.com', 'bac1a377c236d995f382e338fd56a349', '1', '1', '1491840016.8658', '', '', ''),
(8, 'sagar', 'sagar', 'sagar@sagar.me', '41ed44e3038dbeee7d2ffaa7f51d8a4b', '1', '1', '', '', 'all', ''),
(9, 'Arif Hossain', 'arif', 'arif@arif.com', '0ff6c3ace16359e41e37d40b8301d67f', '2', '2', '1459555964.1421', '', '4', ''),
(10, 'jahangir alam', 'jahangir', 'canvasdevelopers@gmail.com', '5fce16e0de0d807a14654c67a7b90405', '2', '2', '', '', 'all', ''),
(11, 'Saikot Hasan', 'saikot', 'saikot@saikot.com', '0f778ebbde65527d348e8193f6129c0f', '1', '1', '', '', 'all', ''),
(12, 'hasan Rahman', 'hasan', 'deshilancer@gmail.com', '258b0812e0ac4d011cb9d9b7072b6c1c', '1', '1', '1470862908.95', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `userpage`
--

DROP TABLE IF EXISTS `userpage`;
CREATE TABLE `userpage` (
  `id` int(5) NOT NULL,
  `section` varchar(20) NOT NULL,
  `page` varchar(40) NOT NULL,
  `name` varchar(50) NOT NULL,
  `ind` int(4) NOT NULL,
  `icon` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `userpage`
--

INSERT INTO `userpage` (`id`, `section`, `page`, `name`, `ind`, `icon`) VALUES
(26, '18', 'country', 'Country', 1, 'fa-list'),
(27, '16', 'listapi', 'List Api', 1, 'fa-list'),
(28, '19', 'webuser', 'User', 1, 'fa-user'),
(29, '19', 'instagram', 'Social IDs', 2, 'fa-facebook'),
(30, '19', 'fundmangement/hourly-billings', 'Fund Management ', 2, 'fa-usd'),
(31, '19', 'contactmanagement', 'Contact Management', 3, '');

-- --------------------------------------------------------

--
-- Structure de la table `userpageaccess`
--

DROP TABLE IF EXISTS `userpageaccess`;
CREATE TABLE `userpageaccess` (
  `id` int(11) NOT NULL,
  `section` varchar(20) NOT NULL,
  `user` varchar(20) NOT NULL,
  `page` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `userpageaccess`
--

INSERT INTO `userpageaccess` (`id`, `section`, `user`, `page`) VALUES
(10, '18', '9', '26'),
(11, '18', '9', '32'),
(12, '16', '9', '27');

-- --------------------------------------------------------

--
-- Structure de la table `usersection`
--

DROP TABLE IF EXISTS `usersection`;
CREATE TABLE `usersection` (
  `id` int(5) NOT NULL,
  `page` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `ind` int(4) NOT NULL,
  `icon` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `usersection`
--

INSERT INTO `usersection` (`id`, `page`, `name`, `ind`, `icon`) VALUES
(16, '', 'Api Developer', 600, ''),
(17, '', 'System Data', 700, ''),
(18, '', 'Common Data', 500, ''),
(19, '', 'User/ID', 1, '');

-- --------------------------------------------------------

--
-- Structure de la table `usersectionaccess`
--

DROP TABLE IF EXISTS `usersectionaccess`;
CREATE TABLE `usersectionaccess` (
  `id` int(11) NOT NULL,
  `user` varchar(20) NOT NULL,
  `section` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `usersectionaccess`
--

INSERT INTO `usersectionaccess` (`id`, `user`, `section`) VALUES
(7, '9', 18);

-- --------------------------------------------------------

--
-- Structure de la table `usersubpage`
--

DROP TABLE IF EXISTS `usersubpage`;
CREATE TABLE `usersubpage` (
  `id` int(5) NOT NULL,
  `page` int(5) NOT NULL,
  `subpage` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `menu` int(1) NOT NULL,
  `ind` int(4) NOT NULL,
  `icon` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `usersubpage`
--

INSERT INTO `usersubpage` (`id`, `page`, `subpage`, `name`, `menu`, `ind`, `icon`) VALUES
(1, 26, 'lists', 'Country List', 1, 1, 'fa-list'),
(2, 26, 'add', 'Add Country', 1, 2, 'fa-plus'),
(3, 26, 'edit', 'Edit Country', 2, 3, 'fa-edit'),
(4, 26, 'inactive', 'Inactive Country', 1, 4, 'fa-trash'),
(17, 27, 'countrylist', 'country list', 1, 1, 'fa-list'),
(18, 28, 'verified', 'Verified Email', 1, 1, 'fa-user'),
(19, 28, 'notverified', 'Non Verified Email', 1, 2, 'fa-user'),
(20, 29, 'token', 'Active Tokens', 1, 1, 'fa-instagram'),
(21, 29, 'expired', 'Expired Tokens', 1, 2, 'fa-instagram'),
(22, 28, 'activeclient', 'Active Client', 1, 3, 'fa-user'),
(23, 28, 'suspendclient', 'Suspend Client', 1, 4, 'fa-user'),
(24, 28, 'activefreelancer', 'Active Freelancer', 1, 5, 'fa-user'),
(25, 28, 'suspendfreelancer', 'Suspend Freelancer', 1, 6, 'fa-user'),
(26, 30, 'withdaw-processed', 'Processed Withdraw Request ', 1, 1, 'fa-usd'),
(27, 30, 'invoices', 'Invoices', 1, 2, 'fa-usd'),
(28, 30, 'paid-invoices', 'Paid Invoices', 1, 3, 'fa-usd'),
(29, 30, 'failed-invoices', 'Failed Invoices', 1, 4, 'fa-usd'),
(30, 31, 'contactsupport', 'Contact Support', 1, 1, ''),
(31, 30, 'withdaw-pending', 'Pending Withdraw Request ', 1, 1, 'fa-usd');

-- --------------------------------------------------------

--
-- Structure de la table `usersubpageaccess`
--

DROP TABLE IF EXISTS `usersubpageaccess`;
CREATE TABLE `usersubpageaccess` (
  `id` int(11) NOT NULL,
  `user` varchar(20) NOT NULL,
  `page` varchar(20) NOT NULL,
  `subpage` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `usersubpageaccess`
--

INSERT INTO `usersubpageaccess` (`id`, `user`, `page`, `subpage`) VALUES
(20, '9', '26', '1'),
(21, '9', '26', '2'),
(22, '9', '26', '3'),
(23, '9', '26', '4'),
(24, '9', '26', '18'),
(25, '9', '26', '47'),
(26, '9', '32', '33'),
(27, '9', '32', '34'),
(28, '9', '32', '35'),
(29, '9', '32', '36'),
(30, '9', '27', '17');

-- --------------------------------------------------------

--
-- Structure de la table `user_categories`
--

DROP TABLE IF EXISTS `user_categories`;
CREATE TABLE `user_categories` (
  `user_cat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `subcat_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `user_categories`
--

INSERT INTO `user_categories` (`user_cat_id`, `user_id`, `subcat_id`) VALUES
(17, 18, 2),
(18, 18, 6),
(19, 18, 10),
(20, 18, 12),
(21, 18, 17),
(22, 18, 21),
(23, 18, 24),
(24, 18, 28),
(25, 18, 32),
(26, 18, 34),
(27, 18, 38),
(28, 18, 42),
(29, 18, 44),
(30, 18, 71),
(31, 18, 88),
(35, 22, 1),
(36, 22, 8),
(37, 22, 10),
(38, 22, 11),
(39, 22, 12),
(86, 25, 2),
(109, 26, 2),
(110, 26, 4),
(111, 26, 8),
(112, 26, 9),
(113, 26, 10),
(114, 33, 1),
(115, 33, 2),
(116, 33, 5),
(117, 33, 6),
(118, 33, 9),
(146, 15, 1),
(147, 15, 4),
(148, 15, 9),
(149, 15, 80),
(150, 15, 84),
(156, 13, 1),
(157, 13, 8),
(158, 13, 9),
(159, 13, 11),
(160, 13, 80),
(161, 43, 1),
(162, 43, 3),
(163, 43, 4),
(164, 43, 8),
(165, 43, 9),
(166, 9, 1),
(167, 9, 4),
(168, 9, 9),
(169, 9, 80),
(170, 9, 84);

-- --------------------------------------------------------

--
-- Structure de la table `user_experience`
--

DROP TABLE IF EXISTS `user_experience`;
CREATE TABLE `user_experience` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `month1` int(5) NOT NULL,
  `year1` int(10) NOT NULL,
  `month2` int(5) NOT NULL,
  `year2` int(10) NOT NULL,
  `curr_working_place` tinyint(2) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `user_experience`
--

INSERT INTO `user_experience` (`id`, `user_id`, `company`, `title`, `location`, `month1`, `year1`, `month2`, `year2`, `curr_working_place`, `description`, `status`) VALUES
(10, 13, 'Company', 'Title', 'Title', 3, 2016, 10, 2016, 0, '                    Description                ', 1),
(11, 9, 'fgfgf', 'fgfg', 'fgfgf', 2, 2010, 0, 2014, 0, 'ghgthth', 1),
(12, 9, 'Web Design', 'Web Design au', 'usa', 1, 2016, 1, 0, 0, 'Web Design fgfdgh', 1),
(14, 13, 'sdfasdf', 'asdf', 'asdf', 3, 2323, 0, 0, 1, '                    asdfasdf                ', 1),
(16, 33, 'fsdg', 'fgfdg', 'dfhdfg', 1, 2014, 1, 2016, 0, 'sgfdfdgh', 1);

-- --------------------------------------------------------

--
-- Structure de la table `webuser`
--

DROP TABLE IF EXISTS `webuser`;
CREATE TABLE `webuser` (
  `webuser_id` int(11) NOT NULL,
  `webuser_company` varchar(50) NOT NULL,
  `webuser_fname` varchar(100) NOT NULL,
  `webuser_lname` varchar(100) NOT NULL,
  `webuser_username` varchar(50) NOT NULL,
  `webuser_picture` varchar(200) NOT NULL,
  `cropped_image` longtext,
  `webuser_token` varchar(50) NOT NULL,
  `webuser_email` varchar(100) NOT NULL,
  `webuser_password` varchar(50) NOT NULL,
  `webuser_orpass` varchar(50) NOT NULL,
  `webuser_type` varchar(2) NOT NULL,
  `webuser_status` varchar(2) NOT NULL,
  `webuser_lastlogin` varchar(50) NOT NULL,
  `webuser_position` varchar(50) NOT NULL,
  `webuser_country` varchar(50) NOT NULL,
  `webuser_phone` varchar(30) NOT NULL,
  `webuser_resettoken` varchar(40) NOT NULL,
  `webuser_resetexpire` varchar(30) NOT NULL,
  `webuser_title` varchar(50) NOT NULL,
  `webuser_site` varchar(200) NOT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1= active,0=suspend',
  `suspend_reason` int(1) NOT NULL DEFAULT '0'COMMENT
) ;

--
-- Contenu de la table `webuser`
--

INSERT INTO `webuser` (`webuser_id`, `webuser_company`, `webuser_fname`, `webuser_lname`, `webuser_username`, `webuser_picture`, `cropped_image`, `webuser_token`, `webuser_email`, `webuser_password`, `webuser_orpass`, `webuser_type`, `webuser_status`, `webuser_lastlogin`, `webuser_position`, `webuser_country`, `webuser_phone`, `webuser_resettoken`, `webuser_resetexpire`, `webuser_title`, `webuser_site`, `isactive`, `suspend_reason`, `isdelete`, `created`) VALUES
(6, '', 'sabbir', 'sagar', 'sagar', '', NULL, '446519526103930073851339798653', 'sabbir@sagar.me', '845fe25803ec3078dc795ec7187e3fd2', 'sagara1A', '2', '2', '', '', '5', '', '', '1469972500', '', '', 1, 0, 0, '0000-00-00 00:00:00'),
(7, '', 'saif', 'uddin', 'saifuddin', '', NULL, 'AwEE1QN4S9Xwlbq4pjsCy1iW2RylNR', 'mail@sagar.me', 'd6a6250c95b4bac0bf7d59a9bd39d473', 'saifuddin1A', '1', '2', '', '', '5', '', '', '1470767890', '', '', 1, 0, 0, '2016-10-18 10:00:00'),
(8, '', 'dasdas', 'dasads', 'sadas', '', NULL, 'aLzJsbmCyr7zCdHEPknfstjZXfr57o', 'asdas@dfssdf.fdsdfs', '091affd8d74560a357a79eaca064bb93', 'sagara1A', '2', '1', '', '', '5', '', '', '', '', '', 1, 0, 0, '0000-00-00 00:00:00'),
(9, '', 'Hasan', 'Rahman', 'hasan', 'temp/userimg_157100542218168084502024692625.jpeg', NULL, 'TYtW0TvXMGJB9K978oC6ph2j1L6RhX', 'hafijarrahman@gmail.com', '258b0812e0ac4d011cb9d9b7072b6c1c', 'Mykey2016', '2', '2', '', '', '9', '116576543564675', 'p3YEKaDeicgZ7ggKhyYZetnJW4Hc0B', '1471000246', '', '', 1, 0, 0, '0000-00-00 00:00:00'),
(11, '', 'Didar', 'Singh', 'didar084', '', NULL, 'rgA93XrEg9Y3NfyLi9mpe3T6Vqzs9R', 'didar084@gmail.com', '404a85dcecb080f5799dc3da3a812135', 'Shanna@5', '2', '2', '', '', '9', '', '', '', '', '', 1, 0, 0, '0000-00-00 00:00:00'),
(12, '', 'Arun', 'Nagyaan', 'arunk2711', '', NULL, '9WZRB8TIZC0e9HNARN2qUOomQ7F54C', 'arunk2711@gmail.com', '1359e1b2829b6ab3552f38d64da879f6', 'Arunk2711', '2', '1', '', '', '9', '', 'gYqKys5MiiUIi0L9ZxXmm0ZqC6hZHx', '1471001466', '', '', 1, 0, 0, '0000-00-00 00:00:00'),
(13, '', 'Arun', 'Kumar', 'arun', '', NULL, 'QnM7yAptNNSiW1Yh0xUOa7EznHvLg3', 'getupwork@gmail.com', '5455c33e251ab225e5c61c67e1902769', 'Arun', '2', '2', '', '', '23', '99999999999', 'p93BCI65rhfmT6M2XEpf3Rd8S6JYIO', '1485869660', '', '', 1, 0, 0, '0000-00-00 00:00:00'),
(14, '', 'Michael Jay', 'Catubay', 'cmichaeljay89', '', NULL, 'O2M5lh1u6sslFTDtvUnBpvf9OjwshO', 'catubaymichaeljay@yahoo.com', '4cfe81cbdfcbc660837525796de7483a', 'nv01vostro', '2', '2', '', '', '9', '', 'ZFPmruLee6wgAZDrD2CYWJbOqcoJhx', '1472482086', '', '', 1, 0, 0, '0000-00-00 00:00:00'),
(15, '', 'Sheraz', ' salem', 'msherax', 'temp/userimg_10551427119675669211090345819.jpeg', NULL, 'RU2zapVPfrYnJb92lEvMLcjy4Nkn3D', 'm.sherax@gmail.com', 'befbc55882a5a60e8260b78de5a0911e', 'msherax', '2', '2', '', '', '9', '1111154888', '', '', '', '', 1, 0, 0, '0000-00-00 00:00:00'),
(16, '', 'alexei', 'andropov', 'alexei.andropov', '', NULL, 'v7GgXa1V2T9jBopuYgFjtzJwm3DHaH', 'alexei.andropov210@gmail.com', 'b21d455dc9a79b5a082ab9b38b985ae8', 'kaifaquA3212', '2', '2', '', '', '9', '', '', 'undefined', 'undefined', 'undefined', 1, 0, 0, '0000-00-00 00:00:00');
INSERT INTO `webuser` (`webuser_id`, `webuser_company`, `webuser_fname`, `webuser_lname`, `webuser_username`, `webuser_picture`, `cropped_image`, `webuser_token`, `webuser_email`, `webuser_password`, `webuser_orpass`, `webuser_type`, `webuser_status`, `webuser_lastlogin`, `webuser_position`, `webuser_country`, `webuser_phone`, `webuser_resettoken`, `webuser_resetexpire`, `webuser_title`, `webuser_site`, `isactive`, `suspend_reason`, `isdelete`, `created`) VALUES
(18, 'JOHN INDUSTRIES LLC', 'John', 'john', 'john', '1474050815.jpg', 'data:image/png;base64,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', 'ZoyjUHzbyEQLnMhIf2dx3mVobyOq9I', 'deshilancerbd3@gmail.com', '527bd5b5d689e2c32ae974c6229ff785', 'john', '1', '2', '', '', '11', '1234567890', '', '5465', 'john and carlos industries llc', 'www.example.com', 1, 0, 0, '0000-00-00 00:00:00');
INSERT INTO `webuser` (`webuser_id`, `webuser_company`, `webuser_fname`, `webuser_lname`, `webuser_username`, `webuser_picture`, `cropped_image`, `webuser_token`, `webuser_email`, `webuser_password`, `webuser_orpass`, `webuser_type`, `webuser_status`, `webuser_lastlogin`, `webuser_position`, `webuser_country`, `webuser_phone`, `webuser_resettoken`, `webuser_resetexpire`, `webuser_title`, `webuser_site`, `isactive`, `suspend_reason`, `isdelete`, `created`) VALUES
(20, '', 'alexei', 'andropov', 'alexei.andropov_client', '', NULL, 'amJrPFxy12tygPzLMHuYCgkyl8Xd7O', 'alexei.andropov@gmail.com', 'b21d455dc9a79b5a082ab9b38b985ae8', 'kaifaquA3212', '1', '1', '', '', '9', '', '', '', '', '', 1, 0, 0, '0000-00-00 00:00:00'),
(21, '', 'Palash', 'Nath', 'palashit08', '', NULL, '4SR9QMIVLa3N6jIIBQf77x1fyFpiVr', 'palash.ict08@yahoo.com', '1f355696da5da5b7aebc67c0c58910f5', 'Palashict08', '2', '2', '', '', '5', '8801717457174', '', '', '', '', 1, 0, 0, '0000-00-00 00:00:00'),
(22, '', 'Palash', 'Nath', 'palash-worker', 'temp/userimg_7474835078450335551579775945.jpeg', NULL, 'gvV2RpnMpkskOYdzG2QVxenwGoIflP', 'palash.debnath5@gmail.com', '2b25da5627d6a47192f852d6f324b04d', 'Palash08', '2', '2', '', '', '5', '8801717457174', '', '', '', '', 1, 0, 0, '0000-00-00 00:00:00'),
(23, '', 'Palash', 'Nath', 'palash-worker2', '', NULL, 'Bn6MMAo59NtRaM2wK3Hj2VMQI6L0Je', 'group.work14@yahoo.com', '2b25da5627d6a47192f852d6f324b04d', 'Palash08', '2', '1', '', '', '5', '', '', '', '', '', 1, 0, 0, '0000-00-00 00:00:00'),
(25, '', 'andy', 'park', 'andy', 'temp/userimg_133192004510062161121794971327.jpeg', NULL, 'g6Vy9v7lGikg4pC8yFyoOqpfGv4CIB', 'aritra.infotechsolz@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '123456', '2', '2', '', '', '10', '', '', '', '', '', 1, 0, 0, '0000-00-00 00:00:00'),
(26, '', 'Aryan', ' tester', 'aryan', 'temp/userimg_5632180411535544915111403476.jpeg', NULL, 'LHJOXW1DpZExFqGbCbiVzDuFL1YWO2', 'arif.infotechsolz@gmail.com', '42351f64ee17f62f8729d3d527c35dca', 'Arif@123', '2', '2', '', '', '10', '', '', '', '', '', 1, 0, 0, '0000-00-00 00:00:00'),
(27, '', 'test', 'uuser', 'testuser123', '', NULL, 'm0N1aQAkkGWuZAOMKQVWJRun9WiEGm', 'hr007123@mailinator.com', '2419d2f1b53654ea0496ef1a5bc01a2c', '2X+P~k^&}fa=NJ:_', '1', '2', '', '', '9', '', '', '', '', '', 1, 0, 0, '0000-00-00 00:00:00'),
(28, '', 'tuhin', 'ahmed', 'tuhinspro', '', NULL, 'oPflkNat7oMtTgA4RUpXAEmhuGHWQO', 'tuhinspro@gmail.com', '8b596e5d99fa847e309936aad520e517', 'Loveu333Tuhin!!!', '2', '2', '', '', '5', '', '', '', '', '', 1, 0, 0, '0000-00-00 00:00:00'),
(29, 'rtgeryg', 'Carlos', 'Espada', 'carlos', '', NULL, 'hFiS8buMjwjuH3PNSVhtBEtxNVm4GJ', 'bdatozads@gmail.com', 'dc599a9972fde3045dab59dbd1ae170b', 'Mykey2018', '1', '2', '', '', '14', '122323322', 'AFtG3j5mA0cppKooJ17AcLhXjpUDgv', '1476135887', 'etyhtryh', 'tryhrthuj', 1, 0, 0, '0000-00-00 00:00:00'),
(31, '', 'Sabbir Hossain', 'Sagar', 'sagarb', '', NULL, 'clSsXkLucF2Mb3nmw6q2dMN5mowLNr', 'sagarme@live.com', '50baff07a833c928a65a3af00a04fbc5', 'sagara1a', '2', '1', '', '', '5', '', '', '', '', '', 1, 0, 0, '0000-00-00 00:00:00'),
(32, '', 'dasasd', 'asdads', 'adsdas', '', NULL, 'f7uwxNVKm0wGOX2LlJky7P3r5IbraK', 'sagar@sagar.me', '50baff07a833c928a65a3af00a04fbc5', 'sagara1a', '2', '1', '', '', '11', '', '', '', '', '', 1, 0, 0, '0000-00-00 00:00:00'),
(33, '', 'Terry', 'Rooney', 'terry', 'temp/userimg_10522959312136479091264380536.jpeg', NULL, 'Lk0uGsKowgEQkYIgRsIyRSeQweTIip', 'developer.musa@gmail.com', 'dd5585a92b04d4420477ee6082770fd1', 'terry', '2', '1', '', '', '13', '', '5Gric6qIAgGG3Xx5TVJC90iLvocd0d', '1479761792', '', '', 1, 0, 0, '0000-00-00 00:00:00'),
(34, '', 'selim', 'reja', 'sreja712', '', NULL, 'x9c0qREpZUeqrpiqYRA1X3SY0PSE9A', 'sreja712@gmail.com', '3a3b4005e8ed96b85f43ea7b801615a6', 'mykey2016', '2', '2', '', '', '5', '', '', '', '', '', 1, 0, 0, '0000-00-00 00:00:00'),
(35, '', 'aviram', 'adi', 'aviramadi', '', NULL, 'MRTzgg7cYyJKc01jk47ZclfXpHXtXB', 'aviramadi84@gmail.com', 'ecfe12b7732fbd24c570f7bdaca25b2e', 'avi180384', '1', '2', '', '', '13', '', '', '', '', '', 1, 0, 0, '0000-00-00 00:00:00'),
(36, '', 'Robert', 'Freeman', 'Celebeatz', '', NULL, '8r3PYJhoWWvFVRVFPsLfKeZIHSTGRx', 'Celebeatz@gmail.com', 'cff8865f66f3e4ce6ba511858a071bb3', 'datboi25', '2', '2', '', '', '9', '', '', '', '', '', 1, 0, 0, '2016-10-26 15:44:48'),
(37, '', 'Karen', 'Knight', 'Karenknight196052', '', NULL, '92JrxyKSM8YuwwG75hmxNRENGmouZQ', 'karenknight196052@yahoo.com', '7a76e9c9678dc82a61d564b158bc765a', 'Conner20093b', '1', '2', '', '', '9', '', '', '', '', '', 1, 0, 0, '2016-10-30 02:22:18'),
(38, '', 'Muhaiminul', 'Islam', 'mmislamimon', '', NULL, 'HnxjDGInMiTCSTmyhRmutANuz2fKJe', 'mmislamimon@gmail.com', '84e5c0d7e46392b1c51b5173356afab5', 'Win153246!', '1', '2', '', '', '5', '', '', '', '', '', 1, 0, 0, '2016-11-05 13:49:57'),
(39, '', 'kaitlin', 'fowler', 'kaitlinjane16', '', NULL, '8YfCAn6Z7lfYdsxZboVpHwMjw1FcGI', 'kaitlinjane16@aol.com', '37f04f3356f02fe42cd570f435bc80ec', 'emma1987', '2', '1', '', '', '9', '', '', '', '', '', 1, 0, 0, '2016-11-21 17:18:24'),
(40, '', 'sdfgfdgh', 'dgfhgfh', 'aaaaa', '', NULL, 'FWm9eNWWm3LxEjJtHbSMfhIBYErdcZ', 'aaaaa@gmail.com', '594f803b380a41396ed63dca39503542', 'aaaaa', '2', '1', '', '', '29', '', '', '', '', '', 1, 0, 0, '2016-11-21 17:46:03'),
(41, '', 'aviram', 'adi', 'organicleads', '', NULL, '3HTIQ18n6e0iDIvY4h3SLA35Bnz8BV', 'organicleadsllc@gmail.com', 'd79ff9023292795de2e37f2c24a660f8', 'Avi180384', '1', '2', '', '', '9', '', '', '', '', '', 1, 0, 0, '2016-12-04 19:50:06'),
(42, '', 'Willie', 'Craft', 'WillieCraft', '', NULL, 'qIWXBwogaGPit9jUleuLO20qeG5nvI', 'Worldwide601@gmail.com', '3325696835193a03e39f34f59036180b', 'Fordrasta601', '1', '2', '', '', '9', '', '', '', '', '', 1, 0, 0, '2016-12-16 17:36:17'),
(43, '', 'jahid', 'hasan', 'jahid', '', NULL, 'B3hwxu7sBjmlLzvXIUZORIJRZbigez', 'jahid0604015@gmail.com', '5aa5aa07e7699ba95b69bd72960abf5f', 'jahid', '2', '2', '', '', '5', '', '', '', '', '', 1, 0, 0, '2016-12-24 08:45:18'),
(44, '', 'Kenneth', 'Mix', 'Mix', '', NULL, 'doQYD1r4u8t7j4o2fNI1aT7aZvB1n4', 'mixken9@gmail.com', '77755e605e7fdf0ca539bab5aa1c245c', '06070607', '2', '2', '', '', '9', '', '', '', '', '', 1, 0, 0, '2017-01-19 21:48:45'),
(45, '', 'chamo', 'gezahegn', 'chamogezahegn', '', NULL, '9XXQ1E1XG4XRZRKLUFBzeeXCF1t3Fx', 'chamogezahegn@yahoo.com', 'bb292225abcd9a6e58f04bc2482702b1', 'CHAMO@ABAY@2015', '2', '1', '', '', '78', '', '', '', '', '', 1, 0, 0, '2017-01-30 08:02:12'),
(46, '', 'MD', 'Satu', 'md_satu', '', NULL, 'VHVDdKqKzdQ9vD0zPsfuxGUCUXBU78', 'mdsatu.pro@gmail.com', '27946274a201346f0322e3861909b5ff', 'satusatu', '2', '2', '', '', '5', '', '', '1487357809', '', '', 1, 0, 0, '2017-01-31 10:39:36'),
(47, '', 'Ashish', 'Patil', 'Ashishi', '', NULL, 'Wk6mq1BHJtmE3KjVUdv8rs0sAv6V3o', 'iamashish_patil@Rediffmail.com', '7c8dd773ee4835d67029e21b64fb02fb', 'sbimanish', '2', '1', '', '', '10', '', '', '', '', '', 1, 0, 0, '2017-02-07 06:18:58'),
(48, '', 'Zar', 'Htet', 'Zar Htet', '', NULL, 'EQ9rqxjOKPJsHgaggLhfP38Z0MEiH1', 'zarhtetoo@gmail.com', '0d261f802de0a78479d857697ccc33fc', 'zarhtetoo11', '2', '2', '', '', '44', '', '', '', '', '', 1, 0, 0, '2017-02-20 10:18:34'),
(49, '', 'shivani', 'patidar', 'shivani', '', NULL, 'aS3h3sEkWpgWLGj3Kk7KYFENSCEwrk', 'shivanidesignersveltosest005@gmail.com', '20f6ebca209ba3b5c07622689c97ef3c', '@Sh1van1', '1', '2', '', '', '10', '', '', '', '', '', 1, 0, 0, '2017-02-24 10:32:47'),
(50, '', 'ankit ', 'jain', 'sveltose', '', NULL, 'S9ykOJgP6QmIf8UbahuK7WBVghscnS', 'ankit.jain.mit@gmail.com', '6d142d761fa3dcaa81dbe3f2f8337d0b', 'Hanumanji2017', '2', '2', '', '', '87', '', '', '', '', '', 1, 0, 0, '2017-02-27 11:45:01'),
(51, '', 'Arjay', 'Villanueva', 'yajuno0305', '', NULL, 'LXZAQ0R3AFJnaXWhW4U300O05wBRNJ', 'kingkingmirage@gmail.com', 'cc3e4f842b57311d829094e5b43a96e9', 'Wh@ty0us331swh@ty0ug3t0589', '2', '2', '', '', '153', '', '', '', '', '', 1, 0, 0, '2017-03-07 14:55:57'),
(52, '', 'Naresh', 'Kumar', 'naresh', '', NULL, 'O3qfzknu3ItvfFZ8HKa1hmYcy3wILs', 'choudharynaresh90@gmail.com', 'b14c8dadfbf7abe58afa4839c7375b72', 'Naresh@123', '2', '2', '', '', '87', '', '', '', '', '', 1, 0, 0, '2017-03-07 17:00:09'),
(53, '', 'Jellan', 'Quitos', 'jellanquitos', '', NULL, '5P4NAdc3glc7BPaVUa3WtH0Y0UDkSz', 'yajuno0305@gmail.com', '59ee258f4ea6637f2075687efb986592', 'qwaszxerdfcv', '1', '1', '', '', '1', '', '', '', '', '', 1, 0, 0, '2017-03-10 19:04:00'),
(54, '', 'JENICO ALEKSANDR', 'JOVEN', 'faydnx', '', NULL, 'e4aooT6p73TmnEHwHwqWe3YX50VipI', 'Nicz2faith@yahoo.com', '1589f0d47410814fff10bb0ad40efa50', 'aleksandrjoven', '1', '2', '', '', '153', '', '', '', '', '', 1, 0, 0, '2017-03-14 10:20:19');

-- --------------------------------------------------------

--
-- Structure de la table `webuseraddresses`
--

DROP TABLE IF EXISTS `webuseraddresses`;
CREATE TABLE `webuseraddresses` (
  `id` int(11) NOT NULL,
  `webuser_id` int(11) NOT NULL,
  `address` text NOT NULL,
  `address1` text NOT NULL,
  `city` varchar(40) NOT NULL,
  `state` varchar(40) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `country` varchar(40) NOT NULL,
  `phone_number` varchar(30) NOT NULL,
  `timezone` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `webuseraddresses`
--

INSERT INTO `webuseraddresses` (`id`, `webuser_id`, `address`, `address1`, `city`, `state`, `zipcode`, `country`, `phone_number`, `timezone`) VALUES
(19, 15, 'thrtyuyrt', 'ryjtyjtr', 'yjtyjty', 'rjtryj', '5400', '9', '1111154888', ''),
(15, 18, 'sgfg', 'fdgdfg', 'dfgdfg', 'dfgdfg', '5455', '11', '1234567890', '52'),
(18, 21, 'Shewrapara', 'Dhaka', 'Dhaka', 'Dhaka', '1212', '5', '8801717457174', 'UTC 06.00 Almaty, Dhaka'),
(17, 22, 'Shewrapara', 'Dhaka', 'Dhaka', 'Dhaka', '1212', '5', '8801717457174', 'UTC 06.00 Almaty, Dhaka'),
(16, 9, 'brisbane', 'brisbane', 'brisbane', 'brisbane', '3422', '9', '116576543564675', ''),
(11, 16, 'ertert', 'dfgdfgd', 'Bogra', 'Bogra', '5881', 'Bangladesh', '  880 01711473899', 'UTC   06.00 Almaty, Dhaka'),
(20, 13, 'street address 1', 'street address 2', 'City', 'State', '4500', '23', '99999999999', '65'),
(21, 29, 'fgdthted', 'rgetyh', 'etrhytrjr', 'rtjuhrtu', '1243', '14', '122323322', '15');

-- --------------------------------------------------------

--
-- Structure de la table `webuser_basic_profile`
--

DROP TABLE IF EXISTS `webuser_basic_profile`;
CREATE TABLE `webuser_basic_profile` (
  `id` int(11) NOT NULL,
  `webuser_id` int(11) NOT NULL,
  `tagline` varchar(255) NOT NULL,
  `hourly_rate` float NOT NULL,
  `work_experience_year` tinyint(2) NOT NULL,
  `work_experience_month` tinyint(2) NOT NULL,
  `skills` varchar(255) NOT NULL,
  `overview` text NOT NULL,
  `last_updated_time` decimal(18,0) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `webuser_basic_profile`
--

INSERT INTO `webuser_basic_profile` (`id`, `webuser_id`, `tagline`, `hourly_rate`, `work_experience_year`, `work_experience_month`, `skills`, `overview`, `last_updated_time`) VALUES
(2, 22, 'Web developer', 15, 4, 6, 'Java, PHP, HTML, CSS', 'Testing overview', '1472202235770'),
(3, 9, 'Graphics designer,HTML,SEO', 4, 3, 1, '', 'We are looking a developer for our project', '1488215050077'),
(4, 13, 'Web Designer,PHP,WORDPRESS', 11, 1, 1, '', 'I am working as a web developer for PHP/Mysql,Magento, Wordpress,html5  since last 5 years. Testa', '1488565458465'),
(5, 21, 'Web developer', 10, 5, 1, 'HTML', 'tst', '1472746678600'),
(6, 25, 'Tagline (mandatory)', 12, 18, 1, 'PHP, HTML, AJAX', 'O', '1472765256950'),
(8, 15, 'I have 5 years xperience in wordpress', 7, 1, 1, '', 'Article Submission, Article Submission directories eg.', '1488395878395'),
(7, 18, 'dsgfsg', 5, 1, 1, 'php', 'dsfsdgf', '1472805191580'),
(9, 33, 'sdfsfdg', 1, 2, 2, 'php', 'dfsdgfgd', '1476476070240');

-- --------------------------------------------------------

--
-- Structure de la table `webuser_payment_methods`
--

DROP TABLE IF EXISTS `webuser_payment_methods`;
CREATE TABLE `webuser_payment_methods` (
  `id` int(11) NOT NULL,
  `webuser_id` int(11) NOT NULL,
  `payment_method_name` enum('paypal','skrill','payoneer','none') NOT NULL DEFAULT 'none',
  `account_id` varchar(196) NOT NULL,
  `creation_time` bigint(20) NOT NULL,
  `last_update_time` bigint(20) NOT NULL,
  `current_status` enum('active','deactive') NOT NULL DEFAULT 'active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `webuser_payment_methods`
--

INSERT INTO `webuser_payment_methods` (`id`, `webuser_id`, `payment_method_name`, `account_id`, `creation_time`, `last_update_time`, `current_status`) VALUES
(1, 22, 'paypal', 'palash.debnath5@gmail.com', 1474473312710, 0, 'active'),
(2, 22, 'skrill', 'palash.debnath5@gmail.com', 1474473318850, 1474473561030, 'deactive'),
(3, 9, 'paypal', 'hafijarrahman@gmail.com', 1474473605930, 1474473671700, 'deactive'),
(4, 9, 'skrill', 'hafijarrahman@gmail.com', 1474473630230, 1474473648300, 'deactive'),
(5, 9, 'payoneer', 'hafijarrahman@gmail.com', 1474473635140, 1474473665810, 'deactive'),
(6, 15, 'skrill', 'm.sherax@gmail.com', 1474473709940, 1474473770750, 'deactive'),
(7, 15, 'paypal', 'm.sherax@gmail.com', 1474473733290, 1474473767100, 'deactive'),
(8, 9, 'paypal', 'hafijarrahman@gmail.com', 1474875542210, 1475710999690, 'deactive'),
(9, 9, 'skrill', 'hafijarrahman@gmail.com', 1475710994380, 1475711002680, 'deactive'),
(10, 13, 'paypal', 'getupwork@gmail.com', 1476942749840, 1476942885480, 'deactive'),
(11, 13, 'skrill', 'getupwork@gmail.com', 1476942779630, 1476942890510, 'deactive'),
(12, 13, 'paypal', 'getupwork@gmail.com', 1477083901080, 1485795762065, 'deactive'),
(13, 13, 'skrill', 'getupwork@gmail.com', 1477083909300, 1477946072420, 'deactive'),
(14, 13, 'payoneer', 'getupwork@gmail.com', 1477083913830, 1477597544930, 'deactive'),
(15, 13, 'skrill', 'getupwork@gmail.com', 1479664723130, 1479665757000, 'deactive'),
(16, 13, 'payoneer', 'getupwork@gmail.com', 1479664793580, 1479664879270, 'deactive'),
(17, 13, 'payoneer', 'getupwork@gmail.com', 1479668101780, 1479678014000, 'deactive'),
(18, 13, 'skrill', 'getupwork@gmail.com', 1479678005580, 1479749322290, 'deactive'),
(19, 13, 'payoneer', 'getupwork@gmail.com', 1479760289030, 1485776287033, 'deactive'),
(20, 13, 'skrill', 'getupwork@gmail.com', 1485794728299, 1485794771385, 'deactive'),
(21, 13, 'payoneer', 'getupwork@gmail.com', 1485794747131, 1485795277484, 'deactive'),
(22, 13, 'paypal', 'getupwork@gmail.com', 1486115569447, 1486115602626, 'deactive'),
(23, 13, 'paypal', 'getupwork@gmail.com', 1486115662824, 1487739737223, 'deactive'),
(24, 13, 'skrill', 'getupwork@gmail.com', 1486115668064, 1486874599859, 'deactive'),
(25, 13, 'payoneer', 'getupwork@gmail.com', 1486115672554, 1486460938305, 'deactive'),
(26, 13, 'skrill', 'getupwork@gmail.com', 1486874617389, 1487605436587, 'deactive'),
(27, 9, 'paypal', 'hafijarrahman@gmail.com', 1487606375967, 0, 'active'),
(28, 9, 'skrill', 'hafijarrahman@gmail.com', 1487608731972, 0, 'active'),
(29, 9, 'payoneer', 'hafijarrahman@gmail.com', 1487608764433, 0, 'active'),
(30, 13, 'skrill', 'getupwork@gmail.com', 1487611089851, 1487611179752, 'deactive'),
(31, 13, 'skrill', 'getupwork@gmail.com', 1487611230719, 1487611299679, 'deactive'),
(32, 13, 'skrill', 'getupwork@gmail.com', 1487623614839, 1487723707242, 'deactive'),
(33, 13, 'skrill', 'getupwork@gmail.com', 1487739528731, 1487739544417, 'deactive'),
(34, 13, 'skrill', 'getupwork@gmail.com', 1487739553381, 1487739718613, 'deactive'),
(35, 13, 'payoneer', 'getupwork@gmail.com', 1487739561338, 1487739724767, 'deactive'),
(36, 13, 'skrill', 'getupwork@gmail.com', 1487739752915, 1487867463269, 'deactive'),
(37, 13, 'payoneer', 'getupwork@gmail.com', 1487739769342, 0, 'active');

-- --------------------------------------------------------

--
-- Structure de la table `webuser_portfolio`
--

DROP TABLE IF EXISTS `webuser_portfolio`;
CREATE TABLE `webuser_portfolio` (
  `id` int(11) NOT NULL,
  `webuser_id` int(11) NOT NULL,
  `project_title` varchar(255) NOT NULL,
  `project_overview` text NOT NULL,
  `project_category` int(6) NOT NULL,
  `project_subcategory` int(6) NOT NULL,
  `project_url` varchar(255) NOT NULL,
  `thumnail_image` mediumtext NOT NULL,
  `completion_date` date NOT NULL,
  `skills` varchar(255) NOT NULL,
  `creation_time` date NOT NULL,
  `visibility_status` enum('yes','no') NOT NULL DEFAULT 'yes',
  `last_updated_time` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `webuser_portfolio`
--

INSERT INTO `webuser_portfolio` (`id`, `webuser_id`, `project_title`, `project_overview`, `project_category`, `project_subcategory`, `project_url`, `thumnail_image`, `completion_date`, `skills`, `creation_time`, `visibility_status`, `last_updated_time`) VALUES
(1, 22, 'Task Management System - update', 'testing application', 1, 0, 'http://www.tms.pksoftsolution.com', '1472930562.jpg', '2016-08-02', 'PHP, HTML, CSS', '2016-09-03', 'yes', '2016-09-03'),
(16, 9, 'web', 'web', 2, 0, 'http://www.go.com', '1474050815.jpg', '0000-00-00', 'php', '2016-09-16', 'yes', '0000-00-00'),
(13, 15, 'redyghrtyh', 'rthyurju', 8, 0, 'http://www.go.com', '1473192743.jpg', '0000-00-00', 'php', '2016-09-06', 'yes', '0000-00-00'),
(14, 22, 'Task Management System - update', 'asd', 2, 0, 'http://www.pksoftsoltion.com', '1473306338.jpg', '0000-00-00', 'JAVA', '2016-09-08', 'yes', '0000-00-00'),
(11, 22, 'jkjk', 'asd', 10, 0, 'http://www.pksoftsoltion.com', '1472930791.jpg', '2016-12-01', 'java', '2016-09-03', 'yes', '0000-00-00'),
(19, 9, 'Testing', 'we are testing', 12, 0, 'http://www.winjob.com', '1480092307.jpg', '0000-00-00', 'php', '2016-11-25', 'yes', '0000-00-00'),
(18, 26, 'test project', 'aadd', 1, 0, 'http://www.winjob.com', '1476692359.jpg', '0000-00-00', 'web delloping', '2016-10-17', 'yes', '0000-00-00'),
(31, 13, 'aaaa', 'aaaa aaa', 2, 0, 'http://', '1484751067.jpg', '2017-02-15', '', '2017-02-25', 'yes', '2017-02-25'),
(32, 13, 'testing', 'safaf', 9, 0, 'http://www.winjob.com', '1487966753.jpg', '0000-00-00', '', '2017-02-24', 'yes', '2017-02-24');

-- --------------------------------------------------------

--
-- Structure de la table `webuser_portfolio_skills`
--

DROP TABLE IF EXISTS `webuser_portfolio_skills`;
CREATE TABLE `webuser_portfolio_skills` (
  `id` int(11) NOT NULL,
  `portfolio_id` int(11) NOT NULL,
  `skill_name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `webuser_portfolio_skills`
--

INSERT INTO `webuser_portfolio_skills` (`id`, `portfolio_id`, `skill_name`) VALUES
(73, 32, 'Product Sourcing'),
(84, 31, 'PHP'),
(83, 31, 'Product Sourcing'),
(81, 31, 'Apache Solr'),
(82, 31, 'Object Oriented PHP'),
(74, 32, 'javascript'),
(80, 31, 'HTML');

-- --------------------------------------------------------

--
-- Structure de la table `webuser_skills`
--

DROP TABLE IF EXISTS `webuser_skills`;
CREATE TABLE `webuser_skills` (
  `id` int(11) NOT NULL,
  `webuser_id` int(11) NOT NULL,
  `skill_name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `webuser_skills`
--

INSERT INTO `webuser_skills` (`id`, `webuser_id`, `skill_name`) VALUES
(129, 15, 'TypePad'),
(127, 15, 'javascript'),
(133, 13, 'HTML5'),
(132, 13, 'Adobe Flash'),
(131, 13, 'mysql'),
(128, 15, 'Chroma key'),
(111, 9, 'Adobe Flash'),
(112, 9, 'Paypal API'),
(113, 9, 'Facebook'),
(114, 9, 'jquery'),
(130, 13, 'HTML'),
(126, 15, 'PHP'),
(134, 13, 'javascript');

-- --------------------------------------------------------

--
-- Structure de la table `webuser_tax_information`
--

DROP TABLE IF EXISTS `webuser_tax_information`;
CREATE TABLE `webuser_tax_information` (
  `id` int(11) NOT NULL,
  `webuser_id` int(11) NOT NULL,
  `legal_name` varchar(165) NOT NULL,
  `tax_no` varchar(64) NOT NULL,
  `country` varchar(132) NOT NULL,
  `address` varchar(255) NOT NULL,
  `address_line1` varchar(255) NOT NULL,
  `city` varchar(96) NOT NULL,
  `state` varchar(96) NOT NULL,
  `zip` int(6) NOT NULL,
  `created_time` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `webuser_tax_information`
--

INSERT INTO `webuser_tax_information` (`id`, `webuser_id`, `legal_name`, `tax_no`, `country`, `address`, `address_line1`, `city`, `state`, `zip`, `created_time`) VALUES
(1, 9, 'Hafizar', '12345', '9', 'dhaka', 'dhaka', 'dhaka', 'dhaka', 2562, 1474568150790),
(2, 15, 'fgdfg', '122', '10', 'ertrr', 'rgey', 'rgeh', 'sfgdfg', 1222, 1477000971020),
(3, 22, 'Palash', '1312324', '5', 'Dhaka', 'Mirpur', 'Dhaka', 'Dhaka', 12012, 1474565660130),
(6, 13, 'Arun', '111111', '160', 'Arunfg', 'Arungg', 'Arungg', 'Arungg', 122, 1488139670523);

-- --------------------------------------------------------

--
-- Structure de la table `webuser_tickets`
--

DROP TABLE IF EXISTS `webuser_tickets`;
CREATE TABLE `webuser_tickets` (
  `id` int(11) NOT NULL,
  `webuser_id` int(11) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `webuser_tickets`
--

INSERT INTO `webuser_tickets` (`id`, `webuser_id`, `fname`, `lname`, `email`, `subject`) VALUES
(2, NULL, 'dgr', 'fgfd', 'a@gmail.com', 'General'),
(3, NULL, 'carlos', 'espada', 'b@gmail.com', 'General'),
(12, 52, 'Naresh', 'Kumar', 'choudharynaresh90@gmail.com', 'General'),
(11, NULL, 'rashshs', 'naresh', 'test@gmail.com', 'General'),
(10, 52, 'Naresh', 'Kumar', 'choudharynaresh90@gmail.com', 'General'),
(9, 13, 'Arun', 'Kumar', 'getupwork@gmail.com', 'Freelancer'),
(13, NULL, 'Frank', 'Daniel', 'frankdaniel2280@gmail.com', 'General');

-- --------------------------------------------------------

--
-- Structure de la table `webuser_ticket_messages`
--

DROP TABLE IF EXISTS `webuser_ticket_messages`;
CREATE TABLE `webuser_ticket_messages` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `message` text,
  `status` set('green','red') DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `have_seen` tinyint(1) NOT NULL DEFAULT '1',
  `sender` set('user','support') NOT NULL DEFAULT 'user',
  `receiver` set('user','support') DEFAULT 'support',
  `imap_message_id` varchar(255) DEFAULT NULL,
  `have_support_seen` tinyint(1) DEFAULT '1' COMMENT '1= unseen,0=seen'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `webuser_ticket_messages`
--

INSERT INTO `webuser_ticket_messages` (`id`, `ticket_id`, `sender_id`, `receiver_id`, `message`, `status`, `created`, `have_seen`, `sender`, `receiver`, `imap_message_id`, `have_support_seen`) VALUES
(109, 9, 13, 0, 'pppppppppppppppppp', 'green', '2017-01-13 19:01:19', 0, 'user', 'support', NULL, 1),
(2, 2, NULL, NULL, 'sdgfdsg', 'red', '2017-01-05 17:01:34', 0, 'user', 'support', NULL, 0),
(3, 3, NULL, NULL, 'westret', 'red', '2017-01-06 14:01:56', 0, 'user', 'support', NULL, 1),
(4, 1, 1, 1, 'fgrfg', 'green', '2017-01-06 14:01:22', 0, 'support', 'user', NULL, 1),
(91, 2, 1, 0, 'ddddd', 'red', '2017-01-13 15:01:43', 1, 'support', 'user', NULL, 1),
(90, 2, 1, 0, 'ddddd', 'red', '2017-01-13 15:01:54', 1, 'support', 'user', NULL, 1),
(87, 2, 1, 0, 'ddddd', 'red', '2017-01-13 15:01:29', 1, 'support', 'user', NULL, 1),
(88, 2, 1, 0, 'ddddd', 'red', '2017-01-13 15:01:38', 1, 'support', 'user', NULL, 1),
(89, 2, 1, 0, 'ddddd', 'red', '2017-01-13 15:01:17', 1, 'support', 'user', NULL, 1),
(86, 2, 1, 0, 'ddddd', 'red', '2017-01-13 15:01:10', 1, 'support', 'user', NULL, 1),
(74, 2, 1, 0, 'qqqqq', 'red', '2017-01-13 15:01:46', 1, 'support', 'user', NULL, 1),
(75, 2, 1, 0, 'ddddd', 'red', '2017-01-13 15:01:51', 1, 'support', 'user', NULL, 1),
(76, 2, 1, 0, 'ddddd', 'red', '2017-01-13 15:01:23', 1, 'support', 'user', NULL, 1),
(77, 2, 1, 0, 'ddddd', 'red', '2017-01-13 15:01:19', 1, 'support', 'user', NULL, 1),
(78, 2, 1, 0, 'ddddd', 'red', '2017-01-13 15:01:23', 1, 'support', 'user', NULL, 1),
(79, 2, 1, 0, 'ddddd', 'red', '2017-01-13 15:01:42', 1, 'support', 'user', NULL, 1),
(80, 2, 1, 0, 'ddddd', 'red', '2017-01-13 15:01:03', 1, 'support', 'user', NULL, 1),
(81, 2, 1, 0, 'ddddd', 'red', '2017-01-13 15:01:10', 1, 'support', 'user', NULL, 1),
(82, 2, 1, 0, 'ddddd', 'red', '2017-01-13 15:01:14', 1, 'support', 'user', NULL, 1),
(83, 2, 1, 0, 'ddddd', 'red', '2017-01-13 15:01:34', 1, 'support', 'user', NULL, 1),
(84, 2, 1, 0, 'ddddd', 'red', '2017-01-13 15:01:50', 1, 'support', 'user', NULL, 1),
(85, 2, 1, 0, 'ddddd', 'red', '2017-01-13 15:01:56', 1, 'support', 'user', NULL, 1),
(73, 2, 1, 0, 'aaa', 'red', '2017-01-13 15:01:38', 1, 'support', 'user', NULL, 1),
(71, 2, 1, 0, 'aaaa', 'red', '2017-01-13 15:01:50', 1, 'support', 'user', NULL, 1),
(72, 2, 1, 0, 'test aaa', 'red', '2017-01-13 15:01:44', 1, 'support', 'user', NULL, 1),
(108, 9, 1, 13, 'gggg', 'red', '2017-01-13 19:01:44', 0, 'support', 'user', NULL, 1),
(107, 9, 13, 0, 'aaaaa', 'green', '2017-01-13 19:01:27', 0, 'user', 'support', NULL, 1),
(106, 9, 1, 13, 'aaaa', 'red', '2017-01-13 19:01:28', 0, 'support', 'user', NULL, 1),
(105, 9, 13, 0, 'hiiiiii', 'green', '2017-01-13 19:01:25', 0, 'user', 'support', NULL, 1),
(104, 9, 1, 13, 'aaa', 'red', '2017-01-13 19:01:18', 0, 'support', 'user', NULL, 1),
(103, 9, 13, 0, 'bvvv', 'green', '2017-01-13 17:01:13', 0, 'user', 'support', NULL, 1),
(102, 9, 13, 0, 'asasa', 'green', '2017-01-13 17:01:25', 0, 'user', 'support', NULL, 1),
(101, 9, 13, 0, 'test ', 'green', '2017-01-13 16:01:20', 0, 'user', 'support', NULL, 1),
(100, 9, 1, 13, 'hi', 'red', '2017-01-13 16:01:45', 0, 'support', 'user', NULL, 1),
(99, 9, 13, NULL, 'We are testing', 'red', '2017-01-13 16:01:56', 0, 'user', 'support', NULL, 1),
(98, 2, 1, 0, 'test removed', 'red', '2017-01-13 16:01:49', 1, 'support', 'user', NULL, 1),
(97, 2, 1, 0, 'test ', 'red', '2017-01-13 16:01:21', 1, 'support', 'user', NULL, 1),
(96, 2, 1, 0, 'test remove', 'red', '2017-01-13 16:01:49', 1, 'support', 'user', NULL, 1),
(95, 2, 1, 0, 'aaaaaa', 'red', '2017-01-13 16:01:24', 1, 'support', 'user', NULL, 1),
(94, 2, 1, 0, 'aaaaaa', 'red', '2017-01-13 16:01:12', 1, 'support', 'user', NULL, 1),
(93, 2, 1, 0, 'aaaaaa', 'red', '2017-01-13 16:01:24', 1, 'support', 'user', NULL, 1),
(92, 2, 1, 0, 'ddddd', 'red', '2017-01-13 15:01:32', 1, 'support', 'user', NULL, 1),
(70, 2, 1, 0, 'aaa', 'red', '2017-01-13 15:01:23', 1, 'support', 'user', NULL, 1),
(69, 2, 1, 0, 'wwwww', 'red', '2017-01-13 15:01:15', 1, 'support', 'user', NULL, 1),
(68, 2, 1, 0, 'aaaaa', 'red', '2017-01-13 15:01:12', 1, 'support', 'user', NULL, 1),
(67, 2, 1, 0, 'test remove', 'red', '2017-01-13 15:01:28', 1, 'support', 'user', NULL, 1),
(66, 2, 1, 0, 'sss', 'red', '2017-01-13 15:01:46', 1, 'support', 'user', NULL, 1),
(65, 2, 1, 0, 'ssss', 'red', '2017-01-13 15:01:20', 1, 'support', 'user', NULL, 1),
(64, 2, 1, 0, 'ff', 'red', '2017-01-13 12:01:40', 1, 'support', 'user', NULL, 1),
(63, 2, 1, 0, 'sss', 'red', '2017-01-13 12:01:24', 1, 'support', 'user', NULL, 1),
(62, 2, 1, 0, 'testing', 'red', '2017-01-13 12:01:55', 1, 'support', 'user', NULL, 1),
(61, 2, 1, 0, 'test', 'red', '2017-01-13 12:01:36', 1, 'support', 'user', NULL, 1),
(110, 9, 13, 0, 'uuuuuuuuuuuuu', 'green', '2017-01-13 19:01:35', 0, 'user', 'support', NULL, 1),
(111, 9, 13, 0, 'wwwwwwww', 'green', '2017-01-13 19:01:47', 0, 'user', 'support', NULL, 1),
(112, 9, 1, 13, 'qqqqqqqqqqqq', 'red', '2017-01-13 20:01:02', 0, 'support', 'user', NULL, 1),
(113, 9, 13, 0, 'ttttttttt', 'green', '2017-01-13 20:01:45', 0, 'user', 'support', NULL, 1),
(114, 9, 1, 13, 'uuuu', 'red', '2017-01-13 20:01:10', 0, 'support', 'user', NULL, 1),
(115, 9, 1, 13, 'uuuu', 'red', '2017-01-13 20:01:39', 0, 'support', 'user', NULL, 1),
(116, 9, 1, 13, 'uuuu', 'red', '2017-01-13 20:01:39', 0, 'support', 'user', NULL, 1),
(117, 9, 1, 13, 'uuuu', 'red', '2017-01-13 20:01:39', 0, 'support', 'user', NULL, 1),
(118, 9, 1, 13, 'uuuu', 'red', '2017-01-13 20:01:00', 0, 'support', 'user', NULL, 1),
(119, 9, 1, 13, 'uuuu', 'red', '2017-01-13 20:01:00', 0, 'support', 'user', NULL, 1),
(120, 9, 1, 13, 'uuuu', 'red', '2017-01-13 20:01:00', 0, 'support', 'user', NULL, 1),
(121, 9, 1, 13, 'uuuu', 'red', '2017-01-13 20:01:01', 0, 'support', 'user', NULL, 1),
(122, 9, 1, 13, 'uuuu', 'red', '2017-01-13 20:01:07', 0, 'support', 'user', NULL, 1),
(123, 9, 1, 13, 'uuuu', 'red', '2017-01-13 20:01:12', 0, 'support', 'user', NULL, 1),
(124, 9, 1, 13, 'uuuu', 'red', '2017-01-13 20:01:17', 0, 'support', 'user', NULL, 1),
(125, 9, 1, 13, 'uuuu', 'red', '2017-01-13 20:01:22', 0, 'support', 'user', NULL, 1),
(126, 9, 1, 13, 'ooooooooooooo', 'red', '2017-01-13 20:01:42', 0, 'support', 'user', NULL, 1),
(127, 9, 1, 13, 'llllllllllll', 'red', '2017-01-13 20:01:25', 0, 'support', 'user', NULL, 1),
(128, 9, 1, 13, 'ppp', 'red', '2017-01-13 20:01:34', 0, 'support', 'user', NULL, 1),
(129, 9, 1, 13, 'ppp', 'red', '2017-01-13 20:01:52', 0, 'support', 'user', NULL, 1),
(130, 9, 1, 13, 'lllllllll', 'red', '2017-01-13 20:01:00', 0, 'support', 'user', NULL, 1),
(131, 9, 1, 13, 'uuyyyyyyytrrrg', 'red', '2017-01-13 20:01:42', 0, 'support', 'user', NULL, 1),
(132, 9, 13, 0, 'nnnnnnnnnnn', 'green', '2017-01-13 20:01:53', 0, 'user', 'support', NULL, 1),
(133, 9, 1, 13, 'ppppppppppppp', 'red', '2017-01-13 20:01:51', 0, 'support', 'user', NULL, 1),
(134, 9, 1, 13, 'ppppppppppppp', 'red', '2017-01-13 21:01:15', 0, 'support', 'user', NULL, 1),
(135, 9, 1, 13, 'ppppppppppppp', 'red', '2017-01-13 21:01:17', 0, 'support', 'user', NULL, 1),
(136, 9, 1, 13, 'ppppppppppppp', 'red', '2017-01-13 21:01:17', 0, 'support', 'user', NULL, 1),
(137, 9, 1, 13, 'ppppppppppppp', 'red', '2017-01-13 21:01:18', 0, 'support', 'user', NULL, 1),
(138, 9, 1, 13, '[[[[[', 'red', '2017-01-13 21:01:31', 0, 'support', 'user', NULL, 1),
(139, 9, 1, 13, 'tttt', 'red', '2017-01-13 21:01:04', 0, 'support', 'user', NULL, 1),
(140, 9, 1, 13, 'kkk', 'red', '2017-01-13 21:01:50', 0, 'support', 'user', NULL, 1),
(141, 9, 1, 13, 'mmmmmmm', 'red', '2017-01-13 21:01:02', 0, 'support', 'user', NULL, 1),
(142, 9, 1, 13, 'mmmmmmm', 'red', '2017-01-13 21:01:11', 0, 'support', 'user', NULL, 1),
(143, 9, 1, 13, 'mmmm', 'red', '2017-01-13 21:01:24', 0, 'support', 'user', NULL, 1),
(144, 9, 1, 13, 'nnnnnnnnnn', 'red', '2017-01-13 21:01:30', 0, 'support', 'user', NULL, 1),
(145, 9, 13, 0, 'ttttttttt', 'green', '2017-01-13 21:01:00', 0, 'user', 'support', NULL, 1),
(146, 9, 13, 0, 'rrrrrrr', 'green', '2017-01-13 21:01:16', 0, 'user', 'support', NULL, 1),
(147, 9, 1, 13, 'aaaaa', 'red', '2017-01-13 21:01:31', 0, 'support', 'user', NULL, 1),
(148, 9, 13, 0, 'rrrr', 'green', '2017-01-13 21:01:32', 0, 'user', 'support', NULL, 1),
(149, 9, 13, 0, 'qqq', 'green', '2017-01-13 21:01:46', 0, 'user', 'support', NULL, 1),
(150, 9, 1, 13, 'qqqq', 'red', '2017-01-13 21:01:57', 0, 'support', 'user', NULL, 1),
(151, 9, 13, 0, 'aaaa', 'green', '2017-01-13 22:01:51', 0, 'user', 'support', NULL, 1),
(152, 9, 13, 0, 'qqqq', 'green', '2017-01-13 22:01:40', 0, 'user', 'support', NULL, 1),
(153, 9, 13, 0, 'hi', 'green', '2017-01-13 22:01:51', 0, 'user', 'support', NULL, 1),
(154, 9, 13, 0, 'test remove', 'green', '2017-01-14 13:01:25', 0, 'user', 'support', NULL, 1),
(155, 10, 52, NULL, 'Testing by Naresh', 'red', '2017-03-07 17:03:35', 0, 'user', 'support', NULL, 1),
(156, 11, NULL, NULL, 'rgfdg', 'red', '2017-03-07 18:03:42', 1, 'user', 'support', NULL, 1),
(157, 10, 1, 52, 'tis page attach is ok', 'red', '2017-03-07 18:03:58', 0, 'support', 'user', NULL, 1),
(158, 12, 52, NULL, 'attach issue', 'red', '2017-03-07 18:03:23', 0, 'user', 'support', NULL, 1),
(159, 12, 1, 52, 'dfsdfs', 'red', '2017-03-07 18:03:33', 0, 'support', 'user', NULL, 1),
(160, 12, 1, 52, 'Your issue has been Solved! \r\nThank you for contact with us.', 'green', '2017-03-07 18:03:15', 1, 'support', 'user', NULL, 1),
(161, 12, 1, 52, 'Your issue has been Solved! \r\nThank you for contact with us.', 'green', '2017-03-07 18:03:20', 1, 'support', 'user', NULL, 1),
(162, 12, 1, 52, 'Your issue has been Solved! \r\nThank you for contact with us.', 'green', '2017-03-07 18:03:25', 1, 'support', 'user', NULL, 1),
(163, 13, NULL, NULL, 'Hello,\r\n\r\nMy name is Frank Daniel,I have a small store as retailer in Belize.I am interested in your product which i will like to order from you, i will be arranging for the shipment of the goods ordered through the means of my Freight forwarder to come and pick up the goods at your store or pick up location after payment is made and confirmed by you. so, let me know the available items or your website While I proceed on my order and Do you accept Credit Card for payment?\r\n\r\nWaiting to read from you soon.\r\n\r\nRespectful\r\n\r\n\r\nFrank Daniel', 'red', '2017-03-08 14:03:59', 1, 'user', 'support', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `webuser_ticket_message_files`
--

DROP TABLE IF EXISTS `webuser_ticket_message_files`;
CREATE TABLE `webuser_ticket_message_files` (
  `id` int(11) NOT NULL,
  `message_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `original_name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `webuser_ticket_message_files`
--

INSERT INTO `webuser_ticket_message_files` (`id`, `message_id`, `name`, `original_name`) VALUES
(1, 18, 'a39c87a12a25a82a24852da7566f1494.jpg', '1474050815.jpg'),
(2, 19, '436a325b0e1643fbeea97155ac6a2dca.jpg', 'wallpaper_240x320_?2_003.jpg'),
(56, 96, 'image_5878986d43e80.jpg', 'Jellyfish.jpg'),
(55, 95, 'image_5878981803924.', NULL),
(54, 95, 'image_5878981803752.', NULL),
(52, 94, 'image_5878980ccb079.', NULL),
(53, 94, 'image_5878980ccb4c3.', NULL),
(51, 70, 'image_58788c9b9a472.jpg', 'Jellyfish.jpg'),
(50, 70, 'image_58788c9b167cb.jpg', 'Hydrangeas.jpg'),
(49, 70, 'image_58788c9b1605c.jpg', 'Desert.jpg'),
(47, 68, 'image_587889c025648.jpg', 'Lighthouse.jpg'),
(48, 68, 'image_587889c025b98.jpg', 'Penguins.jpg'),
(46, 68, 'image_587889c024e2c.jpg', 'Koala.jpg'),
(45, 67, 'image_58788994ccc46.jpg', 'Jellyfish.jpg'),
(44, 67, 'image_58788994cc616.jpg', 'Hydrangeas.jpg'),
(43, 64, 'image_58786ab053975.jpg', 'Koala.jpg'),
(42, 63, 'image_58786a285a9a9.jpg', 'Jellyfish.jpg'),
(41, 63, 'image_58786a285a3ea.jpg', 'Hydrangeas.jpg'),
(40, 62, 'image_5878637b713c7.jpg', 'Jellyfish.jpg'),
(39, 62, 'image_5878637b70e9d.jpg', 'Hydrangeas.jpg'),
(37, 61, 'image_58786200e981e.jpg', 'Hydrangeas.jpg'),
(38, 61, 'image_58786200ebc73.jpg', 'Jellyfish.jpg'),
(57, 96, 'image_5878986d4473b.', NULL),
(58, 97, 'image_587898c9bbb13.jpg', 'Hydrangeas.jpg'),
(59, 97, 'image_587898c9bc23b.jpg', NULL),
(60, 98, 'image_5878995daefc4.jpg', 'Jellyfish.jpg'),
(61, 98, 'image_5878995dafc50.jpg', NULL),
(62, 101, 'image_58789c4c94406.jpg', 'Chrysanthemum.jpg'),
(63, 151, 'image_5878ec1ba926a.jpg', 'Hydrangeas.jpg'),
(64, 151, 'image_5878ec1c120ba.jpg', 'Jellyfish.jpg'),
(65, 152, 'image_5878ed00c9808.jpg', 'Desert.jpg'),
(66, 152, 'image_5878ed00ca1dd.jpg', 'Hydrangeas.jpg'),
(67, 157, 'image_58bef95678fbf.jpg', 'Users-singh-nk-PortraitUrl_100.jpg'),
(68, 158, '0994537d4b61bde228007771866c47aa.jpg', '14051719_1789926074576733_5848439418165193647_n.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `withdraw`
--

DROP TABLE IF EXISTS `withdraw`;
CREATE TABLE `withdraw` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `payment_type` enum('1','2','3') NOT NULL DEFAULT '1' COMMENT '1=paypal,2=skrill,3=payneer',
  `processingfees` varchar(255) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('pending','processed','cancelled','') NOT NULL DEFAULT 'pending',
  `operation_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `withdraw`
--

INSERT INTO `withdraw` (`id`, `userid`, `amount`, `payment_type`, `processingfees`, `date`, `status`, `operation_date`) VALUES
(1, 13, 1, '', '', '2017-03-02 22:59:44', 'processed', '2017-03-02 11:10:34'),
(2, 13, 333, '3', '2', '2017-03-02 23:00:15', 'pending', NULL),
(3, 13, 150, '3', '2', '2017-04-06 08:01:14', 'processed', '2017-04-10 11:22:27'),
(4, 13, 10, '3', '2.00', '2017-04-10 11:16:59', 'pending', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `workdairy_tracker`
--

DROP TABLE IF EXISTS `workdairy_tracker`;
CREATE TABLE `workdairy_tracker` (
  `worktracker_id` int(11) NOT NULL,
  `jobid` int(11) NOT NULL,
  `bid_id` int(11) NOT NULL,
  `cuser_id` int(11) NOT NULL,
  `fuser_id` int(11) NOT NULL,
  `cpture_image` text,
  `capture_time` text NOT NULL,
  `working_date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `workdairy_tracker`
--

INSERT INTO `workdairy_tracker` (`worktracker_id`, `jobid`, `bid_id`, `cuser_id`, `fuser_id`, `cpture_image`, `capture_time`, `working_date`) VALUES
(2490, 149, 210, 18, 13, NULL, '2017-03-22 22:00:01', '2017-03-22'),
(2489, 149, 210, 18, 13, NULL, '2017-03-22 21:54:01', '2017-03-22'),
(2488, 149, 210, 18, 13, NULL, '2017-03-22 21:48:01', '2017-03-22'),
(2487, 149, 210, 18, 13, NULL, '2017-03-22 21:42:01', '2017-03-22'),
(2486, 149, 210, 18, 13, NULL, '2017-03-22 21:36:01', '2017-03-22'),
(2485, 149, 210, 18, 13, NULL, '2017-03-22 21:30:01', '2017-03-22'),
(2484, 149, 210, 18, 13, NULL, '2017-03-22 21:24:01', '2017-03-22'),
(2483, 149, 210, 18, 13, NULL, '2017-03-22 21:18:01', '2017-03-22'),
(2482, 149, 210, 18, 13, NULL, '2017-03-22 21:12:01', '2017-03-22'),
(2481, 149, 210, 18, 13, NULL, '2017-03-22 21:06:01', '2017-03-22'),
(2480, 149, 210, 18, 13, NULL, '2017-03-22 21:00:01', '2017-03-22'),
(2479, 149, 210, 18, 13, NULL, '2017-03-22 20:54:01', '2017-03-22'),
(2478, 149, 210, 18, 13, NULL, '2017-03-22 20:48:01', '2017-03-22'),
(2477, 149, 210, 18, 13, NULL, '2017-03-22 20:42:01', '2017-03-22'),
(2476, 149, 210, 18, 13, NULL, '2017-03-22 20:36:01', '2017-03-22'),
(2475, 149, 210, 18, 13, NULL, '2017-03-22 20:30:01', '2017-03-22'),
(2474, 149, 210, 18, 13, NULL, '2017-03-22 20:24:01', '2017-03-22'),
(2473, 149, 210, 18, 13, NULL, '2017-03-22 20:18:01', '2017-03-22'),
(2472, 149, 210, 18, 13, NULL, '2017-03-22 20:12:01', '2017-03-22'),
(2471, 149, 210, 18, 13, NULL, '2017-03-22 20:06:01', '2017-03-22'),
(2470, 149, 210, 18, 13, NULL, '2017-03-22 20:00:01', '2017-03-22'),
(2469, 149, 210, 18, 13, NULL, '2017-03-22 19:54:01', '2017-03-22'),
(2468, 149, 210, 18, 13, NULL, '2017-03-22 19:48:01', '2017-03-22'),
(2467, 149, 210, 18, 13, NULL, '2017-03-22 19:42:01', '2017-03-22'),
(2466, 149, 210, 18, 13, NULL, '2017-03-22 19:36:01', '2017-03-22'),
(2465, 149, 210, 18, 13, NULL, '2017-03-22 19:30:01', '2017-03-22'),
(2464, 149, 210, 18, 13, NULL, '2017-03-22 19:24:01', '2017-03-22'),
(2463, 149, 210, 18, 13, NULL, '2017-03-22 19:18:01', '2017-03-22'),
(2462, 149, 210, 18, 13, NULL, '2017-03-22 19:12:01', '2017-03-22'),
(2461, 149, 210, 18, 13, NULL, '2017-03-22 19:06:01', '2017-03-22'),
(2460, 149, 210, 18, 13, NULL, '2017-03-22 19:00:01', '2017-03-22'),
(2459, 149, 210, 18, 13, NULL, '2017-03-22 18:54:01', '2017-03-22'),
(2458, 149, 210, 18, 13, NULL, '2017-03-22 18:48:01', '2017-03-22'),
(2457, 149, 210, 18, 13, NULL, '2017-03-22 18:42:01', '2017-03-22'),
(2456, 149, 210, 18, 13, NULL, '2017-03-22 18:36:01', '2017-03-22'),
(2455, 149, 210, 18, 13, NULL, '2017-03-22 18:30:01', '2017-03-22'),
(2454, 149, 210, 18, 13, NULL, '2017-03-22 18:24:01', '2017-03-22'),
(2453, 149, 210, 18, 13, NULL, '2017-03-22 18:18:01', '2017-03-22'),
(2452, 149, 210, 18, 13, NULL, '2017-03-22 18:12:01', '2017-03-22'),
(2451, 149, 210, 18, 13, NULL, '2017-03-22 18:06:01', '2017-03-22'),
(2450, 147, 207, 18, 13, NULL, '2017-03-21 14:00:16', '2017-03-21'),
(2449, 147, 207, 18, 13, NULL, '2017-03-21 13:54:16', '2017-03-21'),
(2448, 147, 207, 18, 13, NULL, '2017-03-21 13:48:16', '2017-03-21'),
(2447, 147, 207, 18, 13, NULL, '2017-03-21 13:42:16', '2017-03-21'),
(2446, 147, 207, 18, 13, NULL, '2017-03-21 13:36:16', '2017-03-21'),
(2445, 147, 207, 18, 13, NULL, '2017-03-21 13:30:16', '2017-03-21'),
(2444, 147, 207, 18, 13, NULL, '2017-03-21 13:24:16', '2017-03-21'),
(2443, 147, 207, 18, 13, NULL, '2017-03-21 13:18:16', '2017-03-21'),
(2442, 147, 207, 18, 13, NULL, '2017-03-21 13:12:16', '2017-03-21'),
(2441, 147, 207, 18, 13, NULL, '2017-03-21 13:06:16', '2017-03-21'),
(2440, 147, 207, 18, 13, NULL, '2017-03-21 13:00:16', '2017-03-21'),
(2439, 147, 207, 18, 13, NULL, '2017-03-21 12:54:16', '2017-03-21'),
(2438, 147, 207, 18, 13, NULL, '2017-03-21 12:48:16', '2017-03-21'),
(2437, 147, 207, 18, 13, NULL, '2017-03-21 12:42:16', '2017-03-21'),
(2436, 147, 207, 18, 13, NULL, '2017-03-21 12:36:16', '2017-03-21'),
(2435, 147, 207, 18, 13, NULL, '2017-03-21 12:30:16', '2017-03-21'),
(2434, 147, 207, 18, 13, NULL, '2017-03-21 12:24:16', '2017-03-21'),
(2433, 147, 207, 18, 13, NULL, '2017-03-21 12:18:16', '2017-03-21'),
(2432, 147, 207, 18, 13, NULL, '2017-03-21 12:12:16', '2017-03-21'),
(2431, 147, 207, 18, 13, NULL, '2017-03-21 12:06:16', '2017-03-21'),
(2430, 147, 207, 18, 13, NULL, '2017-03-21 12:00:16', '2017-03-21'),
(2429, 147, 207, 18, 13, NULL, '2017-03-21 11:54:16', '2017-03-21'),
(2428, 147, 207, 18, 13, NULL, '2017-03-21 11:48:16', '2017-03-21'),
(2427, 147, 207, 18, 13, NULL, '2017-03-21 11:42:16', '2017-03-21'),
(2426, 147, 207, 18, 13, NULL, '2017-03-21 11:36:16', '2017-03-21'),
(2425, 147, 207, 18, 13, NULL, '2017-03-21 11:30:16', '2017-03-21'),
(2424, 147, 207, 18, 13, NULL, '2017-03-21 11:24:16', '2017-03-21'),
(2423, 147, 207, 18, 13, NULL, '2017-03-21 11:18:16', '2017-03-21'),
(2422, 147, 207, 18, 13, NULL, '2017-03-21 11:12:16', '2017-03-21'),
(2421, 147, 207, 18, 13, NULL, '2017-03-21 11:06:16', '2017-03-21'),
(2420, 147, 207, 18, 13, NULL, '2017-03-01 19:00:08', '2017-03-01'),
(2419, 147, 207, 18, 13, NULL, '2017-03-01 18:54:08', '2017-03-01'),
(2418, 147, 207, 18, 13, NULL, '2017-03-01 18:48:08', '2017-03-01'),
(2417, 147, 207, 18, 13, NULL, '2017-03-01 18:42:08', '2017-03-01'),
(2416, 147, 207, 18, 13, NULL, '2017-03-01 18:36:08', '2017-03-01'),
(2415, 147, 207, 18, 13, NULL, '2017-03-01 18:30:08', '2017-03-01'),
(2414, 147, 207, 18, 13, NULL, '2017-03-01 18:24:08', '2017-03-01'),
(2413, 147, 207, 18, 13, NULL, '2017-03-01 18:18:08', '2017-03-01'),
(2412, 147, 207, 18, 13, NULL, '2017-03-01 18:12:08', '2017-03-01'),
(2411, 147, 207, 18, 13, NULL, '2017-03-01 18:06:08', '2017-03-01'),
(2410, 149, 210, 18, 13, NULL, '2017-02-21 23:00:20', '2017-02-21'),
(2409, 149, 210, 18, 13, NULL, '2017-02-21 22:54:20', '2017-02-21'),
(2408, 149, 210, 18, 13, NULL, '2017-02-21 22:48:20', '2017-02-21'),
(2407, 149, 210, 18, 13, NULL, '2017-02-21 22:42:20', '2017-02-21'),
(2406, 149, 210, 18, 13, NULL, '2017-02-21 22:36:20', '2017-02-21'),
(2405, 149, 210, 18, 13, NULL, '2017-02-21 22:30:20', '2017-02-21'),
(2404, 149, 210, 18, 13, NULL, '2017-02-21 22:24:20', '2017-02-21'),
(2403, 149, 210, 18, 13, NULL, '2017-02-21 22:18:20', '2017-02-21'),
(2402, 149, 210, 18, 13, NULL, '2017-02-21 22:12:20', '2017-02-21'),
(2401, 149, 210, 18, 13, NULL, '2017-02-21 22:06:20', '2017-02-21'),
(2400, 149, 210, 18, 13, NULL, '2017-02-21 22:00:20', '2017-02-21'),
(2399, 149, 210, 18, 13, NULL, '2017-02-21 21:54:20', '2017-02-21'),
(2398, 149, 210, 18, 13, NULL, '2017-02-21 21:48:20', '2017-02-21'),
(2397, 149, 210, 18, 13, NULL, '2017-02-21 21:42:20', '2017-02-21'),
(2396, 149, 210, 18, 13, NULL, '2017-02-21 21:36:20', '2017-02-21'),
(2395, 149, 210, 18, 13, NULL, '2017-02-21 21:30:20', '2017-02-21'),
(2394, 149, 210, 18, 13, NULL, '2017-02-21 21:24:20', '2017-02-21'),
(2393, 149, 210, 18, 13, NULL, '2017-02-21 21:18:20', '2017-02-21'),
(2392, 149, 210, 18, 13, NULL, '2017-02-21 21:12:20', '2017-02-21'),
(2391, 149, 210, 18, 13, NULL, '2017-02-21 21:06:20', '2017-02-21'),
(2390, 149, 210, 18, 13, NULL, '2017-02-21 21:00:20', '2017-02-21'),
(2389, 149, 210, 18, 13, NULL, '2017-02-21 20:54:20', '2017-02-21'),
(2388, 149, 210, 18, 13, NULL, '2017-02-21 20:48:20', '2017-02-21'),
(2387, 149, 210, 18, 13, NULL, '2017-02-21 20:42:20', '2017-02-21'),
(2386, 149, 210, 18, 13, NULL, '2017-02-21 20:36:20', '2017-02-21'),
(2385, 149, 210, 18, 13, NULL, '2017-02-21 20:30:20', '2017-02-21'),
(2384, 149, 210, 18, 13, NULL, '2017-02-21 20:24:20', '2017-02-21'),
(2383, 149, 210, 18, 13, NULL, '2017-02-21 20:18:20', '2017-02-21'),
(2382, 149, 210, 18, 13, NULL, '2017-02-21 20:12:20', '2017-02-21'),
(2381, 149, 210, 18, 13, NULL, '2017-02-21 20:06:20', '2017-02-21'),
(2380, 149, 210, 18, 13, NULL, '2017-02-21 20:00:20', '2017-02-21'),
(2379, 149, 210, 18, 13, NULL, '2017-02-21 19:54:20', '2017-02-21'),
(2378, 149, 210, 18, 13, NULL, '2017-02-21 19:48:20', '2017-02-21'),
(2377, 149, 210, 18, 13, NULL, '2017-02-21 19:42:20', '2017-02-21'),
(2376, 149, 210, 18, 13, NULL, '2017-02-21 19:36:20', '2017-02-21'),
(2375, 149, 210, 18, 13, NULL, '2017-02-21 19:30:20', '2017-02-21'),
(2374, 149, 210, 18, 13, NULL, '2017-02-21 19:24:20', '2017-02-21'),
(2373, 149, 210, 18, 13, NULL, '2017-02-21 19:18:20', '2017-02-21'),
(2372, 149, 210, 18, 13, NULL, '2017-02-21 19:12:20', '2017-02-21'),
(2371, 149, 210, 18, 13, NULL, '2017-02-21 19:06:20', '2017-02-21'),
(2370, 149, 210, 18, 13, NULL, '2017-02-21 19:00:20', '2017-02-21'),
(2369, 149, 210, 18, 13, NULL, '2017-02-21 18:54:20', '2017-02-21'),
(2368, 149, 210, 18, 13, NULL, '2017-02-21 18:48:20', '2017-02-21'),
(2367, 149, 210, 18, 13, NULL, '2017-02-21 18:42:20', '2017-02-21'),
(2366, 149, 210, 18, 13, NULL, '2017-02-21 18:36:20', '2017-02-21'),
(2365, 149, 210, 18, 13, NULL, '2017-02-21 18:30:20', '2017-02-21'),
(2364, 149, 210, 18, 13, NULL, '2017-02-21 18:24:20', '2017-02-21'),
(2363, 149, 210, 18, 13, NULL, '2017-02-21 18:18:20', '2017-02-21'),
(2362, 149, 210, 18, 13, NULL, '2017-02-21 18:12:20', '2017-02-21'),
(2361, 149, 210, 18, 13, NULL, '2017-02-21 18:06:20', '2017-02-21'),
(2360, 147, 207, 18, 13, NULL, '2017-02-06 18:00:03', '2017-02-06'),
(2359, 147, 207, 18, 13, NULL, '2017-02-06 17:54:03', '2017-02-06'),
(2358, 147, 207, 18, 13, NULL, '2017-02-06 17:48:03', '2017-02-06'),
(2357, 147, 207, 18, 13, NULL, '2017-02-06 17:42:03', '2017-02-06'),
(2356, 147, 207, 18, 13, NULL, '2017-02-06 17:36:03', '2017-02-06'),
(2355, 147, 207, 18, 13, NULL, '2017-02-06 17:30:03', '2017-02-06'),
(2354, 147, 207, 18, 13, NULL, '2017-02-06 17:24:03', '2017-02-06'),
(2353, 147, 207, 18, 13, NULL, '2017-02-06 17:18:03', '2017-02-06'),
(2352, 147, 207, 18, 13, NULL, '2017-02-06 17:12:03', '2017-02-06'),
(2351, 147, 207, 18, 13, NULL, '2017-02-06 17:06:03', '2017-02-06'),
(2350, 147, 207, 18, 13, NULL, '2017-02-06 17:00:03', '2017-02-06'),
(2349, 147, 207, 18, 13, NULL, '2017-02-06 16:54:03', '2017-02-06'),
(2348, 147, 207, 18, 13, NULL, '2017-02-06 16:48:03', '2017-02-06'),
(2347, 147, 207, 18, 13, NULL, '2017-02-06 16:42:03', '2017-02-06'),
(2346, 147, 207, 18, 13, NULL, '2017-02-06 16:36:03', '2017-02-06'),
(2345, 147, 207, 18, 13, NULL, '2017-02-06 16:30:03', '2017-02-06'),
(2344, 147, 207, 18, 13, NULL, '2017-02-06 16:24:03', '2017-02-06'),
(2343, 147, 207, 18, 13, NULL, '2017-02-06 16:18:03', '2017-02-06'),
(2342, 147, 207, 18, 13, NULL, '2017-02-06 16:12:03', '2017-02-06'),
(2341, 147, 207, 18, 13, NULL, '2017-02-06 16:06:03', '2017-02-06'),
(2340, 147, 207, 18, 13, NULL, '2017-02-06 16:00:03', '2017-02-06'),
(2339, 147, 207, 18, 13, NULL, '2017-02-06 15:54:03', '2017-02-06'),
(2338, 147, 207, 18, 13, NULL, '2017-02-06 15:48:03', '2017-02-06'),
(2337, 147, 207, 18, 13, NULL, '2017-02-06 15:42:03', '2017-02-06'),
(2336, 147, 207, 18, 13, NULL, '2017-02-06 15:36:03', '2017-02-06'),
(2335, 147, 207, 18, 13, NULL, '2017-02-06 15:30:03', '2017-02-06'),
(2334, 147, 207, 18, 13, NULL, '2017-02-06 15:24:03', '2017-02-06'),
(2333, 147, 207, 18, 13, NULL, '2017-02-06 15:18:03', '2017-02-06'),
(2332, 147, 207, 18, 13, NULL, '2017-02-06 15:12:03', '2017-02-06'),
(2331, 147, 207, 18, 13, NULL, '2017-02-06 15:06:03', '2017-02-06'),
(2330, 147, 207, 18, 13, NULL, '2017-02-06 15:00:03', '2017-02-06'),
(2329, 147, 207, 18, 13, NULL, '2017-02-06 14:54:03', '2017-02-06'),
(2328, 147, 207, 18, 13, NULL, '2017-02-06 14:48:03', '2017-02-06'),
(2327, 147, 207, 18, 13, NULL, '2017-02-06 14:42:03', '2017-02-06'),
(2326, 147, 207, 18, 13, NULL, '2017-02-06 14:36:03', '2017-02-06'),
(2325, 147, 207, 18, 13, NULL, '2017-02-06 14:30:03', '2017-02-06'),
(2324, 147, 207, 18, 13, NULL, '2017-02-06 14:24:03', '2017-02-06'),
(2323, 147, 207, 18, 13, NULL, '2017-02-06 14:18:03', '2017-02-06'),
(2322, 147, 207, 18, 13, NULL, '2017-02-06 14:12:03', '2017-02-06'),
(2321, 147, 207, 18, 13, NULL, '2017-02-06 14:06:03', '2017-02-06'),
(2320, 147, 207, 18, 13, NULL, '2017-02-06 14:00:03', '2017-02-06'),
(2319, 147, 207, 18, 13, NULL, '2017-02-06 13:54:03', '2017-02-06'),
(2318, 147, 207, 18, 13, NULL, '2017-02-06 13:48:03', '2017-02-06'),
(2317, 147, 207, 18, 13, NULL, '2017-02-06 13:42:03', '2017-02-06'),
(2316, 147, 207, 18, 13, NULL, '2017-02-06 13:36:03', '2017-02-06'),
(2315, 147, 207, 18, 13, NULL, '2017-02-06 13:30:03', '2017-02-06'),
(2314, 147, 207, 18, 13, NULL, '2017-02-06 13:24:03', '2017-02-06'),
(2313, 147, 207, 18, 13, NULL, '2017-02-06 13:18:03', '2017-02-06'),
(2312, 147, 207, 18, 13, NULL, '2017-02-06 13:12:03', '2017-02-06'),
(2311, 147, 207, 18, 13, NULL, '2017-02-06 13:06:03', '2017-02-06'),
(2310, 149, 210, 18, 13, NULL, '2017-02-05 18:00:12', '2017-02-05'),
(2309, 149, 210, 18, 13, NULL, '2017-02-05 17:54:12', '2017-02-05'),
(2308, 149, 210, 18, 13, NULL, '2017-02-05 17:48:12', '2017-02-05'),
(2307, 149, 210, 18, 13, NULL, '2017-02-05 17:42:12', '2017-02-05'),
(2306, 149, 210, 18, 13, NULL, '2017-02-05 17:36:12', '2017-02-05'),
(2305, 149, 210, 18, 13, NULL, '2017-02-05 17:30:12', '2017-02-05'),
(2304, 149, 210, 18, 13, NULL, '2017-02-05 17:24:12', '2017-02-05'),
(2303, 149, 210, 18, 13, NULL, '2017-02-05 17:18:12', '2017-02-05'),
(2302, 149, 210, 18, 13, NULL, '2017-02-05 17:12:12', '2017-02-05'),
(2301, 149, 210, 18, 13, NULL, '2017-02-05 17:06:12', '2017-02-05'),
(2300, 149, 210, 18, 13, NULL, '2017-02-03 04:00:17', '2017-02-03'),
(2299, 149, 210, 18, 13, NULL, '2017-02-03 03:54:17', '2017-02-03'),
(2298, 149, 210, 18, 13, NULL, '2017-02-03 03:48:17', '2017-02-03'),
(2297, 149, 210, 18, 13, NULL, '2017-02-03 03:42:17', '2017-02-03'),
(2296, 149, 210, 18, 13, NULL, '2017-02-03 03:36:17', '2017-02-03'),
(2295, 149, 210, 18, 13, NULL, '2017-02-03 03:30:17', '2017-02-03'),
(2294, 149, 210, 18, 13, NULL, '2017-02-03 03:24:17', '2017-02-03'),
(2293, 149, 210, 18, 13, NULL, '2017-02-03 03:18:17', '2017-02-03'),
(2292, 149, 210, 18, 13, NULL, '2017-02-03 03:12:17', '2017-02-03'),
(2291, 149, 210, 18, 13, NULL, '2017-02-03 03:06:17', '2017-02-03'),
(2290, 149, 210, 18, 13, NULL, '2017-02-03 03:00:17', '2017-02-03'),
(2289, 149, 210, 18, 13, NULL, '2017-02-03 02:54:17', '2017-02-03'),
(2288, 149, 210, 18, 13, NULL, '2017-02-03 02:48:17', '2017-02-03'),
(2287, 149, 210, 18, 13, NULL, '2017-02-03 02:42:17', '2017-02-03'),
(2286, 149, 210, 18, 13, NULL, '2017-02-03 02:36:17', '2017-02-03'),
(2285, 149, 210, 18, 13, NULL, '2017-02-03 02:30:17', '2017-02-03'),
(2284, 149, 210, 18, 13, NULL, '2017-02-03 02:24:17', '2017-02-03'),
(2283, 149, 210, 18, 13, NULL, '2017-02-03 02:18:17', '2017-02-03'),
(2282, 149, 210, 18, 13, NULL, '2017-02-03 02:12:17', '2017-02-03'),
(2281, 149, 210, 18, 13, NULL, '2017-02-03 02:06:17', '2017-02-03'),
(2280, 149, 210, 18, 13, NULL, '2017-02-03 02:00:17', '2017-02-03'),
(2279, 149, 210, 18, 13, NULL, '2017-02-03 01:54:17', '2017-02-03'),
(2278, 149, 210, 18, 13, NULL, '2017-02-03 01:48:17', '2017-02-03'),
(2277, 149, 210, 18, 13, NULL, '2017-02-03 01:42:17', '2017-02-03'),
(2276, 149, 210, 18, 13, NULL, '2017-02-03 01:36:17', '2017-02-03'),
(2275, 149, 210, 18, 13, NULL, '2017-02-03 01:30:17', '2017-02-03'),
(2274, 149, 210, 18, 13, NULL, '2017-02-03 01:24:17', '2017-02-03'),
(2273, 149, 210, 18, 13, NULL, '2017-02-03 01:18:17', '2017-02-03'),
(2272, 149, 210, 18, 13, NULL, '2017-02-03 01:12:17', '2017-02-03'),
(2271, 149, 210, 18, 13, NULL, '2017-02-03 01:06:17', '2017-02-03'),
(2270, 149, 210, 18, 13, NULL, '2017-02-03 01:00:17', '2017-02-03'),
(2269, 149, 210, 18, 13, NULL, '2017-02-03 00:54:17', '2017-02-03'),
(2268, 149, 210, 18, 13, NULL, '2017-02-03 00:48:17', '2017-02-03'),
(2267, 149, 210, 18, 13, NULL, '2017-02-03 00:42:17', '2017-02-03'),
(2266, 149, 210, 18, 13, NULL, '2017-02-03 00:36:17', '2017-02-03'),
(2265, 149, 210, 18, 13, NULL, '2017-02-03 00:30:17', '2017-02-03'),
(2264, 149, 210, 18, 13, NULL, '2017-02-03 00:24:17', '2017-02-03'),
(2263, 149, 210, 18, 13, NULL, '2017-02-03 00:18:17', '2017-02-03'),
(2262, 149, 210, 18, 13, NULL, '2017-02-03 00:12:17', '2017-02-03'),
(2261, 149, 210, 18, 13, NULL, '2017-02-03 00:06:17', '2017-02-03'),
(2260, 143, 196, 18, 13, NULL, '2017-02-03 23:00:28', '2017-02-03'),
(2259, 143, 196, 18, 13, NULL, '2017-02-03 22:54:28', '2017-02-03'),
(2258, 143, 196, 18, 13, NULL, '2017-02-03 22:48:28', '2017-02-03'),
(2257, 143, 196, 18, 13, NULL, '2017-02-03 22:42:28', '2017-02-03'),
(2256, 143, 196, 18, 13, NULL, '2017-02-03 22:36:28', '2017-02-03'),
(2255, 143, 196, 18, 13, NULL, '2017-02-03 22:30:28', '2017-02-03'),
(2254, 143, 196, 18, 13, NULL, '2017-02-03 22:24:28', '2017-02-03'),
(2253, 143, 196, 18, 13, NULL, '2017-02-03 22:18:28', '2017-02-03'),
(2252, 143, 196, 18, 13, NULL, '2017-02-03 22:12:28', '2017-02-03'),
(2251, 143, 196, 18, 13, NULL, '2017-02-03 22:06:28', '2017-02-03'),
(2250, 143, 196, 18, 13, NULL, '2017-02-03 22:00:28', '2017-02-03'),
(2249, 143, 196, 18, 13, NULL, '2017-02-03 21:54:28', '2017-02-03'),
(2248, 143, 196, 18, 13, NULL, '2017-02-03 21:48:28', '2017-02-03'),
(2247, 143, 196, 18, 13, NULL, '2017-02-03 21:42:28', '2017-02-03'),
(2246, 143, 196, 18, 13, NULL, '2017-02-03 21:36:28', '2017-02-03'),
(2245, 143, 196, 18, 13, NULL, '2017-02-03 21:30:28', '2017-02-03'),
(2244, 143, 196, 18, 13, NULL, '2017-02-03 21:24:28', '2017-02-03'),
(2243, 143, 196, 18, 13, NULL, '2017-02-03 21:18:28', '2017-02-03'),
(2242, 143, 196, 18, 13, NULL, '2017-02-03 21:12:28', '2017-02-03'),
(2241, 143, 196, 18, 13, NULL, '2017-02-03 21:06:28', '2017-02-03'),
(2240, 143, 196, 18, 13, NULL, '2017-02-03 21:00:28', '2017-02-03'),
(2239, 143, 196, 18, 13, NULL, '2017-02-03 20:54:28', '2017-02-03'),
(2238, 143, 196, 18, 13, NULL, '2017-02-03 20:48:28', '2017-02-03'),
(2237, 143, 196, 18, 13, NULL, '2017-02-03 20:42:28', '2017-02-03'),
(2236, 143, 196, 18, 13, NULL, '2017-02-03 20:36:28', '2017-02-03'),
(2235, 143, 196, 18, 13, NULL, '2017-02-03 20:30:28', '2017-02-03'),
(2234, 143, 196, 18, 13, NULL, '2017-02-03 20:24:28', '2017-02-03'),
(2233, 143, 196, 18, 13, NULL, '2017-02-03 20:18:28', '2017-02-03'),
(2232, 143, 196, 18, 13, NULL, '2017-02-03 20:12:28', '2017-02-03'),
(2231, 143, 196, 18, 13, NULL, '2017-02-03 20:06:28', '2017-02-03'),
(2230, 144, 200, 18, 9, NULL, '2017-01-21 05:00:15', '2017-01-21'),
(2229, 144, 200, 18, 9, NULL, '2017-01-21 04:54:15', '2017-01-21'),
(2228, 144, 200, 18, 9, NULL, '2017-01-21 04:48:15', '2017-01-21'),
(2227, 144, 200, 18, 9, NULL, '2017-01-21 04:42:15', '2017-01-21'),
(2226, 144, 200, 18, 9, NULL, '2017-01-21 04:36:15', '2017-01-21'),
(2225, 144, 200, 18, 9, NULL, '2017-01-21 04:30:15', '2017-01-21'),
(2224, 144, 200, 18, 9, NULL, '2017-01-21 04:24:15', '2017-01-21'),
(2223, 144, 200, 18, 9, NULL, '2017-01-21 04:18:15', '2017-01-21'),
(2222, 144, 200, 18, 9, NULL, '2017-01-21 04:12:15', '2017-01-21'),
(2221, 144, 200, 18, 9, NULL, '2017-01-21 04:06:15', '2017-01-21'),
(2220, 144, 200, 18, 9, NULL, '2017-01-21 04:00:15', '2017-01-21'),
(2219, 144, 200, 18, 9, NULL, '2017-01-21 03:54:15', '2017-01-21'),
(2218, 144, 200, 18, 9, NULL, '2017-01-21 03:48:15', '2017-01-21'),
(2217, 144, 200, 18, 9, NULL, '2017-01-21 03:42:15', '2017-01-21'),
(2216, 144, 200, 18, 9, NULL, '2017-01-21 03:36:15', '2017-01-21'),
(2215, 144, 200, 18, 9, NULL, '2017-01-21 03:30:15', '2017-01-21'),
(2214, 144, 200, 18, 9, NULL, '2017-01-21 03:24:15', '2017-01-21'),
(2213, 144, 200, 18, 9, NULL, '2017-01-21 03:18:15', '2017-01-21'),
(2212, 144, 200, 18, 9, NULL, '2017-01-21 03:12:15', '2017-01-21'),
(2211, 144, 200, 18, 9, NULL, '2017-01-21 03:06:15', '2017-01-21'),
(2210, 144, 200, 18, 9, NULL, '2017-01-21 03:00:15', '2017-01-21'),
(2209, 144, 200, 18, 9, NULL, '2017-01-21 02:54:15', '2017-01-21'),
(2208, 144, 200, 18, 9, NULL, '2017-01-21 02:48:15', '2017-01-21'),
(2207, 144, 200, 18, 9, NULL, '2017-01-21 02:42:15', '2017-01-21'),
(2206, 144, 200, 18, 9, NULL, '2017-01-21 02:36:15', '2017-01-21'),
(2205, 144, 200, 18, 9, NULL, '2017-01-21 02:30:15', '2017-01-21'),
(2204, 144, 200, 18, 9, NULL, '2017-01-21 02:24:15', '2017-01-21'),
(2203, 144, 200, 18, 9, NULL, '2017-01-21 02:18:15', '2017-01-21'),
(2202, 144, 200, 18, 9, NULL, '2017-01-21 02:12:15', '2017-01-21'),
(2201, 144, 200, 18, 9, NULL, '2017-01-21 02:06:15', '2017-01-21'),
(2200, 144, 200, 18, 9, NULL, '2017-01-21 02:00:15', '2017-01-21'),
(2199, 144, 200, 18, 9, NULL, '2017-01-21 01:54:15', '2017-01-21'),
(2198, 144, 200, 18, 9, NULL, '2017-01-21 01:48:15', '2017-01-21'),
(2197, 144, 200, 18, 9, NULL, '2017-01-21 01:42:15', '2017-01-21'),
(2196, 144, 200, 18, 9, NULL, '2017-01-21 01:36:15', '2017-01-21'),
(2195, 144, 200, 18, 9, NULL, '2017-01-21 01:30:15', '2017-01-21'),
(2194, 144, 200, 18, 9, NULL, '2017-01-21 01:24:15', '2017-01-21'),
(2193, 144, 200, 18, 9, NULL, '2017-01-21 01:18:15', '2017-01-21'),
(2192, 144, 200, 18, 9, NULL, '2017-01-21 01:12:15', '2017-01-21'),
(2191, 144, 200, 18, 9, NULL, '2017-01-21 01:06:15', '2017-01-21'),
(2190, 144, 200, 18, 9, NULL, '2017-01-21 01:00:15', '2017-01-21'),
(2189, 144, 200, 18, 9, NULL, '2017-01-21 00:54:15', '2017-01-21'),
(2188, 144, 200, 18, 9, NULL, '2017-01-21 00:48:15', '2017-01-21'),
(2187, 144, 200, 18, 9, NULL, '2017-01-21 00:42:15', '2017-01-21'),
(2186, 144, 200, 18, 9, NULL, '2017-01-21 00:36:15', '2017-01-21'),
(2185, 144, 200, 18, 9, NULL, '2017-01-21 00:30:15', '2017-01-21'),
(2184, 144, 200, 18, 9, NULL, '2017-01-21 00:24:15', '2017-01-21'),
(2183, 144, 200, 18, 9, NULL, '2017-01-21 00:18:15', '2017-01-21'),
(2182, 144, 200, 18, 9, NULL, '2017-01-21 00:12:15', '2017-01-21'),
(2181, 144, 200, 18, 9, NULL, '2017-01-21 00:06:15', '2017-01-21'),
(2180, 143, 196, 18, 13, NULL, '2017-01-19 06:00:03', '2017-01-19'),
(2179, 143, 196, 18, 13, NULL, '2017-01-19 05:54:03', '2017-01-19'),
(2178, 143, 196, 18, 13, NULL, '2017-01-19 05:48:03', '2017-01-19'),
(2177, 143, 196, 18, 13, NULL, '2017-01-19 05:42:03', '2017-01-19'),
(2176, 143, 196, 18, 13, NULL, '2017-01-19 05:36:03', '2017-01-19'),
(2175, 143, 196, 18, 13, NULL, '2017-01-19 05:30:03', '2017-01-19'),
(2174, 143, 196, 18, 13, NULL, '2017-01-19 05:24:03', '2017-01-19'),
(2173, 143, 196, 18, 13, NULL, '2017-01-19 05:18:03', '2017-01-19'),
(2172, 143, 196, 18, 13, NULL, '2017-01-19 05:12:03', '2017-01-19'),
(2171, 143, 196, 18, 13, NULL, '2017-01-19 05:06:03', '2017-01-19'),
(2170, 143, 196, 18, 13, NULL, '2017-01-19 05:00:03', '2017-01-19'),
(2169, 143, 196, 18, 13, NULL, '2017-01-19 04:54:03', '2017-01-19'),
(2168, 143, 196, 18, 13, NULL, '2017-01-19 04:48:03', '2017-01-19'),
(2167, 143, 196, 18, 13, NULL, '2017-01-19 04:42:03', '2017-01-19'),
(2166, 143, 196, 18, 13, NULL, '2017-01-19 04:36:03', '2017-01-19'),
(2165, 143, 196, 18, 13, NULL, '2017-01-19 04:30:03', '2017-01-19'),
(2164, 143, 196, 18, 13, NULL, '2017-01-19 04:24:03', '2017-01-19'),
(2163, 143, 196, 18, 13, NULL, '2017-01-19 04:18:03', '2017-01-19'),
(2162, 143, 196, 18, 13, NULL, '2017-01-19 04:12:03', '2017-01-19'),
(2161, 143, 196, 18, 13, NULL, '2017-01-19 04:06:03', '2017-01-19'),
(2160, 143, 196, 18, 13, NULL, '2017-01-19 04:00:03', '2017-01-19'),
(2159, 143, 196, 18, 13, NULL, '2017-01-19 03:54:03', '2017-01-19'),
(2158, 143, 196, 18, 13, NULL, '2017-01-19 03:48:03', '2017-01-19'),
(2157, 143, 196, 18, 13, NULL, '2017-01-19 03:42:03', '2017-01-19'),
(2156, 143, 196, 18, 13, NULL, '2017-01-19 03:36:03', '2017-01-19'),
(2155, 143, 196, 18, 13, NULL, '2017-01-19 03:30:03', '2017-01-19'),
(2154, 143, 196, 18, 13, NULL, '2017-01-19 03:24:03', '2017-01-19'),
(2153, 143, 196, 18, 13, NULL, '2017-01-19 03:18:03', '2017-01-19'),
(2152, 143, 196, 18, 13, NULL, '2017-01-19 03:12:03', '2017-01-19'),
(2151, 143, 196, 18, 13, NULL, '2017-01-19 03:06:03', '2017-01-19'),
(2150, 143, 196, 18, 13, NULL, '2017-01-19 03:00:03', '2017-01-19'),
(2149, 143, 196, 18, 13, NULL, '2017-01-19 02:54:03', '2017-01-19'),
(2148, 143, 196, 18, 13, NULL, '2017-01-19 02:48:03', '2017-01-19'),
(2147, 143, 196, 18, 13, NULL, '2017-01-19 02:42:03', '2017-01-19'),
(2146, 143, 196, 18, 13, NULL, '2017-01-19 02:36:03', '2017-01-19'),
(2145, 143, 196, 18, 13, NULL, '2017-01-19 02:30:03', '2017-01-19'),
(2144, 143, 196, 18, 13, NULL, '2017-01-19 02:24:03', '2017-01-19'),
(2143, 143, 196, 18, 13, NULL, '2017-01-19 02:18:03', '2017-01-19'),
(2142, 143, 196, 18, 13, NULL, '2017-01-19 02:12:03', '2017-01-19'),
(2141, 143, 196, 18, 13, NULL, '2017-01-19 02:06:03', '2017-01-19'),
(2140, 143, 196, 18, 13, NULL, '2017-01-19 02:00:03', '2017-01-19'),
(2139, 143, 196, 18, 13, NULL, '2017-01-19 01:54:03', '2017-01-19'),
(2138, 143, 196, 18, 13, NULL, '2017-01-19 01:48:03', '2017-01-19'),
(2137, 143, 196, 18, 13, NULL, '2017-01-19 01:42:03', '2017-01-19'),
(2136, 143, 196, 18, 13, NULL, '2017-01-19 01:36:03', '2017-01-19'),
(2135, 143, 196, 18, 13, NULL, '2017-01-19 01:30:03', '2017-01-19'),
(2134, 143, 196, 18, 13, NULL, '2017-01-19 01:24:03', '2017-01-19'),
(2133, 143, 196, 18, 13, NULL, '2017-01-19 01:18:03', '2017-01-19'),
(2132, 143, 196, 18, 13, NULL, '2017-01-19 01:12:03', '2017-01-19'),
(2131, 143, 196, 18, 13, NULL, '2017-01-19 01:06:03', '2017-01-19'),
(2130, 143, 196, 18, 13, NULL, '2017-01-17 21:00:49', '2017-01-17'),
(2129, 143, 196, 18, 13, NULL, '2017-01-17 20:54:49', '2017-01-17'),
(2128, 143, 196, 18, 13, NULL, '2017-01-17 20:48:49', '2017-01-17'),
(2127, 143, 196, 18, 13, NULL, '2017-01-17 20:42:49', '2017-01-17'),
(2126, 143, 196, 18, 13, NULL, '2017-01-17 20:36:49', '2017-01-17'),
(2125, 143, 196, 18, 13, NULL, '2017-01-17 20:30:49', '2017-01-17'),
(2124, 143, 196, 18, 13, NULL, '2017-01-17 20:24:49', '2017-01-17'),
(2123, 143, 196, 18, 13, NULL, '2017-01-17 20:18:49', '2017-01-17'),
(2122, 143, 196, 18, 13, NULL, '2017-01-17 20:12:49', '2017-01-17'),
(2121, 143, 196, 18, 13, NULL, '2017-01-17 20:06:49', '2017-01-17'),
(2120, 143, 196, 18, 13, NULL, '2017-01-17 20:00:49', '2017-01-17'),
(2119, 143, 196, 18, 13, NULL, '2017-01-17 19:54:49', '2017-01-17'),
(2118, 143, 196, 18, 13, NULL, '2017-01-17 19:48:49', '2017-01-17'),
(2117, 143, 196, 18, 13, NULL, '2017-01-17 19:42:49', '2017-01-17'),
(2116, 143, 196, 18, 13, NULL, '2017-01-17 19:36:49', '2017-01-17'),
(2115, 143, 196, 18, 13, NULL, '2017-01-17 19:30:49', '2017-01-17'),
(2114, 143, 196, 18, 13, NULL, '2017-01-17 19:24:49', '2017-01-17'),
(2113, 143, 196, 18, 13, NULL, '2017-01-17 19:18:49', '2017-01-17'),
(2112, 143, 196, 18, 13, NULL, '2017-01-17 19:12:49', '2017-01-17'),
(2111, 143, 196, 18, 13, NULL, '2017-01-17 19:06:49', '2017-01-17'),
(2110, 143, 196, 18, 13, NULL, '2017-01-17 19:00:49', '2017-01-17'),
(2109, 143, 196, 18, 13, NULL, '2017-01-17 18:54:49', '2017-01-17'),
(2108, 143, 196, 18, 13, NULL, '2017-01-17 18:48:49', '2017-01-17'),
(2107, 143, 196, 18, 13, NULL, '2017-01-17 18:42:49', '2017-01-17'),
(2106, 143, 196, 18, 13, NULL, '2017-01-17 18:36:49', '2017-01-17'),
(2105, 143, 196, 18, 13, NULL, '2017-01-17 18:30:49', '2017-01-17'),
(2104, 143, 196, 18, 13, NULL, '2017-01-17 18:24:49', '2017-01-17'),
(2103, 143, 196, 18, 13, NULL, '2017-01-17 18:18:49', '2017-01-17'),
(2102, 143, 196, 18, 13, NULL, '2017-01-17 18:12:49', '2017-01-17'),
(2101, 143, 196, 18, 13, NULL, '2017-01-17 18:06:49', '2017-01-17'),
(2100, 143, 196, 18, 13, NULL, '2017-01-16 05:00:38', '2017-01-16'),
(2099, 143, 196, 18, 13, NULL, '2017-01-16 04:54:38', '2017-01-16'),
(2098, 143, 196, 18, 13, NULL, '2017-01-16 04:48:38', '2017-01-16'),
(2097, 143, 196, 18, 13, NULL, '2017-01-16 04:42:38', '2017-01-16'),
(2096, 143, 196, 18, 13, NULL, '2017-01-16 04:36:38', '2017-01-16'),
(2095, 143, 196, 18, 13, NULL, '2017-01-16 04:30:38', '2017-01-16'),
(2094, 143, 196, 18, 13, NULL, '2017-01-16 04:24:38', '2017-01-16'),
(2093, 143, 196, 18, 13, NULL, '2017-01-16 04:18:38', '2017-01-16'),
(2092, 143, 196, 18, 13, NULL, '2017-01-16 04:12:38', '2017-01-16'),
(2091, 143, 196, 18, 13, NULL, '2017-01-16 04:06:38', '2017-01-16'),
(2090, 143, 196, 18, 13, NULL, '2017-01-16 04:00:38', '2017-01-16'),
(2089, 143, 196, 18, 13, NULL, '2017-01-16 03:54:38', '2017-01-16'),
(2088, 143, 196, 18, 13, NULL, '2017-01-16 03:48:38', '2017-01-16'),
(2087, 143, 196, 18, 13, NULL, '2017-01-16 03:42:38', '2017-01-16'),
(2086, 143, 196, 18, 13, NULL, '2017-01-16 03:36:38', '2017-01-16'),
(2085, 143, 196, 18, 13, NULL, '2017-01-16 03:30:38', '2017-01-16'),
(2084, 143, 196, 18, 13, NULL, '2017-01-16 03:24:38', '2017-01-16'),
(2083, 143, 196, 18, 13, NULL, '2017-01-16 03:18:38', '2017-01-16'),
(2082, 143, 196, 18, 13, NULL, '2017-01-16 03:12:38', '2017-01-16'),
(2081, 143, 196, 18, 13, NULL, '2017-01-16 03:06:38', '2017-01-16'),
(2080, 143, 196, 18, 13, NULL, '2017-01-16 03:00:38', '2017-01-16'),
(2079, 143, 196, 18, 13, NULL, '2017-01-16 02:54:38', '2017-01-16'),
(2078, 143, 196, 18, 13, NULL, '2017-01-16 02:48:38', '2017-01-16'),
(2077, 143, 196, 18, 13, NULL, '2017-01-16 02:42:38', '2017-01-16'),
(2076, 143, 196, 18, 13, NULL, '2017-01-16 02:36:38', '2017-01-16'),
(2075, 143, 196, 18, 13, NULL, '2017-01-16 02:30:38', '2017-01-16'),
(2074, 143, 196, 18, 13, NULL, '2017-01-16 02:24:38', '2017-01-16'),
(2073, 143, 196, 18, 13, NULL, '2017-01-16 02:18:38', '2017-01-16'),
(2072, 143, 196, 18, 13, NULL, '2017-01-16 02:12:38', '2017-01-16'),
(2071, 143, 196, 18, 13, NULL, '2017-01-16 02:06:38', '2017-01-16'),
(2070, 143, 196, 18, 13, NULL, '2017-01-16 02:00:38', '2017-01-16'),
(2069, 143, 196, 18, 13, NULL, '2017-01-16 01:54:38', '2017-01-16'),
(2068, 143, 196, 18, 13, NULL, '2017-01-16 01:48:38', '2017-01-16'),
(2067, 143, 196, 18, 13, NULL, '2017-01-16 01:42:38', '2017-01-16'),
(2066, 143, 196, 18, 13, NULL, '2017-01-16 01:36:38', '2017-01-16'),
(2065, 143, 196, 18, 13, NULL, '2017-01-16 01:30:38', '2017-01-16'),
(2064, 143, 196, 18, 13, NULL, '2017-01-16 01:24:38', '2017-01-16'),
(2063, 143, 196, 18, 13, NULL, '2017-01-16 01:18:38', '2017-01-16'),
(2062, 143, 196, 18, 13, NULL, '2017-01-16 01:12:38', '2017-01-16'),
(2061, 143, 196, 18, 13, NULL, '2017-01-16 01:06:38', '2017-01-16'),
(2060, 143, 196, 18, 13, NULL, '2017-01-16 01:00:38', '2017-01-16'),
(2059, 143, 196, 18, 13, NULL, '2017-01-16 00:54:38', '2017-01-16'),
(2058, 143, 196, 18, 13, NULL, '2017-01-16 00:48:38', '2017-01-16'),
(2057, 143, 196, 18, 13, NULL, '2017-01-16 00:42:38', '2017-01-16'),
(2056, 143, 196, 18, 13, NULL, '2017-01-16 00:36:38', '2017-01-16'),
(2055, 143, 196, 18, 13, NULL, '2017-01-16 00:30:38', '2017-01-16'),
(2054, 143, 196, 18, 13, NULL, '2017-01-16 00:24:38', '2017-01-16'),
(2053, 143, 196, 18, 13, NULL, '2017-01-16 00:18:38', '2017-01-16'),
(2052, 143, 196, 18, 13, NULL, '2017-01-16 00:12:38', '2017-01-16'),
(2051, 143, 196, 18, 13, NULL, '2017-01-16 00:06:38', '2017-01-16'),
(2521, 149, 210, 18, 13, NULL, '2017-03-24 11:06:00', '2017-03-24'),
(2522, 149, 210, 18, 13, NULL, '2017-03-24 11:12:00', '2017-03-24'),
(2523, 149, 210, 18, 13, NULL, '2017-03-24 11:18:00', '2017-03-24'),
(2524, 149, 210, 18, 13, NULL, '2017-03-24 11:24:00', '2017-03-24'),
(2525, 149, 210, 18, 13, NULL, '2017-03-24 11:30:00', '2017-03-24'),
(2526, 149, 210, 18, 13, NULL, '2017-03-24 11:36:00', '2017-03-24'),
(2527, 149, 210, 18, 13, NULL, '2017-03-24 11:42:00', '2017-03-24'),
(2528, 149, 210, 18, 13, NULL, '2017-03-24 11:48:00', '2017-03-24'),
(2529, 149, 210, 18, 13, NULL, '2017-03-24 11:54:00', '2017-03-24'),
(2530, 149, 210, 18, 13, NULL, '2017-03-24 12:00:00', '2017-03-24'),
(2531, 149, 210, 18, 13, NULL, '2017-03-24 12:06:00', '2017-03-24'),
(2532, 149, 210, 18, 13, NULL, '2017-03-24 12:12:00', '2017-03-24'),
(2533, 149, 210, 18, 13, NULL, '2017-03-24 12:18:00', '2017-03-24'),
(2534, 149, 210, 18, 13, NULL, '2017-03-24 12:24:00', '2017-03-24'),
(2535, 149, 210, 18, 13, NULL, '2017-03-24 12:30:00', '2017-03-24'),
(2536, 149, 210, 18, 13, NULL, '2017-03-24 12:36:00', '2017-03-24'),
(2537, 149, 210, 18, 13, NULL, '2017-03-24 12:42:00', '2017-03-24'),
(2538, 149, 210, 18, 13, NULL, '2017-03-24 12:48:00', '2017-03-24'),
(2539, 149, 210, 18, 13, NULL, '2017-03-24 12:54:00', '2017-03-24'),
(2540, 149, 210, 18, 13, NULL, '2017-03-24 13:00:00', '2017-03-24'),
(2541, 149, 210, 18, 13, NULL, '2017-03-24 13:06:00', '2017-03-24'),
(2542, 149, 210, 18, 13, NULL, '2017-03-24 13:12:00', '2017-03-24'),
(2543, 149, 210, 18, 13, NULL, '2017-03-24 13:18:00', '2017-03-24'),
(2544, 149, 210, 18, 13, NULL, '2017-03-24 13:24:00', '2017-03-24'),
(2545, 149, 210, 18, 13, NULL, '2017-03-24 13:30:00', '2017-03-24'),
(2546, 149, 210, 18, 13, NULL, '2017-03-24 13:36:00', '2017-03-24'),
(2547, 149, 210, 18, 13, NULL, '2017-03-24 13:42:00', '2017-03-24'),
(2548, 149, 210, 18, 13, NULL, '2017-03-24 13:48:00', '2017-03-24'),
(2549, 149, 210, 18, 13, NULL, '2017-03-24 13:54:00', '2017-03-24'),
(2550, 149, 210, 18, 13, NULL, '2017-03-24 14:00:00', '2017-03-24'),
(2551, 149, 210, 18, 13, NULL, '2017-03-24 14:06:00', '2017-03-24'),
(2552, 149, 210, 18, 13, NULL, '2017-03-24 14:12:00', '2017-03-24'),
(2553, 149, 210, 18, 13, NULL, '2017-03-24 14:18:00', '2017-03-24'),
(2554, 149, 210, 18, 13, NULL, '2017-03-24 14:24:00', '2017-03-24'),
(2555, 149, 210, 18, 13, NULL, '2017-03-24 14:30:00', '2017-03-24'),
(2556, 149, 210, 18, 13, NULL, '2017-03-24 14:36:00', '2017-03-24'),
(2557, 149, 210, 18, 13, NULL, '2017-03-24 14:42:00', '2017-03-24'),
(2558, 149, 210, 18, 13, NULL, '2017-03-24 14:48:00', '2017-03-24'),
(2559, 149, 210, 18, 13, NULL, '2017-03-24 14:54:00', '2017-03-24'),
(2560, 149, 210, 18, 13, NULL, '2017-03-24 15:00:00', '2017-03-24'),
(2561, 147, 207, 18, 13, NULL, '2017-03-25 13:06:00', '2017-03-25'),
(2562, 147, 207, 18, 13, NULL, '2017-03-25 13:12:00', '2017-03-25'),
(2563, 147, 207, 18, 13, NULL, '2017-03-25 13:18:00', '2017-03-25'),
(2564, 147, 207, 18, 13, NULL, '2017-03-25 13:24:00', '2017-03-25'),
(2565, 147, 207, 18, 13, NULL, '2017-03-25 13:30:00', '2017-03-25'),
(2566, 147, 207, 18, 13, NULL, '2017-03-25 13:36:00', '2017-03-25'),
(2567, 147, 207, 18, 13, NULL, '2017-03-25 13:42:00', '2017-03-25'),
(2568, 147, 207, 18, 13, NULL, '2017-03-25 13:48:00', '2017-03-25'),
(2569, 147, 207, 18, 13, NULL, '2017-03-25 13:54:00', '2017-03-25'),
(2570, 147, 207, 18, 13, NULL, '2017-03-25 14:00:00', '2017-03-25'),
(2571, 147, 207, 18, 13, NULL, '2017-03-25 14:06:00', '2017-03-25'),
(2572, 147, 207, 18, 13, NULL, '2017-03-25 14:12:00', '2017-03-25'),
(2573, 147, 207, 18, 13, NULL, '2017-03-25 14:18:00', '2017-03-25'),
(2574, 147, 207, 18, 13, NULL, '2017-03-25 14:24:00', '2017-03-25'),
(2575, 147, 207, 18, 13, NULL, '2017-03-25 14:30:00', '2017-03-25'),
(2576, 147, 207, 18, 13, NULL, '2017-03-25 14:36:00', '2017-03-25'),
(2577, 147, 207, 18, 13, NULL, '2017-03-25 14:42:00', '2017-03-25'),
(2578, 147, 207, 18, 13, NULL, '2017-03-25 14:48:00', '2017-03-25'),
(2579, 147, 207, 18, 13, NULL, '2017-03-25 14:54:00', '2017-03-25'),
(2580, 147, 207, 18, 13, NULL, '2017-03-25 15:00:00', '2017-03-25'),
(2581, 147, 207, 18, 13, NULL, '2017-03-25 15:06:00', '2017-03-25'),
(2582, 147, 207, 18, 13, NULL, '2017-03-25 15:12:00', '2017-03-25'),
(2583, 147, 207, 18, 13, NULL, '2017-03-25 15:18:00', '2017-03-25'),
(2584, 147, 207, 18, 13, NULL, '2017-03-25 15:24:00', '2017-03-25'),
(2585, 147, 207, 18, 13, NULL, '2017-03-25 15:30:00', '2017-03-25'),
(2586, 147, 207, 18, 13, NULL, '2017-03-25 15:36:00', '2017-03-25'),
(2587, 147, 207, 18, 13, NULL, '2017-03-25 15:42:00', '2017-03-25'),
(2588, 147, 207, 18, 13, NULL, '2017-03-25 15:48:00', '2017-03-25'),
(2589, 147, 207, 18, 13, NULL, '2017-03-25 15:54:00', '2017-03-25'),
(2590, 147, 207, 18, 13, NULL, '2017-03-25 16:00:00', '2017-03-25'),
(2591, 149, 210, 18, 13, NULL, '2017-03-28 16:06:00', '2017-03-28'),
(2592, 149, 210, 18, 13, NULL, '2017-03-28 16:12:00', '2017-03-28'),
(2593, 149, 210, 18, 13, NULL, '2017-03-28 16:18:00', '2017-03-28'),
(2594, 149, 210, 18, 13, NULL, '2017-03-28 16:24:00', '2017-03-28'),
(2595, 149, 210, 18, 13, NULL, '2017-03-28 16:30:00', '2017-03-28'),
(2596, 149, 210, 18, 13, NULL, '2017-03-28 16:36:00', '2017-03-28'),
(2597, 149, 210, 18, 13, NULL, '2017-03-28 16:42:00', '2017-03-28'),
(2598, 149, 210, 18, 13, NULL, '2017-03-28 16:48:00', '2017-03-28'),
(2599, 149, 210, 18, 13, NULL, '2017-03-28 16:54:00', '2017-03-28'),
(2600, 149, 210, 18, 13, NULL, '2017-03-28 17:00:00', '2017-03-28'),
(2601, 149, 210, 18, 13, NULL, '2017-03-28 17:06:00', '2017-03-28'),
(2602, 149, 210, 18, 13, NULL, '2017-03-28 17:12:00', '2017-03-28'),
(2603, 149, 210, 18, 13, NULL, '2017-03-28 17:18:00', '2017-03-28'),
(2604, 149, 210, 18, 13, NULL, '2017-03-28 17:24:00', '2017-03-28'),
(2605, 149, 210, 18, 13, NULL, '2017-03-28 17:30:00', '2017-03-28'),
(2606, 149, 210, 18, 13, NULL, '2017-03-28 17:36:00', '2017-03-28'),
(2607, 149, 210, 18, 13, NULL, '2017-03-28 17:42:00', '2017-03-28'),
(2608, 149, 210, 18, 13, NULL, '2017-03-28 17:48:00', '2017-03-28'),
(2609, 149, 210, 18, 13, NULL, '2017-03-28 17:54:00', '2017-03-28'),
(2610, 149, 210, 18, 13, NULL, '2017-03-28 18:00:00', '2017-03-28'),
(2611, 149, 210, 18, 13, NULL, '2017-04-03 06:06:00', '2017-04-03'),
(2612, 149, 210, 18, 13, NULL, '2017-04-03 06:12:00', '2017-04-03'),
(2613, 149, 210, 18, 13, NULL, '2017-04-03 06:18:00', '2017-04-03'),
(2614, 149, 210, 18, 13, NULL, '2017-04-03 06:24:00', '2017-04-03'),
(2615, 149, 210, 18, 13, NULL, '2017-04-03 06:30:00', '2017-04-03'),
(2616, 149, 210, 18, 13, NULL, '2017-04-03 06:36:00', '2017-04-03'),
(2617, 149, 210, 18, 13, NULL, '2017-04-03 06:42:00', '2017-04-03'),
(2618, 149, 210, 18, 13, NULL, '2017-04-03 06:48:00', '2017-04-03'),
(2619, 149, 210, 18, 13, NULL, '2017-04-03 06:54:00', '2017-04-03'),
(2620, 149, 210, 18, 13, NULL, '2017-04-03 07:00:00', '2017-04-03'),
(2621, 149, 210, 18, 13, NULL, '2017-04-03 07:06:00', '2017-04-03'),
(2622, 149, 210, 18, 13, NULL, '2017-04-03 07:12:00', '2017-04-03'),
(2623, 149, 210, 18, 13, NULL, '2017-04-03 07:18:00', '2017-04-03'),
(2624, 149, 210, 18, 13, NULL, '2017-04-03 07:24:00', '2017-04-03'),
(2625, 149, 210, 18, 13, NULL, '2017-04-03 07:30:00', '2017-04-03'),
(2626, 149, 210, 18, 13, NULL, '2017-04-03 07:36:00', '2017-04-03'),
(2627, 149, 210, 18, 13, NULL, '2017-04-03 07:42:00', '2017-04-03'),
(2628, 149, 210, 18, 13, NULL, '2017-04-03 07:48:00', '2017-04-03'),
(2629, 149, 210, 18, 13, NULL, '2017-04-03 07:54:00', '2017-04-03'),
(2630, 149, 210, 18, 13, NULL, '2017-04-03 08:00:00', '2017-04-03'),
(2631, 149, 210, 18, 13, NULL, '2017-04-04 10:06:00', '2017-04-04'),
(2632, 149, 210, 18, 13, NULL, '2017-04-04 10:12:00', '2017-04-04'),
(2633, 149, 210, 18, 13, NULL, '2017-04-04 10:18:00', '2017-04-04'),
(2634, 149, 210, 18, 13, NULL, '2017-04-04 10:24:00', '2017-04-04'),
(2635, 149, 210, 18, 13, NULL, '2017-04-04 10:30:00', '2017-04-04'),
(2636, 149, 210, 18, 13, NULL, '2017-04-04 10:36:00', '2017-04-04'),
(2637, 149, 210, 18, 13, NULL, '2017-04-04 10:42:00', '2017-04-04'),
(2638, 149, 210, 18, 13, NULL, '2017-04-04 10:48:00', '2017-04-04'),
(2639, 149, 210, 18, 13, NULL, '2017-04-04 10:54:00', '2017-04-04'),
(2640, 149, 210, 18, 13, NULL, '2017-04-04 11:00:00', '2017-04-04'),
(2641, 149, 210, 18, 13, NULL, '2017-04-04 09:06:00', '2017-04-04'),
(2642, 149, 210, 18, 13, NULL, '2017-04-04 09:12:00', '2017-04-04'),
(2643, 149, 210, 18, 13, NULL, '2017-04-04 09:18:00', '2017-04-04'),
(2644, 149, 210, 18, 13, NULL, '2017-04-04 09:24:00', '2017-04-04'),
(2645, 149, 210, 18, 13, NULL, '2017-04-04 09:30:00', '2017-04-04'),
(2646, 149, 210, 18, 13, NULL, '2017-04-04 09:36:00', '2017-04-04'),
(2647, 149, 210, 18, 13, NULL, '2017-04-04 09:42:00', '2017-04-04'),
(2648, 149, 210, 18, 13, NULL, '2017-04-04 09:48:00', '2017-04-04'),
(2649, 149, 210, 18, 13, NULL, '2017-04-04 09:54:00', '2017-04-04'),
(2650, 149, 210, 18, 13, NULL, '2017-04-04 10:00:00', '2017-04-04'),
(2651, 149, 210, 18, 13, NULL, '2017-04-04 04:06:00', '2017-04-04'),
(2652, 149, 210, 18, 13, NULL, '2017-04-04 04:12:00', '2017-04-04'),
(2653, 149, 210, 18, 13, NULL, '2017-04-04 04:18:00', '2017-04-04'),
(2654, 149, 210, 18, 13, NULL, '2017-04-04 04:24:00', '2017-04-04'),
(2655, 149, 210, 18, 13, NULL, '2017-04-04 04:30:00', '2017-04-04'),
(2656, 149, 210, 18, 13, NULL, '2017-04-04 04:36:00', '2017-04-04'),
(2657, 149, 210, 18, 13, NULL, '2017-04-04 04:42:00', '2017-04-04'),
(2658, 149, 210, 18, 13, NULL, '2017-04-04 04:48:00', '2017-04-04'),
(2659, 149, 210, 18, 13, NULL, '2017-04-04 04:54:00', '2017-04-04'),
(2660, 149, 210, 18, 13, NULL, '2017-04-04 05:00:00', '2017-04-04'),
(2661, 149, 210, 18, 13, NULL, '2017-04-04 05:06:00', '2017-04-04'),
(2662, 149, 210, 18, 13, NULL, '2017-04-04 05:12:00', '2017-04-04'),
(2663, 149, 210, 18, 13, NULL, '2017-04-04 05:18:00', '2017-04-04'),
(2664, 149, 210, 18, 13, NULL, '2017-04-04 05:24:00', '2017-04-04'),
(2665, 149, 210, 18, 13, NULL, '2017-04-04 05:30:00', '2017-04-04'),
(2666, 149, 210, 18, 13, NULL, '2017-04-04 05:36:00', '2017-04-04'),
(2667, 149, 210, 18, 13, NULL, '2017-04-04 05:42:00', '2017-04-04'),
(2668, 149, 210, 18, 13, NULL, '2017-04-04 05:48:00', '2017-04-04'),
(2669, 149, 210, 18, 13, NULL, '2017-04-04 05:54:00', '2017-04-04'),
(2670, 149, 210, 18, 13, NULL, '2017-04-04 06:00:00', '2017-04-04'),
(2671, 149, 210, 18, 13, NULL, '2017-04-04 09:06:00', '2017-04-04'),
(2672, 149, 210, 18, 13, NULL, '2017-04-04 09:12:00', '2017-04-04'),
(2673, 149, 210, 18, 13, NULL, '2017-04-04 09:18:00', '2017-04-04'),
(2674, 149, 210, 18, 13, NULL, '2017-04-04 09:24:00', '2017-04-04'),
(2675, 149, 210, 18, 13, NULL, '2017-04-04 09:30:00', '2017-04-04'),
(2676, 149, 210, 18, 13, NULL, '2017-04-04 09:36:00', '2017-04-04'),
(2677, 149, 210, 18, 13, NULL, '2017-04-04 09:42:00', '2017-04-04'),
(2678, 149, 210, 18, 13, NULL, '2017-04-04 09:48:00', '2017-04-04'),
(2679, 149, 210, 18, 13, NULL, '2017-04-04 09:54:00', '2017-04-04'),
(2680, 149, 210, 18, 13, NULL, '2017-04-04 10:00:00', '2017-04-04'),
(2681, 149, 210, 18, 13, NULL, '2017-04-04 12:06:00', '2017-04-04'),
(2682, 149, 210, 18, 13, NULL, '2017-04-04 12:12:00', '2017-04-04'),
(2683, 149, 210, 18, 13, NULL, '2017-04-04 12:18:00', '2017-04-04'),
(2684, 149, 210, 18, 13, NULL, '2017-04-04 12:24:00', '2017-04-04'),
(2685, 149, 210, 18, 13, NULL, '2017-04-04 12:30:00', '2017-04-04'),
(2686, 149, 210, 18, 13, NULL, '2017-04-04 12:36:00', '2017-04-04'),
(2687, 149, 210, 18, 13, NULL, '2017-04-04 12:42:00', '2017-04-04'),
(2688, 149, 210, 18, 13, NULL, '2017-04-04 12:48:00', '2017-04-04'),
(2689, 149, 210, 18, 13, NULL, '2017-04-04 12:54:00', '2017-04-04'),
(2690, 149, 210, 18, 13, NULL, '2017-04-04 13:00:00', '2017-04-04'),
(2691, 149, 210, 18, 13, NULL, '2017-04-04 13:06:00', '2017-04-04'),
(2692, 149, 210, 18, 13, NULL, '2017-04-04 13:12:00', '2017-04-04'),
(2693, 149, 210, 18, 13, NULL, '2017-04-04 13:18:00', '2017-04-04'),
(2694, 149, 210, 18, 13, NULL, '2017-04-04 13:24:00', '2017-04-04'),
(2695, 149, 210, 18, 13, NULL, '2017-04-04 13:30:00', '2017-04-04'),
(2696, 149, 210, 18, 13, NULL, '2017-04-04 13:36:00', '2017-04-04'),
(2697, 149, 210, 18, 13, NULL, '2017-04-04 13:42:00', '2017-04-04'),
(2698, 149, 210, 18, 13, NULL, '2017-04-04 13:48:00', '2017-04-04'),
(2699, 149, 210, 18, 13, NULL, '2017-04-04 13:54:00', '2017-04-04'),
(2700, 149, 210, 18, 13, NULL, '2017-04-04 14:00:00', '2017-04-04'),
(2701, 149, 210, 18, 13, NULL, '2017-04-04 10:06:00', '2017-04-04'),
(2702, 149, 210, 18, 13, NULL, '2017-04-04 10:12:00', '2017-04-04'),
(2703, 149, 210, 18, 13, NULL, '2017-04-04 10:18:00', '2017-04-04'),
(2704, 149, 210, 18, 13, NULL, '2017-04-04 10:24:00', '2017-04-04'),
(2705, 149, 210, 18, 13, NULL, '2017-04-04 10:30:00', '2017-04-04'),
(2706, 149, 210, 18, 13, NULL, '2017-04-04 10:36:00', '2017-04-04'),
(2707, 149, 210, 18, 13, NULL, '2017-04-04 10:42:00', '2017-04-04'),
(2708, 149, 210, 18, 13, NULL, '2017-04-04 10:48:00', '2017-04-04'),
(2709, 149, 210, 18, 13, NULL, '2017-04-04 10:54:00', '2017-04-04'),
(2710, 149, 210, 18, 13, NULL, '2017-04-04 11:00:00', '2017-04-04'),
(2711, 149, 210, 18, 13, NULL, '2017-04-04 16:06:00', '2017-04-04'),
(2712, 149, 210, 18, 13, NULL, '2017-04-04 16:12:00', '2017-04-04'),
(2713, 149, 210, 18, 13, NULL, '2017-04-04 16:18:00', '2017-04-04'),
(2714, 149, 210, 18, 13, NULL, '2017-04-04 16:24:00', '2017-04-04'),
(2715, 149, 210, 18, 13, NULL, '2017-04-04 16:30:00', '2017-04-04'),
(2716, 149, 210, 18, 13, NULL, '2017-04-04 16:36:00', '2017-04-04'),
(2717, 149, 210, 18, 13, NULL, '2017-04-04 16:42:00', '2017-04-04'),
(2718, 149, 210, 18, 13, NULL, '2017-04-04 16:48:00', '2017-04-04'),
(2719, 149, 210, 18, 13, NULL, '2017-04-04 16:54:00', '2017-04-04'),
(2720, 149, 210, 18, 13, NULL, '2017-04-04 17:00:00', '2017-04-04'),
(2721, 149, 210, 18, 13, NULL, '2017-04-04 17:06:00', '2017-04-04'),
(2722, 149, 210, 18, 13, NULL, '2017-04-04 17:12:00', '2017-04-04'),
(2723, 149, 210, 18, 13, NULL, '2017-04-04 17:18:00', '2017-04-04'),
(2724, 149, 210, 18, 13, NULL, '2017-04-04 17:24:00', '2017-04-04'),
(2725, 149, 210, 18, 13, NULL, '2017-04-04 17:30:00', '2017-04-04'),
(2726, 149, 210, 18, 13, NULL, '2017-04-04 17:36:00', '2017-04-04'),
(2727, 149, 210, 18, 13, NULL, '2017-04-04 17:42:00', '2017-04-04'),
(2728, 149, 210, 18, 13, NULL, '2017-04-04 17:48:00', '2017-04-04'),
(2729, 149, 210, 18, 13, NULL, '2017-04-04 17:54:00', '2017-04-04'),
(2730, 149, 210, 18, 13, NULL, '2017-04-04 18:00:00', '2017-04-04'),
(2731, 149, 210, 18, 13, NULL, '2017-04-05 13:06:00', '2017-04-05'),
(2732, 149, 210, 18, 13, NULL, '2017-04-05 13:12:00', '2017-04-05'),
(2733, 149, 210, 18, 13, NULL, '2017-04-05 13:18:00', '2017-04-05'),
(2734, 149, 210, 18, 13, NULL, '2017-04-05 13:24:00', '2017-04-05'),
(2735, 149, 210, 18, 13, NULL, '2017-04-05 13:30:00', '2017-04-05'),
(2736, 149, 210, 18, 13, NULL, '2017-04-05 13:36:00', '2017-04-05'),
(2737, 149, 210, 18, 13, NULL, '2017-04-05 13:42:00', '2017-04-05'),
(2738, 149, 210, 18, 13, NULL, '2017-04-05 13:48:00', '2017-04-05'),
(2739, 149, 210, 18, 13, NULL, '2017-04-05 13:54:00', '2017-04-05'),
(2740, 149, 210, 18, 13, NULL, '2017-04-05 14:00:00', '2017-04-05'),
(2741, 149, 210, 18, 13, NULL, '2017-04-05 14:06:00', '2017-04-05'),
(2742, 149, 210, 18, 13, NULL, '2017-04-05 14:12:00', '2017-04-05'),
(2743, 149, 210, 18, 13, NULL, '2017-04-05 14:18:00', '2017-04-05'),
(2744, 149, 210, 18, 13, NULL, '2017-04-05 14:24:00', '2017-04-05'),
(2745, 149, 210, 18, 13, NULL, '2017-04-05 14:30:00', '2017-04-05'),
(2746, 149, 210, 18, 13, NULL, '2017-04-05 14:36:00', '2017-04-05'),
(2747, 149, 210, 18, 13, NULL, '2017-04-05 14:42:00', '2017-04-05'),
(2748, 149, 210, 18, 13, NULL, '2017-04-05 14:48:00', '2017-04-05'),
(2749, 149, 210, 18, 13, NULL, '2017-04-05 14:54:00', '2017-04-05'),
(2750, 149, 210, 18, 13, NULL, '2017-04-05 15:00:00', '2017-04-05'),
(2751, 149, 210, 18, 13, NULL, '2017-04-05 15:06:00', '2017-04-05'),
(2752, 149, 210, 18, 13, NULL, '2017-04-05 15:12:00', '2017-04-05'),
(2753, 149, 210, 18, 13, NULL, '2017-04-05 15:18:00', '2017-04-05'),
(2754, 149, 210, 18, 13, NULL, '2017-04-05 15:24:00', '2017-04-05'),
(2755, 149, 210, 18, 13, NULL, '2017-04-05 15:30:00', '2017-04-05'),
(2756, 149, 210, 18, 13, NULL, '2017-04-05 15:36:00', '2017-04-05'),
(2757, 149, 210, 18, 13, NULL, '2017-04-05 15:42:00', '2017-04-05'),
(2758, 149, 210, 18, 13, NULL, '2017-04-05 15:48:00', '2017-04-05'),
(2759, 149, 210, 18, 13, NULL, '2017-04-05 15:54:00', '2017-04-05'),
(2760, 149, 210, 18, 13, NULL, '2017-04-05 16:00:00', '2017-04-05'),
(2761, 149, 210, 18, 13, NULL, '2017-04-05 16:06:00', '2017-04-05'),
(2762, 149, 210, 18, 13, NULL, '2017-04-05 16:12:00', '2017-04-05'),
(2763, 149, 210, 18, 13, NULL, '2017-04-05 16:18:00', '2017-04-05'),
(2764, 149, 210, 18, 13, NULL, '2017-04-05 16:24:00', '2017-04-05'),
(2765, 149, 210, 18, 13, NULL, '2017-04-05 16:30:00', '2017-04-05'),
(2766, 149, 210, 18, 13, NULL, '2017-04-05 16:36:00', '2017-04-05'),
(2767, 149, 210, 18, 13, NULL, '2017-04-05 16:42:00', '2017-04-05'),
(2768, 149, 210, 18, 13, NULL, '2017-04-05 16:48:00', '2017-04-05'),
(2769, 149, 210, 18, 13, NULL, '2017-04-05 16:54:00', '2017-04-05'),
(2770, 149, 210, 18, 13, NULL, '2017-04-05 17:00:00', '2017-04-05'),
(2771, 149, 210, 18, 13, NULL, '2017-04-05 17:06:00', '2017-04-05'),
(2772, 149, 210, 18, 13, NULL, '2017-04-05 17:12:00', '2017-04-05'),
(2773, 149, 210, 18, 13, NULL, '2017-04-05 17:18:00', '2017-04-05'),
(2774, 149, 210, 18, 13, NULL, '2017-04-05 17:24:00', '2017-04-05'),
(2775, 149, 210, 18, 13, NULL, '2017-04-05 17:30:00', '2017-04-05'),
(2776, 149, 210, 18, 13, NULL, '2017-04-05 17:36:00', '2017-04-05'),
(2777, 149, 210, 18, 13, NULL, '2017-04-05 17:42:00', '2017-04-05'),
(2778, 149, 210, 18, 13, NULL, '2017-04-05 17:48:00', '2017-04-05'),
(2779, 149, 210, 18, 13, NULL, '2017-04-05 17:54:00', '2017-04-05'),
(2780, 149, 210, 18, 13, NULL, '2017-04-05 18:00:00', '2017-04-05');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `adminresettoken`
--
ALTER TABLE `adminresettoken`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `billingmethodlist`
--
ALTER TABLE `billingmethodlist`
  ADD PRIMARY KEY (`sr`),
  ADD KEY `sr` (`sr`),
  ADD KEY `attachedTo` (`attachedTo`);

--
-- Index pour la table `ccdetails`
--
ALTER TABLE `ccdetails`
  ADD PRIMARY KEY (`sr`),
  ADD KEY `sr` (`sr`);

--
-- Index pour la table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Index pour la table `daily_hourly_invoice`
--
ALTER TABLE `daily_hourly_invoice`
  ADD PRIMARY KEY (`id_daily_hourly_invoice`);

--
-- Index pour la table `daily_hourly_transaction`
--
ALTER TABLE `daily_hourly_transaction`
  ADD PRIMARY KEY (`id_daily_hourly_transaction`);

--
-- Index pour la table `freelancer_education`
--
ALTER TABLE `freelancer_education`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `hourly_invoices_items`
--
ALTER TABLE `hourly_invoices_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_bid_id` (`bid_id`);

--
-- Index pour la table `instagramtoken`
--
ALTER TABLE `instagramtoken`
  ADD PRIMARY KEY (`instagramtoken_id`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Index pour la table `job_accepted`
--
ALTER TABLE `job_accepted`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `job_bid_attachments`
--
ALTER TABLE `job_bid_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `job_categories`
--
ALTER TABLE `job_categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Index pour la table `job_conversation`
--
ALTER TABLE `job_conversation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `job_conversation_files`
--
ALTER TABLE `job_conversation_files`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `job_hire_end`
--
ALTER TABLE `job_hire_end`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `job_skills`
--
ALTER TABLE `job_skills`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `job_subcategories`
--
ALTER TABLE `job_subcategories`
  ADD PRIMARY KEY (`subcat_id`);

--
-- Index pour la table `job_workdairy`
--
ALTER TABLE `job_workdairy`
  ADD PRIMARY KEY (`workdairy_id`);

--
-- Index pour la table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id_notification`);

--
-- Index pour la table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Index pour la table `payment_services`
--
ALTER TABLE `payment_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Index pour la table `paypal_object`
--
ALTER TABLE `paypal_object`
  ADD PRIMARY KEY (`sr`);

--
-- Index pour la table `paypal_pakey`
--
ALTER TABLE `paypal_pakey`
  ADD PRIMARY KEY (`sr`);

--
-- Index pour la table `paypal_pa_object`
--
ALTER TABLE `paypal_pa_object`
  ADD PRIMARY KEY (`sr`);

--
-- Index pour la table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id_skills`);

--
-- Index pour la table `stripe_customerdetail`
--
ALTER TABLE `stripe_customerdetail`
  ADD PRIMARY KEY (`sr`),
  ADD KEY `sr` (`sr`);

--
-- Index pour la table `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `userpage`
--
ALTER TABLE `userpage`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `userpageaccess`
--
ALTER TABLE `userpageaccess`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `usersection`
--
ALTER TABLE `usersection`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `usersectionaccess`
--
ALTER TABLE `usersectionaccess`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `usersubpage`
--
ALTER TABLE `usersubpage`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `usersubpageaccess`
--
ALTER TABLE `usersubpageaccess`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_categories`
--
ALTER TABLE `user_categories`
  ADD PRIMARY KEY (`user_cat_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `subcat_id` (`subcat_id`);

--
-- Index pour la table `user_experience`
--
ALTER TABLE `user_experience`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `webuseraddresses`
--
ALTER TABLE `webuseraddresses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `webuser_basic_profile`
--
ALTER TABLE `webuser_basic_profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tagline` (`tagline`),
  ADD KEY `skills` (`skills`);

--
-- Index pour la table `webuser_payment_methods`
--
ALTER TABLE `webuser_payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `webuser_portfolio`
--
ALTER TABLE `webuser_portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `webuser_portfolio_skills`
--
ALTER TABLE `webuser_portfolio_skills`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `webuser_skills`
--
ALTER TABLE `webuser_skills`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `webuser_tax_information`
--
ALTER TABLE `webuser_tax_information`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tax_no` (`tax_no`);

--
-- Index pour la table `webuser_tickets`
--
ALTER TABLE `webuser_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `webuser_ticket_messages`
--
ALTER TABLE `webuser_ticket_messages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `webuser_ticket_message_files`
--
ALTER TABLE `webuser_ticket_message_files`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `workdairy_tracker`
--
ALTER TABLE `workdairy_tracker`
  ADD PRIMARY KEY (`worktracker_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `adminresettoken`
--
ALTER TABLE `adminresettoken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT pour la table `billingmethodlist`
--
ALTER TABLE `billingmethodlist`
  MODIFY `sr` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT pour la table `ccdetails`
--
ALTER TABLE `ccdetails`
  MODIFY `sr` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT pour la table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;
--
-- AUTO_INCREMENT pour la table `daily_hourly_invoice`
--
ALTER TABLE `daily_hourly_invoice`
  MODIFY `id_daily_hourly_invoice` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `daily_hourly_transaction`
--
ALTER TABLE `daily_hourly_transaction`
  MODIFY `id_daily_hourly_transaction` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `freelancer_education`
--
ALTER TABLE `freelancer_education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `hourly_invoices_items`
--
ALTER TABLE `hourly_invoices_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `instagramtoken`
--
ALTER TABLE `instagramtoken`
  MODIFY `instagramtoken_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;
--
-- AUTO_INCREMENT pour la table `job_accepted`
--
ALTER TABLE `job_accepted`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;
--
-- AUTO_INCREMENT pour la table `job_bids`
--
ALTER TABLE `job_bids`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `job_bid_attachments`
--
ALTER TABLE `job_bid_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `job_categories`
--
ALTER TABLE `job_categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `job_conversation`
--
ALTER TABLE `job_conversation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=479;
--
-- AUTO_INCREMENT pour la table `job_conversation_files`
--
ALTER TABLE `job_conversation_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT pour la table `job_feedback`
--
ALTER TABLE `job_feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `job_hire_end`
--
ALTER TABLE `job_hire_end`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT pour la table `job_skills`
--
ALTER TABLE `job_skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT pour la table `job_subcategories`
--
ALTER TABLE `job_subcategories`
  MODIFY `subcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT pour la table `job_workdairy`
--
ALTER TABLE `job_workdairy`
  MODIFY `workdairy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT pour la table `notification`
--
ALTER TABLE `notification`
  MODIFY `id_notification` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT pour la table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=291;
--
-- AUTO_INCREMENT pour la table `payment_services`
--
ALTER TABLE `payment_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `paypal_object`
--
ALTER TABLE `paypal_object`
  MODIFY `sr` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT pour la table `paypal_pakey`
--
ALTER TABLE `paypal_pakey`
  MODIFY `sr` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `paypal_pa_object`
--
ALTER TABLE `paypal_pa_object`
  MODIFY `sr` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT pour la table `skills`
--
ALTER TABLE `skills`
  MODIFY `id_skills` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2678;
--
-- AUTO_INCREMENT pour la table `stripe_customerdetail`
--
ALTER TABLE `stripe_customerdetail`
  MODIFY `sr` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT pour la table `timezones`
--
ALTER TABLE `timezones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT pour la table `token`
--
ALTER TABLE `token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `userpage`
--
ALTER TABLE `userpage`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT pour la table `userpageaccess`
--
ALTER TABLE `userpageaccess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `usersection`
--
ALTER TABLE `usersection`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT pour la table `usersectionaccess`
--
ALTER TABLE `usersectionaccess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `usersubpage`
--
ALTER TABLE `usersubpage`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT pour la table `usersubpageaccess`
--
ALTER TABLE `usersubpageaccess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT pour la table `user_categories`
--
ALTER TABLE `user_categories`
  MODIFY `user_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;
--
-- AUTO_INCREMENT pour la table `user_experience`
--
ALTER TABLE `user_experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `webuser`
--
ALTER TABLE `webuser`
  MODIFY `webuser_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `webuseraddresses`
--
ALTER TABLE `webuseraddresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `webuser_basic_profile`
--
ALTER TABLE `webuser_basic_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `webuser_payment_methods`
--
ALTER TABLE `webuser_payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT pour la table `webuser_portfolio`
--
ALTER TABLE `webuser_portfolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT pour la table `webuser_portfolio_skills`
--
ALTER TABLE `webuser_portfolio_skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT pour la table `webuser_skills`
--
ALTER TABLE `webuser_skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;
--
-- AUTO_INCREMENT pour la table `webuser_tax_information`
--
ALTER TABLE `webuser_tax_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `webuser_tickets`
--
ALTER TABLE `webuser_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `webuser_ticket_messages`
--
ALTER TABLE `webuser_ticket_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;
--
-- AUTO_INCREMENT pour la table `webuser_ticket_message_files`
--
ALTER TABLE `webuser_ticket_message_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT pour la table `withdraw`
--
ALTER TABLE `withdraw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `workdairy_tracker`
--
ALTER TABLE `workdairy_tracker`
  MODIFY `worktracker_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2781;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
