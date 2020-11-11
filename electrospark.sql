-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2020 at 09:25 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electrospark`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_about`
--

CREATE TABLE `tbl_about` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `date_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_about`
--

INSERT INTO `tbl_about` (`id`, `title`, `description`, `status`, `date_updated`) VALUES
(1, 'About Us', ' <h3>COMPANY PROFILE: </h3>\r\n<p>Established in 1996 Located at IMT Manesar, Haryana. Total Area - 200,000 Sqft Equipped with World Class CNC Machines. Member of IGBC (No. IGBC – CS – 1490). ISO 9001 certified by TUV – Germany & 14001/18001–Certified by Quality Swiss SMETA SEDEX Pillar – II & IV certified by URS Verification Pvt. Ltd. Exporting to US/ UAE/UK. Employee Strength – 200</p>\r\n</p>\r\n\r\n\r\n    <h3>OUR MISSION: </h3>\r\n\r\n                 <p>Providing International quality products and services.</p>\r\n\r\n\r\n        <h3>OUR VISION:</h3>\r\n\r\n               <p>To be a major player in International market.</p>\r\n\r\n\r\n', 'Active', '2020-02-20 10:45:22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_benefits`
--

CREATE TABLE `tbl_benefits` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `subcat_id` int(11) NOT NULL,
  `subcat2_id` int(11) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `sal_image` varchar(150) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `isDeleted` int(11) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_benefits`
--

INSERT INTO `tbl_benefits` (`id`, `cat_id`, `subcat_id`, `subcat2_id`, `designation_id`, `sal_image`, `date_created`, `date_updated`, `isDeleted`, `status`) VALUES
(1, 1, 1, 1, 1, 'photo-1541445996863-0c22ef83f4cd.jpg', '2020-01-11 06:26:17', '2020-01-22 07:53:19', 0, 'Active'),
(2, 1, 1, 1, 2, 'Capture3.png', '2020-01-11 06:31:26', '2020-01-11 06:31:26', 0, 'Active'),
(3, 1, 1, 1, 3, 'Capture3.png', '2020-01-11 06:32:10', '2020-01-11 06:32:10', 0, 'Active'),
(4, 1, 1, 1, 1, 'Capture3.png', '2020-01-11 06:32:47', '2020-01-22 06:56:09', 0, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_benefit_img`
--

CREATE TABLE `tbl_benefit_img` (
  `id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL,
  `c_image` varchar(290) NOT NULL,
  `date_created` datetime NOT NULL,
  `isDeleted` int(11) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_benefit_img`
--

INSERT INTO `tbl_benefit_img` (`id`, `b_id`, `c_image`, `date_created`, `isDeleted`, `status`) VALUES
(1, 1, '1.jpg', '2020-01-11 06:26:17', 0, 'Active'),
(2, 1, '2.jpg', '2020-01-11 06:26:17', 0, 'Active'),
(3, 1, '3.jpg', '2020-01-11 06:26:17', 0, 'Active'),
(4, 1, '4.jpg', '2020-01-11 06:26:17', 0, 'Active'),
(5, 2, '1.jpg', '2020-01-11 06:31:26', 0, 'Active'),
(6, 2, '2.jpg', '2020-01-11 06:31:26', 0, 'Active'),
(7, 2, '3.jpg', '2020-01-11 06:31:26', 0, 'Active'),
(8, 3, '8.jpg', '2020-01-11 06:32:10', 0, 'Active'),
(9, 3, '9.jpg', '2020-01-11 06:32:10', 0, 'Active'),
(10, 3, '10.jpg', '2020-01-11 06:32:10', 0, 'Active'),
(11, 3, '11.jpg', '2020-01-11 06:32:10', 0, 'Active'),
(12, 4, '5.jpg', '2020-01-11 06:32:47', 0, 'Active'),
(13, 4, '6.jpg', '2020-01-11 06:32:47', 0, 'Active'),
(14, 4, '7.jpg', '2020-01-11 06:32:47', 0, 'Active'),
(15, 4, '8.jpg', '2020-01-11 06:32:47', 1, 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blogs`
--

CREATE TABLE `tbl_blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `author` varchar(50) NOT NULL,
  `category` varchar(40) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `isDeleted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_blogs`
--

INSERT INTO `tbl_blogs` (`id`, `title`, `image`, `description`, `author`, `category`, `status`, `date_created`, `date_modified`, `isDeleted`) VALUES
(1, 'ecewcemjyhjmrevre', 'slide-03.jpg', '<p>eceymuyu</p>\r\n', 'ecemymyrev', 'ceeymy', 'Inactive', '2019-12-23 10:46:38', '2019-12-23 11:01:44', 1),
(2, 'vrevewew', 'flower-home-deskop.jpg', '<p>revreewce</p>\r\n', 'vrevreeew', 'rvre', 'Inactive', '2019-12-23 11:01:24', '2019-12-23 13:33:17', 1),
(3, 'gb gfb', 'images.jpg', '<p>gfb gfbggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg</p>\r\n', 'gfb gf', 'wedwe', 'Inactive', '2019-12-23 11:02:56', '2019-12-23 11:04:07', 1),
(4, 'edewrecfre', 'newsletter-bg.jpg', '<p>ewdewd</p>\r\n', 'ewfc', 'edew', 'Inactive', '2019-12-23 11:08:26', '2019-12-23 11:09:24', 1),
(5, 'refcef', 'images.jpg', '<p>ercre</p>\r\n', 'ercrefc', 'cre', 'Inactive', '2019-12-23 11:09:08', '2019-12-23 11:11:21', 1),
(6, 'Sample Blogdsaada', '2.PNG', '<p>Lorem Ipsumsasdasd</p>\r\n', 'Abhishek', 'test', 'Inactive', '2019-12-23 13:32:43', '2019-12-23 13:55:53', 1),
(7, 'asdaDSDF', 'myreyaansh.jpg', '<p>DASDSDFSDAF</p>\r\n', 'ASDADSDZFASDF', 'ASDAS', 'Active', '2019-12-23 13:56:14', '2020-01-22 07:52:23', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brands`
--

CREATE TABLE `tbl_brands` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `isDeleted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_brands`
--

INSERT INTO `tbl_brands` (`id`, `image`, `date`, `date_updated`, `status`, `isDeleted`) VALUES
(1, 'logo1.jpg', '2020-02-22 07:30:59', '2020-02-22 07:30:59', 'Active', 0),
(2, 'logo2.jpg', '2020-02-22 07:31:07', '2020-02-22 07:31:07', 'Active', 0),
(3, 'logo3.jpg', '2020-02-22 07:31:17', '2020-02-22 07:31:17', 'Active', 0),
(4, 'logo4.jpg', '2020-02-22 07:31:25', '2020-02-22 07:31:25', 'Active', 0),
(5, 'logo5.jpg', '2020-02-22 07:31:37', '2020-02-22 07:31:37', 'Active', 0),
(6, 'logo6.jpg', '2020-02-22 07:31:53', '2020-02-22 07:31:53', 'Active', 0),
(7, 'logo7.jpg', '2020-02-22 07:32:06', '2020-02-22 07:32:06', 'Active', 0),
(8, 'logo8.jpg', '2020-02-22 07:32:13', '2020-02-22 07:32:13', 'Active', 0),
(9, 'logo9.jpg', '2020-02-22 07:32:23', '2020-02-22 07:32:23', 'Active', 0),
(10, 'logo10.jpg', '2020-02-22 07:32:30', '2020-02-22 07:32:30', 'Active', 0),
(11, 'logo11.jpg', '2020-02-22 07:33:57', '2020-02-22 07:33:57', 'Active', 0),
(12, 'logo12.jpg', '2020-02-22 07:34:05', '2020-02-22 07:34:05', 'Active', 0),
(13, 'logo13.jpg', '2020-02-22 07:34:12', '2020-02-22 07:34:12', 'Active', 0),
(14, 'logo14.jpg', '2020-02-22 07:34:21', '2020-02-22 07:34:21', 'Active', 0),
(15, 'logo15.jpg', '2020-02-22 07:34:28', '2020-02-22 07:34:28', 'Active', 0),
(16, 'logo16.jpg', '2020-02-22 07:34:36', '2020-02-22 07:34:36', 'Active', 0),
(17, 'logo17.jpg', '2020-02-22 07:34:43', '2020-02-22 07:34:43', 'Active', 0),
(18, 'logo18.jpg', '2020-02-22 07:34:52', '2020-02-22 07:34:52', 'Active', 0),
(19, 'logo19.jpg', '2020-02-22 07:35:04', '2020-02-22 07:35:04', 'Active', 0),
(20, 'logo20.jpg', '2020-02-22 07:35:11', '2020-02-22 07:35:11', 'Active', 0),
(21, 'logo21.jpg', '2020-02-22 07:35:18', '2020-02-22 07:35:18', 'Active', 0),
(22, 'logo22.jpg', '2020-02-22 07:35:24', '2020-02-22 07:35:24', 'Active', 0),
(23, 'logo23.jpg', '2020-02-22 07:35:32', '2020-02-22 07:35:32', 'Active', 0),
(24, 'logo24.jpg', '2020-02-22 07:35:39', '2020-02-22 07:35:39', 'Active', 0),
(25, 'logo25.jpg', '2020-02-22 07:35:46', '2020-02-22 07:35:46', 'Active', 0),
(26, 'logo26.jpg', '2020-02-22 07:35:53', '2020-02-22 07:35:53', 'Active', 0),
(27, 'logo27.jpg', '2020-02-22 07:36:01', '2020-02-22 07:36:01', 'Active', 0),
(30, 'logo28.jpg', '2020-02-22 07:36:53', '2020-02-22 07:36:53', 'Active', 0),
(31, 'logo29.jpg', '2020-02-22 07:37:00', '2020-02-22 07:37:00', 'Active', 0),
(32, 'logo30.jpg', '2020-02-22 07:37:07', '2020-02-22 07:37:07', 'Active', 0),
(33, 'logo31.jpg', '2020-02-22 07:37:14', '2020-02-22 07:37:14', 'Active', 0),
(34, 'logo32.jpg', '2020-02-22 07:37:20', '2020-02-22 07:37:20', 'Active', 0),
(35, 'logo33.jpg', '2020-02-22 07:39:07', '2020-02-22 07:39:07', 'Active', 0),
(36, 'logo34.jpg', '2020-02-22 07:39:16', '2020-02-22 07:39:16', 'Active', 0),
(37, 'logo35.jpg', '2020-02-22 07:39:26', '2020-02-22 07:39:26', 'Active', 0),
(38, 'logo36.jpg', '2020-02-22 07:39:36', '2020-02-22 10:10:23', 'Active', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_campain`
--

CREATE TABLE `tbl_campain` (
  `id` int(11) NOT NULL,
  `coupon` varchar(150) NOT NULL,
  `image` varchar(100) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_expired` datetime NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `isDeleted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_campain`
--

INSERT INTO `tbl_campain` (`id`, `coupon`, `image`, `date_created`, `date_expired`, `status`, `isDeleted`) VALUES
(2, 'NEWYEAR2020', 'animated-banner_01_1550574196485.gif', '2020-01-16 17:30:00', '2020-01-31 01:00:00', 'Active', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_certifications`
--

CREATE TABLE `tbl_certifications` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `subcat_id` int(11) NOT NULL,
  `subcat2_id` int(11) NOT NULL,
  `cert_name` varchar(150) NOT NULL,
  `w_exp` varchar(150) NOT NULL,
  `edu_titme` varchar(100) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `isDeleted` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `facebook` varchar(40) NOT NULL,
  `twitter` varchar(40) NOT NULL,
  `skype` varchar(50) NOT NULL,
  `instagram` varchar(40) NOT NULL,
  `youtube` varchar(40) NOT NULL,
  `date` varchar(15) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `about_title` varchar(100) NOT NULL,
  `logo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `address`, `phone`, `mobile`, `email`, `facebook`, `twitter`, `skype`, `instagram`, `youtube`, `date`, `status`, `about_title`, `logo`) VALUES
(1, '<p>Plot No.-77, Sector-8, IMT Manesar, Gurgaon-122050, Haryana, India</p>\r\n', '+91-9818002865', '+91-9818002865', 'info@electrospark.com', 'https://www.facebook.com/', 'https://www.twitter.com/', 'https://www.skype.com/', 'https://www.instagram.com/', 'https://www.youtube.com/', '2020-02-21 09:3', 'Active', 'Electrospark', 'logo11.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact_query`
--

CREATE TABLE `tbl_contact_query` (
  `id` int(11) NOT NULL,
  `company` varchar(150) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `course` varchar(50) NOT NULL,
  `email` varchar(70) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `message` text NOT NULL,
  `isDeleted` int(11) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courses`
--

CREATE TABLE `tbl_courses` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `subcat_id` int(11) NOT NULL,
  `subcat2_id` int(11) NOT NULL,
  `c_title` varchar(150) NOT NULL,
  `c_short_desc` text NOT NULL,
  `c_points` text NOT NULL,
  `c_image` varchar(100) NOT NULL,
  `c_video` varchar(100) DEFAULT NULL,
  `c_overview` text NOT NULL,
  `c_keyfeature` text NOT NULL,
  `c_overvideo` varchar(100) DEFAULT NULL,
  `c_description` text NOT NULL,
  `c_desimage` varchar(100) NOT NULL,
  `c_benifit_des` text NOT NULL,
  `c_syllabus` text NOT NULL,
  `c_syllabus_doc` varchar(150) NOT NULL,
  `c_faqs` text NOT NULL,
  `c_icon_image` varchar(125) NOT NULL,
  `c_cert_img` varchar(100) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `isDeleted` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_courses`
--

INSERT INTO `tbl_courses` (`id`, `cat_id`, `subcat_id`, `subcat2_id`, `c_title`, `c_short_desc`, `c_points`, `c_image`, `c_video`, `c_overview`, `c_keyfeature`, `c_overvideo`, `c_description`, `c_desimage`, `c_benifit_des`, `c_syllabus`, `c_syllabus_doc`, `c_faqs`, `c_icon_image`, `c_cert_img`, `status`, `isDeleted`, `date_created`, `date_modified`) VALUES
(1, 1, 1, 1, 'PMP® Plus', '            Do you want to maintain your PMP certification and earn 60 PDUs? Simplilearn’s PMP+ bundle will take care of that by providing you with the option of taking your pick from 6 courses which are Project Management, ITIL, Lean Six Sigma Green Belt, PMI-RMP, Microsoft Project, and Agile Scrum Master.\r\n', '         <li> Work breakdown structure </li>\r\n                        <li> Resource allocation </li>\r\n                         <li> Gantt charts </li>', 'banner2.png', '', 'The course covers new trends, emerging practices, tailoring considerations, and core competencies required of a Project Management professional. Placing a greater emphasis on strategic and business knowledge, this course also includes a new section on the role of the project manager in both large and small companies.', '<div class=\"col-sm-6\">\r\n                 	<ul>\r\n                    	<li> Guidewire Configuration Fundamentals </li>\r\n                        <li> Guidewire Policy Centre version 10 </li>\r\n                        <li> Guidewire Billing Centre version 10 </li>\r\n                        <li> 8 industry case studies, 20 industry-based business scenarios </li>\r\n                        <li> 100% Money back guarantee</li>\r\n                    </ul>\r\n                 </div>\r\n                 <div class=\"col-sm-6\">\r\n                 	<ul>\r\n                    	<li> Guidewire Integration Fundamentals </li>\r\n                        <li> Guidewire Claim Centre version 10 </li>\r\n                        <li> 30hrs of high-quality e-learning content </li>\r\n                        <li> Guidewire Training App (Contact Manager) – For Students hands on sessions </li>\r\n                        <li> Free Online Demo </li>\r\n                    </ul>\r\n                 </div>', '', '<h5>Eligibility</h5>\r\n                <p>In the Guidewire Online training, we can customize the training as per the need of the participants.</p>\r\n                \r\n                <h5>Pre-requisites</h5>\r\n                <p>You should have a secondary degree (i.e. high school diploma, associate’s degree or the global equivalent) with 7,500 hours leading and directing projects along with 35 hours of project management education. OR...</p>\r\n                \r\n                <p>We include Technical and Functional components in the training.</p>\r\n                \r\n                <h4>Technical Part Includes:</h4>\r\n                <span>1. Configuration Fundamentals</span>\r\n                <span>2. Integration Fundamentals </span>\r\n                <div class=\"clearfix\"></div>\r\n                <p>These technicalities are required to make customization as per Client requirements.</p>\r\n                <p>Since Guidewire has 80% of the functionality in Out of the box version itself, so the technical feature help you understand all the existing functionality supported by Guidewire modules.</p>\r\n                \r\n                 <h4>Functional Discussion:</h4>\r\n                  <span> 1 .Will Include Policy Centre business use cases.</span>\r\n                <span>2. Will Include Claim Centre business use cases. </span>\r\n                <span>3. Will Include Billing Centre business use cases. </span>\r\n                 <p>Just knowing the technical knowledge to make the necessary changes will not suffice the requirement to be productive on Guidewire project. You need to have an understanding of Property and Casualty insurance, thus will make you acquainted with the business processes using the Guidewire modules vanilla version. Default Guidewire software provided features.</p>\r\n               ', 'technical-architecture.jpg', 'The globally recognized PMP® certification can help you land lucrative roles in IT, manufacturing, finance, healthcare, and other exciting industries. Certified PMP®\'s drive better project performance and are often rewarded with substantial pay raises as shown below.', '<div class=\"panel panel-default\">\r\n    <div class=\"panel-heading\" role=\"tab\" id=\"headingOne\">\r\n        <h3 class=\"pull-right\">Preview</h3>\r\n        <h4 class=\"panel-title\">                                            <a data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapseOne\" aria-expanded=\"true\" aria-controls=\"collapseOne\">                         <i class=\"accordion_icon fa fa-plus\"></i> Lesson 0 :Intro to PolicyCentre                         </a>                      </h4> </div>\r\n    <div id=\"collapseOne\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"headingOne\">\r\n        <div class=\"panel-body\">\r\n            <div class=\"panel panel-default\">\r\n                <div class=\"panel-heading\" role=\"tab\" id=\"headingtwo\">\r\n                    <h3 class=\"pull-right\">Preview</h3>\r\n                    <h4 class=\"panel-title\">                        <a data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapsetwo\" aria-expanded=\"true\" aria-controls=\"collapsetwo\">                        <i class=\"accordion_icon fa fa-plus\"></i>  Lesson 01 :Intro to PolicyCentre                         </a>                      </h4> </div>\r\n                <div id=\"collapsetwo\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"headingtwo\">\r\n                    <div class=\"panel-body\">\r\n                        <ul>\r\n                            <li> 1. The PolicyCentre User Interface</li>\r\n                            <li> 2. The BillingCenterUser Interface </li>\r\n                            <li> 3 .The Billing Process</li>\r\n                            <li> 4 .User Interaction with BillingCenter </li>\r\n                            <li> 5 .Accounts </li>\r\n                        </ul>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n            <div class=\"panel panel-default\">\r\n                <div class=\"panel-heading\" role=\"tab\" id=\"headingthree\">\r\n                    <h3 class=\"pull-right\">Preview</h3>\r\n                    <h4 class=\"panel-title\">                        <a data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapsethree\" aria-expanded=\"true\" aria-controls=\"collapsethree\">                        <i class=\"accordion_icon fa fa-plus\"></i>Lesson 02 :Billing Instruction                         </a>                      </h4> </div>\r\n                <div id=\"collapsethree\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"headingthree\">\r\n                    <div class=\"panel-body\">\r\n                        <ul>\r\n                            <li> The PolicyCentre User Interface</li>\r\n                            <li> How Charges Are Invoiced </li>\r\n                            <li> Invoicing Life Cycle </li>\r\n                            <li> Payments </li>\r\n                            <li> Payment Corrections and Credit Distributions </li>\r\n                            <li> Producers </li>\r\n                            <li> Commissions and Producer Maintenance </li>\r\n                        </ul>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n            <div class=\"panel panel-default\">\r\n                <div class=\"panel-heading\" role=\"tab\" id=\"headingfour\">\r\n                    <h3 class=\"pull-right\">Preview</h3>\r\n                    <h4 class=\"panel-title\">                        <a data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapsefour\" aria-expanded=\"true\" aria-controls=\"collapsefour\">                         <i class=\"accordion_icon fa fa-plus\"></i>Lesson 03 :Billing Instruction                         </a>                      </h4> </div>\r\n                <div id=\"collapsefour\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"headingfour\">\r\n                    <div class=\"panel-body\">\r\n                        <ul>\r\n                            <li> 1. Disbursements</li>\r\n                            <li> 2. Delinquency </li>\r\n                            <li> 3 .Trouble Tickets and Activities </li>\r\n                            <li> 4 .Security </li>\r\n                            <li> 5 .Configuring BillingCenter </li>\r\n                            <li> 6 .Introduction to Agency Bill</li>\r\n                        </ul>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n            <div class=\"panel panel-default\">\r\n                <div class=\"panel-heading\" role=\"tab\" id=\"headingfive\">\r\n                    <h3 class=\"pull-right\">Preview</h3>\r\n                    <h4 class=\"panel-title\">                        <a data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapsefive\" aria-expanded=\"true\" aria-controls=\"collapsefive\">                        <i class=\"accordion_icon fa fa-plus\"></i>Lesson 04 :Billing Instruction                         </a>                      </h4> </div>\r\n                <div id=\"collapsefive\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"headingfive\">\r\n                    <div class=\"panel-body\">\r\n                        <ul>\r\n                            <li>1. Gosu programming Intro</li>\r\n                            <li>2 .Intro to Arrays</li>\r\n                            <li>3 .Business Rules</li>\r\n                            <li> 4.PCF Methods</li>\r\n                            <li> 5.Enhancements</li>\r\n                            <li>6 .Script Parameters</li>\r\n                            <li>7 .Entity Names</li>\r\n                        </ul>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n            <div class=\"panel panel-default\">\r\n                <div class=\"panel-heading\" role=\"tab\" id=\"headingsix\">\r\n                    <h3 class=\"pull-right\">Preview</h3>\r\n                    <h4 class=\"panel-title\">                        <a data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapsesix\" aria-expanded=\"true\" aria-controls=\"collapsesix\">                         <i class=\"accordion_icon fa fa-plus\"></i>Lesson 05 :Billing Instruction                        </a>                      </h4> </div>\r\n                <div id=\"collapsesix\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"headingsix\">\r\n                    <div class=\"panel-body\">\r\n                        <ul>\r\n                            <ul>\r\n                                <li> 1 . Agency Bill Cycles and Account Current</li>\r\n                                <li> 2 .Account Current Promises and Payments </li>\r\n                            </ul>\r\n                        </ul>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>', '', '<div class=\"panel-group\" id=\"faqs\">\r\n            <div class=\"panel panel-default\">\r\n              <div class=\"panel-heading\">\r\n                <h4 class=\"panel-title\">\r\n                  <a data-toggle=\"collapse\" href=\"#collapse2\">About Guidewire Software and P&C Insurance</a>\r\n                  <a data-toggle=\"collapse\" href=\"#collapse2\" class=\"pull-right\"><i class=\"fa fa-angle-down rotate-icon\"></i></a>\r\n                </h4>\r\n              </div>\r\n              <div id=\"collapse2\" class=\"panel-collapse collapse\">\r\n               <p>Guidewire Software Inc., commonly Guidewire, is a software publisher based in Foster City, California. It offers core back-end software for property and casualty (P&C) insurance carriers in the U.S. and worldwide, as well as the Guidewire Live suite of online analytics services for P&C insurers. They are a recurring revenue software company as they sell term licenses. Its three main software products are Claim Center, Policy Center, and Billing Center, each servicing a major component of a P&C insurance carrier. There are a number of add-on modules, as well as an increasing number of value-added online services provided via Guidewire Live. Guidewire develops the Gosu programming language, it released as open source in 2010</p>\r\n              </div>\r\n        </div>\r\n      </div>\r\n      			<div class=\"panel-group\">\r\n            <div class=\"panel panel-default\">\r\n              <div class=\"panel-heading\">\r\n                <h4 class=\"panel-title\">\r\n                  <a data-toggle=\"collapse\" href=\"#collapse3\">What\'s in Guidewire Insurance Suite ?</a>\r\n                  <a data-toggle=\"collapse\" href=\"#collapse3\" class=\"pull-right\"><i class=\"fa fa-angle-down rotate-icon\"></i></a>\r\n                </h4>\r\n              </div>\r\n              <div id=\"collapse3\" class=\"panel-collapse collapse\">\r\n               <p>Guidewire InsuranceSuite is a proven solution that has helped insurers worldwide significantly enrich customer and agent/broker relationships while simultaneously growing profitably and enabling agile responses to market threats and opportunities. InsuranceSuite provides a complete set of systems to support your core operations—underwriting, policy administration, billing, and claims management—to deliver the technology you need to successfully and continually advance your products, processes, and customer relationships. InsuranceSuite’s comprehensive components are built on a common platform that covers the entire insurance lifecycle while providing the deep functionality required for you to adapt and succeed in a time of rapid industry change.</p>\r\n              </div>\r\n        </div>\r\n      </div>\r\n      \r\n      <div class=\"panel-group\">\r\n            <div class=\"panel panel-default\">\r\n              <div class=\"panel-heading\">\r\n                <h4 class=\"panel-title\">\r\n                  <a data-toggle=\"collapse\" href=\"#collapse5\"> InsuranceSuite Design Principles </a>\r\n                  <a data-toggle=\"collapse\" href=\"#collapse5\" class=\"pull-right\"><i class=\"fa fa-angle-down rotate-icon\"></i></a>\r\n                </h4>\r\n              </div>\r\n              <div id=\"collapse5\" class=\"panel-collapse collapse\">\r\n               <p>Breadth and Depth We provide applications covering the breadth of the P&C insurance lifecycle and the richness of innovative functionality, including embedded analytics like geolocation risk assessment for underwriters, a comprehensive customer view that ensures that you have a single customer record, and Service Tiers, which enable you to deliver differentiated service to your different customer segments.</p>\r\n\r\n                                            <p>One-Mind Design Our development teams work together to ensure our technology works in a unified manner. We maximize reuse to reduce the work you have to put in, and free you up to focus on innovation—with things like SOLR search that is leveraged across the platform, shared data elements, or the many pre-built integrations between products. This not only reduces the effort for your IT staff; it also frees you from having to worry about product compatibility and integrations.</p>\r\n\r\n                                            <p>User Journeys We look at our products from the end user’s perspective. Rather than having products designed with siloed views focused only on isolated transactions, we design solutions focused on the full user experience. This enables insurers to deliver an omnichannel experience for policyholders and automate agent interactions. </p>\r\n\r\n                                            <p> Flexible and Evolving “Flexibility” means that our customers can adapt the system according to their specific needs and that they can support a wide spectrum of business operations —whether it’s business rules and logic in the core or branding in the portals. This also means flexibility for deployment by region, line of business, and functional area. “Evolving” refers to the responsibility we have to continually update our technology to deliver value in future versions and ensure that customers have new opportunities to adapt and succeed.</p>\r\n              </div>\r\n        </div>\r\n      </div>\r\n      		\r\n            <div class=\"panel-group\">\r\n            <div class=\"panel panel-default\">\r\n              <div class=\"panel-heading\">\r\n                <h4 class=\"panel-title\">\r\n                  <a data-toggle=\"collapse\" href=\"#collapse6\"> At the Core of Guidewire Insurance Platform !!!</a>\r\n                  <a data-toggle=\"collapse\" href=\"#collapse6\" class=\"pull-right\"><i class=\"fa fa-angle-down rotate-icon\"></i></a>\r\n                </h4>\r\n              </div>\r\n              <div id=\"collapse6\" class=\"panel-collapse collapse\">\r\n               <p> <p>At Guidewire we are always working with our customers, partners, industry analysts, and colleagues to understand how current technology and market trends are impacting the insurance world, and how we can evolve our product offerings and enable insurers to leverage technology to improve all facets of their operations.</p>\r\n               <p>Our customers are looking for solutions that enable them to accomplish many things:</p>\r\n               <ul><li>Tailored products and services that can continually evolve to ensure that insurers remain competitive in the marketplace</li><li>Automated processes and workflows that support straight-through processing, operational efficiencies, and self-service capabilities</li>\r\n <li>Proactive measures to improve upon catastrophe management, fraud prevention, recovery management, and other critical areas across their organization</li></ul><p>Insurers are also looking to take advantage of third-party data sources and complex analytic tools to improve decision making across their organization.</p><p>And, insurers also want to offer streamlined digital experiences to both internal and external constituents across the insurance life-cycle in order to create efficiencies and offer unsurpassed customer service.</p></p>\r\n              </div>\r\n        </div>\r\n      </div>\r\n      \r\n      <div class=\"panel-group\">\r\n            <div class=\"panel panel-default\">\r\n              <div class=\"panel-heading\">\r\n                <h4 class=\"panel-title\">\r\n                  <a data-toggle=\"collapse\" href=\"#collapse7\">  Why Get a Guidewire Certification?</a>\r\n                  <a data-toggle=\"collapse\" href=\"#collapse7\" class=\"pull-right\"><i class=\"fa fa-angle-down rotate-icon\"></i></a>\r\n                </h4>\r\n              </div>\r\n              <div id=\"collapse7\" class=\"panel-collapse collapse\">\r\n               <p>Guidewire certification will ensure you a jump in your career and mandate your career growth. This will help you to get acquainted with the Insurance domain and get hands on with the leading flagship software implementation GUIDEWIRE. Certification will make it certain that you are qualified to work on any given Insurance domain primarily Property and casualty insurance..</p>\r\n              </div>\r\n        </div>\r\n      </div>\r\n      			<div class=\"panel-group\">\r\n            <div class=\"panel panel-default\">\r\n              <div class=\"panel-heading\">\r\n                <h4 class=\"panel-title\">\r\n                  <a data-toggle=\"collapse\" href=\"#collapse8\">  Why Get a Guidewire Certification? </a>\r\n                  <a data-toggle=\"collapse\" href=\"#collapse8\" class=\"pull-right\"><i class=\"fa fa-angle-down rotate-icon\"></i></a>\r\n                </h4>\r\n              </div>\r\n              <div id=\"collapse8\" class=\"panel-collapse collapse\">\r\n               <p>Guidewire certification will ensure you a jump in your career and mandate your career growth. This will help you to get acquainted with the Insurance domain and get hands on with the leading flagship software implementation GUIDEWIRE. Certification will make it certain that you are qualified to work on any given Insurance domain primarily Property and casualty insurance.</p>\r\n\r\n                                            <p>Moreover Guidewire has been implemented on 350 Global insurance companies and you have good chance to work with any one of them. Either you can appear for you chances to be working with these insurance as a Business Analyst or you can work for many IT companies which are working on the implementation for these 350 global insurance players.</p>\r\n\r\n                                            <p>We will be covering all the basic fundamentals required for your Guidewire Certification. Say all the basic Screens and database configuration fundamentals, all the Data Model changes and making UI changes. Will cover all the Integration fundamentals, covering all the industry standard technologies while communication between different applications, like Web Service Producing and consuming both, or asynchronous messaging or Batch Processes.</p>\r\n              </div>\r\n        </div>\r\n      </div>		\r\n			\r\n                 <div class=\"panel-group\">\r\n            <div class=\"panel panel-default\">\r\n              <div class=\"panel-heading\">\r\n                <h4 class=\"panel-title\">\r\n                  <a data-toggle=\"collapse\" href=\"#collapse9\">  Guidewire Core Operations</a>\r\n                  <a data-toggle=\"collapse\" href=\"#collapse9\" class=\"pull-right\"><i class=\"fa fa-angle-down rotate-icon\"></i></a>\r\n                </h4>\r\n              </div>\r\n              <div id=\"collapse9\" class=\"panel-collapse collapse\">\r\n               <p>InsuranceSuite provides a complete set of applications to support the insurance lifecycle—from underwriting, rating, and policy administration to reinsurance, billing, and claims management to customer contact data management.</p>\r\n <p>Underwriting and Policy Administration</p>\r\n<p><strong>Billing and Receivables Management</strong></p>\r\n       <ul>\r\n           <li>Empower business users to enhance customer service: User-friendly Account and Policy summary screens, new Charge Invoicing capabilities, and seamless integration between BillingCenter and Guidewire Account Management Portal™ for Policyholders to give policyholders anytime access to their billing information</li>\r\n <li>Improve workflows and optimize operations: Integrated Payment between BillingCenter and PolicyCenter to enable both billing teams and underwriters</li>\r\n<li>Facilitate sound decision-making: Integration between BillingCenter and DataHub™ and InfoCenter™ delivers transactional and aggregate data marts for self-service BI</li>\r\n<li>Reduce IT workloads: Business-friendly configuration to reduce IT requests, improved batch processing, and archiving with Read-Only Restore</li>\r\n </ul>\r\n      <p><strong>Claims Management</strong></p>\r\n\r\n     <ul>                                   \r\n<li>Increase operational efficiency: Streamline and automate processes across the claims lifecycle</li>\r\n <li>Reduce loss costs: Free adjusters to focus on higher-value activities and implement quantifiable loss-cost improvements</li>\r\n<li>Strengthen focus on customers: From a dynamic, responsive first claim entry process to account special handling and mobile access</li>\r\n</ul>\r\n<p><strong>Underwriting Management System PAS</strong></p>\r\n   <ul>\r\nli>Be responsive to the market: Flexible definition of products and processes to seize opportunities</li>\r\n<li>Increase efficiency: Automated support for straight-through processing, work assignment, and other tasks</li>\r\n <li>Improve underwriting excellence: Consistent application of complex guidelines for low-touch or no-touch underwriting</li>\r\n</ul>\r\n <p><strong>Billing and Receivable Managements</strong></p>\r\n<ul>\r\n<li>Empower business users to enhance customer service: User-friendly Account and Policy summary screens, new Charge Invoicing capabilities, and seamless integration between BillingCenter and Guidewire Account Management Portal™ for Policyholders to give policyholders anytime access to their billing information</li>\r\n<li>Improve workflows and optimize operations: Integrated Payment between BillingCenter and PolicyCenter to enable both billing teams and underwriters</li>\r\n<li>Facilitate sound decision-making: Integration between BillingCenter and DataHub™ and InfoCenter™ delivers transactional and aggregate data marts for self-service BI</li>\r\n<li>Reduce IT workloads: Business-friendly configuration to reduce IT requests, improved batch processing, and archiving with Read-Only Restore</li>\r\n </ul> \r\n              \r\n              \r\n              </div>\r\n        </div>\r\n      </div>\r\n      			<div class=\"panel-group\">\r\n            <div class=\"panel panel-default\">\r\n              <div class=\"panel-heading\">\r\n                <h4 class=\"panel-title\">\r\n                  <a data-toggle=\"collapse\" href=\"#collapse10\">Guidewire Certifications?</a>\r\n                  <a data-toggle=\"collapse\" href=\"#collapse10\" class=\"pull-right\"><i class=\"fa fa-angle-down rotate-icon\"></i></a>\r\n                </h4>\r\n              </div>\r\n              <div id=\"collapse10\" class=\"panel-collapse collapse\">\r\n               <p>Guidewire Certifications:</p>\r\n <ol>\r\n<li>Fundamentals Certification – This is must for all the people working on Guidewire.</li>\r\n<li>Specialist Certification – This is for module specific. Be it Policy Center, Claim Center or Billing Center.</li>\r\n<li>Trainers Certification – This is to work as a Certified Guidewire trainer role.</li>\r\n </ol>\r\n         </div>\r\n        </div>\r\n      </div>\r\n        \r\n         <div class=\"panel-group\">\r\n            <div class=\"panel panel-default\">\r\n              <div class=\"panel-heading\">\r\n                <h4 class=\"panel-title\">\r\n                  <a data-toggle=\"collapse\" href=\"#collapse11\"> Guidewire Course Objective</a>\r\n                  <a data-toggle=\"collapse\" href=\"#collapse11\" class=\"pull-right\"><i class=\"fa fa-angle-down rotate-icon\"></i></a>\r\n                </h4>\r\n              </div>\r\n              <div id=\"collapse11\" class=\"panel-collapse collapse\">\r\n               <p>Course objectives would be:</p>\r\n<ol>\r\n<li>Configuration Fundamentals:\r\n <ol>\r\n<li>Data Model changes.</li>\r\n<li>UI Architecture</li>\r\n<li>Atomic widgets and container widgets</li>\r\n<li>Locations Group</li>\r\n<li>Business Rules</li>\r\n</ol>\r\n</li>\r\n <li>Integration Fundamentals:\r\n<ol>\r\n <li>Integration Architecture.</li>\r\n<li>Gosu programming basics</li>\r\n<li>Gosu queries.</li>\r\n<li>Web Services Consumption and Production.</li>\r\n<li>Messaging</li>\r\n<li>Batch Processes.</li>\r\n </ol>\r\n </li>\r\n</ol>\r\n              </div>\r\n        </div>\r\n      </div>\r\n      			<div class=\"panel-group\">\r\n            <div class=\"panel panel-default\">\r\n              <div class=\"panel-heading\">\r\n                <h4 class=\"panel-title\">\r\n                  <a data-toggle=\"collapse\" href=\"#collapse12\">Guidewire Implementation Team</a>\r\n                  <a data-toggle=\"collapse\" href=\"#collapse12\" class=\"pull-right\"><i class=\"fa fa-angle-down rotate-icon\"></i></a>\r\n                </h4>\r\n              </div>\r\n              <div id=\"collapse12\" class=\"panel-collapse collapse\">\r\n                <ul>\r\n <li>Business architect\r\n <ul>\r\n<li>Writes business requirements documents</li>\r\n</ul>\r\n</li>\r\n<li>Configuration developer\r\n<ul>\r\n<li>Configure product data model, user interface, and business logic</li>\r\n </ul>\r\n </li>\r\n<li>Integration developer\r\n  <ul>\r\n <li>Create integration points to external systems to share data with Guidewire application</li>\r\n</ul>\r\n</li>\r\n<li>Reporting developer\r\n <ul>\r\n<li>Develops data warehouses and reports</li>\r\n</ul>\r\n </li>\r\n<li>Data migration developer\r\n<ul>\r\n <li>Migrates data from legacy system to Guidewire application</li>\r\n </ul>\r\n</li>\r\n</ul>\r\n              </div>\r\n        </div>\r\n      </div>\r\n          \r\n            <div class=\"panel-group\">\r\n            <div class=\"panel panel-default\">\r\n              <div class=\"panel-heading\">\r\n                <h4 class=\"panel-title\">\r\n                  <a data-toggle=\"collapse\" href=\"#collapse13\"> Guidewire Documentation?</a>\r\n                  <a data-toggle=\"collapse\" href=\"#collapse13\" class=\"pull-right\"><i class=\"fa fa-angle-down rotate-icon\"></i></a>\r\n                </h4>\r\n              </div>\r\n              <div id=\"collapse13\" class=\"panel-collapse collapse\">\r\n                 <ul>\r\n <li>Guidewire Integration Guide\r\n<ul>\r\n<li>For questions specific to integration mechanisms</li>\r\n </ul>\r\n</li>\r\n<li>Guidewire Gosu Reference\r\n<ul>\r\n<li>For questions specific to Gosu</li>\r\n</ul>\r\n</li>\r\n<li>Guidewire Rules Guide\r\n <ul>\r\n<li>Useful for integration points that require rules, especially messaging</li>\r\n</ul>\r\n</li>\r\n<li>Guidewire Configuration Guide\r\n <ul>\r\n <li>Occasionally needed for some integration steps</li>\r\n<li>Also documents functionality of every Studio editor (including some that are exclusive to integration)</li>\r\n</ul>\r\n</li>\r\n<li>Generated documentation</li>\r\n</ul>\r\n\r\n              </div>\r\n        </div>\r\n      </div>', 'pmp-badge-1.png', '1.png', 'Active', 0, '2020-01-03 06:59:43', '2020-01-14 14:32:45');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course_category`
--

CREATE TABLE `tbl_course_category` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `url` varchar(150) NOT NULL,
  `isDeleted` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_course_category`
--

INSERT INTO `tbl_course_category` (`id`, `cat_name`, `url`, `isDeleted`, `date_created`, `date_modified`, `status`) VALUES
(1, 'HOME PRODUCTS', 'home-products', 0, '2020-02-21 09:15:25', '2020-02-21 09:15:25', 'Active'),
(2, 'INDUSTRIAL', 'industrial', 0, '2020-02-21 09:15:46', '2020-02-21 09:15:46', 'Active'),
(3, 'RETAIL', 'retail', 0, '2020-02-21 09:16:00', '2020-02-21 09:16:00', 'Active'),
(4, 'INFRASTRUCTURE', 'infrastructure', 0, '2020-02-21 09:38:03', '2020-02-21 09:38:03', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course_subcategory`
--

CREATE TABLE `tbl_course_subcategory` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `subcat_name` varchar(150) NOT NULL,
  `url` varchar(200) NOT NULL,
  `isDeleted` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course_subcategory2`
--

CREATE TABLE `tbl_course_subcategory2` (
  `id` int(11) NOT NULL,
  `subcat_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `subcat2_name` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `url` varchar(200) NOT NULL,
  `image` varchar(100) NOT NULL,
  `isDeleted` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_designation`
--

CREATE TABLE `tbl_designation` (
  `id` int(11) NOT NULL,
  `designation` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_designation`
--

INSERT INTO `tbl_designation` (`id`, `designation`) VALUES
(1, 'Project Director'),
(2, 'Senior Project Manager'),
(3, 'Project Management Officer (PMO)'),
(4, 'Team Leads/Team Managers');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_examcerti`
--

CREATE TABLE `tbl_examcerti` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `subcat_id` int(11) NOT NULL,
  `subcat2_id` int(11) NOT NULL,
  `certi_name` varchar(150) NOT NULL,
  `work_exp` varchar(150) NOT NULL,
  `guide_edu` varchar(150) NOT NULL,
  `isDeleted` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_examcerti`
--

INSERT INTO `tbl_examcerti` (`id`, `cat_id`, `subcat_id`, `subcat2_id`, `certi_name`, `work_exp`, `guide_edu`, `isDeleted`, `date_created`, `date_updated`, `status`) VALUES
(4, 1, 1, 1, 'Specialist – Guidewire Billing Centre Configuration', 'Hands on in Billing Centre changes', '20 hours', 0, '2020-01-03 13:00:47', '2020-01-03 13:00:47', 'Active'),
(5, 1, 1, 1, 'Specialist – Guidewire Billing Centre Integration', 'Hands on in Billing Centre changes', '20 hours', 0, '2020-01-03 13:01:22', '2020-01-03 13:01:22', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fcategory`
--

CREATE TABLE `tbl_fcategory` (
  `id` int(11) NOT NULL,
  `fcatname` varchar(40) NOT NULL,
  `date` datetime NOT NULL,
  `status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_fcategory`
--

INSERT INTO `tbl_fcategory` (`id`, `fcatname`, `date`, `status`) VALUES
(1, 'Roses', '2019-12-13 00:00:00', 'Active'),
(2, 'Flower', '2019-12-13 00:00:00', 'Active'),
(3, 'Lille Flower', '2019-12-13 00:00:00', 'Active'),
(4, 'Sunflower', '2019-12-13 00:00:00', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_flower`
--

CREATE TABLE `tbl_flower` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `isDeleted` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_flower`
--

INSERT INTO `tbl_flower` (`id`, `title`, `image`, `date`, `date_updated`, `isDeleted`, `cat_id`, `updatedBy`, `status`) VALUES
(2, 'Abuor', '1231.jpg', '2019-12-13 09:03:00', '2019-12-14 06:14:36', 0, 2, 1, 'Active'),
(3, 'Roses', '1231.jpg', '2019-12-13 09:21:22', '2019-12-14 06:14:07', 0, 1, 1, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `date` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `isDeleted` int(11) NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`id`, `name`, `image`, `description`, `date`, `date_updated`, `status`, `isDeleted`, `updatedBy`, `cat_id`) VALUES
(7, 'Test', 'otp1.jpg', '', '2019-12-11 13:09:23', '2019-12-11 13:20:51', 'Inactive', 1, 1, 1),
(8, 'Wedding Flower Decoration', 'all.jpg', '', '2019-12-11 13:11:32', '2019-12-16 07:31:25', 'Active', 0, 1, 3),
(9, 'Wedding Flower Decoration', 'all.jpg', '', '2019-12-11 13:20:22', '2019-12-16 13:40:36', 'Active', 0, 1, 1),
(10, 'Wedding Flower Decoration', 'all-for-you-400x400.jpg', '', '2019-12-11 13:21:02', '2019-12-16 07:30:15', 'Active', 0, 1, 1),
(11, 'Pre Wedding Functions', 'red-rose.jpg', '', '2019-12-16 07:32:24', '2019-12-16 07:32:24', 'Active', 0, 1, 2),
(12, 'Pre Wedding Functions', 'all-for-you-400x4001.jpg', '', '2019-12-16 07:32:54', '2019-12-16 07:32:54', 'Active', 0, 1, 2),
(13, 'Theme Events Decoration', 'mix-rose.jpg', '', '2019-12-16 07:33:42', '2019-12-16 07:33:42', 'Active', 0, 1, 3),
(14, 'Devotional Flower Decoration', 'yellow.jpg', '', '2019-12-16 07:34:32', '2019-12-16 07:34:32', 'Active', 0, 1, 5),
(15, 'Car Flower Decoration', 'beautiful-blue-orchids-500x500.jpg', '', '2019-12-16 07:35:16', '2019-12-16 07:35:16', 'Active', 0, 1, 6),
(16, 'Corporate Flower Decoration', 'Flowers-Bouquet-of-Red-and-Pink-Carnations-500x500.jpg', '', '2019-12-16 07:36:00', '2019-12-16 13:38:26', 'Active', 0, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gcategory`
--

CREATE TABLE `tbl_gcategory` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `date` datetime NOT NULL,
  `status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_gcategory`
--

INSERT INTO `tbl_gcategory` (`id`, `name`, `date`, `status`) VALUES
(1, 'Wedding Flower Decoration', '2019-12-11 00:00:00', 'Active'),
(2, 'Pre Wedding Functions', '2019-12-11 00:00:00', 'Active'),
(3, 'Theme Events Decoration', '2019-12-11 00:00:00', 'Active'),
(4, 'Home Flower Decoration', '2019-12-11 00:00:00', 'Active'),
(5, 'Devotional Flower Decoration', '2019-12-11 00:00:00', 'Active'),
(6, 'Car Flower Decoration', '2019-12-11 00:00:00', 'Active'),
(7, 'Corporate Flower Decoration', '2019-12-11 00:00:00', 'Active'),
(8, 'Diwali Flower Decoration', '2019-12-11 00:00:00', 'Active'),
(9, 'Birthday Decoration', '2019-12-11 00:00:00', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_home_page`
--

CREATE TABLE `tbl_home_page` (
  `id` int(11) NOT NULL,
  `sec1_title` varchar(150) NOT NULL,
  `sec1_des` text NOT NULL,
  `sec2_title` varchar(200) NOT NULL,
  `sec2_des` text NOT NULL,
  `sec3_title` varchar(200) NOT NULL,
  `sec3_des` text NOT NULL,
  `sec4_title` varchar(200) NOT NULL,
  `sec4_des` text NOT NULL,
  `sec5_title` varchar(250) NOT NULL,
  `sec5_des` text NOT NULL,
  `sec6_title` varchar(250) NOT NULL,
  `sec6_des` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_home_page`
--

INSERT INTO `tbl_home_page` (`id`, `sec1_title`, `sec1_des`, `sec2_title`, `sec2_des`, `sec3_title`, `sec3_des`, `sec4_title`, `sec4_des`, `sec5_title`, `sec5_des`, `sec6_title`, `sec6_des`) VALUES
(1, 'WELCOME TO Electrospark', 'Supplier & Manufacturer of wooden racks, display shelves, retail display stands, ironing boards service provider of sheet metal fabrication of components...', 'OUR MISSION', 'Electrospark is providing international quality products & services to our valuable clients.', 'OUR VISION', 'We have a vision to establish Electrospark as a reckoned and reliable name in the industry, thereby developing a brand name for self.', 'QUALITY POLICY', 'At Electrospark, we adhere to our unwavering commitment to offer world class solution to our clients across all over world.', 'INDUSTRIES SERVED', 'Electrospark is equipped with World Class CNC technology so as to carry out precision sheet metal fabrication in CR Sheets, GI- Sheets, Aluminum & Stainless Steel.', 'WHY Electrospark', 'Since the very beginning Electrospark has imbibed the best standards of the business to produce benchmark products. By fulfilling all types of display requirements, innovating future solutions and offering best customer support, Electrospark has become the most sought-after name in the industry.\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_last_login`
--

CREATE TABLE `tbl_last_login` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `sessionData` varchar(2048) NOT NULL,
  `machineIp` varchar(1024) NOT NULL,
  `userAgent` varchar(128) NOT NULL,
  `agentString` varchar(1024) NOT NULL,
  `platform` varchar(128) NOT NULL,
  `createdDtm` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_last_login`
--

INSERT INTO `tbl_last_login` (`id`, `userId`, `sessionData`, `machineIp`, `userAgent`, `agentString`, `platform`, `createdDtm`) VALUES
(1, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Windows 10', '2019-12-09 13:21:32'),
(2, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Windows 10', '2019-12-09 13:38:52'),
(3, 9, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Amit Kumar\"}', '::1', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Windows 10', '2019-12-09 14:48:53'),
(4, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Windows 10', '2019-12-09 16:37:54'),
(5, 9, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Amit Kumar\"}', '::1', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Windows 10', '2019-12-09 16:55:15'),
(6, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Windows 10', '2019-12-09 16:59:44'),
(7, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Windows 10', '2019-12-09 17:11:50'),
(8, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Windows 10', '2019-12-09 17:26:52'),
(9, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Windows 10', '2019-12-09 17:33:30'),
(10, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Windows 10', '2019-12-10 10:40:39'),
(11, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Windows 10', '2019-12-10 10:54:38'),
(12, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Windows 10', '2019-12-10 15:13:17'),
(13, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Windows 10', '2019-12-11 11:13:45'),
(14, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Windows 10', '2019-12-11 15:31:21'),
(15, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Windows 10', '2019-12-12 11:02:29'),
(16, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Windows 10', '2019-12-12 14:57:08'),
(17, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Windows 10', '2019-12-13 08:49:42'),
(18, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Windows 10', '2019-12-13 11:45:25'),
(19, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 79.0.3945.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 'Windows 10', '2019-12-14 10:29:42'),
(20, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 79.0.3945.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 'Windows 10', '2019-12-16 11:55:30'),
(21, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 79.0.3945.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'Windows 10', '2019-12-23 12:08:18'),
(22, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 79.0.3945.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'Windows 10', '2019-12-26 12:22:37'),
(23, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 79.0.3945.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'Windows 10', '2019-12-27 11:34:16'),
(24, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 79.0.3945.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'Windows 10', '2019-12-27 11:35:26'),
(25, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 79.0.3945.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'Windows 10', '2019-12-28 11:41:28'),
(26, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 79.0.3945.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'Windows 10', '2019-12-30 12:03:29'),
(27, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 71.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'Windows 10', '2019-12-30 18:04:41'),
(28, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 79.0.3945.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'Windows 10', '2019-12-31 11:50:42'),
(29, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 79.0.3945.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'Windows 10', '2020-01-02 11:29:56'),
(30, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '171.79.67.33', 'Chrome 79.0.3945.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'Windows 10', '2020-01-02 17:50:33'),
(31, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '122.161.64.65', 'Chrome 79.0.3945.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'Windows 10', '2020-01-03 11:59:20'),
(32, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '182.64.176.40', 'Chrome 79.0.3945.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'Windows 10', '2020-01-06 17:11:01'),
(33, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '182.68.58.191', 'Chrome 79.0.3945.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'Windows 10', '2020-01-07 11:29:50'),
(34, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '182.68.58.191', 'Chrome 79.0.3945.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'Windows 10', '2020-01-07 14:24:10'),
(35, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '182.68.113.8', 'Chrome 79.0.3945.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'Windows 10', '2020-01-08 12:10:46'),
(36, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '146.196.35.4', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Windows 10', '2020-01-10 15:31:56'),
(37, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '122.161.217.252', 'Chrome 79.0.3945.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'Windows 10', '2020-01-10 16:54:54'),
(38, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '182.64.212.2', 'Chrome 79.0.3945.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'Windows 10', '2020-01-11 11:46:14'),
(39, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '117.99.175.109', 'Chrome 79.0.3945.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'Windows 10', '2020-01-13 18:49:31'),
(40, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '106.212.145.80', 'Chrome 79.0.3945.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'Windows 10', '2020-01-14 15:12:19'),
(41, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '182.68.240.243', 'Chrome 79.0.3945.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'Windows 10', '2020-01-15 11:55:03'),
(42, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '14.143.254.82', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Windows 7', '2020-01-16 17:01:54'),
(43, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '182.68.77.127', 'Chrome 79.0.3945.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'Windows 10', '2020-01-16 17:34:23'),
(44, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '122.161.208.165', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Windows 10', '2020-01-20 17:45:57'),
(45, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 79.0.3945.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'Windows 10', '2020-01-21 10:54:26'),
(46, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 79.0.3945.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'Windows 10', '2020-01-22 10:32:30'),
(47, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 79.0.3945.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'Windows 10', '2020-01-23 11:38:24'),
(48, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 79.0.3945.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'Windows 10', '2020-01-23 18:34:51'),
(49, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 79.0.3945.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'Windows 10', '2020-01-24 12:02:20'),
(50, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 79.0.3945.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'Windows 10', '2020-01-24 15:02:40'),
(51, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 79.0.3945.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'Windows 10', '2020-01-24 16:05:49'),
(52, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 79.0.3945.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'Windows 10', '2020-01-24 16:11:48'),
(53, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 79.0.3945.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'Windows 10', '2020-01-27 10:18:32'),
(54, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 79.0.3945.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'Windows 10', '2020-01-27 15:24:34'),
(55, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 79.0.3945.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'Windows 10', '2020-01-28 11:40:28'),
(56, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 79.0.3945.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'Windows 10', '2020-01-29 12:28:35'),
(57, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 79.0.3945.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'Windows 10', '2020-01-30 15:07:16'),
(58, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 79.0.3945.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'Windows 10', '2020-01-31 11:08:04'),
(59, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 79.0.3945.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'Windows 10', '2020-01-31 18:42:13'),
(60, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '122.161.84.207', 'Chrome 79.0.3945.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'Windows 10', '2020-01-31 18:55:07'),
(61, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '122.161.84.207', 'Chrome 79.0.3945.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'Windows 10', '2020-01-31 18:56:21'),
(62, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '110.227.147.211', 'Chrome 79.0.3945.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'Windows 10', '2020-02-01 12:56:35'),
(63, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '110.227.147.211', 'Chrome 79.0.3945.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'Windows 10', '2020-02-01 13:05:50'),
(64, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '103.81.213.146', 'Chrome 79.0.3945.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'Windows 10', '2020-02-01 20:30:31'),
(65, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '103.81.213.146', 'Chrome 79.0.3945.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'Windows 10', '2020-02-01 20:33:22'),
(66, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '182.64.167.188', 'Chrome 80.0.3987.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 'Windows 10', '2020-02-19 14:55:19'),
(67, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '182.64.167.188', 'Chrome 80.0.3987.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 'Windows 10', '2020-02-19 15:26:45'),
(68, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '182.68.212.141', 'Chrome 80.0.3987.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 'Windows 10', '2020-02-19 18:22:06'),
(69, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '182.68.212.141', 'Chrome 80.0.3987.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 'Windows 10', '2020-02-20 10:07:42'),
(70, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 80.0.3987.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', 'Windows 10', '2020-02-20 14:38:42'),
(71, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 80.0.3987.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', 'Windows 10', '2020-02-21 13:42:49'),
(72, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 80.0.3987.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', 'Windows 10', '2020-02-22 11:53:03');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orders`
--

CREATE TABLE `tbl_orders` (
  `id` int(11) NOT NULL,
  `order_id` varchar(250) NOT NULL,
  `ord_amt` float NOT NULL,
  `payment_status` enum('Unpaid','Paid','Pending') NOT NULL,
  `date` datetime NOT NULL,
  `pay_method` varchar(40) NOT NULL,
  `txn_id` varchar(250) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `email` varchar(70) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `state` varchar(15) NOT NULL,
  `country` varchar(15) NOT NULL,
  `gst` varchar(20) NOT NULL,
  `promo` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `subcat_id` int(11) NOT NULL,
  `shorttitle` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `type` varchar(50) NOT NULL,
  `eno` varchar(50) NOT NULL,
  `casno` varchar(50) NOT NULL,
  `qty` varchar(50) NOT NULL,
  `minorder` varchar(50) NOT NULL,
  `packaging` varchar(50) NOT NULL,
  `url` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `specs` text NOT NULL,
  `faq` text NOT NULL,
  `certi1` varchar(80) NOT NULL,
  `certi2` varchar(80) NOT NULL,
  `certi3` varchar(80) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `isDeleted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products_img`
--

CREATE TABLE `tbl_products_img` (
  `id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `productimages` varchar(290) NOT NULL,
  `date_created` datetime NOT NULL,
  `isDeleted` int(11) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reset_password`
--

CREATE TABLE `tbl_reset_password` (
  `id` bigint(20) NOT NULL,
  `email` varchar(128) NOT NULL,
  `activation_id` varchar(32) NOT NULL,
  `agent` varchar(512) NOT NULL,
  `client_ip` varchar(32) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` bigint(20) NOT NULL DEFAULT 1,
  `createdDtm` datetime NOT NULL,
  `updatedBy` bigint(20) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_reset_password`
--

INSERT INTO `tbl_reset_password` (`id`, `email`, `activation_id`, `agent`, `client_ip`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'amitaajamit@gmail.com', 'G5nDrAHZfTcEq9W', 'Chrome 78.0.3904.108', '::1', 0, 1, '2019-12-09 10:19:43', NULL, NULL),
(2, 'amitaajamit@gmail.com', 'kTGn0XbmWJOSAzy', 'Chrome 78.0.3904.108', '::1', 0, 1, '2019-12-10 06:23:13', NULL, NULL),
(3, 'amitaajamit@gmail.com', '8JqIRkcL7V6FdBn', 'Chrome 78.0.3904.108', '::1', 0, 1, '2019-12-13 06:00:56', NULL, NULL),
(4, 'amitaajamit@gmail.com', 'Gz7fTXEH1FMALwa', 'Chrome 78.0.3904.108', '::1', 0, 1, '2019-12-13 06:03:29', NULL, NULL),
(5, 'amitaajamit@gmail.com', 'fMGglH5w7iB9bJv', 'Chrome 78.0.3904.108', '::1', 0, 1, '2019-12-13 06:03:36', NULL, NULL),
(6, 'amitaajamit@gmail.com', 'bvcez3OC2BrTwIS', 'Chrome 78.0.3904.108', '::1', 0, 1, '2019-12-13 06:03:45', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `roleId` tinyint(4) NOT NULL COMMENT 'role id',
  `role` varchar(50) NOT NULL COMMENT 'role text'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_roles`
--

INSERT INTO `tbl_roles` (`roleId`, `role`) VALUES
(1, 'System Administrator'),
(2, 'Manager'),
(3, 'Employee');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_scategory`
--

CREATE TABLE `tbl_scategory` (
  `id` int(11) NOT NULL,
  `scatname` varchar(40) NOT NULL,
  `date` datetime NOT NULL,
  `status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_scategory`
--

INSERT INTO `tbl_scategory` (`id`, `scatname`, `date`, `status`) VALUES
(1, 'Wedding Flower Decoration', '2019-12-13 00:00:00', 'Active'),
(2, 'Pre Wedding Function', '2019-12-13 00:00:00', 'Active'),
(3, 'Themes Event Decoration', '2019-12-13 00:00:00', 'Active'),
(4, 'Home Flower Decoration', '2019-12-13 00:00:00', 'Active'),
(5, 'Car Flower Decoration', '2019-12-13 00:00:00', 'Active'),
(6, 'Corporate Flower Decoration', '2019-12-13 00:00:00', 'Active'),
(7, 'Diwali Flower Decoration', '2019-12-13 00:00:00', 'Active'),
(8, 'Birthday Flower Decoration', '2019-12-13 00:00:00', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_services`
--

CREATE TABLE `tbl_services` (
  `id` int(11) NOT NULL,
  `title` varchar(40) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `isDeleted` int(11) NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `date_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_services`
--

INSERT INTO `tbl_services` (`id`, `title`, `cat_id`, `image`, `description`, `status`, `isDeleted`, `updatedBy`, `date`, `date_updated`) VALUES
(1, 'Wedding Flower Decoration', 1, '1231.jpg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'Active', 0, 1, '2019-12-13 10:46:28', '2019-12-14 06:59:35'),
(2, 'Pre Wedding Function', 2, 'wedding-venue-decorations.jpg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'Active', 0, 1, '2019-12-14 06:35:44', '2019-12-14 06:58:55'),
(3, 'Themes Event Decoration', 3, 'events2.jpg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'Active', 0, 1, '2019-12-14 07:00:00', '2019-12-14 07:00:00'),
(4, 'Home Flower Decoration', 4, 'home-flower.jpg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'Active', 0, 1, '2019-12-14 07:00:36', '2019-12-14 07:00:36'),
(5, 'Car Flower Decoration', 5, 'home-flower1.jpg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'Active', 0, 1, '2019-12-14 07:01:00', '2019-12-14 07:01:00'),
(6, 'Corporate Flower Decoration', 6, 'home-flower2.jpg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'Active', 0, 1, '2019-12-14 07:01:19', '2019-12-14 07:01:19'),
(7, 'Diwali Flower Decoration', 7, 'home-flower3.jpg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'Active', 0, 1, '2019-12-14 07:01:41', '2019-12-14 07:01:41'),
(8, 'Birthday Flower Decoration', 8, 'home-flower4.jpg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'Active', 0, -1, '2019-12-14 07:01:58', '2019-12-14 07:01:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sliders`
--

CREATE TABLE `tbl_sliders` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `title_bottom` varchar(80) NOT NULL,
  `img_bottom` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `date_modified` datetime NOT NULL,
  `isDeleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sliders`
--

INSERT INTO `tbl_sliders` (`id`, `title`, `image`, `title_bottom`, `img_bottom`, `description`, `status`, `date_modified`, `isDeleted`) VALUES
(22, 'Post Graduate Program in Data Science', 'pdp-slider_1.jpg', 'Purdue University', 'Purdue_University_wordmark.svg', '<ul>\r\n	<li><a href=\"#\">Purdue Post Graduate Program Certification</a></li>\r\n	<li><a href=\"#\">Purdue Alumni Association Membership</a></li>\r\n	<li><a href=\"#\">Enrollment in Simplilearn&rsquo;s JobAssist</a></li>\r\n</ul>\r\n', 'Active', '2020-01-22 07:52:16', 0),
(23, 'Post Graduate Program in Data Science', 'pdp-slider_1.jpg', 'Purdue University', 'Purdue_University_wordmark.svg', '<ul>\r\n	<li><a href=\"#\">Purdue Post Graduate Program Certification</a></li>\r\n	<li><a href=\"#\">Purdue Alumni Association Membership</a></li>\r\n	<li><a href=\"#\">Enrollment in Simplilearn&rsquo;s JobAssist</a></li>\r\n</ul>\r\n', 'Active', '2020-01-02 07:37:47', 0),
(24, 'Post Graduate Program in Data Science', 'pdp-slider_1.jpg', 'Purdue University', 'Purdue_University_wordmark.svg', '<ul>\r\n	<li><a href=\"#\">Purdue Post Graduate Program Certification</a></li>\r\n	<li><a href=\"#\">Purdue Alumni Association Membership</a></li>\r\n	<li><a href=\"#\">Enrollment in Simplilearn&rsquo;s JobAssist</a></li>\r\n</ul>\r\n', 'Active', '2020-01-11 13:06:07', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonials`
--

CREATE TABLE `tbl_testimonials` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `designation` varchar(100) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `date_modified` datetime NOT NULL,
  `date` datetime NOT NULL,
  `isDeleted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_testimonials`
--

INSERT INTO `tbl_testimonials` (`id`, `title`, `image`, `author`, `content`, `designation`, `status`, `date_modified`, `date`, `isDeleted`) VALUES
(3, '', 'user.png', 'Eric Hathaway', '<p>&quot;Simplilearn&#39;s self-paced module encouraged me to get more proactive with my learning. I engaged with the material, took better notes, and staggered the classes to fit in with my busy schedule at Avanza CS. &quot;</p>\r\n', 'Process Improvement Consultant at Avanza CS', 'Active', '2020-01-22 10:42:34', '2019-12-16 00:00:00', 0),
(4, '', 'user.png', 'Eric Hathaway', '<p>&quot;Simplilearn&#39;s self-paced module encouraged me to get more proactive with my learning. I engaged with the material, took better notes, and staggered the classes to fit in with my busy schedule at Avanza CS. &quot;</p>\r\n', 'Process Improvement Consultant at Avanza CS', 'Active', '2019-12-23 08:30:01', '2019-12-16 00:00:00', 0),
(5, '', 'user.png', 'Eric Hathaway', '<p>&quot;Simplilearn&#39;s self-paced module encouraged me to get more proactive with my learning. I engaged with the material, took better notes, and staggered the classes to fit in with my busy schedule at Avanza CS. &quot;</p>\r\n', 'Process Improvement Consultant at Avanza CS', 'Active', '2019-12-23 08:30:56', '2019-12-23 00:00:00', 0),
(6, '', 'user.png', 'Eric Hathaway', '<p>&quot;Simplilearn&#39;s self-paced module encouraged me to get more proactive with my learning. I engaged with the material, took better notes, and staggered the classes to fit in with my busy schedule at Avanza CS. &quot;</p>\r\n', 'Process Improvement Consultant at Avanza CS', 'Active', '2020-01-22 07:52:38', '2019-12-23 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_training_options`
--

CREATE TABLE `tbl_training_options` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `subcat_id` int(11) NOT NULL,
  `subcat2_id` int(11) NOT NULL,
  `c_title` varchar(100) NOT NULL,
  `c_description` text NOT NULL,
  `c_price` float NOT NULL,
  `isDeleted` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_training_options`
--

INSERT INTO `tbl_training_options` (`id`, `cat_id`, `subcat_id`, `subcat2_id`, `c_title`, `c_description`, `c_price`, `isDeleted`, `date_created`, `date_updated`, `status`) VALUES
(1, 1, 1, 1, 'Self-Paced Learning', '<p>Lifetime access to high-quality self-paced e-learning content curated by industry experts</p>\r\n\r\n<p>Avail Live Online Classroom Flexi-Pass sessions recordings.</p>\r\n\r\n<p>Get Recordings of Live Sessions and learn at your own pace, with all support from our side.</p>\r\n\r\n<p>24x7 learner assistance and support</p>\r\n', 15000, 0, '2020-01-03 12:00:48', '2020-01-10 11:37:44', 'Active'),
(2, 1, 1, 1, 'Online Classroom Flexi-Pass', '<p>90 days of flexible access to instructor-led online training classes</p>\r\n\r\n<p>Lifetime access to high-quality self-paced e-learning content and live class recordings</p>\r\n\r\n<p>24x7 learner assistance and support</p>\r\n\r\n<ul>\r\n	<li>Classes starting&nbsp;from:-</li>\r\n</ul>\r\n\r\n<p><i class=\"fa fa-calendar\"></i>17th Jan: Weekday Class</p>\r\n\r\n<p><i class=\"fa fa-calendar\"></i>18th Jan: Weekend Class</p>\r\n\r\n<p>&nbsp;</p>\r\n', 28000, 0, '2020-01-03 12:02:03', '2020-01-16 11:52:45', 'Active'),
(4, 1, 1, 1, 'Corporate Training Solutions Customized to your team', '<p>Blended learning delivery model (self-paced eLearning and/or instructor-led options)</p>\r\n\r\n<p>Flexible pricing options</p>\r\n\r\n<p>Enterprise grade Learning Management System (LMS)</p>\r\n\r\n<p>Enterprise dashboards for individuals and teams</p>\r\n\r\n<p>24x7 learner assistance and support</p>\r\n', 1, 0, '2020-01-03 12:03:30', '2020-01-03 12:03:30', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `userId` int(11) NOT NULL,
  `email` varchar(128) NOT NULL COMMENT 'login email',
  `password` varchar(128) NOT NULL COMMENT 'hashed login password',
  `name` varchar(128) DEFAULT NULL COMMENT 'full name of user',
  `mobile` varchar(20) DEFAULT NULL,
  `roleId` tinyint(4) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`userId`, `email`, `password`, `name`, `mobile`, `roleId`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'admin@mrscience.com', '$2y$10$q4G47CtpUBNXTGMoejjqFeoXs58N8dbbgLTJZaHlWcYUrqywFGdKy', 'System Administrator', '9560326000', 1, 0, 0, '2015-07-01 18:56:49', 1, '2019-12-09 11:13:29'),
(2, 'manager@example.com', '$2y$10$quODe6vkNma30rcxbAHbYuKYAZQqUaflBgc4YpV9/90ywd.5Koklm', 'Manager', '9890098900', 2, 0, 1, '2016-12-09 17:49:56', 1, '2019-12-09 11:13:22'),
(3, 'employee@example.com', '$2y$10$q4G47CtpUBNXTGMoejjqFeoXs58N8dbbgLTJZaHlWcYUrqywFGdKy', 'Employees', '9890098900', 3, 0, 1, '2016-12-09 17:50:22', 1, '2019-12-09 09:10:02'),
(9, 'amitaajamit@gmail.com', '$2y$10$b/Bi66rY6dCk0fQyr9HNEOKPud0FPxzeQ1x6urhCnCLDPyBTwN0Fu', 'Amit Kumar', '9015548748', 3, 0, 1, '2019-12-09 10:18:04', NULL, NULL),
(10, 'amitaajamit@gmail.com', '$2y$10$b/Bi66rY6dCk0fQyr9HNEOKPud0FPxzeQ1x6urhCnCLDPyBTwN0Fu', 'Amit Kumar', '9015548748', 3, 0, 1, '2019-12-09 10:18:04', NULL, NULL),
(11, 'amitaajamit@gmail.com', '$2y$10$b/Bi66rY6dCk0fQyr9HNEOKPud0FPxzeQ1x6urhCnCLDPyBTwN0Fu', 'Amit Kumar', '9015548748', 3, 0, 1, '2019-12-09 10:18:04', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `tbl_about`
--
ALTER TABLE `tbl_about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_benefits`
--
ALTER TABLE `tbl_benefits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_benefit_img`
--
ALTER TABLE `tbl_benefit_img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_blogs`
--
ALTER TABLE `tbl_blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_brands`
--
ALTER TABLE `tbl_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_campain`
--
ALTER TABLE `tbl_campain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_certifications`
--
ALTER TABLE `tbl_certifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact_query`
--
ALTER TABLE `tbl_contact_query`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_courses`
--
ALTER TABLE `tbl_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_course_category`
--
ALTER TABLE `tbl_course_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_course_subcategory`
--
ALTER TABLE `tbl_course_subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_course_subcategory2`
--
ALTER TABLE `tbl_course_subcategory2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_designation`
--
ALTER TABLE `tbl_designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_examcerti`
--
ALTER TABLE `tbl_examcerti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_fcategory`
--
ALTER TABLE `tbl_fcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_flower`
--
ALTER TABLE `tbl_flower`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gcategory`
--
ALTER TABLE `tbl_gcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_home_page`
--
ALTER TABLE `tbl_home_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_last_login`
--
ALTER TABLE `tbl_last_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_products_img`
--
ALTER TABLE `tbl_products_img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`roleId`);

--
-- Indexes for table `tbl_scategory`
--
ALTER TABLE `tbl_scategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_services`
--
ALTER TABLE `tbl_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sliders`
--
ALTER TABLE `tbl_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_testimonials`
--
ALTER TABLE `tbl_testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_training_options`
--
ALTER TABLE `tbl_training_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_about`
--
ALTER TABLE `tbl_about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_benefits`
--
ALTER TABLE `tbl_benefits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_benefit_img`
--
ALTER TABLE `tbl_benefit_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_blogs`
--
ALTER TABLE `tbl_blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_brands`
--
ALTER TABLE `tbl_brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_campain`
--
ALTER TABLE `tbl_campain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_certifications`
--
ALTER TABLE `tbl_certifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_contact_query`
--
ALTER TABLE `tbl_contact_query`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_courses`
--
ALTER TABLE `tbl_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_course_category`
--
ALTER TABLE `tbl_course_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_course_subcategory`
--
ALTER TABLE `tbl_course_subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_course_subcategory2`
--
ALTER TABLE `tbl_course_subcategory2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_designation`
--
ALTER TABLE `tbl_designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_examcerti`
--
ALTER TABLE `tbl_examcerti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_fcategory`
--
ALTER TABLE `tbl_fcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_flower`
--
ALTER TABLE `tbl_flower`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_gcategory`
--
ALTER TABLE `tbl_gcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_home_page`
--
ALTER TABLE `tbl_home_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_last_login`
--
ALTER TABLE `tbl_last_login`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_products_img`
--
ALTER TABLE `tbl_products_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `roleId` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'role id', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_scategory`
--
ALTER TABLE `tbl_scategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_services`
--
ALTER TABLE `tbl_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_sliders`
--
ALTER TABLE `tbl_sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_testimonials`
--
ALTER TABLE `tbl_testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_training_options`
--
ALTER TABLE `tbl_training_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
