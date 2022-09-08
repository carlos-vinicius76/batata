-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01-Abr-2020 às 20:24
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `vendas`
--
CREATE DATABASE IF NOT EXISTS `vendas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `vendas`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidade`
--

CREATE TABLE `cidade` (
  `CODCID` int(11) NOT NULL,
  `NOMECID` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `UF` char(2) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `cidade`
--

INSERT INTO `cidade` (`CODCID`, `NOMECID`, `UF`) VALUES
(1, 'DOURADOS', 'MS'),
(2, 'CAMPO GRANDE', 'MS'),
(3, 'SÃO PAULO', 'SP'),
(4, 'CUIABA', 'MT'),
(5, 'FLORIANÓPOLIS', 'SC'),
(6, 'SÃO SEBASTIÃO', 'SC'),
(7, 'CAARAPÓ', 'MS'),
(8, 'BRASÍLIA', 'DF'),
(10, 'TUPÃ', 'SP'),
(11, 'SÃO JOSÉ DO RIO PRETO', 'SP'),
(12, 'APUCARANA', 'PR'),
(13, 'JARDIM', 'MS'),
(14, 'JATEI', 'MS'),
(15, 'AMAMBAI', 'MS');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `CODCLI` int(11) NOT NULL,
  `NOME` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `ENDERECO` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `CODCID` int(6) NOT NULL,
  `CEP` char(10) COLLATE utf8_bin DEFAULT NULL,
  `CPF` char(20) COLLATE utf8_bin DEFAULT NULL,
  `LOGIN` varchar(20) COLLATE utf8_bin NOT NULL,
  `SENHA` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`CODCLI`, `NOME`, `ENDERECO`, `CODCID`, `CEP`, `CPF`, `LOGIN`, `SENHA`) VALUES
(1, 'Nicolash Pereira Rodrigues', 'Rua José Germano, 1456', 1, '13971-150', '13971-150', 'nicolash', 'e8d95a51f3af4a3b134b'),
(2, 'Cauã Oliveira Azevedo', 'Rua Luís Squilace, 175', 3, '05326-010', '855.498.901-51', 'caua', 'e8d95a51f3af4a3b134b'),
(3, 'Martim Melo Araujo', 'Rua de Mizar, 429', 2, '32550-220', '421.837.827-49', 'martim', 'e8d95a51f3af4a3b134b'),
(4, 'Matheus Pinto Almeida', 'Travessa Getúlio Vargas, 1426', 4, '54250-382', NULL, 'matheus', 'e8d95a51f3af4a3b134b'),
(5, 'Estevan Pereira Cardoso', 'Travessa Maria da Penha Costa, 692', 5, '29707-190', '231.416.173-41', 'estevan', 'e8d95a51f3af4a3b134b'),
(6, 'Rebeca Sousa Fernandes', 'Avenida da Saudade, 1899', 3, '09030-030', NULL, 'rebeca', 'e8d95a51f3af4a3b134b'),
(7, 'Thaís Melo Rodrigues', 'Rua N, 1379', 11, '35900-626', '884.501.839-36', 'thais', 'e8d95a51f3af4a3b134b'),
(8, 'Matheus Martins Ribeiro', 'Rua Ubaldo Damiano, 1006', 1, '17204-281', NULL, 'matheus', 'e8d95a51f3af4a3b134b'),
(9, 'Leonardo Barros Melo', 'Rua Treze de Maio, 808', 2, '65900-220', '735.643.235-89', 'leonardo', 'e8d95a51f3af4a3b134b'),
(10, 'Emilly Rocha Ribeiro', 'Passagem Santa Luzia, 221', 1, '66117-060', '613.666.706-12', 'emilly', 'e8d95a51f3af4a3b134b'),
(11, 'Luan Goncalves Melo', 'Rua Chapada Velha, 944', 3, '05728-070', '656.106.888-25', 'luan', 'e8d95a51f3af4a3b134b'),
(12, 'Júlia Gomes Araujo', 'Rua Alamanda, 751', 3, '06728-320', '184.206.138-00', 'julia', 'e8d95a51f3af4a3b134b'),
(13, 'Camila Rodrigues Barbosa', 'Rua dos Cumarus, 1977', 2, '38703-678', '973.600.869-06', 'camila', 'e8d95a51f3af4a3b134b'),
(14, 'Melissa Araujo Almeida', 'Rua 104A, 1820', 1, '74083-310', '677.324.633-40', 'melissa', 'e8d95a51f3af4a3b134b'),
(15, 'Laura Barros Rodrigues', 'Rua Doutor Muraí, 697', 3, '03159-080', '670.936.770-37', 'laura', 'e8d95a51f3af4a3b134b');

-- --------------------------------------------------------

--
-- Estrutura da tabela `itempedido`
--

CREATE TABLE `itempedido` (
  `NUMPED` int(11) NOT NULL,
  `CODPROD` int(11) NOT NULL,
  `QTDADE` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `itempedido`
--

INSERT INTO `itempedido` (`NUMPED`, `CODPROD`, `QTDADE`) VALUES
(1, 1, 1),
(1, 3, 1),
(1, 10, 2),
(2, 4, 1),
(3, 2, 1),
(3, 3, 1),
(4, 9, 5),
(4, 11, 2),
(4, 12, 2),
(5, 2, 2),
(5, 11, 2),
(5, 18, 1),
(5, 20, 2),
(6, 5, 1),
(7, 7, 1),
(8, 8, 1),
(10, 2, 2),
(10, 12, 3),
(10, 17, 1),
(10, 18, 1),
(10, 19, 1),
(13, 8, 1),
(13, 19, 1),
(13, 20, 1),
(14, 13, 1),
(14, 17, 1),
(15, 15, 20),
(15, 16, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `NUMPED` int(11) NOT NULL,
  `ENTREGA` smallint(6) DEFAULT NULL,
  `CODCLI` int(11) DEFAULT NULL,
  `CODVEND` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`NUMPED`, `ENTREGA`, `CODCLI`, `CODVEND`) VALUES
(1, 5, 1, 3),
(2, 2, 2, 5),
(3, 10, 4, 1),
(4, 20, 1, 2),
(5, 2, 8, 9),
(6, 2, 2, 4),
(7, 10, 5, 7),
(8, 2, 14, 11),
(9, 5, 15, 15),
(10, 5, 15, 4),
(11, 20, 9, 10),
(12, 10, 9, 11),
(13, 1, 5, 6),
(14, 1, 13, 9),
(15, 20, 12, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `CODPROD` int(11) NOT NULL,
  `DESCRICAO` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `UNIDADE` char(3) COLLATE utf8_bin DEFAULT NULL,
  `VALOR_UN` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`CODPROD`, `DESCRICAO`, `UNIDADE`, `VALOR_UN`) VALUES
(1, 'MATA CUPIM', 'UN', '25.00'),
(2, 'GLIFOSSATO', 'UN', '12.00'),
(3, 'RANDAP', 'UN', '33.00'),
(4, 'SERRA CIRCULAR', 'UN', '200.00'),
(5, 'ROÇADEIRA', 'UN', '378.00'),
(6, 'MOTO SERRA', 'UN', '400.00'),
(7, 'CORTADOR DE GRAMA', 'UN', '800.00'),
(8, 'PÁ DE PONTA', 'UN', '70.00'),
(9, 'VACINA BDD', 'CX', '299.00'),
(10, 'VACINA DDD', 'CX', '200.00'),
(11, 'MASCARA', 'UN', '5.00'),
(12, 'MASCARA SILICONE', 'UN', '10.00'),
(13, 'PINO CORTADOR', 'UN', '5.00'),
(14, 'ROSCA SERRA 22', 'UN', '12.00'),
(15, 'MANGUEIRA 04', 'M', '25.00'),
(16, 'BICO MANGUEIRA', 'UN', '3.00'),
(17, 'ROUPA PROTECAO', 'UN', '53.00'),
(18, 'PULVERIZADOR', 'UN', '76.00'),
(19, 'CHAPEU DE PALHA', 'UN', '34.00'),
(20, 'LUVA DE BORRACHA', 'UN', '2.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `setor`
--

CREATE TABLE `setor` (
  `CODSETOR` int(11) NOT NULL,
  `NOMESETOR` varchar(50) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `setor`
--

INSERT INTO `setor` (`CODSETOR`, `NOMESETOR`) VALUES
(1, 'JARDIM'),
(2, 'VENENOS'),
(3, 'PEÇAS'),
(4, 'FERRAMENTAS'),
(5, 'VACINAS'),
(6, 'VESTUÁRIO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendedor`
--

CREATE TABLE `vendedor` (
  `CODVEND` int(11) NOT NULL,
  `NOMEVEND` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `CODSETOR` int(6) DEFAULT NULL,
  `SALARIO` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `vendedor`
--

INSERT INTO `vendedor` (`CODVEND`, `NOMEVEND`, `CODSETOR`, `SALARIO`) VALUES
(1, 'ANTONIO CARLOS DA SILVA', 1, '500.00'),
(2, 'ROGERIO SANTOS AMADO', 1, '550.00'),
(3, 'JOÃO FLORISVALDO JESUS', 2, '800.00'),
(4, 'PEDRO CELESTINO VENÂNCIO', 3, '1000.00'),
(5, 'JAIR COSTA', 3, '1000.00'),
(6, 'ELIZA DOS ANJOS', 4, '700.00'),
(7, 'DENIS OTTANO', 5, '600.00'),
(8, 'RONEI ARAÚJO BATISTA', 6, '400.00'),
(9, 'JAMES CHEN VILAREAL', 6, '400.00'),
(10, 'FABIO BENDITO REIS', 4, '700.00'),
(11, 'EDILSON NOGUEIRA', 2, '800.00'),
(12, 'RODOLFO DOS SANTOS', 4, '450.00'),
(13, 'CRISTIANE ANTUNES ROCHA', 3, '450.00'),
(14, 'CRISLAINE RUBENS AZEVEDO', 1, '500.00'),
(15, 'JADER DE AMARO', 4, '1500.00');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cidade`
--
ALTER TABLE `cidade`
  ADD PRIMARY KEY (`CODCID`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`CODCLI`);

--
-- Índices para tabela `itempedido`
--
ALTER TABLE `itempedido`
  ADD PRIMARY KEY (`NUMPED`,`CODPROD`);

--
-- Índices para tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`NUMPED`),
  ADD KEY `FK_PED_CODCLI` (`CODCLI`),
  ADD KEY `FK_PED_CODVEND` (`CODVEND`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`CODPROD`);

--
-- Índices para tabela `setor`
--
ALTER TABLE `setor`
  ADD PRIMARY KEY (`CODSETOR`);

--
-- Índices para tabela `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`CODVEND`),
  ADD KEY `FK_VEND_CODSETOR` (`CODSETOR`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cidade`
--
ALTER TABLE `cidade`
  MODIFY `CODCID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `CODCLI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `NUMPED` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `CODPROD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `setor`
--
ALTER TABLE `setor`
  MODIFY `CODSETOR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `vendedor`
--
ALTER TABLE `vendedor`
  MODIFY `CODVEND` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `FK_CLI_CODCID` FOREIGN KEY (`CODCID`) REFERENCES `cidade` (`CODCID`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `itempedido`
--
ALTER TABLE `itempedido`
  ADD CONSTRAINT `FK_ITEM_CODPROD` FOREIGN KEY (`CODPROD`) REFERENCES `produto` (`CODPROD`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ITEM_NUMPED` FOREIGN KEY (`NUMPED`) REFERENCES `pedido` (`NUMPED`);

--
-- Limitadores para a tabela `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `FK_PED_CODCLI` FOREIGN KEY (`CODCLI`) REFERENCES `cliente` (`CODCLI`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PED_CODVEND` FOREIGN KEY (`CODVEND`) REFERENCES `vendedor` (`CODVEND`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `vendedor`
--
ALTER TABLE `vendedor`
  ADD CONSTRAINT `FK_VEND_CODSETOR` FOREIGN KEY (`CODSETOR`) REFERENCES `setor` (`CODSETOR`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
