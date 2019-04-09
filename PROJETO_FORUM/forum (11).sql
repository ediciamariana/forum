-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 06-Dez-2018 às 20:49
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
(41, 'Vamos programar em PHP.', 14, '2018-12-06 16:36:22', '00:00:00', 22);

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
(20, 'paulo', 'dd@yhh', 123);

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
(23, 'Deu certo a data?', '2018-12-06 16:31:16', 14);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `tb_login`
--
ALTER TABLE `tb_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `tb_questao`
--
ALTER TABLE `tb_questao`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
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
