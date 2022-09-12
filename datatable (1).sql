-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 12, 2022 lúc 12:13 PM
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
  `created` datetime NOT NULL,
  `modifie` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `title`, `about`, `body`, `img`, `created`, `modifie`, `user_id`) VALUES
(11, 'Comment choisir votre logiciel de gestion de projet', 'ENTREPRISES', 'Bien choisir son logiciel de gestion de projet ou son outil de gestion de projet est une question cruciale pour les entreprises.', 'https://i.pinimg.com/originals/83/ed/3d/83ed3dd4d9d2bbb9dcd05e0fac29955d.jpg', '2022-09-12 01:51:13', '0000-00-00 00:00:00', 1),
(12, 'Logiciel de gestion de projet secteur public', 'SECTEUR PUBLIC', '\r\nz0 Gravity est un logiciel de gestion de projet développé avec et pour des collectivités territoriales. Grâce à son interface simple et son tableau de bord embarqué, ce logiciel de gestion de projet secteur public permet de répondre efficacement aux contraintes de temps et de budget des collectivités territoriales.', 'https://i.pinimg.com/originals/fc/f8/55/fcf8559d17921a854db659e96c50967e.jpg', '2022-09-12 01:53:50', '0000-00-00 00:00:00', 1),
(13, '7 conseils clés pour bien s’équiper d’un outil de gestion de projet', 'CLIENT', 'Vous avez décidé qu’il était temps d’investir dans un outil de gestion de projet pour votre entreprise ? Vous souhaitez gagner en productivité et en efficacité dans la gestion de vos affaires courantes et, par la même occasion, en faire profiter tous les services ? C’est une très bonne idée.\r\n', 'https://i.pinimg.com/originals/57/15/4e/57154e312246b0efb900d4c46cdf35f8.jpg', '2022-09-12 01:56:52', '0000-00-00 00:00:00', 1),
(14, 'Logiciel de gestion de projet en ligne SaaS', 'PMO', 'La gestion d’un projet implique en réalité de réaliser une succession de tâches très différentes pour l’entreprise et qu’il faut, bien souvent, mener de front : planification, répartition des ressources, des tâches, activités de reporting, suivi de l’avancée des projets, de la consommation des budgets, etc.', 'https://i.pinimg.com/originals/57/15/4e/57154e312246b0efb900d4c46cdf35f8.jpg', '2022-09-12 01:59:58', '0000-00-00 00:00:00', 1);

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
(231, 'en_US', 'Articles', 11, 'title', 'Comment choose your project management software'),
(232, 'en_US', 'Articles', 11, 'body', 'Whether choosing project management software or project management tools is a crucial question for businesses.'),
(233, 'en_US', 'Articles', 11, 'about', 'ENTERPRISES'),
(234, 'es', 'Articles', 11, 'title', 'Comentar choisir votre logiciel de gestion de projet'),
(235, 'es', 'Articles', 11, 'body', 'Bien elegido son logiciel de gestion de projet ou son outil de gestion de projet est une question cruciale pour les entreprises.'),
(236, 'es', 'Articles', 11, 'about', 'EMPRESAS'),
(237, 'vi_VN', 'Articles', 11, 'title', 'Cách chọn phần mềm quản lý dự án của bạn'),
(238, 'vi_VN', 'Articles', 11, 'body', 'Lựa chọn phần mềm quản lý dự án hoặc công cụ quản lý dự án phù hợp là một câu hỏi quan trọng đối với các công ty.'),
(239, 'vi_VN', 'Articles', 11, 'about', 'CÁC CÔNG TY'),
(240, 'en_US', 'Articles', 12, 'title', 'Public sector project management software'),
(241, 'en_US', 'Articles', 12, 'body', 'z0 Gravity is a project management software developed with and for local authorities. Thanks to its simple interface and on-board dashboard, this public sector project management software makes it possible to respond effectively to the time and budget constraints of local authorities.'),
(242, 'en_US', 'Articles', 12, 'about', 'PUBLIC SECTOR'),
(243, 'es', 'Articles', 12, 'title', 'Software de gestión de proyectos del sector público'),
(244, 'es', 'Articles', 12, 'body', 'z0 Gravity es un software de gestión de proyectos desarrollado con y para las autoridades locales. Gracias a su sencilla interfaz y al panel integrado, este software de gestión de proyectos del sector público permite responder de forma eficaz a las limitaciones de tiempo y presupuesto de las autoridades locales.'),
(245, 'es', 'Articles', 12, 'about', 'SECTOR PÚBLICO'),
(246, 'vi_VN', 'Articles', 12, 'title', 'Phần mềm quản lý dự án khu vực công'),
(247, 'vi_VN', 'Articles', 12, 'body', 'z0 Gravity là một phần mềm quản lý dự án được phát triển cho và cho chính quyền địa phương. Nhờ giao diện đơn giản và bảng điều khiển tích hợp, phần mềm quản lý dự án khu vực công này có thể đáp ứng hiệu quả các hạn chế về thời gian và ngân sách của chính quyền địa phương.'),
(248, 'vi_VN', 'Articles', 12, 'about', 'NGÀNH CÔNG'),
(249, 'en_US', 'Articles', 13, 'title', '7 key tips for properly equipping yourself with a project management tool'),
(250, 'en_US', 'Articles', 13, 'body', 'Decided it\'s time to invest in a project management tool for your business? Do you want to increase productivity and efficiency in the management of your day-to-day business and, at the same time, benefit all departments? It\'s a very good idea.'),
(251, 'en_US', 'Articles', 13, 'about', 'CUSTOMER'),
(252, 'es', 'Articles', 13, 'title', '7 consejos clave para equiparte adecuadamente con una herramienta de gestión de proyectos'),
(253, 'es', 'Articles', 13, 'body', '¿Ha decidido que es hora de invertir en una herramienta de gestión de proyectos para su empresa? ¿Quieres aumentar la productividad y la eficiencia en la gestión del día a día de tu negocio y, al mismo tiempo, beneficiar a todos los departamentos? Esta es una muy buena idea.'),
(254, 'es', 'Articles', 13, 'about', 'CLIENTE'),
(255, 'vi_VN', 'Articles', 13, 'title', '7 mẹo chính để trang bị cho mình một công cụ quản lý dự án đúng cách'),
(256, 'vi_VN', 'Articles', 13, 'body', 'Quyết định đã đến lúc đầu tư vào một công cụ quản lý dự án cho doanh nghiệp của bạn? Bạn có muốn tăng năng suất và hiệu quả trong việc quản lý công việc kinh doanh hàng ngày của mình và đồng thời mang lại lợi ích cho tất cả các phòng ban? Đó là một ý tưởng rất tốt.'),
(257, 'vi_VN', 'Articles', 13, 'about', 'KHÁCH HÀNG'),
(258, 'en_US', 'Articles', 14, 'title', 'SaaS online project management software'),
(259, 'en_US', 'Articles', 14, 'body', 'Managing a project actually involves carrying out a succession of very different tasks for the company and which must often be carried out simultaneously: planning, distribution of resources, tasks, reporting activities, monitoring of the progress of projects, budget consumption, etc.'),
(260, 'en_US', 'Articles', 14, 'about', 'PMO'),
(261, 'es', 'Articles', 14, 'title', 'SaaS online project management software'),
(262, 'es', 'Articles', 14, 'body', 'Managing a project actually involves carrying out a succession of very different tasks for the company and which must often be carried out simultaneously: planning, distribution of resources, tasks, reporting activities, monitoring of the progress of projects, budget consumption, etc.'),
(263, 'es', 'Articles', 14, 'about', 'PMO'),
(264, 'vi_VN', 'Articles', 14, 'title', 'Phần mềm quản lý dự án trực tuyến SaaS'),
(265, 'vi_VN', 'Articles', 14, 'body', 'Quản lý một dự án thực sự liên quan đến việc thực hiện liên tiếp các nhiệm vụ rất khác nhau cho công ty và thường phải được thực hiện đồng thời: lập kế hoạch, phân phối nguồn lực, nhiệm vụ, hoạt động báo cáo, giám sát tiến độ của dự án, tiêu thụ ngân sách, v.v.'),
(266, 'vi_VN', 'Articles', 14, 'about', 'PMO');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `headers`
--

CREATE TABLE `headers` (
  `id` int(11) NOT NULL,
  `munber_style` varchar(255) NOT NULL,
  `about` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `bnt` varchar(191) NOT NULL,
  `bnt_video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_croatian_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `headers`
--

INSERT INTO `headers` (`id`, `munber_style`, `about`, `title`, `bnt`, `bnt_video`, `created`, `modified`, `user_id`) VALUES
(36, 'header1', 'Fédérateur. Personnalisé. Souple & adapté.', 'Avec z0 Gravity, découvrez la simplicité et la performance d’une gestion de projet collaborative.', 'Découvrez z0 Gravity', 'Voir la vidéo', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 9),
(37, 'header2', 'Fumant deux paquets de cigarettes par jour, l\'homme a fait une crise cardiaque', 'patient de 34 ans a été admis à l\'hôpital en état de choc, infarctus du myocarde dû à une occlusion de l\'artère coronaire sur fond de 20 ans de tabagisme.', 'Découvrez z0 Gravity', 'Voir la vidéo', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 9);

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
(201, 'en_US', 'Headers', 37, 'about', 'Smoking two packs of cigarettes a day, the man had a heart attack'),
(202, 'en_US', 'Headers', 37, 'title', 'A 34-year-old patient was admitted to the hospital in shock, myocardial infarction due to coronary artery occlusion on the background of 20 years of smoking.'),
(203, 'es', 'Headers', 37, 'about', 'Fumando dos paquetes de cigarrillos al día, el hombre tuvo un infarto'),
(204, 'es', 'Headers', 37, 'title', 'paciente de 34 años ingresó en el hospital en estado de shock, infarto de miocardio debido a la oclusión de la arteria coronaria en el contexto de 20 años de tabaquismo.'),
(205, 'vi_VN', 'Headers', 37, 'about', 'Mỗi ngày hút hai bao thuốc, người đàn ông bị sốc tim'),
(206, 'vi_VN', 'Headers', 37, 'title', 'Bệnh nhân 34 tuổi nhập viện trong tình trạng sốc, nhồi máu cơ tim do tắc động mạch vành trên nền hút thuốc lá 20 năm.');

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
(1, 'style1', '#CCFFFF', '#000', '#FF7D66', 'https://i.pinimg.com/originals/a0/7b/48/a07b48ca35d9ca59ce0b4464a250a9d0.jpg', 'https://i.pinimg.com/originals/a0/7b/48/a07b48ca35d9ca59ce0b4464a250a9d0.jpg', '2022-09-09 16:17:40', '2022-09-09 16:17:40'),
(2, 'style4', '#66CCCC', '#777777', '#FFCC99', 'https://i.pinimg.com/564x/d2/a5/bd/d2a5bd7777f540a21f362eb3873c963a.jpg', 'https://i.pinimg.com/564x/6c/84/12/6c84121755cae143e0a4cf4f43fd702b.jpg', NULL, NULL),
(4, 'style2', '#00CC99', '#777777', '#FFCC99', 'https://i.pinimg.com/564x/d2/a5/bd/d2a5bd7777f540a21f362eb3873c963a.jpg', 'https://i.pinimg.com/564x/d1/08/bc/d108bc26afdf461173c785e40eb0e29d.jpg', NULL, NULL);

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
  `layout_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `pours`
--

INSERT INTO `pours` (`id`, `title`, `logo`, `Notre_engagement`, `about_notre`, `layout_img`, `note`, `created`, `modified`) VALUES
(10, 'Z0 Gravity is a multi-project management software: whatever their complexity, you easily manage the schedules, budgets and human resources of your projects through cross-functional and collaborative use.', 'POUR FAIRE COURT.', 'Notre engagement:', 'Il s\'agit d\'aider tout type d\'organisation à mener à bien ses projets avec un seul mot d\'ordre', 'https://i.pinimg.com/originals/a0/7b/48/a07b48ca35d9ca59ce0b4464a250a9d0.', '  sim-pli-ci-té!', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
(118, 'en_US', 'Pours', 10, 'title', 'Z0 Gravity is a multi-project management software: whatever their complexity, you easily manage the schedules, budgets and human resources of your projects through cross-functional and collaborative use.'),
(119, 'en_US', 'Pours', 10, 'Notre_engagement', 'Our engagement:'),
(120, 'en_US', 'Pours', 10, 'about_notre', 'It is about helping any type of organization to carry out its projects with a single watchword'),
(121, 'en_US', 'Pours', 10, 'note', 'simplicity!'),
(122, 'es', 'Pours', 10, 'title', 'Z0 Gravity es un software de gestión de múltiples proyectos: cualquiera que sea su complejidad, usted gestiona fácilmente los cronogramas, los presupuestos y los recursos humanos de sus proyectos a través de un uso interfuncional y colaborativo.'),
(123, 'es', 'Pours', 10, 'Notre_engagement', 'Nuestro compromiso:'),
(124, 'es', 'Pours', 10, 'about_notre', 'Se trata de ayudar a cualquier tipo de organización a realizar sus proyectos con una sola consigna'),
(125, 'es', 'Pours', 10, 'note', '¡sencillez!'),
(126, 'vi_VN', 'Pours', 10, 'title', 'Z0 Gravity là một phần mềm quản lý đa dự án: bất kể độ phức tạp của chúng, bạn dễ dàng quản lý lịch trình, ngân sách và nguồn nhân lực cho các dự án của mình thông qua việc sử dụng hợp tác và đa chức năng.'),
(127, 'vi_VN', 'Pours', 10, 'Notre_engagement', 'Notre đính hôn:'),
(128, 'vi_VN', 'Pours', 10, 'about_notre', 'Il s\'agit d\'aider tout type d\'organisation à mener à bien ses projets avec un seul mot d\'ordre'),
(129, 'vi_VN', 'Pours', 10, 'note', 'sim-pli-ci-té!');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pres`
--

CREATE TABLE `pres` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `about` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `dress` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `pres`
--

INSERT INTO `pres` (`id`, `title`, `logo`, `about`, `author`, `dress`, `link`, `created`, `modified`) VALUES
(15, 'PRESSE', 'https://i.pinimg.com/564x/33/f2/4a/33f24a0598b122000b4d76c6e48e71f2.jpg', 'Il y avait tout d’abord la sécurité, l’outil z0 Gravity a pu être rapidement validé par les équipes d’Orange Cyberdéfense.', 'Stéphane Touchet', ' PMO service client Orange Sud-Ouest', 'https://i.pinimg.com/564x/33/f2/4a/33f24a0598b122000b4d76c6e48e71f2.jpg', '2022-09-12 12:04:52', '0000-00-00 00:00:00'),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `aticles_i18n`
--
ALTER TABLE `aticles_i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT cho bảng `headers`
--
ALTER TABLE `headers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `i18n`
--
ALTER TABLE `i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT cho bảng `interfaces`
--
ALTER TABLE `interfaces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `pours`
--
ALTER TABLE `pours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `pours_i18n`
--
ALTER TABLE `pours_i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

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
