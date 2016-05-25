CREATE DATABASE  IF NOT EXISTS `web_forum` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `web_forum`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: web_forum
-- ------------------------------------------------------
-- Server version	5.5.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_user_id` int(11) DEFAULT NULL,
  `content` text,
  `parent_category_id` int(11) DEFAULT NULL,
  `super_category` varchar(1) DEFAULT 'T',
  `delete_flag` varchar(1) DEFAULT 'F',
  `delete_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (27,7,'Development Details',7,'F','F',NULL),(29,7,'topic container2',28,'F','F',NULL),(31,7,'c',7,'F','T',NULL),(32,7,'e',30,'F','F',NULL),(34,7,'qwdqw',7,'F','T',NULL),(35,7,'qwdqwas',7,'F','T',NULL),(36,7,'emilys category',7,'F','T',NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `post_date` timestamp NULL DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `delete_flag` varchar(1) NOT NULL DEFAULT 'F',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'News page added','2013-08-28 14:45:28',7,'F'),(2,'Clan scheduler is now under development. Now allows users to set when they are available to play.','2013-09-10 00:54:12',7,'F'),(4,'\n\n                            Match scheduler complete. It includes:\n<ul>\n<li>Availability: To set your availability to play games in the next 7 days.</li>\n<li>Group availability: To see any available teams you can join.</li>\n<li>Matches: Who are you scheduled to play matches with in the next week.</li>\n</ul>\nThere is currently no way of removing your availability. This is a feature to be added to the \nAvailability and Matches page.\n','2013-09-19 17:15:09',7,'F'),(5,'After some comparisons I decided the site looked a bit amateur. With my new found skills in javascript and css I\'ve begun to remodel the site. Remaining pages include:\n<ul>\n	<li>Registration page</li>\n	<li>Login page</li>\n	<li>Thread page</li>\n	<li>Availability page</li>\n	<li>Group availability page</li>\n	<li>My matches page</li>\n</ul>\n','2013-09-20 15:03:41',7,'F'),(9,'WEBSITE REDESIGN COMPLETE<br>\n<ul>\n<li>Registration page now has javascript validation (still requires backend validation).</li>\n<li>Refactored \'My Matches\' as the previous JSP was too complex.</li>\n<li>Fixed a few bugs on the \'Group Matches\' page.</li>\n</ul>\n','2013-09-25 12:49:25',7,'F'),(11,'SCHEDULER REFACTOR <br>\n<ul>\n	<li>Each user now has a default timezone of +5 GMT.</li>\n	<li>Group Availability was overengineered with sqllite. Now uses arrays and runs much faster. </li>\n	<li>User can now remove availability on the User Availability page by clicking on a slot.</li>\n	<li>Fixed bug where you were able to set overlapping availability on the Group Availability page.</li>\n</ul>','2013-11-25 12:04:08',7,'F');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_user_id` int(11) DEFAULT NULL,
  `thread_id` int(11) DEFAULT NULL,
  `content` text,
  `create_date` timestamp NULL DEFAULT NULL,
  `delete_flag` varchar(1) DEFAULT 'F',
  `delete_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (38,7,18,'this is new content for a post test','2012-11-24 14:02:38','F',NULL),(39,7,18,' A new post','2012-11-24 14:02:48','F',NULL),(40,7,18,' aksdbkqwdqw ','2012-11-24 14:03:12','F',NULL),(41,7,18,' aksdbkqwdqw ','2012-11-24 14:03:17','F',NULL),(42,7,18,' Post?','2012-11-25 22:09:51','F',NULL),(43,7,18,'dqww qwd qwdasdqw','2012-11-25 22:30:54','F',NULL),(44,7,18,'dqww qwd qwdasdqw','2012-11-25 22:31:26','F',NULL),(45,7,18,' oqjw wq qwdqqwdjwq','2012-11-25 22:36:12','F',NULL),(46,7,18,' asdqw','2012-11-25 22:37:08','F',NULL),(47,7,18,' another post','2012-11-25 22:50:22','F',NULL),(48,7,18,' asdmqw','2012-11-25 22:50:39','F',NULL),(49,7,18,' aaa','2012-11-25 22:50:56','F',NULL),(50,7,18,' asdqwdqw','2012-11-25 22:51:50','F',NULL),(51,7,18,' asdqdqw','2012-11-25 22:52:57','F',NULL),(52,7,18,' qwv qwvqwdqw','2012-11-25 22:53:03','F',NULL),(53,7,18,' zdas dqwdqw','2012-11-25 22:53:08','F',NULL),(54,7,18,' seven','2012-11-25 22:53:21','F',NULL),(55,7,18,' eight','2012-11-25 22:53:27','F',NULL),(56,7,18,' nine','2012-11-25 22:53:31','F',NULL),(57,7,18,' ten','2012-11-25 22:53:35','F',NULL),(58,7,18,' eleven','2012-11-25 22:53:41','F',NULL),(59,7,18,' twelve!','2012-11-25 22:58:00','F',NULL),(60,7,18,' another','2012-11-25 23:01:16','F',NULL),(61,7,20,' New Post!','2012-11-26 22:34:35','F',NULL),(62,7,19,' asldjwql','2012-11-26 22:36:48','F',NULL),(63,7,21,' adqwdqw','2012-11-26 22:37:09','F',NULL),(64,7,18,' sss','2012-11-26 22:37:26','F',NULL),(65,7,22,'a new post','2012-11-28 13:25:34','F',NULL),(66,7,21,' ascasacas','2012-11-28 13:27:11','F',NULL),(67,7,18,' kk','2012-11-28 22:47:02','F',NULL),(68,7,23,' qwd','2012-11-28 22:54:19','F',NULL),(69,7,18,' qwdqw','2012-11-28 22:59:50','F',NULL),(70,7,18,' new post','2012-11-28 23:02:21','F',NULL),(71,7,22,' test','2012-12-30 19:47:03','F',NULL),(72,7,25,' new post','2013-01-19 06:22:19','F',NULL),(73,7,21,'EditPostTest','2013-01-31 13:16:57','F',NULL),(74,7,21,' delete me','2013-02-03 11:41:32','T','2013-08-03 02:28:41'),(75,7,21,' asca','2013-02-21 21:08:27','F',NULL),(76,7,21,' ascascqwcqwcqw','2013-02-28 21:47:22','F',NULL),(77,7,25,' qwc qwq qw','2013-02-28 21:47:32','F',NULL),(78,7,33,'- JDBC DB Connectivity\r\n- ','2013-03-04 21:26:03','T','2013-08-03 02:28:41'),(79,7,34,' - SPRING-3</br>\r\n - Java Database Connectivity (JDBC)</br>\r\n - MVC</br>\r\n - Java Sever Page Standard Library (JSTL) </br>\r\n - MySql Database </br>\r\n - Super Basic HTML (Hard coded CSS)</br>\r\n - Log4J logging (basic setup) </br>','2013-03-04 21:33:45','F',NULL),(80,7,34,' - Spring Security (preventing deletion/edit of items)','2013-03-04 21:38:01','F',NULL),(81,7,36,' - Re-factored pages for cleaner HTML/CSS','2013-03-04 22:07:07','F',NULL),(82,7,35,' - Why have a forum that does not have any content? All details of the forum project will go into the forum.','2013-03-04 22:08:32','F',NULL),(83,7,37,' -The HTML cleanup has meant the removal of pages from all views </br>\r\n -The PageNavi will need to be added back onto CategoryView,TopicView and ThreadView.','2013-03-04 22:14:52','F',NULL),(84,7,38,' - The HTML re-factor has also removed the ability to add items.','2013-03-04 22:17:38','F',NULL),(85,7,40,'  - Found some inconsistencies in the way the PageNavi attributes are retrieved.','2013-03-05 23:32:46','F',NULL),(86,7,34,' - Pages on each view','2013-03-05 23:34:20','F',NULL),(87,7,41,' - There is no indication of when a item is created. </br>\r\n - It would be good to append the create date in a smaller font (pushed to the right)','2013-03-05 23:38:03','F',NULL),(88,7,45,' -Removed Category_Category view </br>\n -Each Controller now has one doGet method. </br>\n -Deletes and Adds have been added to the admin controller','2013-03-17 14:56:47','F',NULL),(89,7,45,'-Removed views from database, SQL is now only changable in the code.','2013-03-17 18:42:24','F',NULL),(90,7,45,' - Now able to add posts again','2013-03-18 22:19:05','F',NULL),(92,7,44,' - Topics and threads are now orders by the last post date of the threads.','2013-03-18 23:17:32','F',NULL),(93,7,46,' - Delete components added to Post Item, Thread Item and Topic item. <br>\r\n - Edit components added to Thread Item and Topic Item. <br>\r\n - Edit item not added to Post Item.','2013-05-07 21:30:48','F',NULL),(94,7,34,' test item to delete','2013-05-07 22:08:56','T','2013-08-03 02:28:41'),(95,7,46,' - Edit items currently does nothing.','2013-05-07 22:27:19','F',NULL),(96,7,46,'- Edit items now function correctly.','2013-05-08 19:49:07','F',NULL),(97,7,49,' new post','2013-05-09 20:47:05','T','2013-08-03 02:28:41'),(98,7,50,' c','2013-05-09 20:50:40','T','2013-08-03 02:28:41'),(99,7,50,' a','2013-05-09 21:01:30','T','2013-08-03 02:28:41'),(100,7,46,'-Add Topic added. <br>\r\n-Add Thread added.','2013-05-09 21:26:38','F',NULL),(101,7,51,'- Topics can be added/edited/deleted.<br>\r\n- Threads can be added/edited/deleted.<br>\r\n- Posts can be added or deleted.','2013-05-09 21:29:08','F',NULL),(102,7,54,'- VIEW/EDIT toggle button on the page navigation row.','2013-05-12 21:25:07','F',NULL),(103,7,55,'- Currently one user of this forum (me).<br>\r\n- Users need to be able to request access.','2013-05-12 21:27:53','F',NULL),(104,7,57,'- The ability to transfer topics and threads to other categories/topics.','2013-05-12 21:31:32','F',NULL),(105,7,59,' 1','2013-05-12 21:38:01','F',NULL),(106,7,59,' 2','2013-05-12 21:38:03','F',NULL),(107,7,59,' 3','2013-05-12 21:38:05','F',NULL),(108,7,59,' 4','2013-05-12 21:38:07','F',NULL),(109,7,59,' 5','2013-05-12 21:38:09','F',NULL),(110,7,59,' 6','2013-05-12 21:38:12','F',NULL),(111,7,59,' 7','2013-05-12 21:38:15','F',NULL),(112,7,59,' 8','2013-05-12 21:38:17','F',NULL),(113,7,59,' 9','2013-05-12 21:38:20','F',NULL),(114,7,59,' 10','2013-05-12 21:38:24','F',NULL),(115,7,59,' 11','2013-05-12 21:38:26','F',NULL),(116,7,59,' 12','2013-05-12 21:38:36','F',NULL),(117,7,65,' ascascsa','2013-05-14 19:03:43','F',NULL),(118,7,66,' ascascsa','2013-05-15 23:26:20','T','2013-08-03 02:28:41'),(119,7,67,'- User is now directed to a login screen when attempting to make changes to the forum.\r\n</b>\r\n- A registration page has also been created.\r\n</b>\r\n- These pages do not look pretty.','2013-07-09 02:25:09','T','2013-08-03 02:28:41'),(120,7,67,'- User authentication page.\r\n<b>\r\n- User registration page.\r\n<b>\r\n- Neither pages are hooked up to the website theme.','2013-07-09 02:25:55','T','2013-08-03 02:28:41'),(121,7,67,' - User authentication page. \r\n</br>\r\n- User registration page. \r\n</br>\r\n- Neither pages are hooked up to the website theme.','2013-07-09 02:26:16','F',NULL),(122,7,67,'- Login page now authenticates against the database.','2013-07-25 14:56:14','F',NULL),(123,7,51,'- New users can go to the registration page and create an account.\r\n- Existing users can login.','2013-07-25 15:00:17','F',NULL),(124,7,68,' another test','2013-08-02 23:30:52','F',NULL),(125,9,69,'another test','2013-08-02 23:33:37','F',NULL),(126,9,67,'- Logged in identifier on top right of each page.\r\n</br>\r\n- The correct user is used when adding a post to a thread.','2013-08-03 01:46:57','F',NULL),(127,9,67,'- Adding threads and topics now uses the correct create user ID.','2013-08-03 02:23:05','F',NULL),(128,9,46,'- Delete date is now set when deleting items','2013-08-03 02:29:55','F',NULL),(129,9,71,'- test','2013-08-03 02:36:29','F',NULL),(130,7,71,' -test','2013-08-03 02:36:47','F',NULL),(131,9,72,'- Currently, click on the login button directs the user to the category page and does not redirect to the original page.','2013-08-03 02:42:15','F',NULL),(132,7,75,'-Users cannot see threads unless they are signed in.','2013-08-03 23:03:48','F',NULL),(133,7,77,'- View/Edit option should not be available if the user is not an admin.\r\n</br>\r\n- User should not get the option to delete items.','2013-08-03 23:09:39','F',NULL),(134,9,74,' test','2013-08-04 03:10:04','T','2013-08-04 03:10:06'),(135,18,61,' teste','2013-08-06 03:48:20','T','2013-08-06 03:48:24'),(136,7,79,' a','2013-08-28 15:10:52','F',NULL),(137,7,79,' s','2013-08-28 15:10:53','F',NULL),(138,7,79,' s','2013-08-28 15:10:54','F',NULL),(139,7,79,' d','2013-08-28 15:10:56','F',NULL),(140,7,79,' s','2013-08-28 15:10:57','F',NULL),(141,7,79,' a','2013-08-28 15:10:59','F',NULL),(142,7,79,' d','2013-08-28 15:11:02','F',NULL),(143,7,79,' s','2013-08-28 15:11:04','F',NULL),(144,7,79,' w','2013-08-28 15:11:07','F',NULL),(145,7,79,' e','2013-08-28 15:11:09','F',NULL),(146,7,79,' q','2013-08-28 15:11:12','F',NULL),(147,7,81,'- Top bar now sticks to the top of the page, regardless of how far the user scrolled down. This was implemented to prevent the navigation from going away when the user uses the  scheduler.','2013-08-30 22:25:32','F',NULL),(148,7,80,'Home page created. This contains news which can (at the moment) only be added via writing directly to the database.','2013-09-05 19:53:40','F',NULL),(149,7,82,'- Front end created for the scheduler.\r\n<br>\r\n- The first view allow the user to create events. All commands will be handled in AJAX.','2013-09-05 19:54:25','F',NULL),(150,7,82,'- User is able to add events. Commands are handled in AJAX.','2013-09-08 23:48:07','F',NULL),(151,7,82,' test','2013-09-10 00:51:36','T','2013-09-10 00:51:38'),(152,7,82,'- Days at the top of the calendar are dynamically changed on the client side.\r\n<br>\r\n- Slots now carry over to the next day','2013-09-10 00:52:53','F',NULL),(153,7,83,'- Homepage added with a new News section.\r\n<br>\r\n- Scheduler added to allow the users to state when they are available to play the game.','2013-09-10 00:56:43','F',NULL),(154,7,83,'- Scheduler allows users to see who is available to play games in the up coming week and how many people is required to make a complete team (5).','2013-09-15 22:01:43','F',NULL),(155,7,82,'-My Matches page created\r\n<br>\r\n-Displays all matches that will be taking place in the future, including everyone who is apart of their group.','2013-09-20 15:07:45','F',NULL),(156,7,85,' - the site has been given a thorough redesign with the use of gradients, hierarchical components and CSS.','2013-09-20 15:10:55','F',NULL),(157,7,83,'- The scheduler also allows the user to view who they will be teaming up with in the next week.','2013-09-20 15:13:30','F',NULL),(158,7,86,' asdlkasndlkwn\r\n asdlkasndlkwn\r\n asdlkasndlkwn\r\n<br>\r\n asdlkasndlkwn\r\n asdlkasndlkwn\r\n asdlkasndlkwn\r\n<br>\r\n asdlkasndlkwn\r\n asdlkasndlkwn\r\n asdlkasndlkwn\r\n<br>\r\n asdlkasndlkwn\r\n asdlkasndlkwn\r\n asdlkasndlkwn\r\n<br>\r\n asdlkasndlkwn\r\n asdlkasndlkwn\r\n asdlkasndlkwn\r\n<br>\r\n asdlkasndlkwn\r\n asdlkasndlkwn\r\n asdlkasndlkwn\r\n<br>\r\n asdlkasndlkwn\r\n asdlkasndlkwn\r\n asdlkasndlkwn\r\n<br>\r\n asdlkasndlkwn\r\n asdlkasndlkwn\r\n asdlkasndlkwn\r\n<br>\r\n asdlkasndlkwn\r\n asdlkasndlkwn\r\n asdlkasndlkwn\r\n<br>\r\n asdlkasndlkwn\r\n asdlkasndlkwn\r\n asdlkasndlkwn\r\n<br>\r\n asdlkasndlkwn\r\n asdlkasndlkwn\r\n asdlkasndlkwn\r\n<br>\r\n asdlkasndlkwn\r\n asdlkasndlkwn\r\n asdlkasndlkwn\r\n<br>\r\n asdlkasndlkwn\r\n asdlkasndlkwn\r\n asdlkasndlkwn\r\n<br>\r\n asdlkasndlkwn\r\n asdlkasndlkwn\r\n asdlkasndlkwn\r\n<br>\r\n asdlkasndlkwn\r\n asdlkasndlkwn\r\n asdlkasndlkwn\r\n<br>\r\n','2013-09-21 21:06:16','F',NULL),(159,7,87,' asdas\r\n<br>\r\n asdas\r\n<br>\r\n asdas\r\n<br>\r\n asdas\r\n<br>\r\n asdas\r\n<br>\r\n asdas\r\n<br>\r\n asdas\r\n<br>\r\n asdas\r\n<br>\r\n asdas\r\n<br>\r\n asdas\r\n<br>\r\n asdas\r\n<br>\r\n asdas\r\n<br>','2013-09-22 12:49:27','F',NULL),(160,7,87,' asc','2013-09-22 13:24:21','F',NULL),(161,7,87,' ascas','2013-09-22 13:24:23','F',NULL),(162,7,87,' ascas','2013-09-22 13:24:25','F',NULL),(163,7,87,' cqwcqw','2013-09-22 13:24:27','F',NULL),(164,7,87,' qwdqdqw','2013-09-22 13:24:29','F',NULL),(165,7,87,' qwdqwdqw','2013-09-22 13:24:32','F',NULL),(166,7,87,' dqwdqwd','2013-09-22 13:24:35','F',NULL),(167,7,87,' qwdqwdasdqd w','2013-09-22 13:24:39','F',NULL),(168,7,87,' dqwdqwdwq','2013-09-22 13:24:43','F',NULL),(169,7,87,' qwdqwdqw','2013-09-22 13:24:46','F',NULL),(170,7,85,' - Scheduler landing page added. Just three more pages needed for a redesign.','2013-09-22 14:51:01','F',NULL),(171,7,88,' - Will need to be able to:\r\n<ul>\r\n<li>Remove availability</li>\r\n<li>Adjust the time entered to the timezone of the user</li>\r\n</ul>','2013-09-22 15:32:27','F',NULL),(172,7,85,' - Redesign Complete.','2013-09-25 12:41:21','F',NULL),(173,7,89,' test','2013-11-18 01:11:51','T','2013-11-18 01:11:52'),(174,7,89,'- User can now remove their availability on the User Availability page.','2013-11-18 01:12:26','F',NULL),(175,7,90,'- A default timezone has been applied to each user account (+5 GMT, NY Time). This adjusts the dates on the scheduler. This was implemented to allow users to schedule matches under different timezones.<br>\r\n- I initially used Group Availability as a place to test out Sqlite. The SQL was used to determine how the screen looked. This made the page unresponsive as a consequence. This was replaced with a simpler design that makes it very responsive. <br>\r\n- Another constraint was added to the Group Availability page to prevent the user assigning themselves to a slot that started during a slot they have already assigned themselves to.','2013-11-25 12:12:13','F',NULL);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thread`
--

DROP TABLE IF EXISTS `thread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thread` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_user_id` int(11) DEFAULT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `content` text,
  `views` int(11) DEFAULT NULL,
  `delete_flag` varchar(1) DEFAULT 'F',
  `delete_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thread`
--

LOCK TABLES `thread` WRITE;
/*!40000 ALTER TABLE `thread` DISABLE KEYS */;
INSERT INTO `thread` VALUES (18,7,13,'new thread test',0,'F',NULL),(19,7,13,'Another Post',0,'F',NULL),(20,7,13,'Another post 2',0,'F',NULL),(21,7,14,'EditPostContainer',0,'T','2013-08-02 22:28:45'),(22,7,15,'a new thread',0,'F',NULL),(23,7,17,'qwd',0,'F',NULL),(24,7,18,'new topic',0,'T','2013-08-02 22:28:45'),(25,7,18,'new thread',0,'T','2013-08-02 22:28:45'),(26,7,14,'delete me',0,'T','2013-08-02 22:28:45'),(27,7,18,'Password Encryption',0,'F',NULL),(28,7,18,'Admin buttons on pages',0,'T','2013-08-02 22:28:45'),(29,7,18,'Database Authentication',0,'T',NULL),(30,7,18,'User Item Permissions',0,'T','2013-11-25 07:12:41'),(31,7,18,'User Registration',0,'T','2013-08-02 22:28:45'),(32,7,18,'User Roles',0,'T','2013-11-25 07:12:49'),(34,7,14,'(1.0) Fundamental Framework',0,'F',NULL),(35,7,22,'Meaningful content in the forum',0,'F',NULL),(36,7,22,'HTML cleanup',NULL,'F',NULL),(37,7,23,'Re-enable page control',NULL,'T','2013-08-02 22:28:45'),(38,7,23,'Re-enable add items',NULL,'T','2013-08-02 22:28:45'),(39,7,18,'Embed forum into a basic website',NULL,'T',NULL),(40,7,22,'Re-enable pages on views',NULL,'F',NULL),(41,7,23,'Add create date to items',NULL,'F',NULL),(42,7,18,'Order by dropdown box (AJAX)',NULL,'T','2013-08-02 22:28:45'),(43,7,18,'Order by dropdown box (Javascript)',NULL,'T','2013-09-20 11:12:19'),(44,7,22,'Order items by last updated',NULL,'F',NULL),(45,7,22,'Code Refactor',0,'F',NULL),(46,7,22,'Admin items added',0,'F',NULL),(47,7,22,'new thread',0,'T','2013-08-02 22:28:45'),(48,7,22,'test',0,'T','2013-08-02 22:28:45'),(49,7,25,'new thread',0,'F',NULL),(50,7,22,'a',0,'T','2013-08-02 22:28:45'),(51,7,14,'(1.5) Basic Forum Functionality',0,'F',NULL),(52,7,23,'Switch between navigate/edit mode without having to request the page',0,'T','2013-08-02 22:28:45'),(53,7,23,'Html component abstraction for CSS templates',0,'T','2013-11-25 07:13:18'),(54,7,22,'Switch between navigate/edit mode',0,'F',NULL),(55,7,23,'Registration page',0,'T','2013-08-02 22:28:45'),(56,7,27,'Going to a category view (without topics) throws an error page',0,'T','2013-08-28 11:09:16'),(57,7,18,'Topic/Thread moving',0,'F',NULL),(58,7,27,'Toggle mode changes row height',0,'T','2013-08-28 11:09:23'),(59,7,27,'test',0,'T','2013-08-02 22:28:45'),(60,7,27,'Page numbers no longer work',0,'T','2013-11-25 07:13:39'),(61,7,27,'Incorrect number of threads on Category View',0,'F',NULL),(62,7,23,'Log-in page',0,'T','2013-08-02 22:28:45'),(63,7,28,'new thread asdas',0,'F',NULL),(64,7,29,'new thread 2',0,'T','2013-08-02 22:28:45'),(65,7,29,'new thread',0,'F',NULL),(66,7,27,'tes',0,'T','2013-08-02 22:28:45'),(67,7,22,'User authentication',0,'F',NULL),(68,7,27,'test',0,'T','2013-08-02 22:28:45'),(69,7,27,'test',0,'T','2013-08-02 22:28:45'),(70,9,42,'test make',0,'F',NULL),(71,7,43,'test thread edit',0,'F',NULL),(72,9,23,'Login redirects',0,'F',NULL),(73,9,23,'Banner, Icon and flavico',0,'F',NULL),(74,9,23,'User profile page',0,'F',NULL),(75,9,22,'Anonymous users cannot read threads',0,'F',NULL),(76,7,22,'Error page added to theme',0,'F',NULL),(77,7,23,'Hide admin items if user is not admin',0,'T','2013-09-09 20:54:54'),(78,7,23,'Create a custom security filter',0,'T','2013-11-25 07:13:27'),(79,7,27,'testy',0,'T','2013-08-28 11:12:19'),(80,7,22,'Home page added',0,'F',NULL),(81,7,22,'Sticky topbar',0,'F',NULL),(82,7,22,'Match scheduler added',0,'F',NULL),(83,7,14,'(2.0) Homepage and Scheduler',0,'F',NULL),(84,7,27,'test',0,'T','2013-09-20 10:42:04'),(85,7,22,'HTML cleanup 2',0,'F',NULL),(86,7,27,'test',0,'T','2013-09-22 08:14:55'),(87,7,27,'test',0,'T','2013-09-22 09:28:19'),(88,7,18,'Scheduler Changes',0,'T','2013-11-25 07:12:30'),(89,7,22,'Remove availability added',0,'F',NULL),(90,10,22,'Timezones, refactor and overlapping bug fix.',0,'F',NULL),(91,7,23,'Set timezone on userprofile page.',0,'F',NULL),(92,7,23,'Registration back-end validation',0,'F',NULL);
/*!40000 ALTER TABLE `thread` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topic`
--

DROP TABLE IF EXISTS `topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_user_id` int(11) DEFAULT NULL,
  `content` text,
  `category_id` int(11) DEFAULT NULL,
  `delete_flag` varchar(1) DEFAULT 'F',
  `delete_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topic`
--

LOCK TABLES `topic` WRITE;
/*!40000 ALTER TABLE `topic` DISABLE KEYS */;
INSERT INTO `topic` VALUES (13,7,'new topic name',27,'T',NULL),(14,7,'Version Details',27,'F',NULL),(15,7,'a new topic',29,'F',NULL),(16,7,'gerw',31,'F',NULL),(17,7,'asd',32,'F',NULL),(18,7,'Ideas',27,'F',NULL),(19,7,'asd',34,'F',NULL),(20,7,'emilys topic',36,'F',NULL),(21,7,'emilys topic wqe',36,'F',NULL),(22,7,'Progress log',27,'F',NULL),(23,7,'What\'s next on the todo list?',27,'F',NULL),(24,7,'ascqw',27,'T',NULL),(25,7,'new topic',27,'T',NULL),(26,7,'new topic',27,'T',NULL),(27,7,'Bugs',27,'F',NULL),(28,7,'new topic',27,'T',NULL),(29,7,'new topic 2',27,'T',NULL),(30,7,'new topic',27,'T',NULL),(31,7,'new topic',27,'T',NULL),(32,7,'new topic',27,'T',NULL),(33,7,'del me',27,'T',NULL),(34,7,'test',27,'T',NULL),(35,7,'delme',27,'T',NULL),(36,7,'delme',27,'T',NULL),(37,7,'delme',27,'T',NULL),(38,7,'new item',27,'T',NULL),(39,7,'new topic',27,'T',NULL),(40,7,'test',27,'T',NULL),(41,7,'test',27,'T',NULL),(42,9,'test make',27,'T',NULL),(43,7,'test',27,'T',NULL),(44,7,'new topic',27,'T','2013-09-20 10:07:32');
/*!40000 ALTER TABLE `topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `thumbnail_uri` varchar(100) DEFAULT '/img/defaultavatar.bmp',
  `create_date` date DEFAULT NULL,
  `delete_flag` varchar(1) DEFAULT 'F',
  `delete_date` datetime DEFAULT NULL,
  `password` text,
  `enabled` tinyint(1) DEFAULT '1',
  `timezoneOffset` int(11) NOT NULL DEFAULT '5',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (7,'Renedix','/img/defaultavatar.bmp','2012-11-12','F',NULL,'password',1,0),(8,'Gopheer','/img/defaultavatar.bmp','2012-11-12','F',NULL,'password',1,0),(9,'Lokeakala','/img/defaultavatar.bmp','2012-11-12','F',NULL,'password',1,0),(10,'Niteshade','/img/defaultavatar.bmp','2012-11-12','F',NULL,'password',1,0),(15,'anewaccount','/img/defaultavatar.bmp','2013-07-08','F',NULL,'anewaccount',1,0),(17,'Renedix2','/img/defaultavatar.bmp','2013-07-25','F',NULL,'13qe13',1,0),(18,'NormalAccount','/img/defaultavatar.bmp','2013-08-03','F',NULL,'password',1,0),(26,'null','/img/defaultavatar.bmp','2013-09-22','F',NULL,'null',1,0),(27,'DamiensTest','/img/defaultavatar.bmp','2013-09-25','F',NULL,'password',1,0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_availability`
--

DROP TABLE IF EXISTS `user_availability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_availability` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP` timestamp NULL DEFAULT NULL,
  `USER_ID` int(11) NOT NULL,
  `INSERT_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=544 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_availability`
--

LOCK TABLES `user_availability` WRITE;
/*!40000 ALTER TABLE `user_availability` DISABLE KEYS */;
INSERT INTO `user_availability` VALUES (254,'2013-09-17 04:00:00',7,'2013-09-16 01:54:16'),(255,'2013-09-17 04:00:00',17,'2013-09-16 01:54:24'),(256,'2013-09-17 04:00:00',18,'2013-09-16 02:16:26'),(257,'2013-09-18 05:15:00',18,'2013-09-16 02:16:42'),(259,'2013-09-17 04:00:00',9,'2013-09-16 10:51:26'),(260,'2013-09-17 04:00:00',8,'2013-09-16 10:51:45'),(262,'2013-09-18 04:00:00',8,'2013-09-16 11:22:54'),(263,'2013-09-18 04:00:00',7,'2013-09-16 11:23:08'),(264,'2013-09-19 09:00:00',7,'2013-09-16 22:54:53'),(265,'2013-09-19 09:00:00',17,'2013-09-17 00:57:12'),(269,'2013-09-19 09:00:00',8,'2013-09-17 01:16:10'),(270,'2013-09-18 05:15:00',8,'2013-09-17 01:17:19'),(271,'2013-09-20 05:00:00',8,'2013-09-17 01:29:45'),(272,'2013-09-20 06:30:00',8,'2013-09-17 01:29:46'),(273,'2013-09-20 08:00:00',8,'2013-09-17 01:29:47'),(274,'2013-09-20 09:30:00',8,'2013-09-17 01:29:47'),(275,'2013-09-18 05:15:00',7,'2013-09-17 01:31:19'),(276,'2013-09-18 05:15:00',9,'2013-09-17 01:48:41'),(277,'2013-09-19 09:00:00',9,'2013-09-17 01:48:43'),(278,'2013-09-18 04:00:00',9,'2013-09-17 11:09:10'),(279,'2013-09-20 05:00:00',9,'2013-09-17 11:23:48'),(280,'2013-09-18 04:00:00',17,'2013-09-17 11:24:18'),(281,'2013-09-20 05:00:00',7,'2013-09-17 11:44:57'),(282,'2013-09-20 06:30:00',7,'2013-09-17 11:58:39'),(283,'2013-09-21 04:15:00',7,'2013-09-20 14:56:54'),(284,'2013-09-22 05:00:00',7,'2013-09-20 15:19:26'),(285,'2013-09-21 07:30:00',7,'2013-09-20 15:19:28'),(287,'2013-09-22 10:30:00',7,'2013-09-20 15:19:32'),(295,'2013-09-27 06:00:00',15,'2013-09-24 17:38:58'),(296,'2013-09-27 06:00:00',7,'2013-09-24 17:54:40'),(297,'2013-09-26 06:00:00',7,'2013-09-24 17:54:56'),(298,'2013-09-27 06:00:00',9,'2013-09-24 17:55:27'),(299,'2013-09-26 06:00:00',9,'2013-09-24 17:56:00'),(300,'2013-09-28 08:45:00',9,'2013-09-24 17:56:12'),(301,'2013-09-28 06:00:00',7,'2013-09-24 17:56:28'),(302,'2013-09-29 06:00:00',7,'2013-09-24 17:56:28'),(303,'2013-09-30 06:00:00',7,'2013-09-24 17:56:29'),(304,'2013-09-25 06:00:00',7,'2013-09-24 17:56:31'),(305,'2013-09-25 06:00:00',9,'2013-09-24 17:56:54'),(306,'2013-09-28 06:00:00',9,'2013-09-24 17:56:56'),(307,'2013-09-29 06:00:00',9,'2013-09-24 17:56:57'),(308,'2013-09-30 06:00:00',9,'2013-09-24 17:56:58'),(309,'2013-09-25 05:00:00',7,'2013-09-25 00:32:23'),(310,'2013-09-28 08:45:00',7,'2013-09-25 00:34:42'),(311,'2013-09-28 07:30:00',7,'2013-09-25 00:35:55'),(312,'2013-09-28 04:30:00',7,'2013-09-25 00:35:57'),(313,'2013-09-25 13:00:00',7,'2013-09-25 11:07:24'),(314,'2013-09-28 07:30:00',9,'2013-09-25 12:16:47'),(315,'2013-09-27 06:00:00',17,'2013-09-25 12:17:27'),(316,'2013-09-28 07:30:00',17,'2013-09-25 12:17:32'),(317,'2013-09-27 06:00:00',10,'2013-09-25 12:17:53'),(318,'2013-09-28 07:30:00',10,'2013-09-25 12:25:49'),(319,'2013-09-28 04:30:00',10,'2013-09-25 12:31:27'),(320,'2013-11-12 20:30:00',7,'2013-11-12 01:42:37'),(321,'2013-11-13 18:15:00',7,'2013-11-12 01:42:39'),(322,'2013-11-13 05:00:00',9,'2013-11-12 02:36:55'),(323,'2013-11-13 06:00:00',9,'2013-11-12 02:36:56'),(324,'2013-11-13 05:00:00',7,'2013-11-12 02:37:03'),(327,'2013-11-14 09:15:00',7,'2013-11-13 02:24:47'),(440,'2013-11-19 06:00:00',10,'2013-11-18 01:29:02'),(441,'2013-11-21 06:15:00',10,'2013-11-18 01:29:04'),(442,'2013-11-20 07:30:00',10,'2013-11-18 01:29:05'),(443,'2013-11-19 10:00:00',10,'2013-11-18 01:29:09'),(444,'2013-11-22 06:15:00',10,'2013-11-18 01:29:12'),(445,'2013-11-19 07:15:00',10,'2013-11-18 01:29:12'),(451,'2013-11-20 06:00:00',18,'2013-11-18 01:30:24'),(452,'2013-11-20 07:00:00',18,'2013-11-18 01:31:35'),(453,'2013-11-20 08:00:00',18,'2013-11-18 01:31:36'),(473,'2013-11-21 05:00:00',15,'2013-11-18 02:04:36'),(477,'2013-11-19 07:00:00',15,'2013-11-18 02:12:58'),(493,'2013-11-21 07:00:00',8,'2013-11-20 02:02:29'),(495,'2013-11-21 08:00:00',9,'2013-11-20 02:02:53'),(497,'2013-11-21 08:00:00',8,'2013-11-20 02:17:28'),(498,'2013-11-21 07:30:00',10,'2013-11-20 02:18:00'),(501,'2013-11-26 07:15:00',8,'2013-11-24 23:25:13'),(502,'2013-11-26 08:15:00',8,'2013-11-24 23:25:14'),(522,'2013-11-26 07:00:00',18,'2013-11-25 01:14:10'),(523,'2013-11-26 07:00:00',17,'2013-11-25 01:14:48'),(531,'2013-11-26 04:00:00',15,'2013-11-25 02:20:56'),(536,'2013-11-30 00:00:00',7,'2013-11-28 17:48:59'),(537,'2013-11-30 00:45:00',7,'2013-11-28 17:49:00'),(538,'2013-11-30 01:30:00',7,'2013-11-28 17:49:01'),(542,'2013-11-30 01:45:00',8,'2013-11-28 17:49:53'),(543,'2013-12-06 05:00:00',7,'2013-12-05 01:34:44');
/*!40000 ALTER TABLE `user_availability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `authority` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_user_roles` (`user_id`),
  CONSTRAINT `FK_user_roles` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,7,'admin'),(2,9,'admin'),(3,9,'user'),(4,7,'user'),(5,18,'user'),(6,10,'user'),(7,10,'admin'),(8,8,'user'),(9,8,'admin'),(10,17,'user'),(11,17,'admin'),(12,15,'user'),(17,26,'user'),(18,27,'user');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-12-08 20:05:37
