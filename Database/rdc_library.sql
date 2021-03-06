-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2016 at 11:42 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rdc_library`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('Administrative', 17, NULL),
('Director', 13, NULL),
('QAD Tester', 15, NULL),
('Quality Assurance Division Chief', 14, NULL),
('Quality Assurance Employee', 16, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('Administrative', 2, 'these are permission for administrative division employee', NULL, NULL, NULL, NULL),
('create-directive', 1, 'allow user to add directive', NULL, NULL, NULL, NULL),
('create-implan', 1, 'allows user to create an implan document', NULL, NULL, NULL, NULL),
('create-itemspec', 1, 'allows user to add an itemspecification document', NULL, NULL, NULL, NULL),
('create-result', 1, 'allows user to create a result document', NULL, NULL, NULL, NULL),
('create-taskorg', 1, 'allows user to add a taskorg document', NULL, NULL, NULL, NULL),
('create-testdoc', 1, 'allows user to create test document ', NULL, NULL, NULL, NULL),
('create-worksheet', 1, 'allows user to add a worksheet', NULL, NULL, NULL, NULL),
('delete-directive', 1, 'allows user to delete a directive', NULL, NULL, NULL, NULL),
('delete-implan', 1, 'allows user to delete an implementation plan', NULL, NULL, NULL, NULL),
('delete-itemspec', 1, 'allows user to delete item specification', NULL, NULL, NULL, NULL),
('delete-result', 1, 'allows user to delete result document', NULL, NULL, NULL, NULL),
('delete-taskorg', 1, 'allows user to delete task organization ', NULL, NULL, NULL, NULL),
('delete-testdocu', 1, 'allows user to delete test document ', NULL, NULL, NULL, NULL),
('delete-worksheet', 1, 'allows user to delete test worksheets', NULL, NULL, NULL, NULL),
('Director', 2, 'this user can do everything', NULL, NULL, NULL, NULL),
('QAD Tester', 2, 'these are permissions for testers under QAD', NULL, NULL, NULL, NULL),
('Quality Assurance Division Chief', 2, 'this permission is for quality assurance division chief ', NULL, NULL, NULL, NULL),
('Quality Assurance Employee', 2, 'these are permissions for quality assurance division employee', NULL, NULL, NULL, NULL),
('update-directive', 1, 'allows user to update directive', NULL, NULL, NULL, NULL),
('update-implan', 1, 'allows user to update implementation plan', NULL, NULL, NULL, NULL),
('update-itemspec', 1, 'allows user to update implementation plan ', NULL, NULL, NULL, NULL),
('update-results', 1, 'allows user to update result document', NULL, NULL, NULL, NULL),
('update-taskorg', 1, 'allows user to update task organization', NULL, NULL, NULL, NULL),
('update-testdoc', 1, 'allows user to update test document', NULL, NULL, NULL, NULL),
('update-worksheet', 1, 'allows user to test worksheet ', NULL, NULL, NULL, NULL),
('user', 1, 'standard user', NULL, NULL, NULL, NULL),
('view index', 1, 'this user can view index when looged in', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('Administrative', 'create-directive'),
('Administrative', 'update-directive'),
('Administrative', 'view index'),
('Director', 'create-directive'),
('Director', 'create-implan'),
('Director', 'create-itemspec'),
('Director', 'create-result'),
('Director', 'create-taskorg'),
('Director', 'create-testdoc'),
('Director', 'create-worksheet'),
('Director', 'delete-directive'),
('Director', 'delete-implan'),
('Director', 'delete-itemspec'),
('Director', 'delete-result'),
('Director', 'delete-taskorg'),
('Director', 'delete-testdocu'),
('Director', 'delete-worksheet'),
('Director', 'update-directive'),
('Director', 'update-implan'),
('Director', 'update-itemspec'),
('Director', 'update-results'),
('Director', 'update-taskorg'),
('Director', 'update-testdoc'),
('Director', 'update-worksheet'),
('Director', 'view index'),
('QAD Tester', 'update-itemspec'),
('QAD Tester', 'update-results'),
('QAD Tester', 'update-taskorg'),
('QAD Tester', 'update-worksheet'),
('QAD Tester', 'view index'),
('Quality Assurance Division Chief', 'create-implan'),
('Quality Assurance Division Chief', 'create-itemspec'),
('Quality Assurance Division Chief', 'create-result'),
('Quality Assurance Division Chief', 'create-taskorg'),
('Quality Assurance Division Chief', 'create-worksheet'),
('Quality Assurance Division Chief', 'delete-implan'),
('Quality Assurance Division Chief', 'delete-itemspec'),
('Quality Assurance Division Chief', 'delete-result'),
('Quality Assurance Division Chief', 'delete-taskorg'),
('Quality Assurance Division Chief', 'delete-worksheet'),
('Quality Assurance Division Chief', 'update-implan'),
('Quality Assurance Division Chief', 'update-itemspec'),
('Quality Assurance Division Chief', 'update-results'),
('Quality Assurance Division Chief', 'update-taskorg'),
('Quality Assurance Division Chief', 'update-worksheet'),
('Quality Assurance Division Chief', 'view index'),
('Quality Assurance Employee', 'create-implan'),
('Quality Assurance Employee', 'create-itemspec'),
('Quality Assurance Employee', 'create-taskorg'),
('Quality Assurance Employee', 'create-worksheet'),
('Quality Assurance Employee', 'delete-implan'),
('Quality Assurance Employee', 'delete-itemspec'),
('Quality Assurance Employee', 'delete-result'),
('Quality Assurance Employee', 'delete-taskorg'),
('Quality Assurance Employee', 'delete-worksheet'),
('Quality Assurance Employee', 'update-implan'),
('Quality Assurance Employee', 'update-itemspec'),
('Quality Assurance Employee', 'update-results'),
('Quality Assurance Employee', 'update-taskorg'),
('Quality Assurance Employee', 'update-worksheet'),
('Quality Assurance Employee', 'view index'),
('user', 'view index');

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `directive`
--

CREATE TABLE `directive` (
  `id` int(11) NOT NULL,
  `directive_date` date NOT NULL,
  `directive_type` varchar(45) NOT NULL,
  `directive_name` varchar(100) NOT NULL,
  `directive_file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `directive`
--

INSERT INTO `directive` (`id`, `directive_date`, `directive_type`, `directive_name`, `directive_file`) VALUES
(1, '2012-12-12', 'DirectiveType1', 'Directive1', ''),
(2, '2012-12-12', 'Pretest', 'Pretest1', ''),
(3, '2012-12-12', 'Pretest', 'Pretest1', ''),
(4, '0000-00-00', 'Pretest', 'Pretest1', 'uploads/Pretest1,docx'),
(5, '2012-11-12', 'acceptance', 'acceptance directive', ''),
(6, '2012-11-12', 'acceptance', 'acceptance directive', ''),
(7, '2012-11-12', 'acceptance', 'acceptance directive', ''),
(8, '2012-11-12', 'acceptance', 'acceptance directive', ''),
(9, '2012-12-12', 'acceptance', 'acceptance directive', ''),
(10, '2012-11-12', 'acceptance', 'acceptance directive', ''),
(11, '2012-11-12', 'acceptance', 'acceptance directive', ''),
(12, '2012-10-12', 'post qualification', 'post qualification', ''),
(13, '0000-00-00', 'acceptance2', 'acceptancedir', 'uploads/acceptancedir,docx'),
(17, '0000-00-00', 'acceptance3', 'acceptance directive3', 'uploads/acceptance directive3.docx'),
(18, '2012-09-12', 'acceptance3', 'acceptance directive3', ''),
(19, '2012-09-12', 'Pretest', 'Pretest1', ''),
(20, '0000-00-00', 'postqual', 'postqual directive', ''),
(21, '2012-09-12', 'acceptance3', 'acceptance directive', ''),
(22, '0000-00-00', 'DirectiveType1', 'post qualification', 'uploads/post qualification.docx'),
(23, '2012-11-12', 'DirectiveType1', 'Directive1', ''),
(24, '2012-12-12', 'acceptance', 'Directive1', ''),
(25, '2012-12-12', 'acceptance', 'Directive1', ''),
(26, '2012-09-12', 'acceptance', 'Pretest1', ''),
(27, '2012-12-16', 'Pretest', 'Pretest sample document', ''),
(28, '2012-09-12', 'acceptance', 'Pretest1', ''),
(29, '2012-09-12', 'acceptance', 'Directive1', ''),
(30, '2012-09-12', 'DirectiveType1', 'post qualification', ''),
(31, '2012-12-12', 'acceptance2', 'Pretest1', ''),
(32, '0000-00-00', 'Acceptance', 'new', 'uploads/new.docx'),
(33, '0000-00-00', 'Acceptance', 'new1', 'uploads/new1.docx'),
(34, '0000-00-00', 'Acceptance', 'Sample', 'uploads/Sample.docx'),
(35, '0000-00-00', 'Pretest', 'Sample directive', ''),
(37, '0000-00-00', 'Pretest', 'Sample directive', 'uploads/Sample directive.docx');

-- --------------------------------------------------------

--
-- Table structure for table `dv_category`
--

CREATE TABLE `dv_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dv_document`
--

CREATE TABLE `dv_document` (
  `id` int(11) NOT NULL,
  `categoryId` int(11) DEFAULT '0',
  `ownerId` int(11) DEFAULT '0',
  `realname` varchar(255) NOT NULL,
  `mimeType` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` varchar(255) DEFAULT NULL,
  `comment` text,
  `status` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dv_log`
--

CREATE TABLE `dv_log` (
  `id` int(11) NOT NULL,
  `documentId` int(11) NOT NULL,
  `modifiedOn` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modifiedBy` int(11) NOT NULL DEFAULT '0',
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dv_permission`
--

CREATE TABLE `dv_permission` (
  `id` int(11) NOT NULL,
  `documentId` int(11) NOT NULL,
  `userId` int(11) NOT NULL DEFAULT '0',
  `rights` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `emp_rank` varchar(45) NOT NULL,
  `emp_type` varchar(45) NOT NULL,
  `emp_fname` varchar(45) NOT NULL,
  `emp_lname` varchar(45) NOT NULL,
  `emp_division` varchar(45) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `title`, `description`, `created_date`) VALUES
(1, 'event title', 'event', '2016-10-25'),
(2, 'event title 2', 'event 2', '2016-10-25'),
(3, 'CSPROJ Presentation', 'Midterm presentation', '2016-10-25'),
(4, 'event', 'event description', '2016-10-27'),
(5, 'a very long event for this date', 'asdasd', '2016-10-28'),
(6, 'asd', 'asd', '2016-10-27');

-- --------------------------------------------------------

--
-- Table structure for table `implementation_plan`
--

CREATE TABLE `implementation_plan` (
  `id` int(11) NOT NULL,
  `implan_date` date NOT NULL,
  `implan_name` varchar(100) NOT NULL,
  `implan_file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `implementation_plan`
--

INSERT INTO `implementation_plan` (`id`, `implan_date`, `implan_name`, `implan_file`) VALUES
(1, '2012-12-12', 'implan1', '0'),
(2, '2012-12-12', 'implan2', ''),
(3, '2012-12-12', 'implan2', ''),
(4, '0000-00-00', 'implan2', 'uploads/implan2.docx'),
(5, '2012-12-12', 'implan3', ''),
(6, '0000-00-00', 'implan3', 'uploads/implan3.docx');

-- --------------------------------------------------------

--
-- Table structure for table `item_specification`
--

CREATE TABLE `item_specification` (
  `id` int(11) NOT NULL,
  `itemspec_date` date NOT NULL,
  `itemspec_name` varchar(100) NOT NULL,
  `itemspec_file` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_specification`
--

INSERT INTO `item_specification` (`id`, `itemspec_date`, `itemspec_name`, `itemspec_file`) VALUES
(1, '2012-12-12', 'itemspecification1', ''),
(2, '2012-12-12', 'newItemSpec', ''),
(3, '2012-12-12', 'itemspec2', ''),
(4, '0000-00-00', 'itemspec2', 'uploads/itemspec2.docx'),
(5, '0000-00-00', 'itemspecnew', 'uploads/itemspecnew.docx');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1470902919),
('m130524_201442_init', 1470902926),
('m150202_124833_init', 1480898662);

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `id` int(11) NOT NULL,
  `result_date` date NOT NULL,
  `result_item` varchar(45) NOT NULL,
  `result_file` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `result_date`, `result_item`, `result_file`) VALUES
(1, '2012-12-12', 'result1', ''),
(2, '2012-12-12', 'ResultItemnew', ''),
(3, '0000-00-00', 'ResultItemnew', 'uploads/ResultItemnew.docx'),
(4, '0000-00-00', 'ResultItemnewest', 'uploads/ResultItemnewest.docx');

-- --------------------------------------------------------

--
-- Table structure for table `task_organization`
--

CREATE TABLE `task_organization` (
  `id` int(11) NOT NULL,
  `taskorg_date` date NOT NULL,
  `taskorg_name` varchar(100) NOT NULL,
  `taskorg_file` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task_organization`
--

INSERT INTO `task_organization` (`id`, `taskorg_date`, `taskorg_name`, `taskorg_file`) VALUES
(1, '2012-12-12', 'taskorg1', ''),
(2, '0000-00-00', 'taskorgnew', 'uploads/taskorgnew.docx'),
(3, '0000-00-00', 'taskorgnewest', 'uploads/taskorgnewest.docx');

-- --------------------------------------------------------

--
-- Table structure for table `test_document`
--

CREATE TABLE `test_document` (
  `id` int(11) NOT NULL,
  `test_date` date NOT NULL,
  `test_type` varchar(45) NOT NULL,
  `test_schedule` date NOT NULL,
  `test_name` varchar(45) NOT NULL,
  `test_worksheet_id` int(11) NOT NULL,
  `task_organization_id` int(11) NOT NULL,
  `result_id` int(11) NOT NULL,
  `implementation_plan_id` int(11) NOT NULL,
  `item_specification_id` int(11) NOT NULL,
  `directive_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_document`
--

INSERT INTO `test_document` (`id`, `test_date`, `test_type`, `test_schedule`, `test_name`, `test_worksheet_id`, `task_organization_id`, `result_id`, `implementation_plan_id`, `item_specification_id`, `directive_id`) VALUES
(1, '0000-00-00', 'Acceptance', '0000-00-00', 'New Test', 1, 1, 1, 3, 1, 11),
(2, '2012-12-12', 'Acceptance', '2012-12-12', 'New Test1', 1, 1, 1, 1, 1, 1),
(3, '2012-12-12', 'asd', '2012-12-12', 'asd', 2, 2, 3, 4, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `test_worksheet`
--

CREATE TABLE `test_worksheet` (
  `id` int(11) NOT NULL,
  `work_item` varchar(46) NOT NULL,
  `work_file` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_worksheet`
--

INSERT INTO `test_worksheet` (`id`, `work_item`, `work_file`) VALUES
(1, 'boots', ''),
(2, 'TestWorksheetnew', 'uploads/TestWorksheetnew.docx'),
(3, 'TestWorksheetnewest', 'uploads/TestWorksheetnewest.docx');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `rank` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `rank`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(13, 'first name', 'last name', 'Ltc', 'director', '0_Vdi7SbIKXKi-xVfx9pUqTXmZor21Ra', '$2y$13$DubMVNpC8YVhI8uzn6F7vuH2xTZlWsPFQ0ckDqF3o/M78eo9iDnwe', NULL, 'director@gmail.com', 10, 1478876734, 1478876734),
(14, 'first name', 'first name', 'Major', 'qadchief', 'aTA0Zvw_wHz29wozf74R2v_7AP3rC7-3', '$2y$13$XdEGVQ8D2tu2A312RNxNXuWlQyig0doosrjD/f/xu2TYBarA2CGrm', NULL, 'qad@gmail.com', 10, 1478876894, 1478876894),
(15, 'first name', 'last name', 'civilian', 'qadtester', 'E6OwIwO0v66S-UR9fCEUCXeB81Zc5vmE', '$2y$13$hKhuYYP4XmGQmsHR8CW1teEVVL.ktcyjHcMCi4EJAxBPIPER4tcpi', NULL, 'tester@gmail.com', 10, 1478876944, 1478876944),
(16, 'first name', 'last name', 'Private', 'qademployee', 'qWJoHFJC2PrxbJ3KahXz1I-GFQCP5pcn', '$2y$13$veU9GuXTinNtZKmzQKQBtuv.id7oYCa.vY6e.rFNUuuycfWg3zZie', NULL, 'qade@gmail.com', 10, 1478877039, 1478877039),
(17, 'first name', 'last name', 'Captain', 'administrative', 'c31PCfHULH2EVkcKEKABfbtumscplNNz', '$2y$13$lqoLIP3upEFQ/xhRGrdQ2uCcIzxSoY3NvRYpxca/sk9w.1KnlniTm', NULL, 'admin@gmail.com', 10, 1478877132, 1478877132);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `directive`
--
ALTER TABLE `directive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dv_category`
--
ALTER TABLE `dv_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dv_document`
--
ALTER TABLE `dv_document`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_doccat_doc` (`categoryId`);

--
-- Indexes for table `dv_log`
--
ALTER TABLE `dv_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_doc_log` (`documentId`);

--
-- Indexes for table `dv_permission`
--
ALTER TABLE `dv_permission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_doc_perm` (`documentId`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `implementation_plan`
--
ALTER TABLE `implementation_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_specification`
--
ALTER TABLE `item_specification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_organization`
--
ALTER TABLE `task_organization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_document`
--
ALTER TABLE `test_document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_worksheet`
--
ALTER TABLE `test_worksheet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `directive`
--
ALTER TABLE `directive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `dv_category`
--
ALTER TABLE `dv_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dv_document`
--
ALTER TABLE `dv_document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dv_log`
--
ALTER TABLE `dv_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dv_permission`
--
ALTER TABLE `dv_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `implementation_plan`
--
ALTER TABLE `implementation_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `item_specification`
--
ALTER TABLE `item_specification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `task_organization`
--
ALTER TABLE `task_organization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `test_document`
--
ALTER TABLE `test_document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `test_worksheet`
--
ALTER TABLE `test_worksheet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dv_document`
--
ALTER TABLE `dv_document`
  ADD CONSTRAINT `fk_doccat_doc` FOREIGN KEY (`categoryId`) REFERENCES `dv_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dv_log`
--
ALTER TABLE `dv_log`
  ADD CONSTRAINT `fk_doc_log` FOREIGN KEY (`documentId`) REFERENCES `dv_document` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dv_permission`
--
ALTER TABLE `dv_permission`
  ADD CONSTRAINT `fk_doc_perm` FOREIGN KEY (`documentId`) REFERENCES `dv_document` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
