-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2024 at 08:32 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cee_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_acc`
--

CREATE TABLE `admin_acc` (
  `admin_id` int(11) NOT NULL,
  `admin_user` varchar(1000) NOT NULL,
  `admin_pass` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_acc`
--

INSERT INTO `admin_acc` (`admin_id`, `admin_user`, `admin_pass`) VALUES
(1, 'admin@username', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `course_tbl`
--

CREATE TABLE `course_tbl` (
  `cou_id` int(11) NOT NULL,
  `cou_name` varchar(1000) NOT NULL,
  `cou_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `course_tbl`
--

INSERT INTO `course_tbl` (`cou_id`, `cou_name`, `cou_created`) VALUES
(67, 'BSCPE', '2024-12-10 14:05:48');

-- --------------------------------------------------------

--
-- Table structure for table `examinee_tbl`
--

CREATE TABLE `examinee_tbl` (
  `exmne_id` int(11) NOT NULL,
  `exmne_fullname` varchar(1000) NOT NULL,
  `exmne_course` varchar(1000) NOT NULL,
  `exmne_gender` varchar(1000) NOT NULL,
  `exmne_birthdate` varchar(1000) NOT NULL,
  `exmne_year_level` varchar(1000) NOT NULL,
  `exmne_email` varchar(1000) NOT NULL,
  `exmne_password` varchar(1000) NOT NULL,
  `exmne_status` varchar(1000) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `examinee_tbl`
--

INSERT INTO `examinee_tbl` (`exmne_id`, `exmne_fullname`, `exmne_course`, `exmne_gender`, `exmne_birthdate`, `exmne_year_level`, `exmne_email`, `exmne_password`, `exmne_status`) VALUES
(12, 'View Alexa Mendoza', '67', 'female', '2003-09-16', 'third year', 'view@gmail.com', '12345', 'active'),
(13, 'Jenny Cuevas', '67', 'female', '2003-05-28', 'third year', 'jenny@gmail.com', '12345', 'active'),
(14, 'Elmer Domingo', '67', 'male', '2004-07-19', 'third year', 'elmer@gmail.com', '12345', 'active'),
(15, 'Krysthille Anne Tambis', '67', 'female', '2004-09-19', 'third year', 'k@gmail.com', '12345', 'active'),
(16, 'Neil Francis Layosa', '67', 'male', '2000-01-18', 'third year', 'neil@gmail.com', '12345', 'active'),
(18, 'Hershie Nina Ebajo', '67', 'female', '2004-03-24', 'third year', 'hershie@gmail.com', '12345', 'active'),
(19, 'Jenaylle Shee Picorro', '67', 'female', '2005-08-25', 'second year', 'jenaylle@gmail.com', '12345', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `exam_answers`
--

CREATE TABLE `exam_answers` (
  `exans_id` int(11) NOT NULL,
  `axmne_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `quest_id` int(11) NOT NULL,
  `exans_answer` varchar(1000) NOT NULL,
  `exans_status` varchar(1000) NOT NULL DEFAULT 'new',
  `exans_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam_answers`
--

INSERT INTO `exam_answers` (`exans_id`, `axmne_id`, `exam_id`, `quest_id`, `exans_answer`, `exans_status`, `exans_created`) VALUES
(332, 15, 33, 45, 'table', 'new', '2024-12-12 07:38:06'),
(333, 15, 33, 49, 'HyperText Markup Language', 'new', '2024-12-12 07:38:06'),
(334, 15, 33, 47, 'h1', 'new', '2024-12-12 07:38:06'),
(335, 15, 33, 44, 'To provide metadata about the document', 'new', '2024-12-12 07:38:06'),
(336, 15, 33, 41, 'input type=', 'new', '2024-12-12 07:38:06'),
(337, 15, 33, 48, 'standard markup language', 'new', '2024-12-12 07:38:06'),
(338, 15, 33, 43, 'p', 'new', '2024-12-12 07:38:06'),
(339, 15, 33, 42, 'line', 'new', '2024-12-12 07:38:06'),
(340, 15, 33, 46, 'a', 'new', '2024-12-12 07:38:06'),
(341, 15, 33, 38, 'name', 'new', '2024-12-12 07:38:06'),
(342, 12, 35, 85, 'By summing all the ratings and dividing by the number of review', 'new', '2024-12-13 05:43:23'),
(343, 12, 35, 83, 'All of the above', 'new', '2024-12-13 05:43:23'),
(344, 12, 35, 87, 'By multiplying each number by its weight, summing the products, and dividing by the sum of weights', 'new', '2024-12-13 05:43:23'),
(345, 12, 35, 91, '3.14', 'new', '2024-12-13 05:43:23'),
(346, 12, 35, 90, '$average = avg($numbers);', 'new', '2024-12-13 05:43:23'),
(347, 12, 35, 84, 'All of the above', 'new', '2024-12-13 05:43:23'),
(348, 12, 35, 93, '$average = (10 + 20) / 2;', 'new', '2024-12-13 05:43:23'),
(349, 12, 35, 92, 'round()', 'new', '2024-12-13 05:43:23'),
(350, 12, 35, 89, '88', 'new', '2024-12-13 05:43:23'),
(351, 12, 35, 86, 'To convert a string or float to an integer', 'new', '2024-12-13 05:43:23'),
(352, 12, 33, 48, 'standard markup language', 'new', '2024-12-13 05:44:20'),
(353, 12, 33, 44, 'To provide metadata about the document', 'new', '2024-12-13 05:44:20'),
(354, 12, 33, 43, 'p', 'new', '2024-12-13 05:44:20'),
(355, 12, 33, 46, 'a', 'new', '2024-12-13 05:44:20'),
(356, 12, 33, 45, 'table', 'new', '2024-12-13 05:44:20'),
(357, 12, 33, 42, 'hr', 'new', '2024-12-13 05:44:20'),
(358, 12, 33, 47, 'h1', 'new', '2024-12-13 05:44:20'),
(359, 12, 33, 38, 'name', 'new', '2024-12-13 05:44:20'),
(360, 12, 33, 41, 'br', 'new', '2024-12-13 05:44:20'),
(361, 12, 33, 49, 'HyperText Markup Language', 'new', '2024-12-13 05:44:20'),
(362, 12, 30, 71, 'To define the table header cells', 'new', '2024-12-13 05:45:38'),
(363, 12, 30, 65, 'ondragstart', 'new', '2024-12-13 05:45:38'),
(364, 12, 30, 72, 'required', 'new', '2024-12-13 05:45:38'),
(365, 12, 30, 70, 'href', 'new', '2024-12-13 05:45:38'),
(366, 12, 30, 69, 'drawLine()', 'new', '2024-12-13 05:45:38'),
(367, 12, 30, 67, 'Persistent Storage', 'new', '2024-12-13 05:45:38'),
(368, 12, 30, 64, 'To define a group of related elements', 'new', '2024-12-13 05:45:38'),
(369, 12, 30, 66, 'To handle user input events', 'new', '2024-12-13 05:45:38'),
(370, 12, 30, 63, 'navigation', 'new', '2024-12-13 05:45:38'),
(371, 12, 30, 68, 'clearInterval()', 'new', '2024-12-13 05:45:38'),
(372, 14, 36, 77, 'Float', 'new', '2024-12-13 06:15:48'),
(373, 14, 36, 82, 'A programming language', 'new', '2024-12-13 06:15:48'),
(374, 14, 36, 73, 'for ($i = 0; $i < 10; $i++) { ... }', 'new', '2024-12-13 06:15:48'),
(375, 14, 36, 80, '?>', 'new', '2024-12-13 06:15:48'),
(376, 14, 36, 79, '// This is a comment', 'new', '2024-12-13 06:15:48'),
(377, 14, 36, 76, 'var MY_CONSTANT = 10;', 'new', '2024-12-13 06:15:48'),
(378, 14, 36, 81, 'To output data to the browser', 'new', '2024-12-13 06:15:48'),
(379, 14, 36, 74, '*', 'new', '2024-12-13 06:15:48'),
(380, 14, 36, 75, '1', 'new', '2024-12-13 06:15:48'),
(381, 14, 36, 78, 'myVar', 'new', '2024-12-13 06:15:48'),
(382, 14, 35, 85, 'By summing all the ratings and dividing by the number of review', 'new', '2024-12-13 06:19:46'),
(383, 14, 35, 83, 'All of the above', 'new', '2024-12-13 06:19:46'),
(384, 14, 35, 89, '88', 'new', '2024-12-13 06:19:46'),
(385, 14, 35, 84, 'All of the above', 'new', '2024-12-13 06:19:46'),
(386, 14, 35, 92, 'round()', 'new', '2024-12-13 06:19:46'),
(387, 14, 35, 87, 'By multiplying each number by its weight, summing the products, and dividing by the sum of weights', 'new', '2024-12-13 06:19:46'),
(388, 14, 35, 86, 'To convert a string or float to an integer', 'new', '2024-12-13 06:19:46'),
(389, 14, 35, 93, '$average = (10 + 20) / 2;', 'new', '2024-12-13 06:19:46'),
(390, 14, 35, 91, '3.14', 'new', '2024-12-13 06:19:46'),
(391, 14, 35, 90, '$average = array_sum($numbers) / count($numbers);', 'new', '2024-12-13 06:19:46'),
(392, 14, 34, 97, 'All of the above', 'new', '2024-12-13 06:20:40'),
(393, 14, 34, 98, 'Both max_execution_time and memory_limit are correct', 'new', '2024-12-13 06:20:40'),
(394, 14, 34, 95, 'To define a method that must be implemented by subclasses', 'new', '2024-12-13 06:20:40'),
(395, 14, 34, 103, 'Both (A) and (B) are correct', 'new', '2024-12-13 06:20:40'),
(396, 14, 34, 102, 'By defining a function with the exception keyword', 'new', '2024-12-13 06:20:40'),
(397, 14, 34, 100, 'All of the above', 'new', '2024-12-13 06:20:40'),
(398, 14, 34, 96, 'Public members can be accessed from anywhere, private members can only be accessed within the class, and protected members can be accessed within the class and its subclasses', 'new', '2024-12-13 06:20:40'),
(399, 14, 34, 99, 'Both (a) and (b) are correct', 'new', '2024-12-13 06:20:40'),
(400, 14, 34, 94, 'Interfaces can only contain method signatures, while abstract classes can contain both method signatures and implementations', 'new', '2024-12-13 06:20:40'),
(401, 14, 34, 101, 'To automatically load classes as they are needed', 'new', '2024-12-13 06:20:40'),
(402, 16, 35, 83, 'All of the above', 'new', '2024-12-13 06:49:16'),
(403, 16, 35, 86, 'To convert a string or float to an integer', 'new', '2024-12-13 06:49:16'),
(404, 16, 35, 90, '$average = avg($numbers);', 'new', '2024-12-13 06:49:16'),
(405, 16, 35, 91, '3.14', 'new', '2024-12-13 06:49:16'),
(406, 16, 35, 89, '88', 'new', '2024-12-13 06:49:16'),
(407, 16, 35, 87, 'By multiplying each number by its weight, summing the products, and dividing by the sum of weights', 'new', '2024-12-13 06:49:16'),
(408, 16, 35, 84, 'All of the above', 'new', '2024-12-13 06:49:16'),
(409, 16, 35, 85, 'By summing all the ratings and dividing by the number of review', 'new', '2024-12-13 06:49:16'),
(410, 16, 35, 92, 'round()', 'new', '2024-12-13 06:49:16'),
(411, 16, 35, 93, '$average = (10 + 20) / 2;', 'new', '2024-12-13 06:49:16'),
(412, 16, 36, 77, 'Integer', 'new', '2024-12-13 06:49:57'),
(413, 16, 36, 75, '1', 'new', '2024-12-13 06:49:57'),
(414, 16, 36, 79, '// This is a comment', 'new', '2024-12-13 06:49:57'),
(415, 16, 36, 80, '?>', 'new', '2024-12-13 06:49:57'),
(416, 16, 36, 74, '.', 'new', '2024-12-13 06:49:57'),
(417, 16, 36, 76, 'define(', 'new', '2024-12-13 06:49:57'),
(418, 16, 36, 82, 'A programming language', 'new', '2024-12-13 06:49:57'),
(419, 16, 36, 81, 'To output data to the browser', 'new', '2024-12-13 06:49:57'),
(420, 16, 36, 78, '$myVar', 'new', '2024-12-13 06:49:57'),
(421, 16, 36, 73, 'for ($i = 0; $i < 10; $i++) { ... }', 'new', '2024-12-13 06:49:57'),
(422, 13, 33, 38, 'name', 'new', '2024-12-13 06:50:49'),
(423, 13, 33, 47, 'h1', 'new', '2024-12-13 06:50:49'),
(424, 13, 33, 44, 'To provide metadata about the document', 'new', '2024-12-13 06:50:49'),
(425, 13, 33, 45, 'table', 'new', '2024-12-13 06:50:49'),
(426, 13, 33, 49, 'HyperText Markup Language', 'new', '2024-12-13 06:50:49'),
(427, 13, 33, 46, 'a', 'new', '2024-12-13 06:50:49'),
(428, 13, 33, 48, 'standard markup language', 'new', '2024-12-13 06:50:49'),
(429, 13, 33, 43, 'p', 'new', '2024-12-13 06:50:49'),
(430, 13, 33, 41, 'br', 'new', '2024-12-13 06:50:49'),
(431, 13, 33, 42, 'hr', 'new', '2024-12-13 06:50:49'),
(432, 13, 32, 51, 'To ensure accurate calculations, especially with decimal numbers', 'new', '2024-12-13 06:51:56'),
(433, 13, 32, 50, 'All of the above', 'new', '2024-12-13 06:51:56'),
(434, 13, 32, 61, 'average', 'new', '2024-12-13 06:51:56'),
(435, 13, 32, 52, 'All of the above', 'new', '2024-12-13 06:51:56'),
(436, 13, 32, 56, 'A custom function using a loop and a sum variable', 'new', '2024-12-13 06:51:56'),
(437, 13, 32, 55, 'textContent', 'new', '2024-12-13 06:51:56'),
(438, 13, 32, 60, 'script', 'new', '2024-12-13 06:51:56'),
(439, 13, 32, 54, '10-20', 'new', '2024-12-13 06:51:56'),
(440, 13, 32, 57, 'Sum of all numbers / Number of numbers', 'new', '2024-12-13 06:51:56'),
(441, 13, 32, 62, 'It is used to embed interactive content, such as maps or videos, from another website', 'new', '2024-12-13 06:51:56'),
(442, 18, 33, 38, 'name', 'new', '2024-12-13 07:02:04'),
(443, 18, 33, 47, 'h1', 'new', '2024-12-13 07:02:04'),
(444, 18, 33, 49, 'HyperText Markup Language', 'new', '2024-12-13 07:02:04'),
(445, 18, 33, 45, 'table', 'new', '2024-12-13 07:02:04'),
(446, 18, 33, 46, 'a', 'new', '2024-12-13 07:02:04'),
(447, 18, 33, 42, 'hr', 'new', '2024-12-13 07:02:04'),
(448, 18, 33, 43, 'p', 'new', '2024-12-13 07:02:04'),
(449, 18, 33, 44, 'To provide metadata about the document', 'new', '2024-12-13 07:02:04'),
(450, 18, 33, 48, 'standard markup language', 'new', '2024-12-13 07:02:04'),
(451, 18, 33, 41, 'br', 'new', '2024-12-13 07:02:04'),
(452, 19, 32, 62, 'It is used to embed interactive content, such as maps or videos, from another website', 'new', '2024-12-13 07:10:21'),
(453, 19, 32, 61, 'average', 'new', '2024-12-13 07:10:21'),
(454, 19, 32, 56, 'Math.avg()', 'new', '2024-12-13 07:10:21'),
(455, 19, 32, 50, 'All of the above', 'new', '2024-12-13 07:10:21'),
(456, 19, 32, 52, 'All of the above', 'new', '2024-12-13 07:10:21'),
(457, 19, 32, 57, 'Sum of all numbers / Number of numbers', 'new', '2024-12-13 07:10:21'),
(458, 19, 32, 54, '10-20', 'new', '2024-12-13 07:10:21'),
(459, 19, 32, 51, 'To validate the input and prevent invalid characters', 'new', '2024-12-13 07:10:21'),
(460, 19, 32, 60, 'script', 'new', '2024-12-13 07:10:21'),
(461, 19, 32, 55, 'textContent', 'new', '2024-12-13 07:10:21');

-- --------------------------------------------------------

--
-- Table structure for table `exam_attempt`
--

CREATE TABLE `exam_attempt` (
  `examat_id` int(11) NOT NULL,
  `exmne_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `examat_status` varchar(1000) NOT NULL DEFAULT 'used'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam_attempt`
--

INSERT INTO `exam_attempt` (`examat_id`, `exmne_id`, `exam_id`, `examat_status`) VALUES
(60, 15, 33, 'used'),
(62, 12, 33, 'used'),
(64, 14, 36, 'used'),
(68, 16, 36, 'used'),
(69, 13, 33, 'used'),
(71, 18, 33, 'used'),
(72, 19, 32, 'used');

-- --------------------------------------------------------

--
-- Table structure for table `exam_question_tbl`
--

CREATE TABLE `exam_question_tbl` (
  `eqt_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `exam_question` varchar(1000) NOT NULL,
  `exam_ch1` varchar(1000) NOT NULL,
  `exam_ch2` varchar(1000) NOT NULL,
  `exam_ch3` varchar(1000) NOT NULL,
  `exam_ch4` varchar(1000) NOT NULL,
  `exam_answer` varchar(1000) NOT NULL,
  `exam_status` varchar(1000) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam_question_tbl`
--

INSERT INTO `exam_question_tbl` (`eqt_id`, `exam_id`, `exam_question`, `exam_ch1`, `exam_ch2`, `exam_ch3`, `exam_ch4`, `exam_answer`, `exam_status`) VALUES
(38, 33, 'Which HTML attribute is used to specify the name of a form element?', 'name', 'id', 'title', 'label', 'name', 'active'),
(41, 33, 'Which HTML tag is used to create a new line?', 'br', 'p', 'h1', 'td', 'br', 'active'),
(42, 33, 'Which HTML element is used to define a horizontal line?', 'hr', 'line', 'hline', 'divider', 'hr', 'active'),
(43, 33, 'What is the correct HTML tag to define a paragraph?', 'p', 'paragraph', 'par', 'text', 'p', 'active'),
(44, 33, 'What is the purpose of the <head> section in an HTML document?', 'To define the visible page content', 'To provide metadata about the document', 'To style the document with CSS', 'To add interactive elements with JavaScript', 'To provide metadata about the document', 'active'),
(45, 33, 'What is the correct HTML tag to define a table?', 'table', 'th', 'td', 'tabledata', 'table', 'active'),
(46, 33, 'Which HTML tag is used to create a hyperlink?', 'a', 'link', 'hyperlink', 'url', 'a', 'active'),
(47, 33, 'What is the correct HTML tag to define a heading?', 'head', 'h1', 'heading', 'header', 'h1', 'active'),
(48, 33, 'What is HTML?', 'a style sheet language', 'a popular scripting language', 'standard markup language', 'a versatile programming language', 'standard markup language', 'active'),
(49, 33, 'What does HTML stand for? ', 'HyperText Management Language', 'HyperText Markup Language', 'Hyperlink Text Management Language', 'Hover Text Management Language', 'HyperText Markup Language', 'active'),
(50, 32, 'How can you handle potential errors or invalid input when calculating averages in JavaScript?', 'Use a `try-catch` block to catch exceptions', 'Validate input before performing calculations', 'Display error messages to the user', 'All of the above', 'All of the above', 'active'),
(51, 32, 'What is the importance of using the `parseFloat()` or `parseInt()` functions when working with numerical input values in HTML and JavaScript?', 'To ensure accurate calculations, especially with decimal numbers', 'To format the numbers for better display', 'To validate the input and prevent invalid characters', 'To convert numbers to strings for easier manipulation', 'To ensure accurate calculations, especially with decimal numbers', 'active'),
(52, 32, 'What is a common error to avoid when calculating averages in JavaScript?', 'Forgetting to convert input values to numbers', 'Dividing by zero', 'Using the wrong arithmetic operator', 'All of the above', 'All of the above', 'active'),
(54, 32, 'What is the average number of HTML elements used in a basic web page?', '5-10', '10-20', '20-30', '30-40', '10-20', 'active'),
(55, 32, 'If you want to display the calculated average in a specific HTML element, which attribute of the element would you use to dynamically insert the value?', 'value', 'innerHTML', 'textContent', 'display', 'textContent', 'active'),
(56, 32, 'Which JavaScript function can be used to calculate the average of numbers in an array?', 'Math.avg()', 'Array.prototype.average()', 'A custom function using a loop and a sum variable', 'document.getElementById(\"average\").value', 'A custom function using a loop and a sum variable', 'active'),
(57, 32, 'What is the formula to calculate the average of a set of numbers?', 'Sum of all numbers / Number of numbers', 'Product of all numbers / Number of numbers', 'Largest number - Smallest number / 2', 'Sum of all numbers / Largest number', 'Sum of all numbers / Number of numbers', 'active'),
(60, 32, 'Which HTML element is most commonly used to display calculated results, such as the average of a set of numbers?', 'p', 'script', 'input', 'button', 'p', 'active'),
(61, 32, 'Which HTML tag is used to calculate the average of numbers in JavaScript?', 'average', 'script', 'math', 'calculate', 'script', 'active'),
(62, 32, 'What is the purpose of the iframe tag in HTML, and what are some potential security risks associated with its use?', 'It is used to embed interactive content, such as maps or videos, from another website', 'It is used to create internal links within a webpage', 'It is used to define the header of a webpage', 'It is used to create a table', 'It is used to embed interactive content, such as maps or videos, from another website', 'active'),
(63, 30, '  Which HTML element would you use to define the main navigation section of a webpage?', 'nav', 'header', 'section', 'navigation', 'nav', 'active'),
(64, 30, 'What is the purpose of the aside element?', 'To define content aside from the page content, like sidebars', 'To define a group of related elements', 'To define important, emphasized text', 'To define a footer for a document or section', 'To define a footer for a document or section', 'active'),
(65, 30, 'Which event is triggered when an element is dragged over a valid drop target?', 'ondragstart', 'ondragover', 'ondrop', 'ondragend', 'ondragover', 'active'),
(66, 30, 'What is the primary purpose of HTML5 Web Workers?', 'To run JavaScript code in the background', 'To create animations', 'To handle user input events', 'To manage network requests.', 'To run JavaScript code in the background', 'active'),
(67, 30, 'Which Web Storage API is used to store data that persists even after the browser is closed?', 'Session Storage', 'Local Storage', 'Temporary Storage', 'Persistent Storage', 'Local Storage', 'active'),
(68, 30, 'Which JavaScript method is used to set a timer that executes a function after a specified number of milliseconds?', 'setTimeout()', 'setInterval()', 'clearTimeout()', 'clearInterval()', 'setTimeout()', 'active'),
(69, 30, 'Which JavaScript method is used to draw a line on an HTML canvas?', 'drawLine()', 'strokeLine()', 'beginPath()+moveTo()+lineTo()+stroke()', 'canvas.line()', 'beginPath()+moveTo()+lineTo()+stroke()', 'active'),
(70, 30, 'Which HTML attribute specifies the URL of a video file?', 'src', 'href', 'url', 'video', 'src', 'active'),
(71, 30, 'What is the purpose of the thead element in an HTML table?', 'To define the table header cells', 'To define the table footer cells', 'To define the table body cells', 'To define the table caption', 'To define the table header cells', 'active'),
(72, 30, 'Which HTML attribute specifies that a form field is required?', 'required', 'mandatory', 'necessary', 'obligatory', 'required', 'active'),
(73, 36, 'What is the correct syntax for a for loop in PHP?', 'for ($i = 0; $i < 10; $i++) { ... }', 'for $i = 0 to 10 { ... }', 'for ($i = 0; $i <= 10; i++) { ... }', 'for i = 0 to 10 { ... }', 'for ($i = 0; $i < 10; $i++) { ... }', 'active'),
(74, 36, 'Which operator is used for concatenation in PHP?', '+', '-', '*', '.', '.', 'active'),
(75, 36, 'What is the result of the following expression: 5 % 2?', '2.5', '2', '1', '0', '1', 'active'),
(76, 36, 'How do you declare a constant in PHP?', 'const MY_CONSTANT = 10;', 'define(\"MY_CONSTANT\", 10);', 'var MY_CONSTANT = 10;', 'let MY_CONSTANT = 10;', 'define(\"MY_CONSTANT\", 10);', 'active'),
(77, 36, 'What is the data type of the following variable: $x = 10.5;', 'Integer', 'String', 'Float', 'Boolean', 'Float', 'active'),
(78, 36, 'Which of the following is not a valid PHP variable name?', '$myVar', ' _myVar', '$123var', 'myVar', 'myVar', 'active'),
(79, 36, 'What is the correct way to write a single-line comment in PHP?', '* ', '// This is a comment', '# This is a comment', '/* This is a comment */', '// This is a comment', 'active'),
(80, 36, 'How do you end a PHP script?', '/script', '/php', '?>', '/scripting', '?>', 'active'),
(81, 36, 'What is the purpose of the echo statement in PHP?', ' To declare a variable', 'To define a function', 'To output data to the browser', 'To create a loop', 'To output data to the browser', 'active'),
(82, 36, 'What is PHP?', 'A markup language', 'A scripting language', 'A programming language', 'A styling language', 'A programming language', 'active'),
(83, 35, 'What is a common error to avoid when calculating averages in PHP?', 'Using integer division instead of floating-point division', 'Forgetting to initialize variables', 'Using incorrect array indexing', 'All of the above', 'All of the above', 'active'),
(84, 35, 'How can you handle missing values (e.g., null or empty) when calculating an average in PHP?', 'Ignore them and calculate the average based on the available values', 'Assign a default value to missing values before calculating the average', 'Exclude them from the calculation and adjust the divisor accordingly', 'All of the above', 'All of the above', 'active'),
(85, 35, 'In a PHP application, how would you calculate the average rating of a product based on user reviews?', 'By summing all the ratings and dividing by the number of review', 'By finding the median of the ratings', 'By using a weighted average, giving more weight to recent reviews', 'By using a machine learning algorithm to predict the average rating', 'By summing all the ratings and dividing by the number of review', 'active'),
(86, 35, 'What is the purpose of the `intval()` function in PHP?', 'To convert a number to a string', 'To round a number to the nearest integer', 'To convert a string or float to an integer', 'To calculate the average of a set of numbers', 'To convert a string or float to an integer', 'active'),
(87, 35, 'How would you calculate the weighted average of a set of numbers in PHP?', 'By multiplying each number by its weight, summing the products, and dividing by the sum of weights', 'By simply averaging the numbers, regardless of their weights', 'By finding the median of the weighted number', 'By using a built-in PHP function for weighted averages', 'By multiplying each number by its weight, summing the products, and dividing by the sum of weights', 'active'),
(89, 35, 'What is the output of the following PHP code?         $scores = array(85, 92, 78, 95);     $average_score = round(array_sum($scores) / count($scores), 1);     echo $average_score;', '87.5', '88', '87.4', '87', '88', 'active'),
(90, 35, 'Given the following PHP array, how would you calculate the average of its elements :    $numbers = array(10, 20, 30, 40, 50);', '$average = array_sum($numbers) / count($numbers);', '$average = sum($numbers) / count($numbers);', '$average = avg($numbers);', '$average = mean($numbers);', '$average = array_sum($numbers) / count($numbers);', 'active'),
(91, 35, 'What is the result of the following PHP code?     $num = 3.14159;    $rounded_num = round($num, 2);    echo $rounded_num;   ', '3', '3.1', '3.14', '3.15', '3.14', 'active'),
(92, 35, 'Which function can be used to round a number to the nearest integer in PHP?', 'round()', 'ceil()', 'floor()', 'intval()', 'round()', 'active'),
(93, 35, 'What is the correct PHP code to calculate the average of two numbers, 10 and 20?', '$average = (10 + 20) / 2;', '$average = 10 + 20 / 2;', '$average = (10, 20) / 2;', '$average = 10 / 2 + 20;', '$average = (10 + 20) / 2;', 'active'),
(94, 34, 'What is the difference between interface and abstract class in PHP?', 'Interfaces can only contain method signatures, while abstract classes can contain both method signatures and implementations', 'Interfaces can contain both method signatures and implementations, while abstract classes can only contain method signatures', 'Interfaces can be extended by multiple classes, while abstract classes can only be extended by one class', 'Interfaces can be instantiated, while abstract classes cannot', 'Interfaces can only contain method signatures, while abstract classes can contain both method signatures and implementations', 'active'),
(95, 34, 'What is the purpose of the abstract keyword in PHP?', 'To define a class that cannot be instantiated', 'To define a method that must be implemented by subclasses', 'To define a property that cannot be modified', 'To define a constant', 'To define a method that must be implemented by subclasses', 'active'),
(96, 34, 'What is the difference between public, private, and protected access modifiers in PHP?', 'Public members can be accessed from anywhere, private members can only be accessed within the class, and protected members can be accessed within the class and its subclasses', 'Public members can only be accessed within the class, private members can be accessed from anywhere, and protected members can be accessed within the class and its subclasses', 'Public members can be accessed from anywhere, private members can be accessed within the class and its subclasses, and protected members can only be accessed within the class', 'Public members can be accessed within the class and its subclasses, private members can only be accessed within the class, and protected members can be accessed from anywhere', 'Public members can be accessed from anywhere, private members can only be accessed within the class, and protected members can be accessed within the class and its subclasses', 'active'),
(97, 34, 'How can you optimize database queries in PHP?', 'By using indexes', 'By minimizing the number of queries', 'By using prepared statements', 'All of the above', 'All of the above', 'active'),
(98, 34, 'Which PHP configuration directive can be used to improve script execution time?', 'max_execution_time', 'memory_limit', 'Both max_execution_time and memory_limit are correct', 'None of the above', 'Both max_execution_time and memory_limit are correct', 'active'),
(99, 34, 'What is the difference between session_start() and session_destroy()?', 'session_start() initializes a new session, while session_destroy() destroys the current session', 'session_start() resumes an existing session, while session_destroy() destroys the current session', 'session_start() creates a new session ID, while session_destroy() deletes the session ID', 'Both (A) and (B) are correct', 'session_start() initializes a new session, while session_destroy() destroys the current session', 'active'),
(100, 34, 'How can you prevent SQL injection attacks in PHP?', 'By using prepared statements', 'By escaping user input', 'By using parameterized queries', 'All of the above', 'All of the above', 'active'),
(101, 34, 'What is the purpose of the spl_autoload_register() function', 'To automatically load classes as they are needed', 'To register a custom error handler', 'To create a new object of a class', 'To serialize and deserialize objects', 'To automatically load classes as they are needed', 'active'),
(102, 34, 'How do you define a custom exception class in PHP?', 'By using the throw keyword', 'By using the try-catch block', 'By extending the Exception class', 'By defining a function with the exception keyword', 'By extending the Exception class', 'active'),
(103, 34, 'What is the difference between include() and require_once() in PHP?', 'require_once() includes a file only once, while include() can include it multiple times', 'require_once() checks if a file has already been included and includes it only if necessary', 'Both (A) and (B) are correct', 'Both (A) and (B) are incorrect', 'Both (A) and (B) are correct', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `exam_tbl`
--

CREATE TABLE `exam_tbl` (
  `ex_id` int(11) NOT NULL,
  `cou_id` int(11) NOT NULL,
  `ex_title` varchar(1000) NOT NULL,
  `ex_time_limit` varchar(1000) NOT NULL,
  `ex_questlimit_display` int(11) NOT NULL,
  `ex_description` varchar(1000) NOT NULL,
  `ex_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam_tbl`
--

INSERT INTO `exam_tbl` (`ex_id`, `cou_id`, `ex_title`, `ex_time_limit`, `ex_questlimit_display`, `ex_description`, `ex_created`) VALUES
(30, 67, 'HTML-Hard', '10', 10, 'HyperText MarkUp Language', '2024-12-12 05:33:56'),
(32, 67, 'HTML-Average', '20', 10, 'HyperText MarkUp Language', '2024-12-12 06:42:20'),
(33, 67, 'HTML-Easy', '30', 10, 'HyperText MarkUp Language', '2024-12-12 06:05:22'),
(34, 67, 'PHP-Hard', '10', 10, 'Hypertext Preprocessor', '2024-12-12 07:02:49'),
(35, 67, 'PHP-Average', '20', 10, 'Hypertext Preprocessor', '2024-12-12 07:03:11'),
(36, 67, 'PHP-Easy', '30', 10, 'Hypertext Preprocessor', '2024-12-12 07:03:39');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks_tbl`
--

CREATE TABLE `feedbacks_tbl` (
  `fb_id` int(11) NOT NULL,
  `exmne_id` int(11) NOT NULL,
  `fb_exmne_as` varchar(1000) NOT NULL,
  `fb_feedbacks` varchar(1000) NOT NULL,
  `fb_date` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `feedbacks_tbl`
--

INSERT INTO `feedbacks_tbl` (`fb_id`, `exmne_id`, `fb_exmne_as`, `fb_feedbacks`, `fb_date`) VALUES
(13, 15, 'Anonymous', 'The quizzes are so easy', 'December 13, 2024'),
(14, 14, 'Elmer Domingo', 'The quizzes are mind boggling!', 'December 13, 2024');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_acc`
--
ALTER TABLE `admin_acc`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `course_tbl`
--
ALTER TABLE `course_tbl`
  ADD PRIMARY KEY (`cou_id`);

--
-- Indexes for table `examinee_tbl`
--
ALTER TABLE `examinee_tbl`
  ADD PRIMARY KEY (`exmne_id`);

--
-- Indexes for table `exam_answers`
--
ALTER TABLE `exam_answers`
  ADD PRIMARY KEY (`exans_id`);

--
-- Indexes for table `exam_attempt`
--
ALTER TABLE `exam_attempt`
  ADD PRIMARY KEY (`examat_id`);

--
-- Indexes for table `exam_question_tbl`
--
ALTER TABLE `exam_question_tbl`
  ADD PRIMARY KEY (`eqt_id`);

--
-- Indexes for table `exam_tbl`
--
ALTER TABLE `exam_tbl`
  ADD PRIMARY KEY (`ex_id`);

--
-- Indexes for table `feedbacks_tbl`
--
ALTER TABLE `feedbacks_tbl`
  ADD PRIMARY KEY (`fb_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_acc`
--
ALTER TABLE `admin_acc`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course_tbl`
--
ALTER TABLE `course_tbl`
  MODIFY `cou_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `examinee_tbl`
--
ALTER TABLE `examinee_tbl`
  MODIFY `exmne_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `exam_answers`
--
ALTER TABLE `exam_answers`
  MODIFY `exans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=462;

--
-- AUTO_INCREMENT for table `exam_attempt`
--
ALTER TABLE `exam_attempt`
  MODIFY `examat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `exam_question_tbl`
--
ALTER TABLE `exam_question_tbl`
  MODIFY `eqt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `exam_tbl`
--
ALTER TABLE `exam_tbl`
  MODIFY `ex_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `feedbacks_tbl`
--
ALTER TABLE `feedbacks_tbl`
  MODIFY `fb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
