-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 29/11/2019 às 17:00
-- Versão do servidor: 5.7.20-0ubuntu0.17.04.1
-- Versão do PHP: 7.0.22-0ubuntu0.17.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `glpi-tecnologia-9.3.3`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_locations`
--

CREATE TABLE `glpi_locations` (
  `date_creation` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `address` text COLLATE utf8_unicode_ci,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `town` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `building` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `room` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `altitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `glpi_locations`
--

INSERT INTO `glpi_locations` (`date_creation`, `date_mod`, `id`, `entities_id`, `is_recursive`, `name`, `locations_id`, `completename`, `comment`, `level`, `ancestors_cache`, `sons_cache`, `address`, `postcode`, `town`, `state`, `country`, `building`, `room`, `latitude`, `longitude`, `altitude`) VALUES
(NULL, '2018-03-09 10:01:09', 1, 0, 1, '1º PAVIMENTO', 0, '1º PAVIMENTO', '', 1, '[]', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 2, 0, 1, '2º PAVIMENTO', 0, '2º PAVIMENTO', '', 1, '[]', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 3, 0, 1, '3º PAVIMENTO', 0, '3º PAVIMENTO', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 4, 0, 1, 'TÉRREO', 0, 'TÉRREO', '', 1, '[]', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 5, 0, 1, 'SUBSOLO 1', 0, 'SUBSOLO 1', '', 1, '[]', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 6, 0, 1, 'SUBSOLO 2', 0, 'SUBSOLO 2', '', 1, '[]', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 7, 0, 1, 'MEZANINO', 0, 'MEZANINO', '', 1, '[]', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 8, 0, 1, 'Biblioteca', 4, 'TÉRREO > Biblioteca', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-10-27 08:55:37', 9, 0, 1, 'Comunicação e Marketing', 6, 'SUBSOLO 2 > Comunicação e Marketing', '', 2, NULL, '{\"9\":\"9\"}', NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-09 10:01:09', 10, 0, 1, 'Diretoria', 1, '1º PAVIMENTO > Diretoria', '', 2, '{\"1\":\"1\"}', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2019-01-07 17:00:32', 11, 0, 1, 'Pessoas & Organização', 7, 'MEZANINO > Pessoas & Organização', '', 2, '{\"7\":\"7\"}', '{\"11\":\"11\"}', NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2019-09-23 16:40:58', 12, 0, 1, 'Coord.Ens. Fund. Anos Iniciais', 1, '1º PAVIMENTO > Coord.Ens. Fund. Anos Iniciais', '', 2, NULL, '{\"12\":\"12\"}', NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2019-09-23 16:22:24', 13, 0, 1, 'Coord.Ens. Fund. Anos Finais', 2, '2º PAVIMENTO > Coord.Ens. Fund. Anos Finais', '', 2, NULL, '{\"13\":\"13\"}', NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-09 10:01:09', 14, 0, 1, 'Centro de Estudos', 1, '1º PAVIMENTO > Centro de Estudos', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2019-09-23 16:31:42', 15, 0, 1, 'Orientação Ens. Fund.Anos Iniciais', 1, '1º PAVIMENTO > Orientação Ens. Fund.Anos Iniciais', '', 2, NULL, '{\"15\":\"15\"}', NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2019-09-23 16:37:08', 16, 0, 1, 'Orientação Ens. Fund.Anos Finais', 2, '2º PAVIMENTO > Orientação Ens. Fund.Anos Finais', '', 2, NULL, '{\"16\":\"16\"}', NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 17, 0, 1, 'Sala dos professores', 1, '1º PAVIMENTO > Sala dos professores', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 18, 0, 1, 'Sala dos professores', 2, '2º PAVIMENTO > Sala dos professores', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-09 10:01:09', 19, 0, 1, 'Pav 1-Sala 101', 1, '1º PAVIMENTO > Pav 1-Sala 101', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-09 10:01:09', 20, 0, 1, 'Pav 1-Sala 102', 1, '1º PAVIMENTO > Pav 1-Sala 102', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-09 10:01:09', 21, 0, 1, 'Pav 1-Sala 103', 1, '1º PAVIMENTO > Pav 1-Sala 103', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-09 10:01:09', 22, 0, 1, 'Pav 1-Sala 104', 1, '1º PAVIMENTO > Pav 1-Sala 104', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-09 10:01:09', 23, 0, 1, 'Pav 1-Sala 105', 1, '1º PAVIMENTO > Pav 1-Sala 105', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-09 10:01:09', 24, 0, 1, 'Pav 1-Sala 106', 1, '1º PAVIMENTO > Pav 1-Sala 106', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-09 10:01:09', 25, 0, 1, 'Pav 1-Sala 107', 1, '1º PAVIMENTO > Pav 1-Sala 107', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-09 10:01:09', 26, 0, 1, 'Pav 1-Sala 108', 1, '1º PAVIMENTO > Pav 1-Sala 108', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-09 10:01:09', 27, 0, 1, 'Pav 1-Sala 109', 1, '1º PAVIMENTO > Pav 1-Sala 109', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-09 10:01:09', 28, 0, 1, 'Pav 1-Sala 110', 1, '1º PAVIMENTO > Pav 1-Sala 110', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-09 10:01:09', 29, 0, 1, 'Pav 1-Sala 111', 1, '1º PAVIMENTO > Pav 1-Sala 111', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-09 10:01:09', 30, 0, 1, 'Pav 1-Sala 112', 1, '1º PAVIMENTO > Pav 1-Sala 112', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-09 10:01:09', 31, 0, 1, 'Pav 1-Sala 113', 1, '1º PAVIMENTO > Pav 1-Sala 113', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-09 10:01:09', 32, 0, 1, 'Pav 1-Sala 114', 1, '1º PAVIMENTO > Pav 1-Sala 114', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 33, 0, 1, 'Pav 1-Sala 115', 1, '1º PAVIMENTO > Pav 1-Sala 115', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 34, 0, 1, 'Pav 1-Sala 116', 1, '1º PAVIMENTO > Pav 1-Sala 116', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 35, 0, 1, 'Pav 1-Sala 117', 1, '1º PAVIMENTO > Pav 1-Sala 117', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 36, 0, 1, 'Pav 1-Sala 118', 1, '1º PAVIMENTO > Pav 1-Sala 118', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 37, 0, 1, 'Pav 1-Sala 119', 1, '1º PAVIMENTO > Pav 1-Sala 119', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 38, 0, 1, 'Pav 1-Sala 120', 1, '1º PAVIMENTO > Pav 1-Sala 120', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 39, 0, 1, 'Pav 1-Sala 121', 1, '1º PAVIMENTO > Pav 1-Sala 121', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-06-06 16:29:02', 40, 0, 1, 'Pav 1-Sala 124 - Lab High School', 1, '1º PAVIMENTO > Pav 1-Sala 124 - Lab High School', '', 2, NULL, '{\"40\":\"40\"}', NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-06-06 16:29:32', 41, 0, 1, 'Pav 1-Sala 125 - Lab High School', 1, '1º PAVIMENTO > Pav 1-Sala 125 - Lab High School', '', 2, NULL, '{\"41\":\"41\"}', NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 42, 0, 1, 'Pav 1-Sala 126', 1, '1º PAVIMENTO > Pav 1-Sala 126', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 43, 0, 1, 'Coord. Área', 2, '2º PAVIMENTO > Coord. Área', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2019-09-23 16:25:52', 44, 0, 1, 'Recepção do Fund. Anos Finais', 2, '2º PAVIMENTO > Recepção do Fund. Anos Finais', '', 2, NULL, '{\"44\":\"44\"}', NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2019-09-23 16:32:45', 45, 0, 1, 'Recepção do Fund.Anos Iniciais', 1, '1º PAVIMENTO > Recepção do Fund.Anos Iniciais', '', 2, NULL, '{\"45\":\"45\"}', NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 46, 0, 1, 'Pav 2-Sala 201', 2, '2º PAVIMENTO > Pav 2-Sala 201', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 47, 0, 1, 'Pav 2-Sala 202', 2, '2º PAVIMENTO > Pav 2-Sala 202', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 48, 0, 1, 'Pav 2-Sala 203', 2, '2º PAVIMENTO > Pav 2-Sala 203', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 49, 0, 1, 'Pav 2-Sala 204', 2, '2º PAVIMENTO > Pav 2-Sala 204', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 50, 0, 1, 'Pav 2-Sala 205', 2, '2º PAVIMENTO > Pav 2-Sala 205', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 51, 0, 1, 'Pav 2-Sala 206', 2, '2º PAVIMENTO > Pav 2-Sala 206', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 52, 0, 1, 'Pav 2-Sala 207', 2, '2º PAVIMENTO > Pav 2-Sala 207', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 53, 0, 1, 'Pav 2-Sala 208', 2, '2º PAVIMENTO > Pav 2-Sala 208', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 54, 0, 1, 'Orientação Ensino Médio', 3, '3º PAVIMENTO > Orientação Ensino Médio', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 55, 0, 1, 'Coord. Ensino Médio', 3, '3º PAVIMENTO > Coord. Ensino Médio', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-05-02 11:33:51', 56, 0, 1, 'Recepção Ensino Médio', 3, '3º PAVIMENTO > Recepção Ensino Médio', '', 2, NULL, '{\"56\":\"56\"}', NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 57, 0, 1, 'Pav 3-Sala 301', 3, '3º PAVIMENTO > Pav 3-Sala 301', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 58, 0, 1, 'Pav 3-Sala 302', 3, '3º PAVIMENTO > Pav 3-Sala 302', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 59, 0, 1, 'Pav 3-Sala 303', 3, '3º PAVIMENTO > Pav 3-Sala 303', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 60, 0, 1, 'Pav 3-Sala 304', 3, '3º PAVIMENTO > Pav 3-Sala 304', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 61, 0, 1, 'Pav 3-Sala 305', 3, '3º PAVIMENTO > Pav 3-Sala 305', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 62, 0, 1, 'Pav 3-Sala 306', 3, '3º PAVIMENTO > Pav 3-Sala 306', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 63, 0, 1, 'Pav 3-Sala 307', 3, '3º PAVIMENTO > Pav 3-Sala 307', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 64, 0, 1, 'Pav 3-Sala 308', 3, '3º PAVIMENTO > Pav 3-Sala 308', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 65, 0, 1, 'Pav 3-Sala 309', 3, '3º PAVIMENTO > Pav 3-Sala 309', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 66, 0, 1, 'Lab Informáica', 7, 'MEZANINO > Lab Informáica', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2019-03-25 14:46:09', 67, 0, 1, 'Administratativo', 5, 'SUBSOLO 1 > Administratativo', '', 2, '{\"5\":\"5\"}', '{\"67\":\"67\"}', NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 68, 0, 1, 'Financeiro', 7, 'MEZANINO > Financeiro', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 69, 0, 1, 'Centro Gráfico', 7, 'MEZANINO > Centro Gráfico', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 70, 0, 1, 'Lab Criatividade', 7, 'MEZANINO > Lab Criatividade', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 71, 0, 1, 'Tecnologia da Informação', 5, 'SUBSOLO 1 > Tecnologia da Informação', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 72, 0, 1, 'Portaria G1', 5, 'SUBSOLO 1 > Portaria G1', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 73, 0, 1, 'Administratativo Sodexo', 5, 'SUBSOLO 1 > Administratativo Sodexo', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 74, 0, 1, 'Lanchonete Sodexo', 6, 'SUBSOLO 2 > Lanchonete Sodexo', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 76, 0, 1, 'Lanchonete ED INF', 4, 'TÉRREO > Lanchonete ED INF', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 77, 0, 1, 'Monitoramento', 5, 'SUBSOLO 1 > Monitoramento', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 78, 0, 1, 'Almoxarifado', 5, 'SUBSOLO 1 > Almoxarifado', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 79, 0, 1, 'Teatro da Cidade', 5, 'SUBSOLO 1 > Teatro da Cidade', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 80, 0, 1, 'Movimento', 6, 'SUBSOLO 2 > Movimento', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 81, 0, 1, 'Balé', 6, 'SUBSOLO 2 > Balé', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 82, 0, 1, 'Coord. Eventos', 6, 'SUBSOLO 2 > Coord. Eventos', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 83, 0, 1, 'Coord. Esportes', 6, 'SUBSOLO 2 > Coord. Esportes', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2019-04-05 16:54:29', 84, 0, 1, 'Sala de Repouso', 4, 'TÉRREO > Sala de Repouso', '', 2, NULL, '{\"84\":\"84\"}', NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 85, 0, 1, 'Campus Store', 4, 'TÉRREO > Campus Store', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 86, 0, 1, 'Portaria do Térreo', 4, 'TÉRREO > Portaria do Térreo', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 87, 0, 1, 'Sala 01', 4, 'TÉRREO > Sala 01', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 88, 0, 1, 'Sala 02', 4, 'TÉRREO > Sala 02', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 89, 0, 1, 'Sala 03', 4, 'TÉRREO > Sala 03', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 90, 0, 1, 'Sala 04', 4, 'TÉRREO > Sala 04', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 91, 0, 1, 'Sala 05', 4, 'TÉRREO > Sala 05', '', 2, '{\"4\":\"4\"}', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 92, 0, 1, 'Sala 06', 4, 'TÉRREO > Sala 06', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 93, 0, 1, 'Sala 07', 4, 'TÉRREO > Sala 07', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 94, 0, 1, 'Sala 08', 4, 'TÉRREO > Sala 08', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 95, 0, 1, 'Sala 09', 4, 'TÉRREO > Sala 09', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 96, 0, 1, 'Sala 10', 4, 'TÉRREO > Sala 10', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 97, 0, 1, 'Sala 11', 4, 'TÉRREO > Sala 11', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 98, 0, 1, 'Sala 12', 4, 'TÉRREO > Sala 12', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 99, 0, 1, 'Sala 13', 4, 'TÉRREO > Sala 13', '', 2, '{\"4\":\"4\"}', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 100, 0, 1, 'Sala 14', 4, 'TÉRREO > Sala 14', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 101, 0, 1, 'Sala 15', 4, 'TÉRREO > Sala 15', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 102, 0, 1, 'Sala 16', 4, 'TÉRREO > Sala 16', '', 2, NULL, '{\"102\":\"102\"}', NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 103, 0, 1, 'Sala 17', 4, 'TÉRREO > Sala 17', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 104, 0, 1, 'Central de Atendimento', 4, 'TÉRREO > Central de Atendimento', '', 2, NULL, '{\"104\":\"104\"}', NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2019-07-29 09:25:08', 105, 0, 1, 'Coord. Ed. Infantil', 4, 'TÉRREO > Coord. Ed. Infantil', '', 2, NULL, '{\"105\":\"105\"}', NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 106, 0, 1, 'Supervisão High School', 2, '2º PAVIMENTO > Supervisão High School', '', 2, NULL, '{\"106\":\"106\"}', NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2019-04-24 16:54:35', 107, 0, 1, 'Supervisão CEOP', 6, 'SUBSOLO 2 > Supervisão CEOP', '', 2, '{\"6\":\"6\"}', '{\"107\":\"107\"}', NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 108, 0, 1, 'Central de Relacionamento', 4, 'TÉRREO > Central de Relacionamento', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-06-06 16:30:12', 109, 0, 1, 'Pav 1-Sala 122', 1, '1º PAVIMENTO > Pav 1-Sala 122', '', 2, NULL, '{\"109\":\"109\"}', NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-06-06 16:29:57', 110, 0, 1, 'Pav 1-Sala 123', 1, '1º PAVIMENTO > Pav 1-Sala 123', '', 2, NULL, '{\"110\":\"110\"}', NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 111, 0, 1, 'Manutenção Predial', 6, 'SUBSOLO 2 > Manutenção Predial', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 112, 0, 1, 'Orientação Ed. Infantil', 4, 'TÉRREO > Orientação Ed. Infantil', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2019-11-05 12:31:25', 113, 0, 1, 'Tecnologia Educacional', 10, '1º PAVIMENTO > Diretoria > Tecnologia Educacional', '', 3, '{\"1\":\"1\",\"10\":\"10\"}', '{\"113\":\"113\"}', NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(NULL, '2018-03-12 11:42:38', 114, 0, 1, 'DEECAA', 6, 'SUBSOLO 2 > DEECAA', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
('2017-07-20 09:23:14', '2018-03-12 11:42:38', 115, 0, 1, 'Área de Convívio', 4, 'TÉRREO > Área de Convívio', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
('2017-07-20 09:23:29', '2018-03-12 11:42:38', 116, 0, 1, 'Área de Convívio', 7, 'MEZANINO > Área de Convívio', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
('2017-10-18 12:19:09', '2018-03-09 10:01:09', 117, 0, 1, 'Assessoria Ped. da Direção', 1, '1º PAVIMENTO > Assessoria Ped. da Direção', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
('2018-01-27 12:27:06', '2018-03-12 11:42:38', 118, 0, 1, 'Pav 1-Sala 127', 1, '1º PAVIMENTO > Pav 1-Sala 127', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '127', '', '', ''),
('2018-01-27 12:27:57', '2018-03-12 11:42:38', 119, 0, 1, 'Pav 1-Sala 128', 1, '1º PAVIMENTO > Pav 1-Sala 128', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '128', '', '', ''),
('2018-05-02 11:33:08', '2018-05-02 11:34:39', 120, 0, 1, 'Recepção Ed. Infantil', 4, 'TÉRREO > Recepção Ed. Infantil', '', 2, '{\"4\":\"4\"}', '{\"120\":\"120\"}', NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
('2018-05-02 11:35:22', '2018-05-02 11:37:32', 121, 0, 1, 'Supervisão Ed. Infantil', 4, 'TÉRREO > Supervisão Ed. Infantil', '', 2, NULL, '{\"121\":\"121\"}', NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
('2018-05-02 11:35:53', '2019-09-23 16:33:07', 122, 0, 1, 'Supervisão Ens. Fund.Anos Iniciais', 1, '1º PAVIMENTO > Supervisão Ens. Fund.Anos Iniciais', '', 2, NULL, '{\"122\":\"122\"}', NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
('2018-05-02 11:36:26', '2019-09-23 16:26:04', 123, 0, 1, 'Supervisão Ens. Fund. Anos Finais', 2, '2º PAVIMENTO > Supervisão Ens. Fund. Anos Finais', '', 2, NULL, '{\"123\":\"123\"}', NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
('2018-05-02 11:36:54', '2018-05-02 11:36:54', 124, 0, 1, 'Supervisão Ens. Médio', 3, '3º PAVIMENTO > Supervisão Ens. Médio', '', 2, NULL, '{\"124\":\"124\"}', NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
('2018-05-08 09:07:24', '2018-05-08 09:07:24', 125, 0, 0, 'Sala 19', 4, 'TÉRREO > Sala 19', '', 2, NULL, '{\"125\":\"125\"}', NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
('2018-05-08 09:09:35', '2018-05-08 09:09:35', 126, 0, 0, 'Sala 18', 4, 'TÉRREO > Sala 18', '', 2, NULL, '{\"126\":\"126\"}', NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
('2018-05-22 14:15:27', '2018-05-22 14:15:27', 127, 0, 1, 'Sala dos Professores', 4, 'TÉRREO > Sala dos Professores', '', 2, NULL, '{\"127\":\"127\"}', NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
('2018-05-23 18:18:00', '2019-01-31 16:45:57', 128, 0, 0, 'Sala 20 - Ateliê das Artes', 4, 'TÉRREO > Sala 20 - Ateliê das Artes', '', 2, NULL, '{\"128\":\"128\"}', NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
('2019-01-29 12:00:25', '2019-01-29 12:00:25', 130, 0, 0, 'Lab Maker', 7, 'MEZANINO > Lab Maker', '', 2, '{\"7\":\"7\"}', '{\"130\":\"130\"}', '', '', '', '', '', '', '', '', '', '');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `glpi_locations`
--
ALTER TABLE `glpi_locations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`entities_id`,`locations_id`,`name`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `name` (`name`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `glpi_locations`
--
ALTER TABLE `glpi_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
