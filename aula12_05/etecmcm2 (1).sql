-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12-Maio-2025 às 14:00
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `etecmcm2`
--
CREATE DATABASE IF NOT EXISTS `etecmcm2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `etecmcm2`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nome_cat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nome_cat`) VALUES
(1, 'limpeza'),
(2, 'frios'),
(3, 'oculos'),
(4, 'carnes'),
(5, 'enlatados'),
(6, 'eletronicos'),
(7, 'perfumaria'),
(8, 'bebidas'),
(9, 'hortifrut'),
(10, 'congelados');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id_produto` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `quant` int(11) DEFAULT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id_produto`, `nome`, `preco`, `quant`, `marca`, `id_categoria`) VALUES
(1, 'Sabão em pó', 25.00, 4, 'OMO', 1),
(2, 'Detergente', 3.00, 25, 'Ypê', 1),
(3, 'Mussarela', 10.00, 80, 'Sadia', 2),
(4, 'Oculos', 200.00, 1, 'Extra Otica', 3),
(5, 'Carne de panela', 25.00, 7, 'Perdigão', 4),
(6, 'Milho', 4.00, 55, 'Qualitá', 5),
(7, 'Celular', 900.00, 67, 'Samsung', 6),
(8, 'Body Splash Floratta Blue', 90.00, 59, 'O boticario', 7),
(9, 'Refrigerante', 3.00, 478, 'Guaraná Jesus', 8),
(10, 'Uva', 10.00, 92, 'turma da Mônica', 9),
(11, 'batata frita', 30.00, 58, 'Aurora', 10);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
