-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le :  jeu. 29 oct. 2020 à 11:21
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `market`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `cats`;
CREATE TABLE IF NOT EXISTS `cats` (
  `id_cat` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `age` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_cat`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

--DROP TABLE IF EXISTS `commande`;
--CREATE TABLE IF NOT EXISTS `commande` (
--  `num_commande` int(11) NOT NULL,
--  `date_commande` varchar(30) DEFAULT NULL,
--  `num_client` int(11) DEFAULT NULL,
--  `code_produit` int(11) DEFAULT NULL,
--  `qte_commandee` int(11) DEFAULT NULL,
--  PRIMARY KEY (`num_commande`),
--  KEY `num_client` (`num_client`),
--  KEY `code_produit` (`code_produit`)
--) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

--DROP TABLE IF EXISTS `produit`;
--CREATE TABLE IF NOT EXISTS `produit` (
--  `code_produit` int(11) NOT NULL,
--  `designation` varchar(20) DEFAULT NULL,
--  `prix_unitaire` float DEFAULT NULL,
--  `disponible` char(3) DEFAULT NULL,
--  `photo_produit` int(11) DEFAULT NULL,
--  PRIMARY KEY (`code_produit`)
--) ENGINE=MyISAM DEFAULT CHARSET=latin1;
--COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
