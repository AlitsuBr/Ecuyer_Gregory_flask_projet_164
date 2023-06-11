-- OM 2021.02.17
-- FICHIER MYSQL POUR FAIRE FONCTIONNER LES EXEMPLES
-- DE REQUETES MYSQL
-- Database: ECUYER_GREGORY_INFO1A_Clients_164_2023

-- Destruction de la BD si elle existe.
-- Pour être certain d'avoir la dernière version des données

DROP DATABASE IF EXISTS ECUYER_GREGORY_INFO1A_Clients_164_2023;

-- Création d'un nouvelle base de donnée

CREATE DATABASE IF NOT EXISTS ECUYER_GREGORY_INFO1A_Clients_164_2023;

-- Utilisation de cette base de donnée

USE ECUYER_GREGORY_INFO1A_Clients_164_2023;
-- --------------------------------------------------------
-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.1.72-community - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for ECUYER_GREGORY_INFO1A_Clients_164_2023
DROP DATABASE IF EXISTS `ECUYER_GREGORY_INFO1A_Clients_164_2023`;
CREATE DATABASE IF NOT EXISTS `ECUYER_GREGORY_INFO1A_Clients_164_2023` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ECUYER_GREGORY_INFO1A_Clients_164_2023`;

-- Dumping structure for table ECUYER_GREGORY_INFO1A_Clients_164_2023.t_client
DROP TABLE IF EXISTS `t_client`;
CREATE TABLE IF NOT EXISTS `t_client` (
  `id_adresse` int(11) NOT NULL AUTO_INCREMENT,
  `Rue` varchar(255) NOT NULL,
  `Numero` smallint(6) NOT NULL DEFAULT '0',
  `Code_Postal` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_adresse`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table ECUYER_GREGORY_INFO1A_Clients_164_2023.t_client: ~0 rows (approximately)
/*!40000 ALTER TABLE `t_client` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_client` ENABLE KEYS */;

-- Dumping structure for table ECUYER_GREGORY_INFO1A_Clients_164_2023.t_client
DROP TABLE IF EXISTS `t_client`;
CREATE TABLE IF NOT EXISTS `t_client` (
  `id_client` int(11) NOT NULL AUTO_INCREMENT,
  `Prenom` varchar(255) NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `Mail` varchar(255) NOT NULL,
  `Telephone` smallint(6) NOT NULL DEFAULT '0',
  `Disponibilite` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table ECUYER_GREGORY_INFO1A_Clients_164_2023.t_client: ~0 rows (approximately)
/*!40000 ALTER TABLE `t_client` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_client` ENABLE KEYS */;

-- Dumping structure for table ECUYER_GREGORY_INFO1A_Clients_164_2023.t_facture
DROP TABLE IF EXISTS `t_facture`;
CREATE TABLE IF NOT EXISTS `t_facture` (
  `id_facture` int(11) NOT NULL AUTO_INCREMENT,
  `Numero_facture` varchar(255) NOT NULL,
  `Montant` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_facture`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table ECUYER_GREGORY_INFO1A_Clients_164_2023.t_facture: ~0 rows (approximately)
/*!40000 ALTER TABLE `t_facture` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_facture` ENABLE KEYS */;

-- Dumping structure for table ECUYER_GREGORY_INFO1A_Clients_164_2023.t_installation
DROP TABLE IF EXISTS `t_installation`;
CREATE TABLE IF NOT EXISTS `t_installation` (
  `id_installation` int(11) NOT NULL AUTO_INCREMENT,
  `id_materiel` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `date_installation` date NOT NULL,
  `commentaire` text,
  PRIMARY KEY (`id_installation`),
  KEY `id_materiel` (`id_materiel`),
  KEY `id_client` (`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table ECUYER_GREGORY_INFO1A_Clients_164_2023.t_installation: ~0 rows (approximately)
/*!40000 ALTER TABLE `t_installation` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_installation` ENABLE KEYS */;

-- Dumping structure for table ECUYER_GREGORY_INFO1A_Clients_164_2023.t_materiel
DROP TABLE IF EXISTS `t_materiel`;
CREATE TABLE IF NOT EXISTS `t_materiel` (
  `id_materiel` int(11) NOT NULL AUTO_INCREMENT,
  `Numero_Materiel` smallint(6) NOT NULL DEFAULT '0',
  `Nom_Materiel` varchar(255) NOT NULL,
  PRIMARY KEY (`id_materiel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table ECUYER_GREGORY_INFO1A_Clients_164_2023.t_materiel: ~0 rows (approximately)
/*!40000 ALTER TABLE `t_materiel` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_materiel` ENABLE KEYS */;

-- Dumping structure for table ECUYER_GREGORY_INFO1A_Clients_164_2023.t_tache
DROP TABLE IF EXISTS `t_tache`;
CREATE TABLE IF NOT EXISTS `t_tache` (
  `id_tache` int(11) NOT NULL AUTO_INCREMENT,
  `Faire` varchar(255) NOT NULL,
  `Acheter` varchar(255) NOT NULL,
  `Manque` varchar(255) NOT NULL,
  `Fini` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_tache`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table ECUYER_GREGORY_INFO1A_Clients_164_2023.t_tache: ~0 rows (approximately)
/*!40000 ALTER TABLE `t_tache` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_tache` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
