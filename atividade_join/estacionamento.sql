-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10/09/2025 às 23:06
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `estacionamento`
--
CREATE DATABASE IF NOT EXISTS `estacionamento` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `estacionamento`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `andar`
--

CREATE TABLE `andar` (
  `codlugar` int(11) NOT NULL,
  `capacidade` int(11) DEFAULT NULL,
  `andar` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `andar`
--

INSERT INTO `andar` (`codlugar`, `capacidade`, `andar`) VALUES
(1, 50, 'Subsolo 1'),
(2, 60, 'Subsolo 2'),
(3, 40, 'Térreo'),
(4, 30, '1º Andar'),
(5, 25, '2º Andar');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `codcliente` int(11) NOT NULL,
  `cpf` varchar(12) DEFAULT NULL,
  `datanasci` datetime DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`codcliente`, `cpf`, `datanasci`, `nome`) VALUES
(1, '12345678901', '1985-05-12 00:00:00', 'Byanca Lourenço'),
(2, '23456789012', '1990-07-23 00:00:00', 'Beatriz Krisan'),
(3, '34567890123', '1988-03-14 00:00:00', 'João Vinicius'),
(4, '45678901234', '1975-09-01 00:00:00', 'Ana Clara'),
(5, '56789012345', '2000-11-30 00:00:00', 'William Rivas'),
(6, '67890123456', '1995-01-18 00:00:00', 'Nicole Modesto'),
(7, '78901234567', '1982-04-07 00:00:00', 'Thaís Abe'),
(8, '89012345678', '1998-12-25 00:00:00', 'Vitor Lopes'),
(9, '90123456789', '1993-10-10 00:00:00', 'Patrícia Granja');

-- --------------------------------------------------------

--
-- Estrutura para tabela `estaciona`
--

CREATE TABLE `estaciona` (
  `codestaciona` int(11) NOT NULL,
  `horasaida` datetime DEFAULT NULL,
  `horaentrada` datetime DEFAULT NULL,
  `datasaida` datetime DEFAULT NULL,
  `dataentrada` datetime DEFAULT NULL,
  `codveiculo` int(11) DEFAULT NULL,
  `codlugar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `estaciona`
--

INSERT INTO `estaciona` (`codestaciona`, `horasaida`, `horaentrada`, `datasaida`, `dataentrada`, `codveiculo`, `codlugar`) VALUES
(1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2025-08-01 00:00:00', '2025-08-01 00:00:00', 1, 1),
(2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2025-08-01 00:00:00', '2025-08-01 00:00:00', 2, 2),
(3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2025-08-01 00:00:00', '2025-08-01 00:00:00', 3, 3),
(4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2025-08-01 00:00:00', '2025-08-01 00:00:00', 4, 4),
(5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2025-08-01 00:00:00', '2025-08-01 00:00:00', 5, 5),
(6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2025-08-01 00:00:00', '2025-08-01 00:00:00', 6, 1),
(7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2025-08-01 00:00:00', '2025-08-01 00:00:00', 7, 2),
(8, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2025-08-01 00:00:00', '2025-08-01 00:00:00', 8, 3),
(9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2025-08-01 00:00:00', '2025-08-01 00:00:00', 9, 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `modelo`
--

CREATE TABLE `modelo` (
  `codmodelo` int(11) NOT NULL,
  `modelo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `modelo`
--

INSERT INTO `modelo` (`codmodelo`, `modelo`) VALUES
(1, 'Fiat Uno'),
(2, 'Chevrolet Onix'),
(3, 'Volkswagen Gol'),
(4, 'Fusca'),
(5, 'Toyota Corolla'),
(6, 'Honda Civic'),
(7, 'Hyundai HB20'),
(8, 'Jeep Renegade'),
(9, 'Nissan Kicks');

-- --------------------------------------------------------

--
-- Estrutura para tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `codveiculo` int(11) NOT NULL,
  `placa` varchar(7) DEFAULT NULL,
  `cor` varchar(20) DEFAULT NULL,
  `codcliente` int(11) DEFAULT NULL,
  `codmodelo` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `veiculo`
--

INSERT INTO `veiculo` (`codveiculo`, `placa`, `cor`, `codcliente`, `codmodelo`, `ano`) VALUES
(1, 'ABC1234', 'Preto', 1, 1, 2010),
(2, 'DEF5678', 'Branco', 2, 2, 2015),
(3, 'GHI9012', 'Vermelho', 3, 3, 2012),
(4, 'JKL3456', 'Roxo', 4, 4, 2018),
(5, 'MNO7890', 'Azul', 5, 5, 2020),
(6, 'PQR1234', 'Verde', 6, 6, 2016),
(7, 'STU5678', 'roxo escuro', 7, 7, 2019),
(8, 'VWX9012', 'Preto', 8, 8, 2017),
(9, 'YZA3456', 'Branco', 9, 9, 2021);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `andar`
--
ALTER TABLE `andar`
  ADD PRIMARY KEY (`codlugar`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`codcliente`);

--
-- Índices de tabela `estaciona`
--
ALTER TABLE `estaciona`
  ADD PRIMARY KEY (`codestaciona`),
  ADD KEY `codveiculo` (`codveiculo`),
  ADD KEY `codlugar` (`codlugar`);

--
-- Índices de tabela `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`codmodelo`);

--
-- Índices de tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`codveiculo`),
  ADD KEY `codcliente` (`codcliente`),
  ADD KEY `codmodelo` (`codmodelo`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `andar`
--
ALTER TABLE `andar`
  MODIFY `codlugar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `codcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `estaciona`
--
ALTER TABLE `estaciona`
  MODIFY `codestaciona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `modelo`
--
ALTER TABLE `modelo`
  MODIFY `codmodelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `veiculo`
--
ALTER TABLE `veiculo`
  MODIFY `codveiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `estaciona`
--
ALTER TABLE `estaciona`
  ADD CONSTRAINT `estaciona_ibfk_1` FOREIGN KEY (`codveiculo`) REFERENCES `veiculo` (`codveiculo`),
  ADD CONSTRAINT `estaciona_ibfk_2` FOREIGN KEY (`codlugar`) REFERENCES `andar` (`codlugar`);

--
-- Restrições para tabelas `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `veiculo_ibfk_1` FOREIGN KEY (`codcliente`) REFERENCES `cliente` (`codcliente`),
  ADD CONSTRAINT `veiculo_ibfk_2` FOREIGN KEY (`codmodelo`) REFERENCES `modelo` (`codmodelo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
