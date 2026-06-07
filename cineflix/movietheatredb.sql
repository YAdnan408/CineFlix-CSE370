-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2024 at 06:55 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movietheatredb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `book_id` int(11) NOT NULL,
  `ticket_id` varchar(30) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theater id',
  `user_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `screen_id` int(11) NOT NULL,
  `no_seats` int(3) NOT NULL COMMENT 'number of seats',
  `amount` int(5) NOT NULL,
  `ticket_date` date NOT NULL,
  `date` date NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`book_id`, `ticket_id`, `t_id`, `user_id`, `show_id`, `screen_id`, `no_seats`, `amount`, `ticket_date`, `date`, `status`) VALUES
(15, 'BKID7139802', 6, 8, 20, 6, 1, 800, '2024-04-24', '2024-04-24', 1),
(16, 'BKID2778197', 6, 9, 21, 6, 1, 800, '2024-04-24', '2024-04-24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` int(11) NOT NULL,
  `subject` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `halls`
--

CREATE TABLE `halls` (
  `screen_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theatre id',
  `screen_name` varchar(110) NOT NULL,
  `seats` int(11) NOT NULL COMMENT 'number of seats',
  `charge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `halls`
--

INSERT INTO `halls` (`screen_id`, `t_id`, `screen_name`, `seats`, `charge`) VALUES
(1, 3, 'Classic', 100, 350),
(2, 3, 'Prestige Lounge', 150, 500),
(3, 4, 'Deluxe Den', 200, 600),
(4, 14, 'Platinum Suite', 34, 1250),
(5, 6, 'Elite Escapade', 150, 1000),
(6, 6, 'Royal Recliner', 200, 800),
(7, 7, 'Majestic Manor', 20, 1100);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL COMMENT 'email',
  `password` varchar(50) NOT NULL,
  `user_type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `user_id`, `username`, `password`, `user_type`) VALUES
(1, 0, 'admin', 'admin', 0),
(2, 3, 'theatre', 'theatre', 1),
(17, 4, 'faizatasfia00@gmail.com', '21301489', 2),
(21, 8, 'ertisha.karim@gmail.com', '345678', 2),
(22, 9, 'aparupchowdhury@gmail.com', '123456', 2),
(23, 10, 'yaminadnan@gmail.com', '123456', 2),
(24, 7, 'THR712932', 'PWD729578', 1);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movie_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theatre id',
  `movie_name` varchar(255) NOT NULL,
  `cast` varchar(500) NOT NULL,
  `desc` varchar(1000) NOT NULL,
  `release_date` date NOT NULL,
  `image` varchar(200) NOT NULL,
  `video_url` varchar(200) NOT NULL,
  `status` int(1) NOT NULL COMMENT '0 means active '
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `t_id`, `movie_name`, `cast`, `desc`, `release_date`, `image`, `video_url`, `status`) VALUES
(1, 3, 'Kung Fu Panda 4', 'Jack Black, Awkwafina, Viola Davis', 'After Po is tapped to become the Spiritual Leader of the Valley of Peace, he needs to find and train a new Dragon Warrior, while a wicked sorceress plans to re-summon all the master villains whom Po has vanquished to the spirit realm.', '2024-03-08', 'images/Kung Fu.png', 'https://www.youtube.com/watch?v=_inKs4eeHiI', 0),
(11, 6, 'Dune: Part Two', 'Timothée Chalamet, Zendaya, Rebecca Ferguson', 'Paul Atreides unites with Chani and the Fremen while seeking revenge against the conspirators who destroyed his family.', '2024-02-28', 'images/Dune2.png', 'https://www.youtube.com/watch?v=U2Qp5pL3ovA', 0),
(12, 6, 'Fighter', 'Hrithik Roshan, Deepika Padukone, Anil Kapoor', 'A reckless yet brilliant squadron leader and his team of elite fighter pilots face mortal dangers and inner demons as they unite for a deadly mission.', '2024-01-25', 'images/Fighter.jpeg', 'https://www.youtube.com/watch?v=6amIq_mP4xM', 0),
(13, 6, 'Oppenheimer', 'Cillian Murphy, Emily Blunt, Matt Damon', 'The story of American scientist J. Robert Oppenheimer and his role in the development of the atomic bomb.', '2023-07-21', 'images/Oppenheimer.png', 'https://www.youtube.com/watch?v=uYPbbksJxIg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `age` int(2) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`user_id`, `name`, `email`, `phone`, `age`, `gender`) VALUES
(4, 'Faiza Tasfia', 'faizatasfia@gmail.com', '01451112450', 24, 'Female'),
(8, 'Ertisha Karim', 'ertisha.karim@gmail.com', '01234567891', 23, 'Female'),
(9, 'Aparup Chowdhury', 'aparupchowdhury@gmail.com', '+880 644-370', 24, 'Male'),
(10, 'Yamin Adnan', 'yaminadnan@gmail.com', '+880 1194-68', 24, 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `shows`
--

CREATE TABLE `shows` (
  `s_id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL COMMENT 'show time id',
  `theatre_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `status` int(11) NOT NULL COMMENT '1 means show available',
  `r_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `shows`
--

INSERT INTO `shows` (`s_id`, `st_id`, `theatre_id`, `movie_id`, `start_date`, `status`, `r_status`) VALUES
(19, 15, 6, 11, '2023-11-25', 0, 1),
(20, 20, 6, 13, '2023-04-25', 0, 1),
(21, 19, 6, 12, '2023-12-01', 1, 1),
(22, 18, 6, 17, '2023-11-26', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `showtime`
--

CREATE TABLE `showtime` (
  `st_id` int(11) NOT NULL,
  `screen_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL COMMENT 'noon,second,etc',
  `start_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `showtime`
--

INSERT INTO `showtime` (`st_id`, `screen_id`, `name`, `start_time`) VALUES
(1, 1, 'Noon', '12:00:00'),
(2, 1, 'Evening', '18:00:00'),
(3, 1, 'Morning', '09:00:00'),
(4, 1, 'Noon', '12:30:00'),
(5, 2, 'Noon', '13:00:00'),
(6, 2, 'Night', '20:00:00'),
(7, 2, 'Evening', '18:30:00'),
(8, 2, 'Noon', '14:00:00'),
(9, 3, 'Morning', '10:00:00'),
(10, 3, 'Night', '20:30:00'),
(11, 3, 'Morning', '11:00:00'),
(12, 3, 'Night', '21:00:00'),
(14, 4, 'Noon', '13:30:00'),
(15, 5, 'Evening', '19:30:00'),
(16, 5, 'Noon', '14:30:00'),
(17, 5, 'Noon', '15:00:00'),
(18, 6, 'Evening', '16:00:00'),
(19, 6, 'Evening', '17:00:00'),
(20, 6, 'Evening', '16:30:00'),
(21, 5, 'Night', '20:04:00');

-- --------------------------------------------------------

--
-- Table structure for table `theater`
--

CREATE TABLE `theater` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `state` varchar(50) NOT NULL,
  `pin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `theater`
--

INSERT INTO `theater` (`id`, `name`, `address`, `place`, `state`, `pin`) VALUES
(3, 'Star CineFliX ', 'Bashundhara Shopping Complex', 'Panthapath', 'Dhaka', 1216),
(4, 'Sony Square', 'Sony Tower', 'Mirpur', 'Dhaka', 1216),
(5, 'Blockbusters', 'Jamuna Future Park', 'Bashundhara Residential Area', 'Dhaka', 1509),
(6, 'Silver Screen', 'Finlay Square', 'CDA Avenue, East Nasirabad', 'Chittagong', 4000),
(7, 'Vanguard Vision', 'Badda', 'Merul Badda', 'Dhaka', 123257);

-- --------------------------------------------------------

--
-- Table structure for table `upcoming`
--

CREATE TABLE `upcoming` (
  `upcoming_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cast` varchar(100) NOT NULL,
  `upcoming_date` date NOT NULL,
  `description` varchar(200) NOT NULL,
  `attachment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `upcoming`
--

INSERT INTO `upcoming` (`upcoming_id`, `name`, `cast`, `upcoming_date`, `description`, `attachment`) VALUES
(3, 'Deadpool & Wolverine', 'Ryan Reynolds, Hugh Jackman, Emma Corrin', '2024-07-26', 'Wolverine is recovering from his injuries when he crosses paths with the loudmouth, Deadpool. They team up to defeat a common enemy.', 'upcoming_images/deadpool.jpeg'),
(9, 'Joker: Folie à Deux', 'Zazie Beetz, Joaquin Phoenix, Lady Gaga', '2024-08-04', 'Sequel to the film \"Joker\" from 2019. Failed comedian Arthur Fleck meets the love of his life, Harley Quinn, while incarcerated at Arkham State Hospital.', 'upcoming_images/joker.png'),
(10, 'Mufasa: The Lion King', 'Seth Rogen, Billy Eichner, Aaron Pierre', '2024-12-20', 'Simba, having become king of the Pride Lands, is determined for his cub to follow in his paw prints while the origins of his late father Mufasa are explored.', 'upcoming_images/lion.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `halls`
--
ALTER TABLE `halls`
  ADD PRIMARY KEY (`screen_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `shows`
--
ALTER TABLE `shows`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `showtime`
--
ALTER TABLE `showtime`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `theater`
--
ALTER TABLE `theater`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upcoming`
--
ALTER TABLE `upcoming`
  ADD PRIMARY KEY (`upcoming_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `halls`
--
ALTER TABLE `halls`
  MODIFY `screen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shows`
--
ALTER TABLE `shows`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `showtime`
--
ALTER TABLE `showtime`
  MODIFY `st_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `theater`
--
ALTER TABLE `theater`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `upcoming`
--
ALTER TABLE `upcoming`
  MODIFY `upcoming_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
