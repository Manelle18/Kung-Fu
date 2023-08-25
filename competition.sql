-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 25 août 2023 à 15:50
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `competition`
--

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sujet` varchar(255) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`id`, `nom`, `prenom`, `email`, `sujet`, `message`) VALUES
(3, 'jeremy', 'michel', 'test@gmail.com', 'ceci est un sujet de test', 'duisqhdiuhazhdzuhdzauhdazhuhaziuduisqhdiuhazhdzuhdzauhdazhuhaziuduisqhdiuhazhdzuhdzauhdazhuhaziuduisqhdiuhazhdzuhdzauhdazhuhaziuduisqhdiuhazhdzuhdzauhdazhuhaziuduisqhdiuhazhdzuhdzauhdazhuhaziuduisqhdiuhazhdzuhdzauhdazhuhaziuduisqhdiuhazhdzuhdzauhdazhuhaziuduisqhdiuhazhdzuhdzauhdazhuhaziuduisqhdiuhazhdzuhdzauhdazhuhaziuduisqhdiuhazhdzuhdzauhdazhuhaziuduisqhdiuhazhdzuhdzauhdazhuhaziuduisqhdiuhazhdzuhdzauhdazhuhaziuduisqhdiuhazhdzuhdzauhdazhuhaziuduisqhdiuhazhdzuhdzauhdazhuhaziuduisqhdiuhazhdzuhdzauhdazhuhaziu'),
(4, 'gfddg', 'fdgfdg', 'gdfgfdg@gsfgfd.com', 'gfhdsiofds', 'jdsojoisqjqsjdqpos,\r\n\r\njejoiqjdjsqhdeqhkjdhkjqhdkjhkjqhdkjq\r\n\r\ncordialment,');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230712115401', '2023-07-12 13:59:05', 41),
('DoctrineMigrations\\Version20230721095522', '2023-07-21 11:55:37', 19),
('DoctrineMigrations\\Version20230821093839', '2023-08-21 11:39:39', 166),
('DoctrineMigrations\\Version20230821123149', '2023-08-21 14:31:56', 38),
('DoctrineMigrations\\Version20230821123843', '2023-08-21 14:38:48', 110),
('DoctrineMigrations\\Version20230821143059', '2023-08-21 16:31:06', 66),
('DoctrineMigrations\\Version20230821144446', '2023-08-21 16:45:29', 40),
('DoctrineMigrations\\Version20230821144722', '2023-08-21 16:47:26', 22),
('DoctrineMigrations\\Version20230821144817', '2023-08-21 16:48:19', 16),
('DoctrineMigrations\\Version20230825125106', '2023-08-25 14:51:45', 20),
('DoctrineMigrations\\Version20230825125524', '2023-08-25 14:55:29', 14);

-- --------------------------------------------------------

--
-- Structure de la table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `media_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `media`
--

INSERT INTO `media` (`id`, `media_path`) VALUES
(2, 'logo.jpg'),
(4, 'RAÏAN EL KHAYARI..jpg'),
(5, 'HUNG GAR KUNG FU SANDA(2).png'),
(6, 'TIGRE.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `media_id` int(11) DEFAULT NULL,
  `message` varchar(255) NOT NULL,
  `ceinture` varchar(255) DEFAULT NULL,
  `championnat_france` varchar(255) DEFAULT NULL,
  `coupe_france` varchar(255) DEFAULT NULL,
  `open_france` varchar(255) DEFAULT NULL,
  `categorie` varchar(255) NOT NULL,
  `poids` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `post`
--

INSERT INTO `post` (`id`, `user_id`, `nom`, `prenom`, `media_id`, `message`, `ceinture`, `championnat_france`, `coupe_france`, `open_france`, `categorie`, `poids`) VALUES
(3, 3, 'EL KHAYARI', 'RAÏAN', 4, '- 8 Fois Champion de France  - 3éme au championnat du monde', NULL, NULL, NULL, NULL, '', ''),
(6, 3, 'madiouni', 'manelle', 2, 'trgtr tr tr tr htr htr htr htrhhtrhtr h hhhhhhhhhhhhh hhhhhhhhhhh', NULL, NULL, NULL, NULL, '', ''),
(7, 3, 'vfevfevfevf', 'cdzcfevfev', 5, 'vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv vvvvvvvvvvvvvvvvvvvvvvvvvvvvv', NULL, NULL, NULL, NULL, '', ''),
(9, 3, 'yanis', 'yanissssssssssssss', 6, '-(\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'', 'hhhhhhhhhhh', NULL, 'ehrrrrrrrrrrrrrrrrr', 'thtrhrtttttttttttttttttttt', 'seniors', '60kg');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) NOT NULL,
  `roles` longtext NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`) VALUES
(3, 'sakhodaouda9@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$RO.sZcAg.MLkZcHalnsYtuHEWLCRoner50Qagtz0oIRvR8X25xSg6');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_5A8A6C8DEA9FDD75` (`media_id`),
  ADD KEY `IDX_5A8A6C8DA76ED395` (`user_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `FK_5A8A6C8DA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_5A8A6C8DEA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
