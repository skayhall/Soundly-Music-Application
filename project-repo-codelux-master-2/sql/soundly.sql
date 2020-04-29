-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 10, 2020 at 08:07 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `soundly`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_types`
--

CREATE TABLE `account_types` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account_types`
--

INSERT INTO `account_types` (`id`, `name`, `description`) VALUES
(1, 'Free', 'Free for anyone to use. Access to only some of the features.'),
(2, 'Premium', 'Paid account. Access to all features. ');

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`) VALUES
(1, 'lola67', 'testpassword'),
(3, 'coco_essence123', 'testagain');

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` varchar(100) NOT NULL,
  `cover_path` varchar(255) NOT NULL,
  `year_published` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `cover_path`, `year_published`) VALUES
(1, 'Morgenstund', 1, '1', 'images/covers/morgenstund.jpg', 2019),
(2, 'V', 2, '4', 'images/covers/v.jpg', 2014),
(6, 'Ocean', 1, '3', 'images/covers/Ocean.jpg', 2002);

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`) VALUES
(1, 'Schiller'),
(2, 'Maroon 5');

-- --------------------------------------------------------

--
-- Table structure for table `contact_forms`
--

CREATE TABLE `contact_forms` (
  `id` int(11) NOT NULL,
  `topic` varchar(200) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact_forms`
--

INSERT INTO `contact_forms` (`id`, `topic`, `message`) VALUES
(1, 'Phone Number', 'I can\'t find a phone number for you. How do I contact you. '),
(4, 'Love the app!', 'I love your app. I use it for all my music needs! Thank you for creating it. '),
(5, 'Testing', 'testing this '),
(6, 'Testing', 'testing - please work'),
(7, 'Last Test', 'Testing to make sure its not a dud - this took so long! '),
(8, 'Testing April 1', 'Testing again'),
(9, 'Testing April 1 again', 'testing this again to ensure '),
(10, 'Testing', 'Testing again'),
(11, 'jh', 'jh'),
(12, 'Email Problems', 'My email wont show up!');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`) VALUES
(1, 'How do I access the Web Application on my phone?', 'Anything phone or tablet that can use internet browsers such as Google Chrome can use the application on it.'),
(2, 'What browsers support the Music Web Application?', 'The Web player is supported by the following web browsers: Chrome, Firefox, Edge, and Opera'),
(3, 'Can I access the Music Application on a Smart Tv?', 'Yes, as long as it has its own internet browser such as Google Chrome, you can access the application.'),
(4, 'What is Codelux?', 'Codelux is a digital music service that gives access to millions of songs and other contents from artist all over the world.'),
(5, 'Can I burn CDs outside the Web App?', 'No. Our license means that you cannot export our content outside the app.'),
(6, 'What connection do I need to use Codelux?', 'Codelux can use any connection! Mobile broadband, ADSL, cable modem... I recommend 1M connection or faster, however you can use Codelux also in 384 kbps speed or even lower.'),
(7, 'Where I can reset my password?', 'Go to Password reset page.'),
(8, 'How I delete my account completely?', 'Contact to our Support.\r\nBy email: codelux@codelux.com or\r\nBy phone: 903-421-3321\r\nor Simply go to this page. '),
(9, 'My question not here.', 'Not a problem. Ask and Codelux community can help you ASAP. Visit it here.'),
(10, 'Where is artist or band I like?', 'Good question! Codelux always want to have all music in it\'s catalogue. But some artists, bands or record labels want to be out Codelux. ');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `type` int(11) NOT NULL,
  `comment` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback_types`
--

CREATE TABLE `feedback_types` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Ambient'),
(2, 'New Age'),
(3, 'Trance'),
(4, 'Pop Rock');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `permissions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `permissions`) VALUES
(2, 'Standard', ''),
(4, 'Admin', '{\"admin\":1}');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `artist_id` int(10) DEFAULT NULL,
  `album_id` int(10) DEFAULT NULL,
  `playlist_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `duration`, `path`, `artist_id`, `album_id`, `playlist_id`) VALUES
(1, 'Girls Like You (feat. Cardi B)', '3:55', 'assets/music/girls_like_you.mp3', 2, 2, NULL),
(2, 'She Will Be Loved', '4:19', 'assets/music/she_will_be_loved.mp3', 2, 2, NULL),
(3, 'Payphone (feat. Wiz Khalifa)', '3:51', 'assets/music/payphone_feat_wiz_khalifa.mp3', 2, 2, NULL),
(4, 'One More Night', '3:39', 'assets/music/one_more_night.mp3', 1, 1, 6),
(5, 'Sugar (feat. Nicki Minaj) [Remix]', '3:55', 'assets/music/sugar_feat_nicki_minaj_remix.mp3', 1, 1, NULL),
(6, 'Daylight', '3:45', 'assets/music/daylight.mp3', 1, 2, NULL),
(7, 'Sunday Morning', '4:03', 'assets/music/sunday_morning.mp3', 1, 2, NULL),
(8, 'Maps', '3:10', 'assets/music/maps.mp3', 1, 2, 6),
(9, 'Animals', '3:51', 'assets/music/animals.mp3', 1, 1, NULL),
(10, 'Cold (feat. Future)', '3:54', 'assets/music/cold_feat_future.mp3', 1, 1, NULL),
(11, 'Misery', '3:36', 'assets/music/misery.mp3', 1, 2, 6),
(12, 'Harder To Breathe', '2:55', 'assets/music/harder_to_breathe.mp3', 1, 2, NULL),
(13, 'If I Never See Your Face Again (feat. Rihanna)', '3:18', 'assets/music/if_i_never_see_your_face_again_feat_rihanna.mp3', 1, 2, NULL),
(14, 'Wake Up Call', '3:21', 'assets/music/wake_up_call.mp3', 2, 2, 6),
(15, 'Makes Me Wonder', '3:31', 'assets/music/makes_me_wonder.mp3', 1, 1, NULL),
(16, 'Won\'t Go Home Without You', '3:51', 'assets/music/wont_go_home_without_you.mp3', 1, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_accounts`
--

CREATE TABLE `user_accounts` (
  `id` int(11) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `account_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_accounts`
--

INSERT INTO `user_accounts` (`id`, `first_name`, `last_name`, `email`, `username`, `password`, `account_type_id`) VALUES
(1, 'kia', 'Hill', 'kiahill@gmail.com', 'kia123', 'gdhfgdhf', NULL),
(2, 'dsf', 'ssdf', 'shanakayhall@gmail.com', 'sdf', 'sdf', NULL),
(3, 'Mia', 'Hill', 'miahill@gmail.com', 'mia101', 'd9780d47478787498c88ad589aa18fe5f2d54ad9cac3bd755834b577c306c04f', NULL),
(4, 'Shanakay', 'Hall', 'hellag@gmail.com', 'fer', '3d5918b84fc94caafec872fa9dee22218775f0320115a813c03ce2ff15b6ff4c', NULL),
(5, 'Harpo', 'Collins', 'harpoc@gmail.com', 'harp1', 'c3f87cb5e4a1fb917c83b2e4d959d5eac55846a278994c52a179578a17ac0525', NULL),
(6, 'Melissa ', 'Mallington', 'malimeltest1@gmail.com', 'test1', '1b4f0e9851971998e732078544c96b36c3d01cedf7caa332359d6f1d83567014', NULL),
(7, 'Julia', 'Rob', 'juliarobretry@gmail.com', 'retry', '06b29bb318814108e94270528fe7994c096308b3692923723bf1ae6f98d50b4f', NULL),
(8, 'Tanny', 'Too', 'tantoo@gmail.com', 'tan1', '5a66812c6c4ecaa76d297aa06bbfd8a4618d3cff2e8e06b02ec75af9ca99021c', NULL),
(9, 'Tara', 'Reid', 'tara@gmail.com', 'tara1', '1e5ce7a9b5eece9a7a48eef62f1d7b1d4170e117a1966ab56d0218769a6eb588', NULL),
(10, 'Olivia', 'Rivers', 'oli@gmail.com', 'olr', '5f29c11d78e8ab42db2ab920e4241f652b1cc05fdbaaa797cd92e8e4c89b1328', NULL),
(11, 'Mally ', 'Moo', 'mally1234@gmail.com', 'mal1', 'abc0abe4200b5cfe41d52a26de418db2ea01e30833a8e29cb60cd06b02451eb9', NULL),
(12, 'Kelly', 'James', 'kellyjames@gmail.com', 'kel1', '341e5d9ca5b890da4f7957f2928a6f56009eef529e276bb616915f2ee6759ae2', NULL),
(13, 'Kimberly ', 'Ray Loo', 'kim12@gmail.com', 'kim12', '83ad92108b7c5a500908f390ba63ba1e54ad63132ecda463cd1e431881b890d7', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_types`
--
ALTER TABLE `account_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_forms`
--
ALTER TABLE `contact_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `F_feedback_type` (`type`);

--
-- Indexes for table `feedback_types`
--
ALTER TABLE `feedback_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_accounts`
--
ALTER TABLE `user_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_forms`
--
ALTER TABLE `contact_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
