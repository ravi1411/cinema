-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2023 at 07:32 PM
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
-- Database: `cinema`
--

-- --------------------------------------------------------

--
-- Table structure for table `chairs`
--

CREATE TABLE `chairs` (
  `id` int(11) NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chairs`
--

INSERT INTO `chairs` (`id`, `x`, `y`) VALUES
(1, 0, 0),
(2, 0, 1),
(3, 0, 2),
(4, 0, 3),
(5, 0, 4),
(6, 0, 5),
(7, 0, 6),
(8, 0, 7),
(9, 0, 8),
(10, 0, 9),
(11, 0, 10),
(12, 0, 11),
(13, 0, 12),
(14, 0, 13),
(15, 0, 14),
(16, 0, 15),
(17, 0, 16),
(18, 0, 17),
(19, 0, 18),
(20, 0, 19),
(21, 1, 0),
(22, 1, 1),
(23, 1, 2),
(24, 1, 3),
(25, 1, 4),
(26, 1, 5),
(27, 1, 6),
(28, 1, 7),
(29, 1, 8),
(30, 1, 9),
(31, 1, 10),
(32, 1, 11),
(33, 1, 12),
(34, 1, 13),
(35, 1, 14),
(36, 1, 15),
(37, 1, 16),
(38, 1, 17),
(39, 1, 18),
(40, 1, 19),
(41, 2, 0),
(42, 2, 1),
(43, 2, 2),
(44, 2, 3),
(45, 2, 4),
(46, 2, 5),
(47, 2, 6),
(48, 2, 7),
(49, 2, 8),
(50, 2, 9),
(51, 2, 10),
(52, 2, 11),
(53, 2, 12),
(54, 2, 13),
(55, 2, 14),
(56, 2, 15),
(57, 2, 16),
(58, 2, 17),
(59, 2, 18),
(60, 2, 19),
(61, 3, 0),
(62, 3, 1),
(63, 3, 2),
(64, 3, 3),
(65, 3, 4),
(66, 3, 5),
(67, 3, 6),
(68, 3, 7),
(69, 3, 8),
(70, 3, 9),
(71, 3, 10),
(72, 3, 11),
(73, 3, 12),
(74, 3, 13),
(75, 3, 14),
(76, 3, 15),
(77, 3, 16),
(78, 3, 17),
(79, 3, 18),
(80, 3, 19),
(81, 4, 0),
(82, 4, 1),
(83, 4, 2),
(84, 4, 3),
(85, 4, 4),
(86, 4, 5),
(87, 4, 6),
(88, 4, 7),
(89, 4, 8),
(90, 4, 9),
(91, 4, 10),
(92, 4, 11),
(93, 4, 12),
(94, 4, 13),
(95, 4, 14),
(96, 4, 15),
(97, 4, 16),
(98, 4, 17),
(99, 4, 18),
(100, 4, 19),
(101, 5, 0),
(102, 5, 1),
(103, 5, 2),
(104, 5, 3),
(105, 5, 4),
(106, 5, 5),
(107, 5, 6),
(108, 5, 7),
(109, 5, 8),
(110, 5, 9),
(111, 5, 10),
(112, 5, 11),
(113, 5, 12),
(114, 5, 13),
(115, 5, 14),
(116, 5, 15),
(117, 5, 16),
(118, 5, 17),
(119, 5, 18),
(120, 5, 19),
(121, 6, 0),
(122, 6, 1),
(123, 6, 2),
(124, 6, 3),
(125, 6, 4),
(126, 6, 5),
(127, 6, 6),
(128, 6, 7),
(129, 6, 8),
(130, 6, 9),
(131, 6, 10),
(132, 6, 11),
(133, 6, 12),
(134, 6, 13),
(135, 6, 14),
(136, 6, 15),
(137, 6, 16),
(138, 6, 17),
(139, 6, 18),
(140, 6, 19),
(141, 7, 0),
(142, 7, 1),
(143, 7, 2),
(144, 7, 3),
(145, 7, 4),
(146, 7, 5),
(147, 7, 6),
(148, 7, 7),
(149, 7, 8),
(150, 7, 9),
(151, 7, 10),
(152, 7, 11),
(153, 7, 12),
(154, 7, 13),
(155, 7, 14),
(156, 7, 15),
(157, 7, 16),
(158, 7, 17),
(159, 7, 18),
(160, 7, 19),
(161, 8, 0),
(162, 8, 1),
(163, 8, 2),
(164, 8, 3),
(165, 8, 4),
(166, 8, 5),
(167, 8, 6),
(168, 8, 7),
(169, 8, 8),
(170, 8, 9),
(171, 8, 10),
(172, 8, 11),
(173, 8, 12),
(174, 8, 13),
(175, 8, 14),
(176, 8, 15),
(177, 8, 16),
(178, 8, 17),
(179, 8, 18),
(180, 8, 19),
(181, 9, 0),
(182, 9, 1),
(183, 9, 2),
(184, 9, 3),
(185, 9, 4),
(186, 9, 5),
(187, 9, 6),
(188, 9, 7),
(189, 9, 8),
(190, 9, 9),
(191, 9, 10),
(192, 9, 11),
(193, 9, 12),
(194, 9, 13),
(195, 9, 14),
(196, 9, 15),
(197, 9, 16),
(198, 9, 17),
(199, 9, 18),
(200, 9, 19),
(201, 10, 0),
(202, 10, 1),
(203, 10, 2),
(204, 10, 3),
(205, 10, 4),
(206, 10, 5),
(207, 10, 6),
(208, 10, 7),
(209, 10, 8),
(210, 10, 9),
(211, 10, 10),
(212, 10, 11),
(213, 10, 12),
(214, 10, 13),
(215, 10, 14),
(216, 10, 15),
(217, 10, 16),
(218, 10, 17),
(219, 10, 18),
(220, 10, 19),
(221, 11, 0),
(222, 11, 1),
(223, 11, 2),
(224, 11, 3),
(225, 11, 4),
(226, 11, 5),
(227, 11, 6),
(228, 11, 7),
(229, 11, 8),
(230, 11, 9),
(231, 11, 10),
(232, 11, 11),
(233, 11, 12),
(234, 11, 13),
(235, 11, 14),
(236, 11, 15),
(237, 11, 16),
(238, 11, 17),
(239, 11, 18),
(240, 11, 19),
(241, 12, 0),
(242, 12, 1),
(243, 12, 2),
(244, 12, 3),
(245, 12, 4),
(246, 12, 5),
(247, 12, 6),
(248, 12, 7),
(249, 12, 8),
(250, 12, 9),
(251, 12, 10),
(252, 12, 11),
(253, 12, 12),
(254, 12, 13),
(255, 12, 14),
(256, 12, 15),
(257, 12, 16),
(258, 12, 17),
(259, 12, 18),
(260, 12, 19),
(261, 13, 0),
(262, 13, 1),
(263, 13, 2),
(264, 13, 3),
(265, 13, 4),
(266, 13, 5),
(267, 13, 6),
(268, 13, 7),
(269, 13, 8),
(270, 13, 9),
(271, 13, 10),
(272, 13, 11),
(273, 13, 12),
(274, 13, 13),
(275, 13, 14),
(276, 13, 15),
(277, 13, 16),
(278, 13, 17),
(279, 13, 18),
(280, 13, 19),
(281, 14, 0),
(282, 14, 1),
(283, 14, 2),
(284, 14, 3),
(285, 14, 4),
(286, 14, 5),
(287, 14, 6),
(288, 14, 7),
(289, 14, 8),
(290, 14, 9),
(291, 14, 10),
(292, 14, 11),
(293, 14, 12),
(294, 14, 13),
(295, 14, 14),
(296, 14, 15),
(297, 14, 16),
(298, 14, 17),
(299, 14, 18),
(300, 14, 19);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `film` varchar(255) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `film`) VALUES
(1, 'Venom'),
(2, 'Hitman'),
(3, 'Spiderman'),
(4, 'Transformers 3'),
(5, 'Sniper'),
(6, 'Abc');

-- --------------------------------------------------------

--
-- Table structure for table `rez`
--

CREATE TABLE `rez` (
  `id` int(11) NOT NULL,
  `id_seans` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_chair` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rez`
--

INSERT INTO `rez` (`id`, `id_seans`, `id_user`, `id_chair`) VALUES
(28, 2, 4, 268),
(29, 2, 4, 270),
(30, 2, 4, 272),
(31, 2, 4, 289),
(32, 2, 4, 291),
(33, 2, 4, 7),
(34, 2, 4, 8),
(35, 2, 4, 9),
(36, 2, 4, 10),
(37, 2, 4, 11),
(38, 2, 4, 12),
(39, 7, 5, 290),
(40, 7, 5, 291),
(41, 7, 5, 292),
(42, 2, 5, 72),
(43, 1, 5, 50),
(44, 1, 5, 94),
(45, 1, 5, 107);

-- --------------------------------------------------------

--
-- Table structure for table `seans`
--

CREATE TABLE `seans` (
  `id` int(11) NOT NULL,
  `id_film` int(11) NOT NULL,
  `day` varchar(20) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `hour` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seans`
--

INSERT INTO `seans` (`id`, `id_film`, `day`, `hour`) VALUES
(1, 2, 'Sunday', '21:37:00'),
(2, 3, 'Wednesday', '13:30:00'),
(4, 4, 'Thursday', '16:00:00'),
(5, 1, 'Friday', '17:00:00'),
(6, 3, 'Monday', '19:00:00'),
(7, 5, 'Saturday', '15:30:00'),
(8, 2, 'Monday', '12:57:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(20) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `password` varchar(32) CHARACTER SET armscii8 COLLATE armscii8_bin NOT NULL,
  `telephone` int(9) NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `telephone`, `admin`) VALUES
(4, 'ark', '1937f167ce4a58749368ca8e815336da', 111111111, 0),
(5, 'admin', '21232f297a57a5a743894a0e4a801fc3', 999997998, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chairs`
--
ALTER TABLE `chairs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rez`
--
ALTER TABLE `rez`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_seans` (`id_seans`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_chair` (`id_chair`);

--
-- Indexes for table `seans`
--
ALTER TABLE `seans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_film` (`id_film`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chairs`
--
ALTER TABLE `chairs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rez`
--
ALTER TABLE `rez`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `seans`
--
ALTER TABLE `seans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
