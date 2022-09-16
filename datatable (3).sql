-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 16, 2022 lúc 08:42 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `datatable`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `about` varchar(255) NOT NULL,
  `body` text DEFAULT NULL,
  `img` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modifie` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `title`, `about`, `body`, `img`, `created`, `modifie`, `user_id`) VALUES
(1, 'cnas', 'ssssss', 'sssss', 'sssss', '2022-09-15 09:59:53', '0000-00-00 00:00:00', 1),
(17, 'qqqqq', 'qqqqqq', 'qqqqqqq', 'qqqqqqqqqq', '2022-09-16 05:40:09', '2022-09-16 05:40:09', NULL),
(18, 'qqqqq', 'qqqqqq', 'qqqqqqq', 'qqqqqqqqqq', '2022-09-16 05:40:09', '2022-09-16 05:40:09', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aticles_i18n`
--

CREATE TABLE `aticles_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(6) COLLATE utf8_unicode_520_ci NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `foreign_key` int(10) NOT NULL,
  `field` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `content` text COLLATE utf8_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `aticles_i18n`
--

INSERT INTO `aticles_i18n` (`id`, `locale`, `model`, `foreign_key`, `field`, `content`) VALUES
(258, 'en_US', 'Articles', 14, 'title', 'SaaS online project management software'),
(259, 'en_US', 'Articles', 14, 'body', 'Managing a project actually involves carrying out a succession of very different tasks for the company and which must often be carried out simultaneously: planning, distribution of resources, tasks, reporting activities, monitoring of the progress of projects, budget consumption, etc.'),
(260, 'en_US', 'Articles', 14, 'about', 'PMO'),
(261, 'es', 'Articles', 14, 'title', 'SaaS online project management software'),
(262, 'es', 'Articles', 14, 'body', 'Managing a project actually involves carrying out a succession of very different tasks for the company and which must often be carried out simultaneously: planning, distribution of resources, tasks, reporting activities, monitoring of the progress of projects, budget consumption, etc.'),
(263, 'es', 'Articles', 14, 'about', 'PMO'),
(264, 'vi_VN', 'Articles', 14, 'title', 'Phần mềm quản lý dự án trực tuyến SaaS'),
(265, 'vi_VN', 'Articles', 14, 'body', 'Quản lý một dự án thực sự liên quan đến việc thực hiện liên tiếp các nhiệm vụ rất khác nhau cho công ty và thường phải được thực hiện đồng thời: lập kế hoạch, phân phối nguồn lực, nhiệm vụ, hoạt động báo cáo, giám sát tiến độ của dự án, tiêu thụ ngân sách, v.v.11111'),
(266, 'vi_VN', 'Articles', 14, 'about', 'PMO'),
(267, 'en_US', 'Articles', 16, 'title', 'anh'),
(268, 'en_US', 'Articles', 16, 'body', 'anh'),
(269, 'en_US', 'Articles', 16, 'about', 'anh'),
(270, 'es', 'Articles', 16, 'title', 'tbn'),
(271, 'es', 'Articles', 16, 'body', 'tbn'),
(272, 'es', 'Articles', 16, 'about', 'tbn'),
(273, 'vi_VN', 'Articles', 16, 'title', 'viet'),
(274, 'vi_VN', 'Articles', 16, 'body', 'viet'),
(275, 'vi_VN', 'Articles', 16, 'about', 'viet');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `headers`
--

CREATE TABLE `headers` (
  `id` int(11) NOT NULL,
  `about` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `bnt` varchar(255) NOT NULL,
  `bnt_video` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `headers`
--

INSERT INTO `headers` (`id`, `about`, `title`, `bnt`, `bnt_video`, `created`, `modified`) VALUES
(1, 'Avec z0 Gravity, découvrez la simplicité et la performance d’une gestion de projet collaborative.', 'aaaaaaa\r\n', 'Découvrez z0 Gravity', 'Voir la vidéo', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `i18n`
--

CREATE TABLE `i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(6) NOT NULL,
  `model` varchar(255) NOT NULL,
  `foreign_key` int(10) NOT NULL,
  `field` varchar(255) NOT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `i18n`
--

INSERT INTO `i18n` (`id`, `locale`, `model`, `foreign_key`, `field`, `content`) VALUES
(195, 'en_US', 'Headers', 36, 'about', 'Federator. Personalized. FlexibleWith'),
(196, 'en_US', 'Headers', 36, 'title', ' z0 Gravity, discover the simplicity and performance of collaborative project management. & adapted.'),
(197, 'es', 'Headers', 36, 'about', 'federador. Personalizado. FlexibleCon'),
(198, 'es', 'Headers', 36, 'title', 'With z0 Gravity, discover the federador. Personalizado. Flexible y adaptado.simplicity and performance of collaborative project management.'),
(199, 'vi_VN', 'Headers', 36, 'about', 'Với z0 Gravity, khám phá sự đơn giản và hiệu suất của quản lý dự án cộng tác.'),
(200, 'vi_VN', 'Headers', 36, 'title', 'Người liên bang. Được cá nhân hóa. Linh hoạt và thích nghi.'),
(207, 'en_US', 'Headers', 1, 'about', 'Avec z0 Gravity, découvrez la simplicité et la performance d’une gestion de projet collaborative.'),
(208, 'en_US', 'Headers', 1, 'title', 'Federateur. Personnalisé. Souple & adapte.'),
(209, 'es', 'Headers', 1, 'about', 'Avec z0 Gravity, descubre la simplicidad y el rendimiento de una gestión de proyectos colaborativos.'),
(210, 'es', 'Headers', 1, 'title', 'Federador. Personalizar. Suplemento y adaptación.'),
(211, 'vi_VN', 'Headers', 1, 'about', 'Avec z0 Gravity, khám phá sự đơn giản và hiệu suất của quản lý dự án cộng tác.'),
(212, 'vi_VN', 'Headers', 1, 'title', 'Liên kết. Tôi cá nhân hóa. Souple & thích nghi.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `interfaces`
--

CREATE TABLE `interfaces` (
  `id` int(11) NOT NULL,
  `style` varchar(255) NOT NULL,
  `backgroun_header` varchar(255) NOT NULL,
  `color_header` varchar(191) NOT NULL,
  `color_prou` varchar(255) NOT NULL,
  `image_pour` varchar(255) NOT NULL,
  `image_header` varchar(191) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `interfaces`
--

INSERT INTO `interfaces` (`id`, `style`, `backgroun_header`, `color_header`, `color_prou`, `image_pour`, `image_header`, `created`, `modified`) VALUES
(1, 'style1', '#CCFFFF', '#000', '#FF7D66', 'https://www.z0gravity.com/storage-z0G/2019/06/ZG_HomeObjectif_2x.jpg', 'https://i.pinimg.com/originals/a0/7b/48/a07b48ca35d9ca59ce0b4464a250a9d0.jpg', '2022-09-09 16:17:40', '2022-09-09 16:17:40'),
(2, 'style4', '#66CCCC', '#777777', '#FFCC99', 'https://www.z0gravity.com/storage-z0G/2019/06/ZG_HomeObjectif_2x.jpg', 'https://i.pinimg.com/564x/6c/84/12/6c84121755cae143e0a4cf4f43fd702b.jpg', NULL, NULL),
(4, 'style2', '#00CC99', '#777777', '#FFCC99', 'https://www.z0gravity.com/storage-z0G/2019/06/ZG_HomeObjectif_2x.jpg', 'https://i.pinimg.com/564x/d1/08/bc/d108bc26afdf461173c785e40eb0e29d.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pours`
--

CREATE TABLE `pours` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `Notre_engagement` varchar(255) NOT NULL,
  `about_notre` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `pours`
--

INSERT INTO `pours` (`id`, `title`, `logo`, `Notre_engagement`, `about_notre`, `note`, `created`, `modified`) VALUES
(12, 'Z0 Gravity is a multi-project management software: whatever their complexity, you easily manage the schedules, budgets and human resources of your projects through cross-functional and collaborative use.', 'POUR FAIRE COURT.', 'Notre engagement:', 'Il s\'agit d\'aider tout type d\'organisation à mener à bien ses projets avec un seul mot d\'ordre', 'sim-pli-ci-té!', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pours_i18n`
--

CREATE TABLE `pours_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(6) NOT NULL,
  `model` varchar(255) NOT NULL,
  `foreign_key` int(10) NOT NULL,
  `field` varchar(255) NOT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `pours_i18n`
--

INSERT INTO `pours_i18n` (`id`, `locale`, `model`, `foreign_key`, `field`, `content`) VALUES
(145, 'en_US', 'Pours', 12, 'title', 'Z0 Gravity is a multi-project management software: whatever their complexity, you easily manage the schedules, budgets and human resources of your projects through cross-functional and collaborative use.'),
(146, 'en_US', 'Pours', 12, 'Notre_engagement', 'Our engagement:'),
(147, 'en_US', 'Pours', 12, 'about_notre', 'It is about helping any type of organization to carry out its projects with a single watchword'),
(148, 'en_US', 'Pours', 12, 'note', 'simplicity!'),
(149, 'en_US', 'Pours', 12, 'logo', 'TO SHORTEN IT.'),
(150, 'es', 'Pours', 12, 'title', 'Z0 Gravity es un software de gestión de múltiples proyectos: cualquiera que sea su complejidad, usted gestiona fácilmente los cronogramas, los presupuestos y los recursos humanos de sus proyectos a través de un uso interfuncional y colaborativo.\r\nNuestro c'),
(151, 'es', 'Pours', 12, 'Notre_engagement', 'Nuestro compromiso:'),
(152, 'es', 'Pours', 12, 'about_notre', 'Se trata de ayudar a cualquier tipo de organización a realizar sus proyectos con una sola consigna'),
(153, 'es', 'Pours', 12, 'note', '¡sencillez!'),
(154, 'es', 'Pours', 12, 'logo', 'PARA ABREVIAR.'),
(155, 'vi_VN', 'Pours', 12, 'title', 'Z0 Gravity là một phần mềm quản lý đa dự án: bất kể độ phức tạp của chúng, bạn có thể dễ dàng quản lý lịch trình, ngân sách và nguồn nhân lực cho các dự án của mình thông qua việc sử dụng hợp tác và đa chức năng.'),
(156, 'vi_VN', 'Pours', 12, 'Notre_engagement', 'Cam kết của chúng tôi:\r\n'),
(157, 'vi_VN', 'Pours', 12, 'about_notre', 'Đó là về việc giúp bất kỳ loại tổ chức nào thực hiện các dự án của mình chỉ với một từ khóa'),
(158, 'vi_VN', 'Pours', 12, 'note', 'sự đơn giản!'),
(159, 'vi_VN', 'Pours', 12, 'logo', 'NGẮN HẠN NÓ.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pres`
--

CREATE TABLE `pres` (
  `id` int(11) NOT NULL,
  `title_pres` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `about_pres` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `dress` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `pres`
--

INSERT INTO `pres` (`id`, `title_pres`, `logo`, `about_pres`, `author`, `dress`, `link`, `created`, `modified`) VALUES
(1, 'PRESSE', 'https://i.pinimg.com/564x/33/f2/4a/33f24a0598b122000b4d76c6e48e71f2.jpg', 'Il y avait tout d’abord la sécurité, l’outil z0 Gravity a pu être rapidement validé par les équipes d’Orange Cyberdéfense.', 'Stéphane Touchet', ' PMO service client Orange Sud-Ouest', 'https://i.pinimg.com/564x/33/f2/4a/33f24a0598b122000b4d76c6e48e71f2.jpg', '2022-09-16 13:18:13', '0000-00-00 00:00:00'),
(16, 'PRESSE', 'https://i.pinimg.com/564x/d4/19/99/d41999734c58ab13eaab8a332fd1cb4e.jpg', 'Il y avait tout d’abord la sécurité, l’outil z0 Gravity a pu être rapidement validé par les équipes d’Orange Cyberdéfense.', 'Stéphane Touchet', ' PMO service client Orange Sud-Ouest', 'https://i.pinimg.com/564x/d4/19/99/d41999734c58ab13eaab8a332fd1cb4e.jpg', '2022-09-12 01:41:26', '0000-00-00 00:00:00'),
(17, 'PRESSE', 'https://i.pinimg.com/564x/33/f2/4a/33f24a0598b122000b4d76c6e48e71f2.jpg', 'Il y avait tout d’abord la sécurité, l’outil z0 Gravity a pu être rapidement validé par les équipes d’Orange Cyberdéfense.', 'Stéphane Touchet', ' PMO service client Orange Sud-Ouest', 'https://i.pinimg.com/564x/d4/19/99/d41999734c58ab13eaab8a332fd1cb4e.jpg', '2022-09-12 12:03:24', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pres_i18n`
--

CREATE TABLE `pres_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(6) NOT NULL,
  `model` varchar(255) NOT NULL,
  `foreign_key` int(10) NOT NULL,
  `field` varchar(255) NOT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `pres_i18n`
--

INSERT INTO `pres_i18n` (`id`, `locale`, `model`, `foreign_key`, `field`, `content`) VALUES
(72, 'en_US', 'Pres', 15, 'about', 'First of all there was the cost, the z0 Gravity tool was quickly validated by the Orange Cyberdefense teams.'),
(73, 'en_US', 'Pres', 15, 'dress', 'PMO service client Orange Sud-Ouest'),
(74, 'en_US', 'Pres', 15, 'author', 'Stephane Touchet'),
(75, 'es', 'Pres', 15, 'about', 'Il y avait tout d\'abord la cheurité, l\'outil z0 Gravity a pu être rapidement validé par les equipes d\'Orange Cyberdéfense.'),
(76, 'es', 'Pres', 15, 'dress', 'Cliente de servicio PMO Orange Sud-Ouest'),
(77, 'es', 'Pres', 15, 'author', 'Stéphane Touchet'),
(78, 'vi_VN', 'Pres', 15, 'about', 'Trước hết, đó là sự bảo mật, tiện ích z0 Gravity có thể được xác thực nhanh bởi nhóm Orange Cyberdefense.'),
(79, 'vi_VN', 'Pres', 15, 'dress', 'Khách hàng dịch vụ PMO Orange Sud-Ouest'),
(80, 'vi_VN', 'Pres', 15, 'author', 'Stephane Touchet'),
(81, 'en_US', 'Pres', 16, 'about', 'Il y avait tout d\'abord la cheurité, l\'outil z0 Gravity a pu être rapidement validé par les équipes d\'Orange Cyberdéfense.'),
(82, 'en_US', 'Pres', 16, 'dress', 'PMO service client Orange Sud-Ouest'),
(83, 'en_US', 'Pres', 16, 'author', 'Stephane Touchet'),
(84, 'es', 'Pres', 16, 'about', 'Il y avait tout d\'abord la cheurité, l\'outil z0 Gravity a pu être rapidement validé par les equipes d\'Orange Cyberdéfense.'),
(85, 'es', 'Pres', 16, 'dress', 'Cliente de servicio PMO Orange Sud-Ouest'),
(86, 'es', 'Pres', 16, 'author', 'Stéphane Touchet'),
(87, 'vi_VN', 'Pres', 16, 'about', 'Trước hết, đó là sự bảo mật, tiện ích z0 Gravity có thể được xác thực nhanh bởi nhóm Orange Cyberdefense.'),
(88, 'vi_VN', 'Pres', 16, 'dress', 'Khách hàng dịch vụ PMO Orange Sud-Ouest'),
(89, 'vi_VN', 'Pres', 16, 'author', 'Stephane Touchet'),
(90, 'en_US', 'Pres', 17, 'about', 'Il y avait tout d\'abord la cheurité, l\'outil z0 Gravity a pu être rapidement validé par les équipes d\'Orange Cyberdéfense.'),
(91, 'en_US', 'Pres', 17, 'dress', 'PMO service client Orange Sud-Ouest'),
(92, 'en_US', 'Pres', 17, 'author', 'Stephane Touchet'),
(93, 'es', 'Pres', 17, 'about', 'Il y avait tout d\'abord la cheurité, l\'outil z0 Gravity a pu être rapidement validé par les equipes d\'Orange Cyberdéfense.'),
(94, 'es', 'Pres', 17, 'dress', 'Cliente de servicio PMO Orange Sud-Ouest'),
(95, 'es', 'Pres', 17, 'author', 'Stéphane Touchet'),
(96, 'vi_VN', 'Pres', 17, 'about', 'Trước hết, đó là sự bảo mật, tiện ích z0 Gravity có thể được xác thực nhanh bởi nhóm Orange Cyberdefense.'),
(97, 'vi_VN', 'Pres', 17, 'dress', 'Khách hàng dịch vụ PMO Orange Sud-Ouest'),
(98, 'vi_VN', 'Pres', 17, 'author', 'Stephane Touchet');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `modified` timestamp NULL DEFAULT NULL,
  `role` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `created`, `modified`, `role`) VALUES
(9, 'abc@gmail.com', '$2y$10$fBu9pNjhWJEzJrna9CQznugL3W9XFzwxSgbJdjPEDp1ehpLC.RKiG', '2022-09-08 16:53:11', '2022-09-08 16:53:11', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `aticles_i18n`
--
ALTER TABLE `aticles_i18n`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ARTICLES_I18N_LOCALE_FIELD` (`locale`,`model`,`foreign_key`,`field`),
  ADD KEY `ARTICLES_I18N_FIELD` (`model`,`foreign_key`,`field`);

--
-- Chỉ mục cho bảng `headers`
--
ALTER TABLE `headers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `i18n`
--
ALTER TABLE `i18n`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `I18N_LOCALE_FIELD` (`locale`,`model`,`foreign_key`,`field`),
  ADD KEY `I18N_FIELD` (`model`,`foreign_key`,`field`);

--
-- Chỉ mục cho bảng `interfaces`
--
ALTER TABLE `interfaces`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `style` (`style`);

--
-- Chỉ mục cho bảng `pours`
--
ALTER TABLE `pours`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pours_i18n`
--
ALTER TABLE `pours_i18n`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `POURS_I18N_LOCALE_FIELD` (`locale`,`model`,`foreign_key`,`field`),
  ADD KEY `POURS_I18N_FIELD` (`model`,`foreign_key`,`field`);

--
-- Chỉ mục cho bảng `pres`
--
ALTER TABLE `pres`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pres_i18n`
--
ALTER TABLE `pres_i18n`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `PRES_I18N_LOCALE_FIELD` (`locale`,`model`,`foreign_key`,`field`),
  ADD KEY `PRES_I18N_FIELD` (`model`,`foreign_key`,`field`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `aticles_i18n`
--
ALTER TABLE `aticles_i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;

--
-- AUTO_INCREMENT cho bảng `headers`
--
ALTER TABLE `headers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `i18n`
--
ALTER TABLE `i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT cho bảng `interfaces`
--
ALTER TABLE `interfaces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `pours`
--
ALTER TABLE `pours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `pours_i18n`
--
ALTER TABLE `pours_i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT cho bảng `pres`
--
ALTER TABLE `pres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `pres_i18n`
--
ALTER TABLE `pres_i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
