-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 16, 2024 at 12:12 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam_feedback`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `employee_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`, `employee_id`) VALUES
(2, 'Abood Akram', '$2y$10$duPGRLh7G5.5xIGqqSayBeVSJ9thrYR80ZWtjCKQuWl8sbDDLoQhG', '1234'),
(5, 'sasasasa', '$2y$10$XU/Z9jhBXdKsTNcFnMi2Zuoj4YDeG5Q.tca9gJebK1OTBnFkE1/86', '12121212');

-- --------------------------------------------------------

--
-- Table structure for table `form_five`
--

CREATE TABLE `form_five` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name_of_college` varchar(255) NOT NULL,
  `name_of_program` varchar(255) NOT NULL,
  `degree_of_program` varchar(255) NOT NULL,
  `name_of_the_institution_granting` varchar(255) NOT NULL,
  `date_of_get_accreditation` date NOT NULL,
  `date_of_renew_accreditation` date NOT NULL,
  `notes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `form_five`
--

INSERT INTO `form_five` (`id`, `user_id`, `name_of_college`, `name_of_program`, `degree_of_program`, `name_of_the_institution_granting`, `date_of_get_accreditation`, `date_of_renew_accreditation`, `notes`) VALUES
(1, 1, 'كلية الهندسة', 'برنامج التطوير البرمجي', 'دبلوم ', 'Jasara', '2024-01-02', '2024-01-26', 'لا يوجد');

-- --------------------------------------------------------

--
-- Table structure for table `form_four`
--

CREATE TABLE `form_four` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name_of_college` varchar(255) NOT NULL,
  `name_of_program` varchar(255) NOT NULL,
  `degree_of_program` varchar(255) NOT NULL,
  `reason_for_stop_or_postpone` varchar(255) NOT NULL,
  `date_for_stop_or_postpone` date NOT NULL,
  `date_for_reopen` date NOT NULL,
  `notes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `form_four`
--

INSERT INTO `form_four` (`id`, `user_id`, `name_of_college`, `name_of_program`, `degree_of_program`, `reason_for_stop_or_postpone`, `date_for_stop_or_postpone`, `date_for_reopen`, `notes`) VALUES
(1, 1, 'كلية الهندسة', 'برنامج التطوير البرمجي', 'دبلوم ', 'بدون اسباب', '2023-08-15', '2024-02-11', 'لا يوجد');

-- --------------------------------------------------------

--
-- Table structure for table `form_one`
--

CREATE TABLE `form_one` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name_of_college` varchar(255) NOT NULL,
  `name_of_program` varchar(255) NOT NULL,
  `degree_of_program` varchar(255) NOT NULL,
  `reviewed_subjects` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `none_reviewed_subjects` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `number_of_all_subjects_in_semester` int(100) NOT NULL,
  `number_of_reviewed_subjects_in_semester` int(100) NOT NULL,
  `notes` text NOT NULL DEFAULT 'لا يوجد'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `form_one`
--

INSERT INTO `form_one` (`id`, `user_id`, `name_of_college`, `name_of_program`, `degree_of_program`, `reviewed_subjects`, `none_reviewed_subjects`, `number_of_all_subjects_in_semester`, `number_of_reviewed_subjects_in_semester`, `notes`) VALUES
(24, 1, 'كلية الهندسة', 'برنامج التطوير البرمجي', 'دبلوم ', '[{\"name_of_subject\":\"احصاء هندسي\",\"number_of_subject\":\"1221\"},{\"name_of_subject\":\"تحليل عددي\",\"number_of_subject\":\"111\"},{\"name_of_subject\":\"دايناميك\",\"number_of_subject\":\"2222\"}]', '[{\"name_of_subject\":\"هندسة جسور\",\"number_of_subject\":\"1345\",\"justification_of_subject\":\"عدم تواجد رئيس القسم\"},{\"name_of_subject\":\"ميكانيكا موائع\",\"number_of_subject\":\"8787\",\"justification_of_subject\":\"عدم اجتماع دكاترة القسم\"}]', 5, 3, 'لا يوجد ملاحظات'),
(34, 4, 'كلية الاثار', 'توت عنخمون', 'بروفيسور', '[{\"name_of_subject\":\"اثار 1\",\"number_of_subject\":\"54454545\"},{\"name_of_subject\":\"اثار مصرية\",\"number_of_subject\":\"0420420\"},{\"name_of_subject\":\"تاريخ الانباط\",\"number_of_subject\":\"420420420\"}]', '[{\"name_of_subject\":\"مقدمة في الاثار \",\"number_of_subject\":\"40242240\",\"justification_of_subject\":\"عطلة راس السنة\"},{\"name_of_subject\":\"التاريخ الاسلامي\",\"number_of_subject\":\"8722772\",\"justification_of_subject\":\"عدم اكمتال نصاب اللجنة\"},{\"name_of_subject\":\"مستحاثات فرعونية\",\"number_of_subject\":\"57825745\",\"justification_of_subject\":\"اجتماع مع رئيس الجامعة\"},{\"name_of_subject\":\"حضارات امريكا اللاتينية\",\"number_of_subject\":\"45400112\",\"justification_of_subject\":\"عدم تواجد رئيس الكلية\"}]', 7, 3, 'تحديد موعد الاجتماع بتاريخ 24 من الشهر الجاري');

-- --------------------------------------------------------

--
-- Table structure for table `form_three`
--

CREATE TABLE `form_three` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name_of_college` varchar(255) NOT NULL,
  `name_of_program` varchar(255) NOT NULL,
  `degree_of_program` varchar(255) NOT NULL,
  `reviewed_subjects` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`reviewed_subjects`)),
  `none_reviewed_subjects` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`none_reviewed_subjects`)),
  `number_of_all_subjects_in_program` int(100) NOT NULL,
  `notes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `form_three`
--

INSERT INTO `form_three` (`id`, `user_id`, `name_of_college`, `name_of_program`, `degree_of_program`, `reviewed_subjects`, `none_reviewed_subjects`, `number_of_all_subjects_in_program`, `notes`) VALUES
(10, 1, 'كلية الهندسة', 'برنامج التطوير البرمجي', 'دبلوم ', '[{\"name_of_subject\":\"لا يوجد مواد تم مراجعتها\",\"number_of_subject\":\"لا يوجد مواد تم مراجعتها\"}]', '[{\"name_of_subject\":\"لا يوجد مواد لم يتم مراجعتها\",\"number_of_subject\":\"لا يوجد مواد لم يتم مراجعتها\"}]', 2, 'الا يوجد');

-- --------------------------------------------------------

--
-- Table structure for table `form_two`
--

CREATE TABLE `form_two` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name_of_college` varchar(255) NOT NULL,
  `name_of_program` varchar(255) NOT NULL,
  `degree_of_program` varchar(255) NOT NULL,
  `adhered_subjects` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`adhered_subjects`)),
  `none_adhered_subjects` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`none_adhered_subjects`)),
  `number_of_all_subjects_in_program` int(100) NOT NULL,
  `notes` varchar(255) NOT NULL DEFAULT 'لا يوجد'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `form_two`
--

INSERT INTO `form_two` (`id`, `user_id`, `name_of_college`, `name_of_program`, `degree_of_program`, `adhered_subjects`, `none_adhered_subjects`, `number_of_all_subjects_in_program`, `notes`) VALUES
(13, 1, 'كلية الهندسة', 'برنامج التطوير البرمجي', 'دبلوم ', '[{\"name_of_subject\":\"لا يوجد مواد ملتزمة بالسياسة والإجراءات والنماذج الخاصة بالامتحانات\",\"number_of_subject\":\"لا يوجد مواد ملتزمة بالسياسة والإجراءات والنماذج الخاصة بالامتحانات\"}]', '[{\"name_of_subject\":\"لا يوجد مواد غير ملتزمة بالسياسة والإجراءات والنماذج الخاصة بالامتحانات\",\"number_of_subject\":\"لا يوجد مواد غير ملتزمة بالسياسة والإجراءات والنماذج الخاصة بالامتحانات\"}]', 0, ''),
(14, 4, 'كلية الاثار', 'توت عنخمون', 'بروفيسور', '[{\"name_of_subject\":\"اثار متقدمة\",\"number_of_subject\":\"212154\"},{\"name_of_subject\":\"اثار اغريقية\",\"number_of_subject\":\"879562\"},{\"name_of_subject\":\"مقدمة في علم الاثار\",\"number_of_subject\":\"213298\"}]', '[{\"name_of_subject\":\"تمثال بوذا\",\"number_of_subject\":\"892112\"}]', 4, 'لا يوجد ملاحظات');

-- --------------------------------------------------------

--
-- Table structure for table `main_form`
--

CREATE TABLE `main_form` (
  `id` int(100) NOT NULL,
  `model_name` varchar(255) NOT NULL,
  `model_number` varchar(255) NOT NULL,
  `employer` varchar(255) NOT NULL,
  `number_and_date_of_revision` date NOT NULL,
  `approval_decision_number` varchar(255) NOT NULL,
  `approval_decision_date` date NOT NULL,
  `pages` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_form`
--

INSERT INTO `main_form` (`id`, `model_name`, `model_number`, `employer`, `number_and_date_of_revision`, `approval_decision_number`, `approval_decision_date`, `pages`) VALUES
(1, 'none', 'dsdsds', 'fddfdf', '2024-01-26', 'dfdfdf', '2024-02-01', 21),
(2, 'none', 'dsdsds', 'fddfdf', '2024-02-07', 'dfdfdf', '2024-02-10', 2332);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `faculty` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `forms_completed` int(100) NOT NULL DEFAULT 0,
  `employee_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `faculty`, `department`, `forms_completed`, `employee_id`) VALUES
(1, 'ahmad', '456', 'engineering', 'software', 2, '120150505020'),
(4, 'Abdelmajied', '$2y$10$Ys3WjTdgBnrnBH6gHtN/eusaQFy.iKLw1TsPcaZ4.XJHDPUQ.0zCu', 'Technology', 'software dev', 0, '120120504063');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`);

--
-- Indexes for table `form_five`
--
ALTER TABLE `form_five`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `form_four`
--
ALTER TABLE `form_four`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `form_one`
--
ALTER TABLE `form_one`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `form_three`
--
ALTER TABLE `form_three`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `form_two`
--
ALTER TABLE `form_two`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `main_form`
--
ALTER TABLE `main_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `form_five`
--
ALTER TABLE `form_five`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `form_four`
--
ALTER TABLE `form_four`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `form_one`
--
ALTER TABLE `form_one`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `form_three`
--
ALTER TABLE `form_three`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `form_two`
--
ALTER TABLE `form_two`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `main_form`
--
ALTER TABLE `main_form`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `form_five`
--
ALTER TABLE `form_five`
  ADD CONSTRAINT `form_five_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `form_four`
--
ALTER TABLE `form_four`
  ADD CONSTRAINT `form_four_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `form_one`
--
ALTER TABLE `form_one`
  ADD CONSTRAINT `form_one_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `form_three`
--
ALTER TABLE `form_three`
  ADD CONSTRAINT `form_three_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `form_two`
--
ALTER TABLE `form_two`
  ADD CONSTRAINT `form_two_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
