-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2022 at 03:46 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogpet`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` varchar(150) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `user_id`, `description`, `created_at`) VALUES
(11, 'Zimska garderoba', 2, 'Kaputić za psa od somota, drap boje postavljen toplom zelenom postavom. Zakopcavanje na cicak.', '2022-01-09'),
(12, 'Medicinska hrana za pse', 3, 'Medicinska hrana za pse može ublažiti većinu hroničnih bolesti, i predstavlja specijalnost shop-ova', '2022-01-09'),
(13, 'Vlazna hrana za pse', 3, 'Frendy je hrana koju psi rado jedu jer je ukusna i fina, a istovremeno obezbeđuje pravilan rast.', '2022-01-09'),
(14, 'Kavezi za papagaje', 4, 'Ukoliko želite da uštedite novac, možete se oprobati i u samostalnom pravljenju kaveza za ptice.', '2022-01-09'),
(15, 'Drzanje loptastog pitona', 4, 'Kraljevski piton (Phyton regius) je među ljubiteljima zmija vrlo zastupljen kućni ljubimac.', '2022-01-09'),
(16, 'Hrcak kao kucni ljubimac', 4, 'Hrčak je veoma živahna i čista životinja koja je najsrećnija kada živi sama.', '2022-01-09'),
(17, 'Ishrana zečeva', 4, 'Ukoliko držite zečeve ili kuniće kao kućne ljubimce, sigurno želite da oni što duže budu sa vama.', '2022-01-09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Jana Egic', 'jana@gmail.com', 'jana123'),
(2, 'Sneza Jovanovic', 'sneza@gmail.com', 'sneza123'),
(3, 'Dragana Repanovic', 'dragana@gmail.com', 'dragana123'),
(4, 'Novak Novakovic', 'novakno@gmail.com', 'novak123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
