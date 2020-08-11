-- MySQL dump 10.16  Distrib 10.1.44-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: merryparty
-- ------------------------------------------------------
-- Server version	10.1.44-MariaDB-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `oc_address`
--

DROP TABLE IF EXISTS `oc_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_address`
--

LOCK TABLES `oc_address` WRITE;
/*!40000 ALTER TABLE `oc_address` DISABLE KEYS */;
INSERT INTO `oc_address` VALUES (3,8,'Сергій','Скупов','','Бульвар Вацлава Гавела','Бульвар Вацлава Гавела','Київ','03126',220,3490,'');
/*!40000 ALTER TABLE `oc_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_api`
--

DROP TABLE IF EXISTS `oc_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_api`
--

LOCK TABLES `oc_api` WRITE;
/*!40000 ALTER TABLE `oc_api` DISABLE KEYS */;
INSERT INTO `oc_api` VALUES (1,'Default','gRhvOhPhNcnuVsChZDml0UVra0HHi5Ja59mZUeDAwIEKrl4ordTLmKY9r7VgL8RVwCrgU7DvLQpvWqthlbSpI3wJVGKUPOr1yIMBTm5AS7sF2yzfk84Jv1VT1KLSmuqxWng1nxo28YbLvHrOKe5ui0RNAdycRLr5FItlNg6rrFnFQAmwrqMI15iKIrMoilIFOcppYx1XT7HodVDr5WoMagA6vIreHrcuOtvcIgAvORuvMStRNPmytrpl7l3b560P',1,'2020-03-30 15:24:10','2020-04-25 15:14:31');
/*!40000 ALTER TABLE `oc_api` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_api_ip`
--

DROP TABLE IF EXISTS `oc_api_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`api_ip_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_api_ip`
--

LOCK TABLES `oc_api_ip` WRITE;
/*!40000 ALTER TABLE `oc_api_ip` DISABLE KEYS */;
INSERT INTO `oc_api_ip` VALUES (3,1,'::1'),(4,1,'178.133.61.43'),(5,1,'176.36.151.216');
/*!40000 ALTER TABLE `oc_api_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_api_session`
--

DROP TABLE IF EXISTS `oc_api_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_session_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_api_session`
--

LOCK TABLES `oc_api_session` WRITE;
/*!40000 ALTER TABLE `oc_api_session` DISABLE KEYS */;
INSERT INTO `oc_api_session` VALUES (12,1,'567ae915e1a5ee3754e9eef7c6','::1','2020-05-26 19:36:37','2020-05-26 19:36:37'),(11,1,'102991a8d9bbb39890c523405b','::1','2020-05-26 19:31:55','2020-05-26 19:31:55'),(10,1,'b9d2faefc32803a152deb24a3a','::1','2020-04-21 13:13:17','2020-04-21 13:13:17'),(9,1,'9ac5d509193a86d9c52d0c2eec','::1','2020-04-18 13:43:44','2020-04-18 13:44:06'),(13,1,'7aef7fcc3ed37b764cd203553b','178.133.61.43','2020-07-20 17:19:15','2020-07-20 17:19:15'),(14,1,'671fe504099743f209607383dc','176.36.151.216','2020-07-25 09:55:53','2020-07-25 09:55:53');
/*!40000 ALTER TABLE `oc_api_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute`
--

DROP TABLE IF EXISTS `oc_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute`
--

LOCK TABLES `oc_attribute` WRITE;
/*!40000 ALTER TABLE `oc_attribute` DISABLE KEYS */;
INSERT INTO `oc_attribute` VALUES (1,6,1),(2,6,5),(3,6,3),(4,3,1),(5,3,2),(6,3,3),(7,3,4),(8,3,5),(9,3,6),(10,3,7),(11,3,8);
/*!40000 ALTER TABLE `oc_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_description`
--

DROP TABLE IF EXISTS `oc_attribute_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_description`
--

LOCK TABLES `oc_attribute_description` WRITE;
/*!40000 ALTER TABLE `oc_attribute_description` DISABLE KEYS */;
INSERT INTO `oc_attribute_description` VALUES (1,1,'Description'),(2,1,'No. of Cores'),(4,1,'test 1'),(5,1,'test 2'),(6,1,'test 3'),(7,1,'test 4'),(8,1,'test 5'),(9,1,'test 6'),(10,1,'test 7'),(11,1,'test 8'),(3,1,'Clockspeed'),(1,2,'Description'),(2,2,'No. of Cores'),(4,2,'test 1'),(5,2,'test 2'),(6,2,'test 3'),(7,2,'test 4'),(8,2,'test 5'),(9,2,'test 6'),(10,2,'test 7'),(11,2,'test 8'),(3,2,'Clockspeed'),(1,3,'Description'),(2,3,'No. of Cores'),(4,3,'test 1'),(5,3,'test 2'),(6,3,'test 3'),(7,3,'test 4'),(8,3,'test 5'),(9,3,'test 6'),(10,3,'test 7'),(11,3,'test 8'),(3,3,'Clockspeed');
/*!40000 ALTER TABLE `oc_attribute_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_group`
--

DROP TABLE IF EXISTS `oc_attribute_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_group`
--

LOCK TABLES `oc_attribute_group` WRITE;
/*!40000 ALTER TABLE `oc_attribute_group` DISABLE KEYS */;
INSERT INTO `oc_attribute_group` VALUES (3,2),(4,1),(5,3),(6,4);
/*!40000 ALTER TABLE `oc_attribute_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_group_description`
--

DROP TABLE IF EXISTS `oc_attribute_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_group_description`
--

LOCK TABLES `oc_attribute_group_description` WRITE;
/*!40000 ALTER TABLE `oc_attribute_group_description` DISABLE KEYS */;
INSERT INTO `oc_attribute_group_description` VALUES (3,1,'Memory'),(4,1,'Technical'),(5,1,'Motherboard'),(6,1,'Processor'),(3,2,'Memory'),(4,2,'Technical'),(5,2,'Motherboard'),(6,2,'Processor'),(3,3,'Memory'),(4,3,'Technical'),(5,3,'Motherboard'),(6,3,'Processor');
/*!40000 ALTER TABLE `oc_attribute_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_banner`
--

DROP TABLE IF EXISTS `oc_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_banner`
--

LOCK TABLES `oc_banner` WRITE;
/*!40000 ALTER TABLE `oc_banner` DISABLE KEYS */;
INSERT INTO `oc_banner` VALUES (6,'HP Products',1),(7,'Home Page Slideshow',1),(8,'Manufacturers',1);
/*!40000 ALTER TABLE `oc_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_banner_image`
--

DROP TABLE IF EXISTS `oc_banner_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_banner_image`
--

LOCK TABLES `oc_banner_image` WRITE;
/*!40000 ALTER TABLE `oc_banner_image` DISABLE KEYS */;
INSERT INTO `oc_banner_image` VALUES (79,7,1,'iPhone 6','index.php?route=product/product&amp;path=57&amp;product_id=49','catalog/demo/banners/iPhone6.jpg',0),(87,6,1,'HP Banner','index.php?route=product/manufacturer/info&amp;manufacturer_id=7','catalog/demo/compaq_presario.jpg',0),(94,8,1,'NFL','','catalog/demo/manufacturer/nfl.png',0),(95,8,1,'RedBull','','catalog/demo/manufacturer/redbull.png',0),(96,8,1,'Sony','','catalog/demo/manufacturer/sony.png',0),(91,8,1,'Coca Cola','','catalog/demo/manufacturer/cocacola.png',0),(92,8,1,'Burger King','','catalog/demo/manufacturer/burgerking.png',0),(93,8,1,'Canon','','catalog/demo/manufacturer/canon.png',0),(88,8,1,'Harley Davidson','','catalog/demo/manufacturer/harley.png',0),(89,8,1,'Dell','','catalog/demo/manufacturer/dell.png',0),(90,8,1,'Disney','','catalog/demo/manufacturer/disney.png',0),(80,7,1,'MacBookAir','','catalog/demo/banners/MacBookAir.jpg',0),(97,8,1,'Starbucks','','catalog/demo/manufacturer/starbucks.png',0),(98,8,1,'Nintendo','','catalog/demo/manufacturer/nintendo.png',0),(99,7,2,'iPhone 6','index.php?route=product/product&amp;path=57&amp;product_id=49','catalog/demo/banners/iPhone6.jpg',0),(100,6,2,'HP Banner','index.php?route=product/manufacturer/info&amp;manufacturer_id=7','catalog/demo/compaq_presario.jpg',0),(101,8,2,'NFL','','catalog/demo/manufacturer/nfl.png',0),(102,8,2,'RedBull','','catalog/demo/manufacturer/redbull.png',0),(103,8,2,'Sony','','catalog/demo/manufacturer/sony.png',0),(104,8,2,'Coca Cola','','catalog/demo/manufacturer/cocacola.png',0),(105,8,2,'Burger King','','catalog/demo/manufacturer/burgerking.png',0),(106,8,2,'Canon','','catalog/demo/manufacturer/canon.png',0),(107,8,2,'Harley Davidson','','catalog/demo/manufacturer/harley.png',0),(108,8,2,'Dell','','catalog/demo/manufacturer/dell.png',0),(109,8,2,'Disney','','catalog/demo/manufacturer/disney.png',0),(110,7,2,'MacBookAir','','catalog/demo/banners/MacBookAir.jpg',0),(111,8,2,'Starbucks','','catalog/demo/manufacturer/starbucks.png',0),(112,8,2,'Nintendo','','catalog/demo/manufacturer/nintendo.png',0),(113,7,3,'iPhone 6','index.php?route=product/product&amp;path=57&amp;product_id=49','catalog/demo/banners/iPhone6.jpg',0),(114,6,3,'HP Banner','index.php?route=product/manufacturer/info&amp;manufacturer_id=7','catalog/demo/compaq_presario.jpg',0),(115,8,3,'NFL','','catalog/demo/manufacturer/nfl.png',0),(116,8,3,'RedBull','','catalog/demo/manufacturer/redbull.png',0),(117,8,3,'Sony','','catalog/demo/manufacturer/sony.png',0),(118,8,3,'Coca Cola','','catalog/demo/manufacturer/cocacola.png',0),(119,8,3,'Burger King','','catalog/demo/manufacturer/burgerking.png',0),(120,8,3,'Canon','','catalog/demo/manufacturer/canon.png',0),(121,8,3,'Harley Davidson','','catalog/demo/manufacturer/harley.png',0),(122,8,3,'Dell','','catalog/demo/manufacturer/dell.png',0),(123,8,3,'Disney','','catalog/demo/manufacturer/disney.png',0),(124,7,3,'MacBookAir','','catalog/demo/banners/MacBookAir.jpg',0),(125,8,3,'Starbucks','','catalog/demo/manufacturer/starbucks.png',0),(126,8,3,'Nintendo','','catalog/demo/manufacturer/nintendo.png',0);
/*!40000 ALTER TABLE `oc_banner_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_cart`
--

DROP TABLE IF EXISTS `oc_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_cart` (
  `cart_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_cart`
--

LOCK TABLES `oc_cart` WRITE;
/*!40000 ALTER TABLE `oc_cart` DISABLE KEYS */;
INSERT INTO `oc_cart` VALUES (73,0,8,'ec52df73ad4788e4eebcd47b35',58,0,'[]',1,'2020-07-20 18:17:11'),(137,0,0,'047c8b80805aab223053ac0b63',58,0,'[]',30,'2020-07-28 09:49:47');
/*!40000 ALTER TABLE `oc_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category`
--

DROP TABLE IF EXISTS `oc_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category`
--

LOCK TABLES `oc_category` WRITE;
/*!40000 ALTER TABLE `oc_category` DISABLE KEYS */;
INSERT INTO `oc_category` VALUES (62,'',0,0,1,0,1,'2020-04-08 18:15:22','2020-05-05 11:14:15'),(63,'',0,0,1,0,1,'2020-04-27 18:51:48','2020-05-05 10:41:50'),(60,'catalog/balloons/sphere/_18/bubble-r18-007.png',0,0,1,0,1,'2020-04-08 15:46:59','2020-05-05 10:41:35'),(61,'catalog/balloons/figure/anagram-07255.png',0,0,1,0,1,'2020-04-08 15:54:57','2020-05-05 10:41:08'),(59,'',0,0,1,0,1,'2020-04-08 15:28:00','2020-05-05 10:41:43'),(-1,'',0,1,1,0,0,'2020-04-07 18:13:16','2020-04-08 18:51:58');
/*!40000 ALTER TABLE `oc_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_description`
--

DROP TABLE IF EXISTS `oc_category_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_description`
--

LOCK TABLES `oc_category_description` WRITE;
/*!40000 ALTER TABLE `oc_category_description` DISABLE KEYS */;
INSERT INTO `oc_category_description` VALUES (59,1,'Latex balloon','&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','latex_balloon','',''),(62,1,'All products','','All products','',''),(62,2,'Все товары','','All products','',''),(62,3,'Всі товари','','All products','',''),(-1,3,'All','','All','',''),(60,3,'Сфера','','sphere','',''),(60,2,'Сфера','','sphere','',''),(60,1,'Sphere','','sphere','',''),(61,3,'Фігура','','foil','',''),(61,2,'Фигура','','foil','',''),(61,1,'Figure','','foil','',''),(63,1,'Foil ','','foil','',''),(63,2,'Фольга','','foil','',''),(63,3,'Фольга','','foil','',''),(59,2,'Латексный шарик','&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','latex_balloon','',''),(59,3,'Латексна кулька','&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','latex_balloon','',''),(-1,1,'All','','All','',''),(-1,2,'All','','All','','');
/*!40000 ALTER TABLE `oc_category_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_filter`
--

DROP TABLE IF EXISTS `oc_category_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_filter`
--

LOCK TABLES `oc_category_filter` WRITE;
/*!40000 ALTER TABLE `oc_category_filter` DISABLE KEYS */;
INSERT INTO `oc_category_filter` VALUES (-1,2),(-1,3),(-1,5),(-1,6),(-1,7),(-1,8),(-1,9),(-1,10),(-1,11),(-1,12),(59,1),(59,3),(59,4),(59,5),(59,6),(59,7),(59,8),(59,9),(60,1),(60,3),(60,4),(60,5),(60,6),(60,7),(60,8),(60,10),(60,11),(61,2),(61,3),(61,4),(61,5),(61,6),(61,7),(61,8),(61,9),(62,2),(62,3),(62,4),(62,5),(62,6),(62,7),(62,8),(62,10),(62,11),(62,12),(63,1),(63,2),(63,3),(63,4),(63,7),(63,8),(63,9),(63,10),(63,11);
/*!40000 ALTER TABLE `oc_category_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_path`
--

DROP TABLE IF EXISTS `oc_category_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_path`
--

LOCK TABLES `oc_category_path` WRITE;
/*!40000 ALTER TABLE `oc_category_path` DISABLE KEYS */;
INSERT INTO `oc_category_path` VALUES (61,61,0),(60,60,0),(63,63,0),(62,62,0),(59,59,0),(-1,-1,0);
/*!40000 ALTER TABLE `oc_category_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_to_layout`
--

DROP TABLE IF EXISTS `oc_category_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_to_layout`
--

LOCK TABLES `oc_category_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_category_to_layout` DISABLE KEYS */;
INSERT INTO `oc_category_to_layout` VALUES (62,0,0),(61,0,0),(60,0,0),(59,0,0),(-1,0,0),(63,0,0);
/*!40000 ALTER TABLE `oc_category_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_to_store`
--

DROP TABLE IF EXISTS `oc_category_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_to_store`
--

LOCK TABLES `oc_category_to_store` WRITE;
/*!40000 ALTER TABLE `oc_category_to_store` DISABLE KEYS */;
INSERT INTO `oc_category_to_store` VALUES (-1,0),(59,0),(60,0),(61,0),(62,0),(63,0);
/*!40000 ALTER TABLE `oc_category_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_country`
--

DROP TABLE IF EXISTS `oc_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=258 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_country`
--

LOCK TABLES `oc_country` WRITE;
/*!40000 ALTER TABLE `oc_country` DISABLE KEYS */;
INSERT INTO `oc_country` VALUES (1,'Afghanistan','AF','AFG','',0,1),(2,'Albania','AL','ALB','',0,1),(3,'Algeria','DZ','DZA','',0,1),(4,'American Samoa','AS','ASM','',0,1),(5,'Andorra','AD','AND','',0,1),(6,'Angola','AO','AGO','',0,1),(7,'Anguilla','AI','AIA','',0,1),(8,'Antarctica','AQ','ATA','',0,1),(9,'Antigua and Barbuda','AG','ATG','',0,1),(10,'Argentina','AR','ARG','',0,1),(11,'Armenia','AM','ARM','',0,1),(12,'Aruba','AW','ABW','',0,1),(13,'Australia','AU','AUS','',0,1),(14,'Austria','AT','AUT','',0,1),(15,'Azerbaijan','AZ','AZE','',0,1),(16,'Bahamas','BS','BHS','',0,1),(17,'Bahrain','BH','BHR','',0,1),(18,'Bangladesh','BD','BGD','',0,1),(19,'Barbados','BB','BRB','',0,1),(20,'Belarus','BY','BLR','',0,1),(21,'Belgium','BE','BEL','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',0,1),(22,'Belize','BZ','BLZ','',0,1),(23,'Benin','BJ','BEN','',0,1),(24,'Bermuda','BM','BMU','',0,1),(25,'Bhutan','BT','BTN','',0,1),(26,'Bolivia','BO','BOL','',0,1),(27,'Bosnia and Herzegovina','BA','BIH','',0,1),(28,'Botswana','BW','BWA','',0,1),(29,'Bouvet Island','BV','BVT','',0,1),(30,'Brazil','BR','BRA','',0,1),(31,'British Indian Ocean Territory','IO','IOT','',0,1),(32,'Brunei Darussalam','BN','BRN','',0,1),(33,'Bulgaria','BG','BGR','',0,1),(34,'Burkina Faso','BF','BFA','',0,1),(35,'Burundi','BI','BDI','',0,1),(36,'Cambodia','KH','KHM','',0,1),(37,'Cameroon','CM','CMR','',0,1),(38,'Canada','CA','CAN','',0,1),(39,'Cape Verde','CV','CPV','',0,1),(40,'Cayman Islands','KY','CYM','',0,1),(41,'Central African Republic','CF','CAF','',0,1),(42,'Chad','TD','TCD','',0,1),(43,'Chile','CL','CHL','',0,1),(44,'China','CN','CHN','',0,1),(45,'Christmas Island','CX','CXR','',0,1),(46,'Cocos (Keeling) Islands','CC','CCK','',0,1),(47,'Colombia','CO','COL','',0,1),(48,'Comoros','KM','COM','',0,1),(49,'Congo','CG','COG','',0,1),(50,'Cook Islands','CK','COK','',0,1),(51,'Costa Rica','CR','CRI','',0,1),(52,'Cote D\'Ivoire','CI','CIV','',0,1),(53,'Croatia','HR','HRV','',0,1),(54,'Cuba','CU','CUB','',0,1),(55,'Cyprus','CY','CYP','',0,1),(56,'Czech Republic','CZ','CZE','',0,1),(57,'Denmark','DK','DNK','',0,1),(58,'Djibouti','DJ','DJI','',0,1),(59,'Dominica','DM','DMA','',0,1),(60,'Dominican Republic','DO','DOM','',0,1),(61,'East Timor','TL','TLS','',0,1),(62,'Ecuador','EC','ECU','',0,1),(63,'Egypt','EG','EGY','',0,1),(64,'El Salvador','SV','SLV','',0,1),(65,'Equatorial Guinea','GQ','GNQ','',0,1),(66,'Eritrea','ER','ERI','',0,1),(67,'Estonia','EE','EST','',0,1),(68,'Ethiopia','ET','ETH','',0,1),(69,'Falkland Islands (Malvinas)','FK','FLK','',0,1),(70,'Faroe Islands','FO','FRO','',0,1),(71,'Fiji','FJ','FJI','',0,1),(72,'Finland','FI','FIN','',0,1),(74,'France, Metropolitan','FR','FRA','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(75,'French Guiana','GF','GUF','',0,1),(76,'French Polynesia','PF','PYF','',0,1),(77,'French Southern Territories','TF','ATF','',0,1),(78,'Gabon','GA','GAB','',0,1),(79,'Gambia','GM','GMB','',0,1),(80,'Georgia','GE','GEO','',0,1),(81,'Germany','DE','DEU','{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(82,'Ghana','GH','GHA','',0,1),(83,'Gibraltar','GI','GIB','',0,1),(84,'Greece','GR','GRC','',0,1),(85,'Greenland','GL','GRL','',0,1),(86,'Grenada','GD','GRD','',0,1),(87,'Guadeloupe','GP','GLP','',0,1),(88,'Guam','GU','GUM','',0,1),(89,'Guatemala','GT','GTM','',0,1),(90,'Guinea','GN','GIN','',0,1),(91,'Guinea-Bissau','GW','GNB','',0,1),(92,'Guyana','GY','GUY','',0,1),(93,'Haiti','HT','HTI','',0,1),(94,'Heard and Mc Donald Islands','HM','HMD','',0,1),(95,'Honduras','HN','HND','',0,1),(96,'Hong Kong','HK','HKG','',0,1),(97,'Hungary','HU','HUN','',0,1),(98,'Iceland','IS','ISL','',0,1),(99,'India','IN','IND','',0,1),(100,'Indonesia','ID','IDN','',0,1),(101,'Iran (Islamic Republic of)','IR','IRN','',0,1),(102,'Iraq','IQ','IRQ','',0,1),(103,'Ireland','IE','IRL','',0,1),(104,'Israel','IL','ISR','',0,1),(105,'Italy','IT','ITA','',0,1),(106,'Jamaica','JM','JAM','',0,1),(107,'Japan','JP','JPN','',0,1),(108,'Jordan','JO','JOR','',0,1),(109,'Kazakhstan','KZ','KAZ','',0,1),(110,'Kenya','KE','KEN','',0,1),(111,'Kiribati','KI','KIR','',0,1),(112,'North Korea','KP','PRK','',0,1),(113,'South Korea','KR','KOR','',0,1),(114,'Kuwait','KW','KWT','',0,1),(115,'Kyrgyzstan','KG','KGZ','',0,1),(116,'Lao People\'s Democratic Republic','LA','LAO','',0,1),(117,'Latvia','LV','LVA','',0,1),(118,'Lebanon','LB','LBN','',0,1),(119,'Lesotho','LS','LSO','',0,1),(120,'Liberia','LR','LBR','',0,1),(121,'Libyan Arab Jamahiriya','LY','LBY','',0,1),(122,'Liechtenstein','LI','LIE','',0,1),(123,'Lithuania','LT','LTU','',0,1),(124,'Luxembourg','LU','LUX','',0,1),(125,'Macau','MO','MAC','',0,1),(126,'FYROM','MK','MKD','',0,1),(127,'Madagascar','MG','MDG','',0,1),(128,'Malawi','MW','MWI','',0,1),(129,'Malaysia','MY','MYS','',0,1),(130,'Maldives','MV','MDV','',0,1),(131,'Mali','ML','MLI','',0,1),(132,'Malta','MT','MLT','',0,1),(133,'Marshall Islands','MH','MHL','',0,1),(134,'Martinique','MQ','MTQ','',0,1),(135,'Mauritania','MR','MRT','',0,1),(136,'Mauritius','MU','MUS','',0,1),(137,'Mayotte','YT','MYT','',0,1),(138,'Mexico','MX','MEX','',0,1),(139,'Micronesia, Federated States of','FM','FSM','',0,1),(140,'Moldova, Republic of','MD','MDA','',0,1),(141,'Monaco','MC','MCO','',0,1),(142,'Mongolia','MN','MNG','',0,1),(143,'Montserrat','MS','MSR','',0,1),(144,'Morocco','MA','MAR','',0,1),(145,'Mozambique','MZ','MOZ','',0,1),(146,'Myanmar','MM','MMR','',0,1),(147,'Namibia','NA','NAM','',0,1),(148,'Nauru','NR','NRU','',0,1),(149,'Nepal','NP','NPL','',0,1),(150,'Netherlands','NL','NLD','',0,1),(151,'Netherlands Antilles','AN','ANT','',0,1),(152,'New Caledonia','NC','NCL','',0,1),(153,'New Zealand','NZ','NZL','',0,1),(154,'Nicaragua','NI','NIC','',0,1),(155,'Niger','NE','NER','',0,1),(156,'Nigeria','NG','NGA','',0,1),(157,'Niue','NU','NIU','',0,1),(158,'Norfolk Island','NF','NFK','',0,1),(159,'Northern Mariana Islands','MP','MNP','',0,1),(160,'Norway','NO','NOR','',0,1),(161,'Oman','OM','OMN','',0,1),(162,'Pakistan','PK','PAK','',0,1),(163,'Palau','PW','PLW','',0,1),(164,'Panama','PA','PAN','',0,1),(165,'Papua New Guinea','PG','PNG','',0,1),(166,'Paraguay','PY','PRY','',0,1),(167,'Peru','PE','PER','',0,1),(168,'Philippines','PH','PHL','',0,1),(169,'Pitcairn','PN','PCN','',0,1),(170,'Poland','PL','POL','',0,1),(171,'Portugal','PT','PRT','',0,1),(172,'Puerto Rico','PR','PRI','',0,1),(173,'Qatar','QA','QAT','',0,1),(174,'Reunion','RE','REU','',0,1),(175,'Romania','RO','ROM','',0,1),(176,'Russian Federation','RU','RUS','',0,1),(177,'Rwanda','RW','RWA','',0,1),(178,'Saint Kitts and Nevis','KN','KNA','',0,1),(179,'Saint Lucia','LC','LCA','',0,1),(180,'Saint Vincent and the Grenadines','VC','VCT','',0,1),(181,'Samoa','WS','WSM','',0,1),(182,'San Marino','SM','SMR','',0,1),(183,'Sao Tome and Principe','ST','STP','',0,1),(184,'Saudi Arabia','SA','SAU','',0,1),(185,'Senegal','SN','SEN','',0,1),(186,'Seychelles','SC','SYC','',0,1),(187,'Sierra Leone','SL','SLE','',0,1),(188,'Singapore','SG','SGP','',0,1),(189,'Slovak Republic','SK','SVK','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}',0,1),(190,'Slovenia','SI','SVN','',0,1),(191,'Solomon Islands','SB','SLB','',0,1),(192,'Somalia','SO','SOM','',0,1),(193,'South Africa','ZA','ZAF','',0,1),(194,'South Georgia &amp; South Sandwich Islands','GS','SGS','',0,1),(195,'Spain','ES','ESP','',0,1),(196,'Sri Lanka','LK','LKA','',0,1),(197,'St. Helena','SH','SHN','',0,1),(198,'St. Pierre and Miquelon','PM','SPM','',0,1),(199,'Sudan','SD','SDN','',0,1),(200,'Suriname','SR','SUR','',0,1),(201,'Svalbard and Jan Mayen Islands','SJ','SJM','',0,1),(202,'Swaziland','SZ','SWZ','',0,1),(203,'Sweden','SE','SWE','{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(204,'Switzerland','CH','CHE','',0,1),(205,'Syrian Arab Republic','SY','SYR','',0,1),(206,'Taiwan','TW','TWN','',0,1),(207,'Tajikistan','TJ','TJK','',0,1),(208,'Tanzania, United Republic of','TZ','TZA','',0,1),(209,'Thailand','TH','THA','',0,1),(210,'Togo','TG','TGO','',0,1),(211,'Tokelau','TK','TKL','',0,1),(212,'Tonga','TO','TON','',0,1),(213,'Trinidad and Tobago','TT','TTO','',0,1),(214,'Tunisia','TN','TUN','',0,1),(215,'Turkey','TR','TUR','',0,1),(216,'Turkmenistan','TM','TKM','',0,1),(217,'Turks and Caicos Islands','TC','TCA','',0,1),(218,'Tuvalu','TV','TUV','',0,1),(219,'Uganda','UG','UGA','',0,1),(220,'Ukraine','UA','UKR','',0,1),(221,'United Arab Emirates','AE','ARE','',0,1),(222,'United Kingdom','GB','GBR','',1,1),(223,'United States','US','USA','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}',0,1),(224,'United States Minor Outlying Islands','UM','UMI','',0,1),(225,'Uruguay','UY','URY','',0,1),(226,'Uzbekistan','UZ','UZB','',0,1),(227,'Vanuatu','VU','VUT','',0,1),(228,'Vatican City State (Holy See)','VA','VAT','',0,1),(229,'Venezuela','VE','VEN','',0,1),(230,'Viet Nam','VN','VNM','',0,1),(231,'Virgin Islands (British)','VG','VGB','',0,1),(232,'Virgin Islands (U.S.)','VI','VIR','',0,1),(233,'Wallis and Futuna Islands','WF','WLF','',0,1),(234,'Western Sahara','EH','ESH','',0,1),(235,'Yemen','YE','YEM','',0,1),(237,'Democratic Republic of Congo','CD','COD','',0,1),(238,'Zambia','ZM','ZMB','',0,1),(239,'Zimbabwe','ZW','ZWE','',0,1),(242,'Montenegro','ME','MNE','',0,1),(243,'Serbia','RS','SRB','',0,1),(244,'Aaland Islands','AX','ALA','',0,1),(245,'Bonaire, Sint Eustatius and Saba','BQ','BES','',0,1),(246,'Curacao','CW','CUW','',0,1),(247,'Palestinian Territory, Occupied','PS','PSE','',0,1),(248,'South Sudan','SS','SSD','',0,1),(249,'St. Barthelemy','BL','BLM','',0,1),(250,'St. Martin (French part)','MF','MAF','',0,1),(251,'Canary Islands','IC','ICA','',0,1),(252,'Ascension Island (British)','AC','ASC','',0,1),(253,'Kosovo, Republic of','XK','UNK','',0,1),(254,'Isle of Man','IM','IMN','',0,1),(255,'Tristan da Cunha','TA','SHN','',0,1),(256,'Guernsey','GG','GGY','',0,1),(257,'Jersey','JE','JEY','',0,1);
/*!40000 ALTER TABLE `oc_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon`
--

DROP TABLE IF EXISTS `oc_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon`
--

LOCK TABLES `oc_coupon` WRITE;
/*!40000 ALTER TABLE `oc_coupon` DISABLE KEYS */;
INSERT INTO `oc_coupon` VALUES (4,'-10% Discount','2222','P',10.0000,0,0,0.0000,'2014-01-01','2020-01-01',10,'10',0,'2009-01-27 13:55:03'),(5,'Free Shipping','3333','P',0.0000,0,1,100.0000,'2014-01-01','2014-02-01',10,'10',0,'2009-03-14 21:13:53'),(6,'-10.00 Discount','1111','F',10.0000,0,0,10.0000,'2014-01-01','2020-01-01',100000,'10000',0,'2009-03-14 21:15:18');
/*!40000 ALTER TABLE `oc_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_category`
--

DROP TABLE IF EXISTS `oc_coupon_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_category`
--

LOCK TABLES `oc_coupon_category` WRITE;
/*!40000 ALTER TABLE `oc_coupon_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_history`
--

DROP TABLE IF EXISTS `oc_coupon_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_history`
--

LOCK TABLES `oc_coupon_history` WRITE;
/*!40000 ALTER TABLE `oc_coupon_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_product`
--

DROP TABLE IF EXISTS `oc_coupon_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_product`
--

LOCK TABLES `oc_coupon_product` WRITE;
/*!40000 ALTER TABLE `oc_coupon_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_currency`
--

DROP TABLE IF EXISTS `oc_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_currency`
--

LOCK TABLES `oc_currency` WRITE;
/*!40000 ALTER TABLE `oc_currency` DISABLE KEYS */;
INSERT INTO `oc_currency` VALUES (1,'Pound Sterling','GBP','£','','2',0.61250001,0,'2020-04-06 16:33:46'),(2,'US Dollar','USD','$','','2',1.00000000,0,'2020-04-06 16:33:40'),(3,'Euro','EUR','','€','2',0.78460002,0,'2020-04-06 16:33:52'),(4,'Гривна','UAH','₴','грн.','2',1.00000000,1,'2020-07-26 19:20:06');
/*!40000 ALTER TABLE `oc_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field`
--

DROP TABLE IF EXISTS `oc_custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field`
--

LOCK TABLES `oc_custom_field` WRITE;
/*!40000 ALTER TABLE `oc_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_customer_group`
--

DROP TABLE IF EXISTS `oc_custom_field_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_customer_group`
--

LOCK TABLES `oc_custom_field_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_description`
--

DROP TABLE IF EXISTS `oc_custom_field_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_description`
--

LOCK TABLES `oc_custom_field_description` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_value`
--

DROP TABLE IF EXISTS `oc_custom_field_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_value`
--

LOCK TABLES `oc_custom_field_value` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_value_description`
--

DROP TABLE IF EXISTS `oc_custom_field_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_value_description`
--

LOCK TABLES `oc_custom_field_value_description` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_value_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer`
--

DROP TABLE IF EXISTS `oc_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer`
--

LOCK TABLES `oc_customer` WRITE;
/*!40000 ALTER TABLE `oc_customer` DISABLE KEYS */;
INSERT INTO `oc_customer` VALUES (4,1,0,3,'Скупов','Сергей','seregaskypow@gmail.com','0509368399','','fea29a23bc7e6ebbbb69941ef058bed958b7c364','Jlz4wf7Us',NULL,NULL,1,0,'','::1',1,0,'','','2020-04-21 14:03:35'),(5,1,0,3,'Test','Test','test@email.com','123456789','','d4117870275fd2524b3e9833849263690816958b','mLMUgrYGY',NULL,NULL,0,0,'','::1',1,0,'','','2020-05-07 14:17:23'),(6,1,0,3,'Test','Test','test2131231@email.com','123456789','','35138799b71f074c622a9b945fd398923247b0ef','Fq0EpqN4g',NULL,NULL,0,0,'','::1',1,0,'','','2020-05-07 14:17:47'),(7,1,0,3,'User','User','tidabit441@qlenw.com','12345667','','4141a38e2b45a624d56fec0fc2024851525a8c7f','b0JvM3cFf',NULL,NULL,0,0,'','178.133.61.43',1,0,'','','2020-07-20 17:54:38'),(8,1,0,3,'Сергій','Скупов','sergskypow@gmail.com','+380509368399','','70636ccb635ef619ed4eaaeef8678973d4ee76c3','xdDCSDY51',NULL,NULL,0,3,'','176.36.151.216',1,0,'','','2020-07-20 18:16:44');
/*!40000 ALTER TABLE `oc_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_activity`
--

DROP TABLE IF EXISTS `oc_customer_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_activity`
--

LOCK TABLES `oc_customer_activity` WRITE;
/*!40000 ALTER TABLE `oc_customer_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_affiliate`
--

DROP TABLE IF EXISTS `oc_customer_affiliate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_affiliate` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_affiliate`
--

LOCK TABLES `oc_customer_affiliate` WRITE;
/*!40000 ALTER TABLE `oc_customer_affiliate` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_affiliate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_approval`
--

DROP TABLE IF EXISTS `oc_customer_approval`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_approval` (
  `customer_approval_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_approval_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_approval`
--

LOCK TABLES `oc_customer_approval` WRITE;
/*!40000 ALTER TABLE `oc_customer_approval` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_approval` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_group`
--

DROP TABLE IF EXISTS `oc_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_group`
--

LOCK TABLES `oc_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_customer_group` DISABLE KEYS */;
INSERT INTO `oc_customer_group` VALUES (1,0,1);
/*!40000 ALTER TABLE `oc_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_group_description`
--

DROP TABLE IF EXISTS `oc_customer_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_group_description`
--

LOCK TABLES `oc_customer_group_description` WRITE;
/*!40000 ALTER TABLE `oc_customer_group_description` DISABLE KEYS */;
INSERT INTO `oc_customer_group_description` VALUES (1,1,'Default','test'),(1,2,'Default','test'),(1,3,'Default','test');
/*!40000 ALTER TABLE `oc_customer_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_history`
--

DROP TABLE IF EXISTS `oc_customer_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_history`
--

LOCK TABLES `oc_customer_history` WRITE;
/*!40000 ALTER TABLE `oc_customer_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_ip`
--

DROP TABLE IF EXISTS `oc_customer_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_ip`
--

LOCK TABLES `oc_customer_ip` WRITE;
/*!40000 ALTER TABLE `oc_customer_ip` DISABLE KEYS */;
INSERT INTO `oc_customer_ip` VALUES (3,8,'176.36.151.216','2020-07-20 18:16:46');
/*!40000 ALTER TABLE `oc_customer_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_login`
--

DROP TABLE IF EXISTS `oc_customer_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_login`
--

LOCK TABLES `oc_customer_login` WRITE;
/*!40000 ALTER TABLE `oc_customer_login` DISABLE KEYS */;
INSERT INTO `oc_customer_login` VALUES (1,'admin','::1',4,'2020-04-07 12:20:26','2020-05-07 11:16:41'),(3,'seregaskypow@gmail.com','::1',2,'2020-04-25 16:41:17','2020-04-25 16:41:21'),(4,'test@gmail.com','::1',2,'2020-05-07 11:18:12','2020-05-07 11:18:19'),(6,'admin','176.36.58.166',1,'2020-07-24 10:07:33','2020-07-24 10:07:33');
/*!40000 ALTER TABLE `oc_customer_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_online`
--

DROP TABLE IF EXISTS `oc_customer_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_online`
--

LOCK TABLES `oc_customer_online` WRITE;
/*!40000 ALTER TABLE `oc_customer_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_reward`
--

DROP TABLE IF EXISTS `oc_customer_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_reward`
--

LOCK TABLES `oc_customer_reward` WRITE;
/*!40000 ALTER TABLE `oc_customer_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_search`
--

DROP TABLE IF EXISTS `oc_customer_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_search_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_search`
--

LOCK TABLES `oc_customer_search` WRITE;
/*!40000 ALTER TABLE `oc_customer_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_transaction`
--

DROP TABLE IF EXISTS `oc_customer_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_transaction`
--

LOCK TABLES `oc_customer_transaction` WRITE;
/*!40000 ALTER TABLE `oc_customer_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_wishlist`
--

DROP TABLE IF EXISTS `oc_customer_wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_wishlist`
--

LOCK TABLES `oc_customer_wishlist` WRITE;
/*!40000 ALTER TABLE `oc_customer_wishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_download`
--

DROP TABLE IF EXISTS `oc_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_download`
--

LOCK TABLES `oc_download` WRITE;
/*!40000 ALTER TABLE `oc_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_download_description`
--

DROP TABLE IF EXISTS `oc_download_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_download_description`
--

LOCK TABLES `oc_download_description` WRITE;
/*!40000 ALTER TABLE `oc_download_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_event`
--

DROP TABLE IF EXISTS `oc_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_event`
--

LOCK TABLES `oc_event` WRITE;
/*!40000 ALTER TABLE `oc_event` DISABLE KEYS */;
INSERT INTO `oc_event` VALUES (1,'activity_customer_add','catalog/model/account/customer/addCustomer/after','event/activity/addCustomer',1,0),(2,'activity_customer_edit','catalog/model/account/customer/editCustomer/after','event/activity/editCustomer',1,0),(3,'activity_customer_password','catalog/model/account/customer/editPassword/after','event/activity/editPassword',1,0),(4,'activity_customer_forgotten','catalog/model/account/customer/editCode/after','event/activity/forgotten',1,0),(5,'activity_transaction','catalog/model/account/customer/addTransaction/after','event/activity/addTransaction',1,0),(6,'activity_customer_login','catalog/model/account/customer/deleteLoginAttempts/after','event/activity/login',1,0),(7,'activity_address_add','catalog/model/account/address/addAddress/after','event/activity/addAddress',1,0),(8,'activity_address_edit','catalog/model/account/address/editAddress/after','event/activity/editAddress',1,0),(9,'activity_address_delete','catalog/model/account/address/deleteAddress/after','event/activity/deleteAddress',1,0),(10,'activity_affiliate_add','catalog/model/account/customer/addAffiliate/after','event/activity/addAffiliate',1,0),(11,'activity_affiliate_edit','catalog/model/account/customer/editAffiliate/after','event/activity/editAffiliate',1,0),(12,'activity_order_add','catalog/model/checkout/order/addOrderHistory/before','event/activity/addOrderHistory',1,0),(13,'activity_return_add','catalog/model/account/return/addReturn/after','event/activity/addReturn',1,0),(14,'mail_transaction','catalog/model/account/customer/addTransaction/after','mail/transaction',1,0),(15,'mail_forgotten','catalog/model/account/customer/editCode/after','mail/forgotten',1,0),(16,'mail_customer_add','catalog/model/account/customer/addCustomer/after','mail/register',1,0),(17,'mail_customer_alert','catalog/model/account/customer/addCustomer/after','mail/register/alert',1,0),(18,'mail_affiliate_add','catalog/model/account/customer/addAffiliate/after','mail/affiliate',1,0),(19,'mail_affiliate_alert','catalog/model/account/customer/addAffiliate/after','mail/affiliate/alert',1,0),(20,'mail_voucher','catalog/model/checkout/order/addOrderHistory/after','extension/total/voucher/send',1,0),(21,'mail_order_add','catalog/model/checkout/order/addOrderHistory/before','mail/order',1,0),(22,'mail_order_alert','catalog/model/checkout/order/addOrderHistory/before','mail/order/alert',1,0),(23,'statistics_review_add','catalog/model/catalog/review/addReview/after','event/statistics/addReview',1,0),(24,'statistics_return_add','catalog/model/account/return/addReturn/after','event/statistics/addReturn',1,0),(25,'statistics_order_history','catalog/model/checkout/order/addOrderHistory/after','event/statistics/addOrderHistory',1,0),(26,'admin_mail_affiliate_approve','admin/model/customer/customer_approval/approveAffiliate/after','mail/affiliate/approve',1,0),(27,'admin_mail_affiliate_deny','admin/model/customer/customer_approval/denyAffiliate/after','mail/affiliate/deny',1,0),(28,'admin_mail_customer_approve','admin/model/customer/customer_approval/approveCustomer/after','mail/customer/approve',1,0),(29,'admin_mail_customer_deny','admin/model/customer/customer_approval/denyCustomer/after','mail/customer/deny',1,0),(30,'admin_mail_reward','admin/model/customer/customer/addReward/after','mail/reward',1,0),(31,'admin_mail_transaction','admin/model/customer/customer/addTransaction/after','mail/transaction',1,0),(32,'admin_mail_return','admin/model/sale/return/addReturn/after','mail/return',1,0),(33,'admin_mail_forgotten','admin/model/user/user/editCode/after','mail/forgotten',1,0),(34,'advertise_google','admin/model/catalog/product/deleteProduct/after','extension/advertise/google/deleteProduct',1,0),(35,'advertise_google','admin/model/catalog/product/copyProduct/after','extension/advertise/google/copyProduct',1,0),(36,'advertise_google','admin/view/common/column_left/before','extension/advertise/google/admin_link',1,0),(37,'advertise_google','admin/model/catalog/product/addProduct/after','extension/advertise/google/addProduct',1,0),(38,'advertise_google','catalog/controller/checkout/success/before','extension/advertise/google/before_checkout_success',1,0),(39,'advertise_google','catalog/view/common/header/after','extension/advertise/google/google_global_site_tag',1,0),(40,'advertise_google','catalog/view/common/success/after','extension/advertise/google/google_dynamic_remarketing_purchase',1,0),(41,'advertise_google','catalog/view/product/product/after','extension/advertise/google/google_dynamic_remarketing_product',1,0),(42,'advertise_google','catalog/view/product/search/after','extension/advertise/google/google_dynamic_remarketing_searchresults',1,0),(43,'advertise_google','catalog/view/product/category/after','extension/advertise/google/google_dynamic_remarketing_category',1,0),(44,'advertise_google','catalog/view/common/home/after','extension/advertise/google/google_dynamic_remarketing_home',1,0),(45,'advertise_google','catalog/view/checkout/cart/after','extension/advertise/google/google_dynamic_remarketing_cart',1,0);
/*!40000 ALTER TABLE `oc_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_extension`
--

DROP TABLE IF EXISTS `oc_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_extension`
--

LOCK TABLES `oc_extension` WRITE;
/*!40000 ALTER TABLE `oc_extension` DISABLE KEYS */;
INSERT INTO `oc_extension` VALUES (1,'payment','cod'),(2,'total','shipping'),(3,'total','sub_total'),(4,'total','tax'),(5,'total','total'),(6,'module','banner'),(7,'module','carousel'),(8,'total','credit'),(9,'shipping','flat'),(10,'total','handling'),(11,'total','low_order_fee'),(12,'total','coupon'),(13,'module','category'),(14,'module','account'),(15,'total','reward'),(16,'total','voucher'),(17,'payment','free_checkout'),(18,'module','featured'),(19,'module','slideshow'),(20,'theme','default'),(21,'dashboard','activity'),(22,'dashboard','sale'),(23,'dashboard','recent'),(24,'dashboard','order'),(25,'dashboard','online'),(26,'dashboard','map'),(27,'dashboard','customer'),(28,'dashboard','chart'),(29,'report','sale_coupon'),(31,'report','customer_search'),(32,'report','customer_transaction'),(33,'report','product_purchased'),(34,'report','product_viewed'),(35,'report','sale_return'),(36,'report','sale_order'),(37,'report','sale_shipping'),(38,'report','sale_tax'),(39,'report','customer_activity'),(40,'report','customer_order'),(41,'report','customer_reward'),(42,'advertise','google'),(45,'theme','sharlar'),(46,'module','filter'),(47,'module','html'),(48,'shipping','pickup');
/*!40000 ALTER TABLE `oc_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_extension_install`
--

DROP TABLE IF EXISTS `oc_extension_install`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_extension_install` (
  `extension_install_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`extension_install_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_extension_install`
--

LOCK TABLES `oc_extension_install` WRITE;
/*!40000 ALTER TABLE `oc_extension_install` DISABLE KEYS */;
INSERT INTO `oc_extension_install` VALUES (1,0,'ShowAll.ocmod.zip','2020-04-07 21:12:15');
/*!40000 ALTER TABLE `oc_extension_install` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_extension_path`
--

DROP TABLE IF EXISTS `oc_extension_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_extension_path` (
  `extension_path_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`extension_path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_extension_path`
--

LOCK TABLES `oc_extension_path` WRITE;
/*!40000 ALTER TABLE `oc_extension_path` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_extension_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter`
--

DROP TABLE IF EXISTS `oc_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter`
--

LOCK TABLES `oc_filter` WRITE;
/*!40000 ALTER TABLE `oc_filter` DISABLE KEYS */;
INSERT INTO `oc_filter` VALUES (3,2,0),(2,2,0),(1,2,0),(4,2,0),(5,2,0),(6,2,0),(7,2,0),(8,2,0),(9,2,0),(10,3,0),(11,3,0),(12,3,0);
/*!40000 ALTER TABLE `oc_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_description`
--

DROP TABLE IF EXISTS `oc_filter_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_description`
--

LOCK TABLES `oc_filter_description` WRITE;
/*!40000 ALTER TABLE `oc_filter_description` DISABLE KEYS */;
INSERT INTO `oc_filter_description` VALUES (2,2,2,'Черный'),(1,3,2,'Білий'),(2,1,2,'Black'),(1,2,2,'Белый'),(1,1,2,'White'),(4,3,2,'Зелений'),(4,2,2,'Зеленый'),(4,1,2,'Green'),(5,3,2,'Червоний'),(5,2,2,'Красный'),(5,1,2,'Red'),(6,3,2,'Рожевий'),(6,2,2,'Розовый'),(6,1,2,'Pink'),(7,3,2,'Фіолетовий'),(7,2,2,'Фиолетовый'),(7,1,2,'Violet'),(8,3,2,'Помаранчевий'),(10,1,3,'18'),(10,2,3,'18'),(10,3,3,'18'),(11,1,3,'24'),(11,2,3,'24'),(11,3,3,'24'),(12,1,3,'36'),(12,2,3,'36'),(12,3,3,'36'),(8,2,2,'Оранжевый'),(8,1,2,'Orange'),(9,3,2,'Різнокольоровий'),(9,2,2,'Разноцветный'),(9,1,2,'Multicolor'),(2,3,2,'Чорний'),(3,1,2,'Blue'),(3,2,2,'Синий'),(3,3,2,'Синій');
/*!40000 ALTER TABLE `oc_filter_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_group`
--

DROP TABLE IF EXISTS `oc_filter_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_group`
--

LOCK TABLES `oc_filter_group` WRITE;
/*!40000 ALTER TABLE `oc_filter_group` DISABLE KEYS */;
INSERT INTO `oc_filter_group` VALUES (2,0),(3,0);
/*!40000 ALTER TABLE `oc_filter_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_group_description`
--

DROP TABLE IF EXISTS `oc_filter_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_group_description`
--

LOCK TABLES `oc_filter_group_description` WRITE;
/*!40000 ALTER TABLE `oc_filter_group_description` DISABLE KEYS */;
INSERT INTO `oc_filter_group_description` VALUES (3,1,'Radius'),(2,3,'Колір'),(2,2,'Цвет'),(3,2,'Радиус'),(3,3,'Радіус'),(2,1,'Color');
/*!40000 ALTER TABLE `oc_filter_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_geo_zone`
--

DROP TABLE IF EXISTS `oc_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_geo_zone`
--

LOCK TABLES `oc_geo_zone` WRITE;
/*!40000 ALTER TABLE `oc_geo_zone` DISABLE KEYS */;
INSERT INTO `oc_geo_zone` VALUES (3,'UK VAT Zone','UK VAT','2009-01-06 23:26:25','2010-02-26 22:33:24'),(4,'UK Shipping','UK Shipping Zones','2009-06-23 01:14:53','2010-12-15 15:18:13');
/*!40000 ALTER TABLE `oc_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_googleshopping_category`
--

DROP TABLE IF EXISTS `oc_googleshopping_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_googleshopping_category` (
  `google_product_category` varchar(10) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`google_product_category`,`store_id`),
  KEY `category_id_store_id` (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_googleshopping_category`
--

LOCK TABLES `oc_googleshopping_category` WRITE;
/*!40000 ALTER TABLE `oc_googleshopping_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_googleshopping_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_googleshopping_product`
--

DROP TABLE IF EXISTS `oc_googleshopping_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_googleshopping_product` (
  `product_advertise_google_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `has_issues` tinyint(1) DEFAULT NULL,
  `destination_status` enum('pending','approved','disapproved') NOT NULL DEFAULT 'pending',
  `impressions` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `conversions` int(11) NOT NULL DEFAULT '0',
  `cost` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `conversion_value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `google_product_category` varchar(10) DEFAULT NULL,
  `condition` enum('new','refurbished','used') DEFAULT NULL,
  `adult` tinyint(1) DEFAULT NULL,
  `multipack` int(11) DEFAULT NULL,
  `is_bundle` tinyint(1) DEFAULT NULL,
  `age_group` enum('newborn','infant','toddler','kids','adult') DEFAULT NULL,
  `color` int(11) DEFAULT NULL,
  `gender` enum('male','female','unisex') DEFAULT NULL,
  `size_type` enum('regular','petite','plus','big and tall','maternity') DEFAULT NULL,
  `size_system` enum('AU','BR','CN','DE','EU','FR','IT','JP','MEX','UK','US') DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `is_modified` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_advertise_google_id`),
  UNIQUE KEY `product_id_store_id` (`product_id`,`store_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_googleshopping_product`
--

LOCK TABLES `oc_googleshopping_product` WRITE;
/*!40000 ALTER TABLE `oc_googleshopping_product` DISABLE KEYS */;
INSERT INTO `oc_googleshopping_product` VALUES (1,50,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(2,51,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(3,52,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(4,53,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(5,54,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(6,55,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(7,56,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(8,57,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(9,58,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(10,59,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `oc_googleshopping_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_googleshopping_product_status`
--

DROP TABLE IF EXISTS `oc_googleshopping_product_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_googleshopping_product_status` (
  `product_id` int(11) NOT NULL DEFAULT '0',
  `store_id` int(11) NOT NULL DEFAULT '0',
  `product_variation_id` varchar(64) NOT NULL DEFAULT '',
  `destination_statuses` text NOT NULL,
  `data_quality_issues` text NOT NULL,
  `item_level_issues` text NOT NULL,
  `google_expiration_date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`,`product_variation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_googleshopping_product_status`
--

LOCK TABLES `oc_googleshopping_product_status` WRITE;
/*!40000 ALTER TABLE `oc_googleshopping_product_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_googleshopping_product_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_googleshopping_product_target`
--

DROP TABLE IF EXISTS `oc_googleshopping_product_target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_googleshopping_product_target` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `advertise_google_target_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`advertise_google_target_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_googleshopping_product_target`
--

LOCK TABLES `oc_googleshopping_product_target` WRITE;
/*!40000 ALTER TABLE `oc_googleshopping_product_target` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_googleshopping_product_target` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_googleshopping_target`
--

DROP TABLE IF EXISTS `oc_googleshopping_target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_googleshopping_target` (
  `advertise_google_target_id` int(11) unsigned NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `campaign_name` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(2) NOT NULL DEFAULT '',
  `budget` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `feeds` text NOT NULL,
  `status` enum('paused','active') NOT NULL DEFAULT 'paused',
  `date_added` date DEFAULT NULL,
  `roas` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`advertise_google_target_id`),
  KEY `store_id` (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_googleshopping_target`
--

LOCK TABLES `oc_googleshopping_target` WRITE;
/*!40000 ALTER TABLE `oc_googleshopping_target` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_googleshopping_target` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information`
--

DROP TABLE IF EXISTS `oc_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information`
--

LOCK TABLES `oc_information` WRITE;
/*!40000 ALTER TABLE `oc_information` DISABLE KEYS */;
INSERT INTO `oc_information` VALUES (3,1,5,1),(4,1,3,1),(5,1,4,1),(6,1,1,1),(7,1,0,1);
/*!40000 ALTER TABLE `oc_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_description`
--

DROP TABLE IF EXISTS `oc_information_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `phone_1` varchar(255) DEFAULT NULL,
  `phone_2` varchar(255) DEFAULT NULL,
  `phone_3` varchar(255) DEFAULT NULL,
  `adress_1` varchar(255) DEFAULT NULL,
  `adress_2` varchar(255) DEFAULT NULL,
  `adress_3` varchar(255) DEFAULT NULL,
  `link_1` varchar(2048) DEFAULT NULL,
  `link_2` varchar(2048) DEFAULT NULL,
  `link_3` varchar(2048) DEFAULT NULL,
  `timetable` mediumtext,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_description`
--

LOCK TABLES `oc_information_description` WRITE;
/*!40000 ALTER TABLE `oc_information_description` DISABLE KEYS */;
INSERT INTO `oc_information_description` VALUES (4,2,'About Us','&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n','About Us','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,1,'Terms &amp; Conditions','&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n','Terms &amp; Conditions','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,3,'Privacy Policy','&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n','Privacy Policy','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,2,'Delivery Information','&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n','Delivery Information','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,2,'Terms &amp; Conditions','&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n','Terms &amp; Conditions','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,2,'Privacy Policy','&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n','Privacy Policy','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,3,'About Us','&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n','About Us','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,3,'Terms &amp; Conditions','&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n','Terms &amp; Conditions','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,1,'Privacy Policy','&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n','Privacy Policy','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,3,'Delivery Information','&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n','Delivery Information','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,1,'Delivery Information','&lt;p&gt;\r\n	Delivery Informationsadsaasdsadsadadadasdsad&lt;/p&gt;\r\n','Delivery Information','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,1,'About Us','&lt;p&gt;\r\n	About Usterte&lt;/p&gt;\r\n','About Us','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,1,'uyiuyi','&lt;p&gt;yuiyui&lt;/p&gt;','MerryParty','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,2,'retre','&lt;p&gt;retretret&lt;/p&gt;','etert','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,3,'ertret','&lt;p&gt;retretet&lt;/p&gt;','ertret','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `oc_information_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_to_layout`
--

DROP TABLE IF EXISTS `oc_information_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_to_layout`
--

LOCK TABLES `oc_information_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_information_to_layout` DISABLE KEYS */;
INSERT INTO `oc_information_to_layout` VALUES (6,0,0),(4,0,0),(3,0,0),(7,0,0);
/*!40000 ALTER TABLE `oc_information_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_to_store`
--

DROP TABLE IF EXISTS `oc_information_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_to_store`
--

LOCK TABLES `oc_information_to_store` WRITE;
/*!40000 ALTER TABLE `oc_information_to_store` DISABLE KEYS */;
INSERT INTO `oc_information_to_store` VALUES (3,0),(4,0),(5,0),(6,0),(7,0);
/*!40000 ALTER TABLE `oc_information_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_language`
--

DROP TABLE IF EXISTS `oc_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_language`
--

LOCK TABLES `oc_language` WRITE;
/*!40000 ALTER TABLE `oc_language` DISABLE KEYS */;
INSERT INTO `oc_language` VALUES (1,'English','en-gb','en-US,en_US.UTF-8,en_US,en-gb,english','gb.png','english',1,1),(2,'Russian','ru-ru','ru - ru_RU.UTF-8,ru_RU,ru-gb,russian','','',1,1),(3,'Українська','uk-ua',' ua_UA.UTF-8,ua_UA,ua_UA,ua','','',1,1);
/*!40000 ALTER TABLE `oc_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout`
--

DROP TABLE IF EXISTS `oc_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout`
--

LOCK TABLES `oc_layout` WRITE;
/*!40000 ALTER TABLE `oc_layout` DISABLE KEYS */;
INSERT INTO `oc_layout` VALUES (1,'Home'),(2,'Product'),(3,'Category'),(4,'Default'),(5,'Manufacturer'),(6,'Account'),(7,'Checkout'),(8,'Contact'),(9,'Sitemap'),(10,'Affiliate'),(11,'Information'),(12,'Compare'),(13,'Search');
/*!40000 ALTER TABLE `oc_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout_module`
--

DROP TABLE IF EXISTS `oc_layout_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout_module`
--

LOCK TABLES `oc_layout_module` WRITE;
/*!40000 ALTER TABLE `oc_layout_module` DISABLE KEYS */;
INSERT INTO `oc_layout_module` VALUES (110,4,'account','content_top',0),(20,5,'0','column_left',2),(69,10,'account','column_right',1),(68,6,'account','column_right',1),(117,3,'filter','column_left',1),(116,3,'category','column_left',0),(119,1,'html.32','content_bottom',0);
/*!40000 ALTER TABLE `oc_layout_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout_route`
--

DROP TABLE IF EXISTS `oc_layout_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout_route`
--

LOCK TABLES `oc_layout_route` WRITE;
/*!40000 ALTER TABLE `oc_layout_route` DISABLE KEYS */;
INSERT INTO `oc_layout_route` VALUES (38,6,0,'account/%'),(17,10,0,'affiliate/%'),(74,3,0,'product/category'),(76,1,0,'common/home'),(20,2,0,'product/product'),(24,11,0,'information/information'),(23,7,0,'checkout/%'),(31,8,0,'information/contact'),(32,9,0,'information/sitemap'),(71,4,0,''),(45,5,0,'product/manufacturer'),(52,12,0,'product/compare'),(53,13,0,'product/search');
/*!40000 ALTER TABLE `oc_layout_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_length_class`
--

DROP TABLE IF EXISTS `oc_length_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_length_class`
--

LOCK TABLES `oc_length_class` WRITE;
/*!40000 ALTER TABLE `oc_length_class` DISABLE KEYS */;
INSERT INTO `oc_length_class` VALUES (1,1.00000000),(2,10.00000000),(3,0.39370000);
/*!40000 ALTER TABLE `oc_length_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_length_class_description`
--

DROP TABLE IF EXISTS `oc_length_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_length_class_description`
--

LOCK TABLES `oc_length_class_description` WRITE;
/*!40000 ALTER TABLE `oc_length_class_description` DISABLE KEYS */;
INSERT INTO `oc_length_class_description` VALUES (1,1,'Centimeter','cm'),(2,1,'Millimeter','mm'),(3,1,'Inch','in'),(1,2,'Centimeter','cm'),(2,2,'Millimeter','mm'),(3,2,'Inch','in'),(1,3,'Centimeter','cm'),(2,3,'Millimeter','mm'),(3,3,'Inch','in');
/*!40000 ALTER TABLE `oc_length_class_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_location`
--

DROP TABLE IF EXISTS `oc_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_location`
--

LOCK TABLES `oc_location` WRITE;
/*!40000 ALTER TABLE `oc_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_manufacturer`
--

DROP TABLE IF EXISTS `oc_manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_manufacturer`
--

LOCK TABLES `oc_manufacturer` WRITE;
/*!40000 ALTER TABLE `oc_manufacturer` DISABLE KEYS */;
INSERT INTO `oc_manufacturer` VALUES (5,'HTC','catalog/demo/htc_logo.jpg',0),(6,'Palm','catalog/demo/palm_logo.jpg',0),(7,'Hewlett-Packard','catalog/demo/hp_logo.jpg',0),(8,'Apple','catalog/demo/apple_logo.jpg',0),(9,'Canon','catalog/demo/canon_logo.jpg',0),(10,'Sony','catalog/demo/sony_logo.jpg',0);
/*!40000 ALTER TABLE `oc_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_manufacturer_to_store`
--

DROP TABLE IF EXISTS `oc_manufacturer_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

LOCK TABLES `oc_manufacturer_to_store` WRITE;
/*!40000 ALTER TABLE `oc_manufacturer_to_store` DISABLE KEYS */;
INSERT INTO `oc_manufacturer_to_store` VALUES (5,0),(6,0),(7,0),(8,0),(9,0),(10,0);
/*!40000 ALTER TABLE `oc_manufacturer_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_marketing`
--

DROP TABLE IF EXISTS `oc_marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_marketing`
--

LOCK TABLES `oc_marketing` WRITE;
/*!40000 ALTER TABLE `oc_marketing` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_marketing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_modification`
--

DROP TABLE IF EXISTS `oc_modification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_install_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_modification`
--

LOCK TABLES `oc_modification` WRITE;
/*!40000 ALTER TABLE `oc_modification` DISABLE KEYS */;
INSERT INTO `oc_modification` VALUES (1,1,'Show All Products On One Page By Henry','Show All Products On One Page By Henry','ct47_henry@yahoo.com.hk','1.0.0','','<modification>\r\n    <name>Show All Products On One Page By Henry</name>\r\n	<code>Show All Products On One Page By Henry</code>\r\n    <version>1.0.0</version>\r\n    <author>ct47_henry@yahoo.com.hk</author>   \r\n	<file path=\"admin/controller/catalog/category.php\">\r\n        <operation error=\"skip\">\r\n			<search><![CDATA[public function index() {]]></search>\r\n            <add position=\"replace\">\r\n			<![CDATA[\r\n			public function index() {\r\n					$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"category\r\n                        WHERE category_id = \'-1\'\");\r\n					if ($query->num_rows) {\r\n					}else{\r\n                        $sql = \"INSERT INTO \".DB_PREFIX.\"category (`category_id`, `image`, `parent_id`, `top`, `column`, \r\n						`sort_order`, `status`, `date_added`, `date_modified`) VALUES (\'-1\', \'\', \'0\', \'1\', \'1\', \'0\', \'0\', \'\".date(\'Y-m-d H:i:s\').\"\', \'\".date(\'Y-m-d H:i:s\').\"\')\";\r\n						$query = $this->db->query( $sql );\r\n					}	\r\n					\r\n					$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"category_path\r\n                        WHERE category_id = \'-1\'\");\r\n						if ($query->num_rows) {\r\n					}else{\r\n                        $sql = \"INSERT INTO \".DB_PREFIX.\"category_path (`category_id`, `path_id`, `level`) VALUES (\'-1\', \'-1\', \'0\')\";\r\n						$query = $this->db->query( $sql );\r\n					}\r\n					\r\n					$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"category_description\r\n                        WHERE category_id = \'-1\'\");\r\n						if ($query->num_rows) {\r\n					}else{\r\n					$languages = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"language\");\r\n					foreach ($languages->rows as $language) {\r\n                        $sql = \"INSERT INTO \".DB_PREFIX.\"category_description (`category_id`, `language_id`, `name`, `description`, `meta_title`,\r\n						`meta_description`, `meta_keyword`) VALUES (\'-1\', \'\".$language[\'language_id\'].\"\', \'All\', \'\', \'All\', \'\', \'\')\";\r\n						$query = $this->db->query( $sql );\r\n						}\r\n					}\r\n            ]]>\r\n			</add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"catalog/controller/product/category.php\">\r\n        <operation>\r\n            <search>\r\n			<![CDATA[\r\n				$data[\'heading_title\'] = $category_info[\'name\'];\r\n            ]]>\r\n			</search>\r\n            <add position=\"replace\">\r\n			<![CDATA[\r\n				$data[\'heading_title\'] = $category_info[\'name\'];\r\n				\r\n                if($category_id==-1)\r\n					 $category_id=0;\r\n            ]]>\r\n			</add>\r\n        </operation>\r\n		<operation>\r\n			<search>\r\n				<![CDATA[\r\n					foreach ($results as $result) {\r\n				]]>\r\n			</search>\r\n            <add position=\"replace\">\r\n				<![CDATA[\r\n				]]>\r\n			</add>\r\n        </operation>\r\n		<operation>\r\n			<search>\r\n				<![CDATA[\r\n					$results = $this->model_catalog_category->getCategories($category_id);\r\n				]]>\r\n			</search>\r\n            <add position=\"replace\">\r\n				<![CDATA[\r\n				$results = $this->model_catalog_category->getCategories($category_id);\r\n				\r\n				foreach ($results as $result) {\r\n					if ($result[\'category_id\']==-1)\r\n				continue;\r\n				]]>\r\n			</add>\r\n        </operation>\r\n		<operation>\r\n			<search>\r\n				<![CDATA[\r\n					$results = $this->model_catalog_product->getProducts($filter_data);\r\n				]]>\r\n			</search>\r\n            <add position=\"replace\">\r\n				<![CDATA[\r\n				$results = $this->model_catalog_product->getProducts($filter_data);\r\n				\r\n				foreach ($results as $result) {\r\n				]]>\r\n			</add>\r\n        </operation>\r\n    </file>\r\n</modification>',1,'2020-04-07 21:12:15');
/*!40000 ALTER TABLE `oc_modification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_module`
--

DROP TABLE IF EXISTS `oc_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_module`
--

LOCK TABLES `oc_module` WRITE;
/*!40000 ALTER TABLE `oc_module` DISABLE KEYS */;
INSERT INTO `oc_module` VALUES (30,'Category','banner','{\"name\":\"Category\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),(29,'Home Page','carousel','{\"name\":\"Home Page\",\"banner_id\":\"8\",\"width\":\"130\",\"height\":\"100\",\"status\":\"1\"}'),(28,'Home Page','featured','{\"name\":\"Home Page\",\"product\":[\"43\",\"40\",\"42\",\"30\"],\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),(27,'Home Page','slideshow','{\"name\":\"Home Page\",\"banner_id\":\"7\",\"width\":\"1140\",\"height\":\"380\",\"status\":\"1\"}'),(31,'Banner 1','banner','{\"name\":\"Banner 1\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),(32,'Footer','html','{\"name\":\"Footer\",\"module_description\":{\"1\":{\"title\":\"Footer\",\"description\":\"&lt;div style=&quot;color: rgb(212, 212, 212); background-color: rgb(30, 30, 30); font-family: Consolas, &amp;quot;Courier New&amp;quot;, monospace; font-size: 14px; line-height: 19px; white-space: pre;&quot;&gt;&lt;div&gt;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;lt;&lt;\\/span&gt;&lt;span style=&quot;color: #569cd6;&quot;&gt;div&lt;\\/span&gt;&amp;nbsp;&lt;span style=&quot;color: #9cdcfe;&quot;&gt;class&lt;\\/span&gt;=&lt;span style=&quot;color: #ce9178;&quot;&gt;&quot;footer-wrapper&quot;&lt;\\/span&gt;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;gt;&lt;\\/span&gt;&lt;\\/div&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;lt;&lt;\\/span&gt;&lt;span style=&quot;color: #569cd6;&quot;&gt;div&lt;\\/span&gt;&amp;nbsp;&lt;span style=&quot;color: #9cdcfe;&quot;&gt;class&lt;\\/span&gt;=&lt;span style=&quot;color: #ce9178;&quot;&gt;&quot;footer-inner&quot;&lt;\\/span&gt;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;gt;&lt;\\/span&gt;&lt;\\/div&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;lt;&lt;\\/span&gt;&lt;span style=&quot;color: #569cd6;&quot;&gt;div&lt;\\/span&gt;&amp;nbsp;&lt;span style=&quot;color: #9cdcfe;&quot;&gt;class&lt;\\/span&gt;=&lt;span style=&quot;color: #ce9178;&quot;&gt;&quot;contacts-title-wrapper&quot;&lt;\\/span&gt;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;gt;&lt;\\/span&gt;&lt;\\/div&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;lt;&lt;\\/span&gt;&lt;span style=&quot;color: #569cd6;&quot;&gt;h1&lt;\\/span&gt;&amp;nbsp;&lt;span style=&quot;color: #9cdcfe;&quot;&gt;class&lt;\\/span&gt;=&lt;span style=&quot;color: #ce9178;&quot;&gt;&quot;contacts-title&quot;&lt;\\/span&gt;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;gt;&lt;\\/span&gt;\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u0438&lt;span style=&quot;color: #808080;&quot;&gt;&amp;lt;\\/&lt;\\/span&gt;&lt;span style=&quot;color: #569cd6;&quot;&gt;h1&lt;\\/span&gt;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;gt;&lt;\\/span&gt;&lt;\\/div&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;lt;\\/&lt;\\/span&gt;&lt;span style=&quot;color: #569cd6;&quot;&gt;div&lt;\\/span&gt;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;gt;&lt;\\/span&gt;&lt;\\/div&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;lt;&lt;\\/span&gt;&lt;span style=&quot;color: #569cd6;&quot;&gt;div&lt;\\/span&gt;&amp;nbsp;&lt;span style=&quot;color: #9cdcfe;&quot;&gt;class&lt;\\/span&gt;=&lt;span style=&quot;color: #ce9178;&quot;&gt;&quot;contacts-body&quot;&lt;\\/span&gt;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;gt;&lt;\\/span&gt;&lt;\\/div&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;lt;&lt;\\/span&gt;&lt;span style=&quot;color: #569cd6;&quot;&gt;div&lt;\\/span&gt;&amp;nbsp;&lt;span style=&quot;color: #9cdcfe;&quot;&gt;class&lt;\\/span&gt;=&lt;span style=&quot;color: #ce9178;&quot;&gt;&quot;contacts-body-wrapper&quot;&lt;\\/span&gt;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;gt;&lt;\\/span&gt;&lt;\\/div&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;lt;&lt;\\/span&gt;&lt;span style=&quot;color: #569cd6;&quot;&gt;div&lt;\\/span&gt;&amp;nbsp;&lt;span style=&quot;color: #9cdcfe;&quot;&gt;class&lt;\\/span&gt;=&lt;span style=&quot;color: #ce9178;&quot;&gt;&quot;map-wrapper&quot;&lt;\\/span&gt;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;gt;&lt;\\/span&gt;&lt;\\/div&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;lt;&lt;\\/span&gt;&lt;span style=&quot;color: #569cd6;&quot;&gt;img&lt;\\/span&gt;&amp;nbsp;&lt;span style=&quot;color: #9cdcfe;&quot;&gt;src&lt;\\/span&gt;=&lt;span style=&quot;color: #ce9178;&quot;&gt;&quot;&quot;&lt;\\/span&gt;&amp;nbsp;&lt;span style=&quot;color: #9cdcfe;&quot;&gt;alt&lt;\\/span&gt;=&lt;span style=&quot;color: #ce9178;&quot;&gt;&quot;&quot;&lt;\\/span&gt;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;gt;&lt;\\/span&gt;&lt;\\/div&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;lt;\\/&lt;\\/span&gt;&lt;span style=&quot;color: #569cd6;&quot;&gt;div&lt;\\/span&gt;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;gt;&lt;\\/span&gt;&lt;\\/div&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;lt;&lt;\\/span&gt;&lt;span style=&quot;color: #569cd6;&quot;&gt;div&lt;\\/span&gt;&amp;nbsp;&lt;span style=&quot;color: #9cdcfe;&quot;&gt;class&lt;\\/span&gt;=&lt;span style=&quot;color: #ce9178;&quot;&gt;&quot;info-wrapper&quot;&lt;\\/span&gt;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;gt;&lt;\\/span&gt;&lt;\\/div&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;lt;&lt;\\/span&gt;&lt;span style=&quot;color: #569cd6;&quot;&gt;div&lt;\\/span&gt;&amp;nbsp;&lt;span style=&quot;color: #9cdcfe;&quot;&gt;class&lt;\\/span&gt;=&lt;span style=&quot;color: #ce9178;&quot;&gt;&quot;contacts-info&quot;&lt;\\/span&gt;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;gt;&lt;\\/span&gt;&lt;\\/div&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;span&lt;\\/div&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;lt;\\/&lt;\\/span&gt;&lt;span style=&quot;color: #569cd6;&quot;&gt;div&lt;\\/span&gt;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;gt;&lt;\\/span&gt;&lt;\\/div&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;lt;&lt;\\/span&gt;&lt;span style=&quot;color: #569cd6;&quot;&gt;div&lt;\\/span&gt;&amp;nbsp;&lt;span style=&quot;color: #9cdcfe;&quot;&gt;class&lt;\\/span&gt;=&lt;span style=&quot;color: #ce9178;&quot;&gt;&quot;social-links&quot;&lt;\\/span&gt;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;gt;&lt;\\/span&gt;&lt;\\/div&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;lt;&lt;\\/span&gt;&lt;span style=&quot;color: #569cd6;&quot;&gt;a&lt;\\/span&gt;&amp;nbsp;&lt;span style=&quot;color: #9cdcfe;&quot;&gt;href&lt;\\/span&gt;=&lt;span style=&quot;color: #ce9178;&quot;&gt;&quot;#&quot;&lt;\\/span&gt;&amp;nbsp;&lt;span style=&quot;color: #9cdcfe;&quot;&gt;class&lt;\\/span&gt;=&lt;span style=&quot;color: #ce9178;&quot;&gt;&quot;social-link&quot;&lt;\\/span&gt;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;gt;&amp;lt;&lt;\\/span&gt;&lt;span style=&quot;color: #569cd6;&quot;&gt;i&lt;\\/span&gt;&amp;nbsp;&lt;span style=&quot;color: #9cdcfe;&quot;&gt;class&lt;\\/span&gt;=&lt;span style=&quot;color: #ce9178;&quot;&gt;&quot;fa&amp;nbsp;fa-facebook&quot;&lt;\\/span&gt;&amp;nbsp;&lt;span style=&quot;color: #9cdcfe;&quot;&gt;aria-hidden&lt;\\/span&gt;=&lt;span style=&quot;color: #ce9178;&quot;&gt;&quot;true&quot;&lt;\\/span&gt;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;gt;&amp;lt;\\/&lt;\\/span&gt;&lt;span style=&quot;color: #569cd6;&quot;&gt;i&lt;\\/span&gt;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;gt;&amp;lt;\\/&lt;\\/span&gt;&lt;span style=&quot;color: #569cd6;&quot;&gt;a&lt;\\/span&gt;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;gt;&lt;\\/span&gt;&lt;\\/div&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;lt;&lt;\\/span&gt;&lt;span style=&quot;color: #569cd6;&quot;&gt;a&lt;\\/span&gt;&amp;nbsp;&lt;span style=&quot;color: #9cdcfe;&quot;&gt;href&lt;\\/span&gt;=&lt;span style=&quot;color: #ce9178;&quot;&gt;&quot;#&quot;&lt;\\/span&gt;&amp;nbsp;&lt;span style=&quot;color: #9cdcfe;&quot;&gt;class&lt;\\/span&gt;=&lt;span style=&quot;color: #ce9178;&quot;&gt;&quot;social-link&quot;&lt;\\/span&gt;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;gt;&amp;lt;&lt;\\/span&gt;&lt;span style=&quot;color: #569cd6;&quot;&gt;i&lt;\\/span&gt;&amp;nbsp;&lt;span style=&quot;color: #9cdcfe;&quot;&gt;class&lt;\\/span&gt;=&lt;span style=&quot;color: #ce9178;&quot;&gt;&quot;fa&amp;nbsp;fa-instagram&quot;&lt;\\/span&gt;&amp;nbsp;&lt;span style=&quot;color: #9cdcfe;&quot;&gt;aria-hidden&lt;\\/span&gt;=&lt;span style=&quot;color: #ce9178;&quot;&gt;&quot;true&quot;&lt;\\/span&gt;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;gt;&amp;lt;\\/&lt;\\/span&gt;&lt;span style=&quot;color: #569cd6;&quot;&gt;i&lt;\\/span&gt;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;gt;&amp;lt;\\/&lt;\\/span&gt;&lt;span style=&quot;color: #569cd6;&quot;&gt;a&lt;\\/span&gt;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;gt;&lt;\\/span&gt;&lt;\\/div&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;lt;&lt;\\/span&gt;&lt;span style=&quot;color: #569cd6;&quot;&gt;a&lt;\\/span&gt;&amp;nbsp;&lt;span style=&quot;color: #9cdcfe;&quot;&gt;href&lt;\\/span&gt;=&lt;span style=&quot;color: #ce9178;&quot;&gt;&quot;#&quot;&lt;\\/span&gt;&amp;nbsp;&lt;span style=&quot;color: #9cdcfe;&quot;&gt;class&lt;\\/span&gt;=&lt;span style=&quot;color: #ce9178;&quot;&gt;&quot;social-link&quot;&lt;\\/span&gt;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;gt;&amp;lt;&lt;\\/span&gt;&lt;span style=&quot;color: #569cd6;&quot;&gt;i&lt;\\/span&gt;&amp;nbsp;&lt;span style=&quot;color: #9cdcfe;&quot;&gt;class&lt;\\/span&gt;=&lt;span style=&quot;color: #ce9178;&quot;&gt;&quot;fa&amp;nbsp;fa-youtube-play&quot;&lt;\\/span&gt;&amp;nbsp;&lt;span style=&quot;color: #9cdcfe;&quot;&gt;aria-hidden&lt;\\/span&gt;=&lt;span style=&quot;color: #ce9178;&quot;&gt;&quot;true&quot;&lt;\\/span&gt;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;gt;&amp;lt;\\/&lt;\\/span&gt;&lt;span style=&quot;color: #569cd6;&quot;&gt;i&lt;\\/span&gt;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;gt;&amp;lt;\\/&lt;\\/span&gt;&lt;span style=&quot;color: #569cd6;&quot;&gt;a&lt;\\/span&gt;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;gt;&lt;\\/span&gt;&lt;\\/div&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;lt;\\/&lt;\\/span&gt;&lt;span style=&quot;color: #569cd6;&quot;&gt;div&lt;\\/span&gt;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;gt;&lt;\\/span&gt;&lt;\\/div&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;lt;\\/&lt;\\/span&gt;&lt;span style=&quot;color: #569cd6;&quot;&gt;div&lt;\\/span&gt;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;gt;&lt;\\/span&gt;&lt;\\/div&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;lt;\\/&lt;\\/span&gt;&lt;span style=&quot;color: #569cd6;&quot;&gt;div&lt;\\/span&gt;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;gt;&lt;\\/span&gt;&lt;\\/div&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;lt;\\/&lt;\\/span&gt;&lt;span style=&quot;color: #569cd6;&quot;&gt;div&lt;\\/span&gt;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;gt;&lt;\\/span&gt;&lt;\\/div&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;lt;\\/&lt;\\/span&gt;&lt;span style=&quot;color: #569cd6;&quot;&gt;div&lt;\\/span&gt;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;gt;&lt;\\/span&gt;&lt;\\/div&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;lt;\\/&lt;\\/span&gt;&lt;span style=&quot;color: #569cd6;&quot;&gt;div&lt;\\/span&gt;&lt;span style=&quot;color: #808080;&quot;&gt;&amp;gt;&lt;\\/span&gt;&lt;\\/div&gt;&lt;\\/div&gt;\"},\"2\":{\"title\":\"\",\"description\":\"\"},\"3\":{\"title\":\"\",\"description\":\"\"}},\"status\":\"1\"}');
/*!40000 ALTER TABLE `oc_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option`
--

DROP TABLE IF EXISTS `oc_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option`
--

LOCK TABLES `oc_option` WRITE;
/*!40000 ALTER TABLE `oc_option` DISABLE KEYS */;
INSERT INTO `oc_option` VALUES (1,'radio',1),(2,'checkbox',2),(4,'text',3),(5,'select',4),(6,'textarea',5),(7,'file',6),(8,'date',7),(9,'time',8),(10,'datetime',9),(11,'select',10),(12,'date',11);
/*!40000 ALTER TABLE `oc_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_description`
--

DROP TABLE IF EXISTS `oc_option_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_description`
--

LOCK TABLES `oc_option_description` WRITE;
/*!40000 ALTER TABLE `oc_option_description` DISABLE KEYS */;
INSERT INTO `oc_option_description` VALUES (1,1,'Radio'),(2,1,'Checkbox'),(4,1,'Text'),(6,1,'Textarea'),(8,1,'Date'),(7,1,'File'),(5,1,'Select'),(9,1,'Time'),(10,1,'Date &amp; Time'),(12,1,'Delivery Date'),(11,1,'Size'),(1,2,'Radio'),(2,2,'Checkbox'),(4,2,'Text'),(6,2,'Textarea'),(8,2,'Date'),(7,2,'File'),(5,2,'Select'),(9,2,'Time'),(10,2,'Date &amp; Time'),(12,2,'Delivery Date'),(11,2,'Size'),(1,3,'Radio'),(2,3,'Checkbox'),(4,3,'Text'),(6,3,'Textarea'),(8,3,'Date'),(7,3,'File'),(5,3,'Select'),(9,3,'Time'),(10,3,'Date &amp; Time'),(12,3,'Delivery Date'),(11,3,'Size');
/*!40000 ALTER TABLE `oc_option_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_value`
--

DROP TABLE IF EXISTS `oc_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_value`
--

LOCK TABLES `oc_option_value` WRITE;
/*!40000 ALTER TABLE `oc_option_value` DISABLE KEYS */;
INSERT INTO `oc_option_value` VALUES (43,1,'',3),(32,1,'',1),(45,2,'',4),(44,2,'',3),(42,5,'',4),(41,5,'',3),(39,5,'',1),(40,5,'',2),(31,1,'',2),(23,2,'',1),(24,2,'',2),(46,11,'',1),(47,11,'',2),(48,11,'',3);
/*!40000 ALTER TABLE `oc_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_value_description`
--

DROP TABLE IF EXISTS `oc_option_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_value_description`
--

LOCK TABLES `oc_option_value_description` WRITE;
/*!40000 ALTER TABLE `oc_option_value_description` DISABLE KEYS */;
INSERT INTO `oc_option_value_description` VALUES (43,1,1,'Large'),(32,1,1,'Small'),(45,1,2,'Checkbox 4'),(44,1,2,'Checkbox 3'),(31,1,1,'Medium'),(42,1,5,'Yellow'),(41,1,5,'Green'),(39,1,5,'Red'),(40,1,5,'Blue'),(23,1,2,'Checkbox 1'),(24,1,2,'Checkbox 2'),(48,1,11,'Large'),(47,1,11,'Medium'),(46,1,11,'Small'),(43,2,1,'Large'),(32,2,1,'Small'),(45,2,2,'Checkbox 4'),(44,2,2,'Checkbox 3'),(31,2,1,'Medium'),(42,2,5,'Yellow'),(41,2,5,'Green'),(39,2,5,'Red'),(40,2,5,'Blue'),(23,2,2,'Checkbox 1'),(24,2,2,'Checkbox 2'),(48,2,11,'Large'),(47,2,11,'Medium'),(46,2,11,'Small'),(43,3,1,'Large'),(32,3,1,'Small'),(45,3,2,'Checkbox 4'),(44,3,2,'Checkbox 3'),(31,3,1,'Medium'),(42,3,5,'Yellow'),(41,3,5,'Green'),(39,3,5,'Red'),(40,3,5,'Blue'),(23,3,2,'Checkbox 1'),(24,3,2,'Checkbox 2'),(48,3,11,'Large'),(47,3,11,'Medium'),(46,3,11,'Small');
/*!40000 ALTER TABLE `oc_option_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order`
--

DROP TABLE IF EXISTS `oc_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order`
--

LOCK TABLES `oc_order` WRITE;
/*!40000 ALTER TABLE `oc_order` DISABLE KEYS */;
INSERT INTO `oc_order` VALUES (1,0,'INV-2020-00',0,'Your Store','http://localhost/sharlar-shop/',0,1,'Sergey','S','sergskupow@gmail.com','122622651','','[]','Sergey','S','56','56655','8446546565','kkkk','1231','United Kingdom',222,'Carmarthenshire',3527,'','[]','Cash On Delivery','cod','Sergey','S','56','56655','8446546565','kkkk','1231','United Kingdom',222,'Carmarthenshire',3527,'','[]','Flat Shipping Rate','flat.flat','',131.2000,1,0,0.0000,0,'',1,2,'USD',1.00000000,'::1','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36','en-US,en;q=0.9,ru-RU;q=0.8,ru;q=0.7,de;q=0.6,uk;q=0.5','2020-04-06 15:58:36','2020-04-06 16:00:33'),(3,0,'INV-2020-00',0,'Your Store','http://localhost/sharlar-shop/',2,1,'C','C','seregaskypow@gmail.com','34242424','','','C','C','','werwrwe','','Киев','','Ukraine',220,'Kyiv',3490,'','[]','Оплата при доставці','cod','C','C','','werwrwe','','Киев','','Ukraine',220,'Kyiv',3490,'','[]','Доставка з фіксованою вартістю доставки','flat.flat','',41.0000,1,0,0.0000,0,'',3,4,'UAH',1.00000000,'::1','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36','en-US,en;q=0.9,ru-RU;q=0.8,ru;q=0.7,de;q=0.6,uk;q=0.5','2020-04-08 22:49:00','2020-04-08 22:49:18'),(4,0,'INV-2020-00',0,'Your Store','http://localhost/sharlar-shop/',0,1,'Сергій','С','sergskypow@gmail.com','0509368399','','[]','Сергій','С','','Бульвар Вацлава Гавела25/54','49','Киев','03126','Ukraine',220,'Kyiv',3490,'','[]','Оплата при доставці','cod','Сергій','С','','Бульвар Вацлава Гавела25/54','49','Киев','03126','Ukraine',220,'Kyiv',3490,'','[]','Доставка з фіксованою вартістю доставки','flat.flat','',41.0000,3,0,0.0000,0,'',3,4,'UAH',1.00000000,'::1','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36','en-US,en;q=0.9,ru-RU;q=0.8,ru;q=0.7,de;q=0.6,uk;q=0.5','2020-04-18 13:42:04','2020-04-18 13:44:07'),(5,0,'INV-2020-00',0,'Your Store','http://localhost/sharlar-shop/',0,1,'Скупов','Сергей','seregaskypow@gmail.com','050936839','','[]','Скупов','Сергей','','dsffsfdsfsdf','4dsfdsfdsf','Кие','03126','Ukraine',220,'Cherkas\'ka Oblast\'',3480,'','[]','Оплата при доставці','cod','Скупов','Сергей','','dsffsfdsfsdf','4dsfdsfdsf','Кие','03126','Ukraine',220,'Cherkas\'ka Oblast\'',3480,'','[]','Доставка з фіксованою вартістю доставки','flat.flat','',23.0000,1,0,0.0000,0,'',3,4,'UAH',1.00000000,'::1','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36','en-US,en;q=0.9,ru-RU;q=0.8,ru;q=0.7,de;q=0.6,uk;q=0.5','2020-04-21 13:46:36','2020-04-21 13:46:38'),(6,0,'INV-2020-00',0,'Your Store','http://reco.fun:8080/sharlar-shop/',0,1,'Сергій','Скупов','sergskypow@gmail.com','+380509368399','','[]','Сергій','Скупов','','Бульвар Вацлава Гавела','Бульвар Вацлава Гавела','Київ','03126','Uruguay',225,'Flores',3692,'','[]','Оплата при доставці','cod','Сергій','Скупов','','Бульвар Вацлава Гавела','Бульвар Вацлава Гавела','Київ','03126','Uruguay',225,'Flores',3692,'','[]','Доставка з фіксованою вартістю доставки','flat.flat','',23.0000,0,0,0.0000,0,'',3,4,'UAH',1.00000000,'178.133.61.43','','Mozilla/5.0 (Linux; Android 10; ONEPLUS A6000) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Mobile Safari/537.36','en-US,en;q=0.9,ru-RU;q=0.8,ru;q=0.7,de;q=0.6,uk;q=0.5','2020-07-20 17:55:30','2020-07-20 17:55:30'),(7,0,'INV-2020-00',0,'Your Store','http://reco.fun:8080/sharlar-shop/',0,1,'Сергій','Скупов','sergskypow@gmail.com','+380509368399','','[]','Сергій','Скупов','','Бульвар Вацлава Гавела','Бульвар Вацлава Гавела','Київ','03126','Uruguay',225,'Flores',3692,'','[]','Оплата при доставці','cod','Сергій','Скупов','','Бульвар Вацлава Гавела','Бульвар Вацлава Гавела','Київ','03126','Uruguay',225,'Flores',3692,'','[]','Доставка з фіксованою вартістю доставки','flat.flat','',23.0000,0,0,0.0000,0,'',3,4,'UAH',1.00000000,'178.133.61.43','','Mozilla/5.0 (Linux; Android 10; ONEPLUS A6000) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Mobile Safari/537.36','en-US,en;q=0.9,ru-RU;q=0.8,ru;q=0.7,de;q=0.6,uk;q=0.5','2020-07-20 17:58:20','2020-07-20 17:58:20'),(8,0,'INV-2020-00',0,'Your Store','http://reco.fun:8080/sharlar-shop/',0,1,'Сергій','Скупов','sergskypow@gmail.com','+380509368399','','[]','Сергій','Скупов','','Бульвар Вацлава Гавела','Бульвар Вацлава Гавела','Київ','03126','Ukraine',220,'Kyiv',3490,'','[]','Оплата при доставці','cod','Сергій','Скупов','','Бульвар Вацлава Гавела','Бульвар Вацлава Гавела','Київ','03126','Ukraine',220,'Kyiv',3490,'','[]','Доставка з фіксованою вартістю доставки','flat.flat','',29.0000,0,0,0.0000,0,'',3,4,'UAH',1.00000000,'176.36.151.216','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36','en-US,en;q=0.9,ru-RU;q=0.8,ru;q=0.7,de;q=0.6,uk;q=0.5','2020-07-20 18:14:21','2020-07-20 18:14:21'),(9,0,'INV-2020-00',0,'Your Store','http://reco.fun:8080/sharlar-shop/',0,1,'Сергій','Скупов','sergskypow@gmail.com','+380509368399','','[]','Сергій','Скупов','','Бульвар Вацлава Гавела','Бульвар Вацлава Гавела','Київ','03126','Ukraine',220,'Kyiv',3490,'','[]','Оплата при доставці','cod','Сергій','Скупов','','Бульвар Вацлава Гавела','Бульвар Вацлава Гавела','Київ','03126','Ukraine',220,'Kyiv',3490,'','[]','Доставка з фіксованою вартістю доставки','flat.flat','',29.0000,1,0,0.0000,0,'',3,4,'UAH',1.00000000,'176.36.151.216','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36','en-US,en;q=0.9,ru-RU;q=0.8,ru;q=0.7,de;q=0.6,uk;q=0.5','2020-07-20 18:15:36','2020-07-20 18:15:41'),(10,0,'INV-2020-00',0,'Your Store','http://reco.fun:8080/sharlar-shop/',0,1,'Igor','Pikuza','Ihorek12345@gmail.com','0664688831','','[]','Igor','Pikuza','','Ирпенская','','Киев','03179','Ukraine',220,'Kyiv',3490,'','[]','Оплата при доставці','cod','Igor','Pikuza','','Ирпенская','','Киев','03179','Ukraine',220,'Kyiv',3490,'','[]','Доставка з фіксованою вартістю доставки','flat.flat','Бла бла блф',134.0000,1,0,0.0000,0,'',3,4,'UAH',1.00000000,'46.133.138.247','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36','ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7','2020-07-24 12:09:29','2020-07-24 12:09:36'),(11,0,'INV-2020-00',0,'Your Store','http://reco.fun:8080/sharlar-shop/',0,1,'Igor','Pikuza','Ihorek12345@gmail.com','054354354543','','[]','Igor','Pikuza','Agro','Ирпенская','','Киев','03179','Ukraine',220,'Kyiv',3490,'','[]','Оплата при доставці','cod','Igor','Pikuza','Agro','Ирпенская','','Киев','03179','Ukraine',220,'Kyiv',3490,'','[]','Доставка з фіксованою вартістю доставки','flat.flat','Bla bla bla',63.0000,1,0,0.0000,0,'',3,4,'UAH',1.00000000,'46.133.138.247','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36','ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7','2020-07-24 12:32:39','2020-07-24 12:32:47'),(12,0,'INV-2020-00',0,'Your Store','http://reco.fun:8080/sharlar-shop/',0,1,'Игорь','Пикуза','Ihorek12345@gmail.com','066468831','','[]','Игорь','Пикуза','','Ирпенская','','Киев','03179','Ukraine',220,'Kyivs\'ka Oblast\'',3491,'','[]','Оплата при доставке','cod','Игорь','Пикуза','','Ирпенская','','Киев','03179','Ukraine',220,'Kyivs\'ka Oblast\'',3491,'','[]','Самовывоз из магазина','pickup.pickup','SEREGA PISUN',45.0000,1,0,0.0000,0,'',2,4,'UAH',1.00000000,'176.36.58.166','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36','ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7','2020-07-26 20:07:35','2020-07-26 20:07:44'),(13,0,'INV-2020-00',0,'Your Store','http://reco.fun:8080/sharlar-shop/',0,1,'Скупов','Сергей','sergskypow@gmail.com','0509368399','','[]','Скупов','Сергей','','Бульвар Вацлава Гавела 54/26','Бульвар Вацлава Гавела 54/26','Киев','03126','Ukraine',220,'Kyivs\'ka Oblast\'',3491,'','[]','Cash On Delivery','cod','Скупов','Сергей','','Бульвар Вацлава Гавела 54/26','Бульвар Вацлава Гавела 54/26','Киев','03126','Ukraine',220,'Kyivs\'ka Oblast\'',3491,'','[]','Pickup From Store','pickup.pickup','',35.0000,0,0,0.0000,0,'',1,4,'UAH',1.00000000,'176.36.151.216','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36','en-US,en;q=0.9,ru-RU;q=0.8,ru;q=0.7,de;q=0.6,uk;q=0.5','2020-07-28 09:15:06','2020-07-28 09:15:06'),(14,0,'INV-2020-00',0,'Your Store','http://reco.fun:8080/sharlar-shop/',0,1,'Скупов','Сергей','sergskypow@gmail.com','0509368399','','[]','Скупов','Сергей','','Бульвар Вацлава Гавела 54/26','Бульвар Вацлава Гавела 54/26','Киев','03126','Ukraine',220,'Kyivs\'ka Oblast\'',3491,'','[]','Оплата при доставці','cod','Скупов','Сергей','','Бульвар Вацлава Гавела 54/26','Бульвар Вацлава Гавела 54/26','Киев','03126','Ukraine',220,'Kyivs\'ka Oblast\'',3491,'','[]','Самовивіз із магазину','pickup.pickup','',18.0000,0,0,0.0000,0,'',3,4,'UAH',1.00000000,'176.36.151.216','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36','en-US,en;q=0.9,ru-RU;q=0.8,ru;q=0.7,de;q=0.6,uk;q=0.5','2020-07-28 09:16:16','2020-07-28 09:16:16'),(15,0,'INV-2020-00',0,'Your Store','http://reco.fun:8080/sharlar-shop/',0,1,'Скупов','Сергей','sergskypow@gmail.com','0509368399','','[]','Скупов','Сергей','','Бульвар Вацлава Гавела 54/26','Бульвар Вацлава Гавела 54/26','Киев','03126','Ukraine',220,'Kyivs\'ka Oblast\'',3491,'','[]','Оплата при доставці','cod','Скупов','Сергей','','Бульвар Вацлава Гавела 54/26','Бульвар Вацлава Гавела 54/26','Киев','03126','Ukraine',220,'Kyivs\'ka Oblast\'',3491,'','[]','Самовивіз із магазину','pickup.pickup','',18.0000,0,0,0.0000,0,'',3,4,'UAH',1.00000000,'176.36.151.216','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36','en-US,en;q=0.9,ru-RU;q=0.8,ru;q=0.7,de;q=0.6,uk;q=0.5','2020-07-28 09:16:33','2020-07-28 09:16:33'),(16,0,'INV-2020-00',0,'Your Store','http://reco.fun:8080/sharlar-shop/',0,1,'Скупов','Сергей','sergskypow@gmail.com','0509368399','','[]','Скупов','Сергей','','Бульвар Вацлава Гавела 54/26','Бульвар Вацлава Гавела 54/26','Киев','03126','Ukraine',220,'Kyivs\'ka Oblast\'',3491,'','[]','Оплата при доставці','cod','Скупов','Сергей','','Бульвар Вацлава Гавела 54/26','Бульвар Вацлава Гавела 54/26','Киев','03126','Ukraine',220,'Kyivs\'ka Oblast\'',3491,'','[]','Самовивіз із магазину','pickup.pickup','',1350.0000,0,0,0.0000,0,'',3,4,'UAH',1.00000000,'176.36.151.216','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36','en-US,en;q=0.9,ru-RU;q=0.8,ru;q=0.7,de;q=0.6,uk;q=0.5','2020-07-28 09:59:49','2020-07-28 09:59:49');
/*!40000 ALTER TABLE `oc_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_history`
--

DROP TABLE IF EXISTS `oc_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_history`
--

LOCK TABLES `oc_order_history` WRITE;
/*!40000 ALTER TABLE `oc_order_history` DISABLE KEYS */;
INSERT INTO `oc_order_history` VALUES (1,1,1,0,'','2020-04-06 15:58:45'),(2,1,1,0,'','2020-04-06 16:00:33'),(7,3,1,0,'','2020-04-08 22:49:18'),(6,3,1,0,'','2020-04-08 22:49:12'),(8,4,1,0,'','2020-04-18 13:42:11'),(9,4,1,0,'','2020-04-18 13:42:18'),(10,4,3,0,'','2020-04-18 13:44:07'),(11,5,1,0,'','2020-04-21 13:46:38'),(12,9,1,0,'','2020-07-20 18:15:41'),(13,10,1,0,'','2020-07-24 12:09:36'),(14,11,1,0,'','2020-07-24 12:32:47'),(15,12,1,0,'','2020-07-26 20:07:44');
/*!40000 ALTER TABLE `oc_order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_option`
--

DROP TABLE IF EXISTS `oc_order_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_option`
--

LOCK TABLES `oc_order_option` WRITE;
/*!40000 ALTER TABLE `oc_order_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_product`
--

DROP TABLE IF EXISTS `oc_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_product`
--

LOCK TABLES `oc_order_product` WRITE;
/*!40000 ALTER TABLE `oc_order_product` DISABLE KEYS */;
INSERT INTO `oc_order_product` VALUES (1,1,40,'iPhone','product 11',1,101.0000,101.0000,22.2000,0),(3,3,57,'Спайдермен','figure',1,36.0000,36.0000,0.0000,0),(4,4,57,'Спайдермен','figure',1,36.0000,36.0000,0.0000,0),(5,5,50,'Латексна кулька зелена','latex',1,18.0000,18.0000,0.0000,0),(6,6,53,'Латексна кулька синя','standart12',1,18.0000,18.0000,0.0000,0),(7,7,53,'Латексна кулька синя','standart12',1,18.0000,18.0000,0.0000,0),(8,8,56,'Сфера зелена 24&quot;','sphere18',1,24.0000,24.0000,0.0000,0),(9,9,56,'Сфера зелена 24&quot;','sphere18',1,24.0000,24.0000,0.0000,0),(10,10,56,'Сфера зелена 24&quot;','sphere18',2,24.0000,48.0000,0.0000,0),(11,10,58,'Метелик','figure',1,45.0000,45.0000,0.0000,0),(12,10,57,'Спайдермен','figure',1,36.0000,36.0000,0.0000,0),(13,11,56,'Сфера зелена 24&quot;','sphere18',1,24.0000,24.0000,0.0000,0),(14,11,54,'Сфера синя','sphere18',1,17.0000,17.0000,0.0000,0),(15,11,55,'Сфера червона','sphere18',1,17.0000,17.0000,0.0000,0),(16,12,58,'Бабочка','figure',1,45.0000,45.0000,0.0000,0),(17,13,59,'Foil ','foil18,Шары без рисунка',1,35.0000,35.0000,0.0000,0),(18,14,51,'Латексна кулька салатовий','standart12',1,18.0000,18.0000,0.0000,0),(19,15,51,'Латексна кулька салатовий','standart12',1,18.0000,18.0000,0.0000,0),(20,16,58,'Метелик','figure',30,45.0000,1350.0000,0.0000,0);
/*!40000 ALTER TABLE `oc_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_recurring`
--

DROP TABLE IF EXISTS `oc_order_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_recurring`
--

LOCK TABLES `oc_order_recurring` WRITE;
/*!40000 ALTER TABLE `oc_order_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_recurring_transaction`
--

DROP TABLE IF EXISTS `oc_order_recurring_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_recurring_transaction`
--

LOCK TABLES `oc_order_recurring_transaction` WRITE;
/*!40000 ALTER TABLE `oc_order_recurring_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_shipment`
--

DROP TABLE IF EXISTS `oc_order_shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_shipment` (
  `order_shipment_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `shipping_courier_id` varchar(255) NOT NULL DEFAULT '',
  `tracking_number` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`order_shipment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_shipment`
--

LOCK TABLES `oc_order_shipment` WRITE;
/*!40000 ALTER TABLE `oc_order_shipment` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_shipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_status`
--

DROP TABLE IF EXISTS `oc_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_status`
--

LOCK TABLES `oc_order_status` WRITE;
/*!40000 ALTER TABLE `oc_order_status` DISABLE KEYS */;
INSERT INTO `oc_order_status` VALUES (2,1,'Processing'),(3,1,'Shipped'),(7,1,'Canceled'),(5,1,'Complete'),(8,1,'Denied'),(9,1,'Canceled Reversal'),(10,1,'Failed'),(11,1,'Refunded'),(12,1,'Reversed'),(13,1,'Chargeback'),(1,1,'Pending'),(16,1,'Voided'),(15,1,'Processed'),(14,1,'Expired'),(2,2,'Processing'),(3,2,'Shipped'),(7,2,'Canceled'),(5,2,'Complete'),(8,2,'Denied'),(9,2,'Canceled Reversal'),(10,2,'Failed'),(11,2,'Refunded'),(12,2,'Reversed'),(13,2,'Chargeback'),(1,2,'Pending'),(16,2,'Voided'),(15,2,'Processed'),(14,2,'Expired'),(2,3,'Processing'),(3,3,'Shipped'),(7,3,'Canceled'),(5,3,'Complete'),(8,3,'Denied'),(9,3,'Canceled Reversal'),(10,3,'Failed'),(11,3,'Refunded'),(12,3,'Reversed'),(13,3,'Chargeback'),(1,3,'Pending'),(16,3,'Voided'),(15,3,'Processed'),(14,3,'Expired');
/*!40000 ALTER TABLE `oc_order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_total`
--

DROP TABLE IF EXISTS `oc_order_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_total`
--

LOCK TABLES `oc_order_total` WRITE;
/*!40000 ALTER TABLE `oc_order_total` DISABLE KEYS */;
INSERT INTO `oc_order_total` VALUES (1,1,'sub_total','Sub-Total',101.0000,1),(2,1,'shipping','Flat Shipping Rate',5.0000,3),(3,1,'tax','Eco Tax (-2.00)',4.0000,5),(4,1,'tax','VAT (20%)',21.2000,5),(5,1,'total','Total',131.2000,9),(12,3,'shipping','Доставка з фіксованою вартістю доставки',5.0000,3),(11,3,'sub_total','Сума',36.0000,1),(13,3,'total','Разом',41.0000,9),(14,4,'sub_total','Сума',36.0000,1),(15,4,'shipping','Доставка з фіксованою вартістю доставки',5.0000,3),(16,4,'total','Разом',41.0000,9),(17,5,'sub_total','Сума',18.0000,1),(18,5,'shipping','Доставка з фіксованою вартістю доставки',5.0000,3),(19,5,'total','Разом',23.0000,9),(20,6,'sub_total','Сума',18.0000,1),(21,6,'shipping','Доставка з фіксованою вартістю доставки',5.0000,3),(22,6,'total','Разом',23.0000,9),(23,7,'sub_total','Сума',18.0000,1),(24,7,'shipping','Доставка з фіксованою вартістю доставки',5.0000,3),(25,7,'total','Разом',23.0000,9),(26,8,'sub_total','Сума',24.0000,1),(27,8,'shipping','Доставка з фіксованою вартістю доставки',5.0000,3),(28,8,'total','Разом',29.0000,9),(29,9,'sub_total','Сума',24.0000,1),(30,9,'shipping','Доставка з фіксованою вартістю доставки',5.0000,3),(31,9,'total','Разом',29.0000,9),(32,10,'sub_total','Сума',129.0000,1),(33,10,'shipping','Доставка з фіксованою вартістю доставки',5.0000,3),(34,10,'total','Разом',134.0000,9),(35,11,'sub_total','Сума',58.0000,1),(36,11,'shipping','Доставка з фіксованою вартістю доставки',5.0000,3),(37,11,'total','Разом',63.0000,9),(38,12,'sub_total','Сумма',45.0000,1),(39,12,'shipping','Самовывоз из магазина',0.0000,3),(40,12,'total','Итого',45.0000,9),(41,13,'sub_total','Sub-Total',35.0000,1),(42,13,'shipping','Pickup From Store',0.0000,3),(43,13,'total','Total',35.0000,9),(44,14,'sub_total','Сума',18.0000,1),(45,14,'shipping','Самовивіз із магазину',0.0000,3),(46,14,'total','Разом',18.0000,9),(47,15,'sub_total','Сума',18.0000,1),(48,15,'shipping','Самовивіз із магазину',0.0000,3),(49,15,'total','Разом',18.0000,9),(50,16,'sub_total','Сума',1350.0000,1),(51,16,'shipping','Самовивіз із магазину',0.0000,3),(52,16,'total','Разом',1350.0000,9);
/*!40000 ALTER TABLE `oc_order_total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_voucher`
--

DROP TABLE IF EXISTS `oc_order_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_voucher`
--

LOCK TABLES `oc_order_voucher` WRITE;
/*!40000 ALTER TABLE `oc_order_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product`
--

DROP TABLE IF EXISTS `oc_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product`
--

LOCK TABLES `oc_product` WRITE;
/*!40000 ALTER TABLE `oc_product` DISABLE KEYS */;
INSERT INTO `oc_product` VALUES (54,'sphere18','','','','','','','',25,7,'catalog/balloons/confetti/confetti-r12-101.png',0,1,17.0000,0,0,'2020-04-08',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,1,'2020-04-08 15:48:50','2020-04-27 14:56:48'),(55,'sphere18','','','','','','','',25,7,'catalog/balloons/sphere/_18/bubble-r18-012.png',0,1,17.0000,0,0,'2020-04-08',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,4,'2020-04-08 15:48:56','2020-04-08 18:17:39'),(56,'sphere18','','','','','','','',22,7,'catalog/balloons/sphere/_24/bubble-r24-10.png',0,1,24.0000,0,0,'2020-04-08',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,10,'2020-04-08 15:50:17','2020-04-27 14:56:54'),(57,'figure','','','','','','','',120,7,'catalog/balloons/figure/anagram-26330.png',0,1,36.0000,0,0,'2020-04-08',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,1,'2020-04-08 15:58:10','2020-04-27 18:44:52'),(58,'figure','','','','','','','',121,7,'catalog/balloons/figure/anagram-07255.png',0,1,45.0000,0,0,'2020-04-08',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-04-08 15:59:36','2020-04-27 18:44:44'),(59,'foil18,Шары без рисунка','','','','','','','',666,6,'catalog/balloons/foil/_18/anagram-f18-30738.png',0,1,35.0000,0,0,'2020-04-27',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,5,'2020-04-27 18:53:10','2020-04-27 18:53:25'),(50,'standart12','','','','','','','',0,7,'catalog/balloons/latex/green.png',0,1,18.0000,0,0,'2020-04-08',25.00000000,2,125.00000000,25.00000000,125.00000000,1,1,1,1,1,170,'2020-04-08 15:33:15','2020-04-27 14:55:33'),(51,'standart12','','','','','','','',1,7,'catalog/balloons/latex/light-green.png',0,1,18.0000,0,0,'2020-04-08',25.00000000,2,125.00000000,25.00000000,125.00000000,1,1,1,1,1,5,'2020-04-08 15:35:08','2020-04-27 14:55:55'),(52,'standart12','','','','','','','',1,7,'catalog/balloons/latex/red.png',0,1,18.0000,0,0,'2020-04-08',25.00000000,2,125.00000000,25.00000000,125.00000000,1,1,1,1,1,7,'2020-04-08 15:37:43','2020-04-27 14:56:05'),(53,'standart12','','','','','','','',1,7,'catalog/balloons/latex/blue.png',0,1,18.0000,0,0,'2020-04-08',25.00000000,2,125.00000000,25.00000000,125.00000000,1,1,1,1,1,2,'2020-04-08 15:39:12','2020-04-27 15:39:46');
/*!40000 ALTER TABLE `oc_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_attribute`
--

DROP TABLE IF EXISTS `oc_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_attribute`
--

LOCK TABLES `oc_product_attribute` WRITE;
/*!40000 ALTER TABLE `oc_product_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_description`
--

DROP TABLE IF EXISTS `oc_product_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_description`
--

LOCK TABLES `oc_product_description` WRITE;
/*!40000 ALTER TABLE `oc_product_description` DISABLE KEYS */;
INSERT INTO `oc_product_description` VALUES (58,3,'Метелик','&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','','figure','',''),(50,2,'Латексный шар зеленый','&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','','latex_balloon','',''),(50,3,'Латексна кулька зелена','&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','','latex_balloon','',''),(53,1,'Latex balloon blue','&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','','latex_balloon','',''),(58,1,'Butterfly','&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','','figure','',''),(58,2,'Бабочка','&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','','figure','',''),(57,1,'Spiderman','&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','','figure','',''),(57,2,'Спайдермен','&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','','figure','',''),(57,3,'Спайдермен','&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','','figure','',''),(51,2,'Латексный шар салатовый','&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','','latex_balloon','',''),(51,3,'Латексна кулька салатовий','&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','','latex_balloon','',''),(54,2,'Сфера синяя','&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','','sphere','',''),(54,3,'Сфера синя','&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','','sphere','',''),(52,1,'Latex balloon red','&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','','latex_balloon','',''),(52,2,'Латексный шар красный','&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','','latex_balloon','',''),(52,3,'Латексна кулька червона','&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','','latex_balloon','',''),(53,2,'Латексный шар синий','&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','','latex_balloon','',''),(53,3,'Латексна кулька синя','&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','','latex_balloon','',''),(59,1,'Foil ','','','foil','',''),(59,2,'Фольга','','','foil','',''),(59,3,'Фольга','','','foil','',''),(51,1,'Latex balloon light-green','&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','','latex_balloon','',''),(54,1,'Sphere blue','&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','','sphere','',''),(50,1,'Latex balloon green','&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','','latex_balloon','',''),(56,3,'Сфера зелена 24&quot;','&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','','sphere','',''),(56,2,'Сфера зеленая 24&quot;','&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','','sphere','',''),(55,1,'Sphere red','&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','','sphere','',''),(55,2,'Сфера красная','&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','','sphere','',''),(55,3,'Сфера червона','&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','','sphere','',''),(56,1,'Sphere green 24&quot;','&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','','sphere','','');
/*!40000 ALTER TABLE `oc_product_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_discount`
--

DROP TABLE IF EXISTS `oc_product_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=444 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_discount`
--

LOCK TABLES `oc_product_discount` WRITE;
/*!40000 ALTER TABLE `oc_product_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_filter`
--

DROP TABLE IF EXISTS `oc_product_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_filter`
--

LOCK TABLES `oc_product_filter` WRITE;
/*!40000 ALTER TABLE `oc_product_filter` DISABLE KEYS */;
INSERT INTO `oc_product_filter` VALUES (50,4),(51,4),(52,5),(53,3),(54,3),(54,10),(55,5),(55,10),(56,4),(56,11),(57,5),(58,9),(59,9);
/*!40000 ALTER TABLE `oc_product_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_image`
--

DROP TABLE IF EXISTS `oc_product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2369 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_image`
--

LOCK TABLES `oc_product_image` WRITE;
/*!40000 ALTER TABLE `oc_product_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_option`
--

DROP TABLE IF EXISTS `oc_product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=227 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_option`
--

LOCK TABLES `oc_product_option` WRITE;
/*!40000 ALTER TABLE `oc_product_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_option_value`
--

DROP TABLE IF EXISTS `oc_product_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_option_value`
--

LOCK TABLES `oc_product_option_value` WRITE;
/*!40000 ALTER TABLE `oc_product_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_recurring`
--

DROP TABLE IF EXISTS `oc_product_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_recurring`
--

LOCK TABLES `oc_product_recurring` WRITE;
/*!40000 ALTER TABLE `oc_product_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_related`
--

DROP TABLE IF EXISTS `oc_product_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_related`
--

LOCK TABLES `oc_product_related` WRITE;
/*!40000 ALTER TABLE `oc_product_related` DISABLE KEYS */;
INSERT INTO `oc_product_related` VALUES (50,51),(50,52),(50,53),(51,50),(51,52),(51,53),(52,50),(52,51),(52,53),(53,50),(53,51),(53,52);
/*!40000 ALTER TABLE `oc_product_related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_reward`
--

DROP TABLE IF EXISTS `oc_product_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=549 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_reward`
--

LOCK TABLES `oc_product_reward` WRITE;
/*!40000 ALTER TABLE `oc_product_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_special`
--

DROP TABLE IF EXISTS `oc_product_special`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=443 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_special`
--

LOCK TABLES `oc_product_special` WRITE;
/*!40000 ALTER TABLE `oc_product_special` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_special` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_category`
--

DROP TABLE IF EXISTS `oc_product_to_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_category`
--

LOCK TABLES `oc_product_to_category` WRITE;
/*!40000 ALTER TABLE `oc_product_to_category` DISABLE KEYS */;
INSERT INTO `oc_product_to_category` VALUES (50,-1),(50,59),(50,62),(51,-1),(51,59),(51,62),(52,-1),(52,59),(52,62),(53,-1),(53,59),(53,62),(54,-1),(54,60),(54,62),(55,-1),(55,60),(55,62),(56,-1),(56,60),(56,62),(57,-1),(57,61),(57,62),(58,-1),(58,61),(58,62),(59,-1),(59,62),(59,63);
/*!40000 ALTER TABLE `oc_product_to_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_download`
--

DROP TABLE IF EXISTS `oc_product_to_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_download`
--

LOCK TABLES `oc_product_to_download` WRITE;
/*!40000 ALTER TABLE `oc_product_to_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_to_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_layout`
--

DROP TABLE IF EXISTS `oc_product_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_layout`
--

LOCK TABLES `oc_product_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_product_to_layout` DISABLE KEYS */;
INSERT INTO `oc_product_to_layout` VALUES (55,0,0),(54,0,0),(52,0,0),(53,0,0),(51,0,0),(50,0,0),(56,0,0),(57,0,0),(58,0,0),(59,0,0);
/*!40000 ALTER TABLE `oc_product_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_store`
--

DROP TABLE IF EXISTS `oc_product_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_store`
--

LOCK TABLES `oc_product_to_store` WRITE;
/*!40000 ALTER TABLE `oc_product_to_store` DISABLE KEYS */;
INSERT INTO `oc_product_to_store` VALUES (50,0),(51,0),(52,0),(53,0),(54,0),(55,0),(56,0),(57,0),(58,0),(59,0);
/*!40000 ALTER TABLE `oc_product_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_recurring`
--

DROP TABLE IF EXISTS `oc_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_recurring`
--

LOCK TABLES `oc_recurring` WRITE;
/*!40000 ALTER TABLE `oc_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_recurring_description`
--

DROP TABLE IF EXISTS `oc_recurring_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`recurring_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_recurring_description`
--

LOCK TABLES `oc_recurring_description` WRITE;
/*!40000 ALTER TABLE `oc_recurring_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_recurring_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return`
--

DROP TABLE IF EXISTS `oc_return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return`
--

LOCK TABLES `oc_return` WRITE;
/*!40000 ALTER TABLE `oc_return` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_return` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_action`
--

DROP TABLE IF EXISTS `oc_return_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_action`
--

LOCK TABLES `oc_return_action` WRITE;
/*!40000 ALTER TABLE `oc_return_action` DISABLE KEYS */;
INSERT INTO `oc_return_action` VALUES (1,1,'Refunded'),(2,1,'Credit Issued'),(3,1,'Replacement Sent'),(1,2,'Refunded'),(2,2,'Credit Issued'),(3,2,'Replacement Sent'),(1,3,'Refunded'),(2,3,'Credit Issued'),(3,3,'Replacement Sent');
/*!40000 ALTER TABLE `oc_return_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_history`
--

DROP TABLE IF EXISTS `oc_return_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_history`
--

LOCK TABLES `oc_return_history` WRITE;
/*!40000 ALTER TABLE `oc_return_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_return_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_reason`
--

DROP TABLE IF EXISTS `oc_return_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_reason`
--

LOCK TABLES `oc_return_reason` WRITE;
/*!40000 ALTER TABLE `oc_return_reason` DISABLE KEYS */;
INSERT INTO `oc_return_reason` VALUES (1,1,'Dead On Arrival'),(2,1,'Received Wrong Item'),(3,1,'Order Error'),(4,1,'Faulty, please supply details'),(5,1,'Other, please supply details'),(1,2,'Dead On Arrival'),(2,2,'Received Wrong Item'),(3,2,'Order Error'),(4,2,'Faulty, please supply details'),(5,2,'Other, please supply details'),(1,3,'Dead On Arrival'),(2,3,'Received Wrong Item'),(3,3,'Order Error'),(4,3,'Faulty, please supply details'),(5,3,'Other, please supply details');
/*!40000 ALTER TABLE `oc_return_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_status`
--

DROP TABLE IF EXISTS `oc_return_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_status`
--

LOCK TABLES `oc_return_status` WRITE;
/*!40000 ALTER TABLE `oc_return_status` DISABLE KEYS */;
INSERT INTO `oc_return_status` VALUES (1,1,'Pending'),(3,1,'Complete'),(2,1,'Awaiting Products'),(1,2,'Pending'),(3,2,'Complete'),(2,2,'Awaiting Products'),(1,3,'Pending'),(3,3,'Complete'),(2,3,'Awaiting Products');
/*!40000 ALTER TABLE `oc_return_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_review`
--

DROP TABLE IF EXISTS `oc_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_review`
--

LOCK TABLES `oc_review` WRITE;
/*!40000 ALTER TABLE `oc_review` DISABLE KEYS */;
INSERT INTO `oc_review` VALUES (1,50,0,'Serega','Very good&lt; very vry very good da;\'asadsadadsadasd',5,1,'2020-04-18 14:44:28','2020-04-18 14:47:38');
/*!40000 ALTER TABLE `oc_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_seo_url`
--

DROP TABLE IF EXISTS `oc_seo_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_seo_url` (
  `seo_url_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`seo_url_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=860 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_seo_url`
--

LOCK TABLES `oc_seo_url` WRITE;
/*!40000 ALTER TABLE `oc_seo_url` DISABLE KEYS */;
INSERT INTO `oc_seo_url` VALUES (730,0,1,'manufacturer_id=8','apple'),(858,0,1,'information_id=4','about_us'),(828,0,1,'manufacturer_id=9','canon'),(829,0,1,'manufacturer_id=5','htc'),(830,0,1,'manufacturer_id=7','hewlett-packard'),(831,0,1,'manufacturer_id=6','palm'),(832,0,1,'manufacturer_id=10','sony'),(857,0,1,'information_id=6','delivery'),(859,0,1,'information_id=3','privacy'),(843,0,1,'information_id=5','terms');
/*!40000 ALTER TABLE `oc_seo_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_session`
--

DROP TABLE IF EXISTS `oc_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_session` (
  `session_id` varchar(32) NOT NULL,
  `data` text NOT NULL,
  `expire` datetime NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_session`
--

LOCK TABLES `oc_session` WRITE;
/*!40000 ALTER TABLE `oc_session` DISABLE KEYS */;
INSERT INTO `oc_session` VALUES ('00596122b84b4f793be2b45852','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 18:30:01'),('0059a1fd353d1bff3eacb6c0fc','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:51'),('0079cdc5971e726d1bacfeeb62','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:15'),('00b2888524bf22c6df1c34a8b8','{\"language\":\"uk-ua\",\"currency\":\"UAH\",\"wishlist\":[\"50\",\"54\"]}','2020-04-17 18:38:35'),('00bd1c7a43befaf647db2a4a10','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:24:07'),('0179536a470e1ec69136d1dca7','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-04-18 09:11:15'),('01a8821cb03e1a7a2472e609a4','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:08'),('01dffa6985b3133d65fd22ea30','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-07-17 14:26:33'),('0221ba22bf650a19b075f72ff7','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:04'),('0222331b2d224d324d6f55b3f2','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:03'),('02a23d145826885ee82ce33042','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:14'),('02d2a1a69ddf499613fbc9545c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:50:23'),('02da4faa0a5375c99ee2afe695','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:17'),('02e27e33cc78033d6df2a6f508','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:10'),('02e64021f15a5fb46e1a4f6e32','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:36'),('032875abe10adf386771b53c7e','{\"language\":\"uk-ua\",\"currency\":\"UAH\",\"wishlist\":[\"51\"]}','2020-05-11 18:16:11'),('038a1b99a13f390cee8dba1eba','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:23'),('0393650e1578c6946371e04e64','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:59'),('03f8d037e762184628d495ab66','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:07'),('047c8b80805aab223053ac0b63','{\"language\":\"uk-ua\",\"currency\":\"UAH\",\"account\":\"guest\",\"guest\":{\"customer_group_id\":\"1\",\"firstname\":\"\\u0421\\u043a\\u0443\\u043f\\u043e\\u0432\",\"lastname\":\"\\u0421\\u0435\\u0440\\u0433\\u0435\\u0439\",\"email\":\"sergskypow@gmail.com\",\"telephone\":\"0509368399\",\"custom_field\":[],\"shipping_address\":\"1\"},\"payment_address\":{\"firstname\":\"\\u0421\\u043a\\u0443\\u043f\\u043e\\u0432\",\"lastname\":\"\\u0421\\u0435\\u0440\\u0433\\u0435\\u0439\",\"company\":\"\",\"address_1\":\"\\u0411\\u0443\\u043b\\u044c\\u0432\\u0430\\u0440 \\u0412\\u0430\\u0446\\u043b\\u0430\\u0432\\u0430 \\u0413\\u0430\\u0432\\u0435\\u043b\\u0430 54\\/26\",\"address_2\":\"\\u0411\\u0443\\u043b\\u044c\\u0432\\u0430\\u0440 \\u0412\\u0430\\u0446\\u043b\\u0430\\u0432\\u0430 \\u0413\\u0430\\u0432\\u0435\\u043b\\u0430 54\\/26\",\"postcode\":\"03126\",\"city\":\"\\u041a\\u0438\\u0435\\u0432\",\"country_id\":\"220\",\"zone_id\":\"3491\",\"country\":\"Ukraine\",\"iso_code_2\":\"UA\",\"iso_code_3\":\"UKR\",\"address_format\":\"\",\"custom_field\":[],\"zone\":\"Kyivs\'ka Oblast\'\",\"zone_code\":\"32\"},\"shipping_address\":{\"firstname\":\"\\u0421\\u043a\\u0443\\u043f\\u043e\\u0432\",\"lastname\":\"\\u0421\\u0435\\u0440\\u0433\\u0435\\u0439\",\"company\":\"\",\"address_1\":\"\\u0411\\u0443\\u043b\\u044c\\u0432\\u0430\\u0440 \\u0412\\u0430\\u0446\\u043b\\u0430\\u0432\\u0430 \\u0413\\u0430\\u0432\\u0435\\u043b\\u0430 54\\/26\",\"address_2\":\"\\u0411\\u0443\\u043b\\u044c\\u0432\\u0430\\u0440 \\u0412\\u0430\\u0446\\u043b\\u0430\\u0432\\u0430 \\u0413\\u0430\\u0432\\u0435\\u043b\\u0430 54\\/26\",\"postcode\":\"03126\",\"city\":\"\\u041a\\u0438\\u0435\\u0432\",\"country_id\":\"220\",\"zone_id\":\"3491\",\"country\":\"Ukraine\",\"iso_code_2\":\"UA\",\"iso_code_3\":\"UKR\",\"address_format\":\"\",\"zone\":\"Kyivs\'ka Oblast\'\",\"zone_code\":\"32\",\"custom_field\":[]},\"comment\":\"\",\"order_id\":\"16\",\"shipping_methods\":{\"pickup\":{\"title\":\"\\u041f\\u0440\\u043e\\u0434\\u0430\\u043c\",\"quote\":{\"pickup\":{\"code\":\"pickup.pickup\",\"title\":\"\\u0421\\u0430\\u043c\\u043e\\u0432\\u0438\\u0432\\u0456\\u0437 \\u0456\\u0437 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0443\",\"cost\":0,\"tax_class_id\":0,\"text\":\"\\u20b40.00\\u0433\\u0440\\u043d.\"}},\"sort_order\":\"\",\"error\":false},\"flat\":{\"title\":\"\\u0424\\u0456\\u043a\\u0441\\u043e\\u0432\\u0430\\u043d\\u0430 \\u0432\\u0430\\u0440\\u0442\\u0456\\u0441\\u0442\\u044c \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"\\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0437 \\u0444\\u0456\\u043a\\u0441\\u043e\\u0432\\u0430\\u043d\\u043e\\u044e \\u0432\\u0430\\u0440\\u0442\\u0456\\u0441\\u0442\\u044e \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"\\u20b45.00\\u0433\\u0440\\u043d.\"}},\"sort_order\":\"1\",\"error\":false}},\"shipping_method\":{\"code\":\"pickup.pickup\",\"title\":\"\\u0421\\u0430\\u043c\\u043e\\u0432\\u0438\\u0432\\u0456\\u0437 \\u0456\\u0437 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0443\",\"cost\":0,\"tax_class_id\":0,\"text\":\"\\u20b40.00\\u0433\\u0440\\u043d.\"},\"payment_methods\":{\"cod\":{\"code\":\"cod\",\"title\":\"\\u041e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u0440\\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u0446\\u0456\",\"terms\":\"\",\"sort_order\":\"5\"}},\"payment_method\":{\"code\":\"cod\",\"title\":\"\\u041e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u0440\\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u0446\\u0456\",\"terms\":\"\",\"sort_order\":\"5\"}}','2020-07-28 10:23:49'),('0481422252efe924355aa09c1a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:51'),('04a87bde0b9496340346489f4e','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:29'),('04b5cdb9d0a72ed5eb79031c31','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:51'),('051b8655857c9e96a581d50cc7','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:04:50'),('054361f57431c43a25dc45d9d0','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:55'),('0561a740c61ee76d61775147e9','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:50'),('056767607f75e9f6e4242bafd1','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 12:31:03'),('05b7aa0ad5e1deb1da5a187e97','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:53'),('062c48522504e17d614793f8e5','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:15'),('0692a0fd421f04c731f6e27c06','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:52'),('070862232d988698928ba54a48','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:31'),('072044a2d0739a5cfdd8d73bfb','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:18:56'),('072ac904b7daaa45dc74b25e92','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:14'),('073e987d837ee8a666856fa818','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:03'),('074fd0d0ac79f62c29b9ef506e','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:10'),('076736acdfcd2b61db47e96735','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-12 11:49:17'),('07f1fb0cb501d4f1f43bec6b17','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:05'),('07f527fb2138cceec3385d7628','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:38'),('080f2c116867da0c043f85fda4','{\"language\":\"uk-ua\",\"currency\":\"UAH\",\"shipping_address\":{\"firstname\":\"Igor\",\"lastname\":\"Pikuza\",\"company\":\"Agro\",\"address_1\":\"\\u0418\\u0440\\u043f\\u0435\\u043d\\u0441\\u043a\\u0430\\u044f\",\"address_2\":\"\",\"postcode\":\"03179\",\"city\":\"\\u041a\\u0438\\u0435\\u0432\",\"zone_id\":\"3490\",\"zone\":\"Kyiv\",\"zone_code\":\"30\",\"country_id\":\"220\",\"country\":\"Ukraine\",\"iso_code_2\":\"UA\",\"iso_code_3\":\"UKR\",\"address_format\":\"\",\"custom_field\":[]},\"account\":\"guest\",\"payment_address\":{\"firstname\":\"Igor\",\"lastname\":\"Pikuza\",\"company\":\"Agro\",\"address_1\":\"\\u0418\\u0440\\u043f\\u0435\\u043d\\u0441\\u043a\\u0430\\u044f\",\"address_2\":\"\",\"postcode\":\"03179\",\"city\":\"\\u041a\\u0438\\u0435\\u0432\",\"country_id\":\"220\",\"zone_id\":\"3490\",\"country\":\"Ukraine\",\"iso_code_2\":\"UA\",\"iso_code_3\":\"UKR\",\"address_format\":\"\",\"custom_field\":[],\"zone\":\"Kyiv\",\"zone_code\":\"30\"},\"user_id\":\"1\",\"user_token\":\"IWIrGqaagPbzZWitxig1GcFlpufq7yZc\"}','2020-07-24 14:39:51'),('08356f979247cd348920193057','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:26'),('0844f11b3b3fc069c337361bdc','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:15'),('0868c212575bc71390a1b0ff75','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:36'),('08a96548bf22f492240c5dab1f','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:51'),('08f6380f5c0d323c84d4325189','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:12:57'),('08fe179da1d39ffaac2f7c7eff','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:32:45'),('0922a3abb1722b06b3798dbb5f','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:44'),('092989930e67182d7825c2204a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-12 11:06:30'),('097c43a64d69b4ce01d0ec6946','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:08:48'),('09cba26c3a950b4fee6983992e','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-07-25 17:16:25'),('09f43f4693aaaeb58061766315','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:22'),('0a4189445f5c4730972fd3e4e8','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:08'),('0aec94b148c9b5122b91691824','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:42'),('0afe1bdc6f98358bfdcb327138','{\"language\":\"ru-ru\",\"currency\":\"UAH\"}','2020-04-27 15:15:08'),('0b54ff12b54a98d400a21fed1a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:45'),('0b994ed64a0fb5e2c30427e048','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:01'),('0bb0f79ccaaad50c40c03a5753','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:15'),('0ca8d086b886e7fea922fc72d6','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:20'),('0cc3e416f3a45916f24845af50','{\"language\":\"ru-ru\",\"currency\":\"UAH\"}','2020-07-22 22:19:30'),('0d2477ac808435ee1a9e15b648','{\"language\":\"ru-ru\",\"currency\":\"UAH\"}','2020-07-22 13:52:22'),('0e0445cfccf98e9da6301d7ecd','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:02'),('0ea6786e8fe3a5e169c4bbfcb5','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:11'),('0ebe3d5af6a907a4d7ce3cdba9','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:05'),('0f8a329934efeec9e9f9f109d6','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:49'),('0fb2fdaf7973f56e62f7e7e44a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:02'),('0fc0af222dad672107dacfe2a2','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:06'),('0fce6f449813fed95e9e0b570b','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:27:39'),('100303e151407e1ccb77c7167e','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:12:59'),('102991a8d9bbb39890c523405b','{\"api_id\":\"1\"}','2020-05-26 16:55:55'),('10ce69ec871fcf394521d41e39','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:43'),('10e7eb4f46f7b2f96a11646cfe','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:07'),('110cedbf8cbe93431d39aaf816','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-05-22 11:30:23'),('1156e7db7f2e08a5b23053fdb4','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:56:21'),('1267db41419e555a55f5babf4b','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 18:55:26'),('12fa3752562e0a69f44f9cf1ff','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:52'),('1355f7b20cf57a75bf7b070dec','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:48'),('137babb9daaeaad298abe5cd03','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:11'),('13e128ea8701be2a6bce08cf7c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:00'),('13fecce677f5e8bdcfbf283da7','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:12'),('1423b6c9bced56991954b9b46d','{\"language\":\"en-gb\",\"currency\":\"UAH\",\"user_id\":\"1\",\"user_token\":\"hH42w7EW5edI4F0VQR6n3ZlxLFT8zRph\"}','2020-07-25 16:44:50'),('1426adb9fd08b99a372c759709','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:20'),('14595590b813906583b47a1c8c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:08'),('14744bcf967110283f67e795e7','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:55'),('149060be79a4c0eccdbb724532','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:12:59'),('14a5c9f79ae6907a6395266dcd','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 11:49:37'),('14fc8d6c855c42c67517be2946','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:54'),('1547bddd12c42a4757bcc72a2c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:16'),('1579670b390b5c754ce93af136','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:18'),('161102aa0695d789006140886b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-07-22 19:27:53'),('1627fe582a88b4817fa758c237','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:38'),('16916fc1b910d1524e809ca8cb','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:03'),('16e014846d78453e8e518bb603','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:51'),('176966f9131163a85284c92329','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:29'),('177443e8ca327bc4bd302793f7','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:00'),('1799568d4b758f0f6adde6daca','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:30:12'),('179be81f2bdb9dc5b41490403f','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:12'),('17c1cc4b437d6b8e3918fab39f','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:05'),('181475383315f501c5b72c4136','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-04-24 09:16:00'),('185a055e6fe4028d130e4c34b6','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:55'),('1872245e9c88d19dcce2b0b61b','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:03'),('18872d95f8fcecf6b8060c682b','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:34'),('18dadcb4eb6278ddb0a0e4b072','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:14'),('1969895be49ba8e8fb0465d647','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 18:27:42'),('1978690893060f4ec134b57825','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:15'),('19f64be2e19bacc28deb74450e','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:04'),('19fcbb6292a423339d6d47ed99','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:02'),('1a3031fa3bf0bb8cc42942fedd','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-05-13 18:33:54'),('1a6c0ebfb60fb2187d2826111c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:31:16'),('1ad71171904fc2fa5c8caee6c4','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:12'),('1adaed49145215283c20c135e6','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:50'),('1affc397caef37fea87746dea8','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-05-03 15:05:48'),('1b2014d12ad5d5f8f18bad8e60','{\"api_id\":\"1\"}','2020-04-06 13:29:36'),('1b4c946c0d86b80ea55702ddd7','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:04:55'),('1b68d80d6cff237983c0bd03e9','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:53'),('1b819a6b65fb19c5b5150fb4b4','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:50'),('1ba0e134731800b78e72dd2a4b','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:58'),('1bd05855ba0f3139ce0c806ebb','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:09'),('1c6e60960d7b74349a821154ed','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:45:16'),('1c88dc27888274b284e9bb939a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:16'),('1ce64876055ab6c021d3a16492','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:37'),('1cf51fbf252e9e556d46597d09','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:44'),('1d3a0704f54ece3945ea90b5b7','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:01'),('1d3ef547ff40a63b9114b29f93','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:53'),('1d66641db99fc6b93ef7359203','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:16'),('1e3a8ded2433ce362813c14781','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:12:57'),('1e6c425acee3d0a8f9a049f951','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:19:42'),('1e92c7c78bb29f7aabe051b4a9','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:01:48'),('1ef55b66af8d895a32b2d0d78f','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:51'),('1f4e2d6828d56428b74bd0a65a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:04'),('1f68150067dc460a39906b3d7e','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:56'),('1fcd0e330002d672587e2e8e32','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:04'),('20124d098b40f86e388bffb0da','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:14'),('206168170c4d8f9807f4d4f8fd','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:02:16'),('20b6dc94286795849853181b53','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:11'),('20d8a3f8551e3eb94c8ad68476','{\"api_id\":\"1\",\"language\":\"en-gb\",\"currency\":\"USD\",\"customer\":{\"customer_id\":\"0\",\"customer_group_id\":\"1\",\"firstname\":\"Sergey\",\"lastname\":\"S\",\"email\":\"sergskupow@gmail.com\",\"telephone\":\"122622651\",\"custom_field\":[]},\"payment_address\":{\"firstname\":\"Sergey\",\"lastname\":\"S\",\"company\":\"56\",\"address_1\":\"56655\",\"address_2\":\"8446546565\",\"postcode\":\"1231\",\"city\":\"kkkk\",\"zone_id\":\"3527\",\"zone\":\"Carmarthenshire\",\"zone_code\":\"CARM\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":[]},\"payment_methods\":{\"cod\":{\"code\":\"cod\",\"title\":\"Cash On Delivery\",\"terms\":\"\",\"sort_order\":\"5\"}}}','2020-04-06 13:29:49'),('21038f837768b73b3809c092ef','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:03'),('223d6fd63d053b6cde9b288012','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:02'),('22532e795e450702403915c66a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:54'),('22abfbcdd69f1397f05aa5f4fe','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:49'),('23063f3d1933479bd320264573','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:52:54'),('2358dac05a79d93dae3a5bb48c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:58'),('2360320e629da66abde069f2b6','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:12:59'),('238de33bc0980557e352c9e64e','{\"language\":\"ru-ru\",\"currency\":\"UAH\"}','2020-07-22 13:26:55'),('239120269f1737188fbd2c87ff','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:29:54'),('2407946bdc16218b9b0f2b83b5','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:06'),('2437237abce635c0fe2f5beaac','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 18:31:41'),('24e3471730cca3b26ddaccb41c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:08'),('2584ca80e820da53a62756b47b','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:35:29'),('25c596a2f17cf9e9acf3bd672c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:23'),('26156b93ca5c940521aead2e82','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:29'),('267ece3719642906b1a14827b7','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:08:44'),('268f523dc55c306b441ee23dd9','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:33'),('271bfe82aedfff67e20d03d09f','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:07'),('279f188b247d92922b4195be16','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-07-24 19:33:29'),('279ff4a12cd52e4c516327e44a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:05'),('27fe0a41f6242688255758465a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:58'),('281657ab64fdc46fd4665e7373','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:10'),('284f7540acebf9e5a9fc90608a','{\"language\":\"ru-ru\",\"currency\":\"UAH\"}','2020-07-18 10:25:26'),('28d76e1b9848a8c23641678498','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-04-27 20:03:25'),('28da7a8ea406b042e4f860ca36','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:08:23'),('290a8d20f268115f1ab1a803a0','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:14:39'),('2994aff608120c0c377d28f4e2','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:57:58'),('29e06d8435876892eea6cec9f0','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:57'),('2a01a8ee0fa7876044aa51ea81','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:20'),('2a2adcdd2f85eb231325edc61c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:38:14'),('2a4b9e1f076f2e17e91917ac09','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 18:57:20'),('2a86674318e80b7cde215dca1a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:30'),('2abdfa2f22604388632c4b255c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-12 11:50:04'),('2abe27c1374944f1d52be355b7','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:15'),('2bcaa7c56d1f2a0e0e1d2031bb','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:03'),('2bd6fbc41ab33bc7e806c75610','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 18:32:37'),('2c00033ec95ce1af034cfc50db','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 18:14:30'),('2c2e8143763fccd64c095954e0','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:07:29'),('2c8182a18d8f66c04b254128e3','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:16:00'),('2c89354a19e966950761192ccf','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-12 10:51:26'),('2c984816ea145b3d8b46200722','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:09'),('2ca19b6eff148175774d2165b1','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:27:13'),('2cc16b207d638f5ab8c72b776e','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:12:58'),('2ce3fcc9903eaaf57880802375','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:04'),('2ce83685911f984b2db88b86ae','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:33:24'),('2ddbe77565d340fa5c352b26ca','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:03'),('2e214596b4b4c172d32edef8a1','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:55'),('2e552463ada08450cd2dcf19a3','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:30'),('2e79379b43803b92c68adc16ab','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:12:59'),('2ea180b7d8b8f7b31302a002ee','{\"language\":\"uk-ua\",\"currency\":\"UAH\",\"user_id\":\"1\",\"user_token\":\"wudDbyoCHXPFZa96tgSctN6zA2V6RPOm\"}','2020-04-27 16:17:42'),('2ecf6f138b9335ca65f64f2ba7','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:06:49'),('2f7a5cf44cd1811e31c454358b','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:24'),('2f7bb1b5a20ba5dd3017dad013','{\"language\":\"uk-ua\",\"currency\":\"UAH\",\"user_id\":\"1\",\"user_token\":\"lxMprOJ8aQhtCnjjQ8GLs1JE5abswzt0\"}','2020-05-08 19:45:56'),('2fea03c19e300963d72a5757e5','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:53'),('300661e0738bee7e507b090a08','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:18:15'),('304192da2451295e9a3bd6c35b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-07-22 11:55:27'),('305e8c3bfd1fe75b82e30a330a','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-04-17 19:17:13'),('315b84f87a4139aa4a8df4afe9','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:51'),('319b1992a7e6511e5973847702','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:53'),('31a82b1a9dc71dbec639468715','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 18:33:17'),('31d25ca0384e02332f07941083','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:38'),('324da8b687b47f0b56102c8cff','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:50'),('326d78abf7f7e8477a1034bd90','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:55'),('3282cdfa4f82778d41822314b7','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:46'),('336c1cc09fad3cf98f100a4271','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:50'),('33c40c6c8fe825b66623ce46d6','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-12 11:50:02'),('33dd5de627633eb5180e3eb39c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:19'),('33ddc0762e3601efee64cb1d5a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:43:00'),('33ea9da14e310968ef358f0e01','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:17'),('3466996301dec86e500f1a10dd','{\"language\":\"ru-ru\",\"currency\":\"UAH\"}','2020-07-17 20:35:35'),('34b718fff55235740bea84a8c3','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:23'),('34b778081496da7bbabe3db6f5','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:55'),('34d12389f152605752ea1834b6','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:23'),('350ac34c208edc5c80e868a737','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:41:52'),('3524d188eaa3816c54adc04dbc','{\"language\":\"uk-ua\",\"currency\":\"UAH\",\"user_id\":\"1\",\"user_token\":\"jtFHfS1XpRPKtCb86bkJBVbfm7NtUTJ0\"}','2020-04-14 15:59:31'),('358c13c5ec859ad60ae047329e','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:53'),('35a29f6193c7114a2dd578cd9a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:52'),('35bbe53d66861d563cc2514322','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:04'),('35cccea9030873f889a5388d5f','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:43'),('35efd065eb4921eb244b2619e4','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:53'),('35f2373d470bdaf44e9506ef42','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:48:54'),('361f64335bd12a798f05328ed6','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:30:40'),('368b445fdbba9e25e48cd633dd','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:47'),('36b8c08d83aa747a6d6beb4e8a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-25 19:47:43'),('36bb8e268b29c1aa8a590dec45','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-07-23 10:01:20'),('36e525cff09b233da5ec567e09','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:03'),('37327ba86f5067e45892cc5e5d','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:59'),('37574e2300f517ddab4c6ffa8c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:06'),('3778c771c340c0bad65be976a0','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:56'),('37bd5dd61c6e396b56d5f86513','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:22'),('37d4fb12895ea349abac6789f1','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:45:01'),('37f69d0b56104643ded7123d1d','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:06'),('3813024c77029215846fce0492','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:01'),('38189bc8158b2b1ef9f43ead00','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:40'),('388a8edbafe71976909b79ffe3','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:53'),('389bc734f6cb9fc7aed00d5d3b','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:05'),('38d0197a199e621823bd9c15c9','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:52'),('39c9b39a9d3154a3af68889c7d','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:52'),('39e3f728561372b8bf60946f43','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:39'),('39ea222a1c0598f95ba9ef7355','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:33'),('3a36a61f35a9f4fa09bda94e0e','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 13:22:36'),('3aa6fff4363c8f2f6115a6de4d','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:22'),('3b255ff3b5ecbb6119231ccc5f','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-12 11:46:38'),('3b4085456cdf07be99e1ba248b','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:03'),('3b5223afe095abb89dd856b7f2','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:05'),('3b87784c97d56e8872ac4c9411','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:19'),('3bc70fcea3f8ff03edce48b52d','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:19'),('3be02edb0abbe5aa271ee50027','{\"language\":\"ru-ru\",\"currency\":\"UAH\"}','2020-07-26 15:03:44'),('3c4d7aa454c026c6234c157727','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:00'),('3c637d5d86081356fe3be80aaa','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:12:58'),('3c8468c5f2c626de7301074254','{\"language\":\"ru-ru\",\"currency\":\"UAH\"}','2020-07-24 14:25:11'),('3c85dded93a4ec94e84d0e8828','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:01'),('3cb7fdc544c903a2a67c87218c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:23'),('3ce8adb52baf6e19f57d561c33','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:59'),('3d0cd7a838c397d6f465d63bd4','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:01'),('3d198592bb5d67278eb915bd72','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:44'),('3d27c08440cef6ec855cc5a10f','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:36'),('3d32c2f6b5a41373c7447ab4b8','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:12:56'),('3d4017f80e6b2944aa3aa68219','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:23'),('3dbd4ba609cf064f1b8d21440b','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:00:55'),('3dc5939dcbddf84a368630e579','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:58'),('3df2218829d1492a6b263e0b48','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:35'),('3e19d0667517d1ee4d629e4d18','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 12:21:43'),('3e1ba6506053b6806e2063f57b','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:35'),('3ecd33de51c95ad2e2e9a5f41b','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:56'),('3f1e788967379252aad6396b94','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:11:25'),('3f220f31bb4f307a3d4bfb5420','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-07-25 17:14:53'),('3f56ce63bdf9dcfdcaa5728927','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:07'),('3f7c89416a160b57396fe409e6','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:50'),('3ff4554bbb7b428e88a85df7ad','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:33'),('3ff98e59c01bf0f01f5ae3bea8','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:07'),('4051b04ac9660773103b59796f','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:52'),('409cbd7eaed48254d0885ad17e','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:15'),('40b338345ce7b1aa0362ad51e8','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:56:58'),('40c1990f9aa38ead50be0e1953','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:57:18'),('41c7d235cc79cd9eeb5a07409c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:34'),('428a543894a4406e8da16ea870','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:19:33'),('429c7f7415a752e18356817f80','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 18:30:23'),('4338a994f0d7089acfdc5c5389','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 18:57:22'),('435ba30ca2a160ad2b9a5c6f45','false','2020-04-21 10:36:18'),('436a78d716091376c1897e5e43','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:23:03'),('43b68e695dfa81d6c167262842','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:07:38'),('43bf26b4d4ddb02db318fafa74','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:14'),('43f55b4db731c522efb4e9745d','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:07'),('442c145ab2a538cb9a9fddc2a7','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:43'),('445e60268322622ad130c6d2a9','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:46'),('446106e99f41f7c6d6a47745d5','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:14'),('4468abc825631c8bd2163d0422','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:43:13'),('44f99aaa8112e5d9afdaca9da8','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:29'),('451d03ee0db0295e4a2fd7ae8f','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:04'),('453cdcd83c141d83bd920af003','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-05-13 18:33:54'),('4557583fb5c485fb027026cc7a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:42'),('45656d7dbacfa3793634b4a482','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:17'),('457a5ffa789dccd225f957c821','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:59'),('45a1b48cc1f32246510d7a338c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:12:57'),('460ef33c5dfd67969f2f13932b','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:53'),('467ac43e49f03423d1464bbc41','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-04-13 09:58:01'),('47441ae00f3c7d52c9a7919553','{\"language\":\"uk-ua\",\"currency\":\"UAH\",\"shipping_address\":{\"firstname\":\"\",\"lastname\":\"\",\"company\":\"\",\"address_1\":\"\",\"address_2\":\"\",\"postcode\":\"03126\",\"city\":\"\",\"zone_id\":\"3490\",\"zone\":\"Kyiv\",\"zone_code\":\"30\",\"country_id\":\"220\",\"country\":\"Ukraine\",\"iso_code_2\":\"UA\",\"iso_code_3\":\"UKR\",\"address_format\":\"\"},\"shipping_methods\":{\"flat\":{\"title\":\"\\u0424\\u0456\\u043a\\u0441\\u043e\\u0432\\u0430\\u043d\\u0430 \\u0432\\u0430\\u0440\\u0442\\u0456\\u0441\\u0442\\u044c \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"\\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0437 \\u0444\\u0456\\u043a\\u0441\\u043e\\u0432\\u0430\\u043d\\u043e\\u044e \\u0432\\u0430\\u0440\\u0442\\u0456\\u0441\\u0442\\u044e \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"\\u20b45.00\\u0433\\u0440\\u043d.\"}},\"sort_order\":\"1\",\"error\":false}},\"shipping_method\":{\"code\":\"flat.flat\",\"title\":\"\\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0437 \\u0444\\u0456\\u043a\\u0441\\u043e\\u0432\\u0430\\u043d\\u043e\\u044e \\u0432\\u0430\\u0440\\u0442\\u0456\\u0441\\u0442\\u044e \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"\\u20b45.00\\u0433\\u0440\\u043d.\"}}','2020-04-25 17:06:01'),('47531477d3f0e049282c590c11','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:34'),('47afb097bf244009b278a0af39','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:55'),('4870d317b14edbe0d7118c1d94','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:03'),('4884fcfde60d561ce2c017e384','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:18'),('491dae9c1a33ed78b2a81d22b6','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:02'),('4930c1c7ba6ae4be21efc70702','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:21'),('494534470b68299d04e0f53277','{\"api_id\":\"1\"}','2020-04-08 11:03:27'),('495873b2860e379573cd6a438e','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:13'),('4984455c411308a19a8288298f','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:46'),('499705f9de77bf145278610bd2','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:09'),('49e3462b0b3a99604957d141ce','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-18 09:12:49'),('49f4ab9d2468118d11c1aa04fd','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:37:45'),('49f54ea9f6a019d5ce54b641f2','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:46'),('4aa9a6c1a0a4681f51e7646f05','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:36:18'),('4ac7efb0ab19ed22bc2e6ef1f7','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:01:46'),('4b8f5c9b1a4f753b716c8df52c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 18:54:01'),('4bc0b70e70438d17f3dfc219c2','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-04-16 12:40:57'),('4bd2b635201de3d4efa15d79d6','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:41'),('4bf6c9b567418eb4e8bcd34569','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:32'),('4cf5c9f9083b6eff304e86f6d5','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:28:49'),('4cf812d0e219e0e2bd757791ba','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:04'),('4d1bd621668f86c566bc02d450','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:57'),('4d9b3ba58dde3647059998bc0e','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:09'),('4dfab8932d3b95f5da4c4d1b12','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:08'),('4e481dca988e6aa1c7b6de48da','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:43'),('4e601acb83e367009413423e26','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:54'),('4e90ea9df645ad6dce656519f0','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:34'),('4e99d3fbf1938ab056d969e10c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:13'),('4ed3d479e4b2e1b111e3900c3f','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:34'),('4f15e35aa6dc40e6794329efbf','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:50'),('4f187e837ff363c0dec1976751','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:48'),('4f51513e079722596783741fca','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:12:58'),('4f51ce8077aaf88b9ea025eb1b','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 18:56:40'),('4f8dd22a2e1378b49f1263cb2c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:12:59'),('4fa7caf200e7b4dd1ccaf91474','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:32'),('4ff66e59d0c922ba291f96c156','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:03'),('4ff7ef6174706f551626a60f19','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:00'),('50c6bbabe533fe8d0a251467d8','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:47'),('50e1ad835d7fa6698cf85155b5','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:21'),('512832415ec7028a4c603c4b15','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:55'),('51501178d2d91874c53af83ed5','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:08'),('516152d5efbfbec6eb18a758dd','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:05'),('51c61c4a25889a7ec51156b42f','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:11'),('521f2a2c6656a319d6ce0300af','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:30'),('522fac5a57949df00a95eefe4b','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:12:58'),('52457fc89fd2f19f40c405a5ca','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:55'),('524b9787a1b366b06f312c999b','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:38'),('529a1b6330cc77d82afa198c70','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:39'),('52c95d68ca8587a7196922627d','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 18:28:13'),('52ea69d636157657f86c887c52','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:06'),('52f2a9ca56c427a209d909bf5c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:57'),('532d1276704291a1c94b163571','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:12:58'),('533f1bd6db94c88e4126c111af','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-07-21 15:40:39'),('53471f35bc7b9e60eb4d54439d','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 12:30:57'),('538aef84b7f6d68999fbb38ccf','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:12:57'),('53a373386f5a688dc6fede67bd','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:39'),('53b12558ae88a197f90d003aa4','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-05-06 17:59:48'),('53bf1b616380a323fd0994a669','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 16:00:37'),('53d9396d44b0d7652728c8f183','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:15:34'),('54058462d4e61b83f9784ad160','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 18:56:12'),('544821c25b5f2cf177d46ef156','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:23:09'),('545579944a5ae289d41220beb2','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:01'),('545a9aa65b98c7b8441bd706b3','{\"language\":\"ru-ru\",\"currency\":\"UAH\"}','2020-04-25 12:39:19'),('54ae47043502aaf3dd9cb8782e','{\"language\":\"ru-ru\",\"currency\":\"UAH\"}','2020-07-26 20:21:16'),('5500c86dabf0e22280ffbdeef6','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:39'),('551117c98da1d2bc1fd4451084','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:08'),('55319992774fa463fcb5b41a82','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:13'),('55beded4504a6d86fa6bcb3525','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:16'),('55fd685c7c5a30404fee1b0aad','{\"language\":\"uk-ua\",\"currency\":\"UAH\",\"user_id\":\"1\",\"user_token\":\"E7nyjrEY6uOxYKQGiTQM17IbdHuJ9WEQ\"}','2020-06-20 10:28:34'),('563fb0df20d57e530172fdff03','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:35'),('565d12f939af88c55533b90d34','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:17'),('567ae915e1a5ee3754e9eef7c6','{\"api_id\":\"1\"}','2020-05-26 17:00:37'),('56c96f49d801484689495aa406','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:12:59'),('5705aa62d22cf6d76de4f90304','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:36'),('5738a247013e7f05c621f0cd00','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:49'),('57bf642b15206f9a3182e7f15b','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:29'),('57fae325864b97c4839558b22a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 18:57:17'),('5835fce6816e7dfa135ca6cb17','{\"language\":\"ru-ru\",\"currency\":\"UAH\"}','2020-07-28 09:59:27'),('585ab01f7ed0437142aad06bce','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:06'),('58835fdb36bac237863f83d2f3','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:05'),('58eeb4ba11eaf543ff7bda68ac','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:02'),('599f19fc261e0cdc63e4a12556','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:49'),('59b41a75ac9431bff3b8014818','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:53'),('59e3a801afdb6e2fb08c255fbc','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:54'),('59e7d2af61dd7948b2c1ed73bc','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:17'),('5a8fefe86d2a367910b7d443e2','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:54'),('5ac371b5a4aad0da963c8e82fd','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:12'),('5b3035ee5ba55d75c975d2d778','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"FEieQxeGY3MBq3lGoKoTcnO2mQgElvot\"}','2020-03-30 13:04:35'),('5b804a7721ead75ae9719c63bf','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:16'),('5bd983b823867c73e0dfe4be34','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 18:57:45'),('5bf242b07a862bbabf259feb38','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:02'),('5c24463caea020c7b568af7f82','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:07'),('5d1087318510ae7805c77f43f5','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:09'),('5d17a4023c6ff0c4b5dffd07a0','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:22'),('5d45aaae61fb8ae6d5f33f5a0b','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:12:57'),('5d5beb079cd01a7ae28458df52','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:01'),('5de84011281d817722ef453f34','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:10'),('5dec4d953ba68eea2f0b035423','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-05-18 15:33:00'),('5e3f92693b3b3b65d92ba064bc','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:04'),('5e63138169312ff0845eb03d39','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-05-06 12:21:49'),('5e73f0140429c2b20951a2087c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 11:50:52'),('5e7b6cd386ad6a85d3971fc87f','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:06'),('5ea7a889d45a83572267ba7f5a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 18:25:01'),('5ec083206a3373471975b6158a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:51'),('5ec092d163410288f66f62ff81','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:47'),('5f206def42c7d92b0d39c96cda','{\"language\":\"uk-ua\",\"currency\":\"UAH\",\"user_id\":\"1\",\"user_token\":\"qORMwflNXI3kqezsJVGMO8NGtf80YHXN\",\"install\":\"L9o8PzAaZk\"}','2020-04-07 18:46:18'),('5f29a4737d3acae7ad12342af3','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:17:04'),('5f79cb509a81e7b3d4963dc228','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:34:22'),('5f7f1c0133d9ddc95466720c12','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:54'),('5fab2f604249df732ca8fb7ffb','{\"language\":\"uk-ua\",\"currency\":\"UAH\",\"compare\":[\"50\"],\"user_id\":\"1\",\"user_token\":\"69UA5qdserQ2FN6E07TgRxliuHkOXHbO\"}','2020-07-21 18:53:37'),('5fc57c569b4da6cad7f685b2d5','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:39'),('6001f0f0df35b6b0081e26b9a1','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:09'),('60283208a7059c54137dc7062c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:42'),('6042ce76613f041ae345a5e6c7','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:58'),('60634b751e0f60c626aeccdf84','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:07'),('609782f76f54edf94ff1733809','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:16:43'),('60aeaa5813b15bd6aa7f336ca6','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-25 19:48:07'),('620543cc2ad0bb81beac7423f2','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:41'),('621cdf546cfc48b250e4e2c6a7','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:53'),('625f2459ff5a28f5ad6dac2f12','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:43'),('626cb3e69fc9ff688f707061ba','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:01'),('6271371603e8ae607b08cc1620','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:12:12'),('628df46a96168199359e653361','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:03'),('62c0af84876191ce515cfa2426','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-07-22 22:17:32'),('62c1a33bbcb744b4f5ecb3c65a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:49'),('62c61d9846deca2172f6e22c53','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:01:25'),('62e4c03cdec9da6c7b0b8efde4','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:51:43'),('6341c13c18d389672bd9815338','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:11'),('6358d03fa07ba5e3b6047ea39e','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:45'),('637ccbd23fa138e19c4c06e8e8','{\"language\":\"uk-ua\",\"currency\":\"UAH\",\"user_id\":\"1\",\"user_token\":\"8UBTvrOOi3RcVnHwWG1uL3nyUs3li2T1\"}','2020-05-05 12:09:28'),('63823de0784bb87e12ba67f31d','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:08'),('6439ea8dccb7723148fec8ce15','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:02:39'),('644389471dea2d34e5d5030d70','{\"language\":\"ru-ru\",\"currency\":\"UAH\"}','2020-07-26 19:43:19'),('644dace42cd2cb687881e2609a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:12:58'),('64740b1f8c595911f84481ec00','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:54'),('6475a4dc39ec17fffa478c92c8','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:29'),('65031040a7c0c1ffd20c25f16b','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-12 10:51:43'),('65a0c2f36aab8a1588e720b173','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:01'),('65d1719a8ca3dbec0af113f849','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:30'),('669a33482c278c8a16a72e32ec','{\"language\":\"ru-ru\",\"currency\":\"UAH\"}','2020-07-24 13:29:31'),('66bbaa949d24618f1011e84b84','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:19:23'),('66bd8fd77854c7b7d075ed607a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:49'),('671fe504099743f209607383dc','{\"api_id\":\"1\"}','2020-07-25 10:19:53'),('6735d5872bda3c39cd990f19ca','{\"api_id\":\"1\"}','2020-04-06 13:27:34'),('674db4311653a5b8b81453128d','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:05'),('675ff631e2f8ac77b62b0042d0','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:07:56'),('67780879e97cdb00a868700fd8','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:34'),('67bb6fda26ac5ec5ef18b0a75f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-05-22 12:56:57'),('67be70551a8333734ca2533ee3','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:25'),('6811cdad1d1294fe6a5c42d980','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 18:54:48'),('686d1d02d26acb386f860e66b7','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:21'),('689620a34b7c50ed7c15085394','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:12:58'),('68995b83a6d4627de986b82f21','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-05-04 13:14:55'),('68d4642b1e1f7314744c3b3056','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:19'),('68d5aff3599331c7fd5505cb4e','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:38'),('68de91b4b282dde4969d83b34c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:45'),('68f0c33c995483df39d54e7d3f','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:56'),('692b4fdbcd04691406482c3d09','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:50'),('6931945db886c1e7b18d85c983','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:18'),('6935b583b59cc0a9442c922ed2','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:04'),('694dec104ea7fd974b378df2bc','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:34'),('699737111e78d5e5a3dbcf7117','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-12 10:16:07'),('69e91e45c2e8e622885d7c17c1','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:44'),('6a3d1d037009682d322662fa41','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:58'),('6a7ca6620870b9839586d9c441','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:01'),('6aa5e0ad2a914d325e6c3deb29','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:47:16'),('6acae121f76aee52cc65baa167','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:10'),('6ae569ecb0a888ae4a13802d55','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:11'),('6b14d54c86217702b7944f7ea3','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:01'),('6b6ea66c71596c1508dbac1aad','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:30'),('6c53a539a69a804b0d3344675d','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:10'),('6c5a5473d8296a651d43b702eb','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:41'),('6c5cd838c93db17c0e6687c811','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:18'),('6cb6a3ab037db729c3d230344c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:01'),('6cdb14fcab41b87914fc697dcc','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:31'),('6cdc6c346d81b9dc4fe5b01499','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:30:03'),('6cdcb8ce44fa18c1a51d8dafdd','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:40:45'),('6d075af40e669081486f5c787d','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:03'),('6d0bcb98d6e542b25db2cd9c10','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:53'),('6d17509ff48df53f0e22e1407d','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:03'),('6d2b90ad87de9e488b82a18f2c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:07:54'),('6d91f0eb6582f46324c2677e06','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:11'),('6d9fb560b44dff7ad5d5acd6d0','{\"api_id\":\"1\"}','2020-04-06 13:29:54'),('6dac7ccaf64cad5ac5765a0ba0','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:12:57'),('6de1006d46cea26a0d45078bed','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:51'),('6e10c1852e38865a68ed423f9b','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:05'),('6e18dba2d69202b59239011d7e','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:26:03'),('6e7aad0eb058ffdfc7c2ee906b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-07-17 11:22:21'),('6f0196097676f67aff6efebbbb','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 16:00:46'),('6f314f5c46978957a4fb14481f','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:00:53'),('6f7899860dd1fc88a3e773a1aa','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:08'),('6fadcb4695e64e1a76f3b832f6','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:44:47'),('6fbc67730e605222665d7a1c05','{\"language\":\"uk-ua\",\"currency\":\"UAH\",\"user_id\":\"1\",\"user_token\":\"BwDg6nzMOdoUnGXfaogX2d5zLTltTBGj\",\"compare\":[\"50\",\"51\"],\"account\":\"register\",\"customer_id\":\"2\",\"payment_address\":{\"address_id\":\"2\",\"firstname\":\"C\",\"lastname\":\"C\",\"company\":\"\",\"address_1\":\"werwrwe\",\"address_2\":\"\",\"postcode\":\"\",\"city\":\"\\u041a\\u0438\\u0435\\u0432\",\"zone_id\":\"3490\",\"zone\":\"Kyiv\",\"zone_code\":\"30\",\"country_id\":\"220\",\"country\":\"Ukraine\",\"iso_code_2\":\"UA\",\"iso_code_3\":\"UKR\",\"address_format\":\"\",\"custom_field\":null},\"shipping_address\":{\"address_id\":\"2\",\"firstname\":\"C\",\"lastname\":\"C\",\"company\":\"\",\"address_1\":\"werwrwe\",\"address_2\":\"\",\"postcode\":\"\",\"city\":\"\\u041a\\u0438\\u0435\\u0432\",\"zone_id\":\"3490\",\"zone\":\"Kyiv\",\"zone_code\":\"30\",\"country_id\":\"220\",\"country\":\"Ukraine\",\"iso_code_2\":\"UA\",\"iso_code_3\":\"UKR\",\"address_format\":\"\",\"custom_field\":null}}','2020-04-08 20:13:39'),('6fdd566dee00f26c5510facf48','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:21'),('70011a7cfdcbba90ca925fbbd8','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:55'),('7044c03c875bdced278e94ef41','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:56'),('70634007b9e8d36913110dd79f','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:32'),('706f343bb31e5d9e766f1fdeed','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:06'),('7082596cb5eeaf7866eecd9028','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:59'),('7092d3159d6896feab9ddb4498','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:48'),('7093d691ce5ef9f68fbf1eae07','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-06-11 13:50:30'),('70950702e1cfbbfd12dccd4d2e','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:43'),('70dcff29b63c1ec25af2d4fc15','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-04-08 15:29:43'),('70e0bb9bb262daffc139d91b1d','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:46'),('7106fda9f85c6b7789ada83048','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 18:14:50'),('710fe7e377fc719d6ef35f9441','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:52'),('7145eeef9f78c405cd96679204','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:49'),('717857c1df3db8d2c5dac39a69','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-05-13 18:33:53'),('71d33a3e7dfdebe73022e85190','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 18:35:59'),('72462af38a0adbdfc728e882a5','{\"language\":\"uk-ua\",\"currency\":\"UAH\",\"user_id\":\"1\",\"user_token\":\"OW5JXNrqpkwPSjZPm5xWl5lpD8SQQU7D\",\"wishlist\":[\"52\"]}','2020-05-13 10:51:16'),('72879469013197603eae4fb99d','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:05'),('72d0a7326cf37e23844b141860','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:17'),('72d2abb71897295df5fb110b80','{\"user_id\":\"1\",\"user_token\":\"bf2gMzV6xTaMoerMwxeQDC1KIOErX1lI\",\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-07-17 15:05:08'),('73731b00235b9a2fea6cd4fed2','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:22'),('73e8f767cc3064347fb4b33a9c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:43:52'),('7420c49cf26ca8f57f60319664','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:55'),('7429ae446f77adfaaa615f34f9','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:02'),('74517a4e4e0cb4925245cff602','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:52'),('74535419619a918b1d11997d51','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-04-23 09:16:02'),('7478644658ec1b9f7b116f7a03','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:41'),('748f64cbc0499cfe2b3086d3b8','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:48:01'),('74d46b47a72117f6a55b22b512','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:56'),('74ed1ae8e87c09dc0a039419f1','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:01'),('751d78c0f6d99d621001785202','{\"language\":\"ru-ru\",\"currency\":\"UAH\"}','2020-04-25 20:02:41'),('75278e8d94e1ff1d2ba260ba63','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:02:25'),('752a8db32261f722c8a083037e','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 16:17:56'),('7531080ca9248421b0847ee1f4','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:11'),('755b836f77a12f6c28a428d47c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:06'),('75edc930cd0c9a5a394ade627e','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 16:18:00'),('76048b40984a7414e6a3b79975','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:07'),('76790aab41e311c500f7df0ab1','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:00'),('76ea1d6c23854013a373b786e5','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:47'),('7709a7cc2a31eec2c78a8fb8d3','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:01'),('772b0443bc32d49fed19086c29','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:00'),('77f0cc818c3c2366c71b322a14','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:26:19'),('78082d877525087ecf811d3f64','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:18'),('78451dc9955f5df7a6bf03d289','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-05-08 21:32:11'),('7874ca8cf7a12e05fc835133f0','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:44'),('78e20463145908568f30f80d28','{\"language\":\"uk-ua\",\"currency\":\"UAH\",\"user_id\":\"1\",\"user_token\":\"tEBCXM6v5vnVOeaQQo60mO2qz3i1lgKd\"}','2020-07-26 20:54:53'),('79344f6132beab17f7259c4dd3','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:39'),('79696c3574db65850387b39c9e','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:48'),('7971d26bd719eea4214f25f63f','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:52'),('799cebdb6a21e712a5addef547','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:07'),('79a5b61c944115c8ac8a3900af','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:38:24'),('79bbe5f9e99ea0bbe23cb941b5','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-12 10:51:51'),('7a6dfb15629fa23f3e2c6b8d36','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:44'),('7ad01a13d3e382dccd02adf1e9','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 11:52:00'),('7aef7fcc3ed37b764cd203553b','{\"api_id\":\"1\"}','2020-07-20 17:43:15'),('7b3a013934e55dda62ee2b5dd3','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:21'),('7b5a9607ac45dbe921ec653e5f','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:47'),('7ba5be4d7ff8fbf286397ed199','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:02:27'),('7c0be647b660823f5c0e8c9794','{\"language\":\"uk-ua\",\"currency\":\"UAH\",\"user_id\":\"1\",\"user_token\":\"wMR6AEhmJ23YUheZo0ZiSzUKhZiFx7Z1\"}','2020-04-08 13:32:03'),('7c465f4f3116e7c57b8337fec8','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:07:56'),('7c91132929aed8b184fc294b26','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:08'),('7cc7e184738631b4c61615d39c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:39'),('7cdf77a2f1ded1b43ec7f58ebd','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:26:16'),('7ce5ad25481e6551a1e85c70a8','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-05-04 08:52:04'),('7e22aff427b145faf73c0ca47d','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:22:45'),('7e8f16032bc344e3517f333ad0','{\"language\":\"ru-ru\",\"currency\":\"UAH\",\"user_id\":\"1\",\"user_token\":\"RPcXEaDRIwB6aJo8y1V4BHlNb8KaWEwn\"}','2020-07-24 10:34:43'),('7f006d1e4c6095d2a22d842121','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:50'),('7f4e465d18e6c1c267a4a1bcf1','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:29'),('7f68a99a81a219819f9ed579c2','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:11'),('7fe50fdde8dbb688671da344d7','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:48'),('7fefc81293a3733d410b04b589','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-12 11:06:27'),('80002f5a5ca24b3ba7340e7cbf','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:47:44'),('8039bd6afe2b2b5c08d46caf0d','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:24'),('8040832bcdabbb4dd56892c025','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:36'),('804e587b085053febc847d6a94','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:41'),('80a5bf9e01fd7e110edf838c2a','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-05-13 18:33:40'),('80b3a0f737236f4100c4980bda','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:42'),('80e3037e40520232e3caa3ebcd','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:06'),('812e2f53cbbe2ee618a934e9d9','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:12:58'),('814520660abb0d84bcad2ee70b','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:19:35'),('814d9565c866addd0a2b743a13','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:32'),('8155ebce19aafabb59a4ede820','{\"api_id\":\"1\"}','2020-04-06 13:29:20'),('815ec2065e59af3f87f86611a7','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:43:25'),('816e7d60b6bf0ad7fed9360a77','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 18:13:57'),('81d4b6cc491864748e0cc5e703','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-06-11 13:47:13'),('8202138b86fc2c02e2114f1569','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:26:38'),('8261c7f4f2dddc6b4ebbd8d67e','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:00'),('82913ab82ca70cf1a50c65fba1','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:27:44'),('82eac553d98aa0801893d1e24f','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:31'),('831a4b246d5e74db0395abc107','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:45:05'),('833779c02ae119e8195abfbf64','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:55'),('8389881e11085cb900bdeb1a12','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:10'),('83af86110d4e24ea8b5415dfaf','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:54'),('83b348ab95de85131067577d86','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:41'),('846a7a44f1a26e1c8cd9be862f','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-12 10:52:03'),('8499889619431b37ea2e31be96','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:10'),('85013699d98f0dca161a14b8e3','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:12:59'),('8511af6696f43829984160e266','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:12'),('8544e2a8a0a51248927c6b99ab','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:18'),('854cc01f5fa28d0af93384394a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:00'),('856805202b991b4cc638c41dd7','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:21'),('857604d9c6bfcb2b074229efd4','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:44'),('8577f6407be043e8041c16931d','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:19'),('858533256f6b41a9b9389eed7e','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:25'),('85926031b60e315395274b8152','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:00'),('85b6f9a380c8b9c5e353cc736e','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:07'),('85d58ddb08e3ffae0a5635576d','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:11'),('85f44441278c5a0353994378c7','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:09'),('8642df5529cb965c83b7a17aaa','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:46:32'),('8649e1e0b3fe6fe1ccae370e0a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:58'),('87611f915263edbe83162af0f0','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:12'),('8780d9a96f7d010ee76de73509','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:50'),('87bc32fbf815275c629d521a0b','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 16:08:57'),('87d69f64d12bb8e2cc4812d523','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:20:49'),('8832f6bf29e545664bb357fc4f','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:07'),('885c3bf3bdde25da0ba845319c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:20:07'),('88e4c768ac2ddff8f00758a638','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:39:35'),('8944e203ee796b9d1ae4ccaa3a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:11:48'),('89c1cecfd5dfa375b8167fe4fa','{\"language\":\"uk-ua\",\"currency\":\"UAH\",\"user_id\":\"1\",\"user_token\":\"6lgQ5yUOIbms0Kmqrp2Qs77VlPMaRDN7\"}','2020-05-26 17:11:21'),('89e76772d333b935a9b2ec615c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:41'),('89faebc07fdd5d627d593d72b0','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 18:17:16'),('89fe487429e8bc59a5bfa2a8c0','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:18:50'),('8a339593993228a0bdb927ec33','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:10:24'),('8a54c17bfea517faaa55c7fe90','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:56'),('8ae57e356cf78a49334882f1c0','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 12:29:48'),('8b4fbd480fdc91630ad102d742','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:09'),('8b74d652c3fc9b0170647137b7','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:20:22'),('8b83695b9b2349cd05fc3e081d','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:32'),('8ba2a0abe11dc8e5ab2b72f45f','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:01'),('8bbee625e3fe993fa72e170ef1','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:54'),('8bd30c3e37e838c1b1b3688d2c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 18:36:06'),('8be169cd7dda3544f2919b0f37','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:04'),('8c164f4de981c86eec14beeda9','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-04-13 09:58:14'),('8c25d87a1da721bf9526e4b811','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:35'),('8ce91abdc084ec9db4f3c441da','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:54'),('8d601d74139fa494528525ce15','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:06'),('8d7ce48a9f68a70776e3e2e5b1','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:06'),('8e199dd07caef0b49057dd014b','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:22'),('8e26e69b8f4431ec53ff0763b0','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:10:00'),('8e7bca314e93e98b68e6c3958e','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:55:40'),('8eaaa490b0719ff9b10ee53cf3','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:02'),('8ed852a62a7e71ff72a4e95c77','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:05'),('8f251e41fb4413dd850e8ae879','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:19'),('8f56038e0ee8edf26d1f44a88a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:51'),('8f6d8dffc0786c7cebb4e4476d','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:10'),('8f797da93ee70b18ae6ec80d1d','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 18:17:39'),('90130658004272ec88481c9caf','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:10'),('90547818307feb258128b414e1','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:34'),('90742471672408b00959e7b9e2','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:07:49'),('90c7daab3ad7b8dc9a5659566d','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-05-04 16:59:06'),('918e2f65dc620f3727a6666ddf','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:32:41'),('91d80b38a88590e8cc5abbe1af','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:55'),('91f622b804a19ba4d995f699eb','{\"language\":\"ru-ru\",\"currency\":\"UAH\",\"account\":\"guest\",\"payment_address\":{\"firstname\":\"\\u0418\\u0433\\u043e\\u0440\\u044c\",\"lastname\":\"\\u041f\\u0438\\u043a\\u0443\\u0437\\u0430\",\"company\":\"\",\"address_1\":\"\\u0418\\u0440\\u043f\\u0435\\u043d\\u0441\\u043a\\u0430\\u044f\",\"address_2\":\"\",\"postcode\":\"03179\",\"city\":\"\\u041a\\u0438\\u0435\\u0432\",\"country_id\":\"220\",\"zone_id\":\"3491\",\"country\":\"Ukraine\",\"iso_code_2\":\"UA\",\"iso_code_3\":\"UKR\",\"address_format\":\"\",\"custom_field\":[],\"zone\":\"Kyivs\'ka Oblast\'\",\"zone_code\":\"32\"},\"shipping_address\":{\"firstname\":\"\\u0418\\u0433\\u043e\\u0440\\u044c\",\"lastname\":\"\\u041f\\u0438\\u043a\\u0443\\u0437\\u0430\",\"company\":\"\",\"address_1\":\"\\u0418\\u0440\\u043f\\u0435\\u043d\\u0441\\u043a\\u0430\\u044f\",\"address_2\":\"\",\"postcode\":\"03179\",\"city\":\"\\u041a\\u0438\\u0435\\u0432\",\"country_id\":\"220\",\"zone_id\":\"3491\",\"country\":\"Ukraine\",\"iso_code_2\":\"UA\",\"iso_code_3\":\"UKR\",\"address_format\":\"\",\"zone\":\"Kyivs\'ka Oblast\'\",\"zone_code\":\"32\",\"custom_field\":[]},\"wishlist\":[\"53\",\"50\"]}','2020-07-26 20:56:06'),('91fbce82e0382f0663b64e74fe','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:08'),('92073a4178d7b8b5da750921f9','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 18:55:23'),('92360e219e930913b49911af6d','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:30'),('925cc949df8f82c52edf138401','{\"language\":\"uk-ua\",\"currency\":\"UAH\",\"user_id\":\"1\",\"user_token\":\"8lbNZmpLRezO6DnXun47wq9yFBn4BKH2\",\"account\":\"guest\",\"payment_address\":{\"firstname\":\"\\u0421\\u043a\\u0443\\u043f\\u043e\\u0432\",\"lastname\":\"\\u0421\\u0435\\u0440\\u0433\\u0435\\u0439\",\"company\":\"\",\"address_1\":\"dsffsfdsfsdf\",\"address_2\":\"4dsfdsfdsf\",\"postcode\":\"03126\",\"city\":\"\\u041a\\u0438\\u0435\",\"country_id\":\"220\",\"zone_id\":\"3480\",\"country\":\"Ukraine\",\"iso_code_2\":\"UA\",\"iso_code_3\":\"UKR\",\"address_format\":\"\",\"custom_field\":[],\"zone\":\"Cherkas\'ka Oblast\'\",\"zone_code\":\"71\"},\"shipping_address\":{\"firstname\":\"\\u0421\\u043a\\u0443\\u043f\\u043e\\u0432\",\"lastname\":\"\\u0421\\u0435\\u0440\\u0433\\u0435\\u0439\",\"company\":\"\",\"address_1\":\"dsffsfdsfsdf\",\"address_2\":\"4dsfdsfdsf\",\"postcode\":\"03126\",\"city\":\"\\u041a\\u0438\\u0435\",\"country_id\":\"220\",\"zone_id\":\"3480\",\"country\":\"Ukraine\",\"iso_code_2\":\"UA\",\"iso_code_3\":\"UKR\",\"address_format\":\"\",\"zone\":\"Cherkas\'ka Oblast\'\",\"zone_code\":\"71\",\"custom_field\":[]}}','2020-04-21 11:27:35'),('9291e51585595fc8bf6e5f059c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:16:32'),('92dd335c9c44721b1dced9c8fc','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:01:30'),('93c3331c7d1de8a0433365c8fa','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:50'),('9423a8df4d682ffc8a6a5e43b5','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-07-17 12:03:48'),('9437021fe63a6c0a2dc9587ffd','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:47'),('9449876aaf2e1d90f8515b400f','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:07:48'),('949cc3dfd86b2cadb057f9a101','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:01'),('94a8a5709ccad0f0c0b4151d9c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:19:39'),('94de048f4aa6126d927265f0d9','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:47'),('94eab4e5b9805be96553f20b22','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:57'),('953d0daddc5385e7f727073bb4','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:56'),('955e5e52fefbe22e266212014d','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:10'),('956d32663fcd2d137904d14ce7','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:00'),('9589a5bb1f95106d7b203bdf00','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:40'),('95d9aef902d23f0c1f858a9825','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 12:30:15'),('95fb981dd9fa92a491b4dfb7c4','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:25'),('96109ce695cd5f7bb9bb33fff2','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:07'),('961b55eeaa81df9786fa771054','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:06'),('963afa698168b1aa5b5ebcf2cd','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:20'),('964cb2b626a559ec9374680f14','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 12:17:38'),('9661ad463c412b74c3125dc0e3','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:07'),('96c0306c7bf2db2c9f9bdb7ed4','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:59:40'),('96ca3e8020d034e8a679689091','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:02'),('96db43587ece9f9455e0a0c909','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:39'),('96ee15f4a2666f83e0cebe882d','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:14'),('973b843f5ffe6266249660df6d','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:43'),('97415171d0e5f00070636f513c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:00'),('976192560832a32afdb51519d9','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:10'),('97c0d80e9710fc2878de48455c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:07'),('97f589015aa92cab5d497af86d','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:46'),('9832ea1c9e7a3cc5dbc847c8ef','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:06'),('9851a57c5ea3632674e4264723','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:51'),('9899899282fce3dfe0909d87a4','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:41'),('98f2fdaa2b8f93157ef2af2ac7','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:28:23'),('993dc478a4e903c4b2c2ed9c24','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:59'),('99738a82e4ea8c47b1f8d42431','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-07-24 08:35:08'),('998273d0ec2302e284d720f706','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:04'),('99af91e8f3af467dddfd1a40a6','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:39:25'),('99de632f407bcad02cb8f2f4a3','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:12:59'),('99e5e86657eeb8fefddeb75179','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:21'),('9a363ef3b537b2166547ed9524','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:23:44'),('9a6cd882b6630711f44e30f89a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:14:26'),('9ab737844b9b9b59f9ed328def','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:48:32'),('9ac3eeb6086b6e965c3cf26efa','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-07-18 16:16:28'),('9ac5d509193a86d9c52d0c2eec','{\"api_id\":\"1\",\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-04-18 11:08:07'),('9b597ad1364f3526b2c1ee7128','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:13'),('9b9ae4d300ea9172e76cb09dea','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:00'),('9bf8c5f03d3e2718afca55e1cb','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:40'),('9c6fa88897d0c5153563e2d494','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:03:02'),('9ce0c068746aedbd1007c2c679','{\"language\":\"ru-ru\",\"currency\":\"UAH\"}','2020-07-22 13:51:16'),('9cf969bd65e81e6a583c8aceb8','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:32'),('9d2d8b1d2905277804ac08d986','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:12:57'),('9d7da18c0af848911f36fde744','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:35'),('9e46543dae7c68dc3329552fd8','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-25 19:47:34'),('9e9cc243c002e0c2f63f6ff85e','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:55'),('9ea042b79d74fdeb6b6a5afaeb','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 18:56:36'),('9f500784267ad2eed89c316b7c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:44:13'),('9f927c8b3d13904857a5359ab2','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:55'),('9fa81da9f7687ead3ce1d725ef','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:16'),('9ff32e69c2378c29d76b16de36','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:20'),('a0042ed3520a6bd1339c822d81','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:04'),('a0411e8416d598a3a448270dca','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:09'),('a1c108f291409a209a1d00370a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 18:22:32'),('a2013d51bd699a6cd3cff06010','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:49'),('a2128b821e415a015d29f1b1a6','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-06-11 13:47:33'),('a21b5c5fbc8d21173e07e88b9d','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:54'),('a23d9e2d0e622e57ceb109b341','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:31:22'),('a23ff49eae55e52e32f743af76','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-04-25 11:26:34'),('a24bdb3d55f38dc703d02ba695','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:45'),('a35c348d22523e8f85ac785a7f','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:10:45'),('a3ca702f85e5fc27542db29a7a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:58'),('a40954c943d2d34a090d5614b0','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:08:20'),('a41b3ce44843f048cef754cef7','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-12 11:32:11'),('a45640139c1403398c6296c004','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:30:00'),('a465752edf6c4e3815be864448','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 12:29:52'),('a468faddd11b98e0a190f48b08','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:10:41'),('a46e4e93a109da500d9cbf471f','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 18:15:24'),('a4a40d8fea18d7bff1d389ef57','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:04'),('a4baf6270aacb7b4b8949a13bd','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:15'),('a5113b1bcb339f6302a20c5c9f','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:05'),('a539f23681b023ea41e8f53afa','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:02'),('a55e2b6d21510b67783dd22637','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-06-12 10:54:19'),('a566aea3ed66bb267c154d22c6','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:43'),('a5f077f8b271e13477b95a49e3','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:31'),('a5f21f997bc5f55a99f4af4a1a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:10'),('a6080d723a7b28bee0e4ae12b5','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 11:51:29'),('a652784219bb7948b59a701f77','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:02'),('a68e1841bb573c29c086f10670','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:34'),('a6da288a7377a34e53bd54fa5d','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:06'),('a6dd3a1f91823cc4ad670884cc','{\"language\":\"ru-ru\",\"currency\":\"UAH\"}','2020-07-20 18:07:37'),('a6de4ed7d3cf0b1b157b3d6314','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:30'),('a7b102d1d222fdd8c77d01a746','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:08'),('a7b55c784a53cdadd89c86d47e','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:00'),('a7d51975da1f2a8bc6364ca83c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:19:12'),('a7fb1cd60eb6e5fb0efd7439a9','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:12'),('a84cc1a912c2e70a2ea03a2422','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:31'),('a8964756ccbc30472930b49dff','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:06'),('a8d730db1afea83dc7ff030c91','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:20'),('a8fda56d2ac1af78c4b4783ad2','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 16:00:22'),('a94978223f4382fe4c7f071ed8','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:09'),('a987851c0e260fe380596e5836','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:30'),('a98cd6c6d13c44bb8518eaaa1f','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:19:18'),('a9ab7364de89bb952e1ea934af','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:53'),('a9c1d1fd0d7b5d0139795619b3','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:23'),('a9c66c275c6a6601b143a8e4a8','{\"language\":\"uk-ua\",\"currency\":\"UAH\",\"compare\":[\"53\",\"51\",\"50\"],\"wishlist\":[\"50\",\"51\",\"53\"]}','2020-05-07 15:42:14'),('aa4dea6a0d2e10f8a5be874ecd','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:08'),('aa6fff627243e286a46e65ef05','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:05'),('aa9ce4e7a1b46eabd5cea1078d','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:35'),('aad3cf7427832e262b7ddeb7c3','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:49:43'),('aae6213b829c76dd80820f18a4','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:49:39'),('aaf6d5428f03b4b567d06ba142','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:33'),('ab2905a7bbc67067b56aa2ae1f','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:50'),('ab2eefd8d1807cd5c2d554af48','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:59'),('ab995d3ab969ebd6ee29f846fa','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:47'),('abb790e6271d21a66d7728be5a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:45'),('abd46214ebff24ecf9e1447e07','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-07-22 19:38:08'),('ac2cf72c3cec8ca9b5e346d6d7','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:46'),('acc3d55b3394897c48464a02b8','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:40'),('acea109056d6cfde60c92e3aeb','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:02:15'),('ad099088915d39d31da0a1eab9','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:47'),('ad421ecab180d420d59d700744','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 18:34:52'),('ad47377b65861bf2c02b3e97ec','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:30:07'),('ad5c96c71746c8cb35a5404b34','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:57'),('ad89d4da5676b69d47a9496b2b','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:31'),('ada4d19d7d32d30e33fbdc9786','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:36'),('adb26d167a2d53c3c6fdae870c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:49'),('add13c54728e3536b343fca21a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 18:55:28'),('ae01edd0ca0856b947281893bb','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:48:19'),('ae8399c9cc646fabaf131df44f','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:02'),('ae8c4e9710fc84dcad42a48f69','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-05-06 10:22:12'),('aec90e85d1531594354f5e2f0d','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:59:29'),('aeea7e2fbdbda8f3cfb37d4f3b','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:46'),('aef1d03ed1d531e066bea91f78','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:42'),('af3846bd9719426aaabfb24e08','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:08'),('af542b57a287375bac4ed57ff4','{\"language\":\"uk-ua\",\"currency\":\"UAH\",\"wishlist\":[\"50\"],\"user_id\":\"1\",\"user_token\":\"RZI1ShCLWiBwXmSAhNVMriCtzPTVQeru\"}','2020-04-25 12:38:31'),('afbb8edee7743addc74bc2ecb4','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:08'),('b007d3de2ea8515bdc86fe9251','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:06'),('b046b032016c01103a96b7888a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:57'),('b06f4f1422e07bd0b1caa74df0','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:48'),('b1a2084dca0b7cff5d40fb0a95','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:48'),('b1c372acc85991cb1407bdd6e7','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:16'),('b1d619fda2c4a7798f8b329003','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:56'),('b1f5f6231e7b8aae3f921e3e5e','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:13'),('b23f3f113e4ccd22ea1eb054ec','{\"language\":\"uk-ua\",\"currency\":\"UAH\",\"user_id\":\"1\",\"user_token\":\"9HFUn7EOmmxtbjCpOVqFWMHFBgeZiuvw\",\"account\":\"guest\",\"payment_address\":{\"address_id\":\"1\",\"firstname\":\"S\",\"lastname\":\"s\",\"company\":\"asd\",\"address_1\":\"sadads\",\"address_2\":\"asdsad\",\"postcode\":\"3212\",\"city\":\"sadsad\",\"zone_id\":\"3527\",\"zone\":\"Carmarthenshire\",\"zone_code\":\"CARM\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null},\"shipping_address\":{\"address_id\":\"1\",\"firstname\":\"S\",\"lastname\":\"s\",\"company\":\"asd\",\"address_1\":\"sadads\",\"address_2\":\"asdsad\",\"postcode\":\"3212\",\"city\":\"sadsad\",\"zone_id\":\"3527\",\"zone\":\"Carmarthenshire\",\"zone_code\":\"CARM\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null},\"customer_id\":\"1\"}','2020-04-06 13:57:55'),('b255e0fdc75154a4bf7322bda3','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:10'),('b26b4b60356a4069b1d0c2ef4f','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:06'),('b2abdfc08498c4316d7f994b0d','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:13'),('b2f8f7d77069fc4834ebb4697e','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:09'),('b326b830a5d61fdad9f5c93ae8','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:09'),('b3d12a64dd7db025a790315a2b','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-12 10:21:30'),('b417ac2599b191a9536560c4f1','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:07'),('b43bab5ef3661cfde34fea5eaa','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 16:07:24'),('b4989b86b63b9e5dcbf3abf206','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:14'),('b4a0333238e7f88dd11e3f9767','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:52'),('b4a8d6644a840fa5b36c818331','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-05-03 15:13:35'),('b4d52c8cdb3960f12c97d9758a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:09'),('b50b003cda5b6edeab561799d7','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:09:38'),('b57e6293cea9f0c91890250d33','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-07-24 12:12:42'),('b5811c833a2fdab3d840e679a2','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:00'),('b5890de8d7bf13c52579e8297f','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:50'),('b5b04310dc1ec305acf4f75280','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:40'),('b5ef91b8179cc399393c3bdd2e','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:02'),('b65524325102df25cec0d6c587','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:08:06'),('b6809ee4b5c486bfa989c16d98','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:09'),('b698ce29748cbe7dc5cbee2203','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:53'),('b6aaf803d590f7e830306e33a8','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:09'),('b6b29fc50a9a37582171823dd3','{\"language\":\"uk-ua\",\"currency\":\"UAH\",\"compare\":[\"50\"],\"wishlist\":[\"50\"],\"account\":\"guest\",\"payment_address\":{\"firstname\":\"\\u0421\\u0435\\u0440\\u0433\\u0456\\u0439\",\"lastname\":\"\\u0421\",\"company\":\"\",\"address_1\":\"\\u0411\\u0443\\u043b\\u044c\\u0432\\u0430\\u0440 \\u0412\\u0430\\u0446\\u043b\\u0430\\u0432\\u0430 \\u0413\\u0430\\u0432\\u0435\\u043b\\u043025\\/54\",\"address_2\":\"49\",\"postcode\":\"03126\",\"city\":\"\\u041a\\u0438\\u0435\\u0432\",\"country_id\":\"220\",\"zone_id\":\"3490\",\"country\":\"Ukraine\",\"iso_code_2\":\"UA\",\"iso_code_3\":\"UKR\",\"address_format\":\"\",\"custom_field\":[],\"zone\":\"Kyiv\",\"zone_code\":\"30\"},\"shipping_address\":{\"firstname\":\"\\u0421\\u0435\\u0440\\u0433\\u0456\\u0439\",\"lastname\":\"\\u0421\",\"company\":\"\",\"address_1\":\"\\u0411\\u0443\\u043b\\u044c\\u0432\\u0430\\u0440 \\u0412\\u0430\\u0446\\u043b\\u0430\\u0432\\u0430 \\u0413\\u0430\\u0432\\u0435\\u043b\\u043025\\/54\",\"address_2\":\"49\",\"postcode\":\"03126\",\"city\":\"\\u041a\\u0438\\u0435\\u0432\",\"country_id\":\"220\",\"zone_id\":\"3490\",\"country\":\"Ukraine\",\"iso_code_2\":\"UA\",\"iso_code_3\":\"UKR\",\"address_format\":\"\",\"zone\":\"Kyiv\",\"zone_code\":\"30\",\"custom_field\":[]},\"user_id\":\"1\",\"user_token\":\"HhdCraLRWtCRGLNLAvAwkvBt0olPyeGW\"}','2020-04-18 12:34:16'),('b71f590a590645e71429cc4b75','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:51'),('b73d078424c04f6f10d5b380e0','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 19:20:54'),('b79861b59e9f1070f0b96357ef','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:49'),('b7a1a7d59db86905209eff3526','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:22'),('b7c41c0369b078d1f42cc20223','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:02'),('b7cca48d75e892589427121708','{\"language\":\"ru-ru\",\"currency\":\"UAH\"}','2020-07-24 07:34:32'),('b8040035ded6cf4eefb8acb137','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:42'),('b858c90138e21707936f6327f5','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 19:11:52'),('b8c7dc328adf8712b7a43a072d','{\"user_id\":\"1\",\"user_token\":\"rGXZr2FxZyBoZQTMv7c1pxKRj8kG1cpm\"}','2020-07-25 20:03:11'),('b936f869693d892e851a6a6c9a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:33'),('b953dac7faff3b1123e974194c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:50'),('b977fea6ee5a6213620952e1ce','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:49'),('b9d2faefc32803a152deb24a3a','{\"api_id\":\"1\"}','2020-04-21 10:37:17'),('b9d708c9123e14b118859491d0','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:03'),('ba09d54d81e8bdc2aded0382ff','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:13'),('ba6001cfef4e717dd75c999c6a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:56'),('bab71d6f82268ec054ef62ff19','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:00'),('babddae6dbea5b509be9dfbfe5','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 18:14:08'),('bac6faa7b3f10d6fbdb958571f','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:38'),('bad7057bd4afb050f6885b94ca','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:03'),('bb02f924c607d67af8c1eb8d2a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:05'),('bb4815282e9a9020aae61b543d','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:58'),('bb591c62d80737e8f491bf9c7c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:25'),('bbb5b9d63468d6998829a9375b','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:24'),('bbd72f0ccd3b0613438ef046be','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:04'),('bbf7c22f989ba241d6c44e8dc5','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:11'),('bc39bee5f2bcc35b4906441be3','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:00'),('bc81ab8e8253cf03f8d67a87f7','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 18:56:09'),('bc944fbe309fc69b7582f68484','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:24'),('bcaa58c0ab49699c1784e7cdfe','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-07-20 12:35:12'),('bcf3fdd7efd72e434139d41b1d','{\"language\":\"ru-ru\",\"currency\":\"UAH\"}','2020-07-20 18:07:41'),('bd09c54eaff3dfc6684eb606d5','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:35'),('bd0f81644051c445a5d873fc2f','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:12:59'),('bda6454a4c22e2f26ea6f18d56','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:50'),('be0af1b033db6c7f95635b1d14','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:33'),('be19e67ef7c11863cf3525c5d8','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:08'),('be36cda7a7e2d24216fa57b8cc','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:55'),('bf0826bae7ec4d35111931a35c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 18:26:47'),('bfcf807404b13a715802dd47b6','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:56:30'),('c036f071b0b0ac783a5aaed1e9','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:05'),('c03acbe1ab8be48e6db2dfc9d4','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:30'),('c0408336759ef36afd54a0c959','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:12'),('c04432ebc3fe213f4ff0103a2b','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:23'),('c05382082b82222e77273c0e2f','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:38'),('c082c4e1cdcc8d31fe34682e46','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:31'),('c0aed3fae8619dada564175e0a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:38'),('c0beabaea6f8df6dad42a56660','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:09:33'),('c0d180c394b2a19d185514d276','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:56'),('c143351da5470fccf398c0f885','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:33:21'),('c20bc21db0b3b371d18177abef','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:44'),('c2136383d2add81fc423dcffdb','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:12'),('c275138825b71ad1717b0bc9cb','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:07'),('c283853744bb3245293db2f08e','{\"api_id\":\"1\",\"language\":\"en-gb\",\"currency\":\"USD\"}','2020-04-06 13:29:19'),('c29435351269f909a08fb8df2f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-04-18 09:12:18'),('c29955217f134159105d3ad417','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:57'),('c2e5c8310514c46ad275f14d4e','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:06'),('c30162466bc9b395449a5dc498','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-12 11:32:17'),('c308ccc1c860f2c2fd0bc0f365','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:17'),('c334a7558a3b8d41119f8b4dfe','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:48'),('c33a9d8f1a3cdab2bc20013c7f','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:12:58'),('c346a9ae00d5554577fb45a8c6','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:15'),('c386c81107ea77d2a432eff2f2','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:56'),('c3c3b5b50e9a365d904a39c04a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:59'),('c3d745ac13f46bb543787f0af8','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:29:59'),('c3e7266320b54870f62202c1c4','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:08'),('c3f8e9e910bfb195ea4c65e97e','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:32'),('c449d268fd067d6feaa3de9281','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:05'),('c47743a4ee3d2ffbfa5453ec08','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:13'),('c4d27025eabd02b3d52ba73076','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:06'),('c4dc3bf33a017d1ee036f075ca','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:46'),('c4ffd4230f4b095f4bfc3b3ae7','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:45'),('c56e9b6f2611bfa819beb766a6','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 12:30:02'),('c5c2772c7c18ec5597afa15c0a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:30:02'),('c5ec26364d8cf5e0cb238d366a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:33'),('c61a1f2fba4a70db40a219fda4','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:12:57'),('c692e4670bee8d2da49d3e10f9','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:04'),('c6a1d83f1d937c98d156f7fc60','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:41:34'),('c6b562e3e2ca73d403a7cb70d5','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:40'),('c6d2b57cd7891c63c19fad81cb','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:52'),('c734b1e5cdb8e5ebef8facbbb0','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:45'),('c742d5c056b1b2e1f283faad82','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-05-09 08:52:05'),('c79c0b37719d529f76aa07bfce','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:45'),('c7a5227eb938a3c9055456a757','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:24'),('c800696650b8a6c3c90033eab0','{\"language\":\"ru-ru\",\"currency\":\"UAH\"}','2020-07-26 19:43:20'),('c82d1d47521c9564e43cbacf51','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:57'),('c8426adb5bf12810fb6626df2c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:20'),('c87ed4ec9ffae7b307db26b99c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:39'),('c8bfc3e84f0ef0d5089d914dba','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:24'),('c8c2d251dc6c653bf03197fcca','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:49:28'),('c912b2031f4fba025272a84d00','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:33'),('c92792953520ebacc84a1da628','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:06:55'),('c939d2cfd7d989d3047d7f87e4','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:18:53'),('c94c840edd553431b90a761e38','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:30'),('c961b902222637f21de45273dc','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-05-06 15:37:58'),('c97b5e4c6a75005fac778a9d92','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 18:25:40'),('ca1425f6d80d35457d7882a431','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:01'),('ca1648f6b42d2689f19c3dce82','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:04'),('ca35eea4ae9da4732a36e45153','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:22'),('caf7f26a31a86416b3d9278664','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:12:58'),('caf9cb3746e46ee1d838e9d563','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:52'),('cafe5b5100c84fb780b85cca2d','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:50'),('cb34d1aa720dcaa549e185effa','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:32:43'),('cb423bdcafb63ad6b8a1e04644','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:49'),('cbed691aedd3e38ec2f5876f1d','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:51'),('cbf01a792c4632aba73ae1d4af','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:52'),('cccb9e5c831e08d88870aa6575','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:33'),('ccda0c989fa63a0d6e495712b1','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:17'),('cd1dce73b89381d130b2c2d162','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:31:24'),('ce1d4893141056a16a7e11c9ec','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:16'),('ce820571f769a25d420b408546','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:10'),('cea101c4cde1680fbcd73a4b90','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-12 11:27:46'),('ceb265e37159ef1dbff4cb5d74','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 12:38:33'),('cedb54eb752e6dd3de41aef09e','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:18'),('cef1a10daa290b9147f780e541','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:52'),('cf3a937c0bb3d3b60ac5f67cf2','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:39'),('cf70d24d7ce2a76374d02397ee','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:42'),('d00be65930893b836b5afa3edf','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:01'),('d037bb2769f3ee7b15af814a35','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:31'),('d09f2d8a566fa952d2701126fc','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:28'),('d0c3b5430cf70d96a2b581ae5a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:57'),('d0de16db08aedea95aafb2ff81','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:27:49'),('d1013ef9a012ed4341d226df05','false','2020-05-08 21:31:22'),('d10d8e3a606ea2d025ce660eea','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:02'),('d12adfa4d0865c27a92c990a01','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:05:00'),('d1456fb57668742e1f0a46799e','{\"language\":\"ru-ru\",\"currency\":\"UAH\"}','2020-04-23 09:15:07'),('d15d5315dfa4f954f9da841f48','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:54'),('d172be3f5a23d409f5328c8fc0','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:49'),('d19d10eca555dc12f708b6114d','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:50:43'),('d1bb521b248481751bdf60969f','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:36'),('d1bd5a9fce8c2ea7d2a34d24a3','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:57'),('d1d1b7c0d59699994fa1c02353','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:08'),('d1ddeb446719921a9b735d3245','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:07'),('d1ef2f4a136cab525d7b40b844','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:16'),('d2a104b2b128821702bb200e62','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:35'),('d2b5b9e8b8cb9ea20b14485573','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:14'),('d2dfcfeb4e3d6ece464c66e2fc','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:54'),('d306ae955b870c82424d215b18','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:00'),('d32f8bcdbbc66c4171e9f11987','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:10'),('d3a7ee6d6781ac011b2b163bc1','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:13'),('d44b37f1b7be1afa7685d4e8e1','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:35'),('d455cae58dffe3a624d6d22996','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:39:18'),('d48117f967dcaf12ce8e0427b0','{\"language\":\"uk-ua\",\"currency\":\"UAH\",\"compare\":[]}','2020-05-05 18:07:06'),('d4cc5cba5d3a7723240e08157d','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:43'),('d539b205dfafa2e16b969fdfb1','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:04'),('d56b0a593f17cd0b1771eb3b9f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-05-11 13:44:47'),('d61042ccf5b62fb447d1c2b7e7','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:06'),('d6259ed32d30f5d35c2d0041ac','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:51:58'),('d765beabdc955a9c979e56e914','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:10'),('d772cc62b9afeb09bbae455a7c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 18:26:16'),('d7b081440ef32765b7c26483e0','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:54'),('d7b113929e0ae7caab0c05c530','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:03:59'),('d7d90d57f16fadf03e81d4ef91','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:51'),('d87bc5c89a07c9d5dbd0f3627e','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:03'),('d8cb5468b70a552e472dc4141a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:22'),('d8eec1bc93f89acff39e5fda21','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:12'),('d9564499be3b8aed5d5b58e311','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:37:20'),('d9675f98fe9376fc56d5360db1','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:51'),('d9840e4bdd05ec942e96cb0137','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:22:34'),('d98d7ab9c5454bb061b1844199','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:22'),('d9a6aa498b456379164ea577de','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:09'),('d9b77ed1d58ffc43b6e05547cf','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:01'),('da18304253e1bd6d9bb6efcf53','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:08'),('da59650a04d0f5953818d7a050','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:21'),('dabe35fefd304914fd2a11f229','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:34:01'),('dad441c4e6f7b4814ea519c99e','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:45:39'),('db2a97896bdfa1cad66a11643c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:15'),('dbcdbfce8e744cce9866b372a4','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:24'),('dc4da58127950b5ab97b3d1f39','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:18'),('dc52c271770b2a6cb5b0db3e0c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:16:11'),('dc691cb6f338b00e0900900eb4','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-07-21 12:47:13'),('dc695ddef8038794b8e96636d2','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:00'),('dc7808d0930eaea68baa046827','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:56'),('dc9302d20c99ba9fa30d893081','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:06'),('dce34590a4b5a2a3453d9b71b4','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:22'),('dcf068dcf8565811eaeeaecc34','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:53'),('dd0076569c7dc314b00f98e146','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:12'),('ddebef8699ee03ddc41d24f403','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:05'),('de168f44c897f20bdbb7f4ab52','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:07'),('de1e98ecc927499eb69168d4ec','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:56'),('de7f4ddb670e43ceda200ff149','{\"language\":\"uk-ua\",\"currency\":\"UAH\",\"user_id\":\"1\",\"user_token\":\"17uCqvkgHmRljya88XD1lhEkV3BEykCZ\"}','2020-04-18 19:02:34'),('de8ae5ae8ea386990734d47673','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:09'),('deabeafd8ea19698b3d66fa304','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:54'),('deca782832383bdd64d571a250','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:40'),('dee3a307760a555bf03f8ef383','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:04'),('df017f4ba5c3c0414890ab04b9','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:20'),('df4cb79c17e105cd6986060e6f','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:21'),('dfb23bf7f4560b61d10dd391f4','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:51'),('e02a99d8e24636e4e5d93f78d4','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:50'),('e02e8cbbf0e0b86cd93f6380e5','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:48'),('e108723d06563ec06d490b0da9','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:09'),('e1b28cd6f2120090bb799a5ba0','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:12:57'),('e27d43b68ca7eccdfba660ca7a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:29'),('e28e670ef5822aabbe30ad7a15','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:35'),('e30418aaba2181ee0f7418e02d','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:20:31'),('e36c85c736a700ac706fdc2ad3','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:01:56'),('e38d7b5d2318bc20575d4735e0','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:01'),('e38e78333d44e81a3db248b26b','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:51'),('e3da8402417e6ad13082405d0a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:31:19'),('e3ebeba5ea6b91867c5a0407a8','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-12 11:49:15'),('e4295bba16bb569b238f7c0571','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:32'),('e46c756d55f2851d08a88c3e0a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:10'),('e4c3aa02a5727b5f45f0c9bd44','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 18:44:05'),('e4d9648f6319defb860eb97832','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:07'),('e4e8b7d794b20315909576730e','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:03'),('e57554446346ab4761cf2543dd','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:53'),('e5f1a5d8d2e2776fd7d894e000','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:51:47'),('e5fce3cefe483a4523aa5c1945','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:50'),('e62d58cc2811d3df497e5113ac','{\"language\":\"ru-ru\",\"currency\":\"UAH\"}','2020-07-20 18:07:37'),('e648d482b4f49368a4ea073647','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:53'),('e65a8efa320825b1bd7d5b1447','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:14'),('e68b5a872b5ca9355410b398da','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:02'),('e69338792a185a3317b50170f5','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:07'),('e6ac10aaf8782a37aed1cc5973','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:42:11'),('e6b3de84077a8b13acc085babc','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:42'),('e6cd0dcbb81733384b3bed7ee8','{\"api_id\":\"1\"}','2020-04-06 13:27:24'),('e71e9678859ed61253e88cb59b','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:54'),('e782a90c72ea0c465828bafc60','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:20'),('e791fd100833913d066b4425ea','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-12 11:32:23'),('e79442528e18a4c5244a494413','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:05'),('e7d3567a4026599684936ecf2b','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:21:49'),('e826d834f861f4b4109e8e1b26','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:46:04'),('e9270f67e98c6b08388f637ec2','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:40'),('e969a2e2d6b9d91895e907ef89','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:00'),('e9ab0310f045ecc63714bde87c','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:59'),('e9d7433d6c856e40f9d1f77198','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:03'),('ea0b48e0120856a1ac5fc28fd5','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 19:20:50'),('ea14da03a8c95bca8ac6973b44','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:52'),('ea496de4dab888d813842433f2','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:19'),('ea58403b0b68b0ac7457e4079e','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:11'),('ea6fbcd85ceaa7ca31486b8684','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:07:25'),('ea9adeab28159f6c05d7921d8a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:16'),('eaf084e6590c350021c229e581','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:02'),('eb29e4c2ff61bd3e71e82020db','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:52'),('ebaf81536e88b96fd5a73be727','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:11'),('ebde6683cad559ca217f49ee64','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:18'),('ec3d3b34a1e67652b1f4f77d15','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-05-03 18:53:00'),('ec3dd66330c62caa44ef018b17','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:53'),('ec52df73ad4788e4eebcd47b35','{\"language\":\"uk-ua\",\"currency\":\"UAH\",\"wishlist\":[\"50\"],\"user_id\":\"1\",\"user_token\":\"gJjTiBkotkBlatTEaAAMRaMcQR5OmZtT\",\"account\":\"guest\",\"payment_address\":{\"address_id\":\"3\",\"firstname\":\"\\u0421\\u0435\\u0440\\u0433\\u0456\\u0439\",\"lastname\":\"\\u0421\\u043a\\u0443\\u043f\\u043e\\u0432\",\"company\":\"\",\"address_1\":\"\\u0411\\u0443\\u043b\\u044c\\u0432\\u0430\\u0440 \\u0412\\u0430\\u0446\\u043b\\u0430\\u0432\\u0430 \\u0413\\u0430\\u0432\\u0435\\u043b\\u0430\",\"address_2\":\"\\u0411\\u0443\\u043b\\u044c\\u0432\\u0430\\u0440 \\u0412\\u0430\\u0446\\u043b\\u0430\\u0432\\u0430 \\u0413\\u0430\\u0432\\u0435\\u043b\\u0430\",\"postcode\":\"03126\",\"city\":\"\\u041a\\u0438\\u0457\\u0432\",\"zone_id\":\"3490\",\"zone\":\"Kyiv\",\"zone_code\":\"30\",\"country_id\":\"220\",\"country\":\"Ukraine\",\"iso_code_2\":\"UA\",\"iso_code_3\":\"UKR\",\"address_format\":\"\",\"custom_field\":null},\"shipping_address\":{\"address_id\":\"3\",\"firstname\":\"\\u0421\\u0435\\u0440\\u0433\\u0456\\u0439\",\"lastname\":\"\\u0421\\u043a\\u0443\\u043f\\u043e\\u0432\",\"company\":\"\",\"address_1\":\"\\u0411\\u0443\\u043b\\u044c\\u0432\\u0430\\u0440 \\u0412\\u0430\\u0446\\u043b\\u0430\\u0432\\u0430 \\u0413\\u0430\\u0432\\u0435\\u043b\\u0430\",\"address_2\":\"\\u0411\\u0443\\u043b\\u044c\\u0432\\u0430\\u0440 \\u0412\\u0430\\u0446\\u043b\\u0430\\u0432\\u0430 \\u0413\\u0430\\u0432\\u0435\\u043b\\u0430\",\"postcode\":\"03126\",\"city\":\"\\u041a\\u0438\\u0457\\u0432\",\"zone_id\":\"3490\",\"zone\":\"Kyiv\",\"zone_code\":\"30\",\"country_id\":\"220\",\"country\":\"Ukraine\",\"iso_code_2\":\"UA\",\"iso_code_3\":\"UKR\",\"address_format\":\"\",\"custom_field\":null},\"customer_id\":\"8\",\"shipping_methods\":{\"pickup\":{\"title\":\"\\u041f\\u0440\\u043e\\u0434\\u0430\\u043c\",\"quote\":{\"pickup\":{\"code\":\"pickup.pickup\",\"title\":\"\\u0421\\u0430\\u043c\\u043e\\u0432\\u0438\\u0432\\u0456\\u0437 \\u0456\\u0437 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0443\",\"cost\":0,\"tax_class_id\":0,\"text\":\"\\u20b40.00\\u0433\\u0440\\u043d.\"}},\"sort_order\":\"\",\"error\":false},\"flat\":{\"title\":\"\\u0424\\u0456\\u043a\\u0441\\u043e\\u0432\\u0430\\u043d\\u0430 \\u0432\\u0430\\u0440\\u0442\\u0456\\u0441\\u0442\\u044c \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"\\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0437 \\u0444\\u0456\\u043a\\u0441\\u043e\\u0432\\u0430\\u043d\\u043e\\u044e \\u0432\\u0430\\u0440\\u0442\\u0456\\u0441\\u0442\\u044e \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"\\u20b45.00\\u0433\\u0440\\u043d.\"}},\"sort_order\":\"1\",\"error\":false}}}','2020-07-20 19:08:09'),('ec8096391577d8ab332da59bfc','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:12:59'),('ec8afed70818c11efaa9243cf5','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:08:08'),('ed5cd5c32a4b8b405b02710b69','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:45:59'),('ed8166a15acb67e0d8b142c3ed','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:54'),('ed90dce7796b2112ecd00e2dd4','{\"language\":\"uk-ua\",\"currency\":\"UAH\",\"user_id\":\"1\",\"user_token\":\"i00L4fTP4v8yqsVGVjAEHuJxftFSzBhg\",\"account\":\"guest\",\"guest\":{\"customer_group_id\":\"1\",\"firstname\":\"\\u0421\\u0435\\u0440\\u0433\\u0456\\u0439\",\"lastname\":\"\\u0421\\u043a\\u0443\\u043f\\u043e\\u0432\",\"email\":\"sergskypow@gmail.com\",\"telephone\":\"+380509368399\",\"custom_field\":[],\"shipping_address\":\"1\"},\"payment_address\":{\"firstname\":\"\\u0421\\u0435\\u0440\\u0433\\u0456\\u0439\",\"lastname\":\"\\u0421\\u043a\\u0443\\u043f\\u043e\\u0432\",\"company\":\"\",\"address_1\":\"\\u0411\\u0443\\u043b\\u044c\\u0432\\u0430\\u0440 \\u0412\\u0430\\u0446\\u043b\\u0430\\u0432\\u0430 \\u0413\\u0430\\u0432\\u0435\\u043b\\u0430\",\"address_2\":\"\\u0411\\u0443\\u043b\\u044c\\u0432\\u0430\\u0440 \\u0412\\u0430\\u0446\\u043b\\u0430\\u0432\\u0430 \\u0413\\u0430\\u0432\\u0435\\u043b\\u0430\",\"postcode\":\"03126\",\"city\":\"\\u041a\\u0438\\u0457\\u0432\",\"country_id\":\"225\",\"zone_id\":\"3692\",\"country\":\"Uruguay\",\"iso_code_2\":\"UY\",\"iso_code_3\":\"URY\",\"address_format\":\"\",\"custom_field\":[],\"zone\":\"Flores\",\"zone_code\":\"FS\"},\"shipping_address\":{\"firstname\":\"\\u0421\\u0435\\u0440\\u0433\\u0456\\u0439\",\"lastname\":\"\\u0421\\u043a\\u0443\\u043f\\u043e\\u0432\",\"company\":\"\",\"address_1\":\"\\u0411\\u0443\\u043b\\u044c\\u0432\\u0430\\u0440 \\u0412\\u0430\\u0446\\u043b\\u0430\\u0432\\u0430 \\u0413\\u0430\\u0432\\u0435\\u043b\\u0430\",\"address_2\":\"\\u0411\\u0443\\u043b\\u044c\\u0432\\u0430\\u0440 \\u0412\\u0430\\u0446\\u043b\\u0430\\u0432\\u0430 \\u0413\\u0430\\u0432\\u0435\\u043b\\u0430\",\"postcode\":\"03126\",\"city\":\"\\u041a\\u0438\\u0457\\u0432\",\"country_id\":\"225\",\"zone_id\":\"3692\",\"country\":\"Uruguay\",\"iso_code_2\":\"UY\",\"iso_code_3\":\"URY\",\"address_format\":\"\",\"zone\":\"Flores\",\"zone_code\":\"FS\",\"custom_field\":[]},\"comment\":\"\",\"order_id\":\"7\",\"shipping_methods\":{\"flat\":{\"title\":\"\\u0424\\u0456\\u043a\\u0441\\u043e\\u0432\\u0430\\u043d\\u0430 \\u0432\\u0430\\u0440\\u0442\\u0456\\u0441\\u0442\\u044c \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"\\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0437 \\u0444\\u0456\\u043a\\u0441\\u043e\\u0432\\u0430\\u043d\\u043e\\u044e \\u0432\\u0430\\u0440\\u0442\\u0456\\u0441\\u0442\\u044e \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"\\u20b45.00\\u0433\\u0440\\u043d.\"}},\"sort_order\":\"1\",\"error\":false}},\"shipping_method\":{\"code\":\"flat.flat\",\"title\":\"\\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0437 \\u0444\\u0456\\u043a\\u0441\\u043e\\u0432\\u0430\\u043d\\u043e\\u044e \\u0432\\u0430\\u0440\\u0442\\u0456\\u0441\\u0442\\u044e \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"\\u20b45.00\\u0433\\u0440\\u043d.\"},\"payment_methods\":{\"cod\":{\"code\":\"cod\",\"title\":\"\\u041e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u0440\\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u0446\\u0456\",\"terms\":\"\",\"sort_order\":\"5\"}},\"payment_method\":{\"code\":\"cod\",\"title\":\"\\u041e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u0440\\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u0446\\u0456\",\"terms\":\"\",\"sort_order\":\"5\"}}','2020-07-20 18:22:39'),('ed917eb98f2faba6027e785aad','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:18'),('ee5e413bca38f405b43ef42381','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:25'),('eebcb63c17396ccc6eccdd7a06','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:12:58'),('eec2845cd802a736435d30b983','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:41'),('eefbbacde38f728767e6baa73a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:36:09'),('ef5816120f32351c5e693b5fd0','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:02'),('efa26ea4d3bb5c67c9882a84ff','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:52'),('efbe0f62b6e87a321805b3b656','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:09'),('efe84ae9533635026e05960b57','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:54'),('f000b868672f5441ea85ef8847','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"zvc0yepS89WpLifPSSARZrYOgYkq8VyI\"}','2020-04-02 19:42:20'),('f00aaeca0b951a86058b91b807','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:47:13'),('f06c33f3a19f2ff474e81ad887','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-05-13 18:33:54'),('f079b7e626805dc116e2b9041e','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:12:59'),('f082353aecbab55e8dba8ca9e9','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 13:21:28'),('f0ab621bd1d3643d72f4c15aa1','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:46:41'),('f0b0ab81f4b54948b7d6b72ddc','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:58'),('f0e8ebc9715d5df304cd3ac18d','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:45'),('f105a48d3384a8fc02a35a0787','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:23'),('f113899b0e9c22e5cc7904f4c2','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:51'),('f15b0dcbccf55c78753beb763f','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:12:31'),('f165564e7d6668560ea13994b7','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:02'),('f16bea2933468f7f94c3eb1b52','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:46:49'),('f1826c82d60e1b7722dd701af7','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:19:37'),('f1860631ca80703f3cd299e7c2','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:00'),('f18a3e399899a5016f615946d0','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:53'),('f21230099a6deb32e8d1bbfb9d','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:09'),('f228b61287e067546d98d6b332','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:55'),('f24d2eef55ddceba8f9b20cc16','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:35:14'),('f279be47bf9f3800192b98a086','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:12'),('f392453c16631e885f7f1f9719','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:24'),('f415abde9e079a446f35b74322','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:24'),('f475e3f308c6600cc8ad7c3672','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:21'),('f5035e9e048abe65f1c85a792a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:23:51'),('f54bd79b0fff64629065235e6a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:32'),('f56d206b02996a579c366d9200','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-25 19:48:21'),('f584664102a8a6bba9b2e443f5','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:02'),('f5afe67d4e20f899356cb92c1b','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:25'),('f5b3e2487ec704939934771e4e','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:06:40'),('f6b062361c495670fba4e6be83','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:23'),('f6ba162a3af5b6431a7a14d625','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:11'),('f7d2313c7ddb63d59fca2680b3','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-07-22 13:47:23'),('f7d2f30ce8f5805cab9733e31a','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:03'),('f7daf3f0029c8440a2358ef0e8','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:33'),('f7ef690023b3b96d35f14b1bcd','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 18:16:08'),('f7f38f2a10b96476f9d394bbee','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:13'),('f8403569562e58b478bac2298b','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:13'),('f8c9606faa610b9300e6e505ca','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:50'),('f928c91ef91c2ecf1580bba570','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:44'),('f99e8982038825e9387d70b2fc','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-07-26 09:55:02'),('f9d4c887f296f2474fa58df2a8','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 18:24:56'),('f9eaed11b1d6df4f12b44507e4','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:31'),('f9f5c56558026c1e916acd4dcf','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:04'),('fa461371d7ba52e4bb05542498','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:14'),('fa7c02f48d74f94f9362af6660','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:08'),('fa934b2845011e6fced8a737c6','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:20'),('fa99bd13d1e2006a12720ce335','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:31:47'),('fabc2332997afd3f8db00b052d','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:10'),('fae061d6f8843682fa59187482','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:23'),('fb336f4412683e907371d543a9','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:03'),('fb37fbea8b6b3c610a34deed48','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:56'),('fba0e728c325a1d351f8e440bf','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:42'),('fbefc2650e49e1dc2f162dd68e','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:08:57'),('fbff0747c934378abae2d68828','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:24'),('fc1edd5f3f43fcef622acbfff5','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:16:05'),('fc243ed2e8e3fd793ac87a2dba','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:10'),('fc8b2c550fa7a110f3246f03ee','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:47'),('fcbe5617791d52f378c30524db','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:11:37'),('fcc5504e13414d5cf5892e7b2e','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:42'),('fd033cb53f8f39da6477210908','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:12:57'),('fd554a25207af76ccfa510e31f','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:01'),('fe0b959cc06b68274d4f30b4f5','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-05-22 18:22:13'),('fe7422020522bf8dbefc8dd7f7','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:20:24'),('fecc933b53adbb06f9a413bb85','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:13:53'),('ff0418e5597bde5374fa4b1be1','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-05-11 19:36:25'),('ff1e0ff2c45ae521a54dbe9cff','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:54:52'),('ff30b36f40a810d8099f454081','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:15:51'),('ff39373f253e749269fd6e2efa','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 15:32:38'),('ff586e0d84944c2129018fd8b1','{\"language\":\"en-gb\",\"currency\":\"UAH\"}','2020-04-27 14:39:16'),('ff8146741fc448dd4f32809a93','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2020-06-06 14:20:54');
/*!40000 ALTER TABLE `oc_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_setting`
--

DROP TABLE IF EXISTS `oc_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1735 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_setting`
--

LOCK TABLES `oc_setting` WRITE;
/*!40000 ALTER TABLE `oc_setting` DISABLE KEYS */;
INSERT INTO `oc_setting` VALUES (1126,0,'theme_sharlar','theme_sharlar_image_cart_width','47',0),(1732,0,'config','config_error_display','1',0),(1733,0,'config','config_error_log','1',0),(1734,0,'config','config_error_filename','error.log',0),(1724,0,'config','config_compression','0',0),(1725,0,'config','config_secure','0',0),(1726,0,'config','config_password','1',0),(1727,0,'config','config_shared','0',0),(1728,0,'config','config_encryption','Qu1K3FsbApyqdiQ019DEXAbsX8l9XDEidoAt2BaNbsmJi9MHnb4AZ3StP3G35xSnPY8r2QjBOBNKhUqbtr8J1GzLDIj3CHFsxgLnlw7ZBYw8GdON3Q3NsUJjZiE5lzSKrSteQmjloRjy3AWkx9JPYuNUFDrKt5yvfTP5x0s2vQ7ikSwtyaOMF6n1fephYyyqJ4nyWfswbGM5khSK8veAVQ29meCxyUPGjVmwBiOzdJLG10mqmZibxJIvGcf8b9cwA2kF0HLeG781sfhEIyj3WJNOp05OT19QoEq9Y5stkNxO6qqmZhwJkmXvSrQG5KKcAxvsiRMzSvRK1V1Q02u2lCKE8Sfcn1ySWVDQFjoJ3MElox2RtPESODEZZBJZ2Y5tyc5EarmQtsbckFFCCSNrtTVohFH8l82Vl5IQ8FBX0h8bqUiKoG8iEfBpPhHHGn8S9hKvXIwU6UcjNSu3OAFLWtmEVv8bP5KPf2lTCoaI5Yv8a6F5Lpp53H3swllr6I3yWVLCbxjSag2LyzLtUs0w8XhXi2ewTZ36PEyHLMSn3jiX1FRrzd11OaFjO9moU3wdhpkUGgwoHWzC8bcmxntdMEQZnPpwJc9jEiZoNZJi1zN135B7GvRdX7qTeECMrQZ08hEnEv1AHGbTnjtsvVXVFOD8iBBgqvjCmnmkJsq2zoMJRqF814lmvrXJji3mhcAIKRVUuUBULNaDF9cz5CAeLUmtSc8JVUDaVWKQhfiwO1kbJsRAc1lZT67hRCeioLaIQEiqvvapCav1a2hQX9wBVLZxUQfQA5zTKDvQQ1JwUky43jr8D2QrTH2DEypQFDnwZEZyaSFAf4YT9OdYX7rwMR13PXKdgupeBmD7OXFK6L5az2jFrbJ80JoQYGcN6PLoPKU6qxhxqQoiMauPMfw0oaIi7vtRIEtcDrNcYCdduo9AQHu0ldBUmNruvZikssunGcPn3gD4v0YtOdSWJ28ytvZVwEoFW9jVNP2ylijGurQOCqJBXpRggglRTK2nMjSF',0),(1729,0,'config','config_file_max_size','300000',0),(1730,0,'config','config_file_ext_allowed','zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc',0),(1722,0,'config','config_seo_url','0',0),(1723,0,'config','config_robots','abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg',0),(1720,0,'config','config_mail_alert_email','',0),(1721,0,'config','config_maintenance','0',0),(1719,0,'config','config_mail_alert','[\"order\"]',1),(1717,0,'config','config_mail_smtp_port','465',0),(1718,0,'config','config_mail_smtp_timeout','5',0),(1716,0,'config','config_mail_smtp_password','1852partyMerry',0),(1715,0,'config','config_mail_smtp_username','merrypartyservice@gmail.com',0),(1714,0,'config','config_mail_smtp_hostname','ssl://smtp.gmail.com',0),(1713,0,'config','config_mail_parameter','',0),(1712,0,'config','config_mail_engine','smtp',0),(1711,0,'config','config_icon','catalog/icon.png',0),(4,0,'voucher','total_voucher_sort_order','8',0),(5,0,'voucher','total_voucher_status','1',0),(1127,0,'theme_sharlar','theme_sharlar_image_cart_height','47',0),(1128,0,'theme_sharlar','theme_sharlar_image_location_width','268',0),(1692,0,'config','config_checkout_id','5',0),(1693,0,'config','config_order_status_id','1',0),(1694,0,'config','config_processing_status','[\"5\",\"1\",\"2\",\"12\",\"3\"]',1),(1695,0,'config','config_complete_status','[\"5\",\"3\"]',1),(1696,0,'config','config_fraud_status_id','7',0),(1697,0,'config','config_api_id','1',0),(1698,0,'config','config_stock_display','0',0),(1699,0,'config','config_stock_warning','0',0),(1700,0,'config','config_stock_checkout','0',0),(1701,0,'config','config_affiliate_group_id','1',0),(1702,0,'config','config_affiliate_approval','0',0),(1703,0,'config','config_affiliate_auto','0',0),(1704,0,'config','config_affiliate_commission','5',0),(1705,0,'config','config_affiliate_id','4',0),(1706,0,'config','config_return_id','0',0),(1707,0,'config','config_return_status_id','2',0),(1708,0,'config','config_captcha','',0),(1709,0,'config','config_captcha_page','[\"review\",\"return\",\"contact\"]',1),(1710,0,'config','config_logo','catalog/clean-mp-icon.png',0),(1691,0,'config','config_checkout_guest','1',0),(1690,0,'config','config_cart_weight','1',0),(95,0,'payment_free_checkout','payment_free_checkout_status','1',0),(96,0,'payment_free_checkout','free_checkout_order_status_id','1',0),(97,0,'payment_free_checkout','payment_free_checkout_sort_order','1',0),(98,0,'payment_cod','payment_cod_sort_order','5',0),(99,0,'payment_cod','payment_cod_total','0.01',0),(100,0,'payment_cod','payment_cod_order_status_id','1',0),(101,0,'payment_cod','payment_cod_geo_zone_id','0',0),(102,0,'payment_cod','payment_cod_status','1',0),(103,0,'shipping_flat','shipping_flat_sort_order','1',0),(104,0,'shipping_flat','shipping_flat_status','1',0),(105,0,'shipping_flat','shipping_flat_geo_zone_id','0',0),(106,0,'shipping_flat','shipping_flat_tax_class_id','9',0),(107,0,'shipping_flat','shipping_flat_cost','5.00',0),(108,0,'total_shipping','total_shipping_sort_order','3',0),(109,0,'total_sub_total','sub_total_sort_order','1',0),(110,0,'total_sub_total','total_sub_total_status','1',0),(111,0,'total_tax','total_tax_status','1',0),(112,0,'total_total','total_total_sort_order','9',0),(113,0,'total_total','total_total_status','1',0),(114,0,'total_tax','total_tax_sort_order','5',0),(115,0,'total_credit','total_credit_sort_order','7',0),(116,0,'total_credit','total_credit_status','1',0),(117,0,'total_reward','total_reward_sort_order','2',0),(118,0,'total_reward','total_reward_status','1',0),(119,0,'total_shipping','total_shipping_status','1',0),(120,0,'total_shipping','total_shipping_estimator','1',0),(121,0,'total_coupon','total_coupon_sort_order','4',0),(122,0,'total_coupon','total_coupon_status','1',0),(123,0,'module_category','module_category_status','1',0),(124,0,'module_account','module_account_status','1',0),(297,0,'theme_default','theme_default_image_cart_height','47',0),(296,0,'theme_default','theme_default_image_cart_width','47',0),(295,0,'theme_default','theme_default_image_wishlist_height','47',0),(294,0,'theme_default','theme_default_image_wishlist_width','47',0),(293,0,'theme_default','theme_default_image_compare_height','90',0),(292,0,'theme_default','theme_default_image_compare_width','90',0),(291,0,'theme_default','theme_default_image_related_height','200',0),(290,0,'theme_default','theme_default_image_related_width','200',0),(289,0,'theme_default','theme_default_image_additional_height','74',0),(288,0,'theme_default','theme_default_image_additional_width','74',0),(287,0,'theme_default','theme_default_image_product_height','228',0),(286,0,'theme_default','theme_default_image_product_width','228',0),(285,0,'theme_default','theme_default_image_popup_height','500',0),(284,0,'theme_default','theme_default_image_popup_width','500',0),(282,0,'theme_default','theme_default_image_thumb_width','228',0),(283,0,'theme_default','theme_default_image_thumb_height','228',0),(281,0,'theme_default','theme_default_image_category_height','80',0),(280,0,'theme_default','theme_default_image_category_width','80',0),(279,0,'theme_default','theme_default_product_description_length','100',0),(149,0,'dashboard_activity','dashboard_activity_status','1',0),(150,0,'dashboard_activity','dashboard_activity_sort_order','7',0),(151,0,'dashboard_sale','dashboard_sale_status','1',0),(152,0,'dashboard_sale','dashboard_sale_width','3',0),(153,0,'dashboard_chart','dashboard_chart_status','1',0),(154,0,'dashboard_chart','dashboard_chart_width','6',0),(155,0,'dashboard_customer','dashboard_customer_status','1',0),(156,0,'dashboard_customer','dashboard_customer_width','3',0),(157,0,'dashboard_map','dashboard_map_status','1',0),(158,0,'dashboard_map','dashboard_map_width','6',0),(159,0,'dashboard_online','dashboard_online_status','1',0),(160,0,'dashboard_online','dashboard_online_width','3',0),(161,0,'dashboard_order','dashboard_order_sort_order','1',0),(162,0,'dashboard_order','dashboard_order_status','1',0),(163,0,'dashboard_order','dashboard_order_width','3',0),(164,0,'dashboard_sale','dashboard_sale_sort_order','2',0),(165,0,'dashboard_customer','dashboard_customer_sort_order','3',0),(166,0,'dashboard_online','dashboard_online_sort_order','4',0),(167,0,'dashboard_map','dashboard_map_sort_order','5',0),(168,0,'dashboard_chart','dashboard_chart_sort_order','6',0),(169,0,'dashboard_recent','dashboard_recent_status','1',0),(170,0,'dashboard_recent','dashboard_recent_sort_order','8',0),(171,0,'dashboard_activity','dashboard_activity_width','4',0),(172,0,'dashboard_recent','dashboard_recent_width','8',0),(173,0,'report_customer_activity','report_customer_activity_status','1',0),(174,0,'report_customer_activity','report_customer_activity_sort_order','1',0),(175,0,'report_customer_order','report_customer_order_status','1',0),(176,0,'report_customer_order','report_customer_order_sort_order','2',0),(177,0,'report_customer_reward','report_customer_reward_status','1',0),(178,0,'report_customer_reward','report_customer_reward_sort_order','3',0),(179,0,'report_customer_search','report_customer_search_sort_order','3',0),(180,0,'report_customer_search','report_customer_search_status','1',0),(181,0,'report_customer_transaction','report_customer_transaction_status','1',0),(182,0,'report_customer_transaction','report_customer_transaction_status_sort_order','4',0),(183,0,'report_sale_tax','report_sale_tax_status','1',0),(184,0,'report_sale_tax','report_sale_tax_sort_order','5',0),(185,0,'report_sale_shipping','report_sale_shipping_status','1',0),(186,0,'report_sale_shipping','report_sale_shipping_sort_order','6',0),(187,0,'report_sale_return','report_sale_return_status','1',0),(188,0,'report_sale_return','report_sale_return_sort_order','7',0),(189,0,'report_sale_order','report_sale_order_status','1',0),(190,0,'report_sale_order','report_sale_order_sort_order','8',0),(191,0,'report_sale_coupon','report_sale_coupon_status','1',0),(192,0,'report_sale_coupon','report_sale_coupon_sort_order','9',0),(193,0,'report_product_viewed','report_product_viewed_status','1',0),(194,0,'report_product_viewed','report_product_viewed_sort_order','10',0),(195,0,'report_product_purchased','report_product_purchased_status','1',0),(196,0,'report_product_purchased','report_product_purchased_sort_order','11',0),(197,0,'report_marketing','report_marketing_status','1',0),(198,0,'report_marketing','report_marketing_sort_order','12',0),(674,0,'developer','developer_theme','0',0),(248,0,'theme-sharlartheme','theme-sharlartheme_image_cart_width','47',0),(247,0,'theme-sharlartheme','theme-sharlartheme_image_wishlist_height','47',0),(246,0,'theme-sharlartheme','theme-sharlartheme_image_wishlist_width','47',0),(245,0,'theme-sharlartheme','theme-sharlartheme_image_compare_height','90',0),(244,0,'theme-sharlartheme','theme-sharlartheme_image_compare_width','90',0),(243,0,'theme-sharlartheme','theme-sharlartheme_image_related_height','200',0),(242,0,'theme-sharlartheme','theme-sharlartheme_image_related_width','200',0),(241,0,'theme-sharlartheme','theme-sharlartheme_image_additional_height','74',0),(240,0,'theme-sharlartheme','theme-sharlartheme_image_additional_width','74',0),(239,0,'theme-sharlartheme','theme-sharlartheme_image_product_height','228',0),(238,0,'theme-sharlartheme','theme-sharlartheme_image_product_width','228',0),(237,0,'theme-sharlartheme','theme-sharlartheme_image_popup_height','500',0),(236,0,'theme-sharlartheme','theme-sharlartheme_image_popup_width','500',0),(235,0,'theme-sharlartheme','theme-sharlartheme_image_thumb_height','228',0),(234,0,'theme-sharlartheme','theme-sharlartheme_image_thumb_width','228',0),(233,0,'theme-sharlartheme','theme-sharlartheme_image_category_height','80',0),(232,0,'theme-sharlartheme','theme-sharlartheme_image_category_width','80',0),(231,0,'theme-sharlartheme','theme-sharlartheme_product_description_length','100',0),(230,0,'theme-sharlartheme','theme-sharlartheme_product_limit','15',0),(229,0,'theme-sharlartheme','theme-sharlartheme_status','1',0),(228,0,'theme-sharlartheme','theme-sharlartheme_directory','sharlartheme',0),(249,0,'theme-sharlartheme','theme-sharlartheme_image_cart_height','47',0),(250,0,'theme-sharlartheme','theme-sharlartheme_image_location_width','268',0),(251,0,'theme-sharlartheme','theme-sharlartheme_image_location_height','50',0),(298,0,'theme_default','theme_default_image_location_width','268',0),(278,0,'theme_default','theme_default_product_limit','15',0),(277,0,'theme_default','theme_default_status','1',0),(276,0,'theme_default','theme_default_directory','default',0),(299,0,'theme_default','theme_default_image_location_height','50',0),(1125,0,'theme_sharlar','theme_sharlar_image_wishlist_height','47',0),(1124,0,'theme_sharlar','theme_sharlar_image_wishlist_width','47',0),(1123,0,'theme_sharlar','theme_sharlar_image_compare_height','90',0),(1122,0,'theme_sharlar','theme_sharlar_image_compare_width','90',0),(1121,0,'theme_sharlar','theme_sharlar_image_related_height','228',0),(1120,0,'theme_sharlar','theme_sharlar_image_related_width','228',0),(1119,0,'theme_sharlar','theme_sharlar_image_additional_height','74',0),(1118,0,'theme_sharlar','theme_sharlar_image_additional_width','74',0),(1117,0,'theme_sharlar','theme_sharlar_image_product_height','228',0),(1116,0,'theme_sharlar','theme_sharlar_image_product_width','228',0),(1115,0,'theme_sharlar','theme_sharlar_image_popup_height','500',0),(1114,0,'theme_sharlar','theme_sharlar_image_popup_width','500',0),(1113,0,'theme_sharlar','theme_sharlar_image_thumb_height','228',0),(1112,0,'theme_sharlar','theme_sharlar_image_thumb_width','228',0),(1111,0,'theme_sharlar','theme_sharlar_image_category_height','80',0),(1110,0,'theme_sharlar','theme_sharlar_image_category_width','80',0),(1109,0,'theme_sharlar','theme_sharlar_product_description_length','100',0),(1108,0,'theme_sharlar','theme_sharlar_product_limit','15',0),(1107,0,'theme_sharlar','theme_sharlar_status','1',0),(1106,0,'theme_sharlar','theme_sharlar_directory','sharlar',0),(1689,0,'config','config_invoice_prefix','INV-2020-00',0),(1688,0,'config','config_account_id','3',0),(1687,0,'config','config_login_attempts','5',0),(1686,0,'config','config_customer_price','0',0),(1685,0,'config','config_customer_group_display','[\"1\"]',1),(1684,0,'config','config_customer_group_id','1',0),(1683,0,'config','config_customer_search','0',0),(1682,0,'config','config_customer_activity','0',0),(1681,0,'config','config_customer_online','0',0),(1680,0,'config','config_tax_customer','shipping',0),(1679,0,'config','config_tax_default','shipping',0),(1678,0,'config','config_tax','0',0),(1677,0,'config','config_voucher_max','1000',0),(669,0,'module_filter','module_filter_status','1',0),(675,0,'developer','developer_sass','1',0),(1675,0,'config','config_review_guest','1',0),(1129,0,'theme_sharlar','theme_sharlar_image_location_height','50',0),(1676,0,'config','config_voucher_min','1',0),(1674,0,'config','config_review_status','1',0),(1673,0,'config','config_limit_admin','20',0),(1672,0,'config','config_product_count','1',0),(1671,0,'config','config_weight_class_id','1',0),(1670,0,'config','config_length_class_id','1',0),(1669,0,'config','config_currency_auto','1',0),(1668,0,'config','config_currency','UAH',0),(1667,0,'config','config_admin_language','en-gb',0),(1664,0,'config','config_country_id','220',0),(1665,0,'config','config_zone_id','3490',0),(1666,0,'config','config_language','ru-ru',0),(1663,0,'config','config_comment','',0),(1662,0,'config','config_open','',0),(1661,0,'config','config_image','',0),(1660,0,'config','config_fax','',0),(1659,0,'config','config_telephone','123456789',0),(1658,0,'config','config_email','sergskypow@gmail.com',0),(1657,0,'config','config_geocode','',0),(1656,0,'config','config_address','Address 1',0),(1655,0,'config','config_owner','Your Name',0),(1654,0,'config','config_name','Your Store',0),(1653,0,'config','config_layout_id','4',0),(1652,0,'config','config_theme','sharlar',0),(1651,0,'config','config_meta_keyword','',0),(1560,0,'shipping_pickup','shipping_pickup_geo_zone_id','0',0),(1561,0,'shipping_pickup','shipping_pickup_status','1',0),(1562,0,'shipping_pickup','shipping_pickup_sort_order','',0),(1731,0,'config','config_file_mime_allowed','text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf',0),(1650,0,'config','config_meta_description','My Store',0),(1649,0,'config','config_meta_title','MerryPArty',0);
/*!40000 ALTER TABLE `oc_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_shipping_courier`
--

DROP TABLE IF EXISTS `oc_shipping_courier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_shipping_courier` (
  `shipping_courier_id` int(11) NOT NULL,
  `shipping_courier_code` varchar(255) NOT NULL DEFAULT '',
  `shipping_courier_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`shipping_courier_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_shipping_courier`
--

LOCK TABLES `oc_shipping_courier` WRITE;
/*!40000 ALTER TABLE `oc_shipping_courier` DISABLE KEYS */;
INSERT INTO `oc_shipping_courier` VALUES (1,'dhl','DHL'),(2,'fedex','Fedex'),(3,'ups','UPS'),(4,'royal-mail','Royal Mail'),(5,'usps','United States Postal Service'),(6,'auspost','Australia Post');
/*!40000 ALTER TABLE `oc_shipping_courier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_statistics`
--

DROP TABLE IF EXISTS `oc_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_statistics` (
  `statistics_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL,
  PRIMARY KEY (`statistics_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_statistics`
--

LOCK TABLES `oc_statistics` WRITE;
/*!40000 ALTER TABLE `oc_statistics` DISABLE KEYS */;
INSERT INTO `oc_statistics` VALUES (1,'order_sale',973.4000),(2,'order_processing',0.0000),(3,'order_complete',0.0000),(4,'order_other',0.0000),(5,'returns',0.0000),(6,'product',0.0000),(7,'review',1.0000);
/*!40000 ALTER TABLE `oc_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_stock_status`
--

DROP TABLE IF EXISTS `oc_stock_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_stock_status`
--

LOCK TABLES `oc_stock_status` WRITE;
/*!40000 ALTER TABLE `oc_stock_status` DISABLE KEYS */;
INSERT INTO `oc_stock_status` VALUES (7,1,'In Stock'),(8,1,'Pre-Order'),(5,1,'Out Of Stock'),(6,1,'2-3 Days'),(7,2,'In Stock'),(8,2,'Pre-Order'),(5,2,'Out Of Stock'),(6,2,'2-3 Days'),(7,3,'In Stock'),(8,3,'Pre-Order'),(5,3,'Out Of Stock'),(6,3,'2-3 Days');
/*!40000 ALTER TABLE `oc_stock_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_store`
--

DROP TABLE IF EXISTS `oc_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_store`
--

LOCK TABLES `oc_store` WRITE;
/*!40000 ALTER TABLE `oc_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_class`
--

DROP TABLE IF EXISTS `oc_tax_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_class`
--

LOCK TABLES `oc_tax_class` WRITE;
/*!40000 ALTER TABLE `oc_tax_class` DISABLE KEYS */;
INSERT INTO `oc_tax_class` VALUES (9,'Taxable Goods','Taxed goods','2009-01-06 23:21:53','2011-09-23 14:07:50'),(10,'Downloadable Products','Downloadable','2011-09-21 22:19:39','2011-09-22 10:27:36');
/*!40000 ALTER TABLE `oc_tax_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rate`
--

DROP TABLE IF EXISTS `oc_tax_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rate`
--

LOCK TABLES `oc_tax_rate` WRITE;
/*!40000 ALTER TABLE `oc_tax_rate` DISABLE KEYS */;
INSERT INTO `oc_tax_rate` VALUES (86,3,'VAT (20%)',20.0000,'P','2011-03-09 21:17:10','2011-09-22 22:24:29'),(87,3,'Eco Tax (-2.00)',2.0000,'F','2011-09-21 21:49:23','2011-09-23 00:40:19');
/*!40000 ALTER TABLE `oc_tax_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

DROP TABLE IF EXISTS `oc_tax_rate_to_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

LOCK TABLES `oc_tax_rate_to_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` DISABLE KEYS */;
INSERT INTO `oc_tax_rate_to_customer_group` VALUES (86,1),(87,1);
/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rule`
--

DROP TABLE IF EXISTS `oc_tax_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rule`
--

LOCK TABLES `oc_tax_rule` WRITE;
/*!40000 ALTER TABLE `oc_tax_rule` DISABLE KEYS */;
INSERT INTO `oc_tax_rule` VALUES (121,10,86,'payment',1),(120,10,87,'store',0),(128,9,86,'shipping',1),(127,9,87,'shipping',2);
/*!40000 ALTER TABLE `oc_tax_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_theme`
--

DROP TABLE IF EXISTS `oc_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_theme` (
  `theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_theme`
--

LOCK TABLES `oc_theme` WRITE;
/*!40000 ALTER TABLE `oc_theme` DISABLE KEYS */;
INSERT INTO `oc_theme` VALUES (1,0,'default','common/home','{{ header }}\n&lt;div id=&quot;common-home&quot; class=&quot;container&quot;&gt;\n  &lt;div class=&quot;row&quot;&gt;{{ column_left }}\n    {% if column_left and column_right %}\n    {% set class = \'col-sm-6\' %}\n    {% elseif column_left or column_right %}\n    {% set class = \'col-sm-9\' %}\n    {% else %}\n    {% set class = \'col-sm-12\' %}\n    {% endif %}\n    &lt;h1&gt;Hello&lt;/h1&gt;\n    &lt;div id=&quot;content&quot; class=&quot;{{ class }}&quot;&gt;{{ content_top }}{{ content_bottom }}&lt;/div&gt;\n    {{ column_right }}&lt;/div&gt;\n&lt;/div&gt;\n{{ footer }}','2020-03-30 15:33:08');
/*!40000 ALTER TABLE `oc_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_translation`
--

DROP TABLE IF EXISTS `oc_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_translation` (
  `translation_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`translation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_translation`
--

LOCK TABLES `oc_translation` WRITE;
/*!40000 ALTER TABLE `oc_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_upload`
--

DROP TABLE IF EXISTS `oc_upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_upload`
--

LOCK TABLES `oc_upload` WRITE;
/*!40000 ALTER TABLE `oc_upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_upload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_user`
--

DROP TABLE IF EXISTS `oc_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_user`
--

LOCK TABLES `oc_user` WRITE;
/*!40000 ALTER TABLE `oc_user` DISABLE KEYS */;
INSERT INTO `oc_user` VALUES (1,1,'admin','488af48327855f46447ace4ae2f212c62fe6965e','ub1cWqHhQ','John','Doe','sergskypow@gmail.com','','','176.36.151.216',1,'2020-03-30 15:24:10');
/*!40000 ALTER TABLE `oc_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_user_group`
--

DROP TABLE IF EXISTS `oc_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_user_group`
--

LOCK TABLES `oc_user_group` WRITE;
/*!40000 ALTER TABLE `oc_user_group` DISABLE KEYS */;
INSERT INTO `oc_user_group` VALUES (1,'Administrator','{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/theme\",\"design\\/translation\",\"design\\/seo_url\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/advertise\\/google\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/marketing\\/remarketing\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/payment\\/pp_braintree\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/theme\\/sharlartheme\",\"extension\\/theme\\/sharlartheme\",\"extension\\/theme\\/sharlar\",\"extension\\/module\\/filter\",\"extension\\/module\\/html\",\"extension\\/shipping\\/pickup\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/theme\",\"design\\/translation\",\"design\\/seo_url\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/advertise\\/google\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/marketing\\/remarketing\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/payment\\/pp_braintree\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/event\",\"marketplace\\/api\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/theme\\/sharlartheme\",\"extension\\/theme\\/sharlartheme\",\"extension\\/theme\\/sharlar\",\"extension\\/module\\/filter\",\"extension\\/module\\/html\",\"extension\\/shipping\\/pickup\"]}'),(10,'Demonstration','');
/*!40000 ALTER TABLE `oc_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher`
--

DROP TABLE IF EXISTS `oc_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher`
--

LOCK TABLES `oc_voucher` WRITE;
/*!40000 ALTER TABLE `oc_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_history`
--

DROP TABLE IF EXISTS `oc_voucher_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_history`
--

LOCK TABLES `oc_voucher_history` WRITE;
/*!40000 ALTER TABLE `oc_voucher_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_theme`
--

DROP TABLE IF EXISTS `oc_voucher_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_theme`
--

LOCK TABLES `oc_voucher_theme` WRITE;
/*!40000 ALTER TABLE `oc_voucher_theme` DISABLE KEYS */;
INSERT INTO `oc_voucher_theme` VALUES (8,'catalog/demo/canon_eos_5d_2.jpg'),(7,'catalog/demo/gift-voucher-birthday.jpg'),(6,'catalog/demo/apple_logo.jpg');
/*!40000 ALTER TABLE `oc_voucher_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_theme_description`
--

DROP TABLE IF EXISTS `oc_voucher_theme_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_theme_description`
--

LOCK TABLES `oc_voucher_theme_description` WRITE;
/*!40000 ALTER TABLE `oc_voucher_theme_description` DISABLE KEYS */;
INSERT INTO `oc_voucher_theme_description` VALUES (6,1,'Christmas'),(7,1,'Birthday'),(8,1,'General'),(6,2,'Christmas'),(7,2,'Birthday'),(8,2,'General'),(6,3,'Christmas'),(7,3,'Birthday'),(8,3,'General');
/*!40000 ALTER TABLE `oc_voucher_theme_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_weight_class`
--

DROP TABLE IF EXISTS `oc_weight_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_weight_class`
--

LOCK TABLES `oc_weight_class` WRITE;
/*!40000 ALTER TABLE `oc_weight_class` DISABLE KEYS */;
INSERT INTO `oc_weight_class` VALUES (1,1.00000000),(2,1000.00000000),(5,2.20460000),(6,35.27400000);
/*!40000 ALTER TABLE `oc_weight_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_weight_class_description`
--

DROP TABLE IF EXISTS `oc_weight_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_weight_class_description`
--

LOCK TABLES `oc_weight_class_description` WRITE;
/*!40000 ALTER TABLE `oc_weight_class_description` DISABLE KEYS */;
INSERT INTO `oc_weight_class_description` VALUES (1,1,'Kilogram','kg'),(2,1,'Gram','g'),(5,1,'Pound ','lb'),(6,1,'Ounce','oz'),(1,2,'Kilogram','kg'),(2,2,'Gram','g'),(5,2,'Pound ','lb'),(6,2,'Ounce','oz'),(1,3,'Kilogram','kg'),(2,3,'Gram','g'),(5,3,'Pound ','lb'),(6,3,'Ounce','oz');
/*!40000 ALTER TABLE `oc_weight_class_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_zone`
--

DROP TABLE IF EXISTS `oc_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4239 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_zone`
--

LOCK TABLES `oc_zone` WRITE;
/*!40000 ALTER TABLE `oc_zone` DISABLE KEYS */;
INSERT INTO `oc_zone` VALUES (1,1,'Badakhshan','BDS',1),(2,1,'Badghis','BDG',1),(3,1,'Baghlan','BGL',1),(4,1,'Balkh','BAL',1),(5,1,'Bamian','BAM',1),(6,1,'Farah','FRA',1),(7,1,'Faryab','FYB',1),(8,1,'Ghazni','GHA',1),(9,1,'Ghowr','GHO',1),(10,1,'Helmand','HEL',1),(11,1,'Herat','HER',1),(12,1,'Jowzjan','JOW',1),(13,1,'Kabul','KAB',1),(14,1,'Kandahar','KAN',1),(15,1,'Kapisa','KAP',1),(16,1,'Khost','KHO',1),(17,1,'Konar','KNR',1),(18,1,'Kondoz','KDZ',1),(19,1,'Laghman','LAG',1),(20,1,'Lowgar','LOW',1),(21,1,'Nangrahar','NAN',1),(22,1,'Nimruz','NIM',1),(23,1,'Nurestan','NUR',1),(24,1,'Oruzgan','ORU',1),(25,1,'Paktia','PIA',1),(26,1,'Paktika','PKA',1),(27,1,'Parwan','PAR',1),(28,1,'Samangan','SAM',1),(29,1,'Sar-e Pol','SAR',1),(30,1,'Takhar','TAK',1),(31,1,'Wardak','WAR',1),(32,1,'Zabol','ZAB',1),(33,2,'Berat','BR',1),(34,2,'Bulqize','BU',1),(35,2,'Delvine','DL',1),(36,2,'Devoll','DV',1),(37,2,'Diber','DI',1),(38,2,'Durres','DR',1),(39,2,'Elbasan','EL',1),(40,2,'Kolonje','ER',1),(41,2,'Fier','FR',1),(42,2,'Gjirokaster','GJ',1),(43,2,'Gramsh','GR',1),(44,2,'Has','HA',1),(45,2,'Kavaje','KA',1),(46,2,'Kurbin','KB',1),(47,2,'Kucove','KC',1),(48,2,'Korce','KO',1),(49,2,'Kruje','KR',1),(50,2,'Kukes','KU',1),(51,2,'Librazhd','LB',1),(52,2,'Lezhe','LE',1),(53,2,'Lushnje','LU',1),(54,2,'Malesi e Madhe','MM',1),(55,2,'Mallakaster','MK',1),(56,2,'Mat','MT',1),(57,2,'Mirdite','MR',1),(58,2,'Peqin','PQ',1),(59,2,'Permet','PR',1),(60,2,'Pogradec','PG',1),(61,2,'Puke','PU',1),(62,2,'Shkoder','SH',1),(63,2,'Skrapar','SK',1),(64,2,'Sarande','SR',1),(65,2,'Tepelene','TE',1),(66,2,'Tropoje','TP',1),(67,2,'Tirane','TR',1),(68,2,'Vlore','VL',1),(69,3,'Adrar','ADR',1),(70,3,'Ain Defla','ADE',1),(71,3,'Ain Temouchent','ATE',1),(72,3,'Alger','ALG',1),(73,3,'Annaba','ANN',1),(74,3,'Batna','BAT',1),(75,3,'Bechar','BEC',1),(76,3,'Bejaia','BEJ',1),(77,3,'Biskra','BIS',1),(78,3,'Blida','BLI',1),(79,3,'Bordj Bou Arreridj','BBA',1),(80,3,'Bouira','BOA',1),(81,3,'Boumerdes','BMD',1),(82,3,'Chlef','CHL',1),(83,3,'Constantine','CON',1),(84,3,'Djelfa','DJE',1),(85,3,'El Bayadh','EBA',1),(86,3,'El Oued','EOU',1),(87,3,'El Tarf','ETA',1),(88,3,'Ghardaia','GHA',1),(89,3,'Guelma','GUE',1),(90,3,'Illizi','ILL',1),(91,3,'Jijel','JIJ',1),(92,3,'Khenchela','KHE',1),(93,3,'Laghouat','LAG',1),(94,3,'Muaskar','MUA',1),(95,3,'Medea','MED',1),(96,3,'Mila','MIL',1),(97,3,'Mostaganem','MOS',1),(98,3,'M\'Sila','MSI',1),(99,3,'Naama','NAA',1),(100,3,'Oran','ORA',1),(101,3,'Ouargla','OUA',1),(102,3,'Oum el-Bouaghi','OEB',1),(103,3,'Relizane','REL',1),(104,3,'Saida','SAI',1),(105,3,'Setif','SET',1),(106,3,'Sidi Bel Abbes','SBA',1),(107,3,'Skikda','SKI',1),(108,3,'Souk Ahras','SAH',1),(109,3,'Tamanghasset','TAM',1),(110,3,'Tebessa','TEB',1),(111,3,'Tiaret','TIA',1),(112,3,'Tindouf','TIN',1),(113,3,'Tipaza','TIP',1),(114,3,'Tissemsilt','TIS',1),(115,3,'Tizi Ouzou','TOU',1),(116,3,'Tlemcen','TLE',1),(117,4,'Eastern','E',1),(118,4,'Manu\'a','M',1),(119,4,'Rose Island','R',1),(120,4,'Swains Island','S',1),(121,4,'Western','W',1),(122,5,'Andorra la Vella','ALV',1),(123,5,'Canillo','CAN',1),(124,5,'Encamp','ENC',1),(125,5,'Escaldes-Engordany','ESE',1),(126,5,'La Massana','LMA',1),(127,5,'Ordino','ORD',1),(128,5,'Sant Julia de Loria','SJL',1),(129,6,'Bengo','BGO',1),(130,6,'Benguela','BGU',1),(131,6,'Bie','BIE',1),(132,6,'Cabinda','CAB',1),(133,6,'Cuando-Cubango','CCU',1),(134,6,'Cuanza Norte','CNO',1),(135,6,'Cuanza Sul','CUS',1),(136,6,'Cunene','CNN',1),(137,6,'Huambo','HUA',1),(138,6,'Huila','HUI',1),(139,6,'Luanda','LUA',1),(140,6,'Lunda Norte','LNO',1),(141,6,'Lunda Sul','LSU',1),(142,6,'Malange','MAL',1),(143,6,'Moxico','MOX',1),(144,6,'Namibe','NAM',1),(145,6,'Uige','UIG',1),(146,6,'Zaire','ZAI',1),(147,9,'Saint George','ASG',1),(148,9,'Saint John','ASJ',1),(149,9,'Saint Mary','ASM',1),(150,9,'Saint Paul','ASL',1),(151,9,'Saint Peter','ASR',1),(152,9,'Saint Philip','ASH',1),(153,9,'Barbuda','BAR',1),(154,9,'Redonda','RED',1),(155,10,'Antartida e Islas del Atlantico','AN',1),(156,10,'Buenos Aires','BA',1),(157,10,'Catamarca','CA',1),(158,10,'Chaco','CH',1),(159,10,'Chubut','CU',1),(160,10,'Cordoba','CO',1),(161,10,'Corrientes','CR',1),(162,10,'Distrito Federal','DF',1),(163,10,'Entre Rios','ER',1),(164,10,'Formosa','FO',1),(165,10,'Jujuy','JU',1),(166,10,'La Pampa','LP',1),(167,10,'La Rioja','LR',1),(168,10,'Mendoza','ME',1),(169,10,'Misiones','MI',1),(170,10,'Neuquen','NE',1),(171,10,'Rio Negro','RN',1),(172,10,'Salta','SA',1),(173,10,'San Juan','SJ',1),(174,10,'San Luis','SL',1),(175,10,'Santa Cruz','SC',1),(176,10,'Santa Fe','SF',1),(177,10,'Santiago del Estero','SD',1),(178,10,'Tierra del Fuego','TF',1),(179,10,'Tucuman','TU',1),(180,11,'Aragatsotn','AGT',1),(181,11,'Ararat','ARR',1),(182,11,'Armavir','ARM',1),(183,11,'Geghark\'unik\'','GEG',1),(184,11,'Kotayk\'','KOT',1),(185,11,'Lorri','LOR',1),(186,11,'Shirak','SHI',1),(187,11,'Syunik\'','SYU',1),(188,11,'Tavush','TAV',1),(189,11,'Vayots\' Dzor','VAY',1),(190,11,'Yerevan','YER',1),(191,13,'Australian Capital Territory','ACT',1),(192,13,'New South Wales','NSW',1),(193,13,'Northern Territory','NT',1),(194,13,'Queensland','QLD',1),(195,13,'South Australia','SA',1),(196,13,'Tasmania','TAS',1),(197,13,'Victoria','VIC',1),(198,13,'Western Australia','WA',1),(199,14,'Burgenland','BUR',1),(200,14,'Kärnten','KAR',1),(201,14,'Niederösterreich','NOS',1),(202,14,'Oberösterreich','OOS',1),(203,14,'Salzburg','SAL',1),(204,14,'Steiermark','STE',1),(205,14,'Tirol','TIR',1),(206,14,'Vorarlberg','VOR',1),(207,14,'Wien','WIE',1),(208,15,'Ali Bayramli','AB',1),(209,15,'Abseron','ABS',1),(210,15,'AgcabAdi','AGC',1),(211,15,'Agdam','AGM',1),(212,15,'Agdas','AGS',1),(213,15,'Agstafa','AGA',1),(214,15,'Agsu','AGU',1),(215,15,'Astara','AST',1),(216,15,'Baki','BA',1),(217,15,'BabAk','BAB',1),(218,15,'BalakAn','BAL',1),(219,15,'BArdA','BAR',1),(220,15,'Beylaqan','BEY',1),(221,15,'Bilasuvar','BIL',1),(222,15,'Cabrayil','CAB',1),(223,15,'Calilabab','CAL',1),(224,15,'Culfa','CUL',1),(225,15,'Daskasan','DAS',1),(226,15,'Davaci','DAV',1),(227,15,'Fuzuli','FUZ',1),(228,15,'Ganca','GA',1),(229,15,'Gadabay','GAD',1),(230,15,'Goranboy','GOR',1),(231,15,'Goycay','GOY',1),(232,15,'Haciqabul','HAC',1),(233,15,'Imisli','IMI',1),(234,15,'Ismayilli','ISM',1),(235,15,'Kalbacar','KAL',1),(236,15,'Kurdamir','KUR',1),(237,15,'Lankaran','LA',1),(238,15,'Lacin','LAC',1),(239,15,'Lankaran','LAN',1),(240,15,'Lerik','LER',1),(241,15,'Masalli','MAS',1),(242,15,'Mingacevir','MI',1),(243,15,'Naftalan','NA',1),(244,15,'Neftcala','NEF',1),(245,15,'Oguz','OGU',1),(246,15,'Ordubad','ORD',1),(247,15,'Qabala','QAB',1),(248,15,'Qax','QAX',1),(249,15,'Qazax','QAZ',1),(250,15,'Qobustan','QOB',1),(251,15,'Quba','QBA',1),(252,15,'Qubadli','QBI',1),(253,15,'Qusar','QUS',1),(254,15,'Saki','SA',1),(255,15,'Saatli','SAT',1),(256,15,'Sabirabad','SAB',1),(257,15,'Sadarak','SAD',1),(258,15,'Sahbuz','SAH',1),(259,15,'Saki','SAK',1),(260,15,'Salyan','SAL',1),(261,15,'Sumqayit','SM',1),(262,15,'Samaxi','SMI',1),(263,15,'Samkir','SKR',1),(264,15,'Samux','SMX',1),(265,15,'Sarur','SAR',1),(266,15,'Siyazan','SIY',1),(267,15,'Susa','SS',1),(268,15,'Susa','SUS',1),(269,15,'Tartar','TAR',1),(270,15,'Tovuz','TOV',1),(271,15,'Ucar','UCA',1),(272,15,'Xankandi','XA',1),(273,15,'Xacmaz','XAC',1),(274,15,'Xanlar','XAN',1),(275,15,'Xizi','XIZ',1),(276,15,'Xocali','XCI',1),(277,15,'Xocavand','XVD',1),(278,15,'Yardimli','YAR',1),(279,15,'Yevlax','YEV',1),(280,15,'Zangilan','ZAN',1),(281,15,'Zaqatala','ZAQ',1),(282,15,'Zardab','ZAR',1),(283,15,'Naxcivan','NX',1),(284,16,'Acklins','ACK',1),(285,16,'Berry Islands','BER',1),(286,16,'Bimini','BIM',1),(287,16,'Black Point','BLK',1),(288,16,'Cat Island','CAT',1),(289,16,'Central Abaco','CAB',1),(290,16,'Central Andros','CAN',1),(291,16,'Central Eleuthera','CEL',1),(292,16,'City of Freeport','FRE',1),(293,16,'Crooked Island','CRO',1),(294,16,'East Grand Bahama','EGB',1),(295,16,'Exuma','EXU',1),(296,16,'Grand Cay','GRD',1),(297,16,'Harbour Island','HAR',1),(298,16,'Hope Town','HOP',1),(299,16,'Inagua','INA',1),(300,16,'Long Island','LNG',1),(301,16,'Mangrove Cay','MAN',1),(302,16,'Mayaguana','MAY',1),(303,16,'Moore\'s Island','MOO',1),(304,16,'North Abaco','NAB',1),(305,16,'North Andros','NAN',1),(306,16,'North Eleuthera','NEL',1),(307,16,'Ragged Island','RAG',1),(308,16,'Rum Cay','RUM',1),(309,16,'San Salvador','SAL',1),(310,16,'South Abaco','SAB',1),(311,16,'South Andros','SAN',1),(312,16,'South Eleuthera','SEL',1),(313,16,'Spanish Wells','SWE',1),(314,16,'West Grand Bahama','WGB',1),(315,17,'Capital','CAP',1),(316,17,'Central','CEN',1),(317,17,'Muharraq','MUH',1),(318,17,'Northern','NOR',1),(319,17,'Southern','SOU',1),(320,18,'Barisal','BAR',1),(321,18,'Chittagong','CHI',1),(322,18,'Dhaka','DHA',1),(323,18,'Khulna','KHU',1),(324,18,'Rajshahi','RAJ',1),(325,18,'Sylhet','SYL',1),(326,19,'Christ Church','CC',1),(327,19,'Saint Andrew','AND',1),(328,19,'Saint George','GEO',1),(329,19,'Saint James','JAM',1),(330,19,'Saint John','JOH',1),(331,19,'Saint Joseph','JOS',1),(332,19,'Saint Lucy','LUC',1),(333,19,'Saint Michael','MIC',1),(334,19,'Saint Peter','PET',1),(335,19,'Saint Philip','PHI',1),(336,19,'Saint Thomas','THO',1),(337,20,'Brestskaya (Brest)','BR',1),(338,20,'Homyel\'skaya (Homyel\')','HO',1),(339,20,'Horad Minsk','HM',1),(340,20,'Hrodzyenskaya (Hrodna)','HR',1),(341,20,'Mahilyowskaya (Mahilyow)','MA',1),(342,20,'Minskaya','MI',1),(343,20,'Vitsyebskaya (Vitsyebsk)','VI',1),(344,21,'Antwerpen','VAN',1),(345,21,'Brabant Wallon','WBR',1),(346,21,'Hainaut','WHT',1),(347,21,'Liège','WLG',1),(348,21,'Limburg','VLI',1),(349,21,'Luxembourg','WLX',1),(350,21,'Namur','WNA',1),(351,21,'Oost-Vlaanderen','VOV',1),(352,21,'Vlaams Brabant','VBR',1),(353,21,'West-Vlaanderen','VWV',1),(354,22,'Belize','BZ',1),(355,22,'Cayo','CY',1),(356,22,'Corozal','CR',1),(357,22,'Orange Walk','OW',1),(358,22,'Stann Creek','SC',1),(359,22,'Toledo','TO',1),(360,23,'Alibori','AL',1),(361,23,'Atakora','AK',1),(362,23,'Atlantique','AQ',1),(363,23,'Borgou','BO',1),(364,23,'Collines','CO',1),(365,23,'Donga','DO',1),(366,23,'Kouffo','KO',1),(367,23,'Littoral','LI',1),(368,23,'Mono','MO',1),(369,23,'Oueme','OU',1),(370,23,'Plateau','PL',1),(371,23,'Zou','ZO',1),(372,24,'Devonshire','DS',1),(373,24,'Hamilton City','HC',1),(374,24,'Hamilton','HA',1),(375,24,'Paget','PG',1),(376,24,'Pembroke','PB',1),(377,24,'Saint George City','GC',1),(378,24,'Saint George\'s','SG',1),(379,24,'Sandys','SA',1),(380,24,'Smith\'s','SM',1),(381,24,'Southampton','SH',1),(382,24,'Warwick','WA',1),(383,25,'Bumthang','BUM',1),(384,25,'Chukha','CHU',1),(385,25,'Dagana','DAG',1),(386,25,'Gasa','GAS',1),(387,25,'Haa','HAA',1),(388,25,'Lhuntse','LHU',1),(389,25,'Mongar','MON',1),(390,25,'Paro','PAR',1),(391,25,'Pemagatshel','PEM',1),(392,25,'Punakha','PUN',1),(393,25,'Samdrup Jongkhar','SJO',1),(394,25,'Samtse','SAT',1),(395,25,'Sarpang','SAR',1),(396,25,'Thimphu','THI',1),(397,25,'Trashigang','TRG',1),(398,25,'Trashiyangste','TRY',1),(399,25,'Trongsa','TRO',1),(400,25,'Tsirang','TSI',1),(401,25,'Wangdue Phodrang','WPH',1),(402,25,'Zhemgang','ZHE',1),(403,26,'Beni','BEN',1),(404,26,'Chuquisaca','CHU',1),(405,26,'Cochabamba','COC',1),(406,26,'La Paz','LPZ',1),(407,26,'Oruro','ORU',1),(408,26,'Pando','PAN',1),(409,26,'Potosi','POT',1),(410,26,'Santa Cruz','SCZ',1),(411,26,'Tarija','TAR',1),(412,27,'Brcko district','BRO',1),(413,27,'Unsko-Sanski Kanton','FUS',1),(414,27,'Posavski Kanton','FPO',1),(415,27,'Tuzlanski Kanton','FTU',1),(416,27,'Zenicko-Dobojski Kanton','FZE',1),(417,27,'Bosanskopodrinjski Kanton','FBP',1),(418,27,'Srednjebosanski Kanton','FSB',1),(419,27,'Hercegovacko-neretvanski Kanton','FHN',1),(420,27,'Zapadnohercegovacka Zupanija','FZH',1),(421,27,'Kanton Sarajevo','FSA',1),(422,27,'Zapadnobosanska','FZA',1),(423,27,'Banja Luka','SBL',1),(424,27,'Doboj','SDO',1),(425,27,'Bijeljina','SBI',1),(426,27,'Vlasenica','SVL',1),(427,27,'Sarajevo-Romanija or Sokolac','SSR',1),(428,27,'Foca','SFO',1),(429,27,'Trebinje','STR',1),(430,28,'Central','CE',1),(431,28,'Ghanzi','GH',1),(432,28,'Kgalagadi','KD',1),(433,28,'Kgatleng','KT',1),(434,28,'Kweneng','KW',1),(435,28,'Ngamiland','NG',1),(436,28,'North East','NE',1),(437,28,'North West','NW',1),(438,28,'South East','SE',1),(439,28,'Southern','SO',1),(440,30,'Acre','AC',1),(441,30,'Alagoas','AL',1),(442,30,'Amapá','AP',1),(443,30,'Amazonas','AM',1),(444,30,'Bahia','BA',1),(445,30,'Ceará','CE',1),(446,30,'Distrito Federal','DF',1),(447,30,'Espírito Santo','ES',1),(448,30,'Goiás','GO',1),(449,30,'Maranhão','MA',1),(450,30,'Mato Grosso','MT',1),(451,30,'Mato Grosso do Sul','MS',1),(452,30,'Minas Gerais','MG',1),(453,30,'Pará','PA',1),(454,30,'Paraíba','PB',1),(455,30,'Paraná','PR',1),(456,30,'Pernambuco','PE',1),(457,30,'Piauí','PI',1),(458,30,'Rio de Janeiro','RJ',1),(459,30,'Rio Grande do Norte','RN',1),(460,30,'Rio Grande do Sul','RS',1),(461,30,'Rondônia','RO',1),(462,30,'Roraima','RR',1),(463,30,'Santa Catarina','SC',1),(464,30,'São Paulo','SP',1),(465,30,'Sergipe','SE',1),(466,30,'Tocantins','TO',1),(467,31,'Peros Banhos','PB',1),(468,31,'Salomon Islands','SI',1),(469,31,'Nelsons Island','NI',1),(470,31,'Three Brothers','TB',1),(471,31,'Eagle Islands','EA',1),(472,31,'Danger Island','DI',1),(473,31,'Egmont Islands','EG',1),(474,31,'Diego Garcia','DG',1),(475,32,'Belait','BEL',1),(476,32,'Brunei and Muara','BRM',1),(477,32,'Temburong','TEM',1),(478,32,'Tutong','TUT',1),(479,33,'Blagoevgrad','',1),(480,33,'Burgas','',1),(481,33,'Dobrich','',1),(482,33,'Gabrovo','',1),(483,33,'Haskovo','',1),(484,33,'Kardjali','',1),(485,33,'Kyustendil','',1),(486,33,'Lovech','',1),(487,33,'Montana','',1),(488,33,'Pazardjik','',1),(489,33,'Pernik','',1),(490,33,'Pleven','',1),(491,33,'Plovdiv','',1),(492,33,'Razgrad','',1),(493,33,'Shumen','',1),(494,33,'Silistra','',1),(495,33,'Sliven','',1),(496,33,'Smolyan','',1),(497,33,'Sofia','',1),(498,33,'Sofia - town','',1),(499,33,'Stara Zagora','',1),(500,33,'Targovishte','',1),(501,33,'Varna','',1),(502,33,'Veliko Tarnovo','',1),(503,33,'Vidin','',1),(504,33,'Vratza','',1),(505,33,'Yambol','',1),(506,34,'Bale','BAL',1),(507,34,'Bam','BAM',1),(508,34,'Banwa','BAN',1),(509,34,'Bazega','BAZ',1),(510,34,'Bougouriba','BOR',1),(511,34,'Boulgou','BLG',1),(512,34,'Boulkiemde','BOK',1),(513,34,'Comoe','COM',1),(514,34,'Ganzourgou','GAN',1),(515,34,'Gnagna','GNA',1),(516,34,'Gourma','GOU',1),(517,34,'Houet','HOU',1),(518,34,'Ioba','IOA',1),(519,34,'Kadiogo','KAD',1),(520,34,'Kenedougou','KEN',1),(521,34,'Komondjari','KOD',1),(522,34,'Kompienga','KOP',1),(523,34,'Kossi','KOS',1),(524,34,'Koulpelogo','KOL',1),(525,34,'Kouritenga','KOT',1),(526,34,'Kourweogo','KOW',1),(527,34,'Leraba','LER',1),(528,34,'Loroum','LOR',1),(529,34,'Mouhoun','MOU',1),(530,34,'Nahouri','NAH',1),(531,34,'Namentenga','NAM',1),(532,34,'Nayala','NAY',1),(533,34,'Noumbiel','NOU',1),(534,34,'Oubritenga','OUB',1),(535,34,'Oudalan','OUD',1),(536,34,'Passore','PAS',1),(537,34,'Poni','PON',1),(538,34,'Sanguie','SAG',1),(539,34,'Sanmatenga','SAM',1),(540,34,'Seno','SEN',1),(541,34,'Sissili','SIS',1),(542,34,'Soum','SOM',1),(543,34,'Sourou','SOR',1),(544,34,'Tapoa','TAP',1),(545,34,'Tuy','TUY',1),(546,34,'Yagha','YAG',1),(547,34,'Yatenga','YAT',1),(548,34,'Ziro','ZIR',1),(549,34,'Zondoma','ZOD',1),(550,34,'Zoundweogo','ZOW',1),(551,35,'Bubanza','BB',1),(552,35,'Bujumbura','BJ',1),(553,35,'Bururi','BR',1),(554,35,'Cankuzo','CA',1),(555,35,'Cibitoke','CI',1),(556,35,'Gitega','GI',1),(557,35,'Karuzi','KR',1),(558,35,'Kayanza','KY',1),(559,35,'Kirundo','KI',1),(560,35,'Makamba','MA',1),(561,35,'Muramvya','MU',1),(562,35,'Muyinga','MY',1),(563,35,'Mwaro','MW',1),(564,35,'Ngozi','NG',1),(565,35,'Rutana','RT',1),(566,35,'Ruyigi','RY',1),(567,36,'Phnom Penh','PP',1),(568,36,'Preah Seihanu (Kompong Som or Sihanoukville)','PS',1),(569,36,'Pailin','PA',1),(570,36,'Keb','KB',1),(571,36,'Banteay Meanchey','BM',1),(572,36,'Battambang','BA',1),(573,36,'Kampong Cham','KM',1),(574,36,'Kampong Chhnang','KN',1),(575,36,'Kampong Speu','KU',1),(576,36,'Kampong Som','KO',1),(577,36,'Kampong Thom','KT',1),(578,36,'Kampot','KP',1),(579,36,'Kandal','KL',1),(580,36,'Kaoh Kong','KK',1),(581,36,'Kratie','KR',1),(582,36,'Mondul Kiri','MK',1),(583,36,'Oddar Meancheay','OM',1),(584,36,'Pursat','PU',1),(585,36,'Preah Vihear','PR',1),(586,36,'Prey Veng','PG',1),(587,36,'Ratanak Kiri','RK',1),(588,36,'Siemreap','SI',1),(589,36,'Stung Treng','ST',1),(590,36,'Svay Rieng','SR',1),(591,36,'Takeo','TK',1),(592,37,'Adamawa (Adamaoua)','ADA',1),(593,37,'Centre','CEN',1),(594,37,'East (Est)','EST',1),(595,37,'Extreme North (Extreme-Nord)','EXN',1),(596,37,'Littoral','LIT',1),(597,37,'North (Nord)','NOR',1),(598,37,'Northwest (Nord-Ouest)','NOT',1),(599,37,'West (Ouest)','OUE',1),(600,37,'South (Sud)','SUD',1),(601,37,'Southwest (Sud-Ouest).','SOU',1),(602,38,'Alberta','AB',1),(603,38,'British Columbia','BC',1),(604,38,'Manitoba','MB',1),(605,38,'New Brunswick','NB',1),(606,38,'Newfoundland and Labrador','NL',1),(607,38,'Northwest Territories','NT',1),(608,38,'Nova Scotia','NS',1),(609,38,'Nunavut','NU',1),(610,38,'Ontario','ON',1),(611,38,'Prince Edward Island','PE',1),(612,38,'Qu&eacute;bec','QC',1),(613,38,'Saskatchewan','SK',1),(614,38,'Yukon Territory','YT',1),(615,39,'Boa Vista','BV',1),(616,39,'Brava','BR',1),(617,39,'Calheta de Sao Miguel','CS',1),(618,39,'Maio','MA',1),(619,39,'Mosteiros','MO',1),(620,39,'Paul','PA',1),(621,39,'Porto Novo','PN',1),(622,39,'Praia','PR',1),(623,39,'Ribeira Grande','RG',1),(624,39,'Sal','SL',1),(625,39,'Santa Catarina','CA',1),(626,39,'Santa Cruz','CR',1),(627,39,'Sao Domingos','SD',1),(628,39,'Sao Filipe','SF',1),(629,39,'Sao Nicolau','SN',1),(630,39,'Sao Vicente','SV',1),(631,39,'Tarrafal','TA',1),(632,40,'Creek','CR',1),(633,40,'Eastern','EA',1),(634,40,'Midland','ML',1),(635,40,'South Town','ST',1),(636,40,'Spot Bay','SP',1),(637,40,'Stake Bay','SK',1),(638,40,'West End','WD',1),(639,40,'Western','WN',1),(640,41,'Bamingui-Bangoran','BBA',1),(641,41,'Basse-Kotto','BKO',1),(642,41,'Haute-Kotto','HKO',1),(643,41,'Haut-Mbomou','HMB',1),(644,41,'Kemo','KEM',1),(645,41,'Lobaye','LOB',1),(646,41,'Mambere-KadeÔ','MKD',1),(647,41,'Mbomou','MBO',1),(648,41,'Nana-Mambere','NMM',1),(649,41,'Ombella-M\'Poko','OMP',1),(650,41,'Ouaka','OUK',1),(651,41,'Ouham','OUH',1),(652,41,'Ouham-Pende','OPE',1),(653,41,'Vakaga','VAK',1),(654,41,'Nana-Grebizi','NGR',1),(655,41,'Sangha-Mbaere','SMB',1),(656,41,'Bangui','BAN',1),(657,42,'Batha','BA',1),(658,42,'Biltine','BI',1),(659,42,'Borkou-Ennedi-Tibesti','BE',1),(660,42,'Chari-Baguirmi','CB',1),(661,42,'Guera','GU',1),(662,42,'Kanem','KA',1),(663,42,'Lac','LA',1),(664,42,'Logone Occidental','LC',1),(665,42,'Logone Oriental','LR',1),(666,42,'Mayo-Kebbi','MK',1),(667,42,'Moyen-Chari','MC',1),(668,42,'Ouaddai','OU',1),(669,42,'Salamat','SA',1),(670,42,'Tandjile','TA',1),(671,43,'Aisen del General Carlos Ibanez','AI',1),(672,43,'Antofagasta','AN',1),(673,43,'Araucania','AR',1),(674,43,'Atacama','AT',1),(675,43,'Bio-Bio','BI',1),(676,43,'Coquimbo','CO',1),(677,43,'Libertador General Bernardo O\'Higgins','LI',1),(678,43,'Los Lagos','LL',1),(679,43,'Magallanes y de la Antartica Chilena','MA',1),(680,43,'Maule','ML',1),(681,43,'Region Metropolitana','RM',1),(682,43,'Tarapaca','TA',1),(683,43,'Valparaiso','VS',1),(684,44,'Anhui','AN',1),(685,44,'Beijing','BE',1),(686,44,'Chongqing','CH',1),(687,44,'Fujian','FU',1),(688,44,'Gansu','GA',1),(689,44,'Guangdong','GU',1),(690,44,'Guangxi','GX',1),(691,44,'Guizhou','GZ',1),(692,44,'Hainan','HA',1),(693,44,'Hebei','HB',1),(694,44,'Heilongjiang','HL',1),(695,44,'Henan','HE',1),(696,44,'Hong Kong','HK',1),(697,44,'Hubei','HU',1),(698,44,'Hunan','HN',1),(699,44,'Inner Mongolia','IM',1),(700,44,'Jiangsu','JI',1),(701,44,'Jiangxi','JX',1),(702,44,'Jilin','JL',1),(703,44,'Liaoning','LI',1),(704,44,'Macau','MA',1),(705,44,'Ningxia','NI',1),(706,44,'Shaanxi','SH',1),(707,44,'Shandong','SA',1),(708,44,'Shanghai','SG',1),(709,44,'Shanxi','SX',1),(710,44,'Sichuan','SI',1),(711,44,'Tianjin','TI',1),(712,44,'Xinjiang','XI',1),(713,44,'Yunnan','YU',1),(714,44,'Zhejiang','ZH',1),(715,46,'Direction Island','D',1),(716,46,'Home Island','H',1),(717,46,'Horsburgh Island','O',1),(718,46,'South Island','S',1),(719,46,'West Island','W',1),(720,47,'Amazonas','AMZ',1),(721,47,'Antioquia','ANT',1),(722,47,'Arauca','ARA',1),(723,47,'Atlantico','ATL',1),(724,47,'Bogota D.C.','BDC',1),(725,47,'Bolivar','BOL',1),(726,47,'Boyaca','BOY',1),(727,47,'Caldas','CAL',1),(728,47,'Caqueta','CAQ',1),(729,47,'Casanare','CAS',1),(730,47,'Cauca','CAU',1),(731,47,'Cesar','CES',1),(732,47,'Choco','CHO',1),(733,47,'Cordoba','COR',1),(734,47,'Cundinamarca','CAM',1),(735,47,'Guainia','GNA',1),(736,47,'Guajira','GJR',1),(737,47,'Guaviare','GVR',1),(738,47,'Huila','HUI',1),(739,47,'Magdalena','MAG',1),(740,47,'Meta','MET',1),(741,47,'Narino','NAR',1),(742,47,'Norte de Santander','NDS',1),(743,47,'Putumayo','PUT',1),(744,47,'Quindio','QUI',1),(745,47,'Risaralda','RIS',1),(746,47,'San Andres y Providencia','SAP',1),(747,47,'Santander','SAN',1),(748,47,'Sucre','SUC',1),(749,47,'Tolima','TOL',1),(750,47,'Valle del Cauca','VDC',1),(751,47,'Vaupes','VAU',1),(752,47,'Vichada','VIC',1),(753,48,'Grande Comore','G',1),(754,48,'Anjouan','A',1),(755,48,'Moheli','M',1),(756,49,'Bouenza','BO',1),(757,49,'Brazzaville','BR',1),(758,49,'Cuvette','CU',1),(759,49,'Cuvette-Ouest','CO',1),(760,49,'Kouilou','KO',1),(761,49,'Lekoumou','LE',1),(762,49,'Likouala','LI',1),(763,49,'Niari','NI',1),(764,49,'Plateaux','PL',1),(765,49,'Pool','PO',1),(766,49,'Sangha','SA',1),(767,50,'Pukapuka','PU',1),(768,50,'Rakahanga','RK',1),(769,50,'Manihiki','MK',1),(770,50,'Penrhyn','PE',1),(771,50,'Nassau Island','NI',1),(772,50,'Surwarrow','SU',1),(773,50,'Palmerston','PA',1),(774,50,'Aitutaki','AI',1),(775,50,'Manuae','MA',1),(776,50,'Takutea','TA',1),(777,50,'Mitiaro','MT',1),(778,50,'Atiu','AT',1),(779,50,'Mauke','MU',1),(780,50,'Rarotonga','RR',1),(781,50,'Mangaia','MG',1),(782,51,'Alajuela','AL',1),(783,51,'Cartago','CA',1),(784,51,'Guanacaste','GU',1),(785,51,'Heredia','HE',1),(786,51,'Limon','LI',1),(787,51,'Puntarenas','PU',1),(788,51,'San Jose','SJ',1),(789,52,'Abengourou','ABE',1),(790,52,'Abidjan','ABI',1),(791,52,'Aboisso','ABO',1),(792,52,'Adiake','ADI',1),(793,52,'Adzope','ADZ',1),(794,52,'Agboville','AGB',1),(795,52,'Agnibilekrou','AGN',1),(796,52,'Alepe','ALE',1),(797,52,'Bocanda','BOC',1),(798,52,'Bangolo','BAN',1),(799,52,'Beoumi','BEO',1),(800,52,'Biankouma','BIA',1),(801,52,'Bondoukou','BDK',1),(802,52,'Bongouanou','BGN',1),(803,52,'Bouafle','BFL',1),(804,52,'Bouake','BKE',1),(805,52,'Bouna','BNA',1),(806,52,'Boundiali','BDL',1),(807,52,'Dabakala','DKL',1),(808,52,'Dabou','DBU',1),(809,52,'Daloa','DAL',1),(810,52,'Danane','DAN',1),(811,52,'Daoukro','DAO',1),(812,52,'Dimbokro','DIM',1),(813,52,'Divo','DIV',1),(814,52,'Duekoue','DUE',1),(815,52,'Ferkessedougou','FER',1),(816,52,'Gagnoa','GAG',1),(817,52,'Grand-Bassam','GBA',1),(818,52,'Grand-Lahou','GLA',1),(819,52,'Guiglo','GUI',1),(820,52,'Issia','ISS',1),(821,52,'Jacqueville','JAC',1),(822,52,'Katiola','KAT',1),(823,52,'Korhogo','KOR',1),(824,52,'Lakota','LAK',1),(825,52,'Man','MAN',1),(826,52,'Mankono','MKN',1),(827,52,'Mbahiakro','MBA',1),(828,52,'Odienne','ODI',1),(829,52,'Oume','OUM',1),(830,52,'Sakassou','SAK',1),(831,52,'San-Pedro','SPE',1),(832,52,'Sassandra','SAS',1),(833,52,'Seguela','SEG',1),(834,52,'Sinfra','SIN',1),(835,52,'Soubre','SOU',1),(836,52,'Tabou','TAB',1),(837,52,'Tanda','TAN',1),(838,52,'Tiebissou','TIE',1),(839,52,'Tingrela','TIN',1),(840,52,'Tiassale','TIA',1),(841,52,'Touba','TBA',1),(842,52,'Toulepleu','TLP',1),(843,52,'Toumodi','TMD',1),(844,52,'Vavoua','VAV',1),(845,52,'Yamoussoukro','YAM',1),(846,52,'Zuenoula','ZUE',1),(847,53,'Bjelovarsko-bilogorska','BB',1),(848,53,'Grad Zagreb','GZ',1),(849,53,'Dubrovačko-neretvanska','DN',1),(850,53,'Istarska','IS',1),(851,53,'Karlovačka','KA',1),(852,53,'Koprivničko-križevačka','KK',1),(853,53,'Krapinsko-zagorska','KZ',1),(854,53,'Ličko-senjska','LS',1),(855,53,'Međimurska','ME',1),(856,53,'Osječko-baranjska','OB',1),(857,53,'Požeško-slavonska','PS',1),(858,53,'Primorsko-goranska','PG',1),(859,53,'Šibensko-kninska','SK',1),(860,53,'Sisačko-moslavačka','SM',1),(861,53,'Brodsko-posavska','BP',1),(862,53,'Splitsko-dalmatinska','SD',1),(863,53,'Varaždinska','VA',1),(864,53,'Virovitičko-podravska','VP',1),(865,53,'Vukovarsko-srijemska','VS',1),(866,53,'Zadarska','ZA',1),(867,53,'Zagrebačka','ZG',1),(868,54,'Camaguey','CA',1),(869,54,'Ciego de Avila','CD',1),(870,54,'Cienfuegos','CI',1),(871,54,'Ciudad de La Habana','CH',1),(872,54,'Granma','GR',1),(873,54,'Guantanamo','GU',1),(874,54,'Holguin','HO',1),(875,54,'Isla de la Juventud','IJ',1),(876,54,'La Habana','LH',1),(877,54,'Las Tunas','LT',1),(878,54,'Matanzas','MA',1),(879,54,'Pinar del Rio','PR',1),(880,54,'Sancti Spiritus','SS',1),(881,54,'Santiago de Cuba','SC',1),(882,54,'Villa Clara','VC',1),(883,55,'Famagusta','F',1),(884,55,'Kyrenia','K',1),(885,55,'Larnaca','A',1),(886,55,'Limassol','I',1),(887,55,'Nicosia','N',1),(888,55,'Paphos','P',1),(889,56,'Ústecký','U',1),(890,56,'Jihočeský','C',1),(891,56,'Jihomoravský','B',1),(892,56,'Karlovarský','K',1),(893,56,'Královehradecký','H',1),(894,56,'Liberecký','L',1),(895,56,'Moravskoslezský','T',1),(896,56,'Olomoucký','M',1),(897,56,'Pardubický','E',1),(898,56,'Plzeňský','P',1),(899,56,'Praha','A',1),(900,56,'Středočeský','S',1),(901,56,'Vysočina','J',1),(902,56,'Zlínský','Z',1),(903,57,'Arhus','AR',1),(904,57,'Bornholm','BH',1),(905,57,'Copenhagen','CO',1),(906,57,'Faroe Islands','FO',1),(907,57,'Frederiksborg','FR',1),(908,57,'Fyn','FY',1),(909,57,'Kobenhavn','KO',1),(910,57,'Nordjylland','NO',1),(911,57,'Ribe','RI',1),(912,57,'Ringkobing','RK',1),(913,57,'Roskilde','RO',1),(914,57,'Sonderjylland','SO',1),(915,57,'Storstrom','ST',1),(916,57,'Vejle','VK',1),(917,57,'Vestj&aelig;lland','VJ',1),(918,57,'Viborg','VB',1),(919,58,'\'Ali Sabih','S',1),(920,58,'Dikhil','K',1),(921,58,'Djibouti','J',1),(922,58,'Obock','O',1),(923,58,'Tadjoura','T',1),(924,59,'Saint Andrew Parish','AND',1),(925,59,'Saint David Parish','DAV',1),(926,59,'Saint George Parish','GEO',1),(927,59,'Saint John Parish','JOH',1),(928,59,'Saint Joseph Parish','JOS',1),(929,59,'Saint Luke Parish','LUK',1),(930,59,'Saint Mark Parish','MAR',1),(931,59,'Saint Patrick Parish','PAT',1),(932,59,'Saint Paul Parish','PAU',1),(933,59,'Saint Peter Parish','PET',1),(934,60,'Distrito Nacional','DN',1),(935,60,'Azua','AZ',1),(936,60,'Baoruco','BC',1),(937,60,'Barahona','BH',1),(938,60,'Dajabon','DJ',1),(939,60,'Duarte','DU',1),(940,60,'Elias Pina','EL',1),(941,60,'El Seybo','SY',1),(942,60,'Espaillat','ET',1),(943,60,'Hato Mayor','HM',1),(944,60,'Independencia','IN',1),(945,60,'La Altagracia','AL',1),(946,60,'La Romana','RO',1),(947,60,'La Vega','VE',1),(948,60,'Maria Trinidad Sanchez','MT',1),(949,60,'Monsenor Nouel','MN',1),(950,60,'Monte Cristi','MC',1),(951,60,'Monte Plata','MP',1),(952,60,'Pedernales','PD',1),(953,60,'Peravia (Bani)','PR',1),(954,60,'Puerto Plata','PP',1),(955,60,'Salcedo','SL',1),(956,60,'Samana','SM',1),(957,60,'Sanchez Ramirez','SH',1),(958,60,'San Cristobal','SC',1),(959,60,'San Jose de Ocoa','JO',1),(960,60,'San Juan','SJ',1),(961,60,'San Pedro de Macoris','PM',1),(962,60,'Santiago','SA',1),(963,60,'Santiago Rodriguez','ST',1),(964,60,'Santo Domingo','SD',1),(965,60,'Valverde','VA',1),(966,61,'Aileu','AL',1),(967,61,'Ainaro','AN',1),(968,61,'Baucau','BA',1),(969,61,'Bobonaro','BO',1),(970,61,'Cova Lima','CO',1),(971,61,'Dili','DI',1),(972,61,'Ermera','ER',1),(973,61,'Lautem','LA',1),(974,61,'Liquica','LI',1),(975,61,'Manatuto','MT',1),(976,61,'Manufahi','MF',1),(977,61,'Oecussi','OE',1),(978,61,'Viqueque','VI',1),(979,62,'Azuay','AZU',1),(980,62,'Bolivar','BOL',1),(981,62,'Ca&ntilde;ar','CAN',1),(982,62,'Carchi','CAR',1),(983,62,'Chimborazo','CHI',1),(984,62,'Cotopaxi','COT',1),(985,62,'El Oro','EOR',1),(986,62,'Esmeraldas','ESM',1),(987,62,'Gal&aacute;pagos','GPS',1),(988,62,'Guayas','GUA',1),(989,62,'Imbabura','IMB',1),(990,62,'Loja','LOJ',1),(991,62,'Los Rios','LRO',1),(992,62,'Manab&iacute;','MAN',1),(993,62,'Morona Santiago','MSA',1),(994,62,'Napo','NAP',1),(995,62,'Orellana','ORE',1),(996,62,'Pastaza','PAS',1),(997,62,'Pichincha','PIC',1),(998,62,'Sucumb&iacute;os','SUC',1),(999,62,'Tungurahua','TUN',1),(1000,62,'Zamora Chinchipe','ZCH',1),(1001,63,'Ad Daqahliyah','DHY',1),(1002,63,'Al Bahr al Ahmar','BAM',1),(1003,63,'Al Buhayrah','BHY',1),(1004,63,'Al Fayyum','FYM',1),(1005,63,'Al Gharbiyah','GBY',1),(1006,63,'Al Iskandariyah','IDR',1),(1007,63,'Al Isma\'iliyah','IML',1),(1008,63,'Al Jizah','JZH',1),(1009,63,'Al Minufiyah','MFY',1),(1010,63,'Al Minya','MNY',1),(1011,63,'Al Qahirah','QHR',1),(1012,63,'Al Qalyubiyah','QLY',1),(1013,63,'Al Wadi al Jadid','WJD',1),(1014,63,'Ash Sharqiyah','SHQ',1),(1015,63,'As Suways','SWY',1),(1016,63,'Aswan','ASW',1),(1017,63,'Asyut','ASY',1),(1018,63,'Bani Suwayf','BSW',1),(1019,63,'Bur Sa\'id','BSD',1),(1020,63,'Dumyat','DMY',1),(1021,63,'Janub Sina\'','JNS',1),(1022,63,'Kafr ash Shaykh','KSH',1),(1023,63,'Matruh','MAT',1),(1024,63,'Qina','QIN',1),(1025,63,'Shamal Sina\'','SHS',1),(1026,63,'Suhaj','SUH',1),(1027,64,'Ahuachapan','AH',1),(1028,64,'Cabanas','CA',1),(1029,64,'Chalatenango','CH',1),(1030,64,'Cuscatlan','CU',1),(1031,64,'La Libertad','LB',1),(1032,64,'La Paz','PZ',1),(1033,64,'La Union','UN',1),(1034,64,'Morazan','MO',1),(1035,64,'San Miguel','SM',1),(1036,64,'San Salvador','SS',1),(1037,64,'San Vicente','SV',1),(1038,64,'Santa Ana','SA',1),(1039,64,'Sonsonate','SO',1),(1040,64,'Usulutan','US',1),(1041,65,'Provincia Annobon','AN',1),(1042,65,'Provincia Bioko Norte','BN',1),(1043,65,'Provincia Bioko Sur','BS',1),(1044,65,'Provincia Centro Sur','CS',1),(1045,65,'Provincia Kie-Ntem','KN',1),(1046,65,'Provincia Litoral','LI',1),(1047,65,'Provincia Wele-Nzas','WN',1),(1048,66,'Central (Maekel)','MA',1),(1049,66,'Anseba (Keren)','KE',1),(1050,66,'Southern Red Sea (Debub-Keih-Bahri)','DK',1),(1051,66,'Northern Red Sea (Semien-Keih-Bahri)','SK',1),(1052,66,'Southern (Debub)','DE',1),(1053,66,'Gash-Barka (Barentu)','BR',1),(1054,67,'Harjumaa (Tallinn)','HA',1),(1055,67,'Hiiumaa (Kardla)','HI',1),(1056,67,'Ida-Virumaa (Johvi)','IV',1),(1057,67,'Jarvamaa (Paide)','JA',1),(1058,67,'Jogevamaa (Jogeva)','JO',1),(1059,67,'Laane-Virumaa (Rakvere)','LV',1),(1060,67,'Laanemaa (Haapsalu)','LA',1),(1061,67,'Parnumaa (Parnu)','PA',1),(1062,67,'Polvamaa (Polva)','PO',1),(1063,67,'Raplamaa (Rapla)','RA',1),(1064,67,'Saaremaa (Kuessaare)','SA',1),(1065,67,'Tartumaa (Tartu)','TA',1),(1066,67,'Valgamaa (Valga)','VA',1),(1067,67,'Viljandimaa (Viljandi)','VI',1),(1068,67,'Vorumaa (Voru)','VO',1),(1069,68,'Afar','AF',1),(1070,68,'Amhara','AH',1),(1071,68,'Benishangul-Gumaz','BG',1),(1072,68,'Gambela','GB',1),(1073,68,'Hariai','HR',1),(1074,68,'Oromia','OR',1),(1075,68,'Somali','SM',1),(1076,68,'Southern Nations - Nationalities and Peoples Region','SN',1),(1077,68,'Tigray','TG',1),(1078,68,'Addis Ababa','AA',1),(1079,68,'Dire Dawa','DD',1),(1080,71,'Central Division','C',1),(1081,71,'Northern Division','N',1),(1082,71,'Eastern Division','E',1),(1083,71,'Western Division','W',1),(1084,71,'Rotuma','R',1),(1085,72,'Ahvenanmaan lääni','AL',1),(1086,72,'Etelä-Suomen lääni','ES',1),(1087,72,'Itä-Suomen lääni','IS',1),(1088,72,'Länsi-Suomen lääni','LS',1),(1089,72,'Lapin lääni','LA',1),(1090,72,'Oulun lääni','OU',1),(1114,74,'Ain','01',1),(1115,74,'Aisne','02',1),(1116,74,'Allier','03',1),(1117,74,'Alpes de Haute Provence','04',1),(1118,74,'Hautes-Alpes','05',1),(1119,74,'Alpes Maritimes','06',1),(1120,74,'Ard&egrave;che','07',1),(1121,74,'Ardennes','08',1),(1122,74,'Ari&egrave;ge','09',1),(1123,74,'Aube','10',1),(1124,74,'Aude','11',1),(1125,74,'Aveyron','12',1),(1126,74,'Bouches du Rh&ocirc;ne','13',1),(1127,74,'Calvados','14',1),(1128,74,'Cantal','15',1),(1129,74,'Charente','16',1),(1130,74,'Charente Maritime','17',1),(1131,74,'Cher','18',1),(1132,74,'Corr&egrave;ze','19',1),(1133,74,'Corse du Sud','2A',1),(1134,74,'Haute Corse','2B',1),(1135,74,'C&ocirc;te d&#039;or','21',1),(1136,74,'C&ocirc;tes d&#039;Armor','22',1),(1137,74,'Creuse','23',1),(1138,74,'Dordogne','24',1),(1139,74,'Doubs','25',1),(1140,74,'Dr&ocirc;me','26',1),(1141,74,'Eure','27',1),(1142,74,'Eure et Loir','28',1),(1143,74,'Finist&egrave;re','29',1),(1144,74,'Gard','30',1),(1145,74,'Haute Garonne','31',1),(1146,74,'Gers','32',1),(1147,74,'Gironde','33',1),(1148,74,'H&eacute;rault','34',1),(1149,74,'Ille et Vilaine','35',1),(1150,74,'Indre','36',1),(1151,74,'Indre et Loire','37',1),(1152,74,'Is&eacute;re','38',1),(1153,74,'Jura','39',1),(1154,74,'Landes','40',1),(1155,74,'Loir et Cher','41',1),(1156,74,'Loire','42',1),(1157,74,'Haute Loire','43',1),(1158,74,'Loire Atlantique','44',1),(1159,74,'Loiret','45',1),(1160,74,'Lot','46',1),(1161,74,'Lot et Garonne','47',1),(1162,74,'Loz&egrave;re','48',1),(1163,74,'Maine et Loire','49',1),(1164,74,'Manche','50',1),(1165,74,'Marne','51',1),(1166,74,'Haute Marne','52',1),(1167,74,'Mayenne','53',1),(1168,74,'Meurthe et Moselle','54',1),(1169,74,'Meuse','55',1),(1170,74,'Morbihan','56',1),(1171,74,'Moselle','57',1),(1172,74,'Ni&egrave;vre','58',1),(1173,74,'Nord','59',1),(1174,74,'Oise','60',1),(1175,74,'Orne','61',1),(1176,74,'Pas de Calais','62',1),(1177,74,'Puy de D&ocirc;me','63',1),(1178,74,'Pyr&eacute;n&eacute;es Atlantiques','64',1),(1179,74,'Hautes Pyr&eacute;n&eacute;es','65',1),(1180,74,'Pyr&eacute;n&eacute;es Orientales','66',1),(1181,74,'Bas Rhin','67',1),(1182,74,'Haut Rhin','68',1),(1183,74,'Rh&ocirc;ne','69',1),(1184,74,'Haute Sa&ocirc;ne','70',1),(1185,74,'Sa&ocirc;ne et Loire','71',1),(1186,74,'Sarthe','72',1),(1187,74,'Savoie','73',1),(1188,74,'Haute Savoie','74',1),(1189,74,'Paris','75',1),(1190,74,'Seine Maritime','76',1),(1191,74,'Seine et Marne','77',1),(1192,74,'Yvelines','78',1),(1193,74,'Deux S&egrave;vres','79',1),(1194,74,'Somme','80',1),(1195,74,'Tarn','81',1),(1196,74,'Tarn et Garonne','82',1),(1197,74,'Var','83',1),(1198,74,'Vaucluse','84',1),(1199,74,'Vend&eacute;e','85',1),(1200,74,'Vienne','86',1),(1201,74,'Haute Vienne','87',1),(1202,74,'Vosges','88',1),(1203,74,'Yonne','89',1),(1204,74,'Territoire de Belfort','90',1),(1205,74,'Essonne','91',1),(1206,74,'Hauts de Seine','92',1),(1207,74,'Seine St-Denis','93',1),(1208,74,'Val de Marne','94',1),(1209,74,'Val d\'Oise','95',1),(1210,76,'Archipel des Marquises','M',1),(1211,76,'Archipel des Tuamotu','T',1),(1212,76,'Archipel des Tubuai','I',1),(1213,76,'Iles du Vent','V',1),(1214,76,'Iles Sous-le-Vent','S',1),(1215,77,'Iles Crozet','C',1),(1216,77,'Iles Kerguelen','K',1),(1217,77,'Ile Amsterdam','A',1),(1218,77,'Ile Saint-Paul','P',1),(1219,77,'Adelie Land','D',1),(1220,78,'Estuaire','ES',1),(1221,78,'Haut-Ogooue','HO',1),(1222,78,'Moyen-Ogooue','MO',1),(1223,78,'Ngounie','NG',1),(1224,78,'Nyanga','NY',1),(1225,78,'Ogooue-Ivindo','OI',1),(1226,78,'Ogooue-Lolo','OL',1),(1227,78,'Ogooue-Maritime','OM',1),(1228,78,'Woleu-Ntem','WN',1),(1229,79,'Banjul','BJ',1),(1230,79,'Basse','BS',1),(1231,79,'Brikama','BR',1),(1232,79,'Janjangbure','JA',1),(1233,79,'Kanifeng','KA',1),(1234,79,'Kerewan','KE',1),(1235,79,'Kuntaur','KU',1),(1236,79,'Mansakonko','MA',1),(1237,79,'Lower River','LR',1),(1238,79,'Central River','CR',1),(1239,79,'North Bank','NB',1),(1240,79,'Upper River','UR',1),(1241,79,'Western','WE',1),(1242,80,'Abkhazia','AB',1),(1243,80,'Ajaria','AJ',1),(1244,80,'Tbilisi','TB',1),(1245,80,'Guria','GU',1),(1246,80,'Imereti','IM',1),(1247,80,'Kakheti','KA',1),(1248,80,'Kvemo Kartli','KK',1),(1249,80,'Mtskheta-Mtianeti','MM',1),(1250,80,'Racha Lechkhumi and Kvemo Svanet','RL',1),(1251,80,'Samegrelo-Zemo Svaneti','SZ',1),(1252,80,'Samtskhe-Javakheti','SJ',1),(1253,80,'Shida Kartli','SK',1),(1254,81,'Baden-Württemberg','BAW',1),(1255,81,'Bayern','BAY',1),(1256,81,'Berlin','BER',1),(1257,81,'Brandenburg','BRG',1),(1258,81,'Bremen','BRE',1),(1259,81,'Hamburg','HAM',1),(1260,81,'Hessen','HES',1),(1261,81,'Mecklenburg-Vorpommern','MEC',1),(1262,81,'Niedersachsen','NDS',1),(1263,81,'Nordrhein-Westfalen','NRW',1),(1264,81,'Rheinland-Pfalz','RHE',1),(1265,81,'Saarland','SAR',1),(1266,81,'Sachsen','SAS',1),(1267,81,'Sachsen-Anhalt','SAC',1),(1268,81,'Schleswig-Holstein','SCN',1),(1269,81,'Thüringen','THE',1),(1270,82,'Ashanti Region','AS',1),(1271,82,'Brong-Ahafo Region','BA',1),(1272,82,'Central Region','CE',1),(1273,82,'Eastern Region','EA',1),(1274,82,'Greater Accra Region','GA',1),(1275,82,'Northern Region','NO',1),(1276,82,'Upper East Region','UE',1),(1277,82,'Upper West Region','UW',1),(1278,82,'Volta Region','VO',1),(1279,82,'Western Region','WE',1),(1280,84,'Attica','AT',1),(1281,84,'Central Greece','CN',1),(1282,84,'Central Macedonia','CM',1),(1283,84,'Crete','CR',1),(1284,84,'East Macedonia and Thrace','EM',1),(1285,84,'Epirus','EP',1),(1286,84,'Ionian Islands','II',1),(1287,84,'North Aegean','NA',1),(1288,84,'Peloponnesos','PP',1),(1289,84,'South Aegean','SA',1),(1290,84,'Thessaly','TH',1),(1291,84,'West Greece','WG',1),(1292,84,'West Macedonia','WM',1),(1293,85,'Avannaa','A',1),(1294,85,'Tunu','T',1),(1295,85,'Kitaa','K',1),(1296,86,'Saint Andrew','A',1),(1297,86,'Saint David','D',1),(1298,86,'Saint George','G',1),(1299,86,'Saint John','J',1),(1300,86,'Saint Mark','M',1),(1301,86,'Saint Patrick','P',1),(1302,86,'Carriacou','C',1),(1303,86,'Petit Martinique','Q',1),(1304,89,'Alta Verapaz','AV',1),(1305,89,'Baja Verapaz','BV',1),(1306,89,'Chimaltenango','CM',1),(1307,89,'Chiquimula','CQ',1),(1308,89,'El Peten','PE',1),(1309,89,'El Progreso','PR',1),(1310,89,'El Quiche','QC',1),(1311,89,'Escuintla','ES',1),(1312,89,'Guatemala','GU',1),(1313,89,'Huehuetenango','HU',1),(1314,89,'Izabal','IZ',1),(1315,89,'Jalapa','JA',1),(1316,89,'Jutiapa','JU',1),(1317,89,'Quetzaltenango','QZ',1),(1318,89,'Retalhuleu','RE',1),(1319,89,'Sacatepequez','ST',1),(1320,89,'San Marcos','SM',1),(1321,89,'Santa Rosa','SR',1),(1322,89,'Solola','SO',1),(1323,89,'Suchitepequez','SU',1),(1324,89,'Totonicapan','TO',1),(1325,89,'Zacapa','ZA',1),(1326,90,'Conakry','CNK',1),(1327,90,'Beyla','BYL',1),(1328,90,'Boffa','BFA',1),(1329,90,'Boke','BOK',1),(1330,90,'Coyah','COY',1),(1331,90,'Dabola','DBL',1),(1332,90,'Dalaba','DLB',1),(1333,90,'Dinguiraye','DGR',1),(1334,90,'Dubreka','DBR',1),(1335,90,'Faranah','FRN',1),(1336,90,'Forecariah','FRC',1),(1337,90,'Fria','FRI',1),(1338,90,'Gaoual','GAO',1),(1339,90,'Gueckedou','GCD',1),(1340,90,'Kankan','KNK',1),(1341,90,'Kerouane','KRN',1),(1342,90,'Kindia','KND',1),(1343,90,'Kissidougou','KSD',1),(1344,90,'Koubia','KBA',1),(1345,90,'Koundara','KDA',1),(1346,90,'Kouroussa','KRA',1),(1347,90,'Labe','LAB',1),(1348,90,'Lelouma','LLM',1),(1349,90,'Lola','LOL',1),(1350,90,'Macenta','MCT',1),(1351,90,'Mali','MAL',1),(1352,90,'Mamou','MAM',1),(1353,90,'Mandiana','MAN',1),(1354,90,'Nzerekore','NZR',1),(1355,90,'Pita','PIT',1),(1356,90,'Siguiri','SIG',1),(1357,90,'Telimele','TLM',1),(1358,90,'Tougue','TOG',1),(1359,90,'Yomou','YOM',1),(1360,91,'Bafata Region','BF',1),(1361,91,'Biombo Region','BB',1),(1362,91,'Bissau Region','BS',1),(1363,91,'Bolama Region','BL',1),(1364,91,'Cacheu Region','CA',1),(1365,91,'Gabu Region','GA',1),(1366,91,'Oio Region','OI',1),(1367,91,'Quinara Region','QU',1),(1368,91,'Tombali Region','TO',1),(1369,92,'Barima-Waini','BW',1),(1370,92,'Cuyuni-Mazaruni','CM',1),(1371,92,'Demerara-Mahaica','DM',1),(1372,92,'East Berbice-Corentyne','EC',1),(1373,92,'Essequibo Islands-West Demerara','EW',1),(1374,92,'Mahaica-Berbice','MB',1),(1375,92,'Pomeroon-Supenaam','PM',1),(1376,92,'Potaro-Siparuni','PI',1),(1377,92,'Upper Demerara-Berbice','UD',1),(1378,92,'Upper Takutu-Upper Essequibo','UT',1),(1379,93,'Artibonite','AR',1),(1380,93,'Centre','CE',1),(1381,93,'Grand\'Anse','GA',1),(1382,93,'Nord','ND',1),(1383,93,'Nord-Est','NE',1),(1384,93,'Nord-Ouest','NO',1),(1385,93,'Ouest','OU',1),(1386,93,'Sud','SD',1),(1387,93,'Sud-Est','SE',1),(1388,94,'Flat Island','F',1),(1389,94,'McDonald Island','M',1),(1390,94,'Shag Island','S',1),(1391,94,'Heard Island','H',1),(1392,95,'Atlantida','AT',1),(1393,95,'Choluteca','CH',1),(1394,95,'Colon','CL',1),(1395,95,'Comayagua','CM',1),(1396,95,'Copan','CP',1),(1397,95,'Cortes','CR',1),(1398,95,'El Paraiso','PA',1),(1399,95,'Francisco Morazan','FM',1),(1400,95,'Gracias a Dios','GD',1),(1401,95,'Intibuca','IN',1),(1402,95,'Islas de la Bahia (Bay Islands)','IB',1),(1403,95,'La Paz','PZ',1),(1404,95,'Lempira','LE',1),(1405,95,'Ocotepeque','OC',1),(1406,95,'Olancho','OL',1),(1407,95,'Santa Barbara','SB',1),(1408,95,'Valle','VA',1),(1409,95,'Yoro','YO',1),(1410,96,'Central and Western Hong Kong Island','HCW',1),(1411,96,'Eastern Hong Kong Island','HEA',1),(1412,96,'Southern Hong Kong Island','HSO',1),(1413,96,'Wan Chai Hong Kong Island','HWC',1),(1414,96,'Kowloon City Kowloon','KKC',1),(1415,96,'Kwun Tong Kowloon','KKT',1),(1416,96,'Sham Shui Po Kowloon','KSS',1),(1417,96,'Wong Tai Sin Kowloon','KWT',1),(1418,96,'Yau Tsim Mong Kowloon','KYT',1),(1419,96,'Islands New Territories','NIS',1),(1420,96,'Kwai Tsing New Territories','NKT',1),(1421,96,'North New Territories','NNO',1),(1422,96,'Sai Kung New Territories','NSK',1),(1423,96,'Sha Tin New Territories','NST',1),(1424,96,'Tai Po New Territories','NTP',1),(1425,96,'Tsuen Wan New Territories','NTW',1),(1426,96,'Tuen Mun New Territories','NTM',1),(1427,96,'Yuen Long New Territories','NYL',1),(1467,98,'Austurland','AL',1),(1468,98,'Hofuoborgarsvaeoi','HF',1),(1469,98,'Norourland eystra','NE',1),(1470,98,'Norourland vestra','NV',1),(1471,98,'Suourland','SL',1),(1472,98,'Suournes','SN',1),(1473,98,'Vestfiroir','VF',1),(1474,98,'Vesturland','VL',1),(1475,99,'Andaman and Nicobar Islands','AN',1),(1476,99,'Andhra Pradesh','AP',1),(1477,99,'Arunachal Pradesh','AR',1),(1478,99,'Assam','AS',1),(1479,99,'Bihar','BI',1),(1480,99,'Chandigarh','CH',1),(1481,99,'Dadra and Nagar Haveli','DA',1),(1482,99,'Daman and Diu','DM',1),(1483,99,'Delhi','DE',1),(1484,99,'Goa','GO',1),(1485,99,'Gujarat','GU',1),(1486,99,'Haryana','HA',1),(1487,99,'Himachal Pradesh','HP',1),(1488,99,'Jammu and Kashmir','JA',1),(1489,99,'Karnataka','KA',1),(1490,99,'Kerala','KE',1),(1491,99,'Lakshadweep Islands','LI',1),(1492,99,'Madhya Pradesh','MP',1),(1493,99,'Maharashtra','MA',1),(1494,99,'Manipur','MN',1),(1495,99,'Meghalaya','ME',1),(1496,99,'Mizoram','MI',1),(1497,99,'Nagaland','NA',1),(1498,99,'Orissa','OR',1),(1499,99,'Puducherry','PO',1),(1500,99,'Punjab','PU',1),(1501,99,'Rajasthan','RA',1),(1502,99,'Sikkim','SI',1),(1503,99,'Tamil Nadu','TN',1),(1504,99,'Tripura','TR',1),(1505,99,'Uttar Pradesh','UP',1),(1506,99,'West Bengal','WB',1),(1507,100,'Aceh','AC',1),(1508,100,'Bali','BA',1),(1509,100,'Banten','BT',1),(1510,100,'Bengkulu','BE',1),(1511,100,'Kalimantan Utara','BD',1),(1512,100,'Gorontalo','GO',1),(1513,100,'Jakarta','JK',1),(1514,100,'Jambi','JA',1),(1515,100,'Jawa Barat','JB',1),(1516,100,'Jawa Tengah','JT',1),(1517,100,'Jawa Timur','JI',1),(1518,100,'Kalimantan Barat','KB',1),(1519,100,'Kalimantan Selatan','KS',1),(1520,100,'Kalimantan Tengah','KT',1),(1521,100,'Kalimantan Timur','KI',1),(1522,100,'Kepulauan Bangka Belitung','BB',1),(1523,100,'Lampung','LA',1),(1524,100,'Maluku','MA',1),(1525,100,'Maluku Utara','MU',1),(1526,100,'Nusa Tenggara Barat','NB',1),(1527,100,'Nusa Tenggara Timur','NT',1),(1528,100,'Papua','PA',1),(1529,100,'Riau','RI',1),(1530,100,'Sulawesi Selatan','SN',1),(1531,100,'Sulawesi Tengah','ST',1),(1532,100,'Sulawesi Tenggara','SG',1),(1533,100,'Sulawesi Utara','SA',1),(1534,100,'Sumatera Barat','SB',1),(1535,100,'Sumatera Selatan','SS',1),(1536,100,'Sumatera Utara','SU',1),(1537,100,'Yogyakarta','YO',1),(1538,101,'Tehran','TEH',1),(1539,101,'Qom','QOM',1),(1540,101,'Markazi','MKZ',1),(1541,101,'Qazvin','QAZ',1),(1542,101,'Gilan','GIL',1),(1543,101,'Ardabil','ARD',1),(1544,101,'Zanjan','ZAN',1),(1545,101,'East Azarbaijan','EAZ',1),(1546,101,'West Azarbaijan','WEZ',1),(1547,101,'Kurdistan','KRD',1),(1548,101,'Hamadan','HMD',1),(1549,101,'Kermanshah','KRM',1),(1550,101,'Ilam','ILM',1),(1551,101,'Lorestan','LRS',1),(1552,101,'Khuzestan','KZT',1),(1553,101,'Chahar Mahaal and Bakhtiari','CMB',1),(1554,101,'Kohkiluyeh and Buyer Ahmad','KBA',1),(1555,101,'Bushehr','BSH',1),(1556,101,'Fars','FAR',1),(1557,101,'Hormozgan','HRM',1),(1558,101,'Sistan and Baluchistan','SBL',1),(1559,101,'Kerman','KRB',1),(1560,101,'Yazd','YZD',1),(1561,101,'Esfahan','EFH',1),(1562,101,'Semnan','SMN',1),(1563,101,'Mazandaran','MZD',1),(1564,101,'Golestan','GLS',1),(1565,101,'North Khorasan','NKH',1),(1566,101,'Razavi Khorasan','RKH',1),(1567,101,'South Khorasan','SKH',1),(1568,102,'Baghdad','BD',1),(1569,102,'Salah ad Din','SD',1),(1570,102,'Diyala','DY',1),(1571,102,'Wasit','WS',1),(1572,102,'Maysan','MY',1),(1573,102,'Al Basrah','BA',1),(1574,102,'Dhi Qar','DQ',1),(1575,102,'Al Muthanna','MU',1),(1576,102,'Al Qadisyah','QA',1),(1577,102,'Babil','BB',1),(1578,102,'Al Karbala','KB',1),(1579,102,'An Najaf','NJ',1),(1580,102,'Al Anbar','AB',1),(1581,102,'Ninawa','NN',1),(1582,102,'Dahuk','DH',1),(1583,102,'Arbil','AL',1),(1584,102,'At Ta\'mim','TM',1),(1585,102,'As Sulaymaniyah','SL',1),(1586,103,'Carlow','CA',1),(1587,103,'Cavan','CV',1),(1588,103,'Clare','CL',1),(1589,103,'Cork','CO',1),(1590,103,'Donegal','DO',1),(1591,103,'Dublin','DU',1),(1592,103,'Galway','GA',1),(1593,103,'Kerry','KE',1),(1594,103,'Kildare','KI',1),(1595,103,'Kilkenny','KL',1),(1596,103,'Laois','LA',1),(1597,103,'Leitrim','LE',1),(1598,103,'Limerick','LI',1),(1599,103,'Longford','LO',1),(1600,103,'Louth','LU',1),(1601,103,'Mayo','MA',1),(1602,103,'Meath','ME',1),(1603,103,'Monaghan','MO',1),(1604,103,'Offaly','OF',1),(1605,103,'Roscommon','RO',1),(1606,103,'Sligo','SL',1),(1607,103,'Tipperary','TI',1),(1608,103,'Waterford','WA',1),(1609,103,'Westmeath','WE',1),(1610,103,'Wexford','WX',1),(1611,103,'Wicklow','WI',1),(1612,104,'Be\'er Sheva','BS',1),(1613,104,'Bika\'at Hayarden','BH',1),(1614,104,'Eilat and Arava','EA',1),(1615,104,'Galil','GA',1),(1616,104,'Haifa','HA',1),(1617,104,'Jehuda Mountains','JM',1),(1618,104,'Jerusalem','JE',1),(1619,104,'Negev','NE',1),(1620,104,'Semaria','SE',1),(1621,104,'Sharon','SH',1),(1622,104,'Tel Aviv (Gosh Dan)','TA',1),(3860,105,'Caltanissetta','CL',1),(3842,105,'Agrigento','AG',1),(3843,105,'Alessandria','AL',1),(3844,105,'Ancona','AN',1),(3845,105,'Aosta','AO',1),(3846,105,'Arezzo','AR',1),(3847,105,'Ascoli Piceno','AP',1),(3848,105,'Asti','AT',1),(3849,105,'Avellino','AV',1),(3850,105,'Bari','BA',1),(3851,105,'Belluno','BL',1),(3852,105,'Benevento','BN',1),(3853,105,'Bergamo','BG',1),(3854,105,'Biella','BI',1),(3855,105,'Bologna','BO',1),(3856,105,'Bolzano','BZ',1),(3857,105,'Brescia','BS',1),(3858,105,'Brindisi','BR',1),(3859,105,'Cagliari','CA',1),(1643,106,'Clarendon Parish','CLA',1),(1644,106,'Hanover Parish','HAN',1),(1645,106,'Kingston Parish','KIN',1),(1646,106,'Manchester Parish','MAN',1),(1647,106,'Portland Parish','POR',1),(1648,106,'Saint Andrew Parish','AND',1),(1649,106,'Saint Ann Parish','ANN',1),(1650,106,'Saint Catherine Parish','CAT',1),(1651,106,'Saint Elizabeth Parish','ELI',1),(1652,106,'Saint James Parish','JAM',1),(1653,106,'Saint Mary Parish','MAR',1),(1654,106,'Saint Thomas Parish','THO',1),(1655,106,'Trelawny Parish','TRL',1),(1656,106,'Westmoreland Parish','WML',1),(1657,107,'Aichi','AI',1),(1658,107,'Akita','AK',1),(1659,107,'Aomori','AO',1),(1660,107,'Chiba','CH',1),(1661,107,'Ehime','EH',1),(1662,107,'Fukui','FK',1),(1663,107,'Fukuoka','FU',1),(1664,107,'Fukushima','FS',1),(1665,107,'Gifu','GI',1),(1666,107,'Gumma','GU',1),(1667,107,'Hiroshima','HI',1),(1668,107,'Hokkaido','HO',1),(1669,107,'Hyogo','HY',1),(1670,107,'Ibaraki','IB',1),(1671,107,'Ishikawa','IS',1),(1672,107,'Iwate','IW',1),(1673,107,'Kagawa','KA',1),(1674,107,'Kagoshima','KG',1),(1675,107,'Kanagawa','KN',1),(1676,107,'Kochi','KO',1),(1677,107,'Kumamoto','KU',1),(1678,107,'Kyoto','KY',1),(1679,107,'Mie','MI',1),(1680,107,'Miyagi','MY',1),(1681,107,'Miyazaki','MZ',1),(1682,107,'Nagano','NA',1),(1683,107,'Nagasaki','NG',1),(1684,107,'Nara','NR',1),(1685,107,'Niigata','NI',1),(1686,107,'Oita','OI',1),(1687,107,'Okayama','OK',1),(1688,107,'Okinawa','ON',1),(1689,107,'Osaka','OS',1),(1690,107,'Saga','SA',1),(1691,107,'Saitama','SI',1),(1692,107,'Shiga','SH',1),(1693,107,'Shimane','SM',1),(1694,107,'Shizuoka','SZ',1),(1695,107,'Tochigi','TO',1),(1696,107,'Tokushima','TS',1),(1697,107,'Tokyo','TK',1),(1698,107,'Tottori','TT',1),(1699,107,'Toyama','TY',1),(1700,107,'Wakayama','WA',1),(1701,107,'Yamagata','YA',1),(1702,107,'Yamaguchi','YM',1),(1703,107,'Yamanashi','YN',1),(1704,108,'\'Amman','AM',1),(1705,108,'Ajlun','AJ',1),(1706,108,'Al \'Aqabah','AA',1),(1707,108,'Al Balqa\'','AB',1),(1708,108,'Al Karak','AK',1),(1709,108,'Al Mafraq','AL',1),(1710,108,'At Tafilah','AT',1),(1711,108,'Az Zarqa\'','AZ',1),(1712,108,'Irbid','IR',1),(1713,108,'Jarash','JA',1),(1714,108,'Ma\'an','MA',1),(1715,108,'Madaba','MD',1),(1716,109,'Almaty','AL',1),(1717,109,'Almaty City','AC',1),(1718,109,'Aqmola','AM',1),(1719,109,'Aqtobe','AQ',1),(1720,109,'Astana City','AS',1),(1721,109,'Atyrau','AT',1),(1722,109,'Batys Qazaqstan','BA',1),(1723,109,'Bayqongyr City','BY',1),(1724,109,'Mangghystau','MA',1),(1725,109,'Ongtustik Qazaqstan','ON',1),(1726,109,'Pavlodar','PA',1),(1727,109,'Qaraghandy','QA',1),(1728,109,'Qostanay','QO',1),(1729,109,'Qyzylorda','QY',1),(1730,109,'Shyghys Qazaqstan','SH',1),(1731,109,'Soltustik Qazaqstan','SO',1),(1732,109,'Zhambyl','ZH',1),(1733,110,'Central','CE',1),(1734,110,'Coast','CO',1),(1735,110,'Eastern','EA',1),(1736,110,'Nairobi Area','NA',1),(1737,110,'North Eastern','NE',1),(1738,110,'Nyanza','NY',1),(1739,110,'Rift Valley','RV',1),(1740,110,'Western','WE',1),(1741,111,'Abaiang','AG',1),(1742,111,'Abemama','AM',1),(1743,111,'Aranuka','AK',1),(1744,111,'Arorae','AO',1),(1745,111,'Banaba','BA',1),(1746,111,'Beru','BE',1),(1747,111,'Butaritari','bT',1),(1748,111,'Kanton','KA',1),(1749,111,'Kiritimati','KR',1),(1750,111,'Kuria','KU',1),(1751,111,'Maiana','MI',1),(1752,111,'Makin','MN',1),(1753,111,'Marakei','ME',1),(1754,111,'Nikunau','NI',1),(1755,111,'Nonouti','NO',1),(1756,111,'Onotoa','ON',1),(1757,111,'Tabiteuea','TT',1),(1758,111,'Tabuaeran','TR',1),(1759,111,'Tamana','TM',1),(1760,111,'Tarawa','TW',1),(1761,111,'Teraina','TE',1),(1762,112,'Chagang-do','CHA',1),(1763,112,'Hamgyong-bukto','HAB',1),(1764,112,'Hamgyong-namdo','HAN',1),(1765,112,'Hwanghae-bukto','HWB',1),(1766,112,'Hwanghae-namdo','HWN',1),(1767,112,'Kangwon-do','KAN',1),(1768,112,'P\'yongan-bukto','PYB',1),(1769,112,'P\'yongan-namdo','PYN',1),(1770,112,'Ryanggang-do (Yanggang-do)','YAN',1),(1771,112,'Rason Directly Governed City','NAJ',1),(1772,112,'P\'yongyang Special City','PYO',1),(1773,113,'Ch\'ungch\'ong-bukto','CO',1),(1774,113,'Ch\'ungch\'ong-namdo','CH',1),(1775,113,'Cheju-do','CD',1),(1776,113,'Cholla-bukto','CB',1),(1777,113,'Cholla-namdo','CN',1),(1778,113,'Inch\'on-gwangyoksi','IG',1),(1779,113,'Kangwon-do','KA',1),(1780,113,'Kwangju-gwangyoksi','KG',1),(1781,113,'Kyonggi-do','KD',1),(1782,113,'Kyongsang-bukto','KB',1),(1783,113,'Kyongsang-namdo','KN',1),(1784,113,'Pusan-gwangyoksi','PG',1),(1785,113,'Soul-t\'ukpyolsi','SO',1),(1786,113,'Taegu-gwangyoksi','TA',1),(1787,113,'Taejon-gwangyoksi','TG',1),(1788,114,'Al \'Asimah','AL',1),(1789,114,'Al Ahmadi','AA',1),(1790,114,'Al Farwaniyah','AF',1),(1791,114,'Al Jahra\'','AJ',1),(1792,114,'Hawalli','HA',1),(1793,115,'Bishkek','GB',1),(1794,115,'Batken','B',1),(1795,115,'Chu','C',1),(1796,115,'Jalal-Abad','J',1),(1797,115,'Naryn','N',1),(1798,115,'Osh','O',1),(1799,115,'Talas','T',1),(1800,115,'Ysyk-Kol','Y',1),(1801,116,'Vientiane','VT',1),(1802,116,'Attapu','AT',1),(1803,116,'Bokeo','BK',1),(1804,116,'Bolikhamxai','BL',1),(1805,116,'Champasak','CH',1),(1806,116,'Houaphan','HO',1),(1807,116,'Khammouan','KH',1),(1808,116,'Louang Namtha','LM',1),(1809,116,'Louangphabang','LP',1),(1810,116,'Oudomxai','OU',1),(1811,116,'Phongsali','PH',1),(1812,116,'Salavan','SL',1),(1813,116,'Savannakhet','SV',1),(1814,116,'Vientiane','VI',1),(1815,116,'Xaignabouli','XA',1),(1816,116,'Xekong','XE',1),(1817,116,'Xiangkhoang','XI',1),(1818,116,'Xaisomboun','XN',1),(1852,119,'Berea','BE',1),(1853,119,'Butha-Buthe','BB',1),(1854,119,'Leribe','LE',1),(1855,119,'Mafeteng','MF',1),(1856,119,'Maseru','MS',1),(1857,119,'Mohale\'s Hoek','MH',1),(1858,119,'Mokhotlong','MK',1),(1859,119,'Qacha\'s Nek','QN',1),(1860,119,'Quthing','QT',1),(1861,119,'Thaba-Tseka','TT',1),(1862,120,'Bomi','BI',1),(1863,120,'Bong','BG',1),(1864,120,'Grand Bassa','GB',1),(1865,120,'Grand Cape Mount','CM',1),(1866,120,'Grand Gedeh','GG',1),(1867,120,'Grand Kru','GK',1),(1868,120,'Lofa','LO',1),(1869,120,'Margibi','MG',1),(1870,120,'Maryland','ML',1),(1871,120,'Montserrado','MS',1),(1872,120,'Nimba','NB',1),(1873,120,'River Cess','RC',1),(1874,120,'Sinoe','SN',1),(1875,121,'Ajdabiya','AJ',1),(1876,121,'Al \'Aziziyah','AZ',1),(1877,121,'Al Fatih','FA',1),(1878,121,'Al Jabal al Akhdar','JA',1),(1879,121,'Al Jufrah','JU',1),(1880,121,'Al Khums','KH',1),(1881,121,'Al Kufrah','KU',1),(1882,121,'An Nuqat al Khams','NK',1),(1883,121,'Ash Shati\'','AS',1),(1884,121,'Awbari','AW',1),(1885,121,'Az Zawiyah','ZA',1),(1886,121,'Banghazi','BA',1),(1887,121,'Darnah','DA',1),(1888,121,'Ghadamis','GD',1),(1889,121,'Gharyan','GY',1),(1890,121,'Misratah','MI',1),(1891,121,'Murzuq','MZ',1),(1892,121,'Sabha','SB',1),(1893,121,'Sawfajjin','SW',1),(1894,121,'Surt','SU',1),(1895,121,'Tarabulus (Tripoli)','TL',1),(1896,121,'Tarhunah','TH',1),(1897,121,'Tubruq','TU',1),(1898,121,'Yafran','YA',1),(1899,121,'Zlitan','ZL',1),(1900,122,'Vaduz','V',1),(1901,122,'Schaan','A',1),(1902,122,'Balzers','B',1),(1903,122,'Triesen','N',1),(1904,122,'Eschen','E',1),(1905,122,'Mauren','M',1),(1906,122,'Triesenberg','T',1),(1907,122,'Ruggell','R',1),(1908,122,'Gamprin','G',1),(1909,122,'Schellenberg','L',1),(1910,122,'Planken','P',1),(1911,123,'Alytus','AL',1),(1912,123,'Kaunas','KA',1),(1913,123,'Klaipeda','KL',1),(1914,123,'Marijampole','MA',1),(1915,123,'Panevezys','PA',1),(1916,123,'Siauliai','SI',1),(1917,123,'Taurage','TA',1),(1918,123,'Telsiai','TE',1),(1919,123,'Utena','UT',1),(1920,123,'Vilnius','VI',1),(1921,124,'Diekirch','DD',1),(1922,124,'Clervaux','DC',1),(1923,124,'Redange','DR',1),(1924,124,'Vianden','DV',1),(1925,124,'Wiltz','DW',1),(1926,124,'Grevenmacher','GG',1),(1927,124,'Echternach','GE',1),(1928,124,'Remich','GR',1),(1929,124,'Luxembourg','LL',1),(1930,124,'Capellen','LC',1),(1931,124,'Esch-sur-Alzette','LE',1),(1932,124,'Mersch','LM',1),(1933,125,'Our Lady Fatima Parish','OLF',1),(1934,125,'St. Anthony Parish','ANT',1),(1935,125,'St. Lazarus Parish','LAZ',1),(1936,125,'Cathedral Parish','CAT',1),(1937,125,'St. Lawrence Parish','LAW',1),(1938,127,'Antananarivo','AN',1),(1939,127,'Antsiranana','AS',1),(1940,127,'Fianarantsoa','FN',1),(1941,127,'Mahajanga','MJ',1),(1942,127,'Toamasina','TM',1),(1943,127,'Toliara','TL',1),(1944,128,'Balaka','BLK',1),(1945,128,'Blantyre','BLT',1),(1946,128,'Chikwawa','CKW',1),(1947,128,'Chiradzulu','CRD',1),(1948,128,'Chitipa','CTP',1),(1949,128,'Dedza','DDZ',1),(1950,128,'Dowa','DWA',1),(1951,128,'Karonga','KRG',1),(1952,128,'Kasungu','KSG',1),(1953,128,'Likoma','LKM',1),(1954,128,'Lilongwe','LLG',1),(1955,128,'Machinga','MCG',1),(1956,128,'Mangochi','MGC',1),(1957,128,'Mchinji','MCH',1),(1958,128,'Mulanje','MLJ',1),(1959,128,'Mwanza','MWZ',1),(1960,128,'Mzimba','MZM',1),(1961,128,'Ntcheu','NTU',1),(1962,128,'Nkhata Bay','NKB',1),(1963,128,'Nkhotakota','NKH',1),(1964,128,'Nsanje','NSJ',1),(1965,128,'Ntchisi','NTI',1),(1966,128,'Phalombe','PHL',1),(1967,128,'Rumphi','RMP',1),(1968,128,'Salima','SLM',1),(1969,128,'Thyolo','THY',1),(1970,128,'Zomba','ZBA',1),(1971,129,'Johor','MY-01',1),(1972,129,'Kedah','MY-02',1),(1973,129,'Kelantan','MY-03',1),(1974,129,'Labuan','MY-15',1),(1975,129,'Melaka','MY-04',1),(1976,129,'Negeri Sembilan','MY-05',1),(1977,129,'Pahang','MY-06',1),(1978,129,'Perak','MY-08',1),(1979,129,'Perlis','MY-09',1),(1980,129,'Pulau Pinang','MY-07',1),(1981,129,'Sabah','MY-12',1),(1982,129,'Sarawak','MY-13',1),(1983,129,'Selangor','MY-10',1),(1984,129,'Terengganu','MY-11',1),(1985,129,'Kuala Lumpur','MY-14',1),(4035,129,'Putrajaya','MY-16',1),(1986,130,'Thiladhunmathi Uthuru','THU',1),(1987,130,'Thiladhunmathi Dhekunu','THD',1),(1988,130,'Miladhunmadulu Uthuru','MLU',1),(1989,130,'Miladhunmadulu Dhekunu','MLD',1),(1990,130,'Maalhosmadulu Uthuru','MAU',1),(1991,130,'Maalhosmadulu Dhekunu','MAD',1),(1992,130,'Faadhippolhu','FAA',1),(1993,130,'Male Atoll','MAA',1),(1994,130,'Ari Atoll Uthuru','AAU',1),(1995,130,'Ari Atoll Dheknu','AAD',1),(1996,130,'Felidhe Atoll','FEA',1),(1997,130,'Mulaku Atoll','MUA',1),(1998,130,'Nilandhe Atoll Uthuru','NAU',1),(1999,130,'Nilandhe Atoll Dhekunu','NAD',1),(2000,130,'Kolhumadulu','KLH',1),(2001,130,'Hadhdhunmathi','HDH',1),(2002,130,'Huvadhu Atoll Uthuru','HAU',1),(2003,130,'Huvadhu Atoll Dhekunu','HAD',1),(2004,130,'Fua Mulaku','FMU',1),(2005,130,'Addu','ADD',1),(2006,131,'Gao','GA',1),(2007,131,'Kayes','KY',1),(2008,131,'Kidal','KD',1),(2009,131,'Koulikoro','KL',1),(2010,131,'Mopti','MP',1),(2011,131,'Segou','SG',1),(2012,131,'Sikasso','SK',1),(2013,131,'Tombouctou','TB',1),(2014,131,'Bamako Capital District','CD',1),(2015,132,'Attard','ATT',1),(2016,132,'Balzan','BAL',1),(2017,132,'Birgu','BGU',1),(2018,132,'Birkirkara','BKK',1),(2019,132,'Birzebbuga','BRZ',1),(2020,132,'Bormla','BOR',1),(2021,132,'Dingli','DIN',1),(2022,132,'Fgura','FGU',1),(2023,132,'Floriana','FLO',1),(2024,132,'Gudja','GDJ',1),(2025,132,'Gzira','GZR',1),(2026,132,'Gargur','GRG',1),(2027,132,'Gaxaq','GXQ',1),(2028,132,'Hamrun','HMR',1),(2029,132,'Iklin','IKL',1),(2030,132,'Isla','ISL',1),(2031,132,'Kalkara','KLK',1),(2032,132,'Kirkop','KRK',1),(2033,132,'Lija','LIJ',1),(2034,132,'Luqa','LUQ',1),(2035,132,'Marsa','MRS',1),(2036,132,'Marsaskala','MKL',1),(2037,132,'Marsaxlokk','MXL',1),(2038,132,'Mdina','MDN',1),(2039,132,'Melliea','MEL',1),(2040,132,'Mgarr','MGR',1),(2041,132,'Mosta','MST',1),(2042,132,'Mqabba','MQA',1),(2043,132,'Msida','MSI',1),(2044,132,'Mtarfa','MTF',1),(2045,132,'Naxxar','NAX',1),(2046,132,'Paola','PAO',1),(2047,132,'Pembroke','PEM',1),(2048,132,'Pieta','PIE',1),(2049,132,'Qormi','QOR',1),(2050,132,'Qrendi','QRE',1),(2051,132,'Rabat','RAB',1),(2052,132,'Safi','SAF',1),(2053,132,'San Giljan','SGI',1),(2054,132,'Santa Lucija','SLU',1),(2055,132,'San Pawl il-Bahar','SPB',1),(2056,132,'San Gwann','SGW',1),(2057,132,'Santa Venera','SVE',1),(2058,132,'Siggiewi','SIG',1),(2059,132,'Sliema','SLM',1),(2060,132,'Swieqi','SWQ',1),(2061,132,'Ta Xbiex','TXB',1),(2062,132,'Tarxien','TRX',1),(2063,132,'Valletta','VLT',1),(2064,132,'Xgajra','XGJ',1),(2065,132,'Zabbar','ZBR',1),(2066,132,'Zebbug','ZBG',1),(2067,132,'Zejtun','ZJT',1),(2068,132,'Zurrieq','ZRQ',1),(2069,132,'Fontana','FNT',1),(2070,132,'Ghajnsielem','GHJ',1),(2071,132,'Gharb','GHR',1),(2072,132,'Ghasri','GHS',1),(2073,132,'Kercem','KRC',1),(2074,132,'Munxar','MUN',1),(2075,132,'Nadur','NAD',1),(2076,132,'Qala','QAL',1),(2077,132,'Victoria','VIC',1),(2078,132,'San Lawrenz','SLA',1),(2079,132,'Sannat','SNT',1),(2080,132,'Xagra','ZAG',1),(2081,132,'Xewkija','XEW',1),(2082,132,'Zebbug','ZEB',1),(2083,133,'Ailinginae','ALG',1),(2084,133,'Ailinglaplap','ALL',1),(2085,133,'Ailuk','ALK',1),(2086,133,'Arno','ARN',1),(2087,133,'Aur','AUR',1),(2088,133,'Bikar','BKR',1),(2089,133,'Bikini','BKN',1),(2090,133,'Bokak','BKK',1),(2091,133,'Ebon','EBN',1),(2092,133,'Enewetak','ENT',1),(2093,133,'Erikub','EKB',1),(2094,133,'Jabat','JBT',1),(2095,133,'Jaluit','JLT',1),(2096,133,'Jemo','JEM',1),(2097,133,'Kili','KIL',1),(2098,133,'Kwajalein','KWJ',1),(2099,133,'Lae','LAE',1),(2100,133,'Lib','LIB',1),(2101,133,'Likiep','LKP',1),(2102,133,'Majuro','MJR',1),(2103,133,'Maloelap','MLP',1),(2104,133,'Mejit','MJT',1),(2105,133,'Mili','MIL',1),(2106,133,'Namorik','NMK',1),(2107,133,'Namu','NAM',1),(2108,133,'Rongelap','RGL',1),(2109,133,'Rongrik','RGK',1),(2110,133,'Toke','TOK',1),(2111,133,'Ujae','UJA',1),(2112,133,'Ujelang','UJL',1),(2113,133,'Utirik','UTK',1),(2114,133,'Wotho','WTH',1),(2115,133,'Wotje','WTJ',1),(2116,135,'Adrar','AD',1),(2117,135,'Assaba','AS',1),(2118,135,'Brakna','BR',1),(2119,135,'Dakhlet Nouadhibou','DN',1),(2120,135,'Gorgol','GO',1),(2121,135,'Guidimaka','GM',1),(2122,135,'Hodh Ech Chargui','HC',1),(2123,135,'Hodh El Gharbi','HG',1),(2124,135,'Inchiri','IN',1),(2125,135,'Tagant','TA',1),(2126,135,'Tiris Zemmour','TZ',1),(2127,135,'Trarza','TR',1),(2128,135,'Nouakchott','NO',1),(2129,136,'Beau Bassin-Rose Hill','BR',1),(2130,136,'Curepipe','CU',1),(2131,136,'Port Louis','PU',1),(2132,136,'Quatre Bornes','QB',1),(2133,136,'Vacoas-Phoenix','VP',1),(2134,136,'Agalega Islands','AG',1),(2135,136,'Cargados Carajos Shoals (Saint Brandon Islands)','CC',1),(2136,136,'Rodrigues','RO',1),(2137,136,'Black River','BL',1),(2138,136,'Flacq','FL',1),(2139,136,'Grand Port','GP',1),(2140,136,'Moka','MO',1),(2141,136,'Pamplemousses','PA',1),(2142,136,'Plaines Wilhems','PW',1),(2143,136,'Port Louis','PL',1),(2144,136,'Riviere du Rempart','RR',1),(2145,136,'Savanne','SA',1),(2146,138,'Baja California Norte','BN',1),(2147,138,'Baja California Sur','BS',1),(2148,138,'Campeche','CA',1),(2149,138,'Chiapas','CI',1),(2150,138,'Chihuahua','CH',1),(2151,138,'Coahuila de Zaragoza','CZ',1),(2152,138,'Colima','CL',1),(2153,138,'Distrito Federal','DF',1),(2154,138,'Durango','DU',1),(2155,138,'Guanajuato','GA',1),(2156,138,'Guerrero','GE',1),(2157,138,'Hidalgo','HI',1),(2158,138,'Jalisco','JA',1),(2159,138,'Mexico','ME',1),(2160,138,'Michoacan de Ocampo','MI',1),(2161,138,'Morelos','MO',1),(2162,138,'Nayarit','NA',1),(2163,138,'Nuevo Leon','NL',1),(2164,138,'Oaxaca','OA',1),(2165,138,'Puebla','PU',1),(2166,138,'Queretaro de Arteaga','QA',1),(2167,138,'Quintana Roo','QR',1),(2168,138,'San Luis Potosi','SA',1),(2169,138,'Sinaloa','SI',1),(2170,138,'Sonora','SO',1),(2171,138,'Tabasco','TB',1),(2172,138,'Tamaulipas','TM',1),(2173,138,'Tlaxcala','TL',1),(2174,138,'Veracruz-Llave','VE',1),(2175,138,'Yucatan','YU',1),(2176,138,'Zacatecas','ZA',1),(2177,139,'Chuuk','C',1),(2178,139,'Kosrae','K',1),(2179,139,'Pohnpei','P',1),(2180,139,'Yap','Y',1),(2181,140,'Gagauzia','GA',1),(2182,140,'Chisinau','CU',1),(2183,140,'Balti','BA',1),(2184,140,'Cahul','CA',1),(2185,140,'Edinet','ED',1),(2186,140,'Lapusna','LA',1),(2187,140,'Orhei','OR',1),(2188,140,'Soroca','SO',1),(2189,140,'Tighina','TI',1),(2190,140,'Ungheni','UN',1),(2191,140,'St‚nga Nistrului','SN',1),(2192,141,'Fontvieille','FV',1),(2193,141,'La Condamine','LC',1),(2194,141,'Monaco-Ville','MV',1),(2195,141,'Monte-Carlo','MC',1),(2196,142,'Ulanbaatar','1',1),(2197,142,'Orhon','035',1),(2198,142,'Darhan uul','037',1),(2199,142,'Hentiy','039',1),(2200,142,'Hovsgol','041',1),(2201,142,'Hovd','043',1),(2202,142,'Uvs','046',1),(2203,142,'Tov','047',1),(2204,142,'Selenge','049',1),(2205,142,'Suhbaatar','051',1),(2206,142,'Omnogovi','053',1),(2207,142,'Ovorhangay','055',1),(2208,142,'Dzavhan','057',1),(2209,142,'DundgovL','059',1),(2210,142,'Dornod','061',1),(2211,142,'Dornogov','063',1),(2212,142,'Govi-Sumber','064',1),(2213,142,'Govi-Altay','065',1),(2214,142,'Bulgan','067',1),(2215,142,'Bayanhongor','069',1),(2216,142,'Bayan-Olgiy','071',1),(2217,142,'Arhangay','073',1),(2218,143,'Saint Anthony','A',1),(2219,143,'Saint Georges','G',1),(2220,143,'Saint Peter','P',1),(2221,144,'Agadir','AGD',1),(2222,144,'Al Hoceima','HOC',1),(2223,144,'Azilal','AZI',1),(2224,144,'Beni Mellal','BME',1),(2225,144,'Ben Slimane','BSL',1),(2226,144,'Boulemane','BLM',1),(2227,144,'Casablanca','CBL',1),(2228,144,'Chaouen','CHA',1),(2229,144,'El Jadida','EJA',1),(2230,144,'El Kelaa des Sraghna','EKS',1),(2231,144,'Er Rachidia','ERA',1),(2232,144,'Essaouira','ESS',1),(2233,144,'Fes','FES',1),(2234,144,'Figuig','FIG',1),(2235,144,'Guelmim','GLM',1),(2236,144,'Ifrane','IFR',1),(2237,144,'Kenitra','KEN',1),(2238,144,'Khemisset','KHM',1),(2239,144,'Khenifra','KHN',1),(2240,144,'Khouribga','KHO',1),(2241,144,'Laayoune','LYN',1),(2242,144,'Larache','LAR',1),(2243,144,'Marrakech','MRK',1),(2244,144,'Meknes','MKN',1),(2245,144,'Nador','NAD',1),(2246,144,'Ouarzazate','ORZ',1),(2247,144,'Oujda','OUJ',1),(2248,144,'Rabat-Sale','RSA',1),(2249,144,'Safi','SAF',1),(2250,144,'Settat','SET',1),(2251,144,'Sidi Kacem','SKA',1),(2252,144,'Tangier','TGR',1),(2253,144,'Tan-Tan','TAN',1),(2254,144,'Taounate','TAO',1),(2255,144,'Taroudannt','TRD',1),(2256,144,'Tata','TAT',1),(2257,144,'Taza','TAZ',1),(2258,144,'Tetouan','TET',1),(2259,144,'Tiznit','TIZ',1),(2260,144,'Ad Dakhla','ADK',1),(2261,144,'Boujdour','BJD',1),(2262,144,'Es Smara','ESM',1),(2263,145,'Cabo Delgado','CD',1),(2264,145,'Gaza','GZ',1),(2265,145,'Inhambane','IN',1),(2266,145,'Manica','MN',1),(2267,145,'Maputo (city)','MC',1),(2268,145,'Maputo','MP',1),(2269,145,'Nampula','NA',1),(2270,145,'Niassa','NI',1),(2271,145,'Sofala','SO',1),(2272,145,'Tete','TE',1),(2273,145,'Zambezia','ZA',1),(2274,146,'Ayeyarwady','AY',1),(2275,146,'Bago','BG',1),(2276,146,'Magway','MG',1),(2277,146,'Mandalay','MD',1),(2278,146,'Sagaing','SG',1),(2279,146,'Tanintharyi','TN',1),(2280,146,'Yangon','YG',1),(2281,146,'Chin State','CH',1),(2282,146,'Kachin State','KC',1),(2283,146,'Kayah State','KH',1),(2284,146,'Kayin State','KN',1),(2285,146,'Mon State','MN',1),(2286,146,'Rakhine State','RK',1),(2287,146,'Shan State','SH',1),(2288,147,'Caprivi','CA',1),(2289,147,'Erongo','ER',1),(2290,147,'Hardap','HA',1),(2291,147,'Karas','KR',1),(2292,147,'Kavango','KV',1),(2293,147,'Khomas','KH',1),(2294,147,'Kunene','KU',1),(2295,147,'Ohangwena','OW',1),(2296,147,'Omaheke','OK',1),(2297,147,'Omusati','OT',1),(2298,147,'Oshana','ON',1),(2299,147,'Oshikoto','OO',1),(2300,147,'Otjozondjupa','OJ',1),(2301,148,'Aiwo','AO',1),(2302,148,'Anabar','AA',1),(2303,148,'Anetan','AT',1),(2304,148,'Anibare','AI',1),(2305,148,'Baiti','BA',1),(2306,148,'Boe','BO',1),(2307,148,'Buada','BU',1),(2308,148,'Denigomodu','DE',1),(2309,148,'Ewa','EW',1),(2310,148,'Ijuw','IJ',1),(2311,148,'Meneng','ME',1),(2312,148,'Nibok','NI',1),(2313,148,'Uaboe','UA',1),(2314,148,'Yaren','YA',1),(2315,149,'Bagmati','BA',1),(2316,149,'Bheri','BH',1),(2317,149,'Dhawalagiri','DH',1),(2318,149,'Gandaki','GA',1),(2319,149,'Janakpur','JA',1),(2320,149,'Karnali','KA',1),(2321,149,'Kosi','KO',1),(2322,149,'Lumbini','LU',1),(2323,149,'Mahakali','MA',1),(2324,149,'Mechi','ME',1),(2325,149,'Narayani','NA',1),(2326,149,'Rapti','RA',1),(2327,149,'Sagarmatha','SA',1),(2328,149,'Seti','SE',1),(2329,150,'Drenthe','DR',1),(2330,150,'Flevoland','FL',1),(2331,150,'Friesland','FR',1),(2332,150,'Gelderland','GE',1),(2333,150,'Groningen','GR',1),(2334,150,'Limburg','LI',1),(2335,150,'Noord-Brabant','NB',1),(2336,150,'Noord-Holland','NH',1),(2337,150,'Overijssel','OV',1),(2338,150,'Utrecht','UT',1),(2339,150,'Zeeland','ZE',1),(2340,150,'Zuid-Holland','ZH',1),(2341,152,'Iles Loyaute','L',1),(2342,152,'Nord','N',1),(2343,152,'Sud','S',1),(2344,153,'Auckland','AUK',1),(2345,153,'Bay of Plenty','BOP',1),(2346,153,'Canterbury','CAN',1),(2347,153,'Coromandel','COR',1),(2348,153,'Gisborne','GIS',1),(2349,153,'Fiordland','FIO',1),(2350,153,'Hawke\'s Bay','HKB',1),(2351,153,'Marlborough','MBH',1),(2352,153,'Manawatu-Wanganui','MWT',1),(2353,153,'Mt Cook-Mackenzie','MCM',1),(2354,153,'Nelson','NSN',1),(2355,153,'Northland','NTL',1),(2356,153,'Otago','OTA',1),(2357,153,'Southland','STL',1),(2358,153,'Taranaki','TKI',1),(2359,153,'Wellington','WGN',1),(2360,153,'Waikato','WKO',1),(2361,153,'Wairarapa','WAI',1),(2362,153,'West Coast','WTC',1),(2363,154,'Atlantico Norte','AN',1),(2364,154,'Atlantico Sur','AS',1),(2365,154,'Boaco','BO',1),(2366,154,'Carazo','CA',1),(2367,154,'Chinandega','CI',1),(2368,154,'Chontales','CO',1),(2369,154,'Esteli','ES',1),(2370,154,'Granada','GR',1),(2371,154,'Jinotega','JI',1),(2372,154,'Leon','LE',1),(2373,154,'Madriz','MD',1),(2374,154,'Managua','MN',1),(2375,154,'Masaya','MS',1),(2376,154,'Matagalpa','MT',1),(2377,154,'Nuevo Segovia','NS',1),(2378,154,'Rio San Juan','RS',1),(2379,154,'Rivas','RI',1),(2380,155,'Agadez','AG',1),(2381,155,'Diffa','DF',1),(2382,155,'Dosso','DS',1),(2383,155,'Maradi','MA',1),(2384,155,'Niamey','NM',1),(2385,155,'Tahoua','TH',1),(2386,155,'Tillaberi','TL',1),(2387,155,'Zinder','ZD',1),(2388,156,'Abia','AB',1),(2389,156,'Abuja Federal Capital Territory','CT',1),(2390,156,'Adamawa','AD',1),(2391,156,'Akwa Ibom','AK',1),(2392,156,'Anambra','AN',1),(2393,156,'Bauchi','BC',1),(2394,156,'Bayelsa','BY',1),(2395,156,'Benue','BN',1),(2396,156,'Borno','BO',1),(2397,156,'Cross River','CR',1),(2398,156,'Delta','DE',1),(2399,156,'Ebonyi','EB',1),(2400,156,'Edo','ED',1),(2401,156,'Ekiti','EK',1),(2402,156,'Enugu','EN',1),(2403,156,'Gombe','GO',1),(2404,156,'Imo','IM',1),(2405,156,'Jigawa','JI',1),(2406,156,'Kaduna','KD',1),(2407,156,'Kano','KN',1),(2408,156,'Katsina','KT',1),(2409,156,'Kebbi','KE',1),(2410,156,'Kogi','KO',1),(2411,156,'Kwara','KW',1),(2412,156,'Lagos','LA',1),(2413,156,'Nassarawa','NA',1),(2414,156,'Niger','NI',1),(2415,156,'Ogun','OG',1),(2416,156,'Ondo','ONG',1),(2417,156,'Osun','OS',1),(2418,156,'Oyo','OY',1),(2419,156,'Plateau','PL',1),(2420,156,'Rivers','RI',1),(2421,156,'Sokoto','SO',1),(2422,156,'Taraba','TA',1),(2423,156,'Yobe','YO',1),(2424,156,'Zamfara','ZA',1),(2425,159,'Northern Islands','N',1),(2426,159,'Rota','R',1),(2427,159,'Saipan','S',1),(2428,159,'Tinian','T',1),(2429,160,'Akershus','AK',1),(2430,160,'Aust-Agder','AA',1),(2431,160,'Buskerud','BU',1),(2432,160,'Finnmark','FM',1),(2433,160,'Hedmark','HM',1),(2434,160,'Hordaland','HL',1),(2435,160,'More og Romdal','MR',1),(2436,160,'Nord-Trondelag','NT',1),(2437,160,'Nordland','NL',1),(2438,160,'Ostfold','OF',1),(2439,160,'Oppland','OP',1),(2440,160,'Oslo','OL',1),(2441,160,'Rogaland','RL',1),(2442,160,'Sor-Trondelag','ST',1),(2443,160,'Sogn og Fjordane','SJ',1),(2444,160,'Svalbard','SV',1),(2445,160,'Telemark','TM',1),(2446,160,'Troms','TR',1),(2447,160,'Vest-Agder','VA',1),(2448,160,'Vestfold','VF',1),(2449,161,'Ad Dakhiliyah','DA',1),(2450,161,'Al Batinah','BA',1),(2451,161,'Al Wusta','WU',1),(2452,161,'Ash Sharqiyah','SH',1),(2453,161,'Az Zahirah','ZA',1),(2454,161,'Masqat','MA',1),(2455,161,'Musandam','MU',1),(2456,161,'Zufar','ZU',1),(2457,162,'Balochistan','B',1),(2458,162,'Federally Administered Tribal Areas','T',1),(2459,162,'Islamabad Capital Territory','I',1),(2460,162,'North-West Frontier','N',1),(2461,162,'Punjab','P',1),(2462,162,'Sindh','S',1),(2463,163,'Aimeliik','AM',1),(2464,163,'Airai','AR',1),(2465,163,'Angaur','AN',1),(2466,163,'Hatohobei','HA',1),(2467,163,'Kayangel','KA',1),(2468,163,'Koror','KO',1),(2469,163,'Melekeok','ME',1),(2470,163,'Ngaraard','NA',1),(2471,163,'Ngarchelong','NG',1),(2472,163,'Ngardmau','ND',1),(2473,163,'Ngatpang','NT',1),(2474,163,'Ngchesar','NC',1),(2475,163,'Ngeremlengui','NR',1),(2476,163,'Ngiwal','NW',1),(2477,163,'Peleliu','PE',1),(2478,163,'Sonsorol','SO',1),(2479,164,'Bocas del Toro','BT',1),(2480,164,'Chiriqui','CH',1),(2481,164,'Cocle','CC',1),(2482,164,'Colon','CL',1),(2483,164,'Darien','DA',1),(2484,164,'Herrera','HE',1),(2485,164,'Los Santos','LS',1),(2486,164,'Panama','PA',1),(2487,164,'San Blas','SB',1),(2488,164,'Veraguas','VG',1),(2489,165,'Bougainville','BV',1),(2490,165,'Central','CE',1),(2491,165,'Chimbu','CH',1),(2492,165,'Eastern Highlands','EH',1),(2493,165,'East New Britain','EB',1),(2494,165,'East Sepik','ES',1),(2495,165,'Enga','EN',1),(2496,165,'Gulf','GU',1),(2497,165,'Madang','MD',1),(2498,165,'Manus','MN',1),(2499,165,'Milne Bay','MB',1),(2500,165,'Morobe','MR',1),(2501,165,'National Capital','NC',1),(2502,165,'New Ireland','NI',1),(2503,165,'Northern','NO',1),(2504,165,'Sandaun','SA',1),(2505,165,'Southern Highlands','SH',1),(2506,165,'Western','WE',1),(2507,165,'Western Highlands','WH',1),(2508,165,'West New Britain','WB',1),(2509,166,'Alto Paraguay','AG',1),(2510,166,'Alto Parana','AN',1),(2511,166,'Amambay','AM',1),(2512,166,'Asuncion','AS',1),(2513,166,'Boqueron','BO',1),(2514,166,'Caaguazu','CG',1),(2515,166,'Caazapa','CZ',1),(2516,166,'Canindeyu','CN',1),(2517,166,'Central','CE',1),(2518,166,'Concepcion','CC',1),(2519,166,'Cordillera','CD',1),(2520,166,'Guaira','GU',1),(2521,166,'Itapua','IT',1),(2522,166,'Misiones','MI',1),(2523,166,'Neembucu','NE',1),(2524,166,'Paraguari','PA',1),(2525,166,'Presidente Hayes','PH',1),(2526,166,'San Pedro','SP',1),(2527,167,'Amazonas','AM',1),(2528,167,'Ancash','AN',1),(2529,167,'Apurimac','AP',1),(2530,167,'Arequipa','AR',1),(2531,167,'Ayacucho','AY',1),(2532,167,'Cajamarca','CJ',1),(2533,167,'Callao','CL',1),(2534,167,'Cusco','CU',1),(2535,167,'Huancavelica','HV',1),(2536,167,'Huanuco','HO',1),(2537,167,'Ica','IC',1),(2538,167,'Junin','JU',1),(2539,167,'La Libertad','LD',1),(2540,167,'Lambayeque','LY',1),(2541,167,'Lima','LI',1),(2542,167,'Loreto','LO',1),(2543,167,'Madre de Dios','MD',1),(2544,167,'Moquegua','MO',1),(2545,167,'Pasco','PA',1),(2546,167,'Piura','PI',1),(2547,167,'Puno','PU',1),(2548,167,'San Martin','SM',1),(2549,167,'Tacna','TA',1),(2550,167,'Tumbes','TU',1),(2551,167,'Ucayali','UC',1),(2552,168,'Abra','ABR',1),(2553,168,'Agusan del Norte','ANO',1),(2554,168,'Agusan del Sur','ASU',1),(2555,168,'Aklan','AKL',1),(2556,168,'Albay','ALB',1),(2557,168,'Antique','ANT',1),(2558,168,'Apayao','APY',1),(2559,168,'Aurora','AUR',1),(2560,168,'Basilan','BAS',1),(2561,168,'Bataan','BTA',1),(2562,168,'Batanes','BTE',1),(2563,168,'Batangas','BTG',1),(2564,168,'Biliran','BLR',1),(2565,168,'Benguet','BEN',1),(2566,168,'Bohol','BOL',1),(2567,168,'Bukidnon','BUK',1),(2568,168,'Bulacan','BUL',1),(2569,168,'Cagayan','CAG',1),(2570,168,'Camarines Norte','CNO',1),(2571,168,'Camarines Sur','CSU',1),(2572,168,'Camiguin','CAM',1),(2573,168,'Capiz','CAP',1),(2574,168,'Catanduanes','CAT',1),(2575,168,'Cavite','CAV',1),(2576,168,'Cebu','CEB',1),(2577,168,'Compostela','CMP',1),(2578,168,'Davao del Norte','DNO',1),(2579,168,'Davao del Sur','DSU',1),(2580,168,'Davao Oriental','DOR',1),(2581,168,'Eastern Samar','ESA',1),(2582,168,'Guimaras','GUI',1),(2583,168,'Ifugao','IFU',1),(2584,168,'Ilocos Norte','INO',1),(2585,168,'Ilocos Sur','ISU',1),(2586,168,'Iloilo','ILO',1),(2587,168,'Isabela','ISA',1),(2588,168,'Kalinga','KAL',1),(2589,168,'Laguna','LAG',1),(2590,168,'Lanao del Norte','LNO',1),(2591,168,'Lanao del Sur','LSU',1),(2592,168,'La Union','UNI',1),(2593,168,'Leyte','LEY',1),(2594,168,'Maguindanao','MAG',1),(2595,168,'Marinduque','MRN',1),(2596,168,'Masbate','MSB',1),(2597,168,'Mindoro Occidental','MIC',1),(2598,168,'Mindoro Oriental','MIR',1),(2599,168,'Misamis Occidental','MSC',1),(2600,168,'Misamis Oriental','MOR',1),(2601,168,'Mountain','MOP',1),(2602,168,'Negros Occidental','NOC',1),(2603,168,'Negros Oriental','NOR',1),(2604,168,'North Cotabato','NCT',1),(2605,168,'Northern Samar','NSM',1),(2606,168,'Nueva Ecija','NEC',1),(2607,168,'Nueva Vizcaya','NVZ',1),(2608,168,'Palawan','PLW',1),(2609,168,'Pampanga','PMP',1),(2610,168,'Pangasinan','PNG',1),(2611,168,'Quezon','QZN',1),(2612,168,'Quirino','QRN',1),(2613,168,'Rizal','RIZ',1),(2614,168,'Romblon','ROM',1),(2615,168,'Samar','SMR',1),(2616,168,'Sarangani','SRG',1),(2617,168,'Siquijor','SQJ',1),(2618,168,'Sorsogon','SRS',1),(2619,168,'South Cotabato','SCO',1),(2620,168,'Southern Leyte','SLE',1),(2621,168,'Sultan Kudarat','SKU',1),(2622,168,'Sulu','SLU',1),(2623,168,'Surigao del Norte','SNO',1),(2624,168,'Surigao del Sur','SSU',1),(2625,168,'Tarlac','TAR',1),(2626,168,'Tawi-Tawi','TAW',1),(2627,168,'Zambales','ZBL',1),(2628,168,'Zamboanga del Norte','ZNO',1),(2629,168,'Zamboanga del Sur','ZSU',1),(2630,168,'Zamboanga Sibugay','ZSI',1),(2631,170,'Dolnoslaskie','DO',1),(2632,170,'Kujawsko-Pomorskie','KP',1),(2633,170,'Lodzkie','LO',1),(2634,170,'Lubelskie','LL',1),(2635,170,'Lubuskie','LU',1),(2636,170,'Malopolskie','ML',1),(2637,170,'Mazowieckie','MZ',1),(2638,170,'Opolskie','OP',1),(2639,170,'Podkarpackie','PP',1),(2640,170,'Podlaskie','PL',1),(2641,170,'Pomorskie','PM',1),(2642,170,'Slaskie','SL',1),(2643,170,'Swietokrzyskie','SW',1),(2644,170,'Warminsko-Mazurskie','WM',1),(2645,170,'Wielkopolskie','WP',1),(2646,170,'Zachodniopomorskie','ZA',1),(2647,198,'Saint Pierre','P',1),(2648,198,'Miquelon','M',1),(2649,171,'A&ccedil;ores','AC',1),(2650,171,'Aveiro','AV',1),(2651,171,'Beja','BE',1),(2652,171,'Braga','BR',1),(2653,171,'Bragan&ccedil;a','BA',1),(2654,171,'Castelo Branco','CB',1),(2655,171,'Coimbra','CO',1),(2656,171,'&Eacute;vora','EV',1),(2657,171,'Faro','FA',1),(2658,171,'Guarda','GU',1),(2659,171,'Leiria','LE',1),(2660,171,'Lisboa','LI',1),(2661,171,'Madeira','ME',1),(2662,171,'Portalegre','PO',1),(2663,171,'Porto','PR',1),(2664,171,'Santar&eacute;m','SA',1),(2665,171,'Set&uacute;bal','SE',1),(2666,171,'Viana do Castelo','VC',1),(2667,171,'Vila Real','VR',1),(2668,171,'Viseu','VI',1),(2669,173,'Ad Dawhah','DW',1),(2670,173,'Al Ghuwayriyah','GW',1),(2671,173,'Al Jumayliyah','JM',1),(2672,173,'Al Khawr','KR',1),(2673,173,'Al Wakrah','WK',1),(2674,173,'Ar Rayyan','RN',1),(2675,173,'Jarayan al Batinah','JB',1),(2676,173,'Madinat ash Shamal','MS',1),(2677,173,'Umm Sa\'id','UD',1),(2678,173,'Umm Salal','UL',1),(2679,175,'Alba','AB',1),(2680,175,'Arad','AR',1),(2681,175,'Arges','AG',1),(2682,175,'Bacau','BC',1),(2683,175,'Bihor','BH',1),(2684,175,'Bistrita-Nasaud','BN',1),(2685,175,'Botosani','BT',1),(2686,175,'Brasov','BV',1),(2687,175,'Braila','BR',1),(2688,175,'Bucuresti','B',1),(2689,175,'Buzau','BZ',1),(2690,175,'Caras-Severin','CS',1),(2691,175,'Calarasi','CL',1),(2692,175,'Cluj','CJ',1),(2693,175,'Constanta','CT',1),(2694,175,'Covasna','CV',1),(2695,175,'Dimbovita','DB',1),(2696,175,'Dolj','DJ',1),(2697,175,'Galati','GL',1),(2698,175,'Giurgiu','GR',1),(2699,175,'Gorj','GJ',1),(2700,175,'Harghita','HR',1),(2701,175,'Hunedoara','HD',1),(2702,175,'Ialomita','IL',1),(2703,175,'Iasi','IS',1),(2704,175,'Ilfov','IF',1),(2705,175,'Maramures','MM',1),(2706,175,'Mehedinti','MH',1),(2707,175,'Mures','MS',1),(2708,175,'Neamt','NT',1),(2709,175,'Olt','OT',1),(2710,175,'Prahova','PH',1),(2711,175,'Satu-Mare','SM',1),(2712,175,'Salaj','SJ',1),(2713,175,'Sibiu','SB',1),(2714,175,'Suceava','SV',1),(2715,175,'Teleorman','TR',1),(2716,175,'Timis','TM',1),(2717,175,'Tulcea','TL',1),(2718,175,'Vaslui','VS',1),(2719,175,'Valcea','VL',1),(2720,175,'Vrancea','VN',1),(2721,176,'Abakan','AB',1),(2722,176,'Aginskoye','AG',1),(2723,176,'Anadyr','AN',1),(2724,176,'Arkahangelsk','AR',1),(2725,176,'Astrakhan','AS',1),(2726,176,'Barnaul','BA',1),(2727,176,'Belgorod','BE',1),(2728,176,'Birobidzhan','BI',1),(2729,176,'Blagoveshchensk','BL',1),(2730,176,'Bryansk','BR',1),(2731,176,'Cheboksary','CH',1),(2732,176,'Chelyabinsk','CL',1),(2733,176,'Cherkessk','CR',1),(2734,176,'Chita','CI',1),(2735,176,'Dudinka','DU',1),(2736,176,'Elista','EL',1),(2738,176,'Gorno-Altaysk','GA',1),(2739,176,'Groznyy','GR',1),(2740,176,'Irkutsk','IR',1),(2741,176,'Ivanovo','IV',1),(2742,176,'Izhevsk','IZ',1),(2743,176,'Kalinigrad','KA',1),(2744,176,'Kaluga','KL',1),(2745,176,'Kasnodar','KS',1),(2746,176,'Kazan','KZ',1),(2747,176,'Kemerovo','KE',1),(2748,176,'Khabarovsk','KH',1),(2749,176,'Khanty-Mansiysk','KM',1),(2750,176,'Kostroma','KO',1),(2751,176,'Krasnodar','KR',1),(2752,176,'Krasnoyarsk','KN',1),(2753,176,'Kudymkar','KU',1),(2754,176,'Kurgan','KG',1),(2755,176,'Kursk','KK',1),(2756,176,'Kyzyl','KY',1),(2757,176,'Lipetsk','LI',1),(2758,176,'Magadan','MA',1),(2759,176,'Makhachkala','MK',1),(2760,176,'Maykop','MY',1),(2761,176,'Moscow','MO',1),(2762,176,'Murmansk','MU',1),(2763,176,'Nalchik','NA',1),(2764,176,'Naryan Mar','NR',1),(2765,176,'Nazran','NZ',1),(2766,176,'Nizhniy Novgorod','NI',1),(2767,176,'Novgorod','NO',1),(2768,176,'Novosibirsk','NV',1),(2769,176,'Omsk','OM',1),(2770,176,'Orel','OR',1),(2771,176,'Orenburg','OE',1),(2772,176,'Palana','PA',1),(2773,176,'Penza','PE',1),(2774,176,'Perm','PR',1),(2775,176,'Petropavlovsk-Kamchatskiy','PK',1),(2776,176,'Petrozavodsk','PT',1),(2777,176,'Pskov','PS',1),(2778,176,'Rostov-na-Donu','RO',1),(2779,176,'Ryazan','RY',1),(2780,176,'Salekhard','SL',1),(2781,176,'Samara','SA',1),(2782,176,'Saransk','SR',1),(2783,176,'Saratov','SV',1),(2784,176,'Smolensk','SM',1),(2785,176,'St. Petersburg','SP',1),(2786,176,'Stavropol','ST',1),(2787,176,'Syktyvkar','SY',1),(2788,176,'Tambov','TA',1),(2789,176,'Tomsk','TO',1),(2790,176,'Tula','TU',1),(2791,176,'Tura','TR',1),(2792,176,'Tver','TV',1),(2793,176,'Tyumen','TY',1),(2794,176,'Ufa','UF',1),(2795,176,'Ul\'yanovsk','UL',1),(2796,176,'Ulan-Ude','UU',1),(2797,176,'Ust\'-Ordynskiy','US',1),(2798,176,'Vladikavkaz','VL',1),(2799,176,'Vladimir','VA',1),(2800,176,'Vladivostok','VV',1),(2801,176,'Volgograd','VG',1),(2802,176,'Vologda','VD',1),(2803,176,'Voronezh','VO',1),(2804,176,'Vyatka','VY',1),(2805,176,'Yakutsk','YA',1),(2806,176,'Yaroslavl','YR',1),(2807,176,'Yekaterinburg','YE',1),(2808,176,'Yoshkar-Ola','YO',1),(2809,177,'Butare','BU',1),(2810,177,'Byumba','BY',1),(2811,177,'Cyangugu','CY',1),(2812,177,'Gikongoro','GK',1),(2813,177,'Gisenyi','GS',1),(2814,177,'Gitarama','GT',1),(2815,177,'Kibungo','KG',1),(2816,177,'Kibuye','KY',1),(2817,177,'Kigali Rurale','KR',1),(2818,177,'Kigali-ville','KV',1),(2819,177,'Ruhengeri','RU',1),(2820,177,'Umutara','UM',1),(2821,178,'Christ Church Nichola Town','CCN',1),(2822,178,'Saint Anne Sandy Point','SAS',1),(2823,178,'Saint George Basseterre','SGB',1),(2824,178,'Saint George Gingerland','SGG',1),(2825,178,'Saint James Windward','SJW',1),(2826,178,'Saint John Capesterre','SJC',1),(2827,178,'Saint John Figtree','SJF',1),(2828,178,'Saint Mary Cayon','SMC',1),(2829,178,'Saint Paul Capesterre','CAP',1),(2830,178,'Saint Paul Charlestown','CHA',1),(2831,178,'Saint Peter Basseterre','SPB',1),(2832,178,'Saint Thomas Lowland','STL',1),(2833,178,'Saint Thomas Middle Island','STM',1),(2834,178,'Trinity Palmetto Point','TPP',1),(2835,179,'Anse-la-Raye','AR',1),(2836,179,'Castries','CA',1),(2837,179,'Choiseul','CH',1),(2838,179,'Dauphin','DA',1),(2839,179,'Dennery','DE',1),(2840,179,'Gros-Islet','GI',1),(2841,179,'Laborie','LA',1),(2842,179,'Micoud','MI',1),(2843,179,'Praslin','PR',1),(2844,179,'Soufriere','SO',1),(2845,179,'Vieux-Fort','VF',1),(2846,180,'Charlotte','C',1),(2847,180,'Grenadines','R',1),(2848,180,'Saint Andrew','A',1),(2849,180,'Saint David','D',1),(2850,180,'Saint George','G',1),(2851,180,'Saint Patrick','P',1),(2852,181,'A\'ana','AN',1),(2853,181,'Aiga-i-le-Tai','AI',1),(2854,181,'Atua','AT',1),(2855,181,'Fa\'asaleleaga','FA',1),(2856,181,'Gaga\'emauga','GE',1),(2857,181,'Gagaifomauga','GF',1),(2858,181,'Palauli','PA',1),(2859,181,'Satupa\'itea','SA',1),(2860,181,'Tuamasaga','TU',1),(2861,181,'Va\'a-o-Fonoti','VF',1),(2862,181,'Vaisigano','VS',1),(2863,182,'Acquaviva','AC',1),(2864,182,'Borgo Maggiore','BM',1),(2865,182,'Chiesanuova','CH',1),(2866,182,'Domagnano','DO',1),(2867,182,'Faetano','FA',1),(2868,182,'Fiorentino','FI',1),(2869,182,'Montegiardino','MO',1),(2870,182,'Citta di San Marino','SM',1),(2871,182,'Serravalle','SE',1),(2872,183,'Sao Tome','S',1),(2873,183,'Principe','P',1),(2874,184,'Al Bahah','BH',1),(2875,184,'Al Hudud ash Shamaliyah','HS',1),(2876,184,'Al Jawf','JF',1),(2877,184,'Al Madinah','MD',1),(2878,184,'Al Qasim','QS',1),(2879,184,'Ar Riyad','RD',1),(2880,184,'Ash Sharqiyah (Eastern)','AQ',1),(2881,184,'\'Asir','AS',1),(2882,184,'Ha\'il','HL',1),(2883,184,'Jizan','JZ',1),(2884,184,'Makkah','ML',1),(2885,184,'Najran','NR',1),(2886,184,'Tabuk','TB',1),(2887,185,'Dakar','DA',1),(2888,185,'Diourbel','DI',1),(2889,185,'Fatick','FA',1),(2890,185,'Kaolack','KA',1),(2891,185,'Kolda','KO',1),(2892,185,'Louga','LO',1),(2893,185,'Matam','MA',1),(2894,185,'Saint-Louis','SL',1),(2895,185,'Tambacounda','TA',1),(2896,185,'Thies','TH',1),(2897,185,'Ziguinchor','ZI',1),(2898,186,'Anse aux Pins','AP',1),(2899,186,'Anse Boileau','AB',1),(2900,186,'Anse Etoile','AE',1),(2901,186,'Anse Louis','AL',1),(2902,186,'Anse Royale','AR',1),(2903,186,'Baie Lazare','BL',1),(2904,186,'Baie Sainte Anne','BS',1),(2905,186,'Beau Vallon','BV',1),(2906,186,'Bel Air','BA',1),(2907,186,'Bel Ombre','BO',1),(2908,186,'Cascade','CA',1),(2909,186,'Glacis','GL',1),(2910,186,'Grand\' Anse (on Mahe)','GM',1),(2911,186,'Grand\' Anse (on Praslin)','GP',1),(2912,186,'La Digue','DG',1),(2913,186,'La Riviere Anglaise','RA',1),(2914,186,'Mont Buxton','MB',1),(2915,186,'Mont Fleuri','MF',1),(2916,186,'Plaisance','PL',1),(2917,186,'Pointe La Rue','PR',1),(2918,186,'Port Glaud','PG',1),(2919,186,'Saint Louis','SL',1),(2920,186,'Takamaka','TA',1),(2921,187,'Eastern','E',1),(2922,187,'Northern','N',1),(2923,187,'Southern','S',1),(2924,187,'Western','W',1),(2925,189,'Banskobystrický','BA',1),(2926,189,'Bratislavský','BR',1),(2927,189,'Košický','KO',1),(2928,189,'Nitriansky','NI',1),(2929,189,'Prešovský','PR',1),(2930,189,'Trenčiansky','TC',1),(2931,189,'Trnavský','TV',1),(2932,189,'Žilinský','ZI',1),(2933,191,'Central','CE',1),(2934,191,'Choiseul','CH',1),(2935,191,'Guadalcanal','GC',1),(2936,191,'Honiara','HO',1),(2937,191,'Isabel','IS',1),(2938,191,'Makira','MK',1),(2939,191,'Malaita','ML',1),(2940,191,'Rennell and Bellona','RB',1),(2941,191,'Temotu','TM',1),(2942,191,'Western','WE',1),(2943,192,'Awdal','AW',1),(2944,192,'Bakool','BK',1),(2945,192,'Banaadir','BN',1),(2946,192,'Bari','BR',1),(2947,192,'Bay','BY',1),(2948,192,'Galguduud','GA',1),(2949,192,'Gedo','GE',1),(2950,192,'Hiiraan','HI',1),(2951,192,'Jubbada Dhexe','JD',1),(2952,192,'Jubbada Hoose','JH',1),(2953,192,'Mudug','MU',1),(2954,192,'Nugaal','NU',1),(2955,192,'Sanaag','SA',1),(2956,192,'Shabeellaha Dhexe','SD',1),(2957,192,'Shabeellaha Hoose','SH',1),(2958,192,'Sool','SL',1),(2959,192,'Togdheer','TO',1),(2960,192,'Woqooyi Galbeed','WG',1),(2961,193,'Eastern Cape','EC',1),(2962,193,'Free State','FS',1),(2963,193,'Gauteng','GT',1),(2964,193,'KwaZulu-Natal','KN',1),(2965,193,'Limpopo','LP',1),(2966,193,'Mpumalanga','MP',1),(2967,193,'North West','NW',1),(2968,193,'Northern Cape','NC',1),(2969,193,'Western Cape','WC',1),(2970,195,'La Coru&ntilde;a','CA',1),(2971,195,'&Aacute;lava','AL',1),(2972,195,'Albacete','AB',1),(2973,195,'Alicante','AC',1),(2974,195,'Almeria','AM',1),(2975,195,'Asturias','AS',1),(2976,195,'&Aacute;vila','AV',1),(2977,195,'Badajoz','BJ',1),(2978,195,'Baleares','IB',1),(2979,195,'Barcelona','BA',1),(2980,195,'Burgos','BU',1),(2981,195,'C&aacute;ceres','CC',1),(2982,195,'C&aacute;diz','CZ',1),(2983,195,'Cantabria','CT',1),(2984,195,'Castell&oacute;n','CL',1),(2985,195,'Ceuta','CE',1),(2986,195,'Ciudad Real','CR',1),(2987,195,'C&oacute;rdoba','CD',1),(2988,195,'Cuenca','CU',1),(2989,195,'Girona','GI',1),(2990,195,'Granada','GD',1),(2991,195,'Guadalajara','GJ',1),(2992,195,'Guip&uacute;zcoa','GP',1),(2993,195,'Huelva','HL',1),(2994,195,'Huesca','HS',1),(2995,195,'Ja&eacute;n','JN',1),(2996,195,'La Rioja','RJ',1),(2997,195,'Las Palmas','PM',1),(2998,195,'Leon','LE',1),(2999,195,'Lleida','LL',1),(3000,195,'Lugo','LG',1),(3001,195,'Madrid','MD',1),(3002,195,'Malaga','MA',1),(3003,195,'Melilla','ML',1),(3004,195,'Murcia','MU',1),(3005,195,'Navarra','NV',1),(3006,195,'Ourense','OU',1),(3007,195,'Palencia','PL',1),(3008,195,'Pontevedra','PO',1),(3009,195,'Salamanca','SL',1),(3010,195,'Santa Cruz de Tenerife','SC',1),(3011,195,'Segovia','SG',1),(3012,195,'Sevilla','SV',1),(3013,195,'Soria','SO',1),(3014,195,'Tarragona','TA',1),(3015,195,'Teruel','TE',1),(3016,195,'Toledo','TO',1),(3017,195,'Valencia','VC',1),(3018,195,'Valladolid','VD',1),(3019,195,'Vizcaya','VZ',1),(3020,195,'Zamora','ZM',1),(3021,195,'Zaragoza','ZR',1),(3022,196,'Central','CE',1),(3023,196,'Eastern','EA',1),(3024,196,'North Central','NC',1),(3025,196,'Northern','NO',1),(3026,196,'North Western','NW',1),(3027,196,'Sabaragamuwa','SA',1),(3028,196,'Southern','SO',1),(3029,196,'Uva','UV',1),(3030,196,'Western','WE',1),(3032,197,'Saint Helena','S',1),(3034,199,'A\'ali an Nil','ANL',1),(3035,199,'Al Bahr al Ahmar','BAM',1),(3036,199,'Al Buhayrat','BRT',1),(3037,199,'Al Jazirah','JZR',1),(3038,199,'Al Khartum','KRT',1),(3039,199,'Al Qadarif','QDR',1),(3040,199,'Al Wahdah','WDH',1),(3041,199,'An Nil al Abyad','ANB',1),(3042,199,'An Nil al Azraq','ANZ',1),(3043,199,'Ash Shamaliyah','ASH',1),(3044,199,'Bahr al Jabal','BJA',1),(3045,199,'Gharb al Istiwa\'iyah','GIS',1),(3046,199,'Gharb Bahr al Ghazal','GBG',1),(3047,199,'Gharb Darfur','GDA',1),(3048,199,'Gharb Kurdufan','GKU',1),(3049,199,'Janub Darfur','JDA',1),(3050,199,'Janub Kurdufan','JKU',1),(3051,199,'Junqali','JQL',1),(3052,199,'Kassala','KSL',1),(3053,199,'Nahr an Nil','NNL',1),(3054,199,'Shamal Bahr al Ghazal','SBG',1),(3055,199,'Shamal Darfur','SDA',1),(3056,199,'Shamal Kurdufan','SKU',1),(3057,199,'Sharq al Istiwa\'iyah','SIS',1),(3058,199,'Sinnar','SNR',1),(3059,199,'Warab','WRB',1),(3060,200,'Brokopondo','BR',1),(3061,200,'Commewijne','CM',1),(3062,200,'Coronie','CR',1),(3063,200,'Marowijne','MA',1),(3064,200,'Nickerie','NI',1),(3065,200,'Para','PA',1),(3066,200,'Paramaribo','PM',1),(3067,200,'Saramacca','SA',1),(3068,200,'Sipaliwini','SI',1),(3069,200,'Wanica','WA',1),(3070,202,'Hhohho','H',1),(3071,202,'Lubombo','L',1),(3072,202,'Manzini','M',1),(3073,202,'Shishelweni','S',1),(3074,203,'Blekinge','K',1),(3075,203,'Dalarna','W',1),(3076,203,'Gävleborg','X',1),(3077,203,'Gotland','I',1),(3078,203,'Halland','N',1),(3079,203,'Jämtland','Z',1),(3080,203,'Jönköping','F',1),(3081,203,'Kalmar','H',1),(3082,203,'Kronoberg','G',1),(3083,203,'Norrbotten','BD',1),(3084,203,'Örebro','T',1),(3085,203,'Östergötland','E',1),(3086,203,'Sk&aring;ne','M',1),(3087,203,'Södermanland','D',1),(3088,203,'Stockholm','AB',1),(3089,203,'Uppsala','C',1),(3090,203,'Värmland','S',1),(3091,203,'Västerbotten','AC',1),(3092,203,'Västernorrland','Y',1),(3093,203,'Västmanland','U',1),(3094,203,'Västra Götaland','O',1),(3095,204,'Aargau','AG',1),(3096,204,'Appenzell Ausserrhoden','AR',1),(3097,204,'Appenzell Innerrhoden','AI',1),(3098,204,'Basel-Stadt','BS',1),(3099,204,'Basel-Landschaft','BL',1),(3100,204,'Bern','BE',1),(3101,204,'Fribourg','FR',1),(3102,204,'Gen&egrave;ve','GE',1),(3103,204,'Glarus','GL',1),(3104,204,'Graubünden','GR',1),(3105,204,'Jura','JU',1),(3106,204,'Luzern','LU',1),(3107,204,'Neuch&acirc;tel','NE',1),(3108,204,'Nidwald','NW',1),(3109,204,'Obwald','OW',1),(3110,204,'St. Gallen','SG',1),(3111,204,'Schaffhausen','SH',1),(3112,204,'Schwyz','SZ',1),(3113,204,'Solothurn','SO',1),(3114,204,'Thurgau','TG',1),(3115,204,'Ticino','TI',1),(3116,204,'Uri','UR',1),(3117,204,'Valais','VS',1),(3118,204,'Vaud','VD',1),(3119,204,'Zug','ZG',1),(3120,204,'Zürich','ZH',1),(3121,205,'Al Hasakah','HA',1),(3122,205,'Al Ladhiqiyah','LA',1),(3123,205,'Al Qunaytirah','QU',1),(3124,205,'Ar Raqqah','RQ',1),(3125,205,'As Suwayda','SU',1),(3126,205,'Dara','DA',1),(3127,205,'Dayr az Zawr','DZ',1),(3128,205,'Dimashq','DI',1),(3129,205,'Halab','HL',1),(3130,205,'Hamah','HM',1),(3131,205,'Hims','HI',1),(3132,205,'Idlib','ID',1),(3133,205,'Rif Dimashq','RD',1),(3134,205,'Tartus','TA',1),(3135,206,'Chang-hua','CH',1),(3136,206,'Chia-i','CI',1),(3137,206,'Hsin-chu','HS',1),(3138,206,'Hua-lien','HL',1),(3139,206,'I-lan','IL',1),(3140,206,'Kao-hsiung county','KH',1),(3141,206,'Kin-men','KM',1),(3142,206,'Lien-chiang','LC',1),(3143,206,'Miao-li','ML',1),(3144,206,'Nan-t\'ou','NT',1),(3145,206,'P\'eng-hu','PH',1),(3146,206,'P\'ing-tung','PT',1),(3147,206,'T\'ai-chung','TG',1),(3148,206,'T\'ai-nan','TA',1),(3149,206,'T\'ai-pei county','TP',1),(3150,206,'T\'ai-tung','TT',1),(3151,206,'T\'ao-yuan','TY',1),(3152,206,'Yun-lin','YL',1),(3153,206,'Chia-i city','CC',1),(3154,206,'Chi-lung','CL',1),(3155,206,'Hsin-chu','HC',1),(3156,206,'T\'ai-chung','TH',1),(3157,206,'T\'ai-nan','TN',1),(3158,206,'Kao-hsiung city','KC',1),(3159,206,'T\'ai-pei city','TC',1),(3160,207,'Gorno-Badakhstan','GB',1),(3161,207,'Khatlon','KT',1),(3162,207,'Sughd','SU',1),(3163,208,'Arusha','AR',1),(3164,208,'Dar es Salaam','DS',1),(3165,208,'Dodoma','DO',1),(3166,208,'Iringa','IR',1),(3167,208,'Kagera','KA',1),(3168,208,'Kigoma','KI',1),(3169,208,'Kilimanjaro','KJ',1),(3170,208,'Lindi','LN',1),(3171,208,'Manyara','MY',1),(3172,208,'Mara','MR',1),(3173,208,'Mbeya','MB',1),(3174,208,'Morogoro','MO',1),(3175,208,'Mtwara','MT',1),(3176,208,'Mwanza','MW',1),(3177,208,'Pemba North','PN',1),(3178,208,'Pemba South','PS',1),(3179,208,'Pwani','PW',1),(3180,208,'Rukwa','RK',1),(3181,208,'Ruvuma','RV',1),(3182,208,'Shinyanga','SH',1),(3183,208,'Singida','SI',1),(3184,208,'Tabora','TB',1),(3185,208,'Tanga','TN',1),(3186,208,'Zanzibar Central/South','ZC',1),(3187,208,'Zanzibar North','ZN',1),(3188,208,'Zanzibar Urban/West','ZU',1),(3189,209,'Amnat Charoen','Amnat Charoen',1),(3190,209,'Ang Thong','Ang Thong',1),(3191,209,'Ayutthaya','Ayutthaya',1),(3192,209,'Bangkok','Bangkok',1),(3193,209,'Buriram','Buriram',1),(3194,209,'Chachoengsao','Chachoengsao',1),(3195,209,'Chai Nat','Chai Nat',1),(3196,209,'Chaiyaphum','Chaiyaphum',1),(3197,209,'Chanthaburi','Chanthaburi',1),(3198,209,'Chiang Mai','Chiang Mai',1),(3199,209,'Chiang Rai','Chiang Rai',1),(3200,209,'Chon Buri','Chon Buri',1),(3201,209,'Chumphon','Chumphon',1),(3202,209,'Kalasin','Kalasin',1),(3203,209,'Kamphaeng Phet','Kamphaeng Phet',1),(3204,209,'Kanchanaburi','Kanchanaburi',1),(3205,209,'Khon Kaen','Khon Kaen',1),(3206,209,'Krabi','Krabi',1),(3207,209,'Lampang','Lampang',1),(3208,209,'Lamphun','Lamphun',1),(3209,209,'Loei','Loei',1),(3210,209,'Lop Buri','Lop Buri',1),(3211,209,'Mae Hong Son','Mae Hong Son',1),(3212,209,'Maha Sarakham','Maha Sarakham',1),(3213,209,'Mukdahan','Mukdahan',1),(3214,209,'Nakhon Nayok','Nakhon Nayok',1),(3215,209,'Nakhon Pathom','Nakhon Pathom',1),(3216,209,'Nakhon Phanom','Nakhon Phanom',1),(3217,209,'Nakhon Ratchasima','Nakhon Ratchasima',1),(3218,209,'Nakhon Sawan','Nakhon Sawan',1),(3219,209,'Nakhon Si Thammarat','Nakhon Si Thammarat',1),(3220,209,'Nan','Nan',1),(3221,209,'Narathiwat','Narathiwat',1),(3222,209,'Nong Bua Lamphu','Nong Bua Lamphu',1),(3223,209,'Nong Khai','Nong Khai',1),(3224,209,'Nonthaburi','Nonthaburi',1),(3225,209,'Pathum Thani','Pathum Thani',1),(3226,209,'Pattani','Pattani',1),(3227,209,'Phangnga','Phangnga',1),(3228,209,'Phatthalung','Phatthalung',1),(3229,209,'Phayao','Phayao',1),(3230,209,'Phetchabun','Phetchabun',1),(3231,209,'Phetchaburi','Phetchaburi',1),(3232,209,'Phichit','Phichit',1),(3233,209,'Phitsanulok','Phitsanulok',1),(3234,209,'Phrae','Phrae',1),(3235,209,'Phuket','Phuket',1),(3236,209,'Prachin Buri','Prachin Buri',1),(3237,209,'Prachuap Khiri Khan','Prachuap Khiri Khan',1),(3238,209,'Ranong','Ranong',1),(3239,209,'Ratchaburi','Ratchaburi',1),(3240,209,'Rayong','Rayong',1),(3241,209,'Roi Et','Roi Et',1),(3242,209,'Sa Kaeo','Sa Kaeo',1),(3243,209,'Sakon Nakhon','Sakon Nakhon',1),(3244,209,'Samut Prakan','Samut Prakan',1),(3245,209,'Samut Sakhon','Samut Sakhon',1),(3246,209,'Samut Songkhram','Samut Songkhram',1),(3247,209,'Sara Buri','Sara Buri',1),(3248,209,'Satun','Satun',1),(3249,209,'Sing Buri','Sing Buri',1),(3250,209,'Sisaket','Sisaket',1),(3251,209,'Songkhla','Songkhla',1),(3252,209,'Sukhothai','Sukhothai',1),(3253,209,'Suphan Buri','Suphan Buri',1),(3254,209,'Surat Thani','Surat Thani',1),(3255,209,'Surin','Surin',1),(3256,209,'Tak','Tak',1),(3257,209,'Trang','Trang',1),(3258,209,'Trat','Trat',1),(3259,209,'Ubon Ratchathani','Ubon Ratchathani',1),(3260,209,'Udon Thani','Udon Thani',1),(3261,209,'Uthai Thani','Uthai Thani',1),(3262,209,'Uttaradit','Uttaradit',1),(3263,209,'Yala','Yala',1),(3264,209,'Yasothon','Yasothon',1),(3265,210,'Kara','K',1),(3266,210,'Plateaux','P',1),(3267,210,'Savanes','S',1),(3268,210,'Centrale','C',1),(3269,210,'Maritime','M',1),(3270,211,'Atafu','A',1),(3271,211,'Fakaofo','F',1),(3272,211,'Nukunonu','N',1),(3273,212,'Ha\'apai','H',1),(3274,212,'Tongatapu','T',1),(3275,212,'Vava\'u','V',1),(3276,213,'Couva/Tabaquite/Talparo','CT',1),(3277,213,'Diego Martin','DM',1),(3278,213,'Mayaro/Rio Claro','MR',1),(3279,213,'Penal/Debe','PD',1),(3280,213,'Princes Town','PT',1),(3281,213,'Sangre Grande','SG',1),(3282,213,'San Juan/Laventille','SL',1),(3283,213,'Siparia','SI',1),(3284,213,'Tunapuna/Piarco','TP',1),(3285,213,'Port of Spain','PS',1),(3286,213,'San Fernando','SF',1),(3287,213,'Arima','AR',1),(3288,213,'Point Fortin','PF',1),(3289,213,'Chaguanas','CH',1),(3290,213,'Tobago','TO',1),(3291,214,'Ariana','AR',1),(3292,214,'Beja','BJ',1),(3293,214,'Ben Arous','BA',1),(3294,214,'Bizerte','BI',1),(3295,214,'Gabes','GB',1),(3296,214,'Gafsa','GF',1),(3297,214,'Jendouba','JE',1),(3298,214,'Kairouan','KR',1),(3299,214,'Kasserine','KS',1),(3300,214,'Kebili','KB',1),(3301,214,'Kef','KF',1),(3302,214,'Mahdia','MH',1),(3303,214,'Manouba','MN',1),(3304,214,'Medenine','ME',1),(3305,214,'Monastir','MO',1),(3306,214,'Nabeul','NA',1),(3307,214,'Sfax','SF',1),(3308,214,'Sidi','SD',1),(3309,214,'Siliana','SL',1),(3310,214,'Sousse','SO',1),(3311,214,'Tataouine','TA',1),(3312,214,'Tozeur','TO',1),(3313,214,'Tunis','TU',1),(3314,214,'Zaghouan','ZA',1),(3315,215,'Adana','ADA',1),(3316,215,'Adıyaman','ADI',1),(3317,215,'Afyonkarahisar','AFY',1),(3318,215,'Ağrı','AGR',1),(3319,215,'Aksaray','AKS',1),(3320,215,'Amasya','AMA',1),(3321,215,'Ankara','ANK',1),(3322,215,'Antalya','ANT',1),(3323,215,'Ardahan','ARD',1),(3324,215,'Artvin','ART',1),(3325,215,'Aydın','AYI',1),(3326,215,'Balıkesir','BAL',1),(3327,215,'Bartın','BAR',1),(3328,215,'Batman','BAT',1),(3329,215,'Bayburt','BAY',1),(3330,215,'Bilecik','BIL',1),(3331,215,'Bingöl','BIN',1),(3332,215,'Bitlis','BIT',1),(3333,215,'Bolu','BOL',1),(3334,215,'Burdur','BRD',1),(3335,215,'Bursa','BRS',1),(3336,215,'Çanakkale','CKL',1),(3337,215,'Çankırı','CKR',1),(3338,215,'Çorum','COR',1),(3339,215,'Denizli','DEN',1),(3340,215,'Diyarbakır','DIY',1),(3341,215,'Düzce','DUZ',1),(3342,215,'Edirne','EDI',1),(3343,215,'Elazığ','ELA',1),(3344,215,'Erzincan','EZC',1),(3345,215,'Erzurum','EZR',1),(3346,215,'Eskişehir','ESK',1),(3347,215,'Gaziantep','GAZ',1),(3348,215,'Giresun','GIR',1),(3349,215,'Gümüşhane','GMS',1),(3350,215,'Hakkari','HKR',1),(3351,215,'Hatay','HTY',1),(3352,215,'Iğdır','IGD',1),(3353,215,'Isparta','ISP',1),(3354,215,'İstanbul','IST',1),(3355,215,'İzmir','IZM',1),(3356,215,'Kahramanmaraş','KAH',1),(3357,215,'Karabük','KRB',1),(3358,215,'Karaman','KRM',1),(3359,215,'Kars','KRS',1),(3360,215,'Kastamonu','KAS',1),(3361,215,'Kayseri','KAY',1),(3362,215,'Kilis','KLS',1),(3363,215,'Kırıkkale','KRK',1),(3364,215,'Kırklareli','KLR',1),(3365,215,'Kırşehir','KRH',1),(3366,215,'Kocaeli','KOC',1),(3367,215,'Konya','KON',1),(3368,215,'Kütahya','KUT',1),(3369,215,'Malatya','MAL',1),(3370,215,'Manisa','MAN',1),(3371,215,'Mardin','MAR',1),(3372,215,'Mersin','MER',1),(3373,215,'Muğla','MUG',1),(3374,215,'Muş','MUS',1),(3375,215,'Nevşehir','NEV',1),(3376,215,'Niğde','NIG',1),(3377,215,'Ordu','ORD',1),(3378,215,'Osmaniye','OSM',1),(3379,215,'Rize','RIZ',1),(3380,215,'Sakarya','SAK',1),(3381,215,'Samsun','SAM',1),(3382,215,'Şanlıurfa','SAN',1),(3383,215,'Siirt','SII',1),(3384,215,'Sinop','SIN',1),(3385,215,'Şırnak','SIR',1),(3386,215,'Sivas','SIV',1),(3387,215,'Tekirdağ','TEL',1),(3388,215,'Tokat','TOK',1),(3389,215,'Trabzon','TRA',1),(3390,215,'Tunceli','TUN',1),(3391,215,'Uşak','USK',1),(3392,215,'Van','VAN',1),(3393,215,'Yalova','YAL',1),(3394,215,'Yozgat','YOZ',1),(3395,215,'Zonguldak','ZON',1),(3396,216,'Ahal Welayaty','A',1),(3397,216,'Balkan Welayaty','B',1),(3398,216,'Dashhowuz Welayaty','D',1),(3399,216,'Lebap Welayaty','L',1),(3400,216,'Mary Welayaty','M',1),(3401,217,'Ambergris Cays','AC',1),(3402,217,'Dellis Cay','DC',1),(3403,217,'French Cay','FC',1),(3404,217,'Little Water Cay','LW',1),(3405,217,'Parrot Cay','RC',1),(3406,217,'Pine Cay','PN',1),(3407,217,'Salt Cay','SL',1),(3408,217,'Grand Turk','GT',1),(3409,217,'South Caicos','SC',1),(3410,217,'East Caicos','EC',1),(3411,217,'Middle Caicos','MC',1),(3412,217,'North Caicos','NC',1),(3413,217,'Providenciales','PR',1),(3414,217,'West Caicos','WC',1),(3415,218,'Nanumanga','NMG',1),(3416,218,'Niulakita','NLK',1),(3417,218,'Niutao','NTO',1),(3418,218,'Funafuti','FUN',1),(3419,218,'Nanumea','NME',1),(3420,218,'Nui','NUI',1),(3421,218,'Nukufetau','NFT',1),(3422,218,'Nukulaelae','NLL',1),(3423,218,'Vaitupu','VAI',1),(3424,219,'Kalangala','KAL',1),(3425,219,'Kampala','KMP',1),(3426,219,'Kayunga','KAY',1),(3427,219,'Kiboga','KIB',1),(3428,219,'Luwero','LUW',1),(3429,219,'Masaka','MAS',1),(3430,219,'Mpigi','MPI',1),(3431,219,'Mubende','MUB',1),(3432,219,'Mukono','MUK',1),(3433,219,'Nakasongola','NKS',1),(3434,219,'Rakai','RAK',1),(3435,219,'Sembabule','SEM',1),(3436,219,'Wakiso','WAK',1),(3437,219,'Bugiri','BUG',1),(3438,219,'Busia','BUS',1),(3439,219,'Iganga','IGA',1),(3440,219,'Jinja','JIN',1),(3441,219,'Kaberamaido','KAB',1),(3442,219,'Kamuli','KML',1),(3443,219,'Kapchorwa','KPC',1),(3444,219,'Katakwi','KTK',1),(3445,219,'Kumi','KUM',1),(3446,219,'Mayuge','MAY',1),(3447,219,'Mbale','MBA',1),(3448,219,'Pallisa','PAL',1),(3449,219,'Sironko','SIR',1),(3450,219,'Soroti','SOR',1),(3451,219,'Tororo','TOR',1),(3452,219,'Adjumani','ADJ',1),(3453,219,'Apac','APC',1),(3454,219,'Arua','ARU',1),(3455,219,'Gulu','GUL',1),(3456,219,'Kitgum','KIT',1),(3457,219,'Kotido','KOT',1),(3458,219,'Lira','LIR',1),(3459,219,'Moroto','MRT',1),(3460,219,'Moyo','MOY',1),(3461,219,'Nakapiripirit','NAK',1),(3462,219,'Nebbi','NEB',1),(3463,219,'Pader','PAD',1),(3464,219,'Yumbe','YUM',1),(3465,219,'Bundibugyo','BUN',1),(3466,219,'Bushenyi','BSH',1),(3467,219,'Hoima','HOI',1),(3468,219,'Kabale','KBL',1),(3469,219,'Kabarole','KAR',1),(3470,219,'Kamwenge','KAM',1),(3471,219,'Kanungu','KAN',1),(3472,219,'Kasese','KAS',1),(3473,219,'Kibaale','KBA',1),(3474,219,'Kisoro','KIS',1),(3475,219,'Kyenjojo','KYE',1),(3476,219,'Masindi','MSN',1),(3477,219,'Mbarara','MBR',1),(3478,219,'Ntungamo','NTU',1),(3479,219,'Rukungiri','RUK',1),(3480,220,'Cherkas\'ka Oblast\'','71',1),(3481,220,'Chernihivs\'ka Oblast\'','74',1),(3482,220,'Chernivets\'ka Oblast\'','77',1),(3483,220,'Crimea','43',1),(3484,220,'Dnipropetrovs\'ka Oblast\'','12',1),(3485,220,'Donets\'ka Oblast\'','14',1),(3486,220,'Ivano-Frankivs\'ka Oblast\'','26',1),(3487,220,'Khersons\'ka Oblast\'','65',1),(3488,220,'Khmel\'nyts\'ka Oblast\'','68',1),(3489,220,'Kirovohrads\'ka Oblast\'','35',1),(3490,220,'Kyiv','30',1),(3491,220,'Kyivs\'ka Oblast\'','32',1),(3492,220,'Luhans\'ka Oblast\'','09',1),(3493,220,'L\'vivs\'ka Oblast\'','46',1),(3494,220,'Mykolayivs\'ka Oblast\'','48',1),(3495,220,'Odes\'ka Oblast\'','51',1),(3496,220,'Poltavs\'ka Oblast\'','53',1),(3497,220,'Rivnens\'ka Oblast\'','56',1),(3498,220,'Sevastopol\'','40',1),(3499,220,'Sums\'ka Oblast\'','59',1),(3500,220,'Ternopil\'s\'ka Oblast\'','61',1),(3501,220,'Vinnyts\'ka Oblast\'','05',1),(3502,220,'Volyns\'ka Oblast\'','07',1),(3503,220,'Zakarpats\'ka Oblast\'','21',1),(3504,220,'Zaporiz\'ka Oblast\'','23',1),(3505,220,'Zhytomyrs\'ka oblast\'','18',1),(3506,221,'Abu Dhabi','ADH',1),(3507,221,'\'Ajman','AJ',1),(3508,221,'Al Fujayrah','FU',1),(3509,221,'Ash Shariqah','SH',1),(3510,221,'Dubai','DU',1),(3511,221,'R\'as al Khaymah','RK',1),(3512,221,'Umm al Qaywayn','UQ',1),(3513,222,'Aberdeen','ABN',1),(3514,222,'Aberdeenshire','ABNS',1),(3515,222,'Anglesey','ANG',1),(3516,222,'Angus','AGS',1),(3517,222,'Argyll and Bute','ARY',1),(3518,222,'Bedfordshire','BEDS',1),(3519,222,'Berkshire','BERKS',1),(3520,222,'Blaenau Gwent','BLA',1),(3521,222,'Bridgend','BRI',1),(3522,222,'Bristol','BSTL',1),(3523,222,'Buckinghamshire','BUCKS',1),(3524,222,'Caerphilly','CAE',1),(3525,222,'Cambridgeshire','CAMBS',1),(3526,222,'Cardiff','CDF',1),(3527,222,'Carmarthenshire','CARM',1),(3528,222,'Ceredigion','CDGN',1),(3529,222,'Cheshire','CHES',1),(3530,222,'Clackmannanshire','CLACK',1),(3531,222,'Conwy','CON',1),(3532,222,'Cornwall','CORN',1),(3533,222,'Denbighshire','DNBG',1),(3534,222,'Derbyshire','DERBY',1),(3535,222,'Devon','DVN',1),(3536,222,'Dorset','DOR',1),(3537,222,'Dumfries and Galloway','DGL',1),(3538,222,'Dundee','DUND',1),(3539,222,'Durham','DHM',1),(3540,222,'East Ayrshire','ARYE',1),(3541,222,'East Dunbartonshire','DUNBE',1),(3542,222,'East Lothian','LOTE',1),(3543,222,'East Renfrewshire','RENE',1),(3544,222,'East Riding of Yorkshire','ERYS',1),(3545,222,'East Sussex','SXE',1),(3546,222,'Edinburgh','EDIN',1),(3547,222,'Essex','ESX',1),(3548,222,'Falkirk','FALK',1),(3549,222,'Fife','FFE',1),(3550,222,'Flintshire','FLINT',1),(3551,222,'Glasgow','GLAS',1),(3552,222,'Gloucestershire','GLOS',1),(3553,222,'Greater London','LDN',1),(3554,222,'Greater Manchester','MCH',1),(3555,222,'Gwynedd','GDD',1),(3556,222,'Hampshire','HANTS',1),(3557,222,'Herefordshire','HWR',1),(3558,222,'Hertfordshire','HERTS',1),(3559,222,'Highlands','HLD',1),(3560,222,'Inverclyde','IVER',1),(3561,222,'Isle of Wight','IOW',1),(3562,222,'Kent','KNT',1),(3563,222,'Lancashire','LANCS',1),(3564,222,'Leicestershire','LEICS',1),(3565,222,'Lincolnshire','LINCS',1),(3566,222,'Merseyside','MSY',1),(3567,222,'Merthyr Tydfil','MERT',1),(3568,222,'Midlothian','MLOT',1),(3569,222,'Monmouthshire','MMOUTH',1),(3570,222,'Moray','MORAY',1),(3571,222,'Neath Port Talbot','NPRTAL',1),(3572,222,'Newport','NEWPT',1),(3573,222,'Norfolk','NOR',1),(3574,222,'North Ayrshire','ARYN',1),(3575,222,'North Lanarkshire','LANN',1),(3576,222,'North Yorkshire','YSN',1),(3577,222,'Northamptonshire','NHM',1),(3578,222,'Northumberland','NLD',1),(3579,222,'Nottinghamshire','NOT',1),(3580,222,'Orkney Islands','ORK',1),(3581,222,'Oxfordshire','OFE',1),(3582,222,'Pembrokeshire','PEM',1),(3583,222,'Perth and Kinross','PERTH',1),(3584,222,'Powys','PWS',1),(3585,222,'Renfrewshire','REN',1),(3586,222,'Rhondda Cynon Taff','RHON',1),(3587,222,'Rutland','RUT',1),(3588,222,'Scottish Borders','BOR',1),(3589,222,'Shetland Islands','SHET',1),(3590,222,'Shropshire','SPE',1),(3591,222,'Somerset','SOM',1),(3592,222,'South Ayrshire','ARYS',1),(3593,222,'South Lanarkshire','LANS',1),(3594,222,'South Yorkshire','YSS',1),(3595,222,'Staffordshire','SFD',1),(3596,222,'Stirling','STIR',1),(3597,222,'Suffolk','SFK',1),(3598,222,'Surrey','SRY',1),(3599,222,'Swansea','SWAN',1),(3600,222,'Torfaen','TORF',1),(3601,222,'Tyne and Wear','TWR',1),(3602,222,'Vale of Glamorgan','VGLAM',1),(3603,222,'Warwickshire','WARKS',1),(3604,222,'West Dunbartonshire','WDUN',1),(3605,222,'West Lothian','WLOT',1),(3606,222,'West Midlands','WMD',1),(3607,222,'West Sussex','SXW',1),(3608,222,'West Yorkshire','YSW',1),(3609,222,'Western Isles','WIL',1),(3610,222,'Wiltshire','WLT',1),(3611,222,'Worcestershire','WORCS',1),(3612,222,'Wrexham','WRX',1),(3613,223,'Alabama','AL',1),(3614,223,'Alaska','AK',1),(3615,223,'American Samoa','AS',1),(3616,223,'Arizona','AZ',1),(3617,223,'Arkansas','AR',1),(3618,223,'Armed Forces Africa','AF',1),(3619,223,'Armed Forces Americas','AA',1),(3620,223,'Armed Forces Canada','AC',1),(3621,223,'Armed Forces Europe','AE',1),(3622,223,'Armed Forces Middle East','AM',1),(3623,223,'Armed Forces Pacific','AP',1),(3624,223,'California','CA',1),(3625,223,'Colorado','CO',1),(3626,223,'Connecticut','CT',1),(3627,223,'Delaware','DE',1),(3628,223,'District of Columbia','DC',1),(3629,223,'Federated States Of Micronesia','FM',1),(3630,223,'Florida','FL',1),(3631,223,'Georgia','GA',1),(3632,223,'Guam','GU',1),(3633,223,'Hawaii','HI',1),(3634,223,'Idaho','ID',1),(3635,223,'Illinois','IL',1),(3636,223,'Indiana','IN',1),(3637,223,'Iowa','IA',1),(3638,223,'Kansas','KS',1),(3639,223,'Kentucky','KY',1),(3640,223,'Louisiana','LA',1),(3641,223,'Maine','ME',1),(3642,223,'Marshall Islands','MH',1),(3643,223,'Maryland','MD',1),(3644,223,'Massachusetts','MA',1),(3645,223,'Michigan','MI',1),(3646,223,'Minnesota','MN',1),(3647,223,'Mississippi','MS',1),(3648,223,'Missouri','MO',1),(3649,223,'Montana','MT',1),(3650,223,'Nebraska','NE',1),(3651,223,'Nevada','NV',1),(3652,223,'New Hampshire','NH',1),(3653,223,'New Jersey','NJ',1),(3654,223,'New Mexico','NM',1),(3655,223,'New York','NY',1),(3656,223,'North Carolina','NC',1),(3657,223,'North Dakota','ND',1),(3658,223,'Northern Mariana Islands','MP',1),(3659,223,'Ohio','OH',1),(3660,223,'Oklahoma','OK',1),(3661,223,'Oregon','OR',1),(3662,223,'Palau','PW',1),(3663,223,'Pennsylvania','PA',1),(3664,223,'Puerto Rico','PR',1),(3665,223,'Rhode Island','RI',1),(3666,223,'South Carolina','SC',1),(3667,223,'South Dakota','SD',1),(3668,223,'Tennessee','TN',1),(3669,223,'Texas','TX',1),(3670,223,'Utah','UT',1),(3671,223,'Vermont','VT',1),(3672,223,'Virgin Islands','VI',1),(3673,223,'Virginia','VA',1),(3674,223,'Washington','WA',1),(3675,223,'West Virginia','WV',1),(3676,223,'Wisconsin','WI',1),(3677,223,'Wyoming','WY',1),(3678,224,'Baker Island','BI',1),(3679,224,'Howland Island','HI',1),(3680,224,'Jarvis Island','JI',1),(3681,224,'Johnston Atoll','JA',1),(3682,224,'Kingman Reef','KR',1),(3683,224,'Midway Atoll','MA',1),(3684,224,'Navassa Island','NI',1),(3685,224,'Palmyra Atoll','PA',1),(3686,224,'Wake Island','WI',1),(3687,225,'Artigas','AR',1),(3688,225,'Canelones','CA',1),(3689,225,'Cerro Largo','CL',1),(3690,225,'Colonia','CO',1),(3691,225,'Durazno','DU',1),(3692,225,'Flores','FS',1),(3693,225,'Florida','FA',1),(3694,225,'Lavalleja','LA',1),(3695,225,'Maldonado','MA',1),(3696,225,'Montevideo','MO',1),(3697,225,'Paysandu','PA',1),(3698,225,'Rio Negro','RN',1),(3699,225,'Rivera','RV',1),(3700,225,'Rocha','RO',1),(3701,225,'Salto','SL',1),(3702,225,'San Jose','SJ',1),(3703,225,'Soriano','SO',1),(3704,225,'Tacuarembo','TA',1),(3705,225,'Treinta y Tres','TT',1),(3706,226,'Andijon','AN',1),(3707,226,'Buxoro','BU',1),(3708,226,'Farg\'ona','FA',1),(3709,226,'Jizzax','JI',1),(3710,226,'Namangan','NG',1),(3711,226,'Navoiy','NW',1),(3712,226,'Qashqadaryo','QA',1),(3713,226,'Qoraqalpog\'iston Republikasi','QR',1),(3714,226,'Samarqand','SA',1),(3715,226,'Sirdaryo','SI',1),(3716,226,'Surxondaryo','SU',1),(3717,226,'Toshkent City','TK',1),(3718,226,'Toshkent Region','TO',1),(3719,226,'Xorazm','XO',1),(3720,227,'Malampa','MA',1),(3721,227,'Penama','PE',1),(3722,227,'Sanma','SA',1),(3723,227,'Shefa','SH',1),(3724,227,'Tafea','TA',1),(3725,227,'Torba','TO',1),(3726,229,'Amazonas','AM',1),(3727,229,'Anzoategui','AN',1),(3728,229,'Apure','AP',1),(3729,229,'Aragua','AR',1),(3730,229,'Barinas','BA',1),(3731,229,'Bolivar','BO',1),(3732,229,'Carabobo','CA',1),(3733,229,'Cojedes','CO',1),(3734,229,'Delta Amacuro','DA',1),(3735,229,'Dependencias Federales','DF',1),(3736,229,'Distrito Federal','DI',1),(3737,229,'Falcon','FA',1),(3738,229,'Guarico','GU',1),(3739,229,'Lara','LA',1),(3740,229,'Merida','ME',1),(3741,229,'Miranda','MI',1),(3742,229,'Monagas','MO',1),(3743,229,'Nueva Esparta','NE',1),(3744,229,'Portuguesa','PO',1),(3745,229,'Sucre','SU',1),(3746,229,'Tachira','TA',1),(3747,229,'Trujillo','TR',1),(3748,229,'Vargas','VA',1),(3749,229,'Yaracuy','YA',1),(3750,229,'Zulia','ZU',1),(3751,230,'An Giang','AG',1),(3752,230,'Bac Giang','BG',1),(3753,230,'Bac Kan','BK',1),(3754,230,'Bac Lieu','BL',1),(3755,230,'Bac Ninh','BC',1),(3756,230,'Ba Ria-Vung Tau','BR',1),(3757,230,'Ben Tre','BN',1),(3758,230,'Binh Dinh','BH',1),(3759,230,'Binh Duong','BU',1),(3760,230,'Binh Phuoc','BP',1),(3761,230,'Binh Thuan','BT',1),(3762,230,'Ca Mau','CM',1),(3763,230,'Can Tho','CT',1),(3764,230,'Cao Bang','CB',1),(3765,230,'Dak Lak','DL',1),(3766,230,'Dak Nong','DG',1),(3767,230,'Da Nang','DN',1),(3768,230,'Dien Bien','DB',1),(3769,230,'Dong Nai','DI',1),(3770,230,'Dong Thap','DT',1),(3771,230,'Gia Lai','GL',1),(3772,230,'Ha Giang','HG',1),(3773,230,'Hai Duong','HD',1),(3774,230,'Hai Phong','HP',1),(3775,230,'Ha Nam','HM',1),(3776,230,'Ha Noi','HI',1),(3777,230,'Ha Tay','HT',1),(3778,230,'Ha Tinh','HH',1),(3779,230,'Hoa Binh','HB',1),(3780,230,'Ho Chi Minh City','HC',1),(3781,230,'Hau Giang','HU',1),(3782,230,'Hung Yen','HY',1),(3783,232,'Saint Croix','C',1),(3784,232,'Saint John','J',1),(3785,232,'Saint Thomas','T',1),(3786,233,'Alo','A',1),(3787,233,'Sigave','S',1),(3788,233,'Wallis','W',1),(3789,235,'Abyan','AB',1),(3790,235,'Adan','AD',1),(3791,235,'Amran','AM',1),(3792,235,'Al Bayda','BA',1),(3793,235,'Ad Dali','DA',1),(3794,235,'Dhamar','DH',1),(3795,235,'Hadramawt','HD',1),(3796,235,'Hajjah','HJ',1),(3797,235,'Al Hudaydah','HU',1),(3798,235,'Ibb','IB',1),(3799,235,'Al Jawf','JA',1),(3800,235,'Lahij','LA',1),(3801,235,'Ma\'rib','MA',1),(3802,235,'Al Mahrah','MR',1),(3803,235,'Al Mahwit','MW',1),(3804,235,'Sa\'dah','SD',1),(3805,235,'San\'a','SN',1),(3806,235,'Shabwah','SH',1),(3807,235,'Ta\'izz','TA',1),(3812,237,'Bas-Congo','BC',1),(3813,237,'Bandundu','BN',1),(3814,237,'Equateur','EQ',1),(3815,237,'Katanga','KA',1),(3816,237,'Kasai-Oriental','KE',1),(3817,237,'Kinshasa','KN',1),(3818,237,'Kasai-Occidental','KW',1),(3819,237,'Maniema','MA',1),(3820,237,'Nord-Kivu','NK',1),(3821,237,'Orientale','OR',1),(3822,237,'Sud-Kivu','SK',1),(3823,238,'Central','CE',1),(3824,238,'Copperbelt','CB',1),(3825,238,'Eastern','EA',1),(3826,238,'Luapula','LP',1),(3827,238,'Lusaka','LK',1),(3828,238,'Northern','NO',1),(3829,238,'North-Western','NW',1),(3830,238,'Southern','SO',1),(3831,238,'Western','WE',1),(3832,239,'Bulawayo','BU',1),(3833,239,'Harare','HA',1),(3834,239,'Manicaland','ML',1),(3835,239,'Mashonaland Central','MC',1),(3836,239,'Mashonaland East','ME',1),(3837,239,'Mashonaland West','MW',1),(3838,239,'Masvingo','MV',1),(3839,239,'Matabeleland North','MN',1),(3840,239,'Matabeleland South','MS',1),(3841,239,'Midlands','MD',1),(3861,105,'Campobasso','CB',1),(3863,105,'Caserta','CE',1),(3864,105,'Catania','CT',1),(3865,105,'Catanzaro','CZ',1),(3866,105,'Chieti','CH',1),(3867,105,'Como','CO',1),(3868,105,'Cosenza','CS',1),(3869,105,'Cremona','CR',1),(3870,105,'Crotone','KR',1),(3871,105,'Cuneo','CN',1),(3872,105,'Enna','EN',1),(3873,105,'Ferrara','FE',1),(3874,105,'Firenze','FI',1),(3875,105,'Foggia','FG',1),(3876,105,'Forli-Cesena','FC',1),(3877,105,'Frosinone','FR',1),(3878,105,'Genova','GE',1),(3879,105,'Gorizia','GO',1),(3880,105,'Grosseto','GR',1),(3881,105,'Imperia','IM',1),(3882,105,'Isernia','IS',1),(3883,105,'L&#39;Aquila','AQ',1),(3884,105,'La Spezia','SP',1),(3885,105,'Latina','LT',1),(3886,105,'Lecce','LE',1),(3887,105,'Lecco','LC',1),(3888,105,'Livorno','LI',1),(3889,105,'Lodi','LO',1),(3890,105,'Lucca','LU',1),(3891,105,'Macerata','MC',1),(3892,105,'Mantova','MN',1),(3893,105,'Massa-Carrara','MS',1),(3894,105,'Matera','MT',1),(3896,105,'Messina','ME',1),(3897,105,'Milano','MI',1),(3898,105,'Modena','MO',1),(3899,105,'Napoli','NA',1),(3900,105,'Novara','NO',1),(3901,105,'Nuoro','NU',1),(3904,105,'Oristano','OR',1),(3905,105,'Padova','PD',1),(3906,105,'Palermo','PA',1),(3907,105,'Parma','PR',1),(3908,105,'Pavia','PV',1),(3909,105,'Perugia','PG',1),(3910,105,'Pesaro e Urbino','PU',1),(3911,105,'Pescara','PE',1),(3912,105,'Piacenza','PC',1),(3913,105,'Pisa','PI',1),(3914,105,'Pistoia','PT',1),(3915,105,'Pordenone','PN',1),(3916,105,'Potenza','PZ',1),(3917,105,'Prato','PO',1),(3918,105,'Ragusa','RG',1),(3919,105,'Ravenna','RA',1),(3920,105,'Reggio Calabria','RC',1),(3921,105,'Reggio Emilia','RE',1),(3922,105,'Rieti','RI',1),(3923,105,'Rimini','RN',1),(3924,105,'Roma','RM',1),(3925,105,'Rovigo','RO',1),(3926,105,'Salerno','SA',1),(3927,105,'Sassari','SS',1),(3928,105,'Savona','SV',1),(3929,105,'Siena','SI',1),(3930,105,'Siracusa','SR',1),(3931,105,'Sondrio','SO',1),(3932,105,'Taranto','TA',1),(3933,105,'Teramo','TE',1),(3934,105,'Terni','TR',1),(3935,105,'Torino','TO',1),(3936,105,'Trapani','TP',1),(3937,105,'Trento','TN',1),(3938,105,'Treviso','TV',1),(3939,105,'Trieste','TS',1),(3940,105,'Udine','UD',1),(3941,105,'Varese','VA',1),(3942,105,'Venezia','VE',1),(3943,105,'Verbano-Cusio-Ossola','VB',1),(3944,105,'Vercelli','VC',1),(3945,105,'Verona','VR',1),(3946,105,'Vibo Valentia','VV',1),(3947,105,'Vicenza','VI',1),(3948,105,'Viterbo','VT',1),(3949,222,'County Antrim','ANT',1),(3950,222,'County Armagh','ARM',1),(3951,222,'County Down','DOW',1),(3952,222,'County Fermanagh','FER',1),(3953,222,'County Londonderry','LDY',1),(3954,222,'County Tyrone','TYR',1),(3955,222,'Cumbria','CMA',1),(3956,190,'Pomurska','1',1),(3957,190,'Podravska','2',1),(3958,190,'Koroška','3',1),(3959,190,'Savinjska','4',1),(3960,190,'Zasavska','5',1),(3961,190,'Spodnjeposavska','6',1),(3962,190,'Jugovzhodna Slovenija','7',1),(3963,190,'Osrednjeslovenska','8',1),(3964,190,'Gorenjska','9',1),(3965,190,'Notranjsko-kraška','10',1),(3966,190,'Goriška','11',1),(3967,190,'Obalno-kraška','12',1),(3968,33,'Ruse','',1),(3969,101,'Alborz','ALB',1),(3970,21,'Brussels-Capital Region','BRU',1),(3971,138,'Aguascalientes','AG',1),(3973,242,'Andrijevica','01',1),(3974,242,'Bar','02',1),(3975,242,'Berane','03',1),(3976,242,'Bijelo Polje','04',1),(3977,242,'Budva','05',1),(3978,242,'Cetinje','06',1),(3979,242,'Danilovgrad','07',1),(3980,242,'Herceg-Novi','08',1),(3981,242,'Kolašin','09',1),(3982,242,'Kotor','10',1),(3983,242,'Mojkovac','11',1),(3984,242,'Nikšić','12',1),(3985,242,'Plav','13',1),(3986,242,'Pljevlja','14',1),(3987,242,'Plužine','15',1),(3988,242,'Podgorica','16',1),(3989,242,'Rožaje','17',1),(3990,242,'Šavnik','18',1),(3991,242,'Tivat','19',1),(3992,242,'Ulcinj','20',1),(3993,242,'Žabljak','21',1),(3994,243,'Belgrade','00',1),(3995,243,'North Bačka','01',1),(3996,243,'Central Banat','02',1),(3997,243,'North Banat','03',1),(3998,243,'South Banat','04',1),(3999,243,'West Bačka','05',1),(4000,243,'South Bačka','06',1),(4001,243,'Srem','07',1),(4002,243,'Mačva','08',1),(4003,243,'Kolubara','09',1),(4004,243,'Podunavlje','10',1),(4005,243,'Braničevo','11',1),(4006,243,'Šumadija','12',1),(4007,243,'Pomoravlje','13',1),(4008,243,'Bor','14',1),(4009,243,'Zaječar','15',1),(4010,243,'Zlatibor','16',1),(4011,243,'Moravica','17',1),(4012,243,'Raška','18',1),(4013,243,'Rasina','19',1),(4014,243,'Nišava','20',1),(4015,243,'Toplica','21',1),(4016,243,'Pirot','22',1),(4017,243,'Jablanica','23',1),(4018,243,'Pčinja','24',1),(4020,245,'Bonaire','BO',1),(4021,245,'Saba','SA',1),(4022,245,'Sint Eustatius','SE',1),(4023,248,'Central Equatoria','EC',1),(4024,248,'Eastern Equatoria','EE',1),(4025,248,'Jonglei','JG',1),(4026,248,'Lakes','LK',1),(4027,248,'Northern Bahr el-Ghazal','BN',1),(4028,248,'Unity','UY',1),(4029,248,'Upper Nile','NU',1),(4030,248,'Warrap','WR',1),(4031,248,'Western Bahr el-Ghazal','BW',1),(4032,248,'Western Equatoria','EW',1),(4036,117,'Ainaži, Salacgrīvas novads','0661405',1),(4037,117,'Aizkraukle, Aizkraukles novads','0320201',1),(4038,117,'Aizkraukles novads','0320200',1),(4039,117,'Aizpute, Aizputes novads','0640605',1),(4040,117,'Aizputes novads','0640600',1),(4041,117,'Aknīste, Aknīstes novads','0560805',1),(4042,117,'Aknīstes novads','0560800',1),(4043,117,'Aloja, Alojas novads','0661007',1),(4044,117,'Alojas novads','0661000',1),(4045,117,'Alsungas novads','0624200',1),(4046,117,'Alūksne, Alūksnes novads','0360201',1),(4047,117,'Alūksnes novads','0360200',1),(4048,117,'Amatas novads','0424701',1),(4049,117,'Ape, Apes novads','0360805',1),(4050,117,'Apes novads','0360800',1),(4051,117,'Auce, Auces novads','0460805',1),(4052,117,'Auces novads','0460800',1),(4053,117,'Ādažu novads','0804400',1),(4054,117,'Babītes novads','0804900',1),(4055,117,'Baldone, Baldones novads','0800605',1),(4056,117,'Baldones novads','0800600',1),(4057,117,'Baloži, Ķekavas novads','0800807',1),(4058,117,'Baltinavas novads','0384400',1),(4059,117,'Balvi, Balvu novads','0380201',1),(4060,117,'Balvu novads','0380200',1),(4061,117,'Bauska, Bauskas novads','0400201',1),(4062,117,'Bauskas novads','0400200',1),(4063,117,'Beverīnas novads','0964700',1),(4064,117,'Brocēni, Brocēnu novads','0840605',1),(4065,117,'Brocēnu novads','0840601',1),(4066,117,'Burtnieku novads','0967101',1),(4067,117,'Carnikavas novads','0805200',1),(4068,117,'Cesvaine, Cesvaines novads','0700807',1),(4069,117,'Cesvaines novads','0700800',1),(4070,117,'Cēsis, Cēsu novads','0420201',1),(4071,117,'Cēsu novads','0420200',1),(4072,117,'Ciblas novads','0684901',1),(4073,117,'Dagda, Dagdas novads','0601009',1),(4074,117,'Dagdas novads','0601000',1),(4075,117,'Daugavpils','0050000',1),(4076,117,'Daugavpils novads','0440200',1),(4077,117,'Dobele, Dobeles novads','0460201',1),(4078,117,'Dobeles novads','0460200',1),(4079,117,'Dundagas novads','0885100',1),(4080,117,'Durbe, Durbes novads','0640807',1),(4081,117,'Durbes novads','0640801',1),(4082,117,'Engures novads','0905100',1),(4083,117,'Ērgļu novads','0705500',1),(4084,117,'Garkalnes novads','0806000',1),(4085,117,'Grobiņa, Grobiņas novads','0641009',1),(4086,117,'Grobiņas novads','0641000',1),(4087,117,'Gulbene, Gulbenes novads','0500201',1),(4088,117,'Gulbenes novads','0500200',1),(4089,117,'Iecavas novads','0406400',1),(4090,117,'Ikšķile, Ikšķiles novads','0740605',1),(4091,117,'Ikšķiles novads','0740600',1),(4092,117,'Ilūkste, Ilūkstes novads','0440807',1),(4093,117,'Ilūkstes novads','0440801',1),(4094,117,'Inčukalna novads','0801800',1),(4095,117,'Jaunjelgava, Jaunjelgavas novads','0321007',1),(4096,117,'Jaunjelgavas novads','0321000',1),(4097,117,'Jaunpiebalgas novads','0425700',1),(4098,117,'Jaunpils novads','0905700',1),(4099,117,'Jelgava','0090000',1),(4100,117,'Jelgavas novads','0540200',1),(4101,117,'Jēkabpils','0110000',1),(4102,117,'Jēkabpils novads','0560200',1),(4103,117,'Jūrmala','0130000',1),(4104,117,'Kalnciems, Jelgavas novads','0540211',1),(4105,117,'Kandava, Kandavas novads','0901211',1),(4106,117,'Kandavas novads','0901201',1),(4107,117,'Kārsava, Kārsavas novads','0681009',1),(4108,117,'Kārsavas novads','0681000',1),(4109,117,'Kocēnu novads ,bij. Valmieras)','0960200',1),(4110,117,'Kokneses novads','0326100',1),(4111,117,'Krāslava, Krāslavas novads','0600201',1),(4112,117,'Krāslavas novads','0600202',1),(4113,117,'Krimuldas novads','0806900',1),(4114,117,'Krustpils novads','0566900',1),(4115,117,'Kuldīga, Kuldīgas novads','0620201',1),(4116,117,'Kuldīgas novads','0620200',1),(4117,117,'Ķeguma novads','0741001',1),(4118,117,'Ķegums, Ķeguma novads','0741009',1),(4119,117,'Ķekavas novads','0800800',1),(4120,117,'Lielvārde, Lielvārdes novads','0741413',1),(4121,117,'Lielvārdes novads','0741401',1),(4122,117,'Liepāja','0170000',1),(4123,117,'Limbaži, Limbažu novads','0660201',1),(4124,117,'Limbažu novads','0660200',1),(4125,117,'Līgatne, Līgatnes novads','0421211',1),(4126,117,'Līgatnes novads','0421200',1),(4127,117,'Līvāni, Līvānu novads','0761211',1),(4128,117,'Līvānu novads','0761201',1),(4129,117,'Lubāna, Lubānas novads','0701413',1),(4130,117,'Lubānas novads','0701400',1),(4131,117,'Ludza, Ludzas novads','0680201',1),(4132,117,'Ludzas novads','0680200',1),(4133,117,'Madona, Madonas novads','0700201',1),(4134,117,'Madonas novads','0700200',1),(4135,117,'Mazsalaca, Mazsalacas novads','0961011',1),(4136,117,'Mazsalacas novads','0961000',1),(4137,117,'Mālpils novads','0807400',1),(4138,117,'Mārupes novads','0807600',1),(4139,117,'Mērsraga novads','0887600',1),(4140,117,'Naukšēnu novads','0967300',1),(4141,117,'Neretas novads','0327100',1),(4142,117,'Nīcas novads','0647900',1),(4143,117,'Ogre, Ogres novads','0740201',1),(4144,117,'Ogres novads','0740202',1),(4145,117,'Olaine, Olaines novads','0801009',1),(4146,117,'Olaines novads','0801000',1),(4147,117,'Ozolnieku novads','0546701',1),(4148,117,'Pārgaujas novads','0427500',1),(4149,117,'Pāvilosta, Pāvilostas novads','0641413',1),(4150,117,'Pāvilostas novads','0641401',1),(4151,117,'Piltene, Ventspils novads','0980213',1),(4152,117,'Pļaviņas, Pļaviņu novads','0321413',1),(4153,117,'Pļaviņu novads','0321400',1),(4154,117,'Preiļi, Preiļu novads','0760201',1),(4155,117,'Preiļu novads','0760202',1),(4156,117,'Priekule, Priekules novads','0641615',1),(4157,117,'Priekules novads','0641600',1),(4158,117,'Priekuļu novads','0427300',1),(4159,117,'Raunas novads','0427700',1),(4160,117,'Rēzekne','0210000',1),(4161,117,'Rēzeknes novads','0780200',1),(4162,117,'Riebiņu novads','0766300',1),(4163,117,'Rīga','0010000',1),(4164,117,'Rojas novads','0888300',1),(4165,117,'Ropažu novads','0808400',1),(4166,117,'Rucavas novads','0648500',1),(4167,117,'Rugāju novads','0387500',1),(4168,117,'Rundāles novads','0407700',1),(4169,117,'Rūjiena, Rūjienas novads','0961615',1),(4170,117,'Rūjienas novads','0961600',1),(4171,117,'Sabile, Talsu novads','0880213',1),(4172,117,'Salacgrīva, Salacgrīvas novads','0661415',1),(4173,117,'Salacgrīvas novads','0661400',1),(4174,117,'Salas novads','0568700',1),(4175,117,'Salaspils novads','0801200',1),(4176,117,'Salaspils, Salaspils novads','0801211',1),(4177,117,'Saldus novads','0840200',1),(4178,117,'Saldus, Saldus novads','0840201',1),(4179,117,'Saulkrasti, Saulkrastu novads','0801413',1),(4180,117,'Saulkrastu novads','0801400',1),(4181,117,'Seda, Strenču novads','0941813',1),(4182,117,'Sējas novads','0809200',1),(4183,117,'Sigulda, Siguldas novads','0801615',1),(4184,117,'Siguldas novads','0801601',1),(4185,117,'Skrīveru novads','0328200',1),(4186,117,'Skrunda, Skrundas novads','0621209',1),(4187,117,'Skrundas novads','0621200',1),(4188,117,'Smiltene, Smiltenes novads','0941615',1),(4189,117,'Smiltenes novads','0941600',1),(4190,117,'Staicele, Alojas novads','0661017',1),(4191,117,'Stende, Talsu novads','0880215',1),(4192,117,'Stopiņu novads','0809600',1),(4193,117,'Strenči, Strenču novads','0941817',1),(4194,117,'Strenču novads','0941800',1),(4195,117,'Subate, Ilūkstes novads','0440815',1),(4196,117,'Talsi, Talsu novads','0880201',1),(4197,117,'Talsu novads','0880200',1),(4198,117,'Tērvetes novads','0468900',1),(4199,117,'Tukuma novads','0900200',1),(4200,117,'Tukums, Tukuma novads','0900201',1),(4201,117,'Vaiņodes novads','0649300',1),(4202,117,'Valdemārpils, Talsu novads','0880217',1),(4203,117,'Valka, Valkas novads','0940201',1),(4204,117,'Valkas novads','0940200',1),(4205,117,'Valmiera','0250000',1),(4206,117,'Vangaži, Inčukalna novads','0801817',1),(4207,117,'Varakļāni, Varakļānu novads','0701817',1),(4208,117,'Varakļānu novads','0701800',1),(4209,117,'Vārkavas novads','0769101',1),(4210,117,'Vecpiebalgas novads','0429300',1),(4211,117,'Vecumnieku novads','0409500',1),(4212,117,'Ventspils','0270000',1),(4213,117,'Ventspils novads','0980200',1),(4214,117,'Viesīte, Viesītes novads','0561815',1),(4215,117,'Viesītes novads','0561800',1),(4216,117,'Viļaka, Viļakas novads','0381615',1),(4217,117,'Viļakas novads','0381600',1),(4218,117,'Viļāni, Viļānu novads','0781817',1),(4219,117,'Viļānu novads','0781800',1),(4220,117,'Zilupe, Zilupes novads','0681817',1),(4221,117,'Zilupes novads','0681801',1),(4222,43,'Arica y Parinacota','AP',1),(4223,43,'Los Rios','LR',1),(4224,220,'Kharkivs\'ka Oblast\'','63',1),(4225,118,'Beirut','LB-BR',1),(4226,118,'Bekaa','LB-BE',1),(4227,118,'Mount Lebanon','LB-ML',1),(4228,118,'Nabatieh','LB-NB',1),(4229,118,'North','LB-NR',1),(4230,118,'South','LB-ST',1),(4231,99,'Telangana','TS',1),(4232,44,'Qinghai','QH',1),(4233,100,'Papua Barat','PB',1),(4234,100,'Sulawesi Barat','SR',1),(4235,100,'Kepulauan Riau','KR',1),(4236,105,'Barletta-Andria-Trani','BT',1),(4237,105,'Fermo','FM',1),(4238,105,'Monza Brianza','MB',1);
/*!40000 ALTER TABLE `oc_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_zone_to_geo_zone`
--

DROP TABLE IF EXISTS `oc_zone_to_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

LOCK TABLES `oc_zone_to_geo_zone` WRITE;
/*!40000 ALTER TABLE `oc_zone_to_geo_zone` DISABLE KEYS */;
INSERT INTO `oc_zone_to_geo_zone` VALUES (1,222,0,4,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,222,3513,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,222,3514,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,222,3515,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,222,3516,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,222,3517,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,222,3518,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,222,3519,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,222,3520,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,222,3521,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,222,3522,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,222,3523,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,222,3524,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,222,3525,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,222,3526,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,222,3527,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,222,3528,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,222,3529,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,222,3530,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,222,3531,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,222,3532,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,222,3533,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,222,3534,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,222,3535,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(25,222,3536,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,222,3537,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(27,222,3538,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(28,222,3539,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(29,222,3540,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(30,222,3541,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(31,222,3542,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(32,222,3543,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(33,222,3544,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(34,222,3545,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(35,222,3546,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(36,222,3547,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(37,222,3548,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(38,222,3549,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(39,222,3550,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(40,222,3551,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(41,222,3552,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(42,222,3553,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(43,222,3554,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(44,222,3555,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(45,222,3556,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(46,222,3557,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(47,222,3558,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(48,222,3559,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(49,222,3560,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(50,222,3561,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(51,222,3562,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(52,222,3563,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(53,222,3564,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(54,222,3565,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(55,222,3566,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(56,222,3567,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(57,222,3568,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(58,222,3569,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(59,222,3570,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(60,222,3571,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(61,222,3572,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(62,222,3573,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(63,222,3574,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(64,222,3575,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(65,222,3576,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(66,222,3577,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(67,222,3578,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(68,222,3579,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(69,222,3580,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(70,222,3581,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(71,222,3582,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(72,222,3583,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(73,222,3584,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(74,222,3585,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(75,222,3586,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(76,222,3587,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(77,222,3588,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(78,222,3589,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(79,222,3590,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(80,222,3591,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(81,222,3592,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(82,222,3593,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(83,222,3594,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(84,222,3595,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(85,222,3596,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(86,222,3597,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(87,222,3598,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(88,222,3599,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(89,222,3600,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(90,222,3601,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(91,222,3602,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(92,222,3603,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(93,222,3604,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(94,222,3605,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(95,222,3606,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(96,222,3607,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(97,222,3608,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(98,222,3609,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(99,222,3610,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(100,222,3611,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(101,222,3612,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(102,222,3949,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(103,222,3950,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(104,222,3951,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(105,222,3952,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(106,222,3953,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(107,222,3954,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(108,222,3955,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(109,222,3972,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `oc_zone_to_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-28 10:22:31
