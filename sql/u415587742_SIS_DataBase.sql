-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 12-Maio-2022 às 01:33
-- Versão do servidor: 10.5.12-MariaDB-cll-lve
-- versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `u415587742_SIS_DataBase`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `image_tb`
--

CREATE TABLE `image_tb` (
  `image_cd` int(11) NOT NULL,
  `image_ds` varchar(750) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `partners_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `image_tb`
--

INSERT INTO `image_tb` (`image_cd`, `image_ds`, `project_id`, `partners_id`, `member_id`) VALUES
(1, 'toquiozin', NULL, NULL, 4),
(2, 'DRTFTv', NULL, NULL, 3),
(3, 'lib/partners/dezbarradez.png', NULL, 1, NULL),
(5, 'lib/project/blankboard.png', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `member_office_tb`
--

CREATE TABLE `member_office_tb` (
  `member_id` int(11) NOT NULL,
  `office_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `member_office_tb`
--

INSERT INTO `member_office_tb` (`member_id`, `office_id`) VALUES
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 9),
(4, 2),
(4, 3),
(4, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `member_tb`
--

CREATE TABLE `member_tb` (
  `member_cd` int(11) NOT NULL,
  `member_nm` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_ds` varchar(750) COLLATE utf8mb4_unicode_ci NOT NULL,
  `memberLink_ds` varchar(750) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `member_tb`
--

INSERT INTO `member_tb` (`member_cd`, `member_nm`, `member_ds`, `memberLink_ds`) VALUES
(3, 'Daniel Filho', '\r\nHi i\'m daniel, creator and until then CEO of Spikey Indie Studio aka \"DF\".', 'DanielFilho/index'),
(4, 'João Moura', 'Hello my name is João better known as tokyo :)', 'https://spikeystudio.com/');

-- --------------------------------------------------------

--
-- Estrutura da tabela `office_tb`
--

CREATE TABLE `office_tb` (
  `office_cd` int(11) NOT NULL,
  `office_nm` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `office_ds` varchar(750) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `officeColor_ds` char(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `office_tb`
--

INSERT INTO `office_tb` (`office_cd`, `office_nm`, `office_ds`, `officeColor_ds`) VALUES
(1, 'Game Designer', NULL, '#FFCF30'),
(2, 'Designer', NULL, '#4B0082'),
(3, 'Artist', NULL, '#9B57FF'),
(4, 'Programmer', NULL, '#4B4B4B'),
(5, 'Tester', NULL, '#4B64FF'),
(6, 'Marketing', NULL, '#3DFF6B'),
(7, 'Producer', NULL, '#FF6371'),
(8, 'Writer', NULL, '#FF8D63'),
(9, 'CEO', NULL, '#000000');

-- --------------------------------------------------------

--
-- Estrutura da tabela `partners_tb`
--

CREATE TABLE `partners_tb` (
  `partners_cd` int(11) NOT NULL,
  `partners_nm` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partnersSince_dt` date NOT NULL,
  `partners_ds` varchar(750) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `partnersLink_ds` varchar(750) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `partners_tb`
--

INSERT INTO `partners_tb` (`partners_cd`, `partners_nm`, `partnersSince_dt`, `partners_ds`, `partnersLink_ds`) VALUES
(1, '10/10', '2018-03-20', 'Sublimation shop and customized products.', 'https://www.instagram.com/dezbarradezlojapersonalizados/');

-- --------------------------------------------------------

--
-- Estrutura da tabela `project_tag_tb`
--

CREATE TABLE `project_tag_tb` (
  `project_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `project_tag_tb`
--

INSERT INTO `project_tag_tb` (`project_id`, `tag_id`) VALUES
(3, 2),
(3, 10),
(3, 36);

-- --------------------------------------------------------

--
-- Estrutura da tabela `project_tb`
--

CREATE TABLE `project_tb` (
  `project_cd` int(11) NOT NULL,
  `project_nm` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_ds` varchar(750) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `projectLink_ds` varchar(750) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `project_tb`
--

INSERT INTO `project_tb` (`project_cd`, `project_nm`, `project_ds`, `projectLink_ds`) VALUES
(3, 'Blank Board', 'Game created especially for #corona_jam.\n<br>\nIt is a first-person shooter based on DOOM, adding vertical movement in the main character.\n<br>\nDuring the game, the player is faced with 3 different maps, where there is no connection between them other than the grandiose VR (which is the object that makes the bridge between the worlds), But... Where is all this happening? Play to the end and discover the big twist.\n<br>\nNOTE: Just a Sketch Game.', 'https://gamejolt.com/games/BlankBoard/480104');

-- --------------------------------------------------------

--
-- Estrutura da tabela `socialMediaLink_tb`
--

CREATE TABLE `socialMediaLink_tb` (
  `socialMediaLink_cd` int(11) NOT NULL,
  `socialMediaLinkBehance_ds` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socialMediaLinkGameJolt_ds` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socialMediaLinkGitHub_ds` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socialMediaLinkInstagram_ds` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socialMediaLinkSoundCloud_ds` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socialMediaLinkTwitch_ds` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socialMediaLinkYoutube_ds` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `member_id` int(11) NOT NULL,
  `socialMediaLinkItchIo_ds` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `socialMediaLink_tb`
--

INSERT INTO `socialMediaLink_tb` (`socialMediaLink_cd`, `socialMediaLinkBehance_ds`, `socialMediaLinkGameJolt_ds`, `socialMediaLinkGitHub_ds`, `socialMediaLinkInstagram_ds`, `socialMediaLinkSoundCloud_ds`, `socialMediaLinkTwitch_ds`, `socialMediaLinkYoutube_ds`, `member_id`, `socialMediaLinkItchIo_ds`) VALUES
(2, NULL, 'https://gamejolt.com/@DF_Tv', 'https://github.com/DRTFTv', 'https://www.instagram.com/df_7v/', 'https://soundcloud.com/df-box-tv', 'https://www.twitch.tv/df_7v', 'https://www.youtube.com/channel/UCr-RBer3TD3uoqGoviCC-_Q', 3, 'https://df-tv.itch.io/'),
(4, 'https://www.behance.net/jvmoura', NULL, 'https://github.com/toquiozin', NULL, NULL, 'https://www.twitch.tv/toquiozin', NULL, 4, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tag_tb`
--

CREATE TABLE `tag_tb` (
  `tag_cd` int(11) NOT NULL,
  `tag_nm` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_ds` varchar(750) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tag_tb`
--

INSERT INTO `tag_tb` (`tag_cd`, `tag_nm`, `tag_ds`) VALUES
(1, 'Battle Royale', NULL),
(2, 'FPS', NULL),
(3, 'FPA', NULL),
(4, 'TPS', NULL),
(5, 'MOBA', NULL),
(6, 'Card Games', NULL),
(7, 'Fight', NULL),
(8, 'Simulators', NULL),
(9, 'Action', NULL),
(10, 'Adventure', NULL),
(11, 'Exploration', NULL),
(12, 'Race', NULL),
(13, 'Online multiplayer', NULL),
(14, 'Online co-op multiplayer', NULL),
(15, 'Multiplayer local co-op', NULL),
(16, 'Sport', NULL),
(17, 'Sandbox', NULL),
(18, 'Open World', NULL),
(19, 'Roleplaying', NULL),
(20, 'MMORPG', NULL),
(21, 'MMOG', NULL),
(22, 'MMOSG', NULL),
(23, 'WBMMOG', NULL),
(24, 'TBS', NULL),
(25, 'RTS', NULL),
(26, 'Stealth', NULL),
(27, 'Horror Survival', NULL),
(28, 'Voxel', NULL),
(29, 'Platform', NULL),
(30, 'TopDown', NULL),
(31, 'Hack and Slash', NULL),
(32, 'Point and Click', NULL),
(33, 'Eroge', NULL),
(34, 'Beat \'em Up', NULL),
(35, '2D', NULL),
(36, '3D', NULL),
(37, 'Pixel', NULL),
(38, 'Puzzle', NULL),
(39, 'Advergame', NULL),
(40, 'Turn Based', NULL),
(41, 'Rhythm', NULL),
(42, 'Cards', NULL),
(43, 'Casual', NULL),
(44, 'Board', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `image_tb`
--
ALTER TABLE `image_tb`
  ADD PRIMARY KEY (`image_cd`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `partners_id` (`partners_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Índices para tabela `member_office_tb`
--
ALTER TABLE `member_office_tb`
  ADD PRIMARY KEY (`member_id`,`office_id`),
  ADD KEY `office_id` (`office_id`);

--
-- Índices para tabela `member_tb`
--
ALTER TABLE `member_tb`
  ADD PRIMARY KEY (`member_cd`);

--
-- Índices para tabela `office_tb`
--
ALTER TABLE `office_tb`
  ADD PRIMARY KEY (`office_cd`);

--
-- Índices para tabela `partners_tb`
--
ALTER TABLE `partners_tb`
  ADD PRIMARY KEY (`partners_cd`);

--
-- Índices para tabela `project_tag_tb`
--
ALTER TABLE `project_tag_tb`
  ADD PRIMARY KEY (`project_id`,`tag_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Índices para tabela `project_tb`
--
ALTER TABLE `project_tb`
  ADD PRIMARY KEY (`project_cd`);

--
-- Índices para tabela `socialMediaLink_tb`
--
ALTER TABLE `socialMediaLink_tb`
  ADD PRIMARY KEY (`socialMediaLink_cd`),
  ADD KEY `member_id` (`member_id`);

--
-- Índices para tabela `tag_tb`
--
ALTER TABLE `tag_tb`
  ADD PRIMARY KEY (`tag_cd`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `image_tb`
--
ALTER TABLE `image_tb`
  MODIFY `image_cd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `member_tb`
--
ALTER TABLE `member_tb`
  MODIFY `member_cd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `office_tb`
--
ALTER TABLE `office_tb`
  MODIFY `office_cd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `partners_tb`
--
ALTER TABLE `partners_tb`
  MODIFY `partners_cd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `project_tb`
--
ALTER TABLE `project_tb`
  MODIFY `project_cd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `socialMediaLink_tb`
--
ALTER TABLE `socialMediaLink_tb`
  MODIFY `socialMediaLink_cd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tag_tb`
--
ALTER TABLE `tag_tb`
  MODIFY `tag_cd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `image_tb`
--
ALTER TABLE `image_tb`
  ADD CONSTRAINT `image_tb_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project_tb` (`project_cd`),
  ADD CONSTRAINT `image_tb_ibfk_2` FOREIGN KEY (`partners_id`) REFERENCES `partners_tb` (`partners_cd`),
  ADD CONSTRAINT `image_tb_ibfk_3` FOREIGN KEY (`member_id`) REFERENCES `member_tb` (`member_cd`);

--
-- Limitadores para a tabela `member_office_tb`
--
ALTER TABLE `member_office_tb`
  ADD CONSTRAINT `member_office_tb_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member_tb` (`member_cd`) ON DELETE CASCADE,
  ADD CONSTRAINT `member_office_tb_ibfk_2` FOREIGN KEY (`office_id`) REFERENCES `office_tb` (`office_cd`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `project_tag_tb`
--
ALTER TABLE `project_tag_tb`
  ADD CONSTRAINT `project_tag_tb_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project_tb` (`project_cd`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_tag_tb_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tag_tb` (`tag_cd`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `socialMediaLink_tb`
--
ALTER TABLE `socialMediaLink_tb`
  ADD CONSTRAINT `socialMediaLink_tb_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member_tb` (`member_cd`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
