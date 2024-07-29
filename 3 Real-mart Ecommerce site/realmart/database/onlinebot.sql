-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2022 at 10:29 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinebot`
--

-- --------------------------------------------------------

--
-- Table structure for table `chatbot`
--

CREATE TABLE `chatbot` (
  `id` int(11) NOT NULL,
  `messages` varchar(7553) NOT NULL,
  `response` varchar(7553) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chatbot`
--

INSERT INTO `chatbot` (`id`, `messages`, `response`) VALUES
(0, 'hi|hello|hey', 'Hi there, how can i help you?'),
(1, 'How are you?|how are you|how you doing', 'I am fine thank you'),
(2, 'Services|How can i get services', 'Ask me what you want to know'),
(3, 'Payment| Payment Methods| How can I pay| Payment Options', 'You can pay using credit-card or Paypal'),
(4, 'Account| How can I create Account', 'You just need a valid mail to create an account'),
(5, 'Delivery| Delivery Options | How will I get my product', 'You will get your product via courier'),
(6, 'Signup issue| cannot create account ', 'If you are unable to register this usually means 1 of  3 things. You don;t have JavaScript enable, you or someone already made an account on this computer previously or you\'re trying create a 2nd account with the same email address. What is exact error?'),
(7, 'Login| Can not login| Login error| Cannot login', 'It happens! keep in mind your login is a username or email. Please retype and try again or rest for reset password');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chatbot`
--
ALTER TABLE `chatbot`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
