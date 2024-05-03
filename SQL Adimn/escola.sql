-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24-Abr-2024 às 19:34
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `escola`
--
create Database `escola`;
use `escola`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE `alunos` (
  `Matricula` varchar(5) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Endereco` varchar(50) NOT NULL,
  `Cidade` varchar(30) NOT NULL,
  `CodCurso` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`Matricula`, `Nome`, `Endereco`, `Cidade`, `CodCurso`) VALUES
('1001', 'Marcos Moraes', 'Rua Pe Roque, 2057', 'Mogi Mirim', 1),
('1002', 'Maria Conceição Lopes', 'Rua Araras 23', 'Mogi Guaçu ', 1),
('1003', 'Ana Carina Lopes', 'Rua Peraltas, 222', 'Santos', 1),
('1004', 'Carlos Aguiar', 'Rua Botafogo, 33', 'Santos', 1),
('1005', 'André Luiz dos Santos', 'Rua Lopes Conte, 3343', 'Sapucai', 1),
('1006', 'Pedro Antonio Pimenta', 'Rua Altair Lopes, 33', 'Itapira', 2),
('1007', 'Rita de Cássia da Silva', 'Rua Eletromais, 33', 'Itapira', 2),
('1008', 'Caique dos Santos', 'Rua das Amoreiras, 55', 'Campinas', 2),
('1009', 'Carlos Tavares', 'Rua Peixe, 99', 'Santos', 2),
('1010', 'Antonio Carlos Caetano', 'Rua Josefina Alface, 987', 'Campinas', 2),
('1011', 'Ricardo Moreira', 'Rua do Pinhal. 332', 'Aparecida', 3),
('1012', 'Richardson S. P. Campeao', 'Rua do Tricolor, 433', 'São Paulo', 3),
('1013', 'Richardson S. P. Campeao', 'Rua do Tricolor, 433', 'São Paulo', 3),
('1014', 'Carina Melo', 'Rua Osvaldo Ramos, 88', 'Mogi Guaçu ', 3),
('1015', 'Pedro Mello', 'Rua Itororo. 3999', 'Mogi Mirim', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `CodCurso` char(2) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `CodDisc1` char(2) NOT NULL,
  `CodDisc2` char(2) NOT NULL,
  `CodDisc3` char(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`CodCurso`, `Nome`, `CodDisc1`, `CodDisc2`, `CodDisc3`) VALUES
('01', 'Auxiliar de Informática', '11', '12', '13'),
('02', 'Programador de Computadores', '21', '22', '23'),
('03', 'Técnico em Inofrmática', '31', '32', '33');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `CodDisciplina` char(2) NOT NULL,
  `NomeDisciplina` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `disciplina`
--

INSERT INTO `disciplina` (`CodDisciplina`, `NomeDisciplina`) VALUES
('11', 'Banco de Dados'),
('12', 'Lógica de Programação'),
('13', 'Desenvolvimento de Software 1'),
('21', 'Banco de Dados 2'),
('22', 'Desenvolvimento de Software 2'),
('23', 'Programação de Computadores 1'),
('31', 'Banco de Dados 3'),
('32', 'Programação de Computadores 2'),
('33', 'Desenvolvimento de Software 3');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`Matricula`);

--
-- Índices para tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`CodCurso`);

--
-- Índices para tabela `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`CodDisciplina`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
