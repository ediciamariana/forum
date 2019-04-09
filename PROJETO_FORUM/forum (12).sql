-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 10-Dez-2018 às 19:55
-- Versão do servidor: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `forum`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_comentario`
--

CREATE TABLE `tb_comentario` (
  `id` int(11) NOT NULL,
  `comentario` text NOT NULL,
  `Usuario` int(1) NOT NULL,
  `Data` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `Hora` time NOT NULL,
  `id_questao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_comentario`
--

INSERT INTO `tb_comentario` (`id`, `comentario`, `Usuario`, `Data`, `Hora`, `id_questao`) VALUES
(7, 'otimo!!!', 0, '0000-00-00 00:00:00', '00:00:00', 9),
(9, 'valeu!!', 0, '0000-00-00 00:00:00', '00:00:00', 9),
(14, 'fff aaaaa', 0, '2018-11-19 14:26:57', '00:00:00', 5),
(16, 'porque', 0, '0000-00-00 00:00:00', '00:00:00', 3),
(28, 'otimo ', 0, '0000-00-00 00:00:00', '00:00:00', 15),
(29, 'legal', 0, '0000-00-00 00:00:00', '00:00:00', 15),
(30, 'bom', 0, '0000-00-00 00:00:00', '00:00:00', 12),
(32, 'o processador  Ã© cÃ©rebro do pc.', 0, '0000-00-00 00:00:00', '00:00:00', 16),
(34, 'bom', 0, '0000-00-00 00:00:00', '00:00:00', 11),
(36, 'bom', 0, '0000-00-00 00:00:00', '00:00:00', 3),
(37, 'boa questao', 0, '0000-00-00 00:00:00', '00:00:00', 17),
(38, 'o processador Ã© um ci', 0, '0000-00-00 00:00:00', '00:00:00', 19),
(39, 'otimo', 0, '0000-00-00 00:00:00', '00:00:00', 21),
(40, 'PHP Ã© bem legal mesmo.      ', 14, '2018-12-06 16:30:06', '00:00:00', 22),
(41, 'Vamos programar em PHP.', 14, '2018-12-06 16:36:22', '00:00:00', 22),
(42, '122', 0, '2018-12-10 13:28:51', '00:00:00', 9),
(43, 'EEE', 0, '2018-12-10 13:40:24', '00:00:00', 11),
(44, 'YYYY', 0, '2018-12-10 13:41:49', '00:00:00', 21),
(45, '444', 18, '2018-12-10 13:53:38', '00:00:00', 21),
(46, '7777', 18, '2018-12-10 13:53:45', '00:00:00', 21),
(47, '444', 0, '2018-12-10 13:55:02', '00:00:00', 11),
(48, '4444', 0, '2018-12-10 13:55:13', '00:00:00', 23),
(49, '444', 0, '2018-12-10 13:55:17', '00:00:00', 23),
(50, '1222', 14, '2018-12-10 13:55:47', '00:00:00', 23),
(51, '1122', 14, '2018-12-10 13:56:02', '00:00:00', 11),
(52, '123', 14, '2018-12-10 14:00:00', '00:00:00', 10),
(53, '123', 0, '2018-12-10 14:13:15', '00:00:00', 11),
(54, 'sim funciona', 14, '2018-12-10 14:41:06', '00:00:00', 31),
(55, '122', 14, '2018-12-10 14:51:50', '00:00:00', 32),
(56, '122', 14, '2018-12-10 14:52:03', '00:00:00', 32),
(57, '1223', 14, '2018-12-10 14:52:25', '00:00:00', 11),
(58, '123', 14, '2018-12-10 14:54:59', '00:00:00', 9),
(59, '123', 14, '2018-12-10 14:55:34', '00:00:00', 11),
(60, '1233', 14, '2018-12-10 14:55:46', '00:00:00', 9),
(61, '12333', 14, '2018-12-10 15:19:36', '00:00:00', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_login`
--

CREATE TABLE `tb_login` (
  `id` int(11) NOT NULL,
  `Usuario` varchar(15) NOT NULL,
  `email` varchar(15) NOT NULL,
  `senha` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_login`
--

INSERT INTO `tb_login` (`id`, `Usuario`, `email`, `senha`) VALUES
(14, 'diego', 'diego@ifrn', 123),
(15, 'edicia', 'dd@yhh', 123),
(16, 'joao', 'diego@ifrn', 123),
(17, 'carlos', 'dd@yhh', 123),
(18, '', '', 0),
(19, '', '', 0),
(20, 'paulo', 'dd@yhh', 123),
(21, 'wlad', 'wlad@ifrn', 123),
(22, 'julia', 'ju@ig', 123),
(23, '', '', 0),
(24, '', '', 0),
(25, '', '', 0),
(26, 'diego', 'dd@yhh', 123);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_questao`
--

CREATE TABLE `tb_questao` (
  `Id` int(11) NOT NULL,
  `questao` varchar(255) NOT NULL,
  `Data` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `Usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_questao`
--

INSERT INTO `tb_questao` (`Id`, `questao`, `Data`, `Usuario`) VALUES
(3, 'Como?', '2018-11-05 12:23:22', 0),
(5, 'porqu', '0000-00-00 00:00:00', 0),
(9, 'porqu', '0000-00-00 00:00:00', 0),
(10, 'onde?', '0000-00-00 00:00:00', 0),
(11, 'onde?', '0000-00-00 00:00:00', 0),
(12, 'onde?', '0000-00-00 00:00:00', 0),
(15, 'cujo?', '0000-00-00 00:00:00', 0),
(16, ' O qu', '0000-00-00 00:00:00', 0),
(17, 'porqu', '0000-00-00 00:00:00', 0),
(18, 'onde?', '0000-00-00 00:00:00', 0),
(19, 'O que', '0000-00-00 00:00:00', 0),
(20, 'cujo?', '0000-00-00 00:00:00', 0),
(21, 'quai os tipos de memÃ³rias?', '0000-00-00 00:00:00', 0),
(22, 'A sessÃ£o funciona mesmo?', '2018-12-06 16:29:37', 0),
(23, 'Deu certo a data e hora?', '2018-12-10 14:00:47', 0),
(24, 'o que Ã© universo?', '2018-12-10 14:42:08', 0),
(25, 'A sessÃ£o funciona mesmo?', '2018-12-10 14:42:03', 0),
(26, 'o que Ã© cookie?', '2018-12-10 14:29:00', 14),
(27, 'o que Ã© universo?', '2018-12-10 14:41:27', 0),
(28, 'A sessÃ£o funciona mesmo?', '2018-12-10 14:41:22', 0),
(29, 'como?', '2018-12-10 14:41:35', 0),
(30, 'onde?', '2018-12-10 14:40:10', 14),
(31, 'A sessÃ£o funciona mesmo?', '2018-12-10 14:40:44', 14),
(32, 'A sessÃ£o funciona mesmo?', '2018-12-10 14:44:17', 21),
(33, 'A sessÃ£o funciona mesmo?', '2018-12-10 15:19:26', 14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_comentario`
--
ALTER TABLE `tb_comentario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_questao` (`id_questao`);

--
-- Indexes for table `tb_login`
--
ALTER TABLE `tb_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_questao`
--
ALTER TABLE `tb_questao`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_comentario`
--
ALTER TABLE `tb_comentario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `tb_login`
--
ALTER TABLE `tb_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `tb_questao`
--
ALTER TABLE `tb_questao`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `tb_comentario`
--
ALTER TABLE `tb_comentario`
  ADD CONSTRAINT `tb_comentario_ibfk_1` FOREIGN KEY (`id_questao`) REFERENCES `tb_questao` (`Id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
