-- MySQL dump 10.13  Distrib 5.1.46, for suse-linux-gnu (i686)
--
-- Host: localhost    Database: IAM
-- ------------------------------------------------------
-- Server version	5.1.46-log

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_bda51c3c` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_message`
--

DROP TABLE IF EXISTS `auth_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_message_fbfc09f1` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_message`
--

LOCK TABLES `auth_message` WRITE;
/*!40000 ALTER TABLE `auth_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_e4470c6e` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add message',4,'add_message'),(11,'Can change message',4,'change_message'),(12,'Can delete message',4,'delete_message'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add site',7,'add_site'),(20,'Can change site',7,'change_site'),(21,'Can delete site',7,'delete_site'),(22,'Can add log entry',8,'add_logentry'),(23,'Can change log entry',8,'change_logentry'),(24,'Can delete log entry',8,'delete_logentry'),(25,'Can add poll',9,'add_poll'),(26,'Can change poll',9,'change_poll'),(27,'Can delete poll',9,'delete_poll'),(28,'Can add choice',10,'add_choice'),(29,'Can change choice',10,'change_choice'),(30,'Can delete choice',10,'delete_choice'),(47,'Can change laboratory',16,'change_laboratory'),(34,'Can add profile',12,'add_profile'),(35,'Can change profile',12,'change_profile'),(36,'Can delete profile',12,'delete_profile'),(46,'Can add laboratory',16,'add_laboratory'),(45,'Can delete publication',15,'delete_publication'),(44,'Can change publication',15,'change_publication'),(43,'Can add publication',15,'add_publication'),(48,'Can delete laboratory',16,'delete_laboratory'),(49,'Can add news',17,'add_news'),(50,'Can change news',17,'change_news'),(51,'Can delete news',17,'delete_news'),(83,'Can change publication',29,'change_publication'),(84,'Can delete publication',29,'delete_publication'),(66,'Can delete laboratory',22,'delete_laboratory'),(65,'Can change laboratory',22,'change_laboratory'),(64,'Can add laboratory',22,'add_laboratory'),(58,'Can add profile',20,'add_profile'),(59,'Can change profile',20,'change_profile'),(60,'Can delete profile',20,'delete_profile'),(61,'Can add news',21,'add_news'),(62,'Can change news',21,'change_news'),(63,'Can delete news',21,'delete_news'),(67,'Can add lab group',23,'add_labgroup'),(68,'Can change lab group',23,'change_labgroup'),(69,'Can delete lab group',23,'delete_labgroup'),(70,'Can add nav item',24,'add_navitem'),(71,'Can change nav item',24,'change_navitem'),(72,'Can delete nav item',24,'delete_navitem'),(73,'Can add flat page',25,'add_flatpage'),(74,'Can change flat page',25,'change_flatpage'),(75,'Can delete flat page',25,'delete_flatpage'),(82,'Can add publication',29,'add_publication'),(79,'Can add migration history',28,'add_migrationhistory'),(80,'Can change migration history',28,'change_migrationhistory'),(81,'Can delete migration history',28,'delete_migrationhistory');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'root','Дмитрий','Кравцов','idkravitz@gmail.com','sha1$4a21c$e9dee9208c8d03ae1dc687a65d4f30d561287c14',1,1,1,'2010-07-26 13:41:48','2010-06-24 18:50:32'),(2,'guzev','Михаил','Гузев','guzev@iam.dvo.ru','sha1$4ca9b$c2874f4a5bd266f4bcdf51aa822f8e1072c89270',1,1,1,'2010-07-26 13:42:30','2010-06-25 12:23:41'),(7,'dubinin','Владимир','Дубинин','','sha1$2c561$8d4806b68fdb2526b263ff0f04a6174aa651c525',0,1,0,'2010-07-07 10:45:15','2010-07-07 10:45:15'),(8,'skurihin','Евгений','Скурихин','','sha1$bd323$f1943ea3f0f1a141c1e69288d342751d5536abdf',0,1,0,'2010-07-07 10:48:27','2010-07-07 10:48:27'),(9,'chebotarev','Александр','Чеботарев','','sha1$55c0c$5f9f07a4238d09533238efab90d5a0cdcdf22a13',0,1,0,'2010-07-14 12:10:22','2010-07-07 10:55:07'),(10,'alekseev','Геннадий','Алексеев','','sha1$f42a1$e49ee6705cf74badb72299555f6e2a6e25c1a9f7',0,1,0,'2010-07-07 10:56:51','2010-07-07 10:56:51'),(11,'prohorov','Игорь','Прохоров','','sha1$fc9ec$f261841b9a5e4075661755f9c6c871a751e427ae',0,1,0,'2010-07-07 10:59:18','2010-07-07 10:59:18'),(12,'aschepkov','Леонид','Ащепков','','sha1$2c4f7$ea7faf1e910c418a5215ebb65e00f2e422131291',0,1,0,'2010-07-07 11:01:14','2010-07-07 11:01:14'),(13,'guram','Гурами','Цициашвили','','sha1$41272$dc30e8e7838fe648772c879d9cb31746f012f592',0,1,0,'2010-07-07 11:02:42','2010-07-07 11:02:42'),(14,'gerasimenko','Михаил','Герасименко','','sha1$6be5a$1b0662ccfef3a774e2b226080c37ae694cc40677',0,1,0,'2010-07-07 11:04:11','2010-07-07 11:04:11'),(15,'dmitriev','Александр','Дмитриев','','sha1$69c16$3accd2d8d3e84bdbd9db5def362dc0d5320b6708',0,1,0,'2010-07-07 11:14:41','2010-07-07 11:14:41'),(16,'gassan','Сергей','Гаcсан','','sha1$e83b6$bae563dad0b2ce73fdb2b4e5097a3dd9fe6d2963',0,1,0,'2010-07-23 13:36:24','2010-07-07 11:16:31'),(17,'shepelov','Михаил','Шепелов','726577@mail.ru','sha1$7d601$134a1175359faf8cf4bba64f95b0e94629adbf23',1,1,1,'2010-07-26 14:15:26','2010-07-08 14:09:54');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_fbfc09f1` (`user_id`),
  KEY `auth_user_groups_bda51c3c` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_fbfc09f1` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext COLLATE utf8_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_fbfc09f1` (`user_id`),
  KEY `django_admin_log_e4470c6e` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=195 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2010-06-24 19:52:12',1,9,'1','What\'s up?',2,'Changed pub_date.'),(2,'2010-06-24 20:59:59',1,9,'2','Почему нельзя создать папку с именем con?',1,''),(3,'2010-06-25 10:53:25',1,3,'1','root',2,'Changed academic_degree for profile \"Profile object\".'),(4,'2010-06-25 10:53:40',1,3,'1','root',2,'Changed academic_degree for profile \"Profile object\".'),(5,'2010-06-25 10:54:05',1,3,'1','root',2,'Changed first_name and last_name. Changed mid_name and academic_degree for profile \"Profile object\".'),(7,'2010-06-25 11:43:56',1,3,'1','root',2,'Added profile \"Profile object\".'),(12,'2010-06-25 12:54:23',1,3,'2','guzev',2,'Changed first_name, last_name and email.'),(9,'2010-06-25 11:53:34',1,3,'1','root',2,'Changed publications for profile \"Kravtsov Dmitry 1\".'),(10,'2010-06-25 12:23:41',1,3,'2','guzev',1,''),(11,'2010-06-25 12:46:30',1,3,'3','Чеботарёв Александр Юрьевич',2,'Changed first_name and last_name.'),(13,'2010-06-25 12:54:51',1,3,'3','chebotarev',2,'Changed email.'),(14,'2010-06-25 13:38:03',1,15,'1',', Петров 123',1,''),(15,'2010-06-25 13:38:14',1,12,'1','Чеботарёв Александр Юрьевич',2,'Changed publications.'),(16,'2010-06-25 13:43:56',1,3,'3','chebotarev',2,'Changed academic_degree for profile \"Чеботарёв Александр Юрьевич\".'),(17,'2010-06-25 13:44:57',1,16,'1','Laboratory object',1,''),(18,'2010-06-25 13:46:23',1,12,'1','Чеботарёв Александр Юрьевич',2,'Changed laboratory.'),(19,'2010-06-25 13:56:08',1,3,'2','guzev',2,'Added profile \"Гузев Михаил Александрович\".'),(20,'2010-06-25 13:56:16',1,3,'2','guzev',2,'No fields changed.'),(21,'2010-06-25 14:12:48',1,12,'2','Гузев Михаил Александрович',2,'Changed publications.'),(22,'2010-06-25 17:17:24',1,16,'1','Лаборатория конструктивных методов математики',2,'Changed about.'),(23,'2010-06-25 17:32:34',1,17,'1','News object',1,''),(55,'2010-06-28 22:57:01',1,22,'2','Лаборатория математического моделирования',1,''),(25,'2010-06-25 18:42:20',1,3,'2','guzev',2,'Added profile \"Гузев Михаил Александрович\".'),(54,'2010-06-28 22:56:35',1,23,'2',' Отдел математической физики',1,''),(27,'2010-06-25 18:44:10',1,3,'3','chebotarev',2,'Added profile \"Чеботарёв Александр Юрьевич\".'),(28,'2010-06-25 18:44:44',1,21,'1','Первый новостной топик',1,''),(53,'2010-06-28 22:54:24',1,20,'1','Гузев Михаил Александрович',1,''),(52,'2010-06-28 21:57:46',1,22,'1','Лаборатория конструктивных методов в математике ',1,''),(111,'2010-07-06 14:42:46',2,20,'2','Чеботарёв Александр Юрьевич',1,''),(97,'2010-07-05 23:14:30',2,3,'3','chebotarev',2,'Добавлен Профиль \"Чеботарёв Александр Юрьевич\".'),(51,'2010-06-28 21:57:24',1,23,'1','Отдел анализа и геометрии',1,''),(33,'2010-06-25 21:29:05',1,20,'1','Гузев Михаил Александрович',1,''),(94,'2010-07-05 22:25:44',1,3,'2','guzev',2,'Добавлен Профиль \"Гузев Михаил Александрович\".'),(95,'2010-07-05 22:42:44',1,3,'2','guzev',2,'Добавлен Профиль \"Гузев Михаил Александрович\".'),(92,'2010-07-05 22:24:25',2,3,'1','root',2,'Добавлен Профиль \"Кравцов Дремора Скампович\".'),(93,'2010-07-05 22:25:26',1,3,'3','chebotarev',2,'Добавлен Профиль \"Чеботарёв Александр Юрьевич\".'),(50,'2010-06-28 12:45:39',1,22,'1','Лаборатория конструктивных методов математики',2,'Changed publications.'),(37,'2010-06-25 22:17:18',1,20,'1','Гузев Михаил Александрович',1,''),(48,'2010-06-28 12:38:05',1,23,'1','LabGroup object',1,''),(49,'2010-06-28 12:38:35',1,22,'1','Лаборатория конструктивных методов математики',1,''),(40,'2010-06-25 22:24:50',1,20,'1','Гузев Михаил Александрович',1,''),(47,'2010-06-28 12:08:27',1,22,'1','Лаборатория конструктивных методов математики',1,''),(91,'2010-07-05 22:24:10',2,22,'1','Лаборатория грязевых червей (№ 13)',1,''),(43,'2010-06-25 23:04:11',1,20,'1','Гузев Михаил Александрович',1,''),(44,'2010-06-25 23:04:34',1,20,'2','Чеботарёв Александр Юрьевич',1,''),(45,'2010-06-26 12:03:46',1,21,'2','Hi',3,''),(46,'2010-06-28 08:38:25',1,21,'1','Первый новостной топик',2,'Changed body.'),(56,'2010-06-28 22:57:08',1,20,'2','Чеботарёв Александр Юрьевич',1,''),(57,'2010-06-29 11:01:36',1,22,'1','Лаборатория конструктивных методов математики',2,'Changed title.'),(90,'2010-07-05 22:24:09',2,23,'1','Непонятных вещей',1,''),(59,'2010-06-29 11:16:53',1,20,'1','Гузев Михаил Александрович',2,'Changed publications.'),(60,'2010-06-30 10:11:18',1,23,'1','Отдел анализа и геометрии',1,''),(61,'2010-06-30 10:11:42',1,22,'1','Лаборатория конструктивных методов математики (№ 3.10)',1,''),(62,'2010-06-30 10:13:48',1,23,'2','Отдел математической физики',1,''),(63,'2010-06-30 10:13:51',1,22,'2','Лаборатория математического моделирования (№ 3.2)',1,''),(64,'2010-06-30 10:39:34',1,7,'1','iam.dvo.ru',2,'Changed domain and name.'),(65,'2010-06-30 11:46:19',1,25,'1','/research -- Основные исследования',1,''),(66,'2010-06-30 11:46:26',1,25,'1','/research/ -- Основные исследования',2,'Changed url.'),(67,'2010-06-30 11:47:08',1,7,'1','idkravitz.homelinux.org',2,'Changed domain.'),(68,'2010-06-30 12:12:10',1,25,'1','/research/ -- Основные исследования',2,'Changed content.'),(69,'2010-06-30 12:12:41',1,25,'1','/research/ -- Основные исследования',2,'Changed content.'),(70,'2010-06-30 12:13:28',1,21,'1','«Структура кинематического и силового поля в Римановой модели сплошной среды» ',1,''),(71,'2010-06-30 12:13:36',1,21,'1','«Структура кинематического и силового поля в Римановой модели сплошной среды»',2,'Changed title.'),(72,'2010-06-30 13:31:13',1,25,'2','/head/ -- Директор',1,''),(73,'2010-06-30 13:33:01',1,25,'3','/about/ -- Об институте',1,''),(74,'2010-06-30 14:00:09',1,25,'4','/grad/ -- Аспирантура',1,''),(75,'2010-06-30 14:00:46',1,25,'5','/basic-chairs/ -- Базовые кафедры',1,''),(76,'2010-07-01 12:53:35',1,3,'3','chebotarev',2,'Изменен last_name.'),(77,'2010-07-01 12:53:55',1,3,'3','chebotarev',2,'Изменен last_name.'),(78,'2010-07-01 13:13:43',1,21,'2','Смотри сюда',2,'Изменен body.'),(79,'2010-07-01 13:24:02',1,21,'3','Я Чеботарёв',3,''),(80,'2010-07-01 13:24:50',1,21,'4','Использование тэгов в базе',1,''),(81,'2010-07-01 14:18:32',1,3,'4','cc',1,''),(82,'2010-07-01 14:19:30',1,3,'4','cc',3,''),(83,'2010-07-01 21:28:26',1,21,'6','Вчерашняя новость',1,''),(84,'2010-07-01 21:29:07',1,21,'7','Позавчерашняя новость',1,''),(85,'2010-07-05 21:33:45',1,3,'5','',3,''),(86,'2010-07-05 21:34:58',1,23,'3','Отдел серых троллей',1,''),(87,'2010-07-05 21:35:14',1,22,'3','Пещера гоблинов (№ 100500)',1,''),(88,'2010-07-05 21:35:25',1,3,'1','root',2,'Изменен first_name и last_name. Добавлен profile \"Кравцов Дмитрий Сергеевич\".'),(89,'2010-07-05 21:51:02',1,3,'2','guzev',2,'Изменен is_staff и is_superuser.'),(98,'2010-07-05 23:14:45',2,3,'1','root',2,'Изменен first_name. Добавлен Профиль \"Кравцов Дмитрий Сергеевич\".'),(99,'2010-07-05 23:30:00',2,3,'2','guzev',2,'Добавлен Профиль \"Гузев Михаил asd\".'),(100,'2010-07-05 23:30:20',2,3,'2','guzev',2,'Изменены mid_name и academic_degree для Профиль \"Гузев Михаил Александрович\".'),(101,'2010-07-05 23:56:24',2,3,'2','guzev',2,'Изменены photo для Профиль \"Гузев Михаил Александрович\".'),(102,'2010-07-05 23:58:48',2,3,'2','guzev',2,'Изменены photo для Профиль \"Гузев Михаил Александрович\".'),(103,'2010-07-06 00:00:09',2,3,'2','guzev',2,'Изменены photo для Профиль \"Гузев Михаил Александрович\".'),(104,'2010-07-06 00:01:38',2,3,'2','guzev',2,'Изменены photo для Профиль \"Гузев Михаил Александрович\".'),(105,'2010-07-06 00:02:29',2,3,'2','guzev',2,'Изменены photo для Профиль \"Гузев Михаил Александрович\".'),(106,'2010-07-06 00:04:33',1,21,'1','Яблочно-грушевый сок',1,''),(107,'2010-07-06 11:24:31',2,22,'1','Лаборатория конструктивных методов математики (№ 13)',2,'Изменен title.'),(108,'2010-07-06 11:24:35',2,22,'1','Лаборатория конструктивных методов математики (№ 13)',2,'Изменен head.'),(110,'2010-07-06 13:54:48',2,29,'1','Гузев М. А., Горбатый гоблин Квантовые носороги в современной физике // Мурзилка.Бомж из подворотни, 1812. 1. С. 1-100500.',1,''),(112,'2010-07-06 14:43:36',2,3,'1','root',2,'Добавлен Профиль \"Кравцов Дмитрий Носочек\".'),(113,'2010-07-06 15:03:15',2,3,'2','guzev',2,'Добавлен Профиль \"Гузев Михаил Александрович\".'),(114,'2010-07-07 10:24:38',2,23,'2','Отдел анализа и геометрии',1,''),(115,'2010-07-07 10:31:21',2,3,'3','chebotarev',3,''),(116,'2010-07-07 10:33:58',2,3,'6','dmitriev',1,''),(117,'2010-07-07 10:34:15',2,3,'6','dmitriev',2,'Изменен first_name и last_name.'),(118,'2010-07-07 10:37:39',2,3,'6','dmitriev',2,'Изменены academic_rank для Профиль \"Дмитриев Александр Алексеевич\".'),(119,'2010-07-07 10:42:23',1,3,'6','dmitriev',2,'Изменен username.'),(120,'2010-07-07 10:42:36',1,3,'6','dmitriev',2,'Изменен email.'),(121,'2010-07-07 10:43:22',1,23,'3','Отдел математической физики',1,''),(122,'2010-07-07 10:43:28',1,23,'4','Отдел системных исследований',1,''),(123,'2010-07-07 10:43:54',1,22,'1','Лаборатория конструктивных методов математики (№ 3.10)',2,'Изменен number, group и about.'),(124,'2010-07-07 10:44:04',1,23,'1','Непонятных вещей',3,''),(125,'2010-07-07 10:44:21',1,3,'6','dmitriev',3,''),(126,'2010-07-07 10:45:15',1,3,'7','dubinin',1,''),(127,'2010-07-07 10:45:27',1,3,'7','dubinin',2,'Изменен first_name и last_name.'),(128,'2010-07-07 10:46:34',1,22,'2','Лаборатория математического анализа (№ 3.3)',1,''),(129,'2010-07-07 10:47:49',1,3,'7','dubinin',2,'Изменены post для Профиль \"Дубинин Владимир Николаевич\".'),(130,'2010-07-07 10:48:27',1,3,'8','skurihin',1,''),(131,'2010-07-07 10:48:52',1,22,'3','Сектор топологии и алгебры (№ 3.8)',1,''),(132,'2010-07-07 10:49:00',1,3,'8','skurihin',2,'Изменен first_name и last_name. Изменены laboratory для Профиль \"Скурихин Евгений Евгеньевич\".'),(133,'2010-07-07 10:55:07',1,3,'9','chebotarev',1,''),(134,'2010-07-07 10:55:20',1,3,'9','chebotarev',2,'Изменен first_name и last_name.'),(135,'2010-07-07 10:55:36',1,22,'4','Лаборатория математического моделирования (№ 3.2)',1,''),(136,'2010-07-07 10:55:39',1,3,'9','chebotarev',2,'Изменены laboratory для Профиль \"Чеботарев Александр Юрьевич\".'),(137,'2010-07-07 10:56:51',1,3,'10','alekseev',1,''),(138,'2010-07-07 10:57:08',1,22,'5','  	 Лаборатория вычислительной аэро-гидродинамики (№ 3.5)',1,''),(139,'2010-07-07 10:57:19',1,3,'10','alekseev',2,'Изменен first_name и last_name. Изменены laboratory для Профиль \"Валентинович Геннадий Валентинович\".'),(140,'2010-07-07 10:58:17',1,3,'10','alekseev',2,'Изменен last_name.'),(141,'2010-07-07 10:59:18',1,3,'11','prohorov',1,''),(142,'2010-07-07 10:59:36',1,22,'6','Лаборатория вычислительных методов математической физики (№ 3.6)',1,''),(143,'2010-07-07 11:00:27',1,3,'11','prohorov',2,'Изменен first_name и last_name. Изменены laboratory для Профиль \"Прохоров Игорь Васильевич\".'),(144,'2010-07-07 11:01:14',1,3,'12','aschepkov',1,''),(145,'2010-07-07 11:01:50',1,22,'7','Лаборатория проблем оптимального управления (№ 3.1)',1,''),(146,'2010-07-07 11:01:55',1,3,'12','aschepkov',2,'Изменен first_name и last_name. Изменены laboratory для Профиль \"Ащепков Леонид Тимофеевич\".'),(147,'2010-07-07 11:02:42',1,3,'13','guram',1,''),(148,'2010-07-07 11:03:12',1,22,'8','Лаборатория вероятностных методов и системного анализа (№ 3.4)',1,''),(149,'2010-07-07 11:03:17',1,3,'13','guram',2,'Изменен first_name и last_name. Изменены laboratory для Профиль \"Цициашвили Гурами Шалвович\".'),(150,'2010-07-07 11:04:11',1,3,'14','gerasimenko',1,''),(151,'2010-07-07 11:04:44',1,22,'9','Сектор геодезии и геодинамики (№ 3.7-с)',1,''),(152,'2010-07-07 11:04:49',1,3,'14','gerasimenko',2,'Изменен first_name и last_name. Изменены laboratory для Профиль \"Герасименко Михаил Данилович\".'),(153,'2010-07-07 11:10:32',1,29,'1','Гузев М. А., Горбатый гоблин Квантовые носороги в современной физике // Мурзилка.Бомж из подворотни, 1812. 1. С. 1-100500.',3,''),(154,'2010-07-07 11:12:32',1,3,'7','dubinin',2,'Изменены laboratory для Профиль \"Дубинин Владимир Николаевич\".'),(155,'2010-07-07 11:14:41',1,3,'15','dmitriev',1,''),(156,'2010-07-07 11:14:51',1,3,'15','dmitriev',2,'Изменен first_name и last_name.'),(157,'2010-07-07 11:16:31',1,3,'16','gassan',1,''),(158,'2010-07-07 11:16:44',1,3,'16','gassan',2,'Изменен first_name и last_name.'),(159,'2010-07-07 11:35:34',2,29,'2','Гузев М. А. asd // as. 123. sda. С. 1-2.',1,''),(160,'2010-07-08 12:44:17',2,21,'1','Яблочно-грушевый сок',2,'Изменен body.'),(161,'2010-07-08 12:44:39',2,21,'1','Яблочно-грушевый сок',2,'Изменен body.'),(162,'2010-07-08 12:44:59',2,21,'1','Яблочно-грушевый сок',2,'Изменен body.'),(163,'2010-07-08 12:45:30',2,21,'1','Яблочно-грушевый сок',2,'Изменен body.'),(164,'2010-07-08 12:45:45',2,21,'1','Яблочно-грушевый сок',2,'Изменен body.'),(165,'2010-07-08 12:46:04',2,21,'1','Яблочно-грушевый сок',2,'Изменен body.'),(166,'2010-07-08 14:09:54',1,3,'17','shepelov',1,''),(167,'2010-07-08 14:10:45',1,22,'10','Группа ИТО (№ 0)',1,''),(168,'2010-07-08 14:11:46',1,3,'17','shepelov',2,'Изменен first_name и last_name. Изменены laboratory для Профиль \"Шепелов Михаил Алексеевич\".'),(169,'2010-07-08 14:31:56',1,3,'17','shepelov',2,'Изменен is_staff и is_superuser.'),(170,'2010-07-08 14:33:16',17,25,'3','/about/ -- Об институте',2,'Изменен content.'),(171,'2010-07-08 14:34:15',17,25,'3','/about/ -- Об институте',2,'Изменен content.'),(172,'2010-07-08 15:33:02',17,25,'2','/head/ -- Директор',2,'Изменен content.'),(173,'2010-07-13 10:52:06',1,3,'1','root',2,'Добавлен Профиль \"Кравцов Дмитрий Сергеевич\".'),(174,'2010-07-13 17:29:31',17,21,'9','Сайт расползается',3,''),(175,'2010-07-15 14:07:31',2,3,'2','guzev',2,'Изменены about для Профиль \"Гузев Михаил Александрович\".'),(176,'2010-07-20 10:39:08',2,22,'1','Лаборатория конструктивных методов в математике (№ 3.10)',2,'Изменен title.'),(177,'2010-07-20 12:01:58',2,3,'1','root',2,'Изменены post для Профиль \"Кравцов Дмитрий Сергеевич\".'),(178,'2010-07-20 12:02:04',2,3,'1','root',2,'Изменены laboratory для Профиль \"Кравцов Дмитрий Сергеевич\".'),(179,'2010-07-21 11:18:21',2,22,'1','Лаборатория конструктивных методов в математике (№ 3.10)',2,'Изменен about.'),(180,'2010-07-23 11:59:51',1,25,'5','/basic-chairs/ -- Базовые кафедры',2,'Изменен content.'),(181,'2010-07-23 12:02:29',1,25,'1','/research/main/ -- Основные исследования',2,'Изменен url.'),(182,'2010-07-23 12:08:33',1,25,'6','/research/reports/ -- Отчёты',1,''),(183,'2010-07-23 12:09:38',1,25,'7','/research/publications/ -- Научные сборники',1,''),(184,'2010-07-23 13:12:01',2,25,'2','/users/head/ -- Директор',2,'Изменен url.'),(185,'2010-07-26 13:07:40',2,25,'3','/about/ -- Об институте',2,'Изменен content.'),(186,'2010-07-26 13:59:57',17,25,'2','/users/head/ -- Директор',2,'Изменен content.'),(187,'2010-07-26 14:01:57',17,25,'2','/users/head/ -- Директор',2,'Изменен content.'),(188,'2010-07-26 14:07:50',17,22,'10','Группа ИТО (№ 1)',2,'Изменен number.'),(189,'2010-07-26 14:11:48',17,22,'10','Группа ИТО (№ 0)',2,'Изменен number.'),(190,'2010-07-26 14:17:06',17,25,'3','/about/ -- Об институте',2,'Изменен content.'),(191,'2010-07-26 14:17:51',17,25,'5','/basic-chairs/ -- Базовые кафедры',2,'Изменен content.'),(192,'2010-07-26 14:18:03',17,25,'1','/research/main/ -- Основные исследования',2,'Изменен content.'),(193,'2010-07-26 14:22:00',2,3,'2','guzev',2,'Изменены photo для Профиль \"Гузев Михаил Александрович\".'),(194,'2010-07-26 14:29:37',2,3,'2','guzev',2,'Ни одно поле не изменено.');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `app_label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'message','auth','message'),(5,'content type','contenttypes','contenttype'),(6,'session','sessions','session'),(7,'site','sites','site'),(8,'log entry','admin','logentry'),(9,'poll','polls','poll'),(10,'choice','polls','choice'),(12,'profile','main','profile'),(16,'laboratory','main','laboratory'),(15,'publication','main','publication'),(17,'news','main','news'),(29,'publication','publications','publication'),(22,'laboratory','labs','laboratory'),(20,'profile','users','profile'),(21,'news','news','news'),(23,'lab group','labs','labgroup'),(24,'nav item','navtree','navitem'),(25,'flat page','flatpages','flatpage'),(28,'migration history','south','migrationhistory');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_flatpage`
--

DROP TABLE IF EXISTS `django_flatpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_flatpage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `enable_comments` tinyint(1) NOT NULL,
  `template_name` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `registration_required` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_flatpage_a4b49ab` (`url`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_flatpage`
--

LOCK TABLES `django_flatpage` WRITE;
/*!40000 ALTER TABLE `django_flatpage` DISABLE KEYS */;
INSERT INTO `django_flatpage` VALUES (1,'/research/main/','Основные исследования','<P align=justify>Основные научные направления - фундаментальные исследования проблем теоретической математики (теория чисел, топология и алгебра, теория функций и функциональный анализ, дифференциальные уравнения), математической и теоретической физики, теории вероятностей и математической статистики, вычислительной математики, дискретной математики и математической кибернетики. <BR>Математическое моделирование природных процессов и хозяйственной деятельности человека. </P>',0,'',0),(2,'/users/head/','Директор','<P dir=ltr style=\"MARGIN-RIGHT: 0px\" align=justify><STRONG><BR>Михаил Александрович Гузев</STRONG> специалист по математическому моделированию упруго-пластического поведения материалов с дефектами структуры и процессов распространения акустических волн в случайно-неоднородных средах. <BR><BR>М.А. Гузев , 1962 г. рождения, окончил с отличием физический факультет Ленинградского государственного университета в 1984 г. и был зачислен в аспирантуру Научно-исследовательского института физики того же университета. <BR>По окончании аспирантуры в 1987 г. защитил диссертацию \"Адиабатический формализм и квазиклассика для дискретных уровней\" на степень кандидата физико-математических наук. Научную деятельность М.А. Гузев продолжил в Тихоокеанском океанологическом институте Дальневосточного отделения АН СССР, г. Владивосток, работая младшим научным, затем научным сотрудником лаборатории статистической гидрофизики с 1987 г. по 1991 г.. <BR><BR>В 1991 г. избран по конкурсу на должность старшего научного сотрудника лаборатории геоинформатики Института автоматики и процессов управления с вычислительным центром ДВО АН СССР (современное наименование - Институт автоматики и процессов управления ДВО РАН). <BR><BR>С 1998 г. по 2003 г. работал в лаборатории механики деформируемого твердого тела этого же института. В 1999 г. защитил докторскую диссертацию на тему \"Неевклидовы модели упруго-пластических материалов с дефектами структуры\" (физико-математические науки). <BR><BR>В 2003 г. избран членом-корреспондентом Российской академии наук. С 2003 г. по 2005 г. М.А. Гузев был заместителем директора по научной работе Института автоматики и процессов управления ДВО РАН. В 2005 г. переходит в Президиум ДВО РАН, в котором работает до 2008 г. на должности главного ученого секретаря. В апреле 2008 г. избран директором Института прикладной математики ДВО РАН. <BR>М.А. Гузев уделяет большое внимание обучению студентов и подготовке научных кадров: директор Института математики и компьютерных наук Дальневосточного государственного университета, профессор этого университета, председатель диссертационного совета. <BR><BR>Научные результаты - предложена дифференциальная формулировка описания евклидовых свойств математической модели классической теории упругости и показано, что она содержит \"скрытые\" параметры, допускающие естественную интерпретацию в качестве геометрических объектов аффинно-метрических пространств. Для материалов с дефектами структуры построен новый класс геометрически замкнутых неевклидовых моделей упруго-пластических материалов на основе предположения об аффинно-метрической структуре внутренних взаимодействий между частицами среды. Предложены методы расчета вычисления статистических пространственно-временных характеристик акустических волн для различных условий их распространения во флуктуирующих слабо диссипативных средах. <BR><BR>Имеет более 100 публикаций </P>',0,'',0),(3,'/about/','Об институте','<P dir=ltr style=\"MARGIN-RIGHT: 0px\" align=justify><STRONG>ИПМ ДВО РАН</STRONG> был создан <STRONG>1 июля 1988</STRONG> года на основе отдела прикладной математики Вычислительного центра Дальневосточного отделения Академии наук СССР (основание - приказ по Дальневосточному отделению Российской академии наук от 29 января 1988 года N 16034-30d \"Об организации <B>Института прикладной математики\"). <BR><BR>Институт находится в г.Владивостоке и имеет отделение в г.Хабаровске. <BR></B><BR>Институт ведет исследования в области теоретической и прикладной математики в соответствии с Уставом Российской академии наук. РАН, <BR>Отделение математики и Отделение информатики, вычислительной техники и автоматизации Российской академии наук утверждают основные направления деятельности, пятилетние и годовые планы Института. <BR>С 1988 по 1992 год Институт возглавлял член-корреспондент РАН В.П.Коробейников, а с 1992 года по ноябрь 2007 года директором был член-корреспондент РАН Н.В.Кузнецов. <BR>С ноября 2007 года Институт возглавляет член-корреспондент РАН М.А. Гузев. </P>',0,'',0),(4,'/grad/','Аспирантура','',0,'',0),(5,'/basic-chairs/','Базовые кафедры','<P align=justify><STRONG>ИПМ ДВО РАН</STRONG> имеет четыре базовые математические кафедры в вузах г. Владивостока <BR><BR>Дальневосточный Государственный университет (г. Владивосток) <BR>* кафедра математической физики и компьютерного моделирования (зав. кафедрой - д.ф.-м.н. Д.С. Аниконов); <BR>* кафедра прикладной математики и математических методов в экономике (зав. кафедрой - д.ф.-м.н. Л.Т. Ащепков); <BR>* кафедра теории функций и функционального анализа ( зав. кафедрой - д.ф.-м.н. Н.Н. Фролов). <BR>Дальневосточный Государственный Технический рыбный университет: <BR>* кафедра прикладной математики (зав. кафедрой - д.ф.-м.н. А.И. Абакумов). </P>',0,'',0),(6,'/research/reports/','Отчёты','',0,'',0),(7,'/research/publications/','Научные сборники','',0,'',0);
/*!40000 ALTER TABLE `django_flatpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_flatpage_sites`
--

DROP TABLE IF EXISTS `django_flatpage_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_flatpage_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flatpage_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `flatpage_id` (`flatpage_id`,`site_id`),
  KEY `django_flatpage_sites_dedefef8` (`flatpage_id`),
  KEY `django_flatpage_sites_6223029` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_flatpage_sites`
--

LOCK TABLES `django_flatpage_sites` WRITE;
/*!40000 ALTER TABLE `django_flatpage_sites` DISABLE KEYS */;
INSERT INTO `django_flatpage_sites` VALUES (22,1,1),(19,2,1),(20,3,1),(7,4,1),(21,5,1),(14,6,1),(15,7,1);
/*!40000 ALTER TABLE `django_flatpage_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0a2a97ac848711153b8ebe046f087187','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS41MWM0NDczNzAwOTdjNjcxOWQ1\nYTE2ODM0YTA5MTAwMA==\n','2010-07-13 11:16:19'),('15a1943045a6e6135cda603aff2e26ab','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS41MWM0NDczNzAwOTdjNjcxOWQ1\nYTE2ODM0YTA5MTAwMA==\n','2010-07-08 19:46:47'),('c1de226c14c6f813c8a9276ea40d63f5','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS41MWM0NDczNzAwOTdjNjcxOWQ1\nYTE2ODM0YTA5MTAwMA==\n','2010-07-09 07:38:58'),('f3201eb393c20b74ee98f9d33d7fa971','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS41MWM0NDczNzAwOTdjNjcxOWQ1\nYTE2ODM0YTA5MTAwMA==\n','2010-07-12 10:37:45'),('af378bfc605853a5e8161469084b2ffe','gAJ9cQEuZmNiYTM3YTRhMjA2MzU3NTI2ZjVkOTA1ZjVlYmRjZTM=\n','2010-07-09 15:44:30'),('5ad7afeb471fdf90133c004ecd9c7add','gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLjBkMjAyMzIxMGMwZjljZjA5MmZhMjcxM2M5\nODk0NGY0\n','2010-07-18 16:12:50'),('30905614a27052a664f7ea347a8af642','gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLjBkMjAyMzIxMGMwZjljZjA5MmZhMjcxM2M5\nODk0NGY0\n','2010-07-17 12:04:38'),('a7ccb9255f45bb3af2baecceaf39aa51','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigECdS43OTczOWE5NjM5ZTVjZTU0OGYy\nNzA0OTUwYTgzMDkwZg==\n','2010-07-15 14:23:15'),('57acf6ff90a427b238871f566034a831','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigECdS43OTczOWE5NjM5ZTVjZTU0OGYy\nNzA0OTUwYTgzMDkwZg==\n','2010-07-10 19:18:58'),('a5ee53e4ba67358a9c7ab31a649759eb','gAJ9cQEoVQp0ZXN0Y29va2llcQJVBndvcmtlZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQJVEl9hdXRo\nX3VzZXJfYmFja2VuZHEFVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2Vu\nZHEGdS5mYmUxYjljZjY5ZmE0ZTc1ZTg2MWEzNTVlNzIyNmI3MA==\n','2010-07-13 11:15:51'),('a6fc28389330dd10774530b494044dd4','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS41MWM0NDczNzAwOTdjNjcxOWQ1\nYTE2ODM0YTA5MTAwMA==\n','2010-07-15 21:27:11'),('1271639470944584d0e10d3f19da0577','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigECdS43OTczOWE5NjM5ZTVjZTU0OGYy\nNzA0OTUwYTgzMDkwZg==\n','2010-07-15 21:59:15'),('81ca9fc707c586afae6e519488b9f268','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigECdS43OTczOWE5NjM5ZTVjZTU0OGYy\nNzA0OTUwYTgzMDkwZg==\n','2010-07-15 22:26:43'),('e3a238105b39abda013b5430fb3a031b','gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLjBkMjAyMzIxMGMwZjljZjA5MmZhMjcxM2M5\nODk0NGY0\n','2010-07-17 03:08:09'),('f86979c8f29b26a322b5a420c372a39e','gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLjBkMjAyMzIxMGMwZjljZjA5MmZhMjcxM2M5\nODk0NGY0\n','2010-07-18 16:09:20'),('1f126f975857dd8b1569ef14b42918e5','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigECdS43OTczOWE5NjM5ZTVjZTU0OGYy\nNzA0OTUwYTgzMDkwZg==\n','2010-07-20 13:55:22'),('87d7f5752afaa4a61e68d115e266532c','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigECdS43OTczOWE5NjM5ZTVjZTU0OGYy\nNzA0OTUwYTgzMDkwZg==\n','2010-07-21 00:38:32'),('61691be37c6148604fcffe3aaffb3b2e','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigECdS43OTczOWE5NjM5ZTVjZTU0OGYy\nNzA0OTUwYTgzMDkwZg==\n','2010-07-21 11:23:02'),('1f1cab293ef564d73938eca96c9e1577','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigECdS43OTczOWE5NjM5ZTVjZTU0OGYy\nNzA0OTUwYTgzMDkwZg==\n','2010-07-19 20:59:03'),('c198936030b535243811161d42e3a01d','gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLjBkMjAyMzIxMGMwZjljZjA5MmZhMjcxM2M5\nODk0NGY0\n','2010-07-21 10:22:08'),('df5a385e575553ba834101c9dfdf89f4','gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLjBkMjAyMzIxMGMwZjljZjA5MmZhMjcxM2M5\nODk0NGY0\n','2010-07-20 00:30:52'),('4efc3eb976e3e67c0531a9a837f93462','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigECdS43OTczOWE5NjM5ZTVjZTU0OGYy\nNzA0OTUwYTgzMDkwZg==\n','2010-07-20 00:04:10'),('edbb0a3f2a5a47c75ccb581bec435d46','gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLjBkMjAyMzIxMGMwZjljZjA5MmZhMjcxM2M5\nODk0NGY0\n','2010-07-23 13:01:08'),('2e2b758b0a669201f3761d4737e7c114','gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLjBkMjAyMzIxMGMwZjljZjA5MmZhMjcxM2M5\nODk0NGY0\n','2010-07-23 10:46:37'),('cb8f8b1d03a3d5ff6ebda575984573d7','gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLjBkMjAyMzIxMGMwZjljZjA5MmZhMjcxM2M5\nODk0NGY0\n','2010-07-22 14:52:40'),('aeb74550796e6185c52667c9aa59d1f7','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS41MWM0NDczNzAwOTdjNjcxOWQ1\nYTE2ODM0YTA5MTAwMA==\n','2010-07-22 14:31:45'),('a2caacc617b9414d3b2044c293300170','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigECdS43OTczOWE5NjM5ZTVjZTU0OGYy\nNzA0OTUwYTgzMDkwZg==\n','2010-08-04 14:35:35'),('032615439bfac66409799d4d1b7dc734','gAJ9cQEuZmNiYTM3YTRhMjA2MzU3NTI2ZjVkOTA1ZjVlYmRjZTM=\n','2010-08-05 11:20:38'),('f867032b1848d44f0f19e03837782339','gAJ9cQEuZmNiYTM3YTRhMjA2MzU3NTI2ZjVkOTA1ZjVlYmRjZTM=\n','2010-08-05 11:15:48'),('8b1c8d010ae4047a1a8f6f4e05cea8c3','gAJ9cQEuZmNiYTM3YTRhMjA2MzU3NTI2ZjVkOTA1ZjVlYmRjZTM=\n','2010-08-05 11:14:44'),('e5dee0a863e2947eef953d3595f04a81','gAJ9cQEuZmNiYTM3YTRhMjA2MzU3NTI2ZjVkOTA1ZjVlYmRjZTM=\n','2010-08-05 11:15:04'),('3a17ba3e584279cefe5e6d2676f74a06','gAJ9cQEuZmNiYTM3YTRhMjA2MzU3NTI2ZjVkOTA1ZjVlYmRjZTM=\n','2010-07-30 11:04:42'),('b16779a53262586416240059a81c1194','gAJ9cQEuZmNiYTM3YTRhMjA2MzU3NTI2ZjVkOTA1ZjVlYmRjZTM=\n','2010-07-30 11:05:36'),('df92d0432a97a4b860a621e69d81b365','gAJ9cQEuZmNiYTM3YTRhMjA2MzU3NTI2ZjVkOTA1ZjVlYmRjZTM=\n','2010-08-05 12:06:53'),('f3bffa97dee0e530f0a8ba5105212de4','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS41MWM0NDczNzAwOTdjNjcxOWQ1\nYTE2ODM0YTA5MTAwMA==\n','2010-08-05 14:54:10'),('7ee0092be0c20d47b5c13c3134677c14','gAJ9cQEuZmNiYTM3YTRhMjA2MzU3NTI2ZjVkOTA1ZjVlYmRjZTM=\n','2010-07-29 15:31:30'),('518908f6aa4670e1371a70a4ce47d2c1','gAJ9cQEuZmNiYTM3YTRhMjA2MzU3NTI2ZjVkOTA1ZjVlYmRjZTM=\n','2010-08-09 14:14:04'),('51d4e01528a658ebe1c9ae70aac4f89f','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigERdS43Mjk0OTYwOWQzYzRhNjdjZjlj\nYTc2MTgwZmExNTU4ZA==\n','2010-08-09 14:15:26'),('2284535e5c62a023aae3c47cb4395c1c','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigECdS43OTczOWE5NjM5ZTVjZTU0OGYy\nNzA0OTUwYTgzMDkwZg==\n','2010-08-09 10:51:03'),('611a20abfc0fdbc1a772a2bace1e859b','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigECdS43OTczOWE5NjM5ZTVjZTU0OGYy\nNzA0OTUwYTgzMDkwZg==\n','2010-08-09 10:23:29'),('5dc78c8b5c510975d04a7c56e403e825','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigECdS43OTczOWE5NjM5ZTVjZTU0OGYy\nNzA0OTUwYTgzMDkwZg==\n','2010-08-09 13:42:30');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'idkravitz.homelinux.org','ИПМ ДВО РАН');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labs_labgroup`
--

DROP TABLE IF EXISTS `labs_labgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `labs_labgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labs_labgroup`
--

LOCK TABLES `labs_labgroup` WRITE;
/*!40000 ALTER TABLE `labs_labgroup` DISABLE KEYS */;
INSERT INTO `labs_labgroup` VALUES (2,'Отдел анализа и геометрии'),(3,'Отдел математической физики'),(4,'Отдел системных исследований');
/*!40000 ALTER TABLE `labs_labgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labs_laboratory`
--

DROP TABLE IF EXISTS `labs_laboratory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `labs_laboratory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `number` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `group_id` int(11) NOT NULL,
  `head_id` int(11) NOT NULL,
  `about` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `head_id` (`head_id`),
  KEY `labs_laboratory_bda51c3c` (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labs_laboratory`
--

LOCK TABLES `labs_laboratory` WRITE;
/*!40000 ALTER TABLE `labs_laboratory` DISABLE KEYS */;
INSERT INTO `labs_laboratory` VALUES (1,'Лаборатория конструктивных методов в математике','3.10',2,2,''),(2,'Лаборатория математического анализа','3.3',2,7,''),(3,'Сектор топологии и алгебры','3.8',2,8,''),(4,'Лаборатория математического моделирования','3.2',3,9,''),(5,'  	 Лаборатория вычислительной аэро-гидродинамики','3.5',3,10,''),(6,'Лаборатория вычислительных методов математической физики','3.6',3,11,''),(7,'Лаборатория проблем оптимального управления','3.1',4,12,''),(8,'Лаборатория вероятностных методов и системного анализа','3.4',4,13,''),(9,'Сектор геодезии и геодинамики','3.7-с',4,14,''),(10,'Группа ИТО','0',2,17,'');
/*!40000 ALTER TABLE `labs_laboratory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labs_laboratory_publications`
--

DROP TABLE IF EXISTS `labs_laboratory_publications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `labs_laboratory_publications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `laboratory_id` int(11) NOT NULL,
  `publication_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `laboratory_id` (`laboratory_id`,`publication_id`),
  KEY `publication_id_refs_id_5d7eda9` (`publication_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labs_laboratory_publications`
--

LOCK TABLES `labs_laboratory_publications` WRITE;
/*!40000 ALTER TABLE `labs_laboratory_publications` DISABLE KEYS */;
/*!40000 ALTER TABLE `labs_laboratory_publications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_laboratory`
--

DROP TABLE IF EXISTS `main_laboratory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_laboratory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `head_id` int(11) NOT NULL,
  `about` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `head_id` (`head_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_laboratory`
--

LOCK TABLES `main_laboratory` WRITE;
/*!40000 ALTER TABLE `main_laboratory` DISABLE KEYS */;
INSERT INTO `main_laboratory` VALUES (1,'Лаборатория конструктивных методов математики',2,'Лаборатория основана в 2007 году по инициативе чл.-корр. РАН Н. В. Кузнецова (директора института с 1992 по ноябрь 2007 года). ');
/*!40000 ALTER TABLE `main_laboratory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_news`
--

DROP TABLE IF EXISTS `main_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_news_cc846901` (`author_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_news`
--

LOCK TABLES `main_news` WRITE;
/*!40000 ALTER TABLE `main_news` DISABLE KEYS */;
INSERT INTO `main_news` VALUES (1,'Первый новостной топик','Самая первая новость, нужен WYSIWYG редактор для тела новостей.\r\nОфигенно нужен.\r\n\r\nBTW, Django рулит','2010-06-25 17:31:40',2);
/*!40000 ALTER TABLE `main_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_profile`
--

DROP TABLE IF EXISTS `main_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `laboratory_id` int(11) NOT NULL,
  `mid_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `academic_degree` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `main_profile_ff6ca685` (`laboratory_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_profile`
--

LOCK TABLES `main_profile` WRITE;
/*!40000 ALTER TABLE `main_profile` DISABLE KEYS */;
INSERT INTO `main_profile` VALUES (1,3,1,'Юрьевич','-'),(2,2,1,'Александрович','-');
/*!40000 ALTER TABLE `main_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_profile_publications`
--

DROP TABLE IF EXISTS `main_profile_publications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_profile_publications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_id` int(11) NOT NULL,
  `publication_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `profile_id` (`profile_id`,`publication_id`),
  KEY `publication_id_refs_id_51dfee5b` (`publication_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_profile_publications`
--

LOCK TABLES `main_profile_publications` WRITE;
/*!40000 ALTER TABLE `main_profile_publications` DISABLE KEYS */;
INSERT INTO `main_profile_publications` VALUES (3,1,1),(4,2,1);
/*!40000 ALTER TABLE `main_profile_publications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_publication`
--

DROP TABLE IF EXISTS `main_publication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_publication` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `other_authors` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `year` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_publication`
--

LOCK TABLES `main_publication` WRITE;
/*!40000 ALTER TABLE `main_publication` DISABLE KEYS */;
INSERT INTO `main_publication` VALUES (1,'123','Петров',1984);
/*!40000 ALTER TABLE `main_publication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_user`
--

DROP TABLE IF EXISTS `main_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_user` (
  `user_ptr_id` int(11) NOT NULL,
  `gender` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_ptr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_user`
--

LOCK TABLES `main_user` WRITE;
/*!40000 ALTER TABLE `main_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navtree_navitem`
--

DROP TABLE IF EXISTS `navtree_navitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `navtree_navitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `content_object_id` int(11) DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `colour` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_object_id` (`content_object_id`),
  KEY `navtree_navitem_63f17a16` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `navtree_navitem`
--

LOCK TABLES `navtree_navitem` WRITE;
/*!40000 ALTER TABLE `navtree_navitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `navtree_navitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_news`
--

DROP TABLE IF EXISTS `news_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `news_news_cc846901` (`author_id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_news`
--

LOCK TABLES `news_news` WRITE;
/*!40000 ALTER TABLE `news_news` DISABLE KEYS */;
INSERT INTO `news_news` VALUES (3,'Новый сайт института','Запущена тестовая версия нового сайта, присутствует ссылка на предыдущую версию.','2010-07-08 14:28:38',13),(62,'11','111','2010-07-26 13:54:12',1);
/*!40000 ALTER TABLE `news_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls_choice`
--

DROP TABLE IF EXISTS `polls_choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `polls_choice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `poll_id` int(11) NOT NULL,
  `choice` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `votes` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `polls_choice_763e883` (`poll_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_choice`
--

LOCK TABLES `polls_choice` WRITE;
/*!40000 ALTER TABLE `polls_choice` DISABLE KEYS */;
INSERT INTO `polls_choice` VALUES (1,1,'Not much',5),(2,1,'The sky',8);
/*!40000 ALTER TABLE `polls_choice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls_poll`
--

DROP TABLE IF EXISTS `polls_poll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `polls_poll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `pub_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_poll`
--

LOCK TABLES `polls_poll` WRITE;
/*!40000 ALTER TABLE `polls_poll` DISABLE KEYS */;
INSERT INTO `polls_poll` VALUES (1,'What\'s up?','2010-06-24 19:52:37'),(2,'Почему нельзя создать папку с именем con?','2010-06-24 20:59:53');
/*!40000 ALTER TABLE `polls_poll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publications_publication`
--

DROP TABLE IF EXISTS `publications_publication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publications_publication` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `other_authors` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `year` int(10) unsigned NOT NULL,
  `publishing_house` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `journal` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `journal_issue` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `start_page` int(10) unsigned NOT NULL,
  `end_page` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publications_publication`
--

LOCK TABLES `publications_publication` WRITE;
/*!40000 ALTER TABLE `publications_publication` DISABLE KEYS */;
INSERT INTO `publications_publication` VALUES (6,'asd','5','0','asd',1,'2','3','4',5,6),(10,'ываыфв','6','1','ывф',123,'фыв','фыв','1',23,2354),(11,'ыфв22, купрум','4','0','',1234,'фыв','фыв','2',1,100500),(12,'asd','5','0','',1234,'asd','asd','23',23,43),(13,'asd','6','0','sd',1234,'a','asd','22',1,2);
/*!40000 ALTER TABLE `publications_publication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publications_publication_authors`
--

DROP TABLE IF EXISTS `publications_publication_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publications_publication_authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publication_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `publication_id` (`publication_id`,`profile_id`),
  KEY `publications_publication_authors_8564e1ab` (`publication_id`),
  KEY `publications_publication_authors_141c6eec` (`profile_id`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publications_publication_authors`
--

LOCK TABLES `publications_publication_authors` WRITE;
/*!40000 ALTER TABLE `publications_publication_authors` DISABLE KEYS */;
INSERT INTO `publications_publication_authors` VALUES (30,10,10),(23,6,7),(22,6,3),(21,6,10),(31,10,12),(20,6,8),(59,12,12),(56,13,11),(82,11,1);
/*!40000 ALTER TABLE `publications_publication_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `south_migrationhistory`
--

DROP TABLE IF EXISTS `south_migrationhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `south_migrationhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `south_migrationhistory`
--

LOCK TABLES `south_migrationhistory` WRITE;
/*!40000 ALTER TABLE `south_migrationhistory` DISABLE KEYS */;
INSERT INTO `south_migrationhistory` VALUES (1,'users','0001_initial','2010-07-06 01:29:28'),(2,'news','0001_initial','2010-07-06 01:36:40'),(3,'labs','0001_initial','2010-07-06 01:38:26'),(4,'users','0002_auto__add_field_profile_is_a_cool_guy','2010-07-06 09:35:19'),(5,'users','0003_auto__del_field_profile_is_a_cool_guy','2010-07-06 09:37:30'),(6,'users','0004_auto__chg_field_profile_academic_rank','2010-07-06 23:36:49'),(7,'users','0005_auto__chg_field_profile_post','2010-07-06 23:47:19'),(8,'users','0006_auto__add_field_profile_about','2010-07-15 03:02:30');
/*!40000 ALTER TABLE `south_migrationhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_laboratory`
--

DROP TABLE IF EXISTS `users_laboratory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_laboratory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `number` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `head_id` int(11) NOT NULL,
  `about` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `head_id` (`head_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_laboratory`
--

LOCK TABLES `users_laboratory` WRITE;
/*!40000 ALTER TABLE `users_laboratory` DISABLE KEYS */;
INSERT INTO `users_laboratory` VALUES (1,'Лаборатория конструктивных методов математики','3.10',2,'');
/*!40000 ALTER TABLE `users_laboratory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_profile`
--

DROP TABLE IF EXISTS `users_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `laboratory_id` int(11) NOT NULL,
  `mid_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `academic_degree` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `academic_rank` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `post` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `users_profile_ff6ca685` (`laboratory_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_profile`
--

LOCK TABLES `users_profile` WRITE;
/*!40000 ALTER TABLE `users_profile` DISABLE KEYS */;
INSERT INTO `users_profile` VALUES (1,2,1,'Александрович','д.ф.-м.н.','член-корр. РАН','','img/uploads/photo/ph_guzev.JPG','<p><b>Михаил Александрович \r\nГузев</b>, \r\n      член корр РАН, директор и заведующий лабораторей \r\n      конструктивных методов математики  ИПМ ДВО РАН. \r\n  </p>\r\n\r\n<p> специалист по математическому моделированию упруго-пластического \r\nповедения материалов с дефектами структуры и процессов распространения \r\nакустических волн в случайно-неоднородных средах.</p> \r\n<p>&nbsp;&nbsp;&nbsp;М.А. Гузев , 1962 г. рождения, окончил с отличием\r\n физический факультет Ленинградского государственного университета в \r\n1984 г. и был зачислен в аспирантуру Научно-исследовательского института\r\n физики того же университета. По окончании аспирантуры в 1987 г. защитил\r\n диссертацию \"Адиабатический формализм и квазиклассика для дискретных \r\nуровней\" на степень кандидата физико-математических наук.\r\n</p>\r\n<p>Научную деятельность М.А. Гузев продолжил в \r\nТихоокеанском океанологическом институте Дальневосточного отделения АН \r\nСССР, г. Владивосток, работая младшим научным, затем научным сотрудником\r\n лаборатории статистической гидрофизики с 1987 г. по 1991 г.. В 1991 г. \r\nизбран по конкурсу на должность старшего научного сотрудника лаборатории\r\n геоинформатики Института автоматики и процессов управления с \r\nвычислительным центром ДВО АН СССР (современное наименование - Институт \r\nавтоматики и процессов управления ДВО РАН). С 1998 г. по 2003 г. работал\r\n в лаборатории механики деформируемого твердого тела этого же института.\r\n \r\n</p>\r\n<p>В 1999 г. защитил докторскую диссертацию на тему \"Неевклидовы модели \r\nупруго-пластических материалов с дефектами структуры\" \r\n(физико-математические науки). В 2003 г. избран членом-корреспондентом \r\nРоссийской академии наук. </p>\r\n\r\n<p>\r\nС 2003 г. по 2005 г. М.А. Гузев был заместителем \r\nдиректора по научной работе Института автоматики и процессов управления \r\nДВО РАН. В 2005 г. переходит в Президиум ДВО РАН, в котором работает до \r\n2008 г. на должности главного ученого секретаря. В апреле 2008 г. избран\r\n директором Института прикладной математики ДВО РАН. </p>\r\n<p>\r\nМ.А. Гузев уделяет большое внимание обучению студентов и\r\n подготовке научных кадров: директор Института математики и компьютерных\r\n наук Дальневосточного государственного университета, профессор этого \r\nуниверситета, председатель диссертационного совета.\r\n</p>\r\n<p>Научные результаты - предложена дифференциальная формулировка \r\nописания евклидовых свойств математической модели классической теории \r\nупругости и показано, что она содержит \"скрытые\" параметры, допускающие \r\nестественную интерпретацию в качестве геометрических объектов \r\nаффинно-метрических пространств. Для материалов с дефектами структуры \r\nпостроен новый класс геометрически замкнутых неевклидовых моделей \r\nупруго-пластических материалов на основе предположения об \r\nаффинно-метрической структуре внутренних взаимодействий между частицами \r\nсреды. Предложены методы расчета вычисления статистических \r\nпространственно-временных характеристик акустических волн для различных \r\nусловий их распространения во флуктуирующих слабо диссипативных средах. </p>'),(3,7,2,'Николаевич','','','','',''),(4,8,3,'Евгеньевич','','','','',''),(5,9,4,'Юрьевич','','','','',''),(6,10,5,'Валентинович','','','','',''),(7,11,6,'Васильевич','','','','',''),(8,12,7,'Тимофеевич','','','','',''),(9,13,8,'Шалвович','','','','',''),(10,14,9,'Данилович','','','','',''),(11,15,1,'Алексеевич','','','','',''),(12,16,1,'Владимирович','','','','',''),(13,17,10,'Алексеевич','','','','','<P>&nbsp;</P>'),(14,1,10,'Сергеевич','','','лаборант','','<P><SUP></SUP>&nbsp;</P>');
/*!40000 ALTER TABLE `users_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_profile_publications`
--

DROP TABLE IF EXISTS `users_profile_publications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_profile_publications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_id` int(11) NOT NULL,
  `publication_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `profile_id` (`profile_id`,`publication_id`),
  KEY `publication_id_refs_id_b2b86091` (`publication_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_profile_publications`
--

LOCK TABLES `users_profile_publications` WRITE;
/*!40000 ALTER TABLE `users_profile_publications` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_profile_publications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_publication`
--

DROP TABLE IF EXISTS `users_publication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_publication` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `other_authors` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `year` int(10) unsigned NOT NULL,
  `publishing_house` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `journal` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `journal_issue` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `start_page` int(10) unsigned NOT NULL,
  `end_page` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_publication`
--

LOCK TABLES `users_publication` WRITE;
/*!40000 ALTER TABLE `users_publication` DISABLE KEYS */;
INSERT INTO `users_publication` VALUES (1,'asd','0','0','',123,'','sd','asd',1,2);
/*!40000 ALTER TABLE `users_publication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_publication_authors`
--

DROP TABLE IF EXISTS `users_publication_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_publication_authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publication_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `publication_id` (`publication_id`,`profile_id`),
  KEY `profile_id_refs_id_95eac5f` (`profile_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_publication_authors`
--

LOCK TABLES `users_publication_authors` WRITE;
/*!40000 ALTER TABLE `users_publication_authors` DISABLE KEYS */;
INSERT INTO `users_publication_authors` VALUES (1,1,1);
/*!40000 ALTER TABLE `users_publication_authors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-07-26 14:32:40
