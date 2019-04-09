-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 12-Nov-2018 às 20:00
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
  `Usuario` varchar(10) NOT NULL,
  `Data` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `Hora` time NOT NULL,
  `id_questao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_login`
--

CREATE TABLE `tb_login` (
  `id_login` int(11) NOT NULL,
  `Usuario` varchar(15) NOT NULL,
  `email` varchar(15) NOT NULL,
  `senha` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_questao`
--

CREATE TABLE `tb_questao` (
  `Id` int(11) NOT NULL,
  `questao` varchar(5) NOT NULL,
  `Data` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `Usuario` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_questao`
--

INSERT INTO `tb_questao` (`Id`, `questao`, `Data`, `Usuario`) VALUES
(3, 'Como?', '2018-11-05 12:23:22', ''),
(4, '', '0000-00-00 00:00:00', ''),
(5, 'porqu', '0000-00-00 00:00:00', ''),
(6, '', '0000-00-00 00:00:00', ''),
(7, '', '0000-00-00 00:00:00', ''),
(8, '', '0000-00-00 00:00:00', ''),
(9, 'porqu', '0000-00-00 00:00:00', ''),
(10, 'onde?', '0000-00-00 00:00:00', ''),
(11, 'onde?', '0000-00-00 00:00:00', ''),
(12, 'onde?', '0000-00-00 00:00:00', '');

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
  ADD PRIMARY KEY (`id_login`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tb_login`
--
ALTER TABLE `tb_login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_questao`
--
ALTER TABLE `tb_questao`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
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
