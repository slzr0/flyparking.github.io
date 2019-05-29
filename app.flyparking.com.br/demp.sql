-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 28-Maio-2019 às 20:54
-- Versão do servidor: 5.6.41-84.1
-- versão do PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flpusr_app_db`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aeroportos_app`
--

CREATE TABLE `aeroportos_app` (
  `id` int(11) NOT NULL,
  `nome` varchar(70) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `uf` int(11) NOT NULL,
  `lat` varchar(20) NOT NULL,
  `long` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `aeroportos_app`
--

INSERT INTO `aeroportos_app` (`id`, `nome`, `uf`, `lat`, `long`) VALUES
(1, 'Aeroporto Internacional de São Paulo - Guarulhos GRU', 1, '-23.4346', '-46.4781'),
(2, 'Aeroporto Internacional de Campinas Viracopos', 1, '-23.0082', '-47.1376'),
(3, 'Aeroporto de São Paulo - Congonhas', 1, '-23.6273', '-46.6566 '),
(4, 'Aeroporto Internacional do Rio de Janeiro - Galeão', 2, '-22.8134', '-43.2494'),
(5, 'Aeroporto do Rio de Janeiro - Santos Dumont', 2, '0', ''),
(6, 'Aeroporto de Jacarepaguá - Rio de Janeiro', 2, '0', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estacionamentos_app`
--

CREATE TABLE `estacionamentos_app` (
  `id` int(11) NOT NULL,
  `aeroporto` int(11) NOT NULL,
  `nome` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `lat` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lng` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `plano` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `estacionamentos_app`
--

INSERT INTO `estacionamentos_app` (`id`, `aeroporto`, `nome`, `lat`, `lng`, `plano`) VALUES
(1, 1, 'Ultra Park', '-23.449463', '-46.499966', 1),
(2, 1, 'EconoPark', '-23.45541', '-46.486151 ', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `uf_app`
--

CREATE TABLE `uf_app` (
  `id` int(11) NOT NULL,
  `nome` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `uf_app`
--

INSERT INTO `uf_app` (`id`, `nome`) VALUES
(1, 'SP'),
(2, 'RJ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios_app`
--

CREATE TABLE `usuarios_app` (
  `id` int(11) NOT NULL,
  `nome` varchar(35) NOT NULL,
  `sobrenome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `data_criacao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios_app`
--

INSERT INTO `usuarios_app` (`id`, `nome`, `sobrenome`, `email`, `senha`, `cpf`, `telefone`, `data_criacao`) VALUES
(39, 'Anderson', 'Salazar', 'andersonluissalazar@outlook.com', '8d123cfbc2784ca4072f095487732be9', '475.428.958-77', '(11) 96058-1324', '2018-04-09'),
(40, 'Anderson', 'Salazar', 'anderson@goowords.com.br', 'e10adc3949ba59abbe56e057f20f883e', '475.428.958-75', '(11) 96058-1324', '2018-04-09'),
(41, 'Larissa Akemi', 'Yamasaki ', 'akemizinha_@hotmail.com', '4b2b9a823e964de9a8f91eff3ff2fd97', '427.647.748-42', '(11) 95145-4743', '2018-04-15'),
(42, 'Dunha', 'Junior', 'dunha@dunha.com.br', 'e10adc3949ba59abbe56e057f20f883e', '123.456.789-11', '(11) 91234-5678', '2018-05-08'),
(43, 'Anderson', 'Salazar', 'anderson@flyparking.com.br', 'e10adc3949ba59abbe56e057f20f883e', '475.428.958-79', '(11) 96058-1324', '2018-06-07'),
(44, 'Anderson', 'Salazar', 'contato@flyparking.com.br', 'e10adc3949ba59abbe56e057f20f883e', '475.428.958-98', '(11) 97785-8427', '2018-07-17'),
(45, 'Anderson', 'Salazar', 'anderson.s@goowords.com.br', 'e10adc3949ba59abbe56e057f20f883e', '475.428.958-93', '(11) 97785-8427', '2018-07-23'),
(46, 'Marcelo', 'Xavier', 'xavier@goowords.com.br', 'e10adc3949ba59abbe56e057f20f883e', '475.484.649-46', '(11) 96767-8767', '2018-08-06'),
(47, 'Antonio', 'Nunes', 'tonho@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '475.428.958-72', '(11) 97785-8427', '2018-09-26'),
(48, 'Raquel', 'Freire', 'moterraqwel@gmail.com', '57d957f71f4fdd46c0c10fba04c10066', '255.688.497-01', '(11) 97626-2398', '2018-09-29'),
(49, 'Dunha', 'Irmao do geleia ', 'd@d.com', 'e10adc3949ba59abbe56e057f20f883e', '123.456.987-84', '(11) 97785-4846', '2019-01-18'),
(50, 'Marco', 'Velho', 'marco@fly.com', 'e10adc3949ba59abbe56e057f20f883e', '475.428.958-76', '(11) 97785-8427', '2019-02-03'),
(51, 'Rafael', 'Rossini', 'webrossini@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '054.356.169-05', '(11) 98217-3778', '2019-02-03'),
(52, 'Brumadinho', 'Marq', 'bru@bru.com', 'e10adc3949ba59abbe56e057f20f883e', '427.649.494-57', '(11) 97646-4349', '2019-02-03'),
(53, 'Rodrigo', 'Nascimento', 'rodrigorsnr@gmail.com', 'a6d81337efe28008e18b53082468845a', '285.720.088-96', '(11) 96363-2891', '2019-02-05'),
(54, 'Anderson', 'Salazar', 'andersonepu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '646.784.676-49', '(11) 97785-8427', '2019-02-12'),
(55, 'Dunha', 'Marco ', 'dd@d.com', 'e10adc3949ba59abbe56e057f20f883e', '558.586.088-86', '(11) 85860-6068', '2019-02-14'),
(56, 'Leandro', 'Sousa', 'leo.sousa3108@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', '111.555.666-45', '(38) 54699-9956', '2019-02-14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aeroportos_app`
--
ALTER TABLE `aeroportos_app`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estacionamentos_app`
--
ALTER TABLE `estacionamentos_app`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uf_app`
--
ALTER TABLE `uf_app`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios_app`
--
ALTER TABLE `usuarios_app`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aeroportos_app`
--
ALTER TABLE `aeroportos_app`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `estacionamentos_app`
--
ALTER TABLE `estacionamentos_app`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `uf_app`
--
ALTER TABLE `uf_app`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `usuarios_app`
--
ALTER TABLE `usuarios_app`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
