-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11/08/2025 às 13:51
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `restaurante`
--
CREATE DATABASE IF NOT EXISTS `restaurante` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `restaurante`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `arearestaurante`
--

CREATE TABLE `arearestaurante` (
  `id_area` int(11) NOT NULL,
  `descricao` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `arearestaurante`
--

INSERT INTO `arearestaurante` (`id_area`, `descricao`) VALUES
(1, 'Área externa'),
(2, 'Área interna'),
(3, 'Área VIP'),
(4, 'Área fumante'),
(5, 'Área para eventos'),
(6, 'Área infantil'),
(7, 'Área gourmet'),
(8, 'Área para fumantes'),
(9, 'Área panorâmica'),
(10, 'Área reservada');

-- --------------------------------------------------------

--
-- Estrutura para tabela `atende`
--

CREATE TABLE `atende` (
  `id_atendimento` int(11) NOT NULL,
  `horarioentrada` time NOT NULL,
  `horariosaida` time DEFAULT NULL,
  `qtdpessoas` int(11) DEFAULT NULL,
  `id_garcom` int(11) NOT NULL,
  `id_mesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `atende`
--

INSERT INTO `atende` (`id_atendimento`, `horarioentrada`, `horariosaida`, `qtdpessoas`, `id_garcom`, `id_mesa`) VALUES
(1, '12:00:00', '13:30:00', 4, 1, 1),
(2, '13:00:00', '14:00:00', 2, 2, 2),
(3, '14:00:00', '15:30:00', 6, 3, 3),
(4, '12:30:00', '14:00:00', 4, 4, 4),
(5, '13:30:00', '15:00:00', 2, 5, 5),
(6, '12:00:00', '13:30:00', 8, 6, 6),
(7, '13:00:00', '14:30:00', 4, 7, 7),
(8, '14:00:00', '15:30:00', 2, 8, 8),
(9, '12:30:00', '14:00:00', 6, 9, 9),
(10, '13:00:00', '14:30:00', 4, 10, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `conta`
--

CREATE TABLE `conta` (
  `id_conta` int(11) NOT NULL,
  `data` date NOT NULL,
  `valortotal` decimal(10,2) DEFAULT NULL,
  `valorporpessoa` decimal(10,2) DEFAULT NULL,
  `id_mesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `conta`
--

INSERT INTO `conta` (`id_conta`, `data`, `valortotal`, `valorporpessoa`, `id_mesa`) VALUES
(1, '2025-08-11', 120.00, 30.00, 1),
(2, '2025-08-11', 70.00, 35.00, 2),
(3, '2025-08-11', 150.00, 25.00, 3),
(4, '2025-08-11', 120.00, 30.00, 4),
(5, '2025-08-11', 80.00, 40.00, 5),
(6, '2025-08-11', 160.00, 20.00, 6),
(7, '2025-08-11', 120.00, 30.00, 7),
(8, '2025-08-11', 70.00, 35.00, 8),
(9, '2025-08-11', 150.00, 25.00, 9),
(10, '2025-08-11', 120.00, 30.00, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `garcom`
--

CREATE TABLE `garcom` (
  `id_garcom` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `garcom`
--

INSERT INTO `garcom` (`id_garcom`, `nome`) VALUES
(1, 'João Silva'),
(2, 'Maria Souza'),
(3, 'Carlos Oliveira'),
(4, 'Ana Lima'),
(5, 'Luana Pereira'),
(6, 'Ricardo Alves'),
(7, 'Fernanda Costa'),
(8, 'Roberto Santos'),
(9, 'Patrícia Rocha'),
(10, 'Lucas Mendes');

-- --------------------------------------------------------

--
-- Estrutura para tabela `item`
--

CREATE TABLE `item` (
  `id_item` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `preco` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `item`
--

INSERT INTO `item` (`id_item`, `nome`, `preco`) VALUES
(1, 'Pizza Margherita', 30.00),
(2, 'Pizza Calabresa', 35.00),
(3, 'Espaguete à Bolonhesa', 25.00),
(4, 'Hambúrguer Clássico', 20.00),
(5, 'Batata Frita', 15.00),
(6, 'Salada Caesar', 18.00),
(7, 'Frango Grelhado', 28.00),
(8, 'Lasanha', 32.00),
(9, 'Chopp', 10.00),
(10, 'Suco Natural', 8.00),
(11, 'Sopa de Legumes', 12.00),
(12, 'Filé Mignon', 45.00),
(13, 'Peixe Grelhado', 38.00),
(14, 'Coca-Cola', 6.00),
(15, 'Refrigerante Zero', 6.00),
(16, 'Torta de Maçã', 14.00),
(17, 'Brigadeiro', 5.00),
(18, 'Água Mineral', 4.00),
(19, 'Café Expresso', 7.00),
(20, 'Sorvete de Chocolate', 12.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `itensconta`
--

CREATE TABLE `itensconta` (
  `id_itensconta` int(11) NOT NULL,
  `qtde` int(11) NOT NULL,
  `totalitem` decimal(10,2) DEFAULT NULL,
  `id_conta` int(11) NOT NULL,
  `id_item` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `itensconta`
--

INSERT INTO `itensconta` (`id_itensconta`, `qtde`, `totalitem`, `id_conta`, `id_item`) VALUES
(1, 2, 60.00, 1, 1),
(2, 1, 35.00, 2, 2),
(3, 3, 75.00, 3, 3),
(4, 2, 40.00, 4, 4),
(5, 1, 15.00, 5, 5),
(6, 2, 36.00, 6, 6),
(7, 1, 28.00, 7, 7),
(8, 2, 64.00, 8, 8),
(9, 3, 30.00, 9, 9),
(10, 1, 8.00, 10, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `mesa`
--

CREATE TABLE `mesa` (
  `id_mesa` int(11) NOT NULL,
  `comporta` int(11) NOT NULL,
  `id_area` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `mesa`
--

INSERT INTO `mesa` (`id_mesa`, `comporta`, `id_area`) VALUES
(1, 4, 1),
(2, 2, 2),
(3, 6, 3),
(4, 4, 4),
(5, 2, 5),
(6, 8, 6),
(7, 4, 7),
(8, 2, 8),
(9, 6, 9),
(10, 4, 10);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `arearestaurante`
--
ALTER TABLE `arearestaurante`
  ADD PRIMARY KEY (`id_area`);

--
-- Índices de tabela `atende`
--
ALTER TABLE `atende`
  ADD PRIMARY KEY (`id_atendimento`),
  ADD KEY `id_garcom` (`id_garcom`),
  ADD KEY `id_mesa` (`id_mesa`);

--
-- Índices de tabela `conta`
--
ALTER TABLE `conta`
  ADD PRIMARY KEY (`id_conta`),
  ADD KEY `id_mesa` (`id_mesa`);

--
-- Índices de tabela `garcom`
--
ALTER TABLE `garcom`
  ADD PRIMARY KEY (`id_garcom`);

--
-- Índices de tabela `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id_item`);

--
-- Índices de tabela `itensconta`
--
ALTER TABLE `itensconta`
  ADD PRIMARY KEY (`id_itensconta`),
  ADD KEY `id_conta` (`id_conta`),
  ADD KEY `id_item` (`id_item`);

--
-- Índices de tabela `mesa`
--
ALTER TABLE `mesa`
  ADD PRIMARY KEY (`id_mesa`),
  ADD KEY `id_area` (`id_area`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `arearestaurante`
--
ALTER TABLE `arearestaurante`
  MODIFY `id_area` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `atende`
--
ALTER TABLE `atende`
  MODIFY `id_atendimento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `conta`
--
ALTER TABLE `conta`
  MODIFY `id_conta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `garcom`
--
ALTER TABLE `garcom`
  MODIFY `id_garcom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `item`
--
ALTER TABLE `item`
  MODIFY `id_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `itensconta`
--
ALTER TABLE `itensconta`
  MODIFY `id_itensconta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `mesa`
--
ALTER TABLE `mesa`
  MODIFY `id_mesa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `atende`
--
ALTER TABLE `atende`
  ADD CONSTRAINT `atende_ibfk_1` FOREIGN KEY (`id_garcom`) REFERENCES `garcom` (`id_garcom`),
  ADD CONSTRAINT `atende_ibfk_2` FOREIGN KEY (`id_mesa`) REFERENCES `mesa` (`id_mesa`);

--
-- Restrições para tabelas `conta`
--
ALTER TABLE `conta`
  ADD CONSTRAINT `conta_ibfk_1` FOREIGN KEY (`id_mesa`) REFERENCES `mesa` (`id_mesa`);

--
-- Restrições para tabelas `itensconta`
--
ALTER TABLE `itensconta`
  ADD CONSTRAINT `itensconta_ibfk_1` FOREIGN KEY (`id_conta`) REFERENCES `conta` (`id_conta`),
  ADD CONSTRAINT `itensconta_ibfk_2` FOREIGN KEY (`id_item`) REFERENCES `item` (`id_item`);

--
-- Restrições para tabelas `mesa`
--
ALTER TABLE `mesa`
  ADD CONSTRAINT `mesa_ibfk_1` FOREIGN KEY (`id_area`) REFERENCES `arearestaurante` (`id_area`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
