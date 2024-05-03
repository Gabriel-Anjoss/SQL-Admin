-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25/04/2024 às 20:15
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `recursos_humanos`
--

-- --------------------------------------------------------
create Database `recursos_humanos`;
use `recursos_humanos`;
--
-- Estrutura para tabela `cargos`
--

CREATE TABLE `cargos` (
  `CodCargo` char(2) NOT NULL,
  `Descricao` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cargos`
--

INSERT INTO `cargos` (`CodCargo`, `Descricao`) VALUES
('01', 'CEO'),
('02', 'CTO'),
('03', 'Dev Leader'),
('04', 'Secretária'),
('05', 'Cientista de Dados'),
('06', 'Designer e Ilustrador'),
('07', 'Administrador das Comnicações'),
('08', 'Analista de Dados'),
('09', 'Pesquisar Principal'),
('10', 'Agente Comunicativo');

-- --------------------------------------------------------

--
-- Estrutura para tabela `departamento`
--

CREATE TABLE `departamento` (
  `CodDepartamento` char(2) NOT NULL,
  `Descricao` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `departamento`
--

INSERT INTO `departamento` (`CodDepartamento`, `Descricao`) VALUES
('01', 'Setor de Responsabilidade Social'),
('02', 'Setor do RH'),
('03', 'Setor de Administração'),
('04', 'Setor de Marketing'),
('05', 'Setor de Desenvolvimento'),
('06', 'Setor Financeiro'),
('07', 'Setor de Data Science'),
('08', 'Setor Relab'),
('09', 'Research Area'),
('10', 'Future Lab');

-- --------------------------------------------------------

--
-- Estrutura para tabela `dependentes`
--

CREATE TABLE `dependentes` (
  `Matricula` varchar(5) NOT NULL,
  `NomeDependentes` varchar(50) NOT NULL,
  `Dt_Nascimento` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `dependentes`
--

INSERT INTO `dependentes` (`Matricula`, `NomeDependentes`, `Dt_Nascimento`) VALUES
('1001', 'Hugo Marcos Vinicius Silveira', '2006-05-08'),
('1002', 'Felipe Edson Dias', '2003-03-27'),
('1003', 'Theo Renan Danilo Araújo', '2004-09-17'),
('1004', 'Arthur Renato Yuri Melo', '2000-11-08'),
('1005', 'Luan Filipe Ryan Campos', '2000-01-20'),
('1006', 'Murilo Vicente Baptista', '2002-03-20'),
('1007', 'Roberto Levi dos Santos', '2014-08-29'),
('1008', 'Pedro Samuel Francisco Mendes', '2014-03-18'),
('1009', 'Diego Caleb Silveira', '2021-09-16'),
('1010', 'Pietro Joaquim Diego Duarte', '2015-08-14');

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `Matricula` varchar(5) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `DataNasc` date NOT NULL,
  `Nacionalidade` varchar(30) NOT NULL,
  `Sexo` char(1) NOT NULL,
  `EstadoCivil` varchar(20) NOT NULL,
  `RG` varchar(20) NOT NULL,
  `Cic` varchar(20) NOT NULL,
  `Endereco` varchar(50) NOT NULL,
  `Telefone` varchar(11) NOT NULL,
  `DataAdmissao` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `funcionarios`
--

INSERT INTO `funcionarios` (`Matricula`, `Nome`, `DataNasc`, `Nacionalidade`, `Sexo`, `EstadoCivil`, `RG`, `Cic`, `Endereco`, `Telefone`, `DataAdmissao`) VALUES
('1001', 'Igor Coronado', '1992-08-18', 'Brasileiro', 'M', 'Casado', '22.677.295-0', '976.252.040-81', 'Corso Gaetano Scirea, 50', '(11) 99404-', '2017-04-19'),
('1002', 'Cassio Ramos', '1995-04-20', 'Brasileiro', 'M', 'Casado', '35.828.111-8', '605.948.463-82', 'Rua Caetano Donizete, 760', '(69) 3666-7', '2020-05-08'),
('1003', 'Rodrigo Garro', '1985-04-24', 'Argentino', 'M', 'Solteiro', '45.427.762-3', '487.980.652-89', 'Vila Coronel Juvino Lopes, 464', '(84) 99340-', '2020-04-15'),
('1004', 'Matheus França', '1990-04-18', 'Brasileiro', 'M', 'Solteiro', '26.159.513-1', '031.780.102-38', 'Rua Ferroviário Francisco Albuquerque, 89', '(86) 99648-', '2020-06-19'),
('1005', 'Pedro Raúl', '1989-04-13', 'Brasileiro', 'M', 'Casado', '20.269.257-7', '785.782.307-44', 'Rua Padre Manoel da Nóbrega, 78', '(79) 99427-', '2019-02-12'),
('1006', 'Yuri Alberto', '1986-04-10', 'Brasileiro', 'M', 'Casado', '15.184.392-2', '681.558.301-52', 'Rua José Carlos Pace, 65', '(85) 98164-', '2022-05-21'),
('1007', 'Felix Torres', '1998-02-21', 'Equatoriano', 'M', 'Divorciado', '38.319.834-3', '244.476.058-13', 'Beco Nossa Senhora da Penha I, 76', '(27) 98421-', '2019-06-28'),
('1008', 'Angel Romero', '1996-07-03', 'Paraguaio', 'M', 'Casado', '40.286.611-3', '826.670.167-93', 'Rua Rio Dourados, 42', '(96) 98732-', '2018-04-25'),
('1009', 'Diego Palacios', '2000-10-26', 'Equatoriano', 'M', 'Solteiro', '18.992.358-1', '811.364.536-52', 'Rua Vereador Marcos Antônio Bochi, 95', '(49) 99490-', '2019-04-24'),
('1010', 'Carlos Miguel', '2001-05-03', 'Brasileiro', 'M', 'Casado', '906.449.103-80', '29.375.179-1', 'Rua Dois de Janeiro, 61', '(65) 98812-', '2021-05-21'),
('1011', 'Fausto Vera', '1995-10-26', 'Argentino', 'M', 'Casado', '14.378.594-1', '700.007.877-44', 'Rua Afonso Pena, 684', '(55) 99242-', '2024-04-04'),
('1012', 'Wesley Gonzaga', '1986-07-17', 'Brasileiro', 'M', 'Casado', '50.595.135-6', '955.383.579-10', 'Avenida Marcelino Pires, 401', '(67) 99969-', '2020-04-15'),
('1013', 'Gustavo Henrique', '1982-08-15', 'Brasileiro', 'M', 'Casado', '41.121.161-4', '783.635.341-96', 'Rua Sete, 7', '(65) 99825-', '2020-04-29'),
('1014', 'Gil Goiaba', '1985-09-26', 'Sueco', 'F', 'Divorciada', '15.003.046-0', '238.418.949-25', 'Avenida Eulálio Modesto de Oliveira, 69', '(96) 98891-', '2021-03-07'),
('1015', 'Breno Bidon', '1995-06-16', 'Brasileiro', 'M', 'Casado', '38.644.804-8', '932.232.097-43', 'Travessa Érica de Souza Batista II, 46', '(27) 98916-', '2021-04-25');

-- --------------------------------------------------------

--
-- Estrutura para tabela `lotação`
--

CREATE TABLE `lotação` (
  `Matricula` varchar(5) NOT NULL,
  `CodDepartamento` char(2) NOT NULL,
  `Dt_Inicio` date NOT NULL,
  `Dt_Fim` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `lotação`
--

INSERT INTO `lotação` (`Matricula`, `CodDepartamento`, `Dt_Inicio`, `Dt_Fim`) VALUES
('1001', '01', '2017-04-19', '2022-08-19'),
('1002', '02', '2015-05-20', '2023-05-07'),
('1003', '03', '2013-02-13', '2023-05-07'),
('1004', '04', '2016-07-15', '2023-05-07'),
('1005', '05', '2023-10-12', '2026-12-17'),
('1006', '06', '2005-02-18', '2023-05-07'),
('1007', '07', '2006-04-19', '2023-05-07'),
('1008', '08', '2022-03-14', '2023-05-07'),
('1009', '09', '2018-11-28', '2023-05-07'),
('1010', '10', '2014-03-19', '2023-05-07'),
('1011', '01', '2014-03-15', '2023-05-07'),
('1012', '02', '2023-05-16', '2026-12-17'),
('1013', '03', '2023-05-16', '2026-12-17'),
('1014', '04', '2015-05-29', '2023-05-07'),
('1015', '05', '2015-02-09', '2023-05-07');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ocupacao`
--

CREATE TABLE `ocupacao` (
  `Matricula` varchar(5) NOT NULL,
  `CodCargo` char(2) NOT NULL,
  `Dt_Inicio` date NOT NULL,
  `Dt_Fim` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `ocupacao`
--

INSERT INTO `ocupacao` (`Matricula`, `CodCargo`, `Dt_Inicio`, `Dt_Fim`) VALUES
('1001', '01', '2018-05-09', '2026-05-28'),
('1002', '02', '2015-04-01', '2026-06-19'),
('1003', '03', '2013-02-13', '2023-05-07'),
('1004', '04', '2016-07-15', '2023-05-07'),
('1005', '05', '2023-10-12', '2026-12-17'),
('1006', '06', '2005-02-18', '2023-05-07'),
('1007', '07', '2006-04-19', '2023-05-07'),
('1008', '08', '2022-03-14', '2023-05-07'),
('1009', '09', '2018-11-28', '2023-05-07'),
('1010', '10', '2014-03-19', '2023-05-07'),
('1011', '01', '2014-03-15', '2023-05-07'),
('1012', '02', '2023-05-16', '2026-12-17'),
('1013', '03', '2023-05-16', '2026-12-17'),
('1014', '04', '2015-05-29', '2023-05-07'),
('1015', '05', '2015-02-09', '2023-05-07');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`CodCargo`);

--
-- Índices de tabela `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`CodDepartamento`);

--
-- Índices de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`Matricula`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
