-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 31 mars 2020 à 16:48
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP :  7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `adobrest`
--

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id`, `name`, `comment`, `date`) VALUES
(2, '', 'wxdfqsdqs', '2020-03-31 16:19:55'),
(3, 'hello', 'world', '2020-03-31 16:28:29'),
(4, 'fred', 'aller les bleues', '2020-03-31 16:42:02'),
(5, 'john', 'j\'aime !', '2020-03-31 16:43:02'),
(6, 'top', 'il est top', '2020-03-31 16:43:15');

-- --------------------------------------------------------

--
-- Structure de la table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `paroisse` varchar(100) NOT NULL,
  `begin_time` time NOT NULL,
  `end_time` time NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `registration`
--

INSERT INTO `registration` (`id`, `name`, `paroisse`, `begin_time`, `end_time`, `date`) VALUES
(6, 'dfg', 'St Louis - St Luc', '17:47:00', '04:19:00', '2020-03-31 15:47:46'),
(7, 'fred', 'St Louis - St Luc', '19:24:00', '05:19:00', '2020-03-31 15:48:14'),
(8, 'jim', 'St Pierre-et-Paul', '06:20:00', '07:20:00', '2020-03-31 15:56:56'),
(9, 'john', 'Lambézellec Saint-Laurent', '15:00:00', '16:00:00', '2020-03-31 16:00:31'),
(10, 'sqdqsd', 'St Pierre-et-Paul', '16:20:00', '18:21:00', '2020-03-31 16:09:25');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
