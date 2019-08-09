-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 09, 2019 at 05:48 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_reactr`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_awards`
--

DROP TABLE IF EXISTS `tbl_awards`;
CREATE TABLE IF NOT EXISTS `tbl_awards` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `award_title` varchar(150) NOT NULL,
  `award_desc` varchar(500) NOT NULL,
  `award_project` int(11) UNSIGNED NOT NULL,
  `award_year` year(4) NOT NULL,
  `award_conference` varchar(150) NOT NULL,
  `award_type` varchar(75) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_awards`
--

INSERT INTO `tbl_awards` (`id`, `award_title`, `award_desc`, `award_project`, `award_year`, `award_conference`, `award_type`) VALUES
(1, 'People\'s Choice Award', 'Awarded by attendees at the annual Student Research and Innovation Day, Fanshawe College.', 14, 2014, 'Student Research and Innovation Day', 'Student Award'),
(2, 'Best Business Application', 'Awarded by the judging panel at the annual Student Research and Innovation Day, Fanshawe College.', 16, 2015, 'Student Research and Innovation Day', 'Student Award'),
(3, 'Best Technology Application', 'Awarded by the judging panel at the annual Student Research and Innovation Day, Fanshawe College.', 16, 2015, 'Student Research and Innovation Day', 'Student Award'),
(4, 'Best Business Application', 'Awarded by the judging panel at the annual Student Research and Innovation Day, Fanshawe College.', 19, 2016, 'Student Research and Innovation Day', 'Student Award'),
(5, 'Best Technology Application', 'Awarded by the judging panel at the annual Student Research and Innovation Day, Fanshawe College.', 19, 2016, 'Student Research and Innovation Day', 'Student Award'),
(7, 'Best Business Application', 'Awarded by the judging panel at the annual Student Research and Innovation Day, Fanshawe College.', 32, 2017, 'Student Research and Innovation Day', 'Student Award'),
(8, 'Best Technology Application', 'Awarded by the judging panel at the annual Student Research and Innovation Day, Fanshawe College.', 32, 2017, 'Student Research and Innovation Day', 'Student Award'),
(10, 'Best Business Application', 'Awarded by the judging panel at the annual Student Research and Innovation Day, Fanshawe College.', 34, 2018, 'Student Research and Innovation Day', 'Student Award'),
(11, 'Best Technology Application', 'Awarded by the judging panel at the annual Student Research and Innovation Day, Fanshawe College.', 34, 2018, 'Student Research and Innovation Day', 'Student Award'),
(13, 'Paper Presentation', 'Peer-reviewed paper presentation at the annual international education conference.', 10, 2014, 'E-learn Conference, New Orleans LA USA', 'Presentation'),
(14, 'Poster Presentation', 'Poster presentation at the annual Faculty Research and Innovation Conference, Fanshawe College.', 10, 2014, 'Faculty Research and Innovation Day', 'Presentation'),
(15, 'Paper Presentation', 'Paper presentation at annual educational conference.', 16, 2015, 'OCCCIO Conference, London, ON.', 'Presentation'),
(16, 'Poster Presentation', 'Poster presentation at the annual STLHE national conference.', 19, 2016, 'STLHE Conference, London ON.', 'Presentation'),
(17, 'Poster Presentation', 'Poster presentation at the annual Faculty Research and Innovation Conference, Fanshawe College.', 25, 2016, 'Faculty Research and Innovation Day', 'Presentation'),
(18, 'Poster Presentation', 'Poster presentation at the annual technology in education conference.', 25, 2017, 'IABL Conference, Toronto ON.', 'Presentation'),
(19, 'Tech Demo', 'Hands-on application demonstration, annual DigiFest technology conference.', 30, 2017, 'DigiFest, Toronto ON.', 'Presentation'),
(20, 'Tech Demo', 'Hands-on application demonstration, annual DigiFest technology conference.', 35, 2018, 'DigiFest, Toronto ON.', 'Presentation');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_features`
--

DROP TABLE IF EXISTS `tbl_features`;
CREATE TABLE IF NOT EXISTS `tbl_features` (
  `feature_id` int(3) NOT NULL AUTO_INCREMENT,
  `project_id` int(3) NOT NULL,
  `title` varchar(80) NOT NULL,
  `feature` text NOT NULL,
  PRIMARY KEY (`feature_id`)
) ENGINE=MyISAM AUTO_INCREMENT=178 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_features`
--

INSERT INTO `tbl_features` (`feature_id`, `project_id`, `title`, `feature`) VALUES
(85, 26, 'Reports', 'Creation of dynamic views for content summaries and lists, including generation of report pages.'),
(84, 26, 'PDFs', 'Development of functionality for uploading and managing documents for individual users.'),
(83, 26, 'Visualizations', 'Coding of interactive visualizations, and the integration within the Toolkit framework.'),
(82, 26, 'CMS', 'Design, development and coding of CMS forms and views for ‘master’ administration.'),
(81, 25, 'Review quiz', 'Additional self-evaluation tool that will test on the concepts learned in all chapters.'),
(80, 25, 'Simulations', 'Students must properly place a cuff in a 3D arm, and pump and deflate a cuff at the proper rate.'),
(79, 25, '3D elements', 'Illustrating anatomy and physiology using renderings and videos.'),
(71, 22, 'CMS', 'Ability to adjust page content and images through a UI. Add, adjust, and edit catalogue items.'),
(72, 23, 'CodeIgniter - PHP', 'To dynamically store and call the information the customer is looking for.'),
(73, 23, 'CodeIgniter - PHP', 'To dynamically store and call the information the customer is looking for.'),
(74, 23, 'Content Management System', 'To manage the information, add and update products, approve dealers and testimonials.'),
(75, 24, 'Wedding Planning Tools', 'Brides have a set of tools available to assist in the planning of their wedding.'),
(76, 24, 'Checklists', 'Provided an easy to follow walkthrough of the steps needed to plan a wedding. '),
(77, 24, 'Budget planner', 'Allowed brides to manage their wedding expenses and balance spending.'),
(78, 24, 'Inspiration Boards', 'Brides have the ability to favourite wedding ideas different categories.'),
(70, 22, 'Online Sales Catalogue Database', 'Database of items that can be searched and sorted.'),
(69, 22, 'Website Refresh Updated', 'Website layout Implemented original colour scheme with enhanced visual aesthetics.'),
(68, 21, 'Streamlined CMS', 'Improvements in the content management system, to allow better data management.'),
(67, 21, 'Tutorials', 'Tutorials to train new students and new residence staff.'),
(59, 19, '2D animations and graphics', '2D models and animations supplementary to the regular curriculum content.'),
(60, 19, '3D animations and models', 'Users have an interactive experience with similar results as the ones achieve in the lab.'),
(61, 19, 'Interactive anatomical models', 'Media activities where visuals, audio and interaction combine to deliver key content.'),
(62, 19, 'Quizzes and tests', 'Allowing students to access content at any time, and to self-paced assessment.'),
(63, 20, 'User Profiles & Dashboard', 'Both brides and vendors had detailed profiles with several key features.'),
(64, 20, 'Vendor profiles', 'Contained a newsfeed of upcoming promotions, reviews, contact information and a gallery showcasing the vendor’s services.'),
(65, 20, 'Bride dashboards', 'Were their personal hub of their planning tools, idea book and a feed of vendor news and inspiration posts.'),
(66, 21, 'Phone Gap', 'To create custom notifications and alerts.'),
(58, 18, 'Online Client Information System', 'Allowing client login, data entry and information management.'),
(57, 18, 'Multi-Level Relational RDMS', 'Organizes all of the required site content, will scale to meet future needs.'),
(56, 18, 'UI/UX Design', 'For client and users, consistent with the defined graphic design guidelines.'),
(55, 18, 'Custom Branding and Graphic Design ', 'Defined the design strategy and the overall ‘look and feel’ of the application.'),
(54, 17, 'Authentication and Management User Levels', 'Various roles created within the framework (master admin, company admins, etc.)'),
(53, 17, 'Custom Content Management', 'Allows for updating of sustainability information, company-specific activities.'),
(52, 17, 'Relational RDMS', 'Allows for many possible variations of data summary, tracking and visualization.'),
(51, 17, 'Custom UI', 'Development of a custom framework UI based on design from original paper Toolkit.'),
(50, 16, 'Formal Messaging and Notification System', 'Notifications of complaints and offences, payments, etc.'),
(49, 16, 'Class Path', 'Helps students to get to the right class on time, using class schedules and a map system.'),
(48, 16, 'Building Dashboard', 'Students stay connected with residence staff and floormates within the building.'),
(47, 16, 'Interactive Calendar', 'Students can flag dates, check schedules, create reminders and upcoming events.'),
(46, 15, 'Custom Search Tools', 'Find Natural Nutrition practices close to user, map locations and contact info.'),
(45, 15, 'Custom Content Management', 'Profile creation and editing, file uploads to Library, image uploading.'),
(44, 15, 'Dynamic Forms', 'Pass through’ forms: 10 questions per view, to organize data collection tools.'),
(43, 15, 'User Dashboard', 'Developed user widgets: Account Management, Client Lists, Profile Navigation.'),
(42, 14, 'Communication and Community Features', 'Discussion forums with commenting, community-contributed stories and content.'),
(41, 14, 'Curated Content by Trusted Users', 'Internal library of high-quality, well-researched reference materials.'),
(40, 14, 'Custom Health Infographics', 'To present results graphically in a dynamic, interactive and readable fashion.'),
(39, 14, 'Online Assessment Tools', 'Allowed clients to complete assessments more easily and on their own schedules.'),
(38, 13, 'Online Client Booking System', 'Client login, profile creation and customization, emailing and messaging.'),
(37, 13, 'Multi-Level Relational RDMS', 'Organizes all of the required site content, will scale to meet future needs.'),
(36, 13, 'Custom UI/UX Design and Testing', 'For client and public use, consistent with the defined graphic design guidelines.'),
(35, 13, 'Custom Branding and Graphic Design ', 'Defined the design strategy and the overall ‘look and feel’ of the application.'),
(34, 12, 'Open Source Database Architecture', 'Served as a template for efficient and centralized organization of information.'),
(33, 12, 'Custom Cost Calculations', 'Functionality for calculating specific cost/payment and leasing calculations.'),
(32, 12, 'Custom UX Tablet Design', 'Developed all graphics for the application, guidelines and UI elements.'),
(31, 12, '360-degree Rotatable Models', 'Allows for colour/model variation, and addition of standard options packages.'),
(30, 11, 'Solid-works', 'To create higher-level physics-based modelling and animation'),
(29, 11, '3D animations', 'Modelling, rigging and animation for implementation in game engines.'),
(28, 11, '2D Animations', 'To assist in the design and stress testing of the prototype.'),
(27, 10, 'Desktop and Mobile-Friendly', 'Offers desktop and mobile versions, so students can use the app as needed.'),
(26, 10, 'Notifications and Alerts', 'To announce upcoming classes, and other important college events, using SMS.'),
(25, 10, 'Dynamic Class Schedule', 'Calendar view tied to notifications and to the interactive room direction guide.'),
(24, 10, 'College Mapping', 'Animated walking guides to help students get to classes and appointments.'),
(23, 9, 'Custom Profile Dashboard', 'Potential concepts for the overall user interface and dynamic, graphical information.'),
(22, 9, 'Custom Animated Infographics', 'For the Dashboard data, showing earned points, donations, and current campaigns.'),
(21, 9, 'Modern Scrolling Web Template', 'Designed for the User, Dashboard and main information pages in the framework.'),
(20, 5, 'Career Education Modules', 'Rich media educational modules to describe and demonstrate different careers.'),
(19, 5, 'Student Profile System', 'Profile with topic tracking, continuously refined as student uses MyPath.'),
(18, 5, 'Integration with College Systems', 'MyPath career tracks link directly to College registration and advisor systems.'),
(17, 5, 'Rich Media Content', 'Day in the Life’ career videos, audio/animation to supplement text and photos.'),
(16, 4, 'Custom Graphic and UI Design', 'Custom layout, typography, colour palette and media to maximize user experience.'),
(15, 4, 'Gamification', 'Visual time and progress-tracking, reward elements integrated into the UI.'),
(14, 4, 'Visual Course Timeline', 'Custom timeline and progress visualizations for course assignments, due dates.'),
(13, 4, 'Content Management', 'Gives users the ability to easily create and populate course, student content.'),
(176, 3, 'Content Management', 'Provides users with the ability to create and manage lesson content and media.'),
(175, 3, 'Custom Graphic and UI Design', 'Custom layout, typography, colour palette and media to maximize user experience.'),
(174, 3, 'Rich Media Lesson Content', 'Web framework integrates text, 2D/3D graphics, animation and other media assets.'),
(8, 2, 'Open-Source Data Architecture', 'Custom relational database designed and built for all dynamic site content.'),
(7, 2, 'Custom Mobile Application UI', 'Mobile-first design to emulate native application performance on smartphones.'),
(6, 2, 'Gamification', 'Progress tracking and reward systems (e.g., completion badges with notifications).'),
(5, 2, 'Geolocation and Google Maps ', 'Ability to create custom mapped tours, sorted by proximity to the user.'),
(4, 1, 'Self-Assessment Test Modules', 'Multiple-choice questions and real-time simulation exercises to gauge progress.'),
(3, 1, 'Real-Time Simulations', 'Interactive simulation exercises with real-time feedback.'),
(1, 1, 'Rich Media Content', 'Unity app integrates text, 2D/3D graphics and animations, audio and video.'),
(2, 1, 'Custom Graphics and UI', 'Custom design and dashboards created specifically for use on tablet devices.'),
(86, 27, 'Research', 'Into current design trends and styles, and different style samples and concepts.'),
(87, 27, 'UI/UX', 'Implement new and modern design elements through various phases.'),
(88, 27, 'Redesign', 'Multiple variations of design / layout mockups were created and presented to the client.'),
(89, 29, 'Website Update', 'Complete website redesign, to improve web presence and increase revenue.'),
(90, 29, 'Rebranding', 'Rebranding, new logo design and new guidelines + branding document.'),
(91, 29, 'UI/UX Design', 'Streamline layout to showcase the main services of the company.'),
(92, 29, 'CMS', 'For client management, communication and marketing.'),
(93, 30, 'Web portal Design', 'Design strategy and the overall ‘look and feel’ of the application, according to company standards.'),
(94, 30, 'Client Engagement', 'Allow IECS to communicate directly with prospective clients who use the Calculator.'),
(95, 30, 'Admin dashboard', 'Allows to track and monitor the state of all client estimates.'),
(96, 30, 'Streamline estimate process', 'Reducing the need for lengthy email chains and manual estimate processing times.'),
(97, 31, 'Dual Portals', 'Develop different portals to suit better different client needs.'),
(98, 31, 'Invoicing system', 'Allowing users to order and get invoiced using the website.'),
(99, 31, 'CMS Update', 'To keep a tracking system of orders and client information.'),
(100, 32, 'Branding', 'Logo design and design guide to be used not only on the website but also for packaging.'),
(101, 32, 'Website Design', 'Defined the design strategy and the overall ‘look and feel’ of the application.'),
(102, 32, 'UI/UX Design', 'For client and users, consistent with the defined graphic design guidelines.'),
(103, 32, 'Multi-Level Relational RDMS', 'Organizes all of the required site content, will scale to meet future needs.'),
(104, 33, 'Branding', 'Logo design and guidelines and branding documentation.'),
(105, 33, 'Website design', 'Responsive design showcasing products and services.'),
(106, 33, 'Online ordering system', 'Allowing clients accessing the product catalog and make orders directly from the site.'),
(107, 33, 'Multi-Level Relational RDMS', 'Organizes all of the required site content, will scale to meet future needs.'),
(108, 34, 'Create schedules', 'Managers login and build single day schedules templates to use for all employees.'),
(109, 34, 'Take attendance', 'Managers can take attendance of all employees using the system and create reports.'),
(110, 34, 'Request time-off', 'Employees submit time-off requests and tickets, and managers review requests made by employees.'),
(111, 34, 'User workflow', 'Best practices in design and development were implemented to ensure a good UX.'),
(112, 35, 'Digital instruction manuals', 'CMS where admins can add, edit, delete & and organize instructions, images, tools, materials & fixtures.'),
(113, 35, 'Communication platform', 'Ability to ask questions, comments and send emails to supervisors.'),
(114, 35, 'Data visualization and news center', 'Stream live data about machine performance and downtime, plus display news and events.'),
(115, 35, 'PHP Framework', 'Providing and easy way to implement authentication, routing and view templating.'),
(116, 36, 'UI/UX Design', 'For client and users, consistent with the defined graphic design guidelines.'),
(117, 36, 'Website design', 'Responsive design showcasing products and services.'),
(118, 36, 'Multi-Level Relational RDMS', 'Organizes all of the required site content, will scale to meet future needs.'),
(119, 36, 'Online Client Information System', 'Allowing client login, data entry and information management.'),
(120, 37, 'UI/UX', 'Focused and approachable ux, improving navigation and overall performance.'),
(121, 37, 'User management system', 'Allowing admins and users to monitor progress through learning lessons, modules and tracks.'),
(122, 37, 'Rich Media', 'The system allows content creators to add photos and videos and other interactive content to the platform.'),
(123, 37, 'Quizzes', 'The system includes score tracking and lesson completion status, to show student progress.'),
(124, 38, 'Custom Branding and Graphic Design ', 'Defined the design strategy and the overall ‘look and feel’ of the application.'),
(125, 38, 'UI/UX Design', 'For client and public use, consistent with the defined graphic design guidelines.'),
(126, 38, 'Online Client Information System', 'Allowing client login, data entry and information management.'),
(127, 38, 'Multi-Level Relational RDMS', 'Organizes all of the required site content, will scale to meet future needs.'),
(173, 3, 'Open-Source Data Architecture', 'Custom relational database designed and built for all dynamic site content.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

DROP TABLE IF EXISTS `tbl_gallery`;
CREATE TABLE IF NOT EXISTS `tbl_gallery` (
  `gallery_id` int(10) NOT NULL AUTO_INCREMENT,
  `project_id` int(10) NOT NULL,
  `gallery_src` varchar(155) NOT NULL DEFAULT 'placeholder_gallery.jpg',
  PRIMARY KEY (`gallery_id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`gallery_id`, `project_id`, `gallery_src`) VALUES
(2, 1, '2_medics_pic1.jpg'),
(3, 4, '3_hourclass_pic2.jpg'),
(4, 2, '4_geoadventuring_pic2.jpg'),
(5, 5, '5_mypath_pic1.jpg'),
(6, 5, '5_mypath_pic4.png'),
(7, 10, '6_rezguide_1_pic2.jpg'),
(8, 10, '6_rezguide_1_pic4.jpg'),
(9, 14, '7_phyta_1_pic3.jpg'),
(10, 14, '7_phyta_1_pic2.jpg'),
(11, 14, '7_phyta_1_pic6.png'),
(12, 14, '7_phyta_1_pic7.png'),
(13, 12, '8_ignition_pic1.png'),
(14, 12, '8_ignition_pic2.jpg'),
(15, 9, '9_onelove_pic2.png'),
(16, 16, '10_rezguide_2_pic5.jpg'),
(17, 16, '10_rezguide_2_pic3.jpg'),
(18, 17, '11_toolkit_1_pic1.jpg'),
(19, 17, '11_toolkit_1_pic2.jpg'),
(20, 15, '12_phyta_2_pic3.jpg'),
(21, 15, '12_phyta_2_pic4.jpg'),
(22, 13, '13_mush_pic1.jpg'),
(23, 21, '14_rezguide_3_pic1.jpg'),
(24, 11, '15_snowplow_pic4.jpg'),
(25, 26, '16_toolkit_2_pic2.jpg'),
(26, 20, '17_weddings_1_pic1.jpg'),
(27, 20, '17_weddings_1_pic2.jpg'),
(28, 18, '18_eplanner_pic1.jpg'),
(30, 18, '18_eplanner_pic4.jpg'),
(31, 19, '19_praktik_1_pic3.png'),
(32, 22, '20_junkremoval_pic1.jpg'),
(33, 22, '20_junkremoval_pic3.jpg'),
(34, 22, '20_junkremoval_pic5.png'),
(35, 23, '21_truckladders_1_pic2.jpg'),
(36, 23, '21_truckladders_1_pic5.jpg'),
(37, 23, '21_truckladders_1_pic1.png'),
(38, 27, '22_drinky_pic1.jpg'),
(39, 27, '22_drinky_pic2.jpg'),
(40, 25, '23_praktik_2_pic2.jpg'),
(41, 29, '24_heattreatment_pic3.jpg'),
(42, 29, '24_heattreatment_pic1.jpg'),
(43, 24, '25_weddings_2_pic3.jpg'),
(44, 30, '26_erosioncontrol_1_pic2.jpg'),
(45, 30, '26_erosioncontrol_1_pic1.jpg'),
(46, 30, '26_erosioncontrol_1_pic3.jpg'),
(47, 31, '27_truckladders_2_pic1.jpg'),
(48, 31, '27_truckladders_2_pic2.jpg'),
(49, 31, '27_truckladders_2_pic3.png'),
(50, 32, '28_bees_pic1.jpg'),
(51, 32, '28_bees_pic3.jpg'),
(52, 32, '28_bees_pic4.jpg'),
(53, 33, '29_cupcakes_pic4.jpg'),
(54, 33, '29_cupcakes_pic3.jpg'),
(55, 33, '29_cupcakes_pic2.png'),
(56, 33, '29_cupcakes_pic5.jpg'),
(57, 34, '30_hrd_pic1.jpg'),
(58, 34, '30_hrd_pic2.png'),
(59, 35, '31_jeb_1_pic2.jpg'),
(60, 35, '31_jeb_1_pic5.png'),
(61, 36, '32_teamcanada_pic5.jpg'),
(62, 37, '33_dentalstrategy_1_pic3.jpg'),
(63, 37, '33_dentalstrategy_1_pic4.png'),
(64, 37, '33_dentalstrategy_1_pic5.png'),
(65, 38, '34_ledc_pic2.jpg'),
(66, 1, '2_medics_pic3.png'),
(67, 1, '2_medics_pic4.png'),
(68, 2, '4_geoadventuring_pic1.png'),
(69, 2, '4_geoadventuring_pic3.png'),
(97, 3, 'QWILL_gallery_0.png'),
(72, 4, '3_hourclass_pic3.jpg'),
(73, 4, '3_hourclass_pic1.png'),
(74, 9, '9_onelove_pic3.png'),
(75, 9, '9_onelove_pic4.png'),
(76, 11, '15_snowplow_pic3.png'),
(77, 11, '15_snowplow_pic2.png'),
(78, 13, '13_mush_pic2.png'),
(79, 13, '13_mush_pic4.jpg'),
(80, 19, '19_praktik_1_pic1.png'),
(81, 19, '19_praktik_1_pic1.png'),
(82, 21, '14_rezguide_3_pic4.png'),
(83, 21, '14_rezguide_3_pic3.png'),
(84, 24, '25_weddings_2_pic2.png'),
(85, 24, '25_weddings_2_pic5.png'),
(86, 25, '23_praktik_2_pic1.png'),
(87, 25, '23_praktik_2_pic4.png'),
(88, 26, '16_toolkit_2_pic3.png'),
(89, 26, '16_toolkit_2_pic1.png'),
(90, 36, '32_teamcanada_pic3.png'),
(91, 36, '32_teamcanada_pic2.jpg'),
(92, 38, '34_ledc_pic1.png'),
(93, 38, '34_ledc_pic3.png'),
(98, 3, 'QWILL_gallery_1.png'),
(99, 39, 'Tester_Project_gallery_0.png'),
(100, 39, 'Tester_Project_gallery_1.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_project`
--

DROP TABLE IF EXISTS `tbl_project`;
CREATE TABLE IF NOT EXISTS `tbl_project` (
  `project_id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT,
  `homeFeature` tinyint(1) NOT NULL DEFAULT '0',
  `project_name` varchar(75) NOT NULL DEFAULT 'placeholder',
  `project_type` varchar(245) NOT NULL,
  `project_brief` text NOT NULL,
  `project_date` varchar(15) NOT NULL,
  `project_year` year(4) NOT NULL,
  `project_funder` varchar(255) DEFAULT 'funder name',
  `project_cName` varchar(75) NOT NULL,
  `project_cLogo` varchar(120) NOT NULL DEFAULT 'placeholder_c_logo.jpg',
  `project_cAbout` text NOT NULL,
  `project_abstract` text NOT NULL,
  `project_quote` varchar(600) NOT NULL,
  `project_quoteby` varchar(50) NOT NULL,
  `project_homeImg` varchar(120) NOT NULL DEFAULT 'placeholder_home.jpg',
  `project_thumbImg` varchar(120) NOT NULL DEFAULT 'placeholder_thumb.jpg',
  `project_detailImg` varchar(75) NOT NULL DEFAULT 'placeholder_detail.png',
  `project_absImg` varchar(255) NOT NULL DEFAULT 'placeholder_abstract.png',
  `project_featImg` varchar(155) NOT NULL DEFAULT 'placeholder_feat.png',
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_project`
--

INSERT INTO `tbl_project` (`project_id`, `homeFeature`, `project_name`, `project_type`, `project_brief`, `project_date`, `project_year`, `project_funder`, `project_cName`, `project_cLogo`, `project_cAbout`, `project_abstract`, `project_quote`, `project_quoteby`, `project_homeImg`, `project_thumbImg`, `project_detailImg`, `project_absImg`, `project_featImg`) VALUES
(1, 0, 'MEDICS', 'Large scale - Educational Framework', 'The team collaborated with Medic\'s team to develop an interactive digital prototype of a print manual for paramedic education and training.', 'Winter', 2013, 'N/A', 'Medic’s little Helper', 'medics_cLogo.png', 'Medic\'s Little Helper is a small London company that publishes a successful book for paramedic education and training. \r\nThe author is an Air Paramedic, who wished to extend the book to become a digital interactive learning tool.', 'Developed an interactive, rich media version of a selected portion of the book content, as a teaching tool for core paramedic procedures. The goal was to have a series of application modules available for purchase and use primarily on iOS and Android tablets, as well as desktop and laptop computers.', '“The partnership with Fanshawe is a critical step in moving our business forward into new markets.”', 'Brandon Doneff, from Medics', 'home2.png', '2_medics_pic3_thumb.png', '2_medics_pic3.png', '2_medics_pic4.png', '2_medics_pic2.png'),
(2, 0, 'GEOADVENTURING', 'Large Scale', 'GeoAdventuring is a mobile Web application promoting a range of activities and services within rural Ontario, with the use of map-based, thematic tours.', 'Winter ', 2013, 'Client Funded', 'TecVana', 'geoadv_cLogo.png', 'TecVana Inc. is a corporation dedicated to supporting struggling recreational sectors in rural Ontario, and specifically to begin informing and rewarding a younger generation to travel to and engage with rural communities.', 'This mobile application incorporated a dynamic library of GeoAdventures that users review, bookmark and rate; every GeoAdventure was be created and populated by participating rural communities, and utilized gamification to promote rural Ontario to a younger, technology-focused demographic.', '\"The collaborative partnership between TecVana and Fanshawe College has proven to be an invaluable experience...the product that has been developed is very impressive!\"', 'Doug Matatall, CEO of TecVana', 'home1.png', '4_geoadventuring_pic1_thumb.png', '4_geoadventuring_pic1.png', '4_geoadventuring_pic3.png', '4_geoadventuring_pic4.png'),
(3, 0, 'QWILL', 'Large scale - Educational Framework', 'Qwill is an interactive digital framework to support integration of the digital version of the curriculum, using emerging classroom technologies.', '2013', 2013, 'NSERC', 'Qwill Media and education Inc.', 'qwill_cLogo.jpg', 'Quality Writing Improves Lifelong Learning is an education publishing company focused on expanding the worldwide success of the Shakespeare Can Be Fun children’s book series and instructional seminars created by Lois Burdett.', 'Developed a framework to generate Web-based lessons through a rich media content management system. The framework was based on open-source Web technologies to \'future-proof\' the application, allowing for easier future dynamic content development.', '“The opportunity to work with Fanshawe\'s distinguished faculty and students to create a phase one digital application will greatly assist QWILL\'s ability to deliver our curriculum and to expand our business.”', 'Andrew Lester from Qwill', 'home3.png', '1_qwill_pic1_thumb.png', '1_qwill_pic1.png', '1_qwill_pic2.png', '1_qwill_pic4.png'),
(4, 0, 'HOURCLASS', 'Medium Scale', 'Hourclass is an online course information portal to provide students with visual feedback, gasified progress displays and granular data about their assignments.', 'Winter ', 2013, 'N/A', 'Fanshawe College', 'fanshawe_cLogo.png', 'Fanshawe is a comprehensive community college serving the greater London region by providing flexible learning arrangements and experiential education opportunities developed in response to labour market needs.', 'Students can use the information provided by this Web portal to monitor their assignments and improve their time management by having visualizations of factors such as time available to them to complete multiple assignments, clearly represented in real time over multiple classes.', '“Many fellow educators also expressed interest in using the timeline within their own classes”', 'Eleanor Fullick', 'home4.png', '3_hourclass_pic1_thumb.png', '3_hourclass_pic1.png', '3_hourclass_pic3.jpg', '3_hourclass_pic4.png'),
(5, 0, 'MYPATH', 'Medium Scale', 'Mypath is a Web portal for incoming college students, that will provide career information and guidance to select programs according to their needs.', 'Fall ', 2012, 'RIF Grant - Fanshawe College', 'Fanshawe College', 'fanshawe_cLogo.png', 'Fanshawe is a comprehensive community college serving the greater London region by providing flexible learning arrangements and experiential education opportunities developed in response to labour market needs.', 'The portal created a profile of activities and interests for each user through a series of questionnaires. Career paths were identified based on an evolving user profile, and featured curated content such as video interviews and featured alumni, all to improve program choice-making for students.', '“The development and applied research will focus on the construction of a Web portal application aimed at the incoming-student demographic that will increase in scope and features.\"', 'Robert Haaf, PI of MyPath', 'HOMEIMAGEOKAY.jpg', '5_mypath_pic3_thumb.png', '5_mypath_pic3.png', '5_mypath_pic2.png', '5_mypath_pic5.png'),
(9, 0, 'ONE LOVE', 'Small scale', 'Web site featuring dynamic HTML5 infographics, to enhance user education and experience with a novel framework being developed for charitable giving.', 'Winter ', 2014, 'VEB - OCE', 'One Love Network', 'onelove_cLogo.png', 'OneLove is pioneering a new approach to charitable giving, using digital media technologies. It offers a ‘points\' system focused on charitable donation, and offers a new way to manage donations in partnership with other companies.', 'With the team from OneLove, the Reactr team developed an overall concept and design for the OneLove Web framework, the \'look and feel\' and UI for the user \'dashboards\', the content and Web pages for the core site, and specific front-end functionality that included live JavaScript infographics.', '\"The Reactr program is an excellent addition to Fanshawe downtown. I appreciate everything the team at Reactr did for us. Excellent work and I look forward to working together again in the future.\"', 'Daniel Hines, from OneLove Network', '', '9_onelove_pic3_thumb.png', '9_onelove_pic3.png', '9_onelove_pic4.png', '9_onelove_pic1.png'),
(10, 0, 'REZGUIDE PHASE 1 ', 'Large Scale', 'Rezguide is a mobile application and Web portal to Improve communication and interaction between staff and Residence students in college environments.', 'Winter ', 2014, 'RIF Grant - Fanshawe College', 'Fanshawe College', 'fanshawe_cLogo.png', 'Fanshawe is a comprehensive community college serving the greater London region by providing flexible learning arrangements and experiential education opportunities developed in response to labour market needs.', 'RezGuide is a Web portal and mobile application designed to improve the interaction between residence staff and students, as well as offer a suite of tools to facilitate their orientation to the college environment, all of which will improve the student experience during their time in residence.', '\"Fanshawe team excelled on the development of the project and exceed by all means the expectations for the first phase of RezGuide.\"', 'Natalia Aguillon, PI of Rezguide', '', '6_rezguide_1_pic5_thumb.png', '6_rezguide_1_pic5.png', '6_rezguide_1_pic3.png', '6_rezguide_1_pic1.png'),
(11, 0, 'SNOWPLOW', 'Large scale', 'Developed a virtual 3D simulation system to test a new plow-blade design that uses a digital network to identify when the blade should be deployed. ', 'May', 2015, 'NSERC', 'Rolling Stone Technology Limited', 'placeholder_c_logo.jpg', 'Rolling Stone Technology Limited is a Woodstock Ontario company, in the process of designing a unique and innovative snowplow system. The engineer heading the company has numerous patents for industrial design.', 'Designed to be operated in conjunction with GPS data, this digitally-controlled snowplow blade system will identify obstacles such as driveways and avoid plowing in such areas. The interactive Unity application simulated the use of this blade with particle systems, compared to standard blades.', '\"RSTL recognizes that Reactr has the talent and the technology to deliver the required digital model. It marks the beginning of a new manufacturing outlet requiring skilled labour and a supply chain of high-tech parts.\"', 'Michael Andic, from RSTL', '', '15_snowplow_pic3_thumb.png', '15_snowplow_pic3.png', '15_snowplow_pic2.png', '15_snowplow_pic1.png'),
(12, 0, 'IGNITION', 'Large scale', 'Rich media tablet application that allowing sales personnel to present real-time information about car models, various option packages, and financing.', 'Winter', 2014, 'NSERC', 'London Honda', 'ignition_cLogo.png', 'Client is a London-based Honda dealer that offers the full line of new Honda vehicles and pre-owned vehicles. The dealership also offers on-site maintenance and repair with Honda certified and qualified technicians.', 'Utilizing rich media and a clean, graphically-driven and navigable interface, the application allowed automatic recalculation of costs as items were added/deleted based on pre-existing formulas, and allowed for real-time display of available financing and option packages for the customer.', '', '', '', '8_ignition_pic5_thumb.png', '8_ignition_pic5.png', '8_ignition_pic3.png', '8_ignition_pic4.png'),
(13, 0, 'MUSH', 'Small scale', 'Built a dynamic informational Web site and suite of customized business tools to meet the primary needs identified by this startup pet-care business.', 'Winter', 2015, 'OCE - VEB', 'Mush Pet Services', 'mush_cLogo.png', 'The company is a sole-proprietor pet sitting and dog walking business in London, re-branded as Mush by the Reactr team, with a complete set of logos and brand assets. The client needed a booking system to expand their business.', 'In addition to branding and logo design, a custom Web site for the business and a beta version of the Scheduling application was developed for the site. The Reactr team provided technical guidance in creating a Web site to effectively establish and grow the client’s business long term.', '\"The work I did in Reactr was more geared to what I was interested in, and pushed me to learn more about writing code faster…\"', 'Lucas Morrish, back-end developer', '', '13_mush_pic2_thumb.png', '13_mush_pic2.png', '13_mush_pic4.jpg', '13_mush_pic3.png'),
(14, 0, 'PHYTA PHASE 1', 'Small scale', 'Phyta is a rich-media Web framework designed to improve client education and learning experience around natural nutrition practices and practitioners.', 'Winter', 2014, 'VEB - OCE', 'Rove Media', 'phyta_cLogo.png', 'Rove Media is a company founded by a Fanshawe College graduate. They plan to integrate Web, digital media, and natural nutrition to develop a unique educational service for nutritionists to use with their clients daily. ', 'Design a rich-media Web framework for an ‘online community’ of clients and practitioners. Develop examples of online questionnaires and dynamic \'infographics\' through the portal, all designed to improve client education and learning within natural nutrition practices.', '\"I am quite satisfied with the output of work and feel it is of exceptional value… I am delighted that the students curated to work on my project received an enriched educational experience.”', 'Ashleigh Ross, from Rove Media', '', '7_phyta_1_pic1_thumb.png', '7_phyta_1_pic1.png', '7_phyta_1_pic4.png', '7_phyta_1_pic5.png'),
(15, 0, 'PHYTA PHASE 2', 'Small scale', 'Phyta is a rich-media Web framework designed to improve client education and learning experience around natural nutrition practices and practitioners.', 'Fall', 2014, 'VEB - OCE', 'Rove Media', 'phyta_cLogo.png', 'Rove Media is a company founded by a Fanshawe College graduate. They plan to integrate Web, digital media, and natural nutrition to develop a unique educational service for nutritionists to use with their clients daily. ', 'For the second phase of the project, the team developed an attractive front-end style with a strong back-end framework. The registration/signin process was streamlined. Once the applicant has been verified, they could view and edit their profiles, and search for natural nutritionists in their area.', '“Getting to work on real projects with clients gives us an insight into what it\'s like to be in the workplace, this motivates growth and responsibility; gaining experience and key skills”', 'Caitlyn O’Driscoll, developer', '', '12_phyta_2_pic1_thumb.png', '12_phyta_2_pic1.png', '12_phyta_2_pic2.jpg', '12_phyta_2_pic5.png'),
(16, 0, 'REZGUIDE PHASE 2', 'Large scale', 'Rezguide is a mobile application and Web portal to Improve communication and interaction between staff and Residence students in college environments.', 'Fall', 2014, 'Residence -  Fanshawe College', 'Fanshawe College', 'fanshawe_cLogo.png', 'Fanshawe is a comprehensive community college serving the greater London region by providing flexible learning arrangements and experiential education opportunities developed in response to labour market needs.', 'RezGuide was built using modern, open-source frameworks. The new features of this phase included a \'Buy and Sell\' system, an \'Events\' management feature with live calendars, and \'Hospitality\' information that allows students to immediately be in touch with each other and with Residence management.', '\"Working with Reactr really pushed me to find new ways to accomplish tasks outside of the structured requirements that the regular curriculum provided.”', 'David Krent, front-end developer', '', '10_rezguide_2_pic4_thumb.png', '10_rezguide_2_pic4.png', '10_rezguide_2_pic2.png', '10_rezguide_2_pic1.jpg'),
(17, 0, 'TOOLKIT PHASE 1', 'Large scale', 'Reactr worked with Tavares to develop a Web-based Sustainability Toolkit, to improve user experience, data collection, data organization and analysis.', 'Fall', 2014, 'NSERC', 'Tavares Group Consulting', 'toolkit_p1_cLogo.png', 'Tavares Group Consulting is a corporate social responsibility firm, specializing in environmental and health & safety (EHS) management systems, training and communications.', 'The Reactr team developed the prototype of version of the Web-based Toolkit framework. The Toolkit needed to be developed to an extent before it can be used in a comparative study, the major focus of phase one of this project was to design, develop and build an ‘alpha’ version of the framework.', '\"Amazing experience. I got to learn all sorts of new things above and beyond the standard curriculum, while developing new connections.\"', 'Christopher Robins, Front- and Back-end developer', '', '11_toolkit_1_pic3_thumb.png', '11_toolkit_1_pic3.png', '11_toolkit_1_pic4.jpg', '11_toolkit_1_pic5.png'),
(18, 0, 'EPLANNER', 'Small scale', 'Cloud-based Web platform that provided any user with curated information and important data management tools for Estate Executor processes.', 'Fall', 2014, 'VEB - OCE', 'Executor Planner Inc.', 'planner_cLogo.png', 'Executor Planner Inc. is a small company in London, Ontario that has envisioned a comprehensive guide and suite of paper-based planning tools that lay consumers can use to independently collect, organize and manage Executor data.', 'E.Planner is an easy-to-follow web-based program that records and saves important estate information into a digital repository. Users will purchase the product online on a subscription basis, and have access to forms, checklists, contact information and other details critical to estate planning.', '\"I learned a lot of extra skills as a result of being part of Reactr, and I think they are skills that put me ahead of my classmates significantly.\"', 'Asha Ramji, Front-end developer', '', '18_eplanner_pic5_thumb.png', '18_eplanner_pic5.png', '18_eplanner_pic2.jpg', '18_eplanner_pic6.png'),
(19, 0, 'PRAKTIK PHASE 1', 'Large scale', 'Praktik is an interactive, rich media digital learning tool created for online use by college students in Nursing and Health Sciences programs. ', 'Fall', 2015, 'RIF - Fanshawe College', 'Fanshawe College', 'fanshawe_cLogo.png', 'Fanshawe is a comprehensive community college serving the greater London region by providing flexible learning arrangements and experiential education opportunities developed in response to labour market needs.', 'In collaboration with the School of Nursing, the Reactr team designed, developed and evaluated a Web framework for digital content, and an initial simulation module for measurement of vital signs. The module topics are maximally relevant to a broad range of students in health sciences programs.', '\"I felt the work I was doing was more valuable than just doing course work, and that I was getting other valuable experience like presenting to clients that is not necessarily included in course work.\"', 'Kevin Greenspan, Designer', '', '19_praktik_1_pic1_thumb.png', '19_praktik_1_pic1.png', '19_praktik_1_pic4.png', '19_praktik_1_pic2.png'),
(20, 0, 'WEDDINGS PHASE 1', 'Small scale', 'Design and development of a wedding-planning portal, including social media features, business listings, in-app communication, and content management.', 'Fall', 2015, 'RIF - Fanshawe College', 'My Wedding Ontario', 'weddings_p1_cLogo.png', 'My Wedding Ontario is a small startup company based in Barrie, Ontario. They offer brides centralized access to vendors of various wedding services, and wished to expand the communication and content features of the site.', 'A Web back-end (database and code) was developed to allow for management of vendor and bride data, user communications in-site, ratings/comments, and other features. A complete re-design and branding solution was developed along with required front-end Web functionality through forms and email.', '\"It placed me in a work environment with more structure, tighter deadlines for specific tasks, and more group work. It gives more of an workplace experience.”', 'Melissa Lambert, developer', '', '17_weddings_1_pic3_thumb.png', '17_weddings_1_pic3.png', '17_weddings_1_pic2.jpg', '17_weddings_1_pic1.jpg'),
(21, 0, 'REZGUIDE PHASE 3', 'Large scale', 'The application offers interactive, animated directional guides to help students locate their classes, as well as other important College services.', 'Fall', 2015, 'Residence - Fanshawe College', 'Fanshawe College', 'fanshawe_cLogo.png', 'Fanshawe is a comprehensive community college serving the greater London region by providing flexible learning arrangements and experiential education opportunities developed in response to labour market needs.', 'Mobile application screens were built using to add notification settings for the calendar integration, and allowed information to be sent to and from residence, and allow students to upload images. The CMS included additional features such as coupons, offers, directory and real-time chat features.', '\"I had a great experience working with Reactr. Natalia and Rob do an excellent job managing all of the projects. They really pushed me to develop out of my comfort zone, which has helped me grow as a web developer.”', 'Matthew Walcher, developer', '', '14_rezguide_3_pic4_thumb.png', '14_rezguide_3_pic4.png', '14_rezguide_3_pic3.png', '14_rezguide_3_pic2.png'),
(22, 0, 'JUNK REMOVAL', 'Small scale', 'The goal of the project was to design and build a modern, professional Web site which would allow the company to establish their online presence.', 'Winter', 2016, 'VEB - OCE', 'Alchemy Junk', 'junkR_cLogo.jpg', 'Alchemy Junk is a sustainable junk removal service company based in London, which focuses on environmental solutions for junk removal and disposal, through the utilization of sustainable methods such as upcycling and recycling.', 'The Reactr team provided branding, front-end Web design, and back-end framework development to allow dynamic content and scalability of the site. Emphasis placed on visual aesthetics and implementation of interactive elements, to trigger a surge in traffic and expanded their reach to the community.', '\"Reactr provided me a way to work in an environment with concepts and content more suited for developing in the industry world, which is helpful for a job. As well, the experience of working with a client.”', 'Joanna Chan, Back-end developer', '', '20_junkremoval_pic4_thumb.png', '20_junkremoval_pic4.png', '20_junkremoval_pic2.jpg', '20_junkremoval_pic2.jpg'),
(23, 0, 'TRUCKLADDERS PHASE 1', 'Small scale', 'The Reactr Team assisted with the company branding, design and development of a service-based Web site for TruckLadders, a London-area small business.', 'Winter', 2016, 'VEB - OCE', 'Truckladders', 'truckL_cLogo.jpg', 'Truckladders is a family owned and operated company. They have built and patented small Class 8 ladders that are built for pickup trucks. Products are proudly built in London Ontario Canada and designed to keep truckers safe.', 'The project included: Designing the brand, developing a responsive website, designing UI features, building a secure area for business-to-business interactions, implementing an interactive product catalog, and building a content management system to allow for client content development over time.', '\"Working with REACTR opened new doors, I meet very talented individuals, and it has helped me learn and grow tremendously. It\'s was an honour to have been chosen to work with REACTR.”', 'Jessica Pesant-Simpson', '', '21_truckladders_1_pic3_thumb.png', '21_truckladders_1_pic3.png', '21_truckladders_1_pic6.png', '21_truckladders_1_pic4.png'),
(24, 0, 'WEDDINGS PHASE 2', 'Small scale', 'Design and development of a wedding-planning portal, including social media features, business listings, in-app communication, and content management.', 'Winter', 2016, 'RIF - Fanshawe College / Company', 'My Wedding Ontario', 'weddings_p1_cLogo.png', 'My Wedding Ontario is a small startup company based in Barrie, Ontario. They offer brides centralized access to vendors of various wedding services, and wished to expand the communication and content features of the site.', 'Continuing the development of the multi-function Web site constructed in Phase 1, the Reactr team continued to add functionality such as bulk emailing, Pinterest-like ‘wish board’ features, and customizable image galleries for vendors and brides using the site.', '\"I got experience working with code I wouldn\'t have been interested in otherwise, which has lead to me finding job opportunities outside of Fanshawe College.\"', 'Alex Stegmann, Back-end developer', '', '25_weddings_2_pic2_thumb.png', '25_weddings_2_pic2.png', '25_weddings_2_pic5.png', '25_weddings_2_pic4.png'),
(25, 0, 'PRAKTIK PHASE 2', 'Large scale', 'Praktik is an interactive, rich media digital learning tool created for online use by college students in Nursing and Health Sciences programs.', 'Summer', 2016, 'RIF - Fanshawe College', 'Fanshawe College', 'fanshawe_cLogo.png', 'Fanshawe is a comprehensive college serving the greater London region by providing flexible learning arrangements and experiential education opportunities developed in response to labour market needs.', 'This phase extended the work begun in Phase 1 adding a number of interactive elements into the first module, including chapter organization and interstitial quizzes. Interactive simulation, alongside more traditional evaluation methods, will provide students with better integrated learning tools.', '\"Good experience, got to use assets I\'ve had little to no experience with. But was great to learn how to use them. Worked great with teammates and kept up to date with work.\"', 'Alex Wong, 3D designer', '', '23_praktik_2_pic1_thumb.png', '23_praktik_2_pic1.png', '23_praktik_2_pic4.png', '23_praktik_2_pic3.png'),
(26, 0, 'TOOLKIT PHASE 2', 'Large scale', 'Continued development of a Web framework for the Sustainability Toolkit, in use by Tavares for sustainability consultation with client companies.', 'Fall', 2015, 'RIF - Fanshawe College', 'Tavares Group Consulting', 'toolkit_p1_cLogo.png', 'Tavares Group Consulting is a corporate social responsibility firm, specializing in environmental and health & safety (EHS) management systems, training and communications.', 'Planning and design of the ‘suite’ of data visualizations available to Tavares clients through the Toolkit; ensuring that informational ‘best practices’ are followed in data analysis, summary and presentation, and that the summary measures and visualizations accurately reflect the needs of users.', '\"It was a great experience working on projects with real clients, as well as a great way to learn new things.\"', 'Serena Teng, Front-End developer', '', '16_toolkit_2_pic3_thumb.png', '16_toolkit_2_pic3.png', '16_toolkit_2_pic1.png', '16_toolkit_2_pic4.png'),
(27, 0, 'DRINKY', 'Small scale', 'Development of a Web-based portal offering mail-order sales of wine, beer and other alcoholic beverages not available in local LCBO stores.', 'Winter', 2016, 'VEB - OCE', 'Drinky', 'drinky_cLogo.jpg', 'Drinky is a family-run, Canadian small business. The owners are entrepreneurs, industry experts and have extensive experience with different alcohol suppliers in Ontario.', 'The primary goal for this project was design of a professional user interface, delivered through a clean and modern site design. The re-brand of the Drinky website allowed for a more consistent organization of information and images, resulting in an easier to use and more appealing website.', '“It really helped me learn to think more critically of my own work, and helped me to set higher standards for my own work quality.\"', 'Nicholas Ireland, Designer', '', '22_drinky_pic3_thumb.png', '22_drinky_pic3.png', '22_drinky_pic5.png', '22_drinky_pic4.png'),
(29, 0, 'HEAT TREATMENT', 'Small scale', 'Design, re-brand and develop an informational Web site for an established London company that requires an increased online profile for their business.', 'Fall', 2016, 'VEB - OCE', 'Bayson Heat Treatment', 'heatT_cLogo.png', 'Bayson Heat Treatment, a London, Ontario based company of long standing, provides services such as heat treatment and metal hardening to a large customer base in Southwestern Ontario.', 'Working with the team at Bayson, the Reactr team developed branding and graphic design assets for the company to use in all areas, a modern, professional Web site design, and development of a content-manageable custom site for the business to reach a wider market.', '“The experience was great. Learning experience was invaluable and definitely helped me in my PHP related classes.”', ' Lauren Koza, Back-end developer', '', '24_heattreatment_picA_thumb.png', '24_heattreatment_picA.png', '24_heattreatment_pic4.png', '24_heattreatment_pic2.png'),
(30, 1, 'IECS', 'Large scale', 'The Cable Concrete Calculator is a custom tool in a Web framework, to assist engineers in planning material purchases for water flow control projects.', 'Fall', 2016, 'VIP 1 - OCE', 'International Erosion Control Systems', 'iecs_cLogo.png', 'International Erosion Control Systems (IECS) is company that specializes in a customized concrete-block system for developing and implementing flow and erosion control solutions for civic engineers worldwide.', 'The Cable Concrete Calculator was designed to make it easier for engineers who are interested in IECS products to get estimates that adhere to established safety factors. The Web version of the tool also enables IECS to manage and view their current client estimates and to contact them directly.', '“I had a great experience and hope to continue a strong relationship with everyone involved in the Reactr program!”', 'Greg Arvai, from IECS', '26_erosionControl_1_pic4_home.jpg', '26_erosioncontrol_1_pic5_thumb.png', '26_erosioncontrol_1_pic5.png', '26_erosioncontrol_1_pic4.png', '26_erosioncontrol_1_picA.png'),
(31, 0, 'TRUCKLADDERS PHASE 2 ', 'Small scale', 'The Reactr Team assisted with the company branding, design and development of a service-based Web site for TruckLadders, a London-area small business.', 'Fall', 2016, 'RIF - Fanshawe College', 'Truckladders', 'truckL_cLogo.jpg', 'Truckladders is a family owned and operated company. They have built and patented small Class 8 ladders that are built for pickup trucks. Products are proudly built in London Ontario Canada and designed to keep truckers safe.', 'After Phase 1 was complete, the company approached Reactr for additional required work to expand their business, namely to expand the core site to include catalog and sales options for ladders designed for ‘personal use’ truck drivers, in addition to the commercial drivers already being targeted.', '“I would really like the opportunity to work with Rob and Natalia and the students I feel it would be great learning experience to see it unfold in a professional manner.”', 'Jeff Pitman, from TruckLadders', '', '27_truckladders_2_pic4_thumb.png', '27_truckladders_2_pic4.png', '27_truckladders_2_pic5.png', '27_truckladders_2_pic5.png'),
(32, 1, 'HEFF’S HIVES', 'Small scale', 'Branding, design and development of a modern Web site that will allow the London-based client partner to establish a professional Web profile.', 'Winter', 2017, 'VEB - OCE', 'Heff’s Hives', 'heffshives_cLogo.png', 'Heff’s Hives objective is to educate people about the importance of bee guardianship, and to help others begin beekeeping without typical barriers and startup costs. The company also rents beehives, and sells honey locally.', 'The primary goals of the site are to educate prospective beekeepers, promote the ideals of bee guardianship, and to highlight Heff’s Hives’ primary services and products. The content for the site was streamlined so that the most essential parts of their services were efficiently communicated.', '“I consider this experience essential. Nothing in the regular curriculum comes close to the feeling of watching a fully realized client project grow through a semester. RID experience was a huge motivator as well.”', 'Johann Ting, Designer', '28_bees_pic3_home.jpg', '28_bees_pic5_thumb.png', '28_bees_pic5.png', '28_bees_pic2.png', '28_bees_pic6.png'),
(33, 1, 'FOREST CITY CAKES', 'Small scale', 'Branding, design and development of a modern Web site that will allow the London-based client partner to establish a professional Web profile.', 'Winter', 2017, 'VEB - OCE', 'Forest City Cakes', 'fcc_cLogo.png', 'Forest City Cakes is a bakery that creates small-batch artisan cupcakes and cakes. They wanted to upgrade their online approach to better meet demand and ensure that their customers knew when and where to get their products.', 'Branding, design and development of a modern, feature-rich Web site for a London-based client partner with no brick-and-mortar location. Core site needed to establish their online presence, increase awareness and thereby allow them to potentially expand their current business opportunities.', '“We really enjoyed working with Reactr and watching our site come to life. Everyone involved was a pleasure to work with. Both Alicia and Amanda did an amazing job.”', 'Lisa Dinoff of Forest City Cakes', '29_cupcakes_pic3_home.jpg', '29_cupcakes_pic1_thumb.png', '29_cupcakes_pic1.png', '29_cupcakes_pic6.png', '29_cupcakes_pic7.png'),
(34, 1, 'HR DOWNLOADS', 'Large scale', 'Development of several core HR modules (for time management activities), to fully integrate with the software HR tools already offered by the company.', 'Fall', 2017, 'NSERC', 'HR Downloads', 'hrd_cLogo.png', 'HRDownloads was founded in London, Ontario in 2008, and since then has become a leader in the development of fully digital, online, practical human resources software solutions for business owners and HR professionals.', 'Development of complex time-management and tracking software modules, with input and feedback from the HRDownloads team. Development has to adhere to existing workflow practices at the company, and be able to be fully integrated with their existing cloud services by developers from HRDownloads.', '“Natalia and all the profs who help with the projects are amazing! I know I speak for all the students when I say thank you to everyone who makes Reactr possible and we all owe at least some of our future success to them.”', 'Ryan White, designer and front-end dev', '30_hrd_pic1_home.jpg', '30_hrd_pic6_thumb.png', '30_hrd_pic6.png', '30_hrd_pic3.png', '30_hrd_pic5.png'),
(35, 1, 'JE BEARING PHASE 1', 'Large scale', 'Development of a new, tablet-based information and communication framework used on the shop floor, as existing procedures are impacting productivity.', 'Winter', 2017, 'NSERC', 'JE Bearing', 'jeb_cLogo.png', 'JE Bearing is a machine shop committed to providing bearings, power transmission supplies, maintenance and precision machining services, with the aim of exceeding customer’s expectations for cost, quality, and delivery.', 'In consultation with the company partner, the Reactor team designed a tablet-based Web framework that allowed creation of manufacturing process documentation by operators on the floor, email-based communication between operators and managers, and general information feeds directly to workstations.', '“I learned far more doing this project than I would have just doing the regular program. Working several hours a week allowed me to continuously practice with the new tools which allowed me to get comfortable faster.”', 'Clara Marshall, Designer', '31_jeb_1_pic2_home.jpg', '31_jeb_1_pic1_thumb.png', '31_jeb_1_pic1.png', '31_jeb_1_pic4.png', '31_jeb_1_pic3.png'),
(36, 0, 'TEAM CANADA', 'Small scale', 'Development of an informational Web site to provide historical information, event details etc., in a way that makes it accessible to a wide user base.', 'Winter', 2018, 'FRF - Fanshawe College', 'Team Canada', 'placeholder_c_logo.jpg', 'Team Canada is an organization composed of former players, professionals and fans, that is dedicated to preserving and communicating Team Canada’s history and significance to Canadians through various media channels and events.', 'The first design phase for this agency was completed as part of an Interactive Media Design (IDP) course; this second phase involved a single dedicated team to complete back-end development and additional functionality for the Web site, as well as arrange Web hosting and setup for the agency.', '', '', '', '32_teamcanada_pic3_thumb.png', '32_teamcanada_pic3.png', '32_teamcanada_pic2.jpg', '32_teamcanada_pic4.png'),
(37, 1, 'DENTAL STRATEGY ', 'Large scale', 'Development of a custom learning management system, marketed to dental practices as a complete solution for office management and staff training.', 'Winter', 2018, 'NSERC', 'Dental Strategy', 'dentalstrategy_cLogo.png', 'Dental Strategy helps Canadian dentists make informed and effective business decisions: Finding the right location, finding the right practice to purchase, setting up, hiring, effectively marketing or selling a practice.  \r\n', 'The Reactr team built a customized learning management framework to replace the wiki currently in place, with the ability to build media-rich lessons, quiz materials, etc., accessible through search. The framework includes usage tracking for all modules, sign-in and authentication features.', '\"I would say Reactr greatly influenced my ability to achieve my current position. I also wouldn\'t have gotten the opportunity to do the group interviews with Northern if it wasn\'t for Rob and the Reactr program.”', 'Nicholas Lediet, back-end developer', '33_dentalStrategy_1_pic3_home.jpg', '33_dentalstrategy_1_pic4_thumb.png', '33_dentalstrategy_1_pic4.png', '33_dentalstrategy_1_pic2.png', '33_dentalstrategy_1_pic1.png'),
(38, 0, 'LEDC PHASE 1', 'Small scale', 'Development of a Web-based ‘Scavenger Hunt’ application designed to familiarize students new to London with the city, its features and its history.', 'Summer', 2018, 'Company Partner', 'The London Economic Development Corporation ', 'ledc_cLogo.png', 'The LEDC is the lead economic development agency for London, Ontario and works with business, government and community partners to attract investment, develop a connected business climate and grow London\'s talented workforce. ', 'The Reactr team developed the database, server-side functionality and the responsive Web pages needed to allow student teams to register and complete scavenger hunt activities using smartphones. The site allows for user tracking and basic content management for LEDC admins to monitor usage.', '“Absolutely amazing opportunities to learn, technologies, client experience, and invaluable mentorship from the staff. I have never felt so supported and guided in my education. This experience has been truly life-changing.\"', 'Natalie Mastracci, Back-end Dev', '', '34_ledc_pic1_thumb.png', '34_ledc_pic1.png', '34_ledc_pic3.png', '34_ledc_pic4.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_proj_st`
--

DROP TABLE IF EXISTS `tbl_proj_st`;
CREATE TABLE IF NOT EXISTS `tbl_proj_st` (
  `proj_st_id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT,
  `project_id` smallint(4) NOT NULL,
  `st_team_id` smallint(4) NOT NULL,
  PRIMARY KEY (`proj_st_id`)
) ENGINE=InnoDB AUTO_INCREMENT=269 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_proj_st`
--

INSERT INTO `tbl_proj_st` (`proj_st_id`, `project_id`, `st_team_id`) VALUES
(1, 1, 8),
(2, 1, 9),
(3, 1, 10),
(4, 2, 1),
(5, 2, 2),
(6, 2, 3),
(11, 4, 11),
(12, 4, 12),
(13, 4, 13),
(82, 5, 21),
(83, 5, 5),
(84, 6, 22),
(85, 7, 22),
(87, 8, 23),
(89, 8, 25),
(90, 8, 26),
(91, 8, 27),
(95, 9, 37),
(96, 9, 38),
(97, 9, 39),
(106, 12, 29),
(107, 12, 30),
(108, 12, 31),
(109, 12, 32),
(115, 13, 46),
(116, 13, 47),
(117, 14, 34),
(118, 14, 33),
(119, 14, 35),
(120, 14, 36),
(121, 10, 43),
(122, 10, 41),
(123, 10, 42),
(125, 11, 44),
(127, 15, 48),
(128, 15, 49),
(129, 16, 43),
(130, 16, 41),
(131, 16, 50),
(132, 16, 51),
(133, 17, 99),
(134, 18, 101),
(135, 18, 100),
(136, 19, 55),
(137, 19, 56),
(139, 20, 58),
(140, 20, 59),
(141, 21, 60),
(142, 22, 62),
(143, 22, 61),
(144, 23, 60),
(145, 23, 101),
(146, 24, 58),
(147, 24, 59),
(148, 25, 55),
(149, 25, 56),
(151, 25, 63),
(152, 26, 52),
(153, 26, 54),
(154, 26, 64),
(155, 27, 65),
(156, 10, 40),
(157, 8, 24),
(159, 19, 57),
(169, 27, 71),
(170, 27, 72),
(173, 29, 87),
(174, 29, 81),
(175, 30, 86),
(176, 30, 65),
(177, 30, 74),
(178, 31, 88),
(179, 31, 77),
(180, 32, 81),
(181, 32, 80),
(182, 32, 89),
(183, 33, 77),
(184, 33, 76),
(185, 34, 83),
(186, 34, 102),
(187, 34, 85),
(188, 35, 79),
(189, 35, 78),
(190, 35, 82),
(191, 36, 90),
(192, 36, 91),
(193, 36, 92),
(194, 36, 93),
(195, 36, 94),
(196, 37, 84),
(197, 37, 75),
(198, 37, 95),
(199, 37, 90),
(200, 38, 96),
(201, 38, 97),
(202, 54, 1),
(203, 54, 1),
(204, 54, 1),
(205, 54, 1),
(206, 55, 5),
(207, 55, 11),
(208, 56, 23),
(209, 56, 24),
(210, 56, 90),
(264, 3, 4),
(265, 3, 98),
(266, 3, 6),
(267, 3, 7),
(268, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_proj_tech`
--

DROP TABLE IF EXISTS `tbl_proj_tech`;
CREATE TABLE IF NOT EXISTS `tbl_proj_tech` (
  `proj_tech_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `tech_id` int(11) NOT NULL,
  PRIMARY KEY (`proj_tech_id`)
) ENGINE=MyISAM AUTO_INCREMENT=253 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_proj_tech`
--

INSERT INTO `tbl_proj_tech` (`proj_tech_id`, `project_id`, `tech_id`) VALUES
(6, 1, 7),
(7, 4, 1),
(8, 4, 2),
(9, 4, 3),
(10, 4, 4),
(11, 2, 1),
(12, 2, 2),
(13, 2, 3),
(14, 2, 4),
(15, 10, 1),
(16, 10, 2),
(17, 10, 3),
(18, 10, 9),
(19, 10, 4),
(20, 14, 1),
(21, 14, 2),
(22, 14, 3),
(23, 14, 4),
(24, 12, 1),
(25, 12, 2),
(26, 12, 3),
(27, 12, 4),
(28, 9, 1),
(29, 9, 2),
(30, 9, 3),
(31, 16, 1),
(32, 16, 2),
(33, 16, 3),
(34, 16, 4),
(36, 17, 1),
(37, 17, 2),
(38, 17, 3),
(39, 17, 4),
(181, 22, 9),
(41, 15, 1),
(42, 15, 2),
(43, 15, 3),
(44, 15, 4),
(46, 11, 7),
(47, 11, 10),
(48, 11, 3),
(49, 11, 4),
(50, 12, 9),
(51, 13, 9),
(52, 1, 3),
(53, 2, 9),
(54, 14, 9),
(55, 15, 9),
(56, 16, 9),
(57, 17, 9),
(58, 21, 9),
(59, 26, 9),
(60, 20, 9),
(61, 18, 1),
(62, 18, 2),
(63, 18, 3),
(64, 18, 4),
(65, 18, 9),
(66, 19, 7),
(67, 19, 11),
(68, 19, 3),
(69, 19, 4),
(70, 20, 1),
(71, 20, 2),
(72, 20, 3),
(73, 20, 4),
(74, 21, 1),
(75, 21, 2),
(76, 21, 3),
(77, 21, 4),
(78, 22, 1),
(79, 22, 2),
(80, 22, 3),
(81, 22, 4),
(82, 23, 1),
(83, 23, 2),
(84, 23, 3),
(85, 23, 4),
(86, 23, 9),
(87, 24, 1),
(88, 24, 2),
(89, 24, 3),
(90, 24, 4),
(91, 24, 9),
(92, 25, 7),
(93, 25, 11),
(94, 25, 3),
(95, 25, 4),
(104, 27, 1),
(103, 26, 4),
(102, 26, 3),
(101, 26, 2),
(100, 26, 1),
(105, 27, 2),
(106, 27, 3),
(107, 27, 4),
(108, 27, 9),
(109, 29, 1),
(110, 29, 2),
(111, 29, 3),
(112, 29, 4),
(113, 29, 9),
(114, 30, 1),
(115, 30, 2),
(116, 30, 3),
(117, 30, 4),
(118, 30, 9),
(119, 31, 1),
(120, 31, 2),
(121, 31, 3),
(122, 31, 4),
(123, 31, 9),
(124, 32, 1),
(125, 32, 2),
(126, 32, 3),
(127, 32, 4),
(128, 32, 9),
(129, 33, 1),
(130, 33, 2),
(131, 33, 3),
(132, 33, 4),
(133, 33, 9),
(134, 34, 1),
(135, 34, 2),
(136, 34, 3),
(137, 34, 4),
(138, 34, 9),
(139, 35, 1),
(140, 35, 2),
(141, 35, 3),
(142, 35, 4),
(143, 35, 9),
(144, 36, 1),
(145, 36, 2),
(146, 36, 3),
(147, 36, 4),
(148, 36, 9),
(149, 37, 1),
(150, 37, 2),
(151, 37, 3),
(152, 37, 4),
(153, 37, 9),
(154, 38, 1),
(155, 38, 2),
(156, 38, 3),
(157, 38, 4),
(158, 38, 9),
(164, 55, 1),
(165, 55, 4),
(166, 55, 8),
(167, 56, 1),
(168, 56, 5),
(169, 56, 9),
(170, 5, 1),
(171, 5, 2),
(172, 5, 3),
(173, 5, 12),
(174, 5, 13),
(175, 5, 14),
(176, 9, 4),
(177, 13, 1),
(178, 13, 2),
(179, 13, 3),
(180, 13, 4),
(251, 3, 6),
(250, 3, 4),
(249, 3, 3),
(248, 3, 2),
(247, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_session`
--

DROP TABLE IF EXISTS `tbl_session`;
CREATE TABLE IF NOT EXISTS `tbl_session` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_session`
--

INSERT INTO `tbl_session` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('02e551659bf59f8ecef5fb23b9f654c5376d286b', '::1', 1467601490, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373630313232313b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('02fe0be8780b296b32079574967d64920c3d2854', '::1', 1467290179, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373238393838353b),
('03f49775ca5b2968c859fd6162a59eef9f65ef61', '::1', 1467607207, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373630373035333b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('04c5b4a5d0491b355826bc7a7f3441bd2dce96ce', '::1', 1467123835, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373132333738353b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('060e7fb64a4810dc66690f707b9e83cf19396a11', '::1', 1467214575, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373231343332393b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('06652b3ff689adfb05f8aa83624e4233d03e5944', '::1', 1467136011, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373133353733323b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('07591a2667d57fe09507ffd3eacfd046f79b7ac9', '::1', 1467638131, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373633373939353b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a343b),
('086c8cd4052fd08a3303c1947867aaf2723cef2e', '::1', 1467652706, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373635323535363b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a343b),
('08e7abdf7b62e23473efd007da8c8c22f9fd49be', '::1', 1467127348, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373132373038373b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('096de4ae9732bbc584f7c0906bbb28ece51138c5', '::1', 1467315085, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373331343738383b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('0a105b17934da135b64836c290871b782c11c6df', '::1', 1467213893, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373231333636303b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('0e0aec8ccf072b188caa81db9dc09fa583a7e3b2', '::1', 1467606903, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373630363639303b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('0ea5c31dcc388141c7f38d46fd814e14470c6e61', '::1', 1467608309, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373630383031323b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('10a82757a2343c3cc556cee6c9031dffdd81bf21', '::1', 1467602991, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373630323732313b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('1110465ac65288ffb541b6c8bdfa1cd48576cc50', '::1', 1467140321, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373134303136313b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('1153cf866addbedd91851d19d9388a300644654c', '::1', 1467215369, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373231353131333b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('16c020219a1a720c3c6a050643c25526579b2834', '::1', 1467209652, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373230393434383b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('1878680acd402dd2bf46843c2a37a14230caa226', '::1', 1467289766, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373238393536303b),
('1890a56d3deb61d601ee519205f3bb55fbdfc36b', '::1', 1467314326, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373331343034373b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('1ebc3aa2409b657f859bf91e8adb4342d3888d0e', '::1', 1467655238, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373635343937383b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a343b),
('1fd16a33c1b8f80c0f1565b2b3ddb0a62ab4ef67', '::1', 1467640978, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373634303637383b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a353b),
('21ecdc4a39a9afdc2d20eb1b228634dcb9a0489b', '::1', 1467634646, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373633343631313b),
('22a218405a302c9abd0f31057f43870f83dd9756', '::1', 1467291806, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373239313536383b),
('22b8ab80d342ffd591f5e15cbb568a5529e164a8', '::1', 1467207705, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373230373539373b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('25559d55bda58d17319c126a46821aca5d493b0d', '::1', 1467125458, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373132353233383b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('2655739c03957ead3c98cca3ebb58e6dc240ab8d', '::1', 1467144063, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373134333838383b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('2a58623d880099e30bbde46caaf469f9d70f273d', '::1', 1467317751, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373331373732333b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('2a93e4041611f51b8dd3de7398342b6f2d6cd338', '::1', 1467142775, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373134323537303b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('2b681d880f95f069febcea044c6451f87700c66d', '::1', 1467605880, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373630353732303b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('2c1eefcdb3b1fc3da6aff2476d7708824c20da02', '::1', 1467311642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373331313339383b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('2c9c8dbc210f7f746dbe0ac9c6d97efe4f36905b', '::1', 1467608939, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373630383635313b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('2d8a4c6264213ab3a7c82766bad9b0c50c552b4d', '::1', 1467221892, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373232313631333b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('2dedc7730aa8b3f1ff82d0ad36c8dffcc9c87525', '::1', 1467292077, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373239313839303b),
('2e0f12df1c59f9a8c02c6bd48a1a78c77fa8f2d9', '::1', 1467600679, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373630303339353b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('339246ffe76a0474cb9bfc47f5954b5f22ef1ba4', '::1', 1467640381, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373634303237363b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a353b),
('33abd58143ad72e0c2a29661dcc324b009481a60', '::1', 1467604384, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373630343039323b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('344236c8d6d0b083f77fe45bc956d53cabb17ae4', '::1', 1467606646, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373630363335353b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('3834aa834acda4915e372296ba27dbcaebc32a57', '::1', 1467222280, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373232323235373b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('385573474de90b9dbc833ff54bca60021d6e2ab8', '::1', 1467228345, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373232383334353b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('386d2750f4910e22ff19f0eec268a585bfb7f268', '::1', 1467312252, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373331323033343b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('38edc3879b3ed798619b6af345d7c75510cc3efc', '::1', 1467310406, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373331303130383b),
('3a24e5daf68db8e3297802ec0f3a556c07616aea', '::1', 1467230217, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373232393931393b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('3a3fb14ab58b7c3d5954841a180db51c7d55fca3', '::1', 1467127885, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373132373731353b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('3acc38b8b0a176be7b0c2cef28b09716bdc1d102', '::1', 1467202578, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373230323537313b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('3b92bf08b38d5527acbce722235d9e9f944e74a9', '::1', 1467311347, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373331313036303b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('3c9850d6fe6f26439cfb92a8afbdd8fc22f647c6', '::1', 1467226798, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373232363631343b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('3ce10791e8daeb5994a9b9e4915c9931f1f35005', '::1', 1467127620, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373132373430373b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('3f04992784e36b0cd4f28b637cbe93a81bf72b1a', '::1', 1467656003, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373635353731323b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a343b),
('3f477fbd07dbe348623b5878e6d595f7b08d4fee', '::1', 1467204854, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373230343734373b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('401f923e5026d032c536dc3337533d639c5008e6', '::1', 1467636270, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373633353938363b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a343b),
('403e6714ade6497f7ac3fc04631136279814b889', '::1', 1467231107, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373233303834303b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('41825dd3214d22789ba2eed4993ed9f77cdf8bc0', '::1', 1467642822, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373634323538383b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a353b),
('41deff2a444569bfcd0a22241e409f11252ad7a0', '::1', 1467655684, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373635353430303b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a343b),
('427da6752e11c4e2744835232b3d7ea48dffb27b', '::1', 1467605305, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373630353034303b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('42dd21029f28069c815483ca43b6bc9fc5027acf', '::1', 1467639114, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373633383832353b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a343b),
('43b5fb1cbcad46b8a8dd0faf4f419d74d7a9a194', '::1', 1467643392, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373634333239323b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a353b),
('4427900325845e470502ee816b1fe76b8604a467', '::1', 1467644779, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373634343630353b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a353b),
('46ff4b1afa9ebf4a47ca75bc5eb1966a1115147f', '::1', 1467643015, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373634323937373b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a353b),
('477c3b93604dd0ee8f33f27cd7662a3de490c9ab', '::1', 1467602366, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373630323130333b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('48642d96fd8141b08afe019ffa646f3557018b33', '::1', 1467124302, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373132343131383b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('49110966502294439e814657e602c821705bd18a', '::1', 1467143499, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373134333238323b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('491ba352f20bd33d2db3c60cfdc3855e1302639e', '::1', 1467141842, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373134313536343b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('4b2874eaf6e74de15a092e6c2b22508c3e8c2079', '::1', 1467647174, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373634363930323b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a353b),
('4e1bed8e5402154d53a655942805c2fcf50dfcae', '::1', 1467142134, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373134313836383b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('528348e31f9314b8fa745735862ff3d7854e8ca4', '::1', 1467315697, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373331353433323b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('535396be4ea099e9ab6d93f08fb80e93935698b4', '::1', 1467227700, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373232373534363b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('54e4b284ddcba24cb36f5b2b384421e4e0dca2cd', '::1', 1467126922, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373132363638323b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('55d426ae7ec3ecf3c9331b983dbe43e9f5d69270', '::1', 1467143853, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373134333538363b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('5633624d99bdf0a1f06fe35c3f391db367408d86', '::1', 1467645685, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373634353632333b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a353b),
('5875543c4fcc9ff43f3737620bc9d7b01eb5080f', '::1', 1467309378, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373330393138333b),
('59e1aca3fc953a713d1bd61e3b6945640a7fde83', '::1', 1467641894, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373634313630373b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a353b),
('5b1d522a664ab6ae3db4e0e78e64384f98fc827c', '::1', 1467126408, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373132363338303b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('5b966e2445fe479b2988271c991db62bd4e4b385', '::1', 1467604710, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373630343431393b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('5defdec6ef3b7fa0e21ed811279f8569797ec10c', '::1', 1467203622, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373230333435353b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('5f0f046ddd5cf71c456d10bb92fd3eb13fbf759f', '::1', 1467606348, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373630363034393b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('5f61a9ce3daf0b306b945429aa3851cc220920f3', '::1', 1467648091, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373634373838393b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a343b),
('603c72530249165a4c0738380ef23a950580dbca', '::1', 1467316724, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373331363432373b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('6176e40d57fc09b4389c5de0ce1153350a23dc07', '::1', 1467138115, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373133373831383b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('651bee9dc83ee2069770889195cf022894a76e97', '::1', 1467214315, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373231343032333b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('67e4bfd3fd47a6cb52b671767460bab82c7ca091', '::1', 1467644485, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373634343235313b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a353b),
('6903d8d57e331e569e005a1e8d2eb6a2ccf66981', '::1', 1467656290, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373635363033363b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a343b),
('69b50a6c064198f35259451391bf54e75dccff8f', '::1', 1467230509, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373233303232333b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('6a81b6023c2afd8985f6dc21d312f4b13e0fced4', '::1', 1467310729, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373331303433353b),
('6b00aec273264a40a6ee3c98049916ccc94d4d39', '::1', 1467219878, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373231393632303b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('6d3781d81e71c08471767c38292674531b5a083d', '::1', 1467306845, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373330363535313b),
('6eabf844f52fb07b6efe770364764ee57417f8d7', '::1', 1467647818, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373634373532353b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a343b),
('6fe4e1ca46c4debbe7f6a675d64da48fab4fd980', '::1', 1467209353, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373230393132323b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('7036a871f581604c817e84e11deab624bd2dbb7e', '::1', 1467604983, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373630343732343b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('70f32cf18f8968a3be7691839e00cf6f21d4fa5e', '::1', 1467137588, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373133373337323b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('71f5ccdfdf9a94c56deca26100428c1d7038dfcb', '::1', 1467206245, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373230363135323b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('730c30cab3972d91caf8474e70e0410a1dc4144d', '::1', 1467605626, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373630353335313b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('74ede9f7cf9468cc273bdc19085f0806c627c433', '::1', 1467302115, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373330313931313b),
('752e549f68325849ff83d6ac36a3fc41ae2a7e9d', '::1', 1467300166, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373239393839323b),
('787103b2831154da1caa553c3e0aea4c99103f76', '::1', 1467125064, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373132343836373b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('7895739d0dc50d7a85ac69e41fd78ea7d52cf8d0', '::1', 1467603728, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373630333433363b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('789f55b4aab8397affd93bcf74ce1ae240ecabc5', '::1', 1467143118, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373134323930363b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('78f51cbbabce9ff34bd02f6bb0d631de6631b895', '::1', 1467308432, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373330383135373b),
('7a77d2fe0ece01e010ca8d90b586cc6c7b272ff9', '::1', 1467313243, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373331333031323b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('7b01d5133f992de9deae759c2186517c3fc94d26', '::1', 1467221525, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373232313234363b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('7ba116eab2fbf08ab0dbc45f9090d5995951f523', '::1', 1467124842, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373132343535393b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('7bcfa3f6d51dc46d6b78a8859de8ac5c7d6f2078', '::1', 1467301529, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373330313236343b),
('7c51d5d5ec319b85c27dc21c574f53ef70375e6e', '::1', 1467645203, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373634343930383b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a353b),
('7dda0297d0454e18b6492786f2a0ed6b2a5b2444', '::1', 1467125717, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373132353631323b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('7eaf5da197842ef1ab973cbe33ae6338806d3536', '::1', 1467309799, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373330393530333b),
('8042edc694ff4cec70da5666b6631f91ec42e8ec', '::1', 1467635554, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373633353236333b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('8091e43378439dab6fe4a9581183f5f04d4ed893', '::1', 1467654951, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373635343636373b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a343b),
('821b786801d42d9bde20de740dcd35bdcf33bb73', '::1', 1467654360, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373635343039323b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a343b),
('83a67fb1a0230a625de7c3b7410c6d19654292c5', '::1', 1467637233, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373633363938323b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a343b),
('84563170d8d72a776e05dca7877afb6772d6bdd7', '::1', 1467647480, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373634373232313b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a343b),
('85be7fb5c14f34341348ac9a6e5c8c37f72b58f7', '::1', 1467220236, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373231393936363b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('86320ac07cc7df30615a067f33dbfea9b8818fed', '::1', 1467315217, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373331353130383b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('89c608f6002cf4e9fb97de3bfb531fb7a49b3e8b', '::1', 1467635211, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373633343936323b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('8a43dcb45466c5140db129f77b0d32f6266e9c70', '::1', 1467638387, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373633383333343b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a343b),
('8c4fbe3a0b807d33e00a6ca058a707efbea9fa0f', '::1', 1467608620, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373630383332343b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('8c9f1e666c957b9e20d6e03ae07d949a8205375e', '::1', 1467299821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373239393533343b),
('8f4e2ca38ddfd4cee8a055fd001abc509f6449df', '::1', 1467312913, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373331323636323b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('910cb9ebb3fb1e13b0c0a91fd83440a119c893aa', '::1', 1467603999, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373630333734303b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('920879bed5289b9527a1b6f2fcc2dd9bc897ad09', '::1', 1467211156, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373231303837373b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('928382f5cad1e10c4c428d8db95f6b9fb068de2f', '::1', 1467223655, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373232333431333b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('9343cc2dff9921b55618d14e65da3ab00ae4adb3', '::1', 1467646526, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373634363237323b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a353b),
('939487fd9cd1a82ed2888a8a020335efc662b1bd', '::1', 1467138406, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373133383137333b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('95e7ec95637fef797c95181797fd85250b6c86f4', '::1', 1467311984, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373331313730383b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('9644dd2391a3229269f3315e30e918d8083527a9', '::1', 1467207164, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373230363836363b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('9719a511e7c8cfa62276fb8ad255360f0dcfdd29', '::1', 1467641583, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373634313239333b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a353b),
('97429ad020f07f82abb6c08da21c42666096494c', '::1', 1467120272, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373132303031343b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('98451ca3c8a9ac618f7bd44961026a7a22ab2f97', '::1', 1467121394, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373132313338393b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('9967fbe14b7c63e4a46fdff02eaeb8ddedd0ab9f', '::1', 1467603350, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373630333037393b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('9af973c490b6248f824bb217eb8ec63ba62494bc', '::1', 1467203902, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373230333739333b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('9b790b09bb7ea25e31cd7e779d0185f065fd484d', '::1', 1467300357, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373330303233383b),
('9bd6a3b64172d8342d9303e623cda277699c80f2', '::1', 1467141521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373134313232353b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('9c3684d16af4dabf09ade6a47c6cec761a4f7eed', '::1', 1467138871, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373133383635343b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('9e41ea2acb406b89500ab064a8b1e81ac1a7db9b', '::1', 1467656737, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373635363637313b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a343b),
('9e7ae2de69f5043524055da1d6db7e430bc7559b', '::1', 1467140144, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373133393835363b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('a04978b5327324ac1a0e2af58109ebd7cb1e37a1', '::1', 1467129555, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373132393337303b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('a19331941ffc7f0917fd5495fb760f08043a36e6', '::1', 1467140816, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373134303537323b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('a32b48b0d69cc7af68223b106a7b92766685cf1e', '::1', 1467231578, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373233313530353b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('a5877cd76394c74cd4eecd00f0692d2ea27e4c73', '::1', 1467313665, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373331333431383b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('a6dcde3a56bed4e47cd6ebcb8935ae44fcad2fcd', '::1', 1467312626, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373331323335323b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('a84b6282f2d5300b6de5227983abe4ed0b56f343', '::1', 1467300913, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373330303631363b),
('a86420af29842b2e96237e6efcb898cb37534abc', '::1', 1467128924, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373132383635333b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('a87bb93135be1635a49b4b4fc1f18b2a738ef4b0', '::1', 1467308852, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373330383739393b),
('a97d551aa6b61a39e0693296bb10a5957f47878b', '::1', 1467308662, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373330383436393b),
('a9fc2f8890922cc158479ef7dcf049e797eac3a6', '::1', 1467129186, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373132393032353b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('aa14b94c7ed4b31b2557cd7f4852f567a4c282fd', '::1', 1467653220, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373635323932303b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a343b),
('ab26ef0f44904c54249f904bb28873dbaf411223', '::1', 1467301134, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373330303935363b),
('abd6d649b4cabce0607f0c09c25ac49818bc6e8c', '::1', 1467212874, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373231323539383b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('ad84ddc7eda9ff062e7616219da865023a714417', '::1', 1467215804, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373231353534333b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('ae026847248488d51bde70478bcd9d8ccde63488', '::1', 1467316404, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373331363131313b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('aff2559606e9d36c5f788001353729bc96a02599', '::1', 1467224019, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373232333739353b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('b34db2c2cbb763703d7fb80aa10d00bbd13dc2f8', '::1', 1467609660, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373630393339323b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('b52adeb703e1e7b7226402dab3ba7d25b2b127c6', '::1', 1467208951, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373230383731303b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('b5a0c7d54acedd8c0230b40b435c02ca39b3acc2', '::1', 1467653821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373635333738323b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a343b),
('b778f4416c66c3774e6356496f152af04c56ddd1', '::1', 1467136311, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373133363035333b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('b80704df77c5c777f5fda12bd5dfc59342721a15', '::1', 1467316039, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373331353736393b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('b8ed9b959fc04ab77d6fd1d5d390fd0306cf3c4c', '::1', 1467307784, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373330373534303b),
('ba1fe6d2aaf95c9adafb8948177ceb83821e067b', '::1', 1467204719, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373230343434313b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('bbfe77fc5408a5aac9bc8a71900ca9772ab16270', '::1', 1467652490, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373635323235323b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a343b),
('bc1962d661b98da2867d71ea80e8b5b14858fe9a', '::1', 1467635832, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373633353637313b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('bcd50c332cad3844e880b4ab14a221ba30118441', '::1', 1467207570, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373230373239303b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('bd29f6cef5ee3e2cc90c3f7546b04d028a72ce05', '::1', 1467224846, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373232343834363b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('c046e341caeabe5816c8a577731bd0a4a094ea65', '::1', 1467302920, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373330323635343b),
('c0a9f9e62f5310c8e7bf8eb0b9d07177017d18ee', '::1', 1467230838, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373233303533393b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('c105d55596da339d9265163cc3766c9e44182e51', '::1', 1467634111, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373633343038353b),
('c13092043ed5aa56ff55bd21ff191b8254fa9fa0', '::1', 1467646216, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373634353935333b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a353b),
('c14d3dd7f22de899d913fac6bb8de3bbc352bc69', '::1', 1467311039, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373331303734373b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('c169b787e6c4c40adc036cb9e51b8a46963677f9', '::1', 1467609806, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373630393738313b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('c17404f5950f83ead2eac0cf407837eb5d125e68', '::1', 1467317390, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373331373039313b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('c18dcb555929ccb92ceb50c973909078aee6019d', '::1', 1467121011, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373132303733323b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('c1bd648b6e9cedf6efeff6b4e3befef4825dc300', '::1', 1467213094, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373231323933363b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('c25af1c9740a1bb0399d7e09935eeb8ea203d909', '::1', 1467208706, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373230383430363b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('c29bb2e3350d2ee5a278ea46c2e3fcb28313f974', '::1', 1467307199, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373330363932333b),
('c50f785309f94c8a9f68f47cee68c3ff95505cf8', '::1', 1467303011, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373330333030353b),
('c5a8ab928d7752cb16552b4b133b9978c5050953', '::1', 1467214997, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373231343730353b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('c605e1e7f4471307db0fd497f19a179455d52f54', '::1', 1467639891, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373633393633333b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a353b),
('c623aeb2a6a07614987a36705477cb1a6d5efac7', '::1', 1467642218, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373634313933373b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a353b),
('c679ef772a4394e5a263d72fc949c035964a689e', '::1', 1467227201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373232373136383b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('ca326152156d3a0caa410199fc493b4712d7b8ce', '::1', 1467206752, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373230363436353b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('cad6c5b1fce9fcd25af27e60ce25c10498789660', '::1', 1467640192, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373633393935393b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a353b),
('cbd05f24cb5601177bfae48f2acdbb49be06dfd5', '::1', 1467653404, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373635333232323b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a343b),
('cc086c93c3ae73cb2114b4e90b24f5fb72df13b6', '::1', 1467128602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373132383331393b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('ccfa0cb02d92e72fbf6fcd7304376892fcc1db30', '::1', 1467231455, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373233313136333b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('cd0a34752ee84803766f7632d24f169b9afca031', '::1', 1467302540, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373330323330373b),
('ce2b822c9478f16b34ade72f95c86d241806072e', '::1', 1467639272, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373633393136333b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a353b),
('cf354763905475583106d4a31b761a4bded3d09f', '::1', 1467228912, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373232383638323b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('cf3a5dfa505b5bf613f17b8b53be680b1a55e34e', '::1', 1467291553, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373239313236353b),
('d02846a43ba95d6d07764cfa3c55838f3b5eaf29', '::1', 1467600999, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373630303730353b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('d1ea253f0c4da57b76d1249e6eda1e09712abaa5', '::1', 1467642531, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373634323238323b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a353b),
('d599b175a83bc98f5d7dade6201e340a07e07a78', '::1', 1467229280, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373232383938343b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('d5e4ccf39f95888d43b0ee1ed3032620d44b848d', '::1', 1467608009, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373630373731303b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('d60bef25a6631607bec032e34af6a2299bfcb142', '::1', 1467306483, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373330363234343b);
INSERT INTO `tbl_session` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('d64c8420ff69b140f7bfee2f5b767882544ace81', '::1', 1467317630, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373331373430313b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('d6d2f7f0823528848f69aa5197276d51c905844d', '::1', 1467602714, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373630323431393b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('d71dfd210f4767da3bd08374b4cb28d66a452275', '::1', 1467120574, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373132303334333b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('d842a96515445d6b5e0452d7b0cd31bf5f6837b3', '::1', 1467202402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373230323133383b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('d9f41e3030bfedd252c93d48bc2e7fa61858e440', '::1', 1467314685, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373331343433303b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('daaafb3a4687b3dad58a4396bbe096f86bb8ca12', '::1', 1467210159, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373230393838333b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('df156221c7fdf46329651e61116b53dff8ba80b2', '::1', 1467216038, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373231353938343b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('e09ddbce7466afaf0f178e4da6ba87fa00e09ad5', '::1', 1467213447, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373231333238343b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('e20b8cab5b0439b3eb8013ed03e5432cba7017ce', '::1', 1467316989, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373331363734363b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('e22475fb17aa94d793eaaed019c6a25238de1a23', '::1', 1467637903, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373633373634383b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a343b),
('e2a93662de910edb5341cca6b63e7f02860bb67e', '::1', 1467205351, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373230353037323b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('e32ac254c14619af2f0bd9de2b34aa01ce6aaf5c', '::1', 1467210516, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373231303231373b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('e604ec81a68f59a159d5358307e2faaa607be13c', '::1', 1467224728, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373232343439393b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('e63dbe7f501a024e74d0afce623299597f17f3b5', '::1', 1467645507, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373634353232343b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a353b),
('e65f34901746f360cffcf24978cd8daf51a2ed64', '::1', 1467310094, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373330393830373b),
('e6a06833b77a5ee79c502d43fa226b52f90845f2', '::1', 1467290462, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373239303231383b),
('e9110dbe85e3b7777d39cdcdc0233306f3cf3c17', '::1', 1467210586, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373231303533353b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('ea0a6e3f635c2819b8f085140c79d20eaa68e342', '::1', 1467142428, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373134323138353b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('ea2b6f39859488ca0f8c72a660bbe7ec9cd5c87b', '::1', 1467202877, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373230323539313b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('ea6532db830ffb047a93d5090f233cdbd844259d', '::1', 1467139743, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373133393531373b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('ebe01148da3aa0b6212fce2f059347275f2d1901', '::1', 1467301802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373330313537313b),
('ec3b909e98e6832da7e4c652cddd533e81e0f97f', '::1', 1467204373, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373230343133373b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('ecabd5f31db8896fee166c78897880c7d7a3ffb0', '::1', 1467208397, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373230383130343b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('ecf7df2f1648695e5e4827e55c88af85b4205f99', '::1', 1467607690, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373630373339393b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('ee0661db4161c928f23e92d19408617209935e4a', '::1', 1467211410, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373231313230373b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('ee52bb4abd4678021f1ebf46c78fae7764909314', '::1', 1467314042, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373331333734323b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('ee6053d11e5402b7daa6390de795e33d6cdf5c84', '::1', 1467136771, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373133363438393b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('efd7b1d890ace9bcabb2c2f9d25fc1a599ec7fae', '::1', 1467121214, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373132313033353b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('f0134d72a404cecd3c84da697fadccd519530d48', '::1', 1467637590, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373633373333373b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a343b),
('f090d30a2bbd4c9590bec35928dcf4a7a6683a4b', '::1', 1467307495, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373330373232393b),
('f12b1d2863a0f9c297abbaeec62502917050c20c', '::1', 1467644014, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373634333831303b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a353b),
('f1b5c5c42ec96a7fb93bd625f7482488d7c7bb51', '::1', 1467123283, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373132323938353b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('f279c254fc950643111789c0803fbc4a29ec0cd7', '::1', 1467636826, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373633363534383b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a343b),
('f28fc4bdca9212c4933744dec6faebb645d9a5cc', '::1', 1467139096, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373133393038353b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('f2aedb88377aae00e84f65075ee0db11d5a11252', '::1', 1467228168, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373232373838343b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('f5597b2c3ef962aacebdb4113442622d66c6e252', '::1', 1467308124, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373330373834353b),
('f64714c94e995c2093adf30299db164f0740d9cd', '::1', 1467205758, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373230353732353b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('f998539a57bbcee10dd1f5ca85bdbe0d1d51869a', '::1', 1467203224, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373230323934343b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('f9bab717656fa02000f5b526c8c6d3e4538efb05', '::1', 1467641253, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373634303937393b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a353b),
('fa83ca6033de665e87874502173879bfa0d8ed0d', '::1', 1467656657, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373635363336383b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a343b),
('faea7c99de6d9820043568c74214e899f446e0e1', '::1', 1467646890, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373634363539323b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b666176636f6c6f727c693a353b),
('fb0cf0cdf66949662d1ac4dc47706b3c2cd1c309', '::1', 1467205645, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373230353339333b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('fc50bff808825112014c27d925ec324ffe0fc638', '::1', 1467137093, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373133363831383b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('fd3f728283a535df8ef630e6d50d52077bd0a6f4', '::1', 1467229585, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373232393239343b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('fe9912a33c3732769ae127b1041821f71b209aa0', '::1', 1467601964, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373630313739343b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b),
('ff47569495868894e7e83a2212f137627f0a39b3', '::1', 1467634962, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373633343936323b),
('ff5a87fab7c5d6caae70e9b4b9aa73f8d3eafa35', '::1', 1467229711, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373232393539363b69647c733a313a2231223b757365726e616d657c733a353a227573657231223b666e616d657c733a31353a2275736572206e756d626572206f6e65223b61646d696e7c623a313b);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_st_team`
--

DROP TABLE IF EXISTS `tbl_st_team`;
CREATE TABLE IF NOT EXISTS `tbl_st_team` (
  `st_team_id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT,
  `st_team_fname` varchar(75) NOT NULL,
  `st_team_lname` varchar(75) NOT NULL,
  `st_team_bio` text NOT NULL,
  `st_team_ima` varchar(120) NOT NULL DEFAULT 'placeholder_man.png',
  `st_team_linkedin` varchar(100) DEFAULT NULL,
  `st_team_year` varchar(50) NOT NULL,
  `st_team_program` varchar(50) DEFAULT NULL,
  `st_team_email` varchar(255) NOT NULL,
  PRIMARY KEY (`st_team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_st_team`
--

INSERT INTO `tbl_st_team` (`st_team_id`, `st_team_fname`, `st_team_lname`, `st_team_bio`, `st_team_ima`, `st_team_linkedin`, `st_team_year`, `st_team_program`, `st_team_email`) VALUES
(1, 'Stephanie', 'Wagner', 'Designer and front-end developer', 'placeholder_woman.png', 'www.linkedin.com/in/stephwagner35/', '2013', 'Interactive Media Design', ''),
(2, 'Kelsey', 'Wozniak', 'Front-end developer', 'placeholder_woman.png', 'www.linkedin.com/in/kelseywozniak/', '2013', 'Interactive Media Design', ''),
(3, 'Graeme', 'Demarsh', 'Back-end developer  ', 'placeholder_man.png', 'www.linkedin.com/in/gradem/', '2013', 'Interactive Media Design', ''),
(4, 'Erica', 'Schaub', 'Designer', 'placeholder_woman.png', 'www.linkedin.com/in/ericaschaub/', '2013', 'Interactive Media Design', ''),
(5, 'Natalia', 'Aguillon', 'Motion designer', 'placeholder_woman.png', 'www.linkedin.com/in/nataliaaguillon/', '2013', 'Interactive Media Design', ''),
(6, 'Anny', 'Mykhailova', 'Front-end developer', 'placeholder_woman.png', 'www.linkedin.com/in/anna-mykhailova-65258933/', '2014', 'Interactive Media Design', ''),
(7, 'Shane', 'Ingles', '2D Animator', 'placeholder_man.png', 'www.linkedin.com/in/shane-supernova-73a9305a/', '2013', 'Interactive Media Design', ''),
(8, 'Chris', 'Wright', 'Back-end developer  ', 'placeholder_man.png', 'www.linkedin.com/in/shannon-enwright-869b908b/', '2013', 'Interactive Media Design', ''),
(9, 'Andrew', 'Rattana', '3D Designer', 'placeholder_man.png', 'www.linkedin.com/in/andrewrattana/', '2013', 'Interactive Media Design', ''),
(10, 'Damian', 'Plisko', 'Designer and front-end developer', 'placeholder_man.png', 'www.linkedin.com/in/damian-r-plisko-7a88b863/', '2013', 'Interactive Media Design', ''),
(11, 'Daniel', 'Tablas', 'Designer and front-end developer', 'placeholder_man.png', 'www.linkedin.com/in/danieltablas/', '2013', 'Interactive Media Design', ''),
(12, 'Artem', 'Rosnovsky', 'Front-end developer', 'placeholder_man.png', 'www.linkedin.com/in/rosnovsky/', '2013', 'Interactive Media Design', ''),
(13, 'Rahul', 'Patel', 'Back-end developer  ', 'placeholder_man.png', 'www.linkedin.com/in/rahulpatel57/', '2013', 'Interactive Media Design', ''),
(21, 'Leah', 'Froats', 'Front-end developer', 'placeholder_woman.png', 'www.linkedin.com/in/leah-froats-47872b6a/', '2012', 'Interactive Media Design', ''),
(22, 'Eleanor', 'Fullick', 'Front and back end developer', 'placeholder_woman.png', 'ca.linkedin.com/in/eleanorfullick', '2009', 'Interactive Media Design', ''),
(23, 'Brian', 'Dillon', 'Web Developer', 'placeholder_man.png', 'ca.linkedin.com/', '2009', 'Interactive Media Design', ''),
(24, 'James', 'Shirlaw', 'Web Developer', 'placeholder_man.png', 'ca.linkedin.com/pub/james-shirlaw/29/2aa/78', '2010', 'Interactive Media Specialist', ''),
(25, 'Damon', 'Muma', 'Web Developer', 'placeholder_man.png', 'ca.linkedin.com/in/damonmuma', '2010', 'Interactive Media Specialist', ''),
(26, 'Jeremy', 'King', 'Web Developer', 'placeholder_man.png', 'ca.linkedin.com/in/jeremyrjking', '2010', 'Interactive Media Specialist', ''),
(27, 'Andrew', 'Xuereb', 'Web Developer', 'placeholder_man.png', 'ca.linkedin.com/pub/andrew-xuereb/36/412/373', '2010', 'Interactive Media Specialist', ''),
(28, 'Robert', 'Haaf', 'Coordinator  ', 'robertHAAF_ST.png', 'www.linkedin.com/pub/robert-haaf/8/4b2/1bb', '2010', 'Interactive Media Design', ''),
(29, 'Joshua', 'Iredale', 'Front-end developer', 'joshuaIREDALE.png', 'www.linkedin.com/in/joshua-iredale-1972261a/', '2014', 'Interactive Media Design', ''),
(30, 'Courtney ', 'McMullan', 'Designer ', 'courtneyMCMULLAN.png', 'www.linkedin.com/in/courtneymcmullan/', '2014', 'Interactive Media Design', ''),
(31, 'Alex', 'O\'Connell', 'Back-end Developer  ', 'alexOCONNELL.png', 'ca.linkedin.com/pub/alex-o-connell/8a/65b/b23', '2014', 'Interactive Media Design', ''),
(32, 'Spencer', 'Friedman', 'Front-end developer', 'spencerFRIEDMAN.png', 'www.linkedin.com/in/spencer-friedman-18243749/', '2014', 'Interactive Media Design', ''),
(33, 'Stephanie', 'Whent', 'Designer and front-end developer', 'stephanieWHENT.png', 'www.linkedin.com/in/stephaniewhent/', '2014', 'Interactive Media Design', ''),
(34, 'Matthew', 'DeMelo', 'Designer and front-end developer', 'matthewDEMELO.png', 'www.linkedin.com/in/matthewdemelo/', '2014', 'Interactive Media Specialist', ''),
(35, 'Jillian', 'Tester', 'Front-end developer', 'jillianTESTER.png', 'www.linkedin.com/in/jillian-tester-profile/', '2014', 'Interactive Media Design', ''),
(36, 'Ashleigh', 'Gerrard', 'Back-end developer  ', 'ashleighGERRARD.png', 'www.linkedin.com/in/ashley-demaestri-423a2630/', '2014', 'Interactive Media Design', ''),
(37, 'Paul', 'Willson', 'Front-end developer', 'placeholder_man.png', 'www.linkedin.com/in/paul-willson-b0837029/', '2014', 'Interactive Media Specialist', ''),
(38, 'Essery', 'Waller', 'Designer ', 'esseryWALLER.png', 'www.linkedin.com/in/esserywaller/', '2014', 'Interactive Media Design', ''),
(39, 'Alex', 'Smith', 'Front-end developer', 'alexSMITH.png', 'www.linkedin.com/in/alextaylorsmith/', '2014', 'Interactive Media Design', ''),
(40, 'Alyssa', 'Mahon', 'Designer ', 'alissaMAHON.png', 'www.linkedin.com/in/alyssa-mahon/', '2014', 'Interactive Media Design', ''),
(41, 'David', 'Krent', 'Mobile developer ', 'davidKRENT.png', 'www.linkedin.com/in/david-krent-636a5147/', '2014', 'Interactive Media Design', ''),
(42, 'Dylan', 'Rieder', 'Front-end developer', 'dylanRIEDER.png', 'www.linkedin.com/in/dylanrieder/', '2014', 'Interactive Media Design', ''),
(43, 'Walter', 'Gramajo', 'Front-end developer', 'walterGRAMAJO.png', 'www.linkedin.com/in/walter-gramajo-759ab08a/', '2014', 'Interactive Media Design', ''),
(44, 'Jeremy ', 'Dilks', '3D Animation', 'placeholder_man.png', 'www.linkedin.com/in/jeremy-dilks-32575073/', '2013', 'Interactive Media Design', ''),
(45, 'Christopher', 'Pellow', 'Project Manager', 'christopherPELLOW.png', 'ca.linkedin.com/in/christopher-pellow-95580623', 'none', 'Interactive Media Design', ''),
(46, 'Julie', 'Service', 'Designer and front-end developer', 'julieSERVICE.png', 'www.linkedin.com/in/julieservice/', '2015', 'Interactive Media Specialist', ''),
(47, 'Lucas', 'Morish', 'Back-end Developer', 'lucasMORISH.png', 'ca.linkedin.com/in/lucas-morrish-9519a1a4', '2015', 'Interactive Media Design', ''),
(48, 'Lauren ', 'Nicholson', 'Designer and front-end developer', 'laurenNICHOLSON.png', 'www.linkedin.com/in/laurennicholsondesign/', '2015', 'Interactive Media Design', ''),
(49, 'Caitlyn ', 'O\'Driscoll', 'Back end developer', 'caitlynODRISCOLL.png', 'www.linkedin.com/in/caitlynodriscoll/', '2015', 'Interactive Media Design', ''),
(50, 'Samuel', 'Garcia', 'Designer', 'samuelGARCIA.png', 'www.linkedin.com/in/samgarcia8/', '2015', 'Interactive Media Design', ''),
(51, 'Ryan ', 'McHale', 'Back end developer', 'ryanMCHALE.png', 'www.linkedin.com/in/ryanm986/', '2014', 'Interactive Media Design', ''),
(52, 'Christopher ', 'Robins', 'Back-end developer  ', 'christopherROBINS.png', 'www.linkedin.com/in/christopher-robins-129356b4/', '2015', 'Interactive Media Design', ''),
(53, 'Jessica ', 'Peasant-Simpson', 'Designer and front-end Developer', 'jessicaPEASANT.png', 'ca.linkedin.com/in/freaxx', '2016', 'Interactive Media Design', ''),
(54, 'Asha ', 'Ramji', '2D animation and front-end developer', 'ashaRAMJI.png', 'www.linkedin.com/in/asha-ramji-00b14294/', '2016', 'Interactive Media Design', ''),
(55, 'Jonathan ', 'Ferreira', 'Front and back end developer', 'jonathanFERREIRA.png\r\n', 'www.linkedin.com/in/jonferr/', '2016\r\n', 'Interactive Media Specialist', ''),
(56, 'Kevin', 'Greenspan', 'Designer and front-end developer', 'kevinGREENSPAN.png\r\n', 'www.linkedin.com/in/kevingreenspan/', '2016', 'Interactive Media Design', ''),
(57, 'Joshua', 'Zeledon\r\n', '3D Animator\r\n', 'placeholder_man.png', 'www.linkedin.com/in/joshua-zeledon-552523107/', '2016\r\n', 'Interactive Media Design', ''),
(58, 'Alex ', 'Stegmann', 'Back-end developer  ', 'alexSTEGMANN.png\r\n', 'www.linkedin.com/in/alexstegmann/', '2016', 'Interactive Media Specialist', ''),
(59, 'Melissa', 'Lambert', 'Designer and front-end developer\r\n', 'melissaLAMBERT.png\r\n', 'www.linkedin.com/in/mblambert/', '2016', 'Interactive Media Design', ''),
(60, 'Mathew\r\n', 'Walcher\r\n', 'Back-end developer  ', 'mathewWALCHER.png\r\n', 'www.linkedin.com/in/mwalcher/', '2016\r\n', 'Interactive Media Specialist', ''),
(61, 'Joanna\r\n', 'Chan\r\n', 'Back-end developer  ', 'joannaCHAN.png\r\n', 'www.linkedin.com/in/joannacchan/', '2016\r\n', 'Interactive Media Design', ''),
(62, 'Caitlin\r\n', 'Lam \r\n', 'Designer and front-end developer\r\n', 'caitlinLAM.png', 'www.linkedin.com/in/caitlinlam1/', '2016\r\n', 'Interactive Media Design', ''),
(63, 'Alex\r\n', 'Wong\r\n', '3D Animator\r\n', 'alexWONG.png\r\n', 'www.linkedin.com/in/alexander-wong-02864386/?trk=nav_responsive_tab_profile', '2016\r\n', 'Interactive Media Design', ''),
(64, 'Serena \r\n', 'Teng\r\n', 'Designer and front-end developer', 'serenaTENG.png\r\n', 'www.linkedin.com/in/serenateng/', '2016\r\n', 'Interactive Media Design', ''),
(65, 'Nicholas \r\n', 'Ireland', 'Designer\r\n', 'nicholasIRELAND.png\r\n', 'www.linkedin.com/in/irelandnicholas/', '2018\r\n', 'Interactive Media Design', ''),
(73, 'Jeremy y', 'Tenjot', 'the besg t6', 'zzzzzz.png', NULL, '20166', 'Interactive Mediar', ''),
(74, 'Adam', 'Luxton', 'Back-end developer', 'adamLUXTON.png', 'www.linkedin.com/in/luxtondesign/', '', NULL, ''),
(75, 'Adrian', 'Zhao', 'Front-end developer', 'adrianZHAO.png', 'www.linkedin.com/in/adrian-yizhao-zhao-1a0a5620/', '', NULL, ''),
(76, 'Alicia', 'Bulhoes', 'Designer and front-end developer', 'aliciaBULHOES.png', 'www.linkedin.com/in/aliciabulhoes/', '', NULL, ''),
(77, 'Amanda', 'Mercer', 'Back-end developer', 'amandaMERCER.png', 'www.linkedin.com/in/amandacmercer/', '', NULL, ''),
(78, 'Barbara', 'Bombachini', 'Front-end developer', 'barbaraBOMBACHINI.png', 'www.linkedin.com/in/barbara-bombachini-b61b92aa/', '', NULL, ''),
(79, 'Clara', 'Marshall', 'Designer and Front-end', 'claraMARSHALL.png', 'www.linkedin.com/in/claramarshall/', '', NULL, ''),
(80, 'Johann', 'Ting', 'Designer and front-end developer', 'johannTING.png', 'www.linkedin.com/search/results/index/?keywords=Johann%20Ting&origin=GLOBAL_SEARCH_HEADER', '', NULL, ''),
(81, 'Lauren', 'Koza', 'Back-end developer', 'laurenKOZA.png', 'www.linkedin.com/in/lauren-koza-b05292127/', '', NULL, ''),
(82, 'Mauricio', 'Silveira', 'Back-end developer ', 'mauricioSILVEIRA.png', 'www.linkedin.com/in/mauriciomsilveira/', '', NULL, ''),
(83, 'Natalie', 'Mastracci', 'Back-end developer', 'natalieMASTRACCI.png', 'www.linkedin.com/in/natalie-mastracci-b8772257/', '', NULL, ''),
(84, 'Nicholas', 'Lediet', 'Back-end developer', 'nicholasLEDIET.png', 'www.linkedin.com/in/nicholas-lediet/', '', NULL, ''),
(85, 'Ryan', 'White', 'Designer and front-end developer', 'ryanWHITE.png', 'www.linkedin.com/in/ryanwhite11/', '', NULL, ''),
(86, 'Shannon', 'Enwright', 'Designer and front-end developer', 'shannonENWRIGHT.png', 'www.linkedin.com/in/shannon-enwright-869b908b/', '', NULL, ''),
(87, 'Jonathan', 'Smeltzer', 'Designer and front-end developer', 'placeholder_man.png', 'www.linkedin.com/in/kyle-smeltzer-7a22b5127/', '', NULL, ''),
(88, 'Jess', 'Park', 'Designer and front-end developer', 'placeholder_woman.png', 'www.linkedin.com/in/jesspark/', '', NULL, ''),
(89, 'Austin', 'Mitchell', 'Front-end developer', 'placeholder_man.png', 'www.linkedin.com/in/austin-mitchell-7a22b512b/', '', NULL, ''),
(90, 'Camillo', 'Angelozzi', 'Back-end developer', 'camilloANGELOZZI.png', 'www.linkedin.com/in/camillo-angelozzi-a0b5a229/', '', NULL, ''),
(91, 'Carolyn', 'Larocque', 'Front-end developer', 'placeholder_woman.png', 'www.linkedin.com/in/carolyn-larocque-45525b13b/', '', NULL, ''),
(92, 'Julia', 'Peden', 'Front-end developer', 'placeholder_woman.png', 'www.linkedin.com/in/julia-peden-b34a73b1/', '', NULL, ''),
(93, 'Andrew', 'Prince', 'Front-end developer', 'placeholder_man.png', 'www.linkedin.com/in/andrewjoeprince/', '', NULL, ''),
(94, 'Jared', 'McDonald', 'Front-end developer', 'placeholder_man.png', 'www.linkedin.com/in/jaren-mcdonald/', '', NULL, ''),
(95, 'Julliana', 'Bauer', 'Designer and front-end developer', 'julianaBAUER.png', 'www.linkedin.com/in/jullianabauer/', '', NULL, ''),
(96, 'Daniella', 'Dantas', 'Back-end developer', 'placeholder_woman.png', 'www.linkedin.com/in/dantasdaniela/', '', NULL, ''),
(97, 'Patricia', 'Garcia', 'Designer and Front-end developer', 'placeholder_woman.png', 'www.linkedin.com/in/patricia-garcia-0978a1a5/', '', NULL, ''),
(98, 'Natalia ', 'Aguillon', 'Back-end developer', 'placeholder_man.png', 'www.linkedin.com/in/nataliaaguillon/', '2013', 'Interactive Media Design', ''),
(99, 'Christopher ', 'Robins', 'Front and back-end developer', 'placeholder_man.png', 'www.linkedin.com/in/christopher-robins-129356b4/', '2014', 'Interactive Media Design', ''),
(100, 'Asha ', 'Ramji', 'Back-end developer', 'placeholder_man.png', 'www.linkedin.com/in/asha-ramji-00b14294/', '2015', 'Interactive Media Design', ''),
(101, 'Jessica', 'Robertson', 'Designer and front-end developer', 'placeholder_man.png', 'www.linkedin.com/in/justfream/', '2015', 'Interactive Media Design', ''),
(102, 'Nicholas ', 'Ireland', 'Front-end developer', 'placeholder_man.png', 'www.linkedin.com/in/irelandnicholas/', '2016', 'Interactive Media Design', ''),
(103, 'Cadence', 'Watson', 'Development/Data Visualization', 'Cadence_Watson.png', 'https://ca.linkedin.com/in/cadence-watson-088ba6181', '2019', 'Interactive Media - Data Visualization', 'a_watson23@fanshaweonline.ca');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_team`
--

DROP TABLE IF EXISTS `tbl_team`;
CREATE TABLE IF NOT EXISTS `tbl_team` (
  `team_id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT,
  `team_fname` varchar(75) NOT NULL,
  `team_lname` varchar(75) NOT NULL,
  `team_bio` text NOT NULL,
  `team_ima` varchar(120) NOT NULL,
  `team_email` varchar(75) NOT NULL DEFAULT 'no link',
  `team_linkedin` varchar(100) NOT NULL DEFAULT 'no link',
  `team_position` varchar(150) NOT NULL,
  PRIMARY KEY (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_team`
--

INSERT INTO `tbl_team` (`team_id`, `team_fname`, `team_lname`, `team_bio`, `team_ima`, `team_email`, `team_linkedin`, `team_position`) VALUES
(1, 'Robert', 'Haaf', 'Robert Haaf is the Coordinator for Project Integration in the School of Contemporary Media.  In this role, he oversees higher-level project planning, partnership development, applied research grants and other funding opportunities, and is a principal investigator and collaborator on all Reactr projects.  Robert also provides technical (coding) support to reactr projects. <br><br>\r\nRobert\'s academic background is in areas of communication disorders, assistive technology for communication and psychology/linguistics. Robert has also worked in University and small-company settings to develop a wide range of digital media applications for educational and commercial purposes.  In addition to over 20 years\' experience in teaching and curriculum development at the University and College level, Robert has a background in basic and applied research, including research design, analysis, and dissemination of research results at international conferences and in peer-reviewed journals.<br><br>\r\nPrimary research interests within reactr include:  applications of \'personal\' technology (smartphones, tablets) in educational environments; assistive technology in educational environments; digital media applications for emerging classroom technology (e.g., SmartBoards).', 'rob.png', 'RHaaf@fanshawec.ca ', 'http://www.linkedin.com/pub/robert-haaf/8/4b2/1bb', 'Applied Research Coordinator'),
(2, 'John', 'Bennett', 'John Bennett has a background in 2D/3D art and graphic design, in both traditional and digital forms, as well as over eight years of experience in teaching and curriculum development at Fanshawe College.  John consults and supervises student teams on overall design and user interface considerations for all reactr projects. <br><br> John\'s strong visual sense and design skills are evident in, and very central to, every reactr project. John also supervises the design, development and use of rich-media components (3D, animation, video) within applicable projects.  John\'s applied research interests lie in usage considerations for UI systems, and their implications in application design and user experience.', 'john.png', 'jbennett@fanshawec.ca', 'https://www.linkedin.com/in/john-bennett-9aa1a760/', 'Design & UI Coordinator'),
(3, 'Natalia', 'Aguillon', 'Natalia Aguillon has an academic background in Industrial Design and Architecture, and is a graduate of the Interactive Media Design and Production program at Fanshawe.  Her training and experience in digital media well suits her central role as Project and Production Manager for all ongoing reactr projects. <br><br> Natalia\'s background and interests focus her applied research on innovative uses of digital media and interactive informational applications in educational systems, and how Web and Mobile applications can lead to an improved student experience in post-secondary environments.', 'natalia.png', 'n_aguillon@fanshawec.ca', 'http://ca.linkedin.com/in/nataliaaguillon', 'Project Manager'),
(4, 'Marco', 'De Luca', 'Experienced Professor with a demonstrated history of working in the higher education industry. Skilled in Interactive Media, Graphic Design, Web Development and Web Design. Strong education professional with a Diploma focused in Multimedia Design and Production from Fanshawe College.', 'marco.png', 'no link', 'https://www.linkedin.com/in/marco-de-luca-71917498/', 'Front-end Lead');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tech`
--

DROP TABLE IF EXISTS `tbl_tech`;
CREATE TABLE IF NOT EXISTS `tbl_tech` (
  `tech_id` int(3) NOT NULL AUTO_INCREMENT,
  `tech_name` varchar(255) NOT NULL,
  `tech_src` varchar(255) NOT NULL,
  PRIMARY KEY (`tech_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tech`
--

INSERT INTO `tbl_tech` (`tech_id`, `tech_name`, `tech_src`) VALUES
(1, 'HTML5', 'html.png'),
(2, 'CSS3', 'css.png'),
(3, 'JavaScript', 'js.png'),
(4, 'PHP', 'php.png'),
(5, 'Laravel', 'laravel.png'),
(6, 'Flash', 'flash.png'),
(7, 'Unity', 'unity.png'),
(8, 'Code Igniter', 'codeigniter.png'),
(9, 'MySQL', 'mysql.png'),
(10, '3DS Max', '3dsmax.png'),
(11, 'Cinema 4D', 'cinema4d.png'),
(12, 'After Effects', 'after-effects.png'),
(13, 'Premiere', 'premiere.png'),
(14, 'Audition', 'audition.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonials`
--

DROP TABLE IF EXISTS `tbl_testimonials`;
CREATE TABLE IF NOT EXISTS `tbl_testimonials` (
  `testimonial_id` int(30) NOT NULL AUTO_INCREMENT,
  `st_team_id` int(30) NOT NULL,
  `project_id` int(30) NOT NULL,
  `testimony` text NOT NULL,
  PRIMARY KEY (`testimonial_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_testimonials`
--

INSERT INTO `tbl_testimonials` (`testimonial_id`, `st_team_id`, `project_id`, `testimony`) VALUES
(1, 83, 38, '“Absolutely amazing opportunities to learn, technologies, client experience, and invaluable mentorship from the staff. I have never felt so supported and guided in my education. This experience has been truly life-changing.\"'),
(2, 84, 37, '\"I would say Reactr greatly influenced my ability to achieve my current position. I also wouldn\'t have gotten the opportunity to do the group interviews with Northern if it wasn\'t for Rob and the Reactr program.”'),
(3, 79, 35, '“I learned far more doing this project than I would have just doing the regular program. Working several hours a week allowed me to continuously practice with the new tools which allowed me to get comfortable faster.”'),
(4, 53, 23, '\"Working with REACTR opened new doors, I meet very talented individuals, and it has helped me learn and grow tremendously. It\'s was an honour to have been chosen to work with REACTR.\"');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_fullname` varchar(75) NOT NULL,
  `user_username` varchar(50) NOT NULL,
  `user_password` varchar(20) NOT NULL,
  `user_role` varchar(50) NOT NULL DEFAULT '2',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fullname`, `user_username`, `user_password`, `user_role`) VALUES
(1, 'user number one', 'user1', '123', '2'),
(2, 'user number two', 'user2', '123', '1'),
(3, 'user name three', 'user3', '456', '2'),
(8, 'user name seven', 'user7', '789', '1'),
(9, 'user name seven', 'user7', '123', '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Admin', 'admin@reactr.ca', '$2y$10$HvqsQItuLGma/GK.B2U8re/g.WU.v3xOnmNl7etdQQIGMK7UQ84DK', 'jNCJJb3HXV1zxhnLhSk8veCOcphhGdsjqNpW85KQXSC4MpvnBx369LEGR6KZ', '2018-08-16 22:42:23', '2018-08-16 22:42:23');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
