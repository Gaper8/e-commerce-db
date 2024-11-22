-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 22 nov. 2024 à 09:19
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `testdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `adresses`
--

CREATE TABLE `adresses` (
  `adress_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `street` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `adresses`
--

INSERT INTO `adresses` (`adress_id`, `user_id`, `street`, `city`, `postal_code`, `country`) VALUES
(1, 1, 'rue Antoine', 'Gros', '16378', 'Mozambique'),
(2, 2, '51, boulevard de Le Gall', 'CouturierBourg', '59589', 'Finlande'),
(3, 3, '311, boulevard Boutin', 'Vallet', '33473', 'Sainte Hélène'),
(4, 4, '48, avenue de Alves', 'Perrot', '76224', 'Ghana'),
(5, 5, '24, rue Franck Payet', 'Rousset-sur-Mer', '37338', 'Malawi'),
(6, 6, 'impasse Louise Blanc', 'Carliernec', '98884', 'Philippines'),
(7, 7, '208, chemin Paulette Descamps', 'Brunel', '93604', 'Koweit'),
(8, 8, 'rue Eugène Wagner', 'Guillon', '20135', 'Vierges (Îles)'),
(9, 9, 'boulevard de Martins', 'Potier', '94705', 'Érythrée'),
(10, 10, 'rue Joséphine Lecoq', 'Roy', '16239', 'Soudan'),
(11, 1, '18, rue Jean Faivre', 'Martineau-sur-De Sousa', '96995', 'Qatar'),
(12, 2, '57, rue Barre', 'Guibert', '97259', 'Colombie'),
(13, 3, '84, impasse de Chauveau', 'Barbe-sur-Mer', '29206', 'Allemagne'),
(14, 4, '39, impasse de Marchand', 'Dupont', '86227', 'Moldavie'),
(15, 5, 'avenue Catherine Vasseur', 'Bazinboeuf', '76292', 'Liban'),
(16, 6, '52, rue Nathalie Pasquier', 'Ollivier-la-Forêt', '13898', 'Libye'),
(17, 7, '27, impasse Delaunay', 'Roche', '32838', 'Chine (Rép. pop.)'),
(18, 8, '55, avenue Patrick Dos Santos', 'LeconteVille', '35270', 'Australie'),
(19, 9, '5, rue de Pons', 'Pelletier', '75204', 'Niger'),
(20, 10, '52, rue Diane Lopes', 'Gilbert', '77202', 'Porto Rico');

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-10-31 09:41:23', '2024-10-31 09:41:23'),
(2, 2, '2024-10-31 09:41:23', '2024-10-31 09:41:23'),
(3, 3, '2024-10-31 09:41:23', '2024-10-31 09:41:23'),
(4, 4, '2024-10-31 09:41:23', '2024-10-31 09:41:23'),
(5, 5, '2024-10-31 09:41:23', '2024-10-31 09:41:23'),
(6, 6, '2024-10-31 09:41:23', '2024-10-31 09:41:23'),
(7, 7, '2024-10-31 09:41:23', '2024-10-31 09:41:23'),
(8, 8, '2024-10-31 09:41:23', '2024-10-31 09:41:23'),
(9, 9, '2024-10-31 09:41:23', '2024-10-31 09:41:23'),
(10, 10, '2024-10-31 09:41:23', '2024-10-31 09:41:23'),
(11, 1, '2024-10-31 09:43:54', '2024-10-31 09:43:54'),
(12, 2, '2024-10-31 09:43:54', '2024-10-31 09:43:54'),
(13, 3, '2024-10-31 09:43:54', '2024-10-31 09:43:54'),
(14, 4, '2024-10-31 09:43:54', '2024-10-31 09:43:54'),
(15, 5, '2024-10-31 09:43:54', '2024-10-31 09:43:54'),
(16, 6, '2024-10-31 09:43:54', '2024-10-31 09:43:54'),
(17, 7, '2024-10-31 09:43:54', '2024-10-31 09:43:54'),
(18, 8, '2024-10-31 09:43:54', '2024-10-31 09:43:54'),
(19, 9, '2024-10-31 09:43:54', '2024-10-31 09:43:54'),
(20, 10, '2024-10-31 09:43:54', '2024-10-31 09:43:54');

-- --------------------------------------------------------

--
-- Structure de la table `cart_product`
--

CREATE TABLE `cart_product` (
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `command_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cart_product`
--

INSERT INTO `cart_product` (`cart_id`, `product_id`, `quantity`, `command_id`) VALUES
(1, 4, 5, 1),
(2, 4, 2, 2),
(3, 1, 2, 3),
(4, 7, 3, 4),
(5, 10, 5, 5),
(6, 3, 3, 6),
(7, 4, 1, 7),
(8, 9, 4, 8),
(9, 3, 2, 9),
(10, 1, 5, 10);

-- --------------------------------------------------------

--
-- Structure de la table `commands`
--

CREATE TABLE `commands` (
  `command_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `adress_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `commands`
--

INSERT INTO `commands` (`command_id`, `user_id`, `status`, `created_at`, `adress_id`) VALUES
(1, 1, 'livré', '2024-10-31 09:43:54', 1),
(2, 2, 'en cours', '2024-10-31 09:43:54', 2),
(3, 3, 'annulé', '2024-10-31 09:43:54', 3),
(4, 4, 'en cours', '2024-10-31 09:43:54', 4),
(5, 5, 'annulé', '2024-10-31 09:43:54', 5),
(6, 6, 'en cours', '2024-10-31 09:43:54', 6),
(7, 7, 'en cours', '2024-10-31 09:43:54', 7),
(8, 8, 'annulé', '2024-10-31 09:43:54', 8),
(9, 9, 'annulé', '2024-10-31 09:43:54', 9),
(10, 10, 'en cours', '2024-10-31 09:43:54', 10);

-- --------------------------------------------------------

--
-- Structure de la table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `command_id` int(11) NOT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `adress_id` int(11) NOT NULL,
  `delivered_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_command` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `command_id`, `total_amount`, `user_id`, `adress_id`, `delivered_date`, `date_command`) VALUES
(1, 1, 917.37, 1, 1, '2024-07-05 05:12:25', '2024-10-31 09:43:54'),
(2, 2, 648.76, 2, 2, '2024-01-20 09:05:59', '2024-10-31 09:43:54'),
(3, 3, 273.09, 3, 3, '2024-04-13 17:13:36', '2024-10-31 09:43:54'),
(4, 4, 749.93, 4, 4, '2024-08-28 05:32:14', '2024-10-31 09:43:54'),
(5, 5, 906.33, 5, 5, '2024-06-29 16:31:42', '2024-10-31 09:43:54'),
(6, 6, 669.38, 6, 6, '2024-04-08 08:36:22', '2024-10-31 09:43:54'),
(7, 7, 688.38, 7, 7, '2024-08-14 12:37:57', '2024-10-31 09:43:54'),
(8, 8, 364.06, 8, 8, '2024-08-11 18:17:12', '2024-10-31 09:43:54'),
(9, 9, 146.00, 9, 9, '2024-03-16 00:05:16', '2024-10-31 09:43:54'),
(10, 10, 275.89, 10, 10, '2024-09-16 06:57:38', '2024-10-31 09:43:54');

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `stock_quantity` int(11) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`product_id`, `name`, `description`, `price`, `stock_quantity`, `category`) VALUES
(1, 'omnis', 'Temporibus consequatur nam vitae distinctio ad culpa.', 823.38, 83, 'eaque'),
(2, 'praesentium', 'Voluptas ducimus ipsum et deserunt optio minima aut.', 902.99, 16, 'laboriosam'),
(3, 'aut', 'Ad dolorum veritatis deserunt est.', 320.90, 31, 'autem'),
(4, 'possimus', 'Saepe atque consectetur omnis porro sequi quis illo modi.', 477.33, 4, 'dolores'),
(5, 'dignissimos', 'Quis dolores dolores non modi exercitationem dolorum.', 987.99, 2, 'doloribus'),
(6, 'voluptates', 'Necessitatibus temporibus facilis et nihil.', 793.09, 9, 'atque'),
(7, 'quis', 'Nihil itaque consequatur eos odio qui.', 819.26, 99, 'sapiente'),
(8, 'in', 'Ducimus eveniet aliquam dolor.', 470.84, 26, 'minus'),
(9, 'fugit', 'In deserunt beatae suscipit quos.', 16.09, 87, 'recusandae'),
(10, 'quia', 'Cumque ut et omnis.', 967.42, 97, 'doloremque'),
(11, 'qui', 'Eveniet enim nesciunt laudantium.', 261.72, 64, 'quia'),
(12, 'quia', 'Ut voluptate dolorum est sit est.', 720.14, 60, 'et'),
(13, 'ea', 'Autem iste atque quo ratione.', 177.98, 6, 'qui'),
(14, 'quia', 'Eius voluptates id iusto possimus.', 781.86, 44, 'sint'),
(15, 'ut', 'Molestias neque veritatis velit illo aliquam vel.', 605.79, 16, 'dignissimos'),
(16, 'consequuntur', 'Excepturi sunt eos deleniti laudantium.', 816.51, 17, 'consequatur'),
(17, 'cum', 'Nemo ullam itaque vel.', 451.87, 65, 'molestiae'),
(18, 'nam', 'Non in illum est ipsum.', 420.85, 17, 'ut'),
(19, 'non', 'Voluptatem voluptatem voluptas cum doloribus voluptatem aliquid aut.', 986.08, 78, 'explicabo'),
(20, 'iste', 'A animi quo dolore rem voluptatem distinctio.', 906.55, 3, 'magnam');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` bigint(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`user_id`, `username`, `email`, `password`, `phone_number`, `created_at`) VALUES
(1, 'nicolas81', 'aime.lucas@yahoo.fr', '$2y$10$QiFv/EkBYYC8OlxDU0mynegJMw4yvD7a/RuuBof92F31ey0/t0Twi', 542681601, '2024-10-31 09:41:22'),
(2, 'etienne.vincent', 'mleveque@dupont.com', '$2y$10$bEC4QWtKxb4WtnYKv7ch.u2yJeHGzc9P1Fa9v/MB5FqtIWKW6nKIC', 33, '2024-10-31 09:41:22'),
(3, 'nicolas.xavier', 'margot31@yahoo.fr', '$2y$10$m7WT/tyqJIFbERnyFFOmHuGBFKAE7j8e8DKRFFgY6ZV26.PNVwwLi', 2, '2024-10-31 09:41:22'),
(4, 'paul08', 'cfernandes@dumas.fr', '$2y$10$/iqrACn04KwMmbwlfPeudOTYgaY0gSKXLWI3CKyIzCpwkQZDHhOQ2', 7, '2024-10-31 09:41:22'),
(5, 'laurent73', 'therese.wagner@evrard.com', '$2y$10$JhxpUIBX88C0MqT0DQzegOuuH1uDocXa0s7wrH3HaV1D6WLgzK7M.', 9, '2024-10-31 09:41:22'),
(6, 'frederic39', 'antoinette85@hotmail.fr', '$2y$10$K2TPUwBNnYqFhKhzf5np5.MKCfIq4.ytRUD654TL.zfr2X.IjqZu.', 5, '2024-10-31 09:41:22'),
(7, 'rdeoliveira', 'jacqueline.dias@club-internet.fr', '$2y$10$DyXC.mIXGWc9xChAVStARuF45Z2cqlDliridlE59a0zwg3JoJKuTu', 2, '2024-10-31 09:41:22'),
(8, 'rcolin', 'grenier.olivier@wanadoo.fr', '$2y$10$BKhclyCbHsXP8I09.wn6YOqMIQcyRofRpbYFbD/JFRqtH1/gSzjni', 33, '2024-10-31 09:41:22'),
(9, 'auguste97', 'thibault.sebastien@club-internet.fr', '$2y$10$wiu.EbhOq422OGmKCaFRYuZsOhoT6jgBb9uBNm2LTnJI2oa75Oza6', 562294375, '2024-10-31 09:41:23'),
(10, 'helene.joly', 'gerard35@gmail.com', '$2y$10$LK2b7SNkaaUjRffb.X6.kupqFwEYmNE69ko/xMkoffE6TCitgvYgq', 9, '2024-10-31 09:41:23'),
(11, 'georges.martins', 'catherine19@laposte.net', '$2y$10$nErBB3dbP7ZHaPHtnjYJQ.nQT0DlXap9Yj0xO6ZWe3CkO26JxEmRC', 200548014, '2024-10-31 09:43:53'),
(12, 'william68', 'dhubert@coulon.com', '$2y$10$D7naIhCQfvl7N1DchdTIheVFnRzpKlfIn4EYqKH5iu0jQVfky9xPu', 323016178, '2024-10-31 09:43:53'),
(13, 'vherve', 'theodore45@laposte.net', '$2y$10$Rnl/hLmouC/1/MpeH7VRHOu3iu05rqYS02HVBKg58lVcM3ApAjA.u', 33, '2024-10-31 09:43:53'),
(14, 'lefebvre.theophile', 'noemi.legrand@mercier.fr', '$2y$10$MP/qfYMuhJyfZyEgSACoIu.yN3Gqz5pBaxcQrb5QRroQ.atZdqgku', 33, '2024-10-31 09:43:53'),
(15, 'laure98', 'jchartier@wanadoo.fr', '$2y$10$thNIR7sF8qXJnh8Tq1AHnOEAv2agKk0BbO3KhztJuo3eKGC4ngGO2', 9, '2024-10-31 09:43:53'),
(16, 'denise98', 'blanchard.elisabeth@dbmail.com', '$2y$10$hQ816Xa8hp/tmmSwV1EBnOzMwUshvf4Q7i.xT898NrxhyLcQ1fCtu', 33, '2024-10-31 09:43:53'),
(17, 'jeanne50', 'marie.zacharie@wanadoo.fr', '$2y$10$B3PMRXSS1qDpP32YfkYWiO8A1Mgc.eUF349ZlDcpcGSehRu4Z3cL6', 949484338, '2024-10-31 09:43:53'),
(18, 'jguilbert', 'penelope71@michel.fr', '$2y$10$qhVgMDi693gsgt9PhefiPuuBpcHcQ0sOu5pQhRcy6yFhIVqXg4YpW', 1, '2024-10-31 09:43:54'),
(19, 'breton.susan', 'pauger@tele2.fr', '$2y$10$4tyT2b1dmWCVx2CtO3K8Lei7jQ7dd/CVhII.FDLrcoeldcIPnNY8G', 1, '2024-10-31 09:43:54'),
(20, 'eleonore.dumas', 'gabriel.germain@renard.net', '$2y$10$pGYli3vUyLrOoy3BxnInpeso2adU0bU4HokrGXQs7.65LVabHTbiy', 33, '2024-10-31 09:43:54');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `adresses`
--
ALTER TABLE `adresses`
  ADD PRIMARY KEY (`adress_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `cart_product`
--
ALTER TABLE `cart_product`
  ADD PRIMARY KEY (`cart_id`,`product_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `command_id` (`command_id`);

--
-- Index pour la table `commands`
--
ALTER TABLE `commands`
  ADD PRIMARY KEY (`command_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `adress_id` (`adress_id`);

--
-- Index pour la table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`),
  ADD KEY `command_id` (`command_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `adress_id` (`adress_id`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `adresses`
--
ALTER TABLE `adresses`
  MODIFY `adress_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `commands`
--
ALTER TABLE `commands`
  MODIFY `command_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `adresses`
--
ALTER TABLE `adresses`
  ADD CONSTRAINT `adresses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Contraintes pour la table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Contraintes pour la table `cart_product`
--
ALTER TABLE `cart_product`
  ADD CONSTRAINT `cart_product_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`cart_id`),
  ADD CONSTRAINT `cart_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `cart_product_ibfk_3` FOREIGN KEY (`command_id`) REFERENCES `commands` (`command_id`);

--
-- Contraintes pour la table `commands`
--
ALTER TABLE `commands`
  ADD CONSTRAINT `commands_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `commands_ibfk_2` FOREIGN KEY (`adress_id`) REFERENCES `adresses` (`adress_id`);

--
-- Contraintes pour la table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`command_id`) REFERENCES `commands` (`command_id`),
  ADD CONSTRAINT `invoice_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `invoice_ibfk_3` FOREIGN KEY (`adress_id`) REFERENCES `adresses` (`adress_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
