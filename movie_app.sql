-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 24, 2022 at 02:06 PM
-- Server version: 8.0.29-0ubuntu0.20.04.3
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int NOT NULL,
  `category_name` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(1, 'Fiction'),
(2, 'Humour'),
(3, 'Action'),
(4, 'Animation'),
(5, 'Horreur');

-- --------------------------------------------------------

--
-- Table structure for table `entries_tracking`
--

CREATE TABLE `entries_tracking` (
  `entry_id` int NOT NULL,
  `creation_date` date NOT NULL,
  `modified_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `entries_tracking`
--

INSERT INTO `entries_tracking` (`entry_id`, `creation_date`, `modified_date`) VALUES
(1, '2022-05-02', '2022-05-23'),
(2, '2022-05-10', '2022-05-23'),
(3, '2022-05-03', '2022-05-23'),
(4, '2022-05-05', '2022-05-23'),
(5, '2022-05-10', '2022-05-23');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movie_id` int NOT NULL,
  `movie_name` char(100) DEFAULT NULL,
  `author_name` char(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `category` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `movie_name`, `author_name`, `description`, `release_date`, `category`) VALUES
(1, 'Resident Evil', 'Abel Erazo-Ibarra', 'Alice, seule survivante de la bataille de Washington contre les zombies, doit retourner à l’endroit où le cauchemar a débuté : le Hive à Raccoon City. C’est là, qu’Umbrella Corporation a regroupé ses forces pour mener un assaut final contre les survivants de l’apocalypse.', '2019-08-12', 1),
(2, 'Axterix & Obelix', 'Claude Zidi', 'Cléopâtre, la reine d’Égypte, décide, pour défier l\'Empereur romain Jules César, de construire en trois mois un palais somptueux en plein désert. Si elle y parvient, celui-ci devra concéder publiquement que le peuple égyptien est le plus grand de tous les peuples. Pour ce faire, Cléopâtre fait appel à Numérobis, un architecte d\'avant-garde plein d\'énergie. S\'il réussit, elle le couvrira d\'or. S\'il échoue, elle le jettera aux crocodiles. Celui-ci, conscient du défi à relever, cherche de l\'aide auprès de son vieil ami Panoramix. Le druide fait le voyage en Égypte avec Astérix et Obélix. De son côté, Amonbofis, l\'architecte officiel de Cléopâtre, jaloux que la reine ait choisi Numérobis pour construire le palais, va tout mettre en œuvre pour faire échouer son concurrent.', '2022-01-04', 2),
(3, 'Jason Bourne', 'Dianne Dreyer', 'Le programme Treadstone dont Jason était le cobaye n’était que la partie émergée d’une conspiration plus ténébreuse, ourdie par d’autres branches du gouvernement et mettant en jeu d’autres agences de renseignement, d’autres programmes militaires, d’autres laboratoires secrets… De Treadstone est né «Outcome», dont Aaron Cross est un des six agents. Sa finalité n’est plus de fabriquer des tueurs, mais des hommes capables d’assurer isolément des missions à haut risque. En dévoilant une partie de cette organisation, Jason laissait derrière lui un «héritage» explosif : compromis, les agents «Outcome» sont désormais promis à une liquidation brutale. Effacés à jamais pour que le «père» du programme, le Colonel Byer puisse poursuivre ses sinistres activités. Une gigantesque chasse à l’homme commence, et Cross, devenue sa première cible, n’a d’autre recours que de retrouver et gagner la confiance de la biochimiste d’«Outcome», Marta Shearing, elle-même menacée de mort…', '2021-11-07', 4),
(4, 'Star-Wars: The awakening', 'Ken Cunningham', 'Poe et BB-8 font un atterrissage d\'urgence sur la planète volcanique Mustafar, où ils rencontreront l\'avide et sournois, Graballa le Hutt, qui a acheté le château de Dark Vador et le rénove pour en faire le premier hôtel de luxe de la galaxie. En attendant que son X-Wing soit réparé, Poe, BB-8, Graballa et Dean s\'aventurent dans les profondeurs du mystérieux château avec le fidèle serviteur de Vador, Vaneé. En chemin, Vaneé raconte trois histoires effrayantes liées à d\'anciens artefacts et à des méchants emblématiques de toutes les époques de Star Wars...', '2021-08-18', 3),
(5, 'American Nighmare:the first purge', 'Babette Stith', ' Dans un futur proche, les Etats-Unis sont entrés dans une ère prospère, sans crime ni chômage. Et ce pour une unique raison : tous les ans, pendant une nuit entière, le gouvernement autorise quiconque à se livrer à une violence totale et légale. Cette nuit-là, la police ne répond à aucun appel, les hôpitaux ferment leurs portes. Cette nuit-là, alors que personne ne peut être puni et que le pays est à feu et à sang douze heures durant, une famille se retrouve au coeur de l\'horreur alors qu\'un étranger vient frapper à sa porte... Réussiront-ils à survivre à la nuit ?', '2022-05-10', 5);

-- --------------------------------------------------------

--
-- Table structure for table `movies_payed`
--

CREATE TABLE `movies_payed` (
  `movie_id` int NOT NULL,
  `payment_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `movies_payed`
--

INSERT INTO `movies_payed` (`movie_id`, `payment_id`) VALUES
(1, 2),
(2, 3),
(3, 4),
(4, 1),
(5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int NOT NULL,
  `amount_payed` float NOT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_author` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `amount_payed`, `payment_date`, `payment_author`) VALUES
(1, 28.19, '2022-05-01', 3),
(2, 20.43, '2022-05-17', 5),
(3, 31.87, '2022-05-10', 4),
(4, 22.1, '2022-05-24', 2),
(5, 9.65, '2022-05-16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `fullname` char(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `gender` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `fullname`, `username`, `gender`) VALUES
(1, 'Brandon Tyson', 'tysbarnd1', 'M'),
(2, 'Roger Monerau', 'monerau2', 'M'),
(3, 'Charlotte Eirrin', 'charlotte3', 'F'),
(4, 'Louise MacDonald', 'louise4', 'F'),
(5, 'Ivy Jackson', 'ivyjack5', 'F');

-- --------------------------------------------------------

--
-- Table structure for table `users_gender`
--

CREATE TABLE `users_gender` (
  `gender_id` char(1) NOT NULL,
  `gender_name` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users_gender`
--

INSERT INTO `users_gender` (`gender_id`, `gender_name`) VALUES
('F', 'Female'),
('M', 'Male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `entries_tracking`
--
ALTER TABLE `entries_tracking`
  ADD PRIMARY KEY (`entry_id`),
  ADD KEY `entry_id` (`entry_id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `movies_payed`
--
ALTER TABLE `movies_payed`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `payment_author` (`payment_author`),
  ADD KEY `payment_author_2` (`payment_author`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `gender` (`gender`);

--
-- Indexes for table `users_gender`
--
ALTER TABLE `users_gender`
  ADD PRIMARY KEY (`gender_id`),
  ADD KEY `gender_id` (`gender_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `entries_tracking`
--
ALTER TABLE `entries_tracking`
  MODIFY `entry_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `movies_payed`
--
ALTER TABLE `movies_payed`
  MODIFY `movie_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `movies` (`category`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `entries_tracking`
--
ALTER TABLE `entries_tracking`
  ADD CONSTRAINT `entries_date_ibfk_1` FOREIGN KEY (`entry_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_3` FOREIGN KEY (`movie_id`) REFERENCES `movies_payed` (`movie_id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`payment_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`gender`) REFERENCES `users_gender` (`gender_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
