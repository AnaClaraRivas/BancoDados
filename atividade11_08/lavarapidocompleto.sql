-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11/08/2025 às 13:24
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
-- Banco de dados: `lavarapido`
--
CREATE DATABASE IF NOT EXISTS `lavarapido` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lavarapido`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `atendimento`
--

CREATE TABLE `atendimento` (
  `codos` int(11) NOT NULL,
  `totalgeral` decimal(10,2) NOT NULL,
  `data` date NOT NULL,
  `codcarro` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `atendimento`
--

INSERT INTO `atendimento` (`codos`, `totalgeral`, `data`, `codcarro`) VALUES
(1, 50.00, '2025-08-01', NULL),
(2, 100.00, '2025-08-02', NULL),
(3, 80.00, '2025-08-03', NULL),
(4, 150.00, '2025-08-04', NULL),
(5, 60.00, '2025-08-05', NULL),
(6, 70.00, '2025-08-06', NULL),
(7, 120.00, '2025-08-07', NULL),
(8, 40.00, '2025-08-08', NULL),
(9, 90.00, '2025-08-09', NULL),
(10, 200.00, '2025-08-10', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `atendimento_servico`
--

CREATE TABLE `atendimento_servico` (
  `codatendservi` int(11) NOT NULL,
  `qtde` varchar(60) DEFAULT NULL,
  `totalserv` decimal(10,2) NOT NULL,
  `codos` int(11) DEFAULT NULL,
  `codservico` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `atendimento_servico`
--

INSERT INTO `atendimento_servico` (`codatendservi`, `qtde`, `totalserv`, `codos`, `codservico`) VALUES
(1, '1', 50.00, 1, 2),
(2, '2', 100.00, 2, 1),
(3, '1', 80.00, 3, 3),
(4, '1', 150.00, 4, 5),
(5, '1', 60.00, 5, 6),
(6, '1', 70.00, 6, 7),
(7, '1', 120.00, 7, 8),
(8, '1', 40.00, 8, 9),
(9, '1', 90.00, 9, 10),
(10, '2', 200.00, 10, 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `carro`
--

CREATE TABLE `carro` (
  `codcarro` int(11) NOT NULL,
  `ano` varchar(4) NOT NULL,
  `codcliente` int(11) DEFAULT NULL,
  `codmodelo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `carro`
--

INSERT INTO `carro` (`codcarro`, `ano`, `codcliente`, `codmodelo`) VALUES
(1, '2020', 1, 1),
(2, '2019', 2, 2),
(3, '2021', 3, 3),
(4, '2018', 4, 4),
(5, '2020', 5, 5),
(6, '2017', 6, 6),
(7, '2022', 7, 7),
(8, '2019', 8, 8),
(9, '2021', 9, 9),
(10, '2018', 10, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `codcliente` int(11) NOT NULL,
  `nome` varchar(220) NOT NULL,
  `datanascimento` date NOT NULL,
  `telefone` varchar(11) NOT NULL,
  `email` varchar(60) NOT NULL,
  `codendereco` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`codcliente`, `nome`, `datanascimento`, `telefone`, `email`, `codendereco`) VALUES
(1, 'João Silva', '1990-05-15', '11999999999', 'joao@email.com', 1),
(2, 'Maria Oliveira', '1985-09-10', '21988888888', 'maria@email.com', 2),
(3, 'Pedro Santos', '1992-11-20', '31977777777', 'pedro@email.com', 3),
(4, 'Ana Costa', '1988-03-05', '41966666666', 'ana@email.com', 4),
(5, 'Lucas Almeida', '1995-07-25', '11955555555', 'lucas@email.com', 5),
(6, 'Fernanda Lima', '1993-02-14', '21944444444', 'fernanda@email.com', 6),
(7, 'Carlos Souza', '1980-12-01', '31933333333', 'carlos@email.com', 7),
(8, 'Juliana Rocha', '1998-08-18', '41922222222', 'juliana@email.com', 8),
(9, 'André Pereira', '1987-06-09', '11911111111', 'andre@email.com', 9),
(10, 'Patrícia Mendes', '1994-04-30', '21900000000', 'patricia@email.com', 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `endereco`
--

CREATE TABLE `endereco` (
  `codendereco` int(11) NOT NULL,
  `rua` varchar(220) NOT NULL,
  `bairro` varchar(220) NOT NULL,
  `cep` varchar(8) NOT NULL,
  `num` varchar(10) NOT NULL,
  `cidade` varchar(220) NOT NULL,
  `estado` varchar(220) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `endereco`
--

INSERT INTO `endereco` (`codendereco`, `rua`, `bairro`, `cep`, `num`, `cidade`, `estado`) VALUES
(1, 'Rua das Flores', 'Centro', '01001000', '123', 'São Paulo', 'SP'),
(2, 'Av. Brasil', 'Jardim América', '01430000', '456', 'São Paulo', 'SP'),
(3, 'Rua dos Pinheiros', 'Pinheiros', '05422000', '789', 'São Paulo', 'SP'),
(4, 'Av. Paulista', 'Bela Vista', '01311000', '101', 'São Paulo', 'SP'),
(5, 'Rua Augusta', 'Consolação', '01305000', '202', 'São Paulo', 'SP'),
(6, 'Rua XV de Novembro', 'Centro', '80020010', '303', 'Curitiba', 'PR'),
(7, 'Av. Atlântica', 'Copacabana', '22021001', '404', 'Rio de Janeiro', 'RJ'),
(8, 'Rua Bahia', 'Funcionários', '30160110', '505', 'Belo Horizonte', 'MG'),
(9, 'Rua das Palmeiras', 'Boqueirão', '11055001', '606', 'Santos', 'SP'),
(10, 'Av. Getúlio Vargas', 'Centro', '30112000', '707', 'Belo Horizonte', 'MG');

-- --------------------------------------------------------

--
-- Estrutura para tabela `marca`
--

CREATE TABLE `marca` (
  `codmarca` int(11) NOT NULL,
  `marca` varchar(220) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `marca`
--

INSERT INTO `marca` (`codmarca`, `marca`) VALUES
(1, 'Toyota'),
(2, 'Honda'),
(3, 'Ford'),
(4, 'Chevrolet'),
(5, 'Volkswagen'),
(6, 'Fiat'),
(7, 'Hyundai'),
(8, 'Nissan'),
(9, 'Jeep'),
(10, 'Peugeot');

-- --------------------------------------------------------

--
-- Estrutura para tabela `modelo`
--

CREATE TABLE `modelo` (
  `codmodelo` int(11) NOT NULL,
  `modelo` varchar(220) NOT NULL,
  `codmarca` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `modelo`
--

INSERT INTO `modelo` (`codmodelo`, `modelo`, `codmarca`) VALUES
(1, 'Corolla', 1),
(2, 'Civic', 2),
(3, 'Focus', 3),
(4, 'Onix', 4),
(5, 'Golf', 5),
(6, 'Argo', 6),
(7, 'HB20', 7),
(8, 'Versa', 8),
(9, 'Compass', 9),
(10, '208', 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `servico`
--

CREATE TABLE `servico` (
  `codservico` int(11) NOT NULL,
  `servico` varchar(220) NOT NULL,
  `valor` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `servico`
--

INSERT INTO `servico` (`codservico`, `servico`, `valor`) VALUES
(1, 'Lavagem simples', 30.00),
(2, 'Lavagem completa', 50.00),
(3, 'Polimento', 80.00),
(4, 'Higienização interna', 100.00),
(5, 'Cristalização de pintura', 150.00),
(6, 'Enceramento', 60.00),
(7, 'Lavagem de motor', 70.00),
(8, 'Descontaminação de pintura', 120.00),
(9, 'Lavagem a seco', 40.00),
(10, 'Remoção de manchas', 90.00);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `atendimento`
--
ALTER TABLE `atendimento`
  ADD PRIMARY KEY (`codos`),
  ADD KEY `codcarro` (`codcarro`);

--
-- Índices de tabela `atendimento_servico`
--
ALTER TABLE `atendimento_servico`
  ADD PRIMARY KEY (`codatendservi`),
  ADD KEY `codos` (`codos`),
  ADD KEY `codservico` (`codservico`);

--
-- Índices de tabela `carro`
--
ALTER TABLE `carro`
  ADD PRIMARY KEY (`codcarro`),
  ADD KEY `codcliente` (`codcliente`),
  ADD KEY `codmodelo` (`codmodelo`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`codcliente`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `codendereco` (`codendereco`);

--
-- Índices de tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`codendereco`);

--
-- Índices de tabela `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`codmarca`);

--
-- Índices de tabela `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`codmodelo`),
  ADD KEY `codmarca` (`codmarca`);

--
-- Índices de tabela `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`codservico`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `atendimento`
--
ALTER TABLE `atendimento`
  MODIFY `codos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `atendimento_servico`
--
ALTER TABLE `atendimento_servico`
  MODIFY `codatendservi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `carro`
--
ALTER TABLE `carro`
  MODIFY `codcarro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `codcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `codendereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `marca`
--
ALTER TABLE `marca`
  MODIFY `codmarca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `modelo`
--
ALTER TABLE `modelo`
  MODIFY `codmodelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `servico`
--
ALTER TABLE `servico`
  MODIFY `codservico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `atendimento`
--
ALTER TABLE `atendimento`
  ADD CONSTRAINT `atendimento_ibfk_1` FOREIGN KEY (`codcarro`) REFERENCES `carro` (`codcarro`);

--
-- Restrições para tabelas `atendimento_servico`
--
ALTER TABLE `atendimento_servico`
  ADD CONSTRAINT `atendimento_servico_ibfk_1` FOREIGN KEY (`codos`) REFERENCES `atendimento` (`codos`),
  ADD CONSTRAINT `atendimento_servico_ibfk_2` FOREIGN KEY (`codservico`) REFERENCES `servico` (`codservico`);

--
-- Restrições para tabelas `carro`
--
ALTER TABLE `carro`
  ADD CONSTRAINT `carro_ibfk_1` FOREIGN KEY (`codcliente`) REFERENCES `cliente` (`codcliente`),
  ADD CONSTRAINT `carro_ibfk_2` FOREIGN KEY (`codmodelo`) REFERENCES `modelo` (`codmodelo`);

--
-- Restrições para tabelas `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`codendereco`) REFERENCES `endereco` (`codendereco`);

--
-- Restrições para tabelas `modelo`
--
ALTER TABLE `modelo`
  ADD CONSTRAINT `modelo_ibfk_1` FOREIGN KEY (`codmarca`) REFERENCES `marca` (`codmarca`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
