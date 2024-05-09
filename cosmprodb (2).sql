-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 03 mai 2024 à 18:41
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cosmprodb`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorytbl`
--

CREATE TABLE `categorytbl` (
  `CatCode` int(11) NOT NULL,
  `CatName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `categorytbl`
--

INSERT INTO `categorytbl` (`CatCode`, `CatName`) VALUES
(10, 'Maquillage'),
(11, 'Soins de la peau'),
(12, 'Soins capillaires'),
(13, 'Parfums'),
(14, 'Accessoires de beauté');

-- --------------------------------------------------------

--
-- Structure de la table `itemtbl`
--

CREATE TABLE `itemtbl` (
  `itCode` int(11) NOT NULL,
  `ItName` varchar(100) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Date` varchar(100) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `itemtbl`
--

INSERT INTO `itemtbl` (`itCode`, `ItName`, `Quantity`, `Date`, `Price`, `category`) VALUES
(2, 'Fond de teint liquide', 50, '2024-04-28', 20, 10),
(3, 'Palette de fards à paupières', 30, '2024-04-28', 35, 10),
(4, 'Rouge à lèvres mat', 40, '2024-04-28', 15, 10),
(5, 'Crème hydratante', 60, '2024-04-28', 25, 11),
(6, 'Sérum anti-âge', 20, '2024-04-28', 45, 11),
(7, 'Masque facial purifiant', 35, '2024-04-28', 30, 11),
(8, 'Shampooing nourrissant', 50, '2024-04-28', 18, 12),
(9, 'Après-shampooing réparateur', 40, '2024-04-28', 20, 12),
(10, 'Huile capillaire revitalisante', 25, '2024-04-28', 30, 12),
(11, 'Eau de parfum florale', 30, '2024-04-28', 50, 13),
(12, 'Eau de toilette boisée', 25, '2024-04-28', 40, 13),
(13, 'Parfum vanillé en spray', 20, '2024-04-28', 35, 13),
(14, 'Kit de pinceaux de maquillage', 15, '2024-04-28', 25, 14),
(15, 'Miroir de poche avec LED', 20, '2024-04-28', 20, 14),
(16, 'Trousse de voyage cosmétique', 10, '2024-04-28', 30, 14);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(20) UNSIGNED NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categorytbl`
--
ALTER TABLE `categorytbl`
  ADD PRIMARY KEY (`CatCode`);

--
-- Index pour la table `itemtbl`
--
ALTER TABLE `itemtbl`
  ADD PRIMARY KEY (`itCode`),
  ADD KEY `category` (`category`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categorytbl`
--
ALTER TABLE `categorytbl`
  MODIFY `CatCode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `itemtbl`
--
ALTER TABLE `itemtbl`
  MODIFY `itCode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `itemtbl`
--
ALTER TABLE `itemtbl`
  ADD CONSTRAINT `itemtbl_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categorytbl` (`CatCode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
