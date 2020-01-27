-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2018 at 08:32 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(1, 'JAVA'),
(2, 'PHP'),
(3, 'HTML'),
(5, 'Education'),
(6, 'Sports');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `firstname`, `lastname`, `email`, `body`, `status`, `date`) VALUES
(2, 'ibrahim', 'khalil', 'ibrahim@gmail.com', 'This is our test message!!', 1, '2018-08-06 21:01:18'),
(3, 'Khan', 'Khan', 'kahn@gmauil.com', 'Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.', 1, '2018-08-06 21:01:55'),
(5, 'faruk', 'ahmed', 'faruk@gmail.com', 'Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.', 1, '2018-08-06 21:50:30'),
(6, 'ibrahim', 'khalil', 'ibrahim@gmail.com', 'Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.', 0, '2018-08-06 23:05:32');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_foote`
--

CREATE TABLE `tbl_foote` (
  `id` int(11) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_foote`
--

INSERT INTO `tbl_foote` (`id`, `note`) VALUES
(1, 'Copyright Training with live project.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `name`, `body`) VALUES
(1, 'About Us', '<p>I ma md Ibrahim Khali;l . Welcome tro my website.</p>\r\n<p>&nbsp;</p>\r\n<p>About Us <span style="color: #000000;">Image processing&nbsp;is a method to perform some operations on an image, in order to get an enhanced image or to extract some useful information from it. It is a type of signal processing in which input is an image and output may be image or characteristics/features associated with that image. Nowadays, image processing is among rapidly growing technologies. It forms core research area within engineering and computer science disciplines too.</span></p>\r\n<p><span style="color: #000000;">Image processing&nbsp;is a method to perform some operations on an image, in order to get an enhanced image or to extract some useful information from it. It is a type of signal processing in which input is an image and output may be image or characteristics/features associated with that image. Nowadays, image processing is among rapidly growing technologies. It forms core research area within engineering and computer science disciplines too.</span></p>'),
(2, 'Privacy Policy', '<p><span style="color: #000000;">updated_row privacy Policy&nbsp; Image processing&nbsp;is a method to perform some operations on an image, in order to get an enhanced image or to extract some useful information from it. It is a type of signal processing in which input is an image and output may be image or characteristics/features associated with that image. Nowadays, image processing is among rapidly growing technologies. It forms core research area within engineering and computer science disciplines too.</span></p>\r\n<p><span style="color: #000000;">privacy Policy&nbsp; Image processing&nbsp;is a method to perform some operations on an image, in order to get an enhanced image or to extract some useful information from it. It is a type of signal processing in which input is an image and output may be image or characteristics/features associated with that image. Nowadays, image processing is among rapidly growing technologies. It forms core research area within engineering and computer science disciplines too.</span></p>\r\n<p>&nbsp;</p>'),
(3, 'DMCA', '<p><span style="color: #000000;">DMCA </span></p>\r\n<p><span style="color: #000000;">&nbsp;Image processing&nbsp;is a method to perform some operations on an image, in order to get an enhanced image or to extract some useful information from it. It is a type of signal processing in which input is an image and output may be image or characteristics/features associated with that image. Nowadays, image processing is among rapidly growing technologies. It forms core research area within engineering and computer science disciplines too.</span></p>\r\n<p><span style="color: #000000;"><span style="color: #000000;">privacy Policy&nbsp; Image processing&nbsp;is a method to perform some operations on an image, in order to get an enhanced image or to extract some useful information from it. It is a type of signal processing in which input is an image and output may be image or characteristics/features associated with that image. Nowadays, image processing is among rapidly growing technologies. It forms core research area within engineering and computer science disciplines too.</span></span></p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `cat`, `title`, `body`, `image`, `author`, `tags`, `date`, `userid`) VALUES
(1, 1, 'Our post title here-JAVA', '<p>Our post..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>Our post..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>Our post..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>', 'upload/post1.jpg', 'ibrahim', 'java,programming', '2018-08-02 06:45:57', 2),
(2, 2, 'Our post title here- PHP', '<p>Our post..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>Our post..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>Our post..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>', 'upload/post1.jpg', 'Ibrahim', 'php, programming', '2018-08-02 06:45:57', 2),
(3, 3, 'Our post title here- HTML', '<p>Our post..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n\r\n<p>Our post..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n\r\n<p>Our post..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>', 'upload/post1.jpg', 'Admin', 'html, programming', '2018-08-02 06:55:21', 0),
(4, 4, 'Our post title here- CSS', '<p>Our post.ibrahim.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n\r\n<p>Our post..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n\r\n<p>Our post..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>', 'upload/post1.jpg', 'Admin', 'css,coding, programming', '2018-08-02 06:55:21', 1),
(5, 1, 'Java Category Post', '<p>Our post..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>Our post..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>Our post..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>', 'upload/post1.jpg', 'Admin', 'java, Java Programming, programing code, source code', '2018-08-02 07:00:37', 2),
(7, 3, 'HTML category Post', '<p>Our post..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>Our post..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>Our post..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>', 'upload/post1.jpg', 'Admin', 'html,programming, language,HTML', '2018-08-02 07:00:37', 1),
(8, 4, 'CSS Category Post', '<p>Our post..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>Our post..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>Our post..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>', 'upload/post1.jpg', 'Admin', 'css', '2018-08-02 07:00:37', 0),
(9, 1, 'Java Category Post', '<p>Our post..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>Our post..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>Our post..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>', 'upload/post1.jpg', 'Admin', 'java', '2018-08-02 07:00:37', 2),
(24, 4, 'CSS Category Title Here', '<p>This is possibly the most cryptic warning message that DataTables will show. It is a short error message as it needs to cope with all of the <a href="https://datatables.net/manual/data">data source</a> options that DataTables has, but flexible enough to convey information for each of these cases, hence why it can appear a little cryptic on first inspection. However, when we break it down into its component parts, it is actually relatively straight forward, as described below</p>', 'upload/064a8b5e1b.jpeg', 'ibrahim', 'css', '2018-08-05 14:01:04', 0),
(25, 2, 'CSSs Category Title Here fro editor', '<p>Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.Sidebar text will be go here.</p>', 'upload/a1e5bcc7c2.jpg', 'Editor', 'css,html,programming', '2018-08-07 08:55:09', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `id` int(11) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `tw` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `gp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`id`, `fb`, `tw`, `ln`, `gp`) VALUES
(1, 'http://facebook.com/ibrahim', 'http://twitter.com/ibrahim', 'http://linkdin.com/ibrahim', 'http://google.com/ibrahim');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `username`, `password`, `email`, `details`, `role`) VALUES
(1, 'Md. Ibrahim Khalil', 'admin', '202cb962ac59075b964b07152d234b70', 'ibrahim@gmail.com', '<p>Hey, i am Ibrahi kHalil from daha, bangladesh.</p>', 0),
(2, 'Sujon Shek', 'author', '202cb962ac59075b964b07152d234b70', 'sujon.cub@gmail.com', '<p>Hey&nbsp; iam sujon pagla.</p>', 1),
(3, 'Ibrahim Khalil', 'ibrahim', '81dc9bdb52d04dc20036dbd8313ed055', 'ibrahim@gmail.com', '<p>hey i am ibrahim khalil.</p>', 1),
(5, '', 'Editor', '202cb962ac59075b964b07152d234b70', '', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `title_slogan`
--

CREATE TABLE `title_slogan` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `title_slogan`
--

INSERT INTO `title_slogan` (`id`, `title`, `slogan`, `logo`) VALUES
(1, 'Traning with Live Project', 'Bangla PHP Tutorial', 'upload/logo.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_foote`
--
ALTER TABLE `tbl_foote`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title_slogan`
--
ALTER TABLE `title_slogan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_foote`
--
ALTER TABLE `tbl_foote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `title_slogan`
--
ALTER TABLE `title_slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
