-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 09, 2022 lúc 02:08 AM
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
  `about` varchar(191) NOT NULL,
  `body` text DEFAULT NULL,
  `img` varchar(255) NOT NULL,
  `title2` varchar(255) NOT NULL,
  `about2` varchar(191) NOT NULL,
  `body2` text DEFAULT NULL,
  `img2` varchar(255) NOT NULL,
  `title3` varchar(255) NOT NULL,
  `about3` varchar(191) NOT NULL,
  `body3` text DEFAULT NULL,
  `img3` varchar(255) NOT NULL,
  `title4` varchar(255) NOT NULL,
  `about4` varchar(191) NOT NULL,
  `body4` text DEFAULT NULL,
  `img4` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modifie` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `title`, `about`, `body`, `img`, `title2`, `about2`, `body2`, `img2`, `title3`, `about3`, `body3`, `img3`, `title4`, `about4`, `body4`, `img4`, `created`, `modifie`, `user_id`) VALUES
(6, 'Comment choisir votre logiciel de gestion de projet', 'ENTREPRISES', 'Bien choisir son logiciel de gestion de projet ou son outil de gestion de projet est une question cruciale pour les entreprises.', 'https://i.pinimg.com/originals/3b/5c/36/3b5c36b7645db6f3c1aa07f8bcff6652.jpg', 'Logiciel de gestion de projet secteur public', 'SECTEUR PUBLIC', 'z0 Gravity est un logiciel de gestion de projet développé avec et pour des collectivités territoriales. Grâce à son interface simple et son tableau de bord embarqué, ce logiciel de gestion de projet secteur public permet de répondre efficacement aux contraintes de temps et de budget des collectivités territoriales.', 'https://i.pinimg.com/originals/54/d6/44/54d6446cfe1f3f00dee3eade539dafae.jpg', 'Logiciel de gestion de projet en ligne SaaS', 'PMO', 'La gestion d’un projet implique en réalité de réaliser une succession de tâches très différentes pour l’entreprise et qu’il faut, bien souvent, mener de front : planification, répartition des ressources, des tâches, activités de reporting, suivi de l’avancée des projets, de la consommation des budgets, etc.', 'https://i.pinimg.com/originals/7f/5c/a0/7f5ca06c8ccab2c2f74fbfab2c1f93a4.jpg', '7 conseils clés pour bien s’équiper d’un outil de gestion de projet', 'CLIENT', 'Vous avez décidé qu’il était temps d’investir dans un outil de gestion de projet pour votre entreprise ? Vous souhaitez gagner en productivité et en efficacité dans la gestion de vos affaires courantes et, par la même occasion, en faire profiter tous les services ? C’est une très bonne idée.', 'https://i.pinimg.com/originals/2a/f0/88/2af088cbe9aa841e2e8ea80db21d8c0a.jpg', '2022-09-09 00:02:16', '0000-00-00 00:00:00', 1);

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
(168, 'en_US', 'Articles', 6, 'title', 'How to choose your project management software'),
(169, 'en_US', 'Articles', 6, 'body', 'Choosing the right project management software or project management tool is a crucial question for companies.'),
(170, 'en_US', 'Articles', 6, 'about', 'COMPANIES'),
(171, 'en_US', 'Articles', 6, 'title2', 'Public sector project management software'),
(172, 'en_US', 'Articles', 6, 'body2', 'z0 Gravity is a project management software developed with and for local authorities. Thanks to its simple interface and on-board dashboard, this public sector project management software makes it possible to respond effectively to the time and budget constraints of local authorities.'),
(173, 'en_US', 'Articles', 6, 'about2', 'PUBLIC SECTOR'),
(174, 'en_US', 'Articles', 6, 'title3', 'SaaS online project management software'),
(175, 'en_US', 'Articles', 6, 'body3', 'Managing a project actually involves carrying out a succession of very different tasks for the company and which must often be carried out simultaneously: planning, distribution of resources, tasks, reporting activities, monitoring of the progress of projects, budget consumption, etc.'),
(176, 'en_US', 'Articles', 6, 'about3', 'PMO'),
(177, 'en_US', 'Articles', 6, 'title4', '7 key tips for properly equipping yourself with a project management tool'),
(178, 'en_US', 'Articles', 6, 'body4', 'Decided it\'s time to invest in a project management tool for your business? Do you want to increase productivity and efficiency in the management of your day-to-day business and, at the same time, benefit all departments? It\'s a very good idea.'),
(179, 'en_US', 'Articles', 6, 'about4', 'CUSTOMER'),
(180, 'es', 'Articles', 6, 'title', 'Cómo elegir tu software de gestión de proyectos'),
(181, 'es', 'Articles', 6, 'body', 'Elegir el software de gestión de proyectos o la herramienta de gestión de proyectos adecuada es una cuestión crucial para las empresas.'),
(182, 'es', 'Articles', 6, 'about', 'COMPAÑÍAS'),
(183, 'es', 'Articles', 6, 'title2', 'Software de gestión de proyectos del sector público'),
(184, 'es', 'Articles', 6, 'body2', 'z0 Gravity es un software de gestión de proyectos desarrollado con y para las autoridades locales. Gracias a su sencilla interfaz y al panel integrado, este software de gestión de proyectos del sector público permite responder de forma eficaz a las limitaciones de tiempo y presupuesto de las autoridades locales.'),
(185, 'es', 'Articles', 6, 'about2', 'SECTOR PÚBLICO'),
(186, 'es', 'Articles', 6, 'title3', 'Software de gestión de proyectos en línea SaaS'),
(187, 'es', 'Articles', 6, 'body3', 'En realidad, gestionar un proyecto implica llevar a cabo una sucesión de tareas muy diferentes para la empresa y que muchas veces deben realizarse simultáneamente: planificación, distribución de recursos, tareas, reporte de actividades, seguimiento del progreso de los proyectos, consumo de presupuesto, etc.'),
(188, 'es', 'Articles', 6, 'about3', 'Oficina de gestión de proyectos'),
(189, 'es', 'Articles', 6, 'title4', '7 consejos clave para equiparte adecuadamente con una herramienta de gestión de proyectos'),
(190, 'es', 'Articles', 6, 'body4', '¿Ha decidido que es hora de invertir en una herramienta de gestión de proyectos para su negocio? ¿Quieres aumentar la productividad y la eficiencia en la gestión del día a día de tu negocio y, al mismo tiempo, beneficiar a todos los departamentos? Esta es una muy buena idea.'),
(191, 'es', 'Articles', 6, 'about4', 'CLIENTE'),
(192, 'vi_VN', 'Articles', 6, 'title', 'Cách chọn phần mềm quản lý dự án của bạn'),
(193, 'vi_VN', 'Articles', 6, 'body', 'Lựa chọn phần mềm quản lý dự án hoặc công cụ quản lý dự án phù hợp là một câu hỏi quan trọng đối với các công ty.'),
(194, 'vi_VN', 'Articles', 6, 'about', 'CÁC CÔNG TY'),
(195, 'vi_VN', 'Articles', 6, 'title2', 'Phần mềm quản lý dự án khu vực công'),
(196, 'vi_VN', 'Articles', 6, 'body2', 'z0 Gravity là một phần mềm quản lý dự án được phát triển cho và cho chính quyền địa phương. Nhờ giao diện đơn giản và bảng điều khiển tích hợp, phần mềm quản lý dự án khu vực công này có thể đáp ứng hiệu quả các hạn chế về thời gian và ngân sách của chính quyền địa phương.'),
(197, 'vi_VN', 'Articles', 6, 'about2', 'NGÀNH CÔNG'),
(198, 'vi_VN', 'Articles', 6, 'title3', 'Phần mềm quản lý dự án trực tuyến SaaS'),
(199, 'vi_VN', 'Articles', 6, 'body3', 'Quản lý một dự án thực sự liên quan đến việc thực hiện liên tiếp các nhiệm vụ rất khác nhau cho công ty và thường phải được thực hiện đồng thời: lập kế hoạch, phân phối nguồn lực, nhiệm vụ, hoạt động báo cáo, giám sát tiến độ của dự án, tiêu thụ ngân sách, v.v.'),
(200, 'vi_VN', 'Articles', 6, 'about3', 'PMO'),
(201, 'vi_VN', 'Articles', 6, 'title4', '7 mẹo chính để trang bị cho mình một công cụ quản lý dự án đúng cách'),
(202, 'vi_VN', 'Articles', 6, 'body4', 'Quyết định đã đến lúc đầu tư vào một công cụ quản lý dự án cho doanh nghiệp của bạn? Bạn có muốn tăng năng suất và hiệu quả trong việc quản lý công việc kinh doanh hàng ngày của mình và đồng thời mang lại lợi ích cho tất cả các phòng ban? Đó là một ý tưởng rất tốt.'),
(203, 'vi_VN', 'Articles', 6, 'about4', 'KHÁCH HÀNG');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `headers`
--

CREATE TABLE `headers` (
  `id` int(11) NOT NULL,
  `munber_style` varchar(255) NOT NULL,
  `img` varchar(191) NOT NULL,
  `color` varchar(255) NOT NULL,
  `about` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `bnt` varchar(191) NOT NULL,
  `background` varchar(191) NOT NULL,
  `bnt_video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_croatian_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `headers`
--

INSERT INTO `headers` (`id`, `munber_style`, `img`, `color`, `about`, `title`, `bnt`, `background`, `bnt_video`, `created`, `modified`, `user_id`) VALUES
(36, 'header1', 'https://i.pinimg.com/originals/2c/c0/fb/2cc0fb6386f33c6f7e7e25090821fc40.jpg', '#fff', 'Fédérateur. Personnalisé. Souple & adapté.', 'Avec z0 Gravity, découvrez la simplicité et la performance d’une gestion de projet collaborative.', 'Découvrez z0 Gravity', '#00CCCC', 'Voir la vidéo', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 9),
(37, 'header2', 'https://i.pinimg.com/originals/a0/7b/48/a07b48ca35d9ca59ce0b4464a250a9d0.jpg', '#fff', 'Fumant deux paquets de cigarettes par jour, l\'homme a fait une crise cardiaque', 'patient de 34 ans a été admis à l\'hôpital en état de choc, infarctus du myocarde dû à une occlusion de l\'artère coronaire sur fond de 20 ans de tabagisme.', 'Découvrez z0 Gravity', '#FF99CC', 'Voir la vidéo', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 9);

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
(195, 'en_US', 'Headers', 36, 'about', 'With z0 Gravity, discover the simplicity and performance of collaborative project management.'),
(196, 'en_US', 'Headers', 36, 'title', 'Federator. Personalized. Flexible & adapted.'),
(197, 'es', 'Headers', 36, 'about', 'With z0 Gravity, discover the simplicity and performance of collaborative project management.'),
(198, 'es', 'Headers', 36, 'title', 'federador. Personalizado. Flexible y adaptado.'),
(199, 'vi_VN', 'Headers', 36, 'about', 'Với z0 Gravity, khám phá sự đơn giản và hiệu suất của quản lý dự án cộng tác.'),
(200, 'vi_VN', 'Headers', 36, 'title', 'Người liên bang. Được cá nhân hóa. Linh hoạt và thích nghi.'),
(201, 'en_US', 'Headers', 37, 'about', 'Smoking two packs of cigarettes a day, the man had a heart attack'),
(202, 'en_US', 'Headers', 37, 'title', 'A 34-year-old patient was admitted to the hospital in shock, myocardial infarction due to coronary artery occlusion on the background of 20 years of smoking.'),
(203, 'es', 'Headers', 37, 'about', 'Fumando dos paquetes de cigarrillos al día, el hombre tuvo un infarto'),
(204, 'es', 'Headers', 37, 'title', 'paciente de 34 años ingresó en el hospital en estado de shock, infarto de miocardio debido a la oclusión de la arteria coronaria en el contexto de 20 años de tabaquismo.'),
(205, 'vi_VN', 'Headers', 37, 'about', 'Mỗi ngày hút hai bao thuốc, người đàn ông bị sốc tim'),
(206, 'vi_VN', 'Headers', 37, 'title', 'Bệnh nhân 34 tuổi nhập viện trong tình trạng sốc, nhồi máu cơ tim do tắc động mạch vành trên nền hút thuốc lá 20 năm.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pours`
--

CREATE TABLE `pours` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `about` varchar(255) NOT NULL,
  `Notre_engagement` varchar(255) NOT NULL,
  `about_notre` varchar(255) NOT NULL,
  `layout_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `title2` varchar(255) NOT NULL,
  `about2` varchar(255) NOT NULL,
  `bnt` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `pours`
--

INSERT INTO `pours` (`id`, `title`, `logo`, `about`, `Notre_engagement`, `about_notre`, `layout_img`, `note`, `link`, `title2`, `about2`, `bnt`, `created`, `modified`, `user_id`) VALUES
(1, 'Z0 Gravity est un logiciel de gestion multi-projets : quelle que soit leur complexité, vous gérez facilement les plannings, les budgets et les ressources humaines de vos projets par un usage transversal et collaboratif.', 'POUR FAIRE COURT.', 'Z0 Gravity est un logiciel de gestion multi-projets : quelle que soit leur complexité, vous gérez facilement les plannings, les budgets et les ressources humaines de vos projets par un usage transversal et collaboratif.', 'Notre engagement:', 'Cest aider tout type doranisation á resaliser ses projest avec un seul mot dorder :', 'https://i.pinimg.com/originals/c5/c7/61/c5c7612e697598f23abc83f5dce1cd74.jpg', '  sim-pli-ci-té!', 'https://www.pinterest.com/pin/629307747908773084/', 'Découvrez l’univers z0 Gravity', 'Plannings, budgets, calendriers… En un clin dœil, vous avez une vision globale et stratégique de lavancée de vos projets en temps réel !', 'Découvrez z0 Gravity', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1);

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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pres`
--

CREATE TABLE `pres` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `logo2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` varchar(255) NOT NULL,
  `about2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `about3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `author2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `author3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `dress2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `dress3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `author` varchar(255) NOT NULL,
  `dress` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `link2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `pres`
--

INSERT INTO `pres` (`id`, `title`, `logo`, `logo2`, `logo3`, `about`, `about2`, `about3`, `author2`, `author3`, `dress2`, `dress3`, `author`, `dress`, `link`, `link2`, `link3`, `created`, `modified`) VALUES
(14, 'FRESSE', 'https://i.pinimg.com/originals/73/d2/dc/73d2dc2ab7bad7c4ee3368b9b8b5edc2.jpg', 'https://i.pinimg.com/originals/86/34/3a/86343ae5149cad8a8d86371395bf4f15.jpg', 'https://i.pinimg.com/originals/26/d3/8c/26d38cba1ddb8e522e0469a03d024c9f.jpg', 'Il y avait tout d’abord la sécurité, l’outil z0 Gravity a pu être rapidement validé par les équipes d’Orange Cyberdéfense.', 'Le Royaume-Uni affirme que l\'Ukraine a détruit un pont flottant russe à Kherson', 'dangnang city', 'xuananhgl@', 'La guerre entre la Russie et l\'Ukraine accumule la douleur et la crise', 'Selon Gardien', 'xuananhgl@2', 'Stéphane Touchet ', 'PMO service client Orange Sud-Ouest', 'https://i.pinimg.com/originals/73/d2/dc/73d2dc2ab7bad7c4ee3368b9b8b5edc2.jpg', 'https://i.pinimg.com/originals/86/34/3a/86343ae5149cad8a8d86371395bf4f15.jpg', 'https://i.pinimg.com/originals/26/d3/8c/26d38cba1ddb8e522e0469a03d024c9f.jpg', '2022-09-08 09:17:55', '0000-00-00 00:00:00');

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
(45, 'en_US', 'Pres', 14, 'about', 'First of all there was security, the z0 Gravity tool was quickly validated by the Orange Cyberdefense teams.'),
(46, 'en_US', 'Pres', 14, 'dress', 'PMO customer service Orange South West'),
(47, 'en_US', 'Pres', 14, 'author', 'Stephane Touchet'),
(48, 'en_US', 'Pres', 14, 'about2', 'UK says Ukraine destroyed Russian pontoon bridge in Kherson'),
(49, 'en_US', 'Pres', 14, 'dress2', 'According to Guardian'),
(50, 'en_US', 'Pres', 14, 'author2', 'xuananhgl@'),
(51, 'en_US', 'Pres', 14, 'about3', 'The war between Russia and Ukraine is piling up pain and crisis'),
(52, 'en_US', 'Pres', 14, 'dress3', 'According to Guardian'),
(53, 'en_US', 'Pres', 14, 'author3', 'xuananhgl@2'),
(54, 'es', 'Pres', 14, 'about', 'En primer lugar estaba la seguridad, la herramienta z0 Gravity fue rápidamente validada por los equipos de Orange Cyberdefense.'),
(55, 'es', 'Pres', 14, 'dress', ' PMO atención al cliente Orange Sud-Ouest'),
(56, 'es', 'Pres', 14, 'author', '\r\nStéphane Touchet'),
(57, 'es', 'Pres', 14, 'about2', 'Reino Unido dice que Ucrania destruyó el puente de pontones ruso en Kherson'),
(58, 'es', 'Pres', 14, 'dress2', 'aaaaaaaa'),
(59, 'es', 'Pres', 14, 'author2', 'xuananhgl@'),
(60, 'es', 'Pres', 14, 'about3', 'La guerra entre Rusia y Ucrania acumula dolor y crisis'),
(61, 'es', 'Pres', 14, 'dress3', 'aaaaaaaa'),
(62, 'es', 'Pres', 14, 'author3', 'xuananhgl2'),
(63, 'vi_VN', 'Pres', 14, 'about', 'Trước hết là vấn đề bảo mật, công cụ z0 Gravity đã nhanh chóng được xác nhận bởi nhóm Orange Cyberdefense.'),
(64, 'vi_VN', 'Pres', 14, 'dress', 'Dịch vụ khách hàng PMO Orange South West'),
(65, 'vi_VN', 'Pres', 14, 'author', 'Stephane Touchet'),
(66, 'vi_VN', 'Pres', 14, 'about2', 'Anh nói Ukraine phá cầu phao Nga ở Kherson\r\n'),
(67, 'vi_VN', 'Pres', 14, 'dress2', 'Theo Guardian'),
(68, 'vi_VN', 'Pres', 14, 'author2', 'xuananhgmail.com'),
(69, 'vi_VN', 'Pres', 14, 'about3', 'Chiến sự Nga - Ukraine chồng chất đau thương và khủng hoảng'),
(70, 'vi_VN', 'Pres', 14, 'dress3', 'da nang city3'),
(71, 'vi_VN', 'Pres', 14, 'author3', 'xuananhgl@2');

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `munber_style` (`munber_style`);

--
-- Chỉ mục cho bảng `i18n`
--
ALTER TABLE `i18n`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `I18N_LOCALE_FIELD` (`locale`,`model`,`foreign_key`,`field`),
  ADD KEY `I18N_FIELD` (`model`,`foreign_key`,`field`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `aticles_i18n`
--
ALTER TABLE `aticles_i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT cho bảng `headers`
--
ALTER TABLE `headers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `i18n`
--
ALTER TABLE `i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT cho bảng `pours`
--
ALTER TABLE `pours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `pours_i18n`
--
ALTER TABLE `pours_i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `pres`
--
ALTER TABLE `pres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `pres_i18n`
--
ALTER TABLE `pres_i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `headers`
--
ALTER TABLE `headers`
  ADD CONSTRAINT `headers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
