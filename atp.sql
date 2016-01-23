-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Sam 23 Janvier 2016 à 17:23
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `atp`
--
CREATE DATABASE IF NOT EXISTS `atp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `atp`;

-- --------------------------------------------------------

--
-- Structure de la table `classement`
--

DROP TABLE IF EXISTS `classement`;
CREATE TABLE IF NOT EXISTS `classement` (
  `idJoueur` int(11) NOT NULL,
  `annee` int(4) NOT NULL,
  `rang` int(2) DEFAULT NULL,
  `points` int(5) DEFAULT NULL,
  `diff` int(3) DEFAULT NULL,
  `nbMatchs` int(2) DEFAULT NULL,
  PRIMARY KEY (`idJoueur`,`annee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `classement`
--

INSERT INTO `classement` (`idJoueur`, `annee`, `rang`, `points`, `diff`, `nbMatchs`) VALUES
(1, 2014, 1, 11360, 0, 17),
(2, 2014, 2, 9625, 0, 18),
(3, 2014, 3, 6585, 0, 18),
(4, 2014, 4, 5120, 0, 18),
(5, 2014, 5, 5025, 0, 21),
(6, 2014, 6, 4675, 0, 21),
(7, 2014, 7, 4600, 0, 23),
(8, 2014, 8, 4440, 0, 21),
(9, 2014, 9, 4150, 0, 24),
(10, 2014, 10, 4045, 0, 25),
(11, 2014, 11, 3645, 0, 20),
(12, 2014, 12, 2740, 0, 20),
(13, 2014, 13, 2455, 0, 23),
(14, 2014, 14, 2130, 0, 27),
(15, 2014, 15, 2110, 0, 23),
(16, 2014, 16, 2080, 0, 24),
(17, 2014, 17, 2015, 0, 26),
(18, 2014, 18, 1890, 1, 24),
(19, 2014, 19, 1790, 1, 25),
(20, 2014, 20, 1770, -2, 19),
(21, 2014, 21, 1730, 0, 24),
(22, 2014, 22, 1599, 0, 25),
(23, 2014, 23, 1455, 0, 24),
(24, 2014, 24, 1415, 0, 29),
(25, 2014, 25, 1365, 0, 23),
(26, 2014, 26, 1350, 0, 22),
(27, 2014, 27, 1320, 0, 27),
(28, 2014, 28, 1299, 0, 22),
(29, 2014, 29, 1222, 1, 23),
(30, 2014, 30, 1210, 1, 30),
(31, 2014, 31, 1195, -2, 26),
(32, 2014, 32, 1175, 0, 27),
(33, 2014, 33, 1135, 0, 22),
(34, 2014, 34, 1094, 0, 20),
(35, 2014, 35, 1090, 0, 24),
(36, 2014, 36, 1020, 0, 27),
(37, 2014, 37, 999, 0, 26),
(38, 2014, 38, 993, 0, 24),
(39, 2014, 39, 977, 0, 23),
(40, 2014, 40, 973, 0, 29),
(41, 2014, 41, 950, 0, 25),
(42, 2014, 42, 934, 0, 23),
(43, 2014, 43, 915, 0, 24),
(44, 2014, 44, 898, 0, 31),
(45, 2014, 45, 870, 0, 30),
(46, 2014, 46, 855, 1, 22),
(47, 2014, 47, 850, 1, 25),
(48, 2014, 48, 850, 1, 26),
(49, 2014, 49, 841, 2, 29),
(50, 2014, 50, 830, 2, 13),
(51, 2014, 51, 822, 3, 33),
(52, 2014, 52, 810, 3, 22),
(53, 2014, 53, 797, 3, 20),
(54, 2014, 54, 796, 3, 26),
(55, 2014, 55, 790, -9, 28),
(56, 2014, 56, 785, -3, 26),
(57, 2014, 57, 781, 1, 28),
(58, 2014, 58, 781, 1, 25),
(59, 2014, 59, 1290, -2, 26),
(60, 2014, 59, 775, 1, 30),
(61, 2014, 60, 775, 1, 25),
(62, 2014, 61, 770, 1, 21),
(63, 2014, 63, 759, 1, 26),
(64, 2014, 64, 753, 1, 21),
(65, 2014, 65, 741, 1, 26),
(66, 2014, 66, 730, 1, 27),
(67, 2014, 67, 715, 1, 21),
(68, 2014, 68, 711, 1, 22),
(69, 2014, 69, 705, 1, 27),
(70, 2014, 70, 700, 1, 20),
(71, 2014, 71, 700, 1, 23),
(72, 2014, 72, 691, 2, 26),
(73, 2014, 73, 689, 0, 28),
(74, 2014, 74, 676, 2, 30),
(75, 2014, 75, 675, 2, 20),
(76, 2014, 76, 659, 2, 23),
(77, 2014, 77, 657, -2, 23),
(78, 2014, 78, 632, 2, 29),
(79, 2014, 79, 621, 3, 28),
(80, 2014, 80, 620, 3, 30),
(81, 2014, 81, 619, 3, 36),
(82, 2014, 82, 610, 3, 17),
(83, 2014, 83, 605, 3, 24),
(84, 2014, 84, 595, -34, 18),
(85, 2014, 85, 586, -4, 26),
(86, 2014, 86, 580, 6, 19),
(87, 2014, 87, 576, 6, 23),
(88, 2014, 88, 576, 6, 27),
(89, 2014, 89, 575, 6, 23),
(90, 2014, 90, 565, 6, 25),
(91, 2014, 91, 560, 6, 27),
(92, 2014, 92, 559, 7, 24),
(93, 2014, 93, 558, 7, 26),
(94, 2014, 94, 558, 7, 14),
(95, 2014, 95, 557, 7, 18),
(96, 2014, 96, 554, 7, 23),
(97, 2014, 97, 553, 7, 26),
(98, 2014, 98, 549, -9, 30),
(99, 2014, 99, 545, 6, 18),
(100, 2014, 99, 586, 0, 28);

-- --------------------------------------------------------

--
-- Structure de la table `joueur`
--

DROP TABLE IF EXISTS `joueur`;
CREATE TABLE IF NOT EXISTS `joueur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prenom` varchar(25) DEFAULT NULL,
  `nom` varchar(25) DEFAULT NULL,
  `codePays` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `codePays` (`codePays`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=101 ;

--
-- Contenu de la table `joueur`
--

INSERT INTO `joueur` (`id`, `prenom`, `nom`, `codePays`) VALUES
(1, 'Novak', 'Djokovic', 'SRB'),
(2, 'Roger', 'Federer', 'SUI'),
(3, 'Rafael', 'Nadal', 'ESP'),
(4, 'Stan', 'Wawrinka', 'SUI'),
(5, 'Kei', 'Nishikori', 'JPN'),
(6, 'Andy', 'Murray', 'GBR'),
(7, 'Tomas', 'Berdych', 'CZE'),
(8, 'Milos', 'Raonic', 'CAN'),
(9, 'Marin', 'Cilic', 'CRO'),
(10, 'David', 'Ferrer', 'ESP'),
(11, 'Grigor', 'Dimitrov', 'BUL'),
(12, 'Jo-Wilfried', 'Tsonga', 'FRA'),
(13, 'Ernests', 'Gulbis', 'LAT'),
(14, 'Feliciano', 'Lopez', 'ESP'),
(15, 'Roberto', 'Bautista Agut', 'ESP'),
(16, 'Kevin', 'Anderson', 'RSA'),
(17, 'Tommy', 'Robredo', 'ESP'),
(18, 'John', 'Isner', 'USA'),
(19, 'Fabio', 'Fognini', 'ITA'),
(20, 'Gaël', 'Monfils', 'FRA'),
(21, 'Gilles', 'Simon', 'FRA'),
(22, 'David', 'Goffin', 'BEL'),
(23, 'Alexandr', 'Dolgopolov', 'UKR'),
(24, 'Philipp', 'Kohlschreiber', 'GER'),
(25, 'Julien', 'Benneteau', 'FRA'),
(26, 'Richard', 'Gasquet', 'FRA'),
(27, 'Ivo', 'Karlovic', 'CRO'),
(28, 'Leonardo', 'Mayer', 'ARG'),
(29, 'Pablo', 'Cuevas', 'URU'),
(30, 'Lukas', 'Rosol', 'CZE'),
(31, 'Jérémy', 'Chardy', 'FRA'),
(32, 'Santiago', 'Giraldo', 'COL'),
(33, 'Fernando', 'Verdasco', 'ESP'),
(34, 'Martin', 'Klizan', 'SVK'),
(35, 'Sam', 'Querrey', 'USA'),
(36, 'Guillermo', 'Garcia-Lopez', 'ESP'),
(37, 'Steve', 'Johnson', 'USA'),
(38, 'Yen-Hsun', 'Lu', 'TPE'),
(39, 'Dominic', 'Thiem', 'AUT'),
(40, 'Benjamin', 'Becker', 'GER'),
(41, 'Pablo', 'Andujar', 'ESP'),
(42, 'Jack', 'Sock', 'USA'),
(43, 'Jerzy', 'Janowicz', 'POL'),
(44, 'Adrian', 'Mannarino', 'FRA'),
(45, 'Andreas', 'Seppi', 'ITA'),
(46, 'Gilles', 'Muller', 'LUX'),
(47, 'Mikhail', 'Youzhny', 'RUS'),
(48, 'Denis', 'Istomin', 'UZB'),
(49, 'Pablo', 'Carreno Busta', 'ESP'),
(50, 'Nick', 'Kyrgios', 'AUS'),
(51, 'Joao', 'Sousa', 'POR'),
(52, 'Simone', 'Bolelli', 'ITA'),
(53, 'Bernard', 'Tomic', 'AUS'),
(54, 'Donald', 'Young', 'USA'),
(55, 'Marcel', 'Granollers', 'ESP'),
(56, 'Vasek', 'Pospisil', 'CAN'),
(57, 'Sergiy', 'Stakhovsky', 'UKR'),
(58, 'Jan-Lennard', 'Struff', 'GER'),
(59, 'Jürgen', 'Melzer', 'AUT'),
(60, 'Federico', 'Delbonis', 'ARG'),
(61, 'Diego', 'Sebastian Schwartzman', 'ARG'),
(62, 'Juan', 'Monaco', 'ARG'),
(63, 'Paolo', 'Lorenzi', 'ITA'),
(64, 'Thomaz', 'Bellucci', 'BRA'),
(65, 'Jiri', 'Vesely', 'CZE'),
(66, 'Teymuraz', 'Gabashvili', 'RUS'),
(67, 'Radek', 'Stepanek', 'CZE'),
(68, 'Dusan', 'Lajovic', 'SRB'),
(69, 'Mikhail', 'Kukushkin', 'KAZ'),
(70, 'Nicolas', 'Almagro', 'ESP'),
(71, 'Carlos', 'Berlocq', 'ARG'),
(72, 'Andrey', 'Golubev', 'KAZ'),
(73, 'Jarkko', 'Nieminen', 'FIN'),
(74, 'Malek', 'Jaziri', 'TUN'),
(75, 'Tommy', 'Haas', 'GER'),
(76, 'Victor', 'Estrella Burgos', 'DOM'),
(77, 'Marinko', 'Matosevic', 'AUS'),
(78, 'Blaz', 'Rola', 'SLO'),
(79, 'Andreas', 'Haider-Maurer', 'AUT'),
(80, 'Robin', 'Haase', 'NED'),
(81, 'Igor', 'Sijsling', 'NED'),
(82, 'Marcos', 'Baghdatis', 'CYP'),
(83, 'Ricardas', 'Berankis', 'LTU'),
(84, 'Lleyton', 'Hewitt', 'AUS'),
(85, 'Samuel', 'Groth', 'AUS'),
(86, 'Andrey', 'Kuznetsov', 'RUS'),
(87, 'Tatsuma', 'Ito', 'JPN'),
(88, 'Lukas', 'Lacko', 'SVK'),
(89, 'Ivan', 'Dodig', 'CRO'),
(90, 'Paul-Henri', 'Mathieu', 'FRA'),
(91, 'Tobias', 'Kamke', 'GER'),
(92, 'Go', 'Soeda', 'JPN'),
(93, 'Filip', 'Krajinovic', 'SRB'),
(94, 'Viktor', 'Troicki', 'SRB'),
(95, 'Borna', 'Coric', 'CRO'),
(96, 'Maximo', 'Gonzalez', 'ARG'),
(97, 'Marsel', 'Ilhan', 'TUR'),
(98, 'Dustin', 'Brown', 'GER'),
(99, 'Blaz', 'Kavcic', 'SLO'),
(100, 'Oleksandr', 'Nedovyesov', 'KAZ');

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

DROP TABLE IF EXISTS `pays`;
CREATE TABLE IF NOT EXISTS `pays` (
  `code` varchar(5) NOT NULL,
  `libelle` varchar(255) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `pays`
--

INSERT INTO `pays` (`code`, `libelle`) VALUES
('ARG', 'argentine'),
('AUS', 'australie'),
('AUT', 'autriche'),
('BEL', 'belgique'),
('BRA', 'bresil'),
('BUL', 'bulgarie'),
('CAN', 'canada'),
('COL', 'colombie'),
('CRO', 'croatie'),
('CYP', 'chypre'),
('CZE', 'rep-tcheque'),
('DOM', 'republique-dominicaine'),
('ESP', 'espagne'),
('FIN', 'finlande'),
('FRA', 'france'),
('GBR', 'grande-bretagne'),
('GER', 'allemagne'),
('ITA', 'italie'),
('JPN', 'japon'),
('KAZ', 'kazakhstan'),
('LAT', 'lettonie'),
('LTU', 'lituanie'),
('LUX', 'luxembourg'),
('NED', 'pays-bas'),
('POL', 'pologne'),
('POR', 'portugal'),
('RSA', 'afrique-du-sud'),
('RUS', 'russie'),
('SLO', 'slovenie'),
('SRB', 'serbie'),
('SUI', 'suisse'),
('SVK', 'slovaquie'),
('TPE', 'taipei-chinois'),
('TUN', 'tunisie'),
('TUR', 'turquie'),
('UKR', 'ukraine'),
('URU', 'uruguay'),
('USA', 'etats-unis'),
('UZB', 'ouzbekistan');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `classement`
--
ALTER TABLE `classement`
  ADD CONSTRAINT `classement_ibfk_1` FOREIGN KEY (`idJoueur`) REFERENCES `joueur` (`id`);

--
-- Contraintes pour la table `joueur`
--
ALTER TABLE `joueur`
  ADD CONSTRAINT `joueur_ibfk_1` FOREIGN KEY (`codePays`) REFERENCES `pays` (`code`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
