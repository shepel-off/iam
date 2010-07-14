-- MySQL dump 10.13  Distrib 5.1.36, for suse-linux-gnu (i686)
--
-- Host: localhost    Database: IAM
-- ------------------------------------------------------
-- Server version	5.1.36-log

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
INSERT INTO `auth_user` VALUES (1,'root','Дмитрий','Кравцов','idkravitz@gmail.com','sha1$4a21c$e9dee9208c8d03ae1dc687a65d4f30d561287c14',1,1,1,'2010-07-14 11:07:55','2010-06-24 18:50:32'),(2,'guzev','Михаил','Гузев','guzev@iam.dvo.ru','sha1$4ca9b$c2874f4a5bd266f4bcdf51aa822f8e1072c89270',1,1,1,'2010-07-14 14:22:01','2010-06-25 12:23:41'),(7,'dubinin','Владимир','Дубинин','','sha1$2c561$8d4806b68fdb2526b263ff0f04a6174aa651c525',0,1,0,'2010-07-07 10:45:15','2010-07-07 10:45:15'),(8,'skurihin','Евгений','Скурихин','','sha1$bd323$f1943ea3f0f1a141c1e69288d342751d5536abdf',0,1,0,'2010-07-07 10:48:27','2010-07-07 10:48:27'),(9,'chebotarev','Александр','Чеботарев','','sha1$55c0c$5f9f07a4238d09533238efab90d5a0cdcdf22a13',0,1,0,'2010-07-14 12:10:22','2010-07-07 10:55:07'),(10,'alekseev','Геннадий','Алексеев','','sha1$f42a1$e49ee6705cf74badb72299555f6e2a6e25c1a9f7',0,1,0,'2010-07-07 10:56:51','2010-07-07 10:56:51'),(11,'prohorov','Игорь','Прохоров','','sha1$fc9ec$f261841b9a5e4075661755f9c6c871a751e427ae',0,1,0,'2010-07-07 10:59:18','2010-07-07 10:59:18'),(12,'aschepkov','Леонид','Ащепков','','sha1$2c4f7$ea7faf1e910c418a5215ebb65e00f2e422131291',0,1,0,'2010-07-07 11:01:14','2010-07-07 11:01:14'),(13,'guram','Гурами','Цициашвили','','sha1$41272$dc30e8e7838fe648772c879d9cb31746f012f592',0,1,0,'2010-07-07 11:02:42','2010-07-07 11:02:42'),(14,'gerasimenko','Михаил','Герасименко','','sha1$6be5a$1b0662ccfef3a774e2b226080c37ae694cc40677',0,1,0,'2010-07-07 11:04:11','2010-07-07 11:04:11'),(15,'dmitriev','Александр','Дмитриев','','sha1$69c16$3accd2d8d3e84bdbd9db5def362dc0d5320b6708',0,1,0,'2010-07-07 11:14:41','2010-07-07 11:14:41'),(16,'gassan','Сергей','Гаcсан','','sha1$e83b6$bae563dad0b2ce73fdb2b4e5097a3dd9fe6d2963',0,1,0,'2010-07-07 11:16:31','2010-07-07 11:16:31'),(17,'shepelov','Михаил','Шепелов','726577@mail.ru','sha1$7d601$134a1175359faf8cf4bba64f95b0e94629adbf23',1,1,1,'2010-07-14 09:55:44','2010-07-08 14:09:54');
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
) ENGINE=MyISAM AUTO_INCREMENT=175 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2010-06-24 19:52:12',1,9,'1','What\'s up?',2,'Changed pub_date.'),(2,'2010-06-24 20:59:59',1,9,'2','Почему нельзя создать папку с именем con?',1,''),(3,'2010-06-25 10:53:25',1,3,'1','root',2,'Changed academic_degree for profile \"Profile object\".'),(4,'2010-06-25 10:53:40',1,3,'1','root',2,'Changed academic_degree for profile \"Profile object\".'),(5,'2010-06-25 10:54:05',1,3,'1','root',2,'Changed first_name and last_name. Changed mid_name and academic_degree for profile \"Profile object\".'),(7,'2010-06-25 11:43:56',1,3,'1','root',2,'Added profile \"Profile object\".'),(12,'2010-06-25 12:54:23',1,3,'2','guzev',2,'Changed first_name, last_name and email.'),(9,'2010-06-25 11:53:34',1,3,'1','root',2,'Changed publications for profile \"Kravtsov Dmitry 1\".'),(10,'2010-06-25 12:23:41',1,3,'2','guzev',1,''),(11,'2010-06-25 12:46:30',1,3,'3','Чеботарёв Александр Юрьевич',2,'Changed first_name and last_name.'),(13,'2010-06-25 12:54:51',1,3,'3','chebotarev',2,'Changed email.'),(14,'2010-06-25 13:38:03',1,15,'1',', Петров 123',1,''),(15,'2010-06-25 13:38:14',1,12,'1','Чеботарёв Александр Юрьевич',2,'Changed publications.'),(16,'2010-06-25 13:43:56',1,3,'3','chebotarev',2,'Changed academic_degree for profile \"Чеботарёв Александр Юрьевич\".'),(17,'2010-06-25 13:44:57',1,16,'1','Laboratory object',1,''),(18,'2010-06-25 13:46:23',1,12,'1','Чеботарёв Александр Юрьевич',2,'Changed laboratory.'),(19,'2010-06-25 13:56:08',1,3,'2','guzev',2,'Added profile \"Гузев Михаил Александрович\".'),(20,'2010-06-25 13:56:16',1,3,'2','guzev',2,'No fields changed.'),(21,'2010-06-25 14:12:48',1,12,'2','Гузев Михаил Александрович',2,'Changed publications.'),(22,'2010-06-25 17:17:24',1,16,'1','Лаборатория конструктивных методов математики',2,'Changed about.'),(23,'2010-06-25 17:32:34',1,17,'1','News object',1,''),(55,'2010-06-28 22:57:01',1,22,'2','Лаборатория математического моделирования',1,''),(25,'2010-06-25 18:42:20',1,3,'2','guzev',2,'Added profile \"Гузев Михаил Александрович\".'),(54,'2010-06-28 22:56:35',1,23,'2',' Отдел математической физики',1,''),(27,'2010-06-25 18:44:10',1,3,'3','chebotarev',2,'Added profile \"Чеботарёв Александр Юрьевич\".'),(28,'2010-06-25 18:44:44',1,21,'1','Первый новостной топик',1,''),(53,'2010-06-28 22:54:24',1,20,'1','Гузев Михаил Александрович',1,''),(52,'2010-06-28 21:57:46',1,22,'1','Лаборатория конструктивных методов в математике ',1,''),(111,'2010-07-06 14:42:46',2,20,'2','Чеботарёв Александр Юрьевич',1,''),(97,'2010-07-05 23:14:30',2,3,'3','chebotarev',2,'Добавлен Профиль \"Чеботарёв Александр Юрьевич\".'),(51,'2010-06-28 21:57:24',1,23,'1','Отдел анализа и геометрии',1,''),(33,'2010-06-25 21:29:05',1,20,'1','Гузев Михаил Александрович',1,''),(94,'2010-07-05 22:25:44',1,3,'2','guzev',2,'Добавлен Профиль \"Гузев Михаил Александрович\".'),(95,'2010-07-05 22:42:44',1,3,'2','guzev',2,'Добавлен Профиль \"Гузев Михаил Александрович\".'),(92,'2010-07-05 22:24:25',2,3,'1','root',2,'Добавлен Профиль \"Кравцов Дремора Скампович\".'),(93,'2010-07-05 22:25:26',1,3,'3','chebotarev',2,'Добавлен Профиль \"Чеботарёв Александр Юрьевич\".'),(50,'2010-06-28 12:45:39',1,22,'1','Лаборатория конструктивных методов математики',2,'Changed publications.'),(37,'2010-06-25 22:17:18',1,20,'1','Гузев Михаил Александрович',1,''),(48,'2010-06-28 12:38:05',1,23,'1','LabGroup object',1,''),(49,'2010-06-28 12:38:35',1,22,'1','Лаборатория конструктивных методов математики',1,''),(40,'2010-06-25 22:24:50',1,20,'1','Гузев Михаил Александрович',1,''),(47,'2010-06-28 12:08:27',1,22,'1','Лаборатория конструктивных методов математики',1,''),(91,'2010-07-05 22:24:10',2,22,'1','Лаборатория грязевых червей (№ 13)',1,''),(43,'2010-06-25 23:04:11',1,20,'1','Гузев Михаил Александрович',1,''),(44,'2010-06-25 23:04:34',1,20,'2','Чеботарёв Александр Юрьевич',1,''),(45,'2010-06-26 12:03:46',1,21,'2','Hi',3,''),(46,'2010-06-28 08:38:25',1,21,'1','Первый новостной топик',2,'Changed body.'),(56,'2010-06-28 22:57:08',1,20,'2','Чеботарёв Александр Юрьевич',1,''),(57,'2010-06-29 11:01:36',1,22,'1','Лаборатория конструктивных методов математики',2,'Changed title.'),(90,'2010-07-05 22:24:09',2,23,'1','Непонятных вещей',1,''),(59,'2010-06-29 11:16:53',1,20,'1','Гузев Михаил Александрович',2,'Changed publications.'),(60,'2010-06-30 10:11:18',1,23,'1','Отдел анализа и геометрии',1,''),(61,'2010-06-30 10:11:42',1,22,'1','Лаборатория конструктивных методов математики (№ 3.10)',1,''),(62,'2010-06-30 10:13:48',1,23,'2','Отдел математической физики',1,''),(63,'2010-06-30 10:13:51',1,22,'2','Лаборатория математического моделирования (№ 3.2)',1,''),(64,'2010-06-30 10:39:34',1,7,'1','iam.dvo.ru',2,'Changed domain and name.'),(65,'2010-06-30 11:46:19',1,25,'1','/research -- Основные исследования',1,''),(66,'2010-06-30 11:46:26',1,25,'1','/research/ -- Основные исследования',2,'Changed url.'),(67,'2010-06-30 11:47:08',1,7,'1','idkravitz.homelinux.org',2,'Changed domain.'),(68,'2010-06-30 12:12:10',1,25,'1','/research/ -- Основные исследования',2,'Changed content.'),(69,'2010-06-30 12:12:41',1,25,'1','/research/ -- Основные исследования',2,'Changed content.'),(70,'2010-06-30 12:13:28',1,21,'1','«Структура кинематического и силового поля в Римановой модели сплошной среды» ',1,''),(71,'2010-06-30 12:13:36',1,21,'1','«Структура кинематического и силового поля в Римановой модели сплошной среды»',2,'Changed title.'),(72,'2010-06-30 13:31:13',1,25,'2','/head/ -- Директор',1,''),(73,'2010-06-30 13:33:01',1,25,'3','/about/ -- Об институте',1,''),(74,'2010-06-30 14:00:09',1,25,'4','/grad/ -- Аспирантура',1,''),(75,'2010-06-30 14:00:46',1,25,'5','/basic-chairs/ -- Базовые кафедры',1,''),(76,'2010-07-01 12:53:35',1,3,'3','chebotarev',2,'Изменен last_name.'),(77,'2010-07-01 12:53:55',1,3,'3','chebotarev',2,'Изменен last_name.'),(78,'2010-07-01 13:13:43',1,21,'2','Смотри сюда',2,'Изменен body.'),(79,'2010-07-01 13:24:02',1,21,'3','Я Чеботарёв',3,''),(80,'2010-07-01 13:24:50',1,21,'4','Использование тэгов в базе',1,''),(81,'2010-07-01 14:18:32',1,3,'4','cc',1,''),(82,'2010-07-01 14:19:30',1,3,'4','cc',3,''),(83,'2010-07-01 21:28:26',1,21,'6','Вчерашняя новость',1,''),(84,'2010-07-01 21:29:07',1,21,'7','Позавчерашняя новость',1,''),(85,'2010-07-05 21:33:45',1,3,'5','',3,''),(86,'2010-07-05 21:34:58',1,23,'3','Отдел серых троллей',1,''),(87,'2010-07-05 21:35:14',1,22,'3','Пещера гоблинов (№ 100500)',1,''),(88,'2010-07-05 21:35:25',1,3,'1','root',2,'Изменен first_name и last_name. Добавлен profile \"Кравцов Дмитрий Сергеевич\".'),(89,'2010-07-05 21:51:02',1,3,'2','guzev',2,'Изменен is_staff и is_superuser.'),(98,'2010-07-05 23:14:45',2,3,'1','root',2,'Изменен first_name. Добавлен Профиль \"Кравцов Дмитрий Сергеевич\".'),(99,'2010-07-05 23:30:00',2,3,'2','guzev',2,'Добавлен Профиль \"Гузев Михаил asd\".'),(100,'2010-07-05 23:30:20',2,3,'2','guzev',2,'Изменены mid_name и academic_degree для Профиль \"Гузев Михаил Александрович\".'),(101,'2010-07-05 23:56:24',2,3,'2','guzev',2,'Изменены photo для Профиль \"Гузев Михаил Александрович\".'),(102,'2010-07-05 23:58:48',2,3,'2','guzev',2,'Изменены photo для Профиль \"Гузев Михаил Александрович\".'),(103,'2010-07-06 00:00:09',2,3,'2','guzev',2,'Изменены photo для Профиль \"Гузев Михаил Александрович\".'),(104,'2010-07-06 00:01:38',2,3,'2','guzev',2,'Изменены photo для Профиль \"Гузев Михаил Александрович\".'),(105,'2010-07-06 00:02:29',2,3,'2','guzev',2,'Изменены photo для Профиль \"Гузев Михаил Александрович\".'),(106,'2010-07-06 00:04:33',1,21,'1','Яблочно-грушевый сок',1,''),(107,'2010-07-06 11:24:31',2,22,'1','Лаборатория конструктивных методов математики (№ 13)',2,'Изменен title.'),(108,'2010-07-06 11:24:35',2,22,'1','Лаборатория конструктивных методов математики (№ 13)',2,'Изменен head.'),(110,'2010-07-06 13:54:48',2,29,'1','Гузев М. А., Горбатый гоблин Квантовые носороги в современной физике // Мурзилка.Бомж из подворотни, 1812. 1. С. 1-100500.',1,''),(112,'2010-07-06 14:43:36',2,3,'1','root',2,'Добавлен Профиль \"Кравцов Дмитрий Носочек\".'),(113,'2010-07-06 15:03:15',2,3,'2','guzev',2,'Добавлен Профиль \"Гузев Михаил Александрович\".'),(114,'2010-07-07 10:24:38',2,23,'2','Отдел анализа и геометрии',1,''),(115,'2010-07-07 10:31:21',2,3,'3','chebotarev',3,''),(116,'2010-07-07 10:33:58',2,3,'6','dmitriev',1,''),(117,'2010-07-07 10:34:15',2,3,'6','dmitriev',2,'Изменен first_name и last_name.'),(118,'2010-07-07 10:37:39',2,3,'6','dmitriev',2,'Изменены academic_rank для Профиль \"Дмитриев Александр Алексеевич\".'),(119,'2010-07-07 10:42:23',1,3,'6','dmitriev',2,'Изменен username.'),(120,'2010-07-07 10:42:36',1,3,'6','dmitriev',2,'Изменен email.'),(121,'2010-07-07 10:43:22',1,23,'3','Отдел математической физики',1,''),(122,'2010-07-07 10:43:28',1,23,'4','Отдел системных исследований',1,''),(123,'2010-07-07 10:43:54',1,22,'1','Лаборатория конструктивных методов математики (№ 3.10)',2,'Изменен number, group и about.'),(124,'2010-07-07 10:44:04',1,23,'1','Непонятных вещей',3,''),(125,'2010-07-07 10:44:21',1,3,'6','dmitriev',3,''),(126,'2010-07-07 10:45:15',1,3,'7','dubinin',1,''),(127,'2010-07-07 10:45:27',1,3,'7','dubinin',2,'Изменен first_name и last_name.'),(128,'2010-07-07 10:46:34',1,22,'2','Лаборатория математического анализа (№ 3.3)',1,''),(129,'2010-07-07 10:47:49',1,3,'7','dubinin',2,'Изменены post для Профиль \"Дубинин Владимир Николаевич\".'),(130,'2010-07-07 10:48:27',1,3,'8','skurihin',1,''),(131,'2010-07-07 10:48:52',1,22,'3','Сектор топологии и алгебры (№ 3.8)',1,''),(132,'2010-07-07 10:49:00',1,3,'8','skurihin',2,'Изменен first_name и last_name. Изменены laboratory для Профиль \"Скурихин Евгений Евгеньевич\".'),(133,'2010-07-07 10:55:07',1,3,'9','chebotarev',1,''),(134,'2010-07-07 10:55:20',1,3,'9','chebotarev',2,'Изменен first_name и last_name.'),(135,'2010-07-07 10:55:36',1,22,'4','Лаборатория математического моделирования (№ 3.2)',1,''),(136,'2010-07-07 10:55:39',1,3,'9','chebotarev',2,'Изменены laboratory для Профиль \"Чеботарев Александр Юрьевич\".'),(137,'2010-07-07 10:56:51',1,3,'10','alekseev',1,''),(138,'2010-07-07 10:57:08',1,22,'5','  	 Лаборатория вычислительной аэро-гидродинамики (№ 3.5)',1,''),(139,'2010-07-07 10:57:19',1,3,'10','alekseev',2,'Изменен first_name и last_name. Изменены laboratory для Профиль \"Валентинович Геннадий Валентинович\".'),(140,'2010-07-07 10:58:17',1,3,'10','alekseev',2,'Изменен last_name.'),(141,'2010-07-07 10:59:18',1,3,'11','prohorov',1,''),(142,'2010-07-07 10:59:36',1,22,'6','Лаборатория вычислительных методов математической физики (№ 3.6)',1,''),(143,'2010-07-07 11:00:27',1,3,'11','prohorov',2,'Изменен first_name и last_name. Изменены laboratory для Профиль \"Прохоров Игорь Васильевич\".'),(144,'2010-07-07 11:01:14',1,3,'12','aschepkov',1,''),(145,'2010-07-07 11:01:50',1,22,'7','Лаборатория проблем оптимального управления (№ 3.1)',1,''),(146,'2010-07-07 11:01:55',1,3,'12','aschepkov',2,'Изменен first_name и last_name. Изменены laboratory для Профиль \"Ащепков Леонид Тимофеевич\".'),(147,'2010-07-07 11:02:42',1,3,'13','guram',1,''),(148,'2010-07-07 11:03:12',1,22,'8','Лаборатория вероятностных методов и системного анализа (№ 3.4)',1,''),(149,'2010-07-07 11:03:17',1,3,'13','guram',2,'Изменен first_name и last_name. Изменены laboratory для Профиль \"Цициашвили Гурами Шалвович\".'),(150,'2010-07-07 11:04:11',1,3,'14','gerasimenko',1,''),(151,'2010-07-07 11:04:44',1,22,'9','Сектор геодезии и геодинамики (№ 3.7-с)',1,''),(152,'2010-07-07 11:04:49',1,3,'14','gerasimenko',2,'Изменен first_name и last_name. Изменены laboratory для Профиль \"Герасименко Михаил Данилович\".'),(153,'2010-07-07 11:10:32',1,29,'1','Гузев М. А., Горбатый гоблин Квантовые носороги в современной физике // Мурзилка.Бомж из подворотни, 1812. 1. С. 1-100500.',3,''),(154,'2010-07-07 11:12:32',1,3,'7','dubinin',2,'Изменены laboratory для Профиль \"Дубинин Владимир Николаевич\".'),(155,'2010-07-07 11:14:41',1,3,'15','dmitriev',1,''),(156,'2010-07-07 11:14:51',1,3,'15','dmitriev',2,'Изменен first_name и last_name.'),(157,'2010-07-07 11:16:31',1,3,'16','gassan',1,''),(158,'2010-07-07 11:16:44',1,3,'16','gassan',2,'Изменен first_name и last_name.'),(159,'2010-07-07 11:35:34',2,29,'2','Гузев М. А. asd // as. 123. sda. С. 1-2.',1,''),(160,'2010-07-08 12:44:17',2,21,'1','Яблочно-грушевый сок',2,'Изменен body.'),(161,'2010-07-08 12:44:39',2,21,'1','Яблочно-грушевый сок',2,'Изменен body.'),(162,'2010-07-08 12:44:59',2,21,'1','Яблочно-грушевый сок',2,'Изменен body.'),(163,'2010-07-08 12:45:30',2,21,'1','Яблочно-грушевый сок',2,'Изменен body.'),(164,'2010-07-08 12:45:45',2,21,'1','Яблочно-грушевый сок',2,'Изменен body.'),(165,'2010-07-08 12:46:04',2,21,'1','Яблочно-грушевый сок',2,'Изменен body.'),(166,'2010-07-08 14:09:54',1,3,'17','shepelov',1,''),(167,'2010-07-08 14:10:45',1,22,'10','Группа ИТО (№ 0)',1,''),(168,'2010-07-08 14:11:46',1,3,'17','shepelov',2,'Изменен first_name и last_name. Изменены laboratory для Профиль \"Шепелов Михаил Алексеевич\".'),(169,'2010-07-08 14:31:56',1,3,'17','shepelov',2,'Изменен is_staff и is_superuser.'),(170,'2010-07-08 14:33:16',17,25,'3','/about/ -- Об институте',2,'Изменен content.'),(171,'2010-07-08 14:34:15',17,25,'3','/about/ -- Об институте',2,'Изменен content.'),(172,'2010-07-08 15:33:02',17,25,'2','/head/ -- Директор',2,'Изменен content.'),(173,'2010-07-13 10:52:06',1,3,'1','root',2,'Добавлен Профиль \"Кравцов Дмитрий Сергеевич\".'),(174,'2010-07-13 17:29:31',17,21,'9','Сайт расползается',3,'');
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_flatpage`
--

LOCK TABLES `django_flatpage` WRITE;
/*!40000 ALTER TABLE `django_flatpage` DISABLE KEYS */;
INSERT INTO `django_flatpage` VALUES (1,'/research/','Основные исследования','Основные научные направления - фундаментальные исследования проблем теоретической математики (теория чисел, топология и алгебра, теория функций и функциональный анализ, дифференциальные уравнения), математической и теоретической физики, теории вероятностей и математической статистики, вычислительной математики, дискретной математики и математической кибернетики.\r\n\r\nМатематическое моделирование природных процессов и хозяйственной деятельности человека.\r\n',0,'',0),(2,'/head/','Директор','Михаил Александрович Гузев специалист по математическому моделированию упруго-пластического поведения материалов с дефектами структуры и процессов распространения акустических волн в случайно-неоднородных средах.\r\n\r\n   М.А. Гузев , 1962 г. рождения, окончил с отличием физический факультет Ленинградского государственного университета в 1984 г. и был зачислен в аспирантуру Научно-исследовательского института физики того же университета. По окончании аспирантуры в 1987 г. защитил диссертацию \"Адиабатический формализм и квазиклассика для дискретных уровней\" на степень кандидата физико-математических наук. \r\n\r\nНаучную деятельность М.А. Гузев продолжил в Тихоокеанском океанологическом институте Дальневосточного отделения АН СССР, г. Владивосток, работая младшим научным, затем научным сотрудником лаборатории статистической гидрофизики с 1987 г. по 1991 г.. В 1991 г. избран по конкурсу на должность старшего научного сотрудника лаборатории геоинформатики Института автоматики и процессов управления с вычислительным центром ДВО АН СССР (современное наименование - Институт автоматики и процессов управления ДВО РАН). С 1998 г. по 2003 г. работал в лаборатории механики деформируемого твердого тела этого же института. \r\n\r\nВ 1999 г. защитил докторскую диссертацию на тему \"Неевклидовы модели упруго-пластических материалов с дефектами структуры\" (физико-математические науки). В 2003 г. избран членом-корреспондентом Российской академии наук. \r\n\r\nС 2003 г. по 2005 г. М.А. Гузев был заместителем директора по научной работе Института автоматики и процессов управления ДВО РАН. В 2005 г. переходит в Президиум ДВО РАН, в котором работает до 2008 г. на должности главного ученого секретаря. В апреле 2008 г. избран директором Института прикладной математики ДВО РАН. \r\n\r\nМ.А. Гузев уделяет большое внимание обучению студентов и подготовке научных кадров: директор Института математики и компьютерных наук Дальневосточного государственного университета, профессор этого университета, председатель диссертационного совета. \r\n\r\nНаучные результаты - предложена дифференциальная формулировка описания евклидовых свойств математической модели классической теории упругости и показано, что она содержит \"скрытые\" параметры, допускающие естественную интерпретацию в качестве геометрических объектов аффинно-метрических пространств. Для материалов с дефектами структуры построен новый класс геометрически замкнутых неевклидовых моделей упруго-пластических материалов на основе предположения об аффинно-метрической структуре внутренних взаимодействий между частицами среды. Предложены методы расчета вычисления статистических пространственно-временных характеристик акустических волн для различных условий их распространения во флуктуирующих слабо диссипативных средах. \r\n\r\nИмеет более 100 публикаций \r\n',0,'',0),(3,'/about/','Об институте','  ИПМ ДВО РАН был создан 1 июля 1988 года на основе отдела прикладной математики Вычислительного центра Дальневосточного отделения Академии наук СССР (основание \r\n- приказ по Дальневосточному отделению Российской академии наук от 29 января 1988 \r\nгода N 16034-30d \"Об организации Института прикладной математики\"). \r\n   Институт находится в г.Владивостоке и имеет отделение в г.Хабаровске. Институт ведет исследования в области теоретической и прикладной математики в соответствии с Уставом   \r\n      Российской академии наук. РАН , Отделение математики и Отделение информатики,  \r\nвычислительной техники и автоматизации Российской академии наук утверждают основные направления деятельности, пятилетние и годовые планы Института.\r\n   С 1988 по 1992 год Институт возглавлял член-корреспондент РАН В.П.Коробейников, а с 1992 года по ноябрь 2007 года директором был член-корреспондент РАН Н.В.Кузнецов. С ноября 2007 года Институт возглавляет член-корреспондент РАН М.А. Гузев. \r\n',0,'',0),(4,'/grad/','Аспирантура','',0,'',0),(5,'/basic-chairs/','Базовые кафедры','',0,'',0);
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
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_flatpage_sites`
--

LOCK TABLES `django_flatpage_sites` WRITE;
/*!40000 ALTER TABLE `django_flatpage_sites` DISABLE KEYS */;
INSERT INTO `django_flatpage_sites` VALUES (4,1,1),(11,2,1),(10,3,1),(7,4,1),(8,5,1);
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
INSERT INTO `django_session` VALUES ('0a2a97ac848711153b8ebe046f087187','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS41MWM0NDczNzAwOTdjNjcxOWQ1\nYTE2ODM0YTA5MTAwMA==\n','2010-07-13 11:16:19'),('15a1943045a6e6135cda603aff2e26ab','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS41MWM0NDczNzAwOTdjNjcxOWQ1\nYTE2ODM0YTA5MTAwMA==\n','2010-07-08 19:46:47'),('c1de226c14c6f813c8a9276ea40d63f5','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS41MWM0NDczNzAwOTdjNjcxOWQ1\nYTE2ODM0YTA5MTAwMA==\n','2010-07-09 07:38:58'),('f3201eb393c20b74ee98f9d33d7fa971','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS41MWM0NDczNzAwOTdjNjcxOWQ1\nYTE2ODM0YTA5MTAwMA==\n','2010-07-12 10:37:45'),('af378bfc605853a5e8161469084b2ffe','gAJ9cQEuZmNiYTM3YTRhMjA2MzU3NTI2ZjVkOTA1ZjVlYmRjZTM=\n','2010-07-09 15:44:30'),('5ad7afeb471fdf90133c004ecd9c7add','gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLjBkMjAyMzIxMGMwZjljZjA5MmZhMjcxM2M5\nODk0NGY0\n','2010-07-18 16:12:50'),('30905614a27052a664f7ea347a8af642','gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLjBkMjAyMzIxMGMwZjljZjA5MmZhMjcxM2M5\nODk0NGY0\n','2010-07-17 12:04:38'),('a7ccb9255f45bb3af2baecceaf39aa51','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigECdS43OTczOWE5NjM5ZTVjZTU0OGYy\nNzA0OTUwYTgzMDkwZg==\n','2010-07-15 14:23:15'),('57acf6ff90a427b238871f566034a831','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigECdS43OTczOWE5NjM5ZTVjZTU0OGYy\nNzA0OTUwYTgzMDkwZg==\n','2010-07-10 19:18:58'),('a5ee53e4ba67358a9c7ab31a649759eb','gAJ9cQEoVQp0ZXN0Y29va2llcQJVBndvcmtlZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQJVEl9hdXRo\nX3VzZXJfYmFja2VuZHEFVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2Vu\nZHEGdS5mYmUxYjljZjY5ZmE0ZTc1ZTg2MWEzNTVlNzIyNmI3MA==\n','2010-07-13 11:15:51'),('a6fc28389330dd10774530b494044dd4','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS41MWM0NDczNzAwOTdjNjcxOWQ1\nYTE2ODM0YTA5MTAwMA==\n','2010-07-15 21:27:11'),('1271639470944584d0e10d3f19da0577','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigECdS43OTczOWE5NjM5ZTVjZTU0OGYy\nNzA0OTUwYTgzMDkwZg==\n','2010-07-15 21:59:15'),('81ca9fc707c586afae6e519488b9f268','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigECdS43OTczOWE5NjM5ZTVjZTU0OGYy\nNzA0OTUwYTgzMDkwZg==\n','2010-07-15 22:26:43'),('e3a238105b39abda013b5430fb3a031b','gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLjBkMjAyMzIxMGMwZjljZjA5MmZhMjcxM2M5\nODk0NGY0\n','2010-07-17 03:08:09'),('f86979c8f29b26a322b5a420c372a39e','gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLjBkMjAyMzIxMGMwZjljZjA5MmZhMjcxM2M5\nODk0NGY0\n','2010-07-18 16:09:20'),('1f126f975857dd8b1569ef14b42918e5','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigECdS43OTczOWE5NjM5ZTVjZTU0OGYy\nNzA0OTUwYTgzMDkwZg==\n','2010-07-20 13:55:22'),('87d7f5752afaa4a61e68d115e266532c','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigECdS43OTczOWE5NjM5ZTVjZTU0OGYy\nNzA0OTUwYTgzMDkwZg==\n','2010-07-21 00:38:32'),('61691be37c6148604fcffe3aaffb3b2e','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigECdS43OTczOWE5NjM5ZTVjZTU0OGYy\nNzA0OTUwYTgzMDkwZg==\n','2010-07-21 11:23:02'),('1f1cab293ef564d73938eca96c9e1577','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigECdS43OTczOWE5NjM5ZTVjZTU0OGYy\nNzA0OTUwYTgzMDkwZg==\n','2010-07-19 20:59:03'),('c198936030b535243811161d42e3a01d','gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLjBkMjAyMzIxMGMwZjljZjA5MmZhMjcxM2M5\nODk0NGY0\n','2010-07-21 10:22:08'),('df5a385e575553ba834101c9dfdf89f4','gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLjBkMjAyMzIxMGMwZjljZjA5MmZhMjcxM2M5\nODk0NGY0\n','2010-07-20 00:30:52'),('4efc3eb976e3e67c0531a9a837f93462','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigECdS43OTczOWE5NjM5ZTVjZTU0OGYy\nNzA0OTUwYTgzMDkwZg==\n','2010-07-20 00:04:10'),('edbb0a3f2a5a47c75ccb581bec435d46','gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLjBkMjAyMzIxMGMwZjljZjA5MmZhMjcxM2M5\nODk0NGY0\n','2010-07-23 13:01:08'),('2e2b758b0a669201f3761d4737e7c114','gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLjBkMjAyMzIxMGMwZjljZjA5MmZhMjcxM2M5\nODk0NGY0\n','2010-07-23 10:46:37'),('cb8f8b1d03a3d5ff6ebda575984573d7','gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLjBkMjAyMzIxMGMwZjljZjA5MmZhMjcxM2M5\nODk0NGY0\n','2010-07-22 14:52:40'),('aeb74550796e6185c52667c9aa59d1f7','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS41MWM0NDczNzAwOTdjNjcxOWQ1\nYTE2ODM0YTA5MTAwMA==\n','2010-07-22 14:31:45'),('34a3d1f1cb372c73b14b8611e3a488e4','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS41MWM0NDczNzAwOTdjNjcxOWQ1\nYTE2ODM0YTA5MTAwMA==\n','2010-07-27 13:29:36'),('801aa243d3f25c9a26f0d116dadff294','gAJ9cQEoVQ1fYXV0aF91c2VyX2lkcQKKAQJVFnJvc2V0dGFfaTE4bl9sYW5nX2NvZGVxA1gFAAAA\nZW4tdXNxBFUScm9zZXR0YV9pMThuX3dyaXRlcQWIVRJfYXV0aF91c2VyX2JhY2tlbmRxBlUpZGph\nbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmRxB1UWcm9zZXR0YV9pMThuX2xh\nbmdfbmFtZXEIWBQAAADQkNC90LPQu9C40LnRgdC60LjQuXEJVQ9yb3NldHRhX2kxOG5fZm5xClg2\nAAAAL3Nydi93d3cvdmhvc3RzL2lhbS9sb2NhbGUvZW4tdXMvTENfTUVTU0FHRVMvZGphbmdvLnBv\ncQtVE3Jvc2V0dGFfaTE4bl9wb2ZpbGVxDGNyb3NldHRhLnBvbGliClBPRmlsZQpxDSmBcQ4oY3Jv\nc2V0dGEucG9saWIKUE9FbnRyeQpxDymBcRB9cREoVQdjb21tZW50cRJVAFUGbXNnc3RycRNYBwAA\nAFJ1c3NpYW5xFFUHbWQ1aGFzaHEVVSA1YWJmODdlNzkxZjM0ZDkzN2Q2OTY5YWQ0NDk4MTZkY3EW\nVQhlbmNvZGluZ3EXVQV1dGYtOHEYVQVtc2dpZHEZWA4AAADQoNGD0YHRgdC60LjQuXEaVQh0Y29t\nbWVudHEbVQBVDG1zZ2lkX3BsdXJhbHEcVQBVCG9ic29sZXRlcR1LAFUNbXNnc3RyX3BsdXJhbHEe\nfXEfVQtvY2N1cnJlbmNlc3EgXXEhWAsAAABzZXR0aW5ncy5weVgCAAAANDCGcSJhVQdtc2djdHh0\ncSNOVQVmbGFnc3EkXXEldWJoDymBcSZ9cScoaBJVAGgTWAcAAABFbmdsaXNocShoFVUgM2M1ZDk3\nMDRkMzMzYWZjNTg3ODdhZGQxMWY2MTJiOWNxKWgXaBhoGVgUAAAA0JDQvdCz0LvQuNC50YHQutC4\n0LlxKmgbVQBoHFUAaB1LAGgefXEraCBdcSxYCwAAAHNldHRpbmdzLnB5WAIAAAA0MYZxLWFoI05o\nJF1xLnViaA8pgXEvfXEwKGgSVQBoE1gAAAAAaBVVIDIzODYyZjQ0ZDQxNzUxNDVkMDY1NjVjOTU4\nNjU2MmQ5cTFoF2gYaBlYCgAAANCe0YLQtNC10LtxMmgbVQBoHFUAaB1LAGgefXEzaCBdcTQoWA4A\nAABsYWJzL21vZGVscy5weVgBAAAAOIZxNVgOAAAAbGFicy9tb2RlbHMucHlYAgAAADE5hnE2ZWgj\nTmgkXXE3dWJoDymBcTh9cTkoaBJVAGgTWAAAAABoFVUgOGZiZTUwN2FmYjI2YmFjOTFjZTEwZTcw\nMzI2OTFjOWNxOmgXaBhoGVgMAAAA0J7RgtC00LXQu9GLcTtoG1UAaBxVAGgdSwBoHn1xPGggXXE9\nWA4AAABsYWJzL21vZGVscy5weVgCAAAAMTSGcT5haCNOaCRdcT91YmgPKYFxQH1xQShoElUAaBNY\nBQAAAFRpdGxlcUJoFVUgMjJhMTg1ZTM3ZjE2NDc1MmJhOWE0NDM3ODUzYzU3YzZxQ2gXaBhoGVgQ\nAAAA0J3QsNC30LLQsNC90LjQtXFEaBtVAGgcVQBoHUsAaB59cUVoIF1xRihYDgAAAGxhYnMvbW9k\nZWxzLnB5WAIAAAAxN4ZxR1gWAAAAcHVibGljYXRpb25zL21vZGVscy5weVgCAAAAMTGGcUhlaCNO\naCRdcUl1YmgPKYFxSn1xSyhoElUAaBNYBgAAAE51bWJlcnFMaBVVIDVmMjVhNjI4NGM5MDEzNTJl\nZTk0MmRhZWQwYWEzNWVmcU1oF2gYaBlYCgAAANCd0L7QvNC10YBxTmgbVQBoHFUAaB1LAGgefXFP\naCBdcVBYDgAAAGxhYnMvbW9kZWxzLnB5WAIAAAAxOIZxUWFoI05oJF1xUnViaA8pgXFTfXFUKGgS\nVQBoE1gEAAAASGVhZHFVaBVVIGY5MmFiNzcyNTMzODIwZDBmZTJlOTRlYjQyMmI5YjFkcVZoF2gY\naBlYFAAAANCX0LDQstC10LTRg9GO0YnQuNC5cVdoG1UAaBxVAGgdSwBoHn1xWGggXXFZKFgOAAAA\nbGFicy9tb2RlbHMucHlYAgAAADIwhnFaWCUAAAB0ZW1wbGF0ZXMvbGFicy9sYWJvcmF0b3J5X2Rl\ndGFpbC5odG1sWAIAAAAxMIZxW2VoI05oJF1xXHViaA8pgXFdfXFeKGgSVQBoE1gKAAAATGFib3Jh\ndG9yeXFfaBVVIDcwM2VjZDdjMDlmNTVjYmU0N2JkODU5NjM2YjQ3MzNicWBoF2gYaBlYFgAAANCb\n0LDQsdC+0YDQsNGC0L7RgNC40Y9xYWgbVQBoHFUAaB1LAGgefXFiaCBdcWMoWA4AAABsYWJzL21v\nZGVscy5weVgCAAAAMjeGcWRYDwAAAHVzZXJzL21vZGVscy5weVgCAAAAMTGGcWVlaCNOaCRdcWZ1\nYmgPKYFxZ31xaChoElUAaBNYDAAAAExhYm9yYXRvcmllc3FpaBVVIGVjYTI2ZmY0MjZmNTE5MWMw\nZDJmNGYwZGFiODJlY2M5cWpoF2gYaBlYFgAAANCb0LDQsdC+0YDQsNGC0L7RgNC40Lhxa2gbVQBo\nHFUAaB1LAGgefXFsaCBdcW1YDgAAAGxhYnMvbW9kZWxzLnB5WAIAAAAyOIZxbmFoI05oJF1xb3Vi\naA8pgXFwfXFxKGgSVQBoE1gFAAAAVGl0bGVxcmgVVSA4NTM3NzM2YzNmYzhkNTQzMDIzZTc0OWQ4\nMmFmNjBmNHFzaBdoGGgZWBIAAADQl9Cw0LPQvtC70L7QstC+0LpxdGgbVQBoHFUAaB1LAGgefXF1\naCBdcXZYDgAAAG5ld3MvbW9kZWxzLnB5WAEAAAA5hnF3YWgjTmgkXXF4dWJoDymBcXl9cXooaBJV\nAGgTWAQAAABUZXh0cXtoFVUgMWM4NDE0YTA0ODc4MThjNGYxN2M2MzgwYTY3OTFiMmVxfGgXaBho\nGVgKAAAA0KLQtdC60YHRgnF9aBtVAGgcVQBoHUsAaB59cX5oIF1xf1gOAAAAbmV3cy9tb2RlbHMu\ncHlYAgAAADEwhnGAYWgjTmgkXXGBdWJoDymBcYJ9cYMoaBJVAGgTWAAAAABoFVUgYzQ5N2ZkMTk3\nOTkxM2NmOTY3MWIzMzQxZjY0ODY1YjdxhGgXaBhoGVgdAAAA0JTQsNGC0LAg0L/Rg9Cx0LvQuNC6\n0LDRhtC40LhxhWgbVQBoHFUAaB1LAGgefXGGaCBdcYdYDgAAAG5ld3MvbW9kZWxzLnB5WAIAAAAx\nMYZxiGFoI05oJF1xiXViaA8pgXGKfXGLKGgSVQBoE1gGAAAAQXV0aG9ycYxoFVUgOThkYWU3MjZl\nYWM1OTg4MjY1NTczYzcxZDJhNzA2OGFxjWgXaBhoGVgKAAAA0JDQstGC0L7RgHGOaBtVAGgcVQBo\nHUsAaB59cY9oIF1xkFgOAAAAbmV3cy9tb2RlbHMucHlYAgAAADEyhnGRYWgjTmgkXXGSdWJoDymB\ncZN9cZQoaBJVAGgTWAQAAABOZXdzcZVoFVUgY2U1NGQ1ODA2MDY5NGRlZWI2NjEzYWNkMDBiYmQ1\nMWVxlmgXaBhoGVgOAAAA0J3QvtCy0L7RgdGC0Lhxl2gbVQBoHFUAaB1LAGgefXGYaCBdcZkoWA4A\nAABuZXdzL21vZGVscy5weVgCAAAAMTiGcZpYEwAAAHRlbXBsYXRlcy9iYXNlLmh0bWxYAgAAADQz\nhnGbWBQAAAB0ZW1wbGF0ZXMvc3RhcnQuaHRtbFgBAAAAM4ZxnFgdAAAAdGVtcGxhdGVzL25ld3Mv\nbmV3c19saXN0Lmh0bWxYAQAAADWGcZ1laCNOaCRdcZ51YmgPKYFxn31xoChoElUAaBNYBgAAAEF1\ndGhvcnGhaBVVIDdkN2IzNjkzZDhhZDNjMmEzMTc1NzIxOTU3NTViYmZlcaJoF2gYaBlYDAAAANCQ\n0LLRgtC+0YDRi3GjaBtVAGgcVQBoHUsAaB59caRoIF1xpVgWAAAAcHVibGljYXRpb25zL21vZGVs\ncy5weVgCAAAAMTCGcaZhaCNOaCRdcadYBQAAAGZ1enp5cahhdWJoDymBcal9caooaBJVAGgTWAoA\nAABMYWJvcmF0b3J5catoFVUgMjJhNTRlOGU3MWQ0ZWYyYmZlOGQwYWU4NjIwZDhhNzBxrGgXaBho\nGVgWAAAA0LDQstGC0L7RgNC10YTQtdGA0LDRgnGtaBtVAGgcVQBoHUsAaB59ca5oIF1xr1gWAAAA\ncHVibGljYXRpb25zL21vZGVscy5weVgCAAAAMTSGcbBhaCNOaCRdcbFYBQAAAGZ1enp5cbJhdWJo\nDymBcbN9cbQoaBJVAGgTWAAAAABoFVUgZGExYjc4ODhkOGUzMGEzNTQyZGIyNDU0ZmNmNGFmNzhx\ntWgXaBhoGVgWAAAA0LTQuNGB0YHQtdGA0YLQsNGG0LjRj3G2aBtVAGgcVQBoHUsAaB59cbdoIF1x\nuFgWAAAAcHVibGljYXRpb25zL21vZGVscy5weVgCAAAAMTWGcblhaCNOaCRdcbp1YmgPKYFxu31x\nvChoElUAaBNYCgAAAG1vbm9ncmFwaHlxvWgVVSA5M2JhNDNlZTY1NjAwZjdmZWQwNmU5MTA3MjJm\nMzZiY3G+aBdoGGgZWBQAAADQvNC+0L3QvtCz0YDQsNGE0LjRj3G/aBtVAGgcVQBoHUsAaB59ccBo\nIF1xwVgWAAAAcHVibGljYXRpb25zL21vZGVscy5weVgCAAAAMTaGccJhaCNOaCRdccN1YmgPKYFx\nxH1xxShoElUAaBNYCAAAAHByZXByaW50ccZoFVUgNmY2YzYzOGQ1NTlhZTIxOGExNGY4Y2E4OWM3\nMWRhYmJxx2gXaBhoGVgQAAAA0L/RgNC10L/RgNC40L3RgnHIaBtVAGgcVQBoHUsAaB59ccloIF1x\nylgWAAAAcHVibGljYXRpb25zL21vZGVscy5weVgCAAAAMTeGccthaCNOaCRdccx1YmgPKYFxzX1x\nzihoElUAaBNYAAAAAGgVVSBkNTU2MTZiYjI2OWEyNDAxYmYxYzdjY2M2ODUyOTg5MXHPaBdoGGgZ\nWA4AAADRgdCx0L7RgNC90LjQunHQaBtVAGgcVQBoHUsAaB59cdFoIF1x0lgWAAAAcHVibGljYXRp\nb25zL21vZGVscy5weVgCAAAAMTiGcdNhaCNOaCRdcdR1YmgPKYFx1X1x1ihoElUAaBNYBwAAAGFy\ndGljbGVx12gVVSBkZTcyNjhiMzQ1ZTYyYjc4ZjEwMjRiYzFlOWRjMTAzZHHYaBdoGGgZWAwAAADR\ngdGC0LDRgtGM0Y9x2WgbVQBoHFUAaB1LAGgefXHaaCBdcdtYFgAAAHB1YmxpY2F0aW9ucy9tb2Rl\nbHMucHlYAgAAADE5hnHcYWgjTmgkXXHddWJoDymBcd59cd8oaBJVAGgTWAAAAABoFVUgYWRhMDI5\nYjY5ZjlhMzQ2YzIzYmVlZDg2NzljMTEyNjhx4GgXaBhoGVgMAAAA0YLQtdC30LjRgdGLceFoG1UA\naBxVAGgdSwBoHn1x4mggXXHjWBYAAABwdWJsaWNhdGlvbnMvbW9kZWxzLnB5WAIAAAAyMIZx5GFo\nI05oJF1x5XViaA8pgXHmfXHnKGgSVQBoE1gAAAAAaBVVIDJjNTlhZGFhZmMyYzg2YjM2MmMyYjY3\nZWU5MWJhNWY2cehoF2gYaBlYBgAAANCS0LjQtHHpaBtVAGgcVQBoHUsAaB59cepoIF1x61gWAAAA\ncHVibGljYXRpb25zL21vZGVscy5weVgCAAAAMjOGcexhaCNOaCRdce11YmgPKYFx7n1x7yhoElUA\naBNYBwAAAFJ1c3NpYW5x8GgVVSAyMGVlMTZlMTBlZDVmZWMyZmYzZDk2ZDc1Mzk0N2UzYnHxaBdo\nGGgZWA4AAADRgNGD0YHRgdC60LjQuXHyaBtVAGgcVQBoHUsAaB59cfNoIF1x9FgWAAAAcHVibGlj\nYXRpb25zL21vZGVscy5weVgCAAAAMjaGcfVhaCNOaCRdcfZ1YmgPKYFx931x+ChoElUAaBNYBwAA\nAEVuZ2xpc2hx+WgVVSBiZGU1ZTdmZDhiMDU4M2VlM2VkMjZlZDgxOGIwMjZhMXH6aBdoGGgZWBQA\nAADQsNC90LPQu9C40LnRgdC60LjQuXH7aBtVAGgcVQBoHUsAaB59cfxoIF1x/VgWAAAAcHVibGlj\nYXRpb25zL21vZGVscy5weVgCAAAAMjeGcf5haCNOaCRdcf91YmgPKYFyAAEAAH1yAQEAAChoElUA\naBNYBQAAAG90aGVycgIBAABoFVUgYjllOTY1NWZjN2U4NmQ0ZGExZGVkNjZiMTM3ZjIzMWJyAwEA\nAGgXaBhoGVgMAAAA0LTRgNGD0LPQvtC5cgQBAABoG1UAaBxVAGgdSwBoHn1yBQEAAGggXXIGAQAA\nWBYAAABwdWJsaWNhdGlvbnMvbW9kZWxzLnB5WAIAAAAyOIZyBwEAAGFoI05oJF1yCAEAAHViaA8p\ngXIJAQAAfXIKAQAAKGgSVQBoE1gIAAAATGFuZ3VhZ2VyCwEAAGgVVSAyMjM3ZGE4N2JhNDg3Yzlh\nYTY5ZGQyODFkN2RlMDcyZXIMAQAAaBdoGGgZWAgAAADQr9C30YvQunINAQAAaBtVAGgcVQBoHUsA\naB59cg4BAABoIF1yDwEAAFgWAAAAcHVibGljYXRpb25zL21vZGVscy5weVgCAAAAMzCGchABAABh\naCNOaCRdchEBAAB1YmgPKYFyEgEAAH1yEwEAAChoElUAaBNYAAAAAGgVVSA0NDYyMjFlMjliNjli\nMTNlOGZiYjNjMjBiNWQxN2M0MnIUAQAAaBdoGGgZWBkAAADQlNGA0YPQs9C40LUg0LDQstGC0L7R\ngNGLchUBAABoG1UAaBxVAGgdSwBoHn1yFgEAAGggXXIXAQAAWBYAAABwdWJsaWNhdGlvbnMvbW9k\nZWxzLnB5WAIAAAAzMYZyGAEAAGFoI05oJF1yGQEAAHViaA8pgXIaAQAAfXIbAQAAKGgSVQBoE1gA\nAAAAaBVVIDdhYWQ2M2I3ZjZmZThlZGU5ZjAzMzYxNjVmZjU1NzIychwBAABoF2gYaBlYKgAAANCe\n0YLRgdGD0YLRgdGC0LLRg9GO0YnQuNC1INCyINGB0L/QuNGB0LrQtXIdAQAAaBtVAGgcVQBoHUsA\naB59ch4BAABoIF1yHwEAAFgWAAAAcHVibGljYXRpb25zL21vZGVscy5weVgCAAAAMzKGciABAABh\naCNOaCRdciEBAAB1YmgPKYFyIgEAAH1yIwEAAChoElUAaBNYAAAAAGgVVSAzMWY1NDk5MDY1MzJk\nNDVhNGIyNWFhZGQyOTYwZDEzOXIkAQAAaBdoGGgZWBsAAADQk9C+0LQg0L/Rg9Cx0LvQuNC60LDR\nhtC40LhyJQEAAGgbVQBoHFUAaB1LAGgefXImAQAAaCBdcicBAABYFgAAAHB1YmxpY2F0aW9ucy9t\nb2RlbHMucHlYAgAAADMzhnIoAQAAYWgjTmgkXXIpAQAAdWJoDymBcioBAAB9cisBAAAoaBJVAGgT\nWAAAAABoFVUgNzk4ZjM4NTA1Y2QyZTRiYzU5MTEyMjY5YjFmMTM2NWVyLAEAAGgXaBhoGVgYAAAA\n0JjQt9C00LDRgtC10LvRjNGB0YLQstC+ci0BAABoG1UAaBxVAGgdSwBoHn1yLgEAAGggXXIvAQAA\nWBYAAABwdWJsaWNhdGlvbnMvbW9kZWxzLnB5WAIAAAAzNIZyMAEAAGFoI05oJF1yMQEAAHViaA8p\ngXIyAQAAfXIzAQAAKGgSVQBoE1gAAAAAaBVVIDkxYWU0N2Y2ODhkNjkyNjQ3ODJiMjMzODVmMWQy\nYTA1cjQBAABoF2gYaBlYHQAAANCd0LDRg9GH0L3QvtC1INC40LfQtNCw0L3QuNC1cjUBAABoG1UA\naBxVAGgdSwBoHn1yNgEAAGggXXI3AQAAWBYAAABwdWJsaWNhdGlvbnMvbW9kZWxzLnB5WAIAAAAz\nNYZyOAEAAGFoI05oJF1yOQEAAHViaA8pgXI6AQAAfXI7AQAAKGgSVQBoE1gAAAAAaBVVIDAzZGI0\nY2YxYTY3ZjViNzczMTA2MjY5YTAwNWU3NWFlcjwBAABoF2gYaBlYGQAAANCd0L7QvNC10YAg0LjQ\nt9C00LDQvdC40Y9yPQEAAGgbVQBoHFUAaB1LAGgefXI+AQAAaCBdcj8BAABYFgAAAHB1YmxpY2F0\naW9ucy9tb2RlbHMucHlYAgAAADM2hnJAAQAAYWgjTmgkXXJBAQAAdWJoDymBckIBAAB9ckMBAAAo\naBJVAGgTWAAAAABoFVUgNmIzOTgxNzg4MDAzZDcwZGUyMzQ4YjA2MzA4OGUxZjByRAEAAGgXaBho\nGVgyAAAA0J/QtdGA0LLQsNGPINGB0YLRgNCw0L3QuNGG0LAg0L/Rg9Cx0LvQuNC60LDRhtC40Lhy\nRQEAAGgbVQBoHFUAaB1LAGgefXJGAQAAaCBdckcBAABYFgAAAHB1YmxpY2F0aW9ucy9tb2RlbHMu\ncHlYAgAAADM3hnJIAQAAYWgjTmgkXXJJAQAAdWJoDymBckoBAAB9cksBAAAoaBJVAGgTWAAAAABo\nFVUgNWJkYTBjZDYwYTMzYzJjMmU5NTQ4OWZiNzhkNTdhN2NyTAEAAGgXaBhoGVg4AAAA0J/QvtGB\n0LvQtdC00L3Rj9GPINGB0YLRgNCw0L3QuNGG0LAg0L/Rg9Cx0LvQuNC60LDRhtC40LhyTQEAAGgb\nVQBoHFUAaB1LAGgefXJOAQAAaCBdck8BAABYFgAAAHB1YmxpY2F0aW9ucy9tb2RlbHMucHlYAgAA\nADM4hnJQAQAAYWgjTmgkXXJRAQAAdWJoDymBclIBAAB9clMBAAAoaBJVAGgTWAIAAABQLnJUAQAA\naBVVIDg2Nzg3MDFhNWQ2MDM0Y2FkNzAzNWE3NWZlNDIwZDRhclUBAABoF2gYaBlYAwAAANChLnJW\nAQAAaBtVAGgcVQBoHUsAaB59clcBAABoIF1yWAEAAFgWAAAAcHVibGljYXRpb25zL21vZGVscy5w\neVgCAAAANDSGclkBAABhaCNOaCRdcloBAAB1YmgPKYFyWwEAAH1yXAEAAChoElUAaBNYDAAAAFB1\nYmxpY2F0aW9uc3JdAQAAaBVVIDI2NGZhNzk1M2ZlNGNhYTE1MjdhMzNhMzU4MWIwY2Ricl4BAABo\nF2gYaBlYFAAAANCf0YPQsdC70LjQutCw0YbQuNC4cl8BAABoG1UAaBxVAGgdSwBoHn1yYAEAAGgg\nXXJhAQAAWBYAAABwdWJsaWNhdGlvbnMvbW9kZWxzLnB5WAIAAAA2MYZyYgEAAGFoI05oJF1yYwEA\nAHViaA8pgXJkAQAAfXJlAQAAKGgSVQBoE1gAAAAAaBVVIDgxNGZjZTA1ZDI5MGRiYmUyNjFhNWE3\nZjQzNTc5MGM0cmYBAABoF2gYaBlYFAAAANCY0J/QnCDQlNCS0J4g0KDQkNCdcmcBAABoG1UAaBxV\nAGgdSwBoHn1yaAEAAGggXXJpAQAAWBMAAAB0ZW1wbGF0ZXMvYmFzZS5odG1sWAEAAAA2hnJqAQAA\nYWgjTmgkXXJrAQAAdWJoDymBcmwBAAB9cm0BAAAoaBJVAGgTWAAAAABoFVUgYmRiMDUwNDYzZTkw\nYmU4MDAyNGM4MjAxZWE3ZTI1OWRybgEAAGgXaBhoGVhIAAAA0JjQvdGB0YLQuNGC0YPRgiDQv9GA\n0LjQutC70LDQtNC90L7QuSDQvNCw0YLQtdC80LDRgtC40LrQuCDQlNCS0J4g0KDQkNCdcm8BAABo\nG1UAaBxVAGgdSwBoHn1ycAEAAGggXXJxAQAAKFgTAAAAdGVtcGxhdGVzL2Jhc2UuaHRtbFgCAAAA\nMzWGcnIBAABYFgAAAHRlbXBsYXRlcy9iYXNlLmh0bWwucHlYAgAAADM3hnJzAQAAZWgjTmgkXXJ0\nAQAAdWJoDymBcnUBAAB9cnYBAAAoaBJVAGgTWAMAAABBZGRydwEAAGgVVSAyZmFjNDFjYjc5NTBl\nOGIwOTU5ZGVmNGRjZTEzMWIxOHJ4AQAAaBdoGGgZWBAAAADQlNC+0LHQsNCy0LjRgtGMcnkBAABo\nG1UAaBxVAGgdSwBoHn1yegEAAGggXXJ7AQAAKFgTAAAAdGVtcGxhdGVzL2Jhc2UuaHRtbFgCAAAA\nNDWGcnwBAABYFwAAAHRlbXBsYXRlcy9uZXdzL2FkZC5odG1sWAIAAAAzMoZyfQEAAGVoI05oJF1y\nfgEAAHViaA8pgXJ/AQAAfXKAAQAAKGgSVQBoE1gAAAAAaBVVIGJkMGQ4YzUwYjMxMDgxNzllNDcz\nOTNmNzFjYTdhMWI5coEBAABoF2gYaBlYFwAAANCe0LEg0LjQvdGB0YLQuNGC0YPRgtC1coIBAABo\nG1UAaBxVAGgdSwBoHn1ygwEAAGggXXKEAQAAWBMAAAB0ZW1wbGF0ZXMvYmFzZS5odG1sWAIAAAA0\nOIZyhQEAAGFoI05oJF1yhgEAAHViaA8pgXKHAQAAfXKIAQAAKGgSVQBoE1gAAAAAaBVVIGVjZjE2\nYWI4ZmVjNGI0OWM4YWRjY2Q0NjcwMzhmODU4cokBAABoF2gYaBlYEgAAANCh0YLRg9C00LXQvdGC\n0LDQvHKKAQAAaBtVAGgcVQBoHUsAaB59cosBAABoIF1yjAEAAFgTAAAAdGVtcGxhdGVzL2Jhc2Uu\naHRtbFgCAAAANDmGco0BAABhaCNOaCRdco4BAAB1YmgPKYFyjwEAAH1ykAEAAChoElUAaBNYAAAA\nAGgVVSBkMTIxOWFiNGUyNDdhOTY1NGJhMDhiMDM2ZjAxZWZjZXKRAQAAaBdoGGgZWB0AAADQkdCw\n0LfQvtCy0YvQtSDQutCw0YTQtdC00YDRi3KSAQAAaBtVAGgcVQBoHUsAaB59cpMBAABoIF1ylAEA\nAFgTAAAAdGVtcGxhdGVzL2Jhc2UuaHRtbFgCAAAANTGGcpUBAABhaCNOaCRdcpYBAAB1YmgPKYFy\nlwEAAH1ymAEAAChoElUAaBNYAAAAAGgVVSAzYzRjNGNlMjlhN2JhOTM5NDE1ODg3OTQ5MTFhYWE5\nN3KZAQAAaBdoGGgZWBYAAADQkNGB0L/QuNGA0LDQvdGC0YPRgNCwcpoBAABoG1UAaBxVAGgdSwBo\nHn1ymwEAAGggXXKcAQAAWBMAAAB0ZW1wbGF0ZXMvYmFzZS5odG1sWAIAAAA1MoZynQEAAGFoI05o\nJF1yngEAAHViaA8pgXKfAQAAfXKgAQAAKGgSVQBoE1gJAAAAU3RydWN0dXJlcqEBAABoFVUgZWJm\nMzZjY2U4ZTY3NDA2MDAyMjg1ZmI0NzQxNjI1MThyogEAAGgXaBhoGVgSAAAA0KHRgtGA0YPQutGC\n0YPRgNCwcqMBAABoG1UAaBxVAGgdSwBoHn1ypAEAAGggXXKlAQAAWBMAAAB0ZW1wbGF0ZXMvYmFz\nZS5odG1sWAIAAAA1NYZypgEAAGFoI05oJF1ypwEAAHViaA8pgXKoAQAAfXKpAQAAKGgSVQBoE1gA\nAAAAaBVVIGI2ZTcxZWIzMWJkZmFmYjM5YmM5MTc1OGMxMjA3NzBhcqoBAABoF2gYaBlYKAAAANCb\n0LDQsdC+0YDQsNGC0L7RgNC40Lgg0Lgg0YHQtdC60YLQvtGA0LByqwEAAGgbVQBoHFUAaB1LAGge\nfXKsAQAAaCBdcq0BAAAoWBMAAAB0ZW1wbGF0ZXMvYmFzZS5odG1sWAIAAAA1N4ZyrgEAAFghAAAA\ndGVtcGxhdGVzL2xhYnMvbGFiZ3JvdXBfbGlzdC5odG1sWAEAAAA0hnKvAQAAZWgjTmgkXXKwAQAA\ndWJoDymBcrEBAAB9crIBAAAoaBJVAGgTWAAAAABoFVUgNGI1YTk1YmM3Y2U1MjVjMTE5ZmE2NTZi\nMjE3MjE1NmFyswEAAGgXaBhoGVgUAAAA0KHQvtGC0YDRg9C00L3QuNC60LhytAEAAGgbVQBoHFUA\naB1LAGgefXK1AQAAaCBdcrYBAAAoWBMAAAB0ZW1wbGF0ZXMvYmFzZS5odG1sWAIAAAA1OIZytwEA\nAFghAAAAdGVtcGxhdGVzL3VzZXJzL3Byb2ZpbGVfbGlzdC5odG1sWAEAAAA0hnK4AQAAZWgjTmgk\nXXK5AQAAdWJoDymBcroBAAB9crsBAAAoaBJVAGgTWAAAAABoFVUgN2RiYWY0YmUwYjY3YjMzOTdl\nNmRmNTM2NjMwYzgxODJyvAEAAGgXaBhoGVgQAAAA0JTQuNGA0LXQutGC0L7RgHK9AQAAaBtVAGgc\nVQBoHUsAaB59cr4BAABoIF1yvwEAAFgTAAAAdGVtcGxhdGVzL2Jhc2UuaHRtbFgCAAAANTmGcsAB\nAABhaCNOaCRdcsEBAAB1YmgPKYFywgEAAH1ywwEAAChoElUAaBNYAAAAAGgVVSA5N2M1YzU5NWQw\nNmEzNGJhM2RiNDQ1Y2UxYWQxN2RmYXLEAQAAaBdoGGgZWCkAAADQpdCw0LHQsNGA0L7QstGB0LrQ\nvtC1INC+0YLQtNC10LvQtdC90LjQtXLFAQAAaBtVAGgcVQBoHUsAaB59csYBAABoIF1yxwEAAFgT\nAAAAdGVtcGxhdGVzL2Jhc2UuaHRtbFgCAAAANjCGcsgBAABhaCNOaCRdcskBAAB1YmgPKYFyygEA\nAH1yywEAAChoElUAaBNYAAAAAGgVVSA5ODc3YzkxYjdjMmViNDUzNmE5YjczNjllODhhOTYzY3LM\nAQAAaBdoGGgZWBgAAADQmNGB0YHQu9C10LTQvtCy0LDQvdC40Y9yzQEAAGgbVQBoHFUAaB1LAGge\nfXLOAQAAaCBdcs8BAABYEwAAAHRlbXBsYXRlcy9iYXNlLmh0bWxYAgAAADYzhnLQAQAAYWgjTmgk\nXXLRAQAAdWJoDymBctIBAAB9ctMBAAAoaBJVAGgTWAAAAABoFVUgNjgyYTNkZmQ3NzdmMzZlZWM4\nNjE5ZDFkOGJhZDNmMTFy1AEAAGgXaBhoGVgnAAAA0J7RgdC90L7QstC90YvQtSDQvdCw0L/RgNCw\n0LLQu9C10L3QuNGPctUBAABoG1UAaBxVAGgdSwBoHn1y1gEAAGggXXLXAQAAWBMAAAB0ZW1wbGF0\nZXMvYmFzZS5odG1sWAIAAAA2NYZy2AEAAGFoI05oJF1y2QEAAHViaA8pgXLaAQAAfXLbAQAAKGgS\nVQBoE1gHAAAAV2VsY29tZXLcAQAAaBVVIDhjOWY1MjdkNTFjZmQwY2IxNTRlZmU4MDg0YWEyZDZl\nct0BAABoF2gYaBlYHwAAANCU0L7QsdGA0L4g0L/QvtC20LDQu9C+0LLQsNGC0Yxy3gEAAGgbVQBo\nHFUAaB1LAGgefXLfAQAAaCBdcuABAABYEwAAAHRlbXBsYXRlcy9iYXNlLmh0bWxYAgAAADc0hnLh\nAQAAYWgjTmgkXXLiAQAAdWJoDymBcuMBAAB9cuQBAAAoaBJVAGgTWAYAAABsb2dvdXRy5QEAAGgV\nVSA5NTk4ZjhiNjYxYWMzMjhhOTE4MzBjNjljNmY4ZjI3OHLmAQAAaBdoGGgZWAoAAADQstGL0LnR\ngtC4cucBAABoG1UAaBxVAGgdSwBoHn1y6AEAAGggXXLpAQAAWBMAAAB0ZW1wbGF0ZXMvYmFzZS5o\ndG1sWAIAAAA3NYZy6gEAAGFoI05oJF1y6wEAAHViaA8pgXLsAQAAfXLtAQAAKGgSVQBoE1gFAAAA\nTG9naW5y7gEAAGgVVSAxMjVlZmE3ZjhlNjBiMGJjOTI0NjU1MDkxMGFmZDQ2NXLvAQAAaBdoGGgZ\nWCYAAADQktGF0L7QtCDQtNC70Y8g0YHQvtGC0YDRg9C00L3QuNC60L7QsnLwAQAAaBtVAGgcVQBo\nHUsAaB59cvEBAABoIF1y8gEAAFgTAAAAdGVtcGxhdGVzL2Jhc2UuaHRtbFgCAAAANzeGcvMBAABh\naCNOaCRdcvQBAAB1YmgPKYFy9QEAAH1y9gEAAChoElUAaBNYAAAAAGgVVSBlZWJlZjQ0ZWNmZDE3\nNzI5ZTUyMGU3ZGY4YTY1M2YyZnL3AQAAaBdoGGgZWDoAAADQmNC90YHRgtC40YLRg9GCINC/0YDQ\nuNC60LvQsNC00L3QvtC5INC80LDRgtC10LzQsNGC0LjQutC4cvgBAABoG1UAaBxVAGgdSwBoHn1y\n+QEAAGggXXL6AQAAWBMAAAB0ZW1wbGF0ZXMvYmFzZS5odG1sWAIAAAA4N4Zy+wEAAGFoI05oJF1y\n/AEAAHViaA8pgXL9AQAAfXL+AQAAKGgSVQBoE1gAAAAAaBVVIDFiM2YwNDExNzA2ZTg4MTViODE3\nNjMyNzhkNWNlNWVkcv8BAABoF2gYaBlYYAAAANCU0LDQu9GM0L3QtdCy0L7RgdGC0L7Rh9C90L7Q\ntSDQvtGC0LTQtdC70LXQvdC40LUg0KDQvtGB0YHQuNC50YHQutC+0Lkg0LDQutCw0LTQtdC80LjQ\nuCDQvdCw0YPQunIAAgAAaBtVAGgcVQBoHUsAaB59cgECAABoIF1yAgIAAFgTAAAAdGVtcGxhdGVz\nL2Jhc2UuaHRtbFgCAAAAODiGcgMCAABhaCNOaCRdcgQCAAB1YmgPKYFyBQIAAH1yBgIAAChoElUA\naBNYBAAAAE5ld3NyBwIAAGgVVSA0YmIwZDk0NjFjNzIzNTM0ODBhZjkwNmM0ZWM1MWI0YnIIAgAA\naBdoGGgZWAwAAADQodC+0YHRgtCw0LJyCQIAAGgbVQBoHFUAaB1LAGgefXIKAgAAaCBdcgsCAABY\nJQAAAHRlbXBsYXRlcy9sYWJzL2xhYm9yYXRvcnlfZGV0YWlsLmh0bWxYAgAAADEyhnIMAgAAYWgj\nTmgkXXINAgAAWAUAAABmdXp6eXIOAgAAYXViaA8pgXIPAgAAfXIQAgAAKGgSVQBoE1gMAAAAUHVi\nbGljYXRpb25zchECAABoFVUgYTkzYWVkZjRjZjI1ZjA1ZTlkMmEyMTFiYTU1NmQwZmRyEgIAAGgX\naBhoGVgVAAAA0J/Rg9Cx0LvQuNC60LDRhtC40Lg6chMCAABoG1UAaBxVAGgdSwBoHn1yFAIAAGgg\nXXIVAgAAKFglAAAAdGVtcGxhdGVzL2xhYnMvbGFib3JhdG9yeV9kZXRhaWwuaHRtbFgCAAAAMjOG\nchYCAABYIwAAAHRlbXBsYXRlcy91c2Vycy9wcm9maWxlX2RldGFpbC5odG1sWAIAAAAzOIZyFwIA\nAGVoI05oJF1yGAIAAHViaA8pgXIZAgAAfXIaAgAAKGgSVQBoE1gMAAAARWRpdCBwcm9maWxlchsC\nAABoFVUgNTlhNzg5MjNhZTg2NTJiYjNmN2JkNzRjODQ4OWRmNDNyHAIAAGgXaBhoGVgaAAAA0KDQ\ntdC00LDQutGC0LjRgNC+0LLQsNGC0YxyHQIAAGgbVQBoHFUAaB1LAGgefXIeAgAAaCBdch8CAABY\nHQAAAHRlbXBsYXRlcy9uZXdzL25ld3NfbGlzdC5odG1sWAIAAAAyM4ZyIAIAAGFoI05oJF1yIQIA\nAFgFAAAAZnV6enlyIgIAAGF1YmgPKYFyIwIAAH1yJAIAAChoElUAaBNYAwAAAEFkZHIlAgAAaBVV\nIDA4NTkyNWUxNmE1YTgxN2VkMjM5MjkxOWM5ZWNlOWQ4ciYCAABoF2gYaBlYDgAAANCj0LTQsNC7\n0LjRgtGMcicCAABoG1UAaBxVAGgdSwBoHn1yKAIAAGggXXIpAgAAKFgdAAAAdGVtcGxhdGVzL25l\nd3MvbmV3c19saXN0Lmh0bWxYAgAAADI0hnIqAgAAWCAAAAB0ZW1wbGF0ZXMvcHVibGljYXRpb25z\nL2VkaXQuaHRtbFgCAAAAMjiGcisCAABlaCNOaCRdciwCAABYBQAAAGZ1enp5ci0CAABhdWJoDymB\nci4CAAB9ci8CAAAoaBJVAGgTWAwAAABQdWJsaWNhdGlvbnNyMAIAAGgVVSAxYWVhNzliYWJjYzBh\nNThmZDExNmQ4ODNhZDk5ODg0YnIxAgAAaBdoGGgZWCkAAADQlNC+0LHQsNCy0LvQtdC90LjQtSDQ\nv9GD0LHQu9C40LrQsNGG0LjQuHIyAgAAaBtVAGgcVQBoHUsAaB59cjMCAABoIF1yNAIAAFgfAAAA\ndGVtcGxhdGVzL3B1YmxpY2F0aW9ucy9hZGQuaHRtbFgBAAAANIZyNQIAAGFoI05oJF1yNgIAAFgF\nAAAAZnV6enlyNwIAAGF1YmgPKYFyOAIAAH1yOQIAAChoElUAaBNYBAAAAFNhdmVyOgIAAGgVVSBh\nMjU2YzZiODY4N2FmNDJhNmZhYjVmYjZlZTQyZGVlZHI7AgAAaBdoGGgZWBIAAADQodC+0YXRgNCw\n0L3QuNGC0YxyPAIAAGgbVQBoHFUAaB1LAGgefXI9AgAAaCBdcj4CAAAoWB8AAAB0ZW1wbGF0ZXMv\ncHVibGljYXRpb25zL2FkZC5odG1sWAIAAAAxM4ZyPwIAAFggAAAAdGVtcGxhdGVzL3B1YmxpY2F0\naW9ucy9lZGl0Lmh0bWxYAgAAADI0hnJAAgAAWBkAAAB0ZW1wbGF0ZXMvdXNlcnMvZWRpdC5odG1s\nWAIAAAA4M4ZyQQIAAGVoI05oJF1yQgIAAHViaA8pgXJDAgAAfXJEAgAAKGgSVQBoE1gMAAAARWRp\ndCBwcm9maWxlckUCAABoFVUgMmY2OTc5ZTZiMzcxOGM1ZmEwZTliOWMzNWE2N2IwOWRyRgIAAGgX\naBhoGVgxAAAA0KDQtdC00LDQutGC0LjRgNC+0LLQsNC90LjQtSDQv9GD0LHQu9C40LrQsNGG0LjQ\nuHJHAgAAaBtVAGgcVQBoHUsAaB59ckgCAABoIF1ySQIAAFggAAAAdGVtcGxhdGVzL3B1YmxpY2F0\naW9ucy9lZGl0Lmh0bWxYAQAAADSGckoCAABhaCNOaCRdcksCAABYBQAAAGZ1enp5ckwCAABhdWJo\nDymBck0CAAB9ck4CAAAoaBJVAGgTWAUAAABMb2dpbnJPAgAAaBVVIDFkMDFjMDE4YTgyZGJmNTky\nOGY1ZTZhNzcwYjkxZmI3clACAABoF2gYaBlYCgAAANCS0L7QudGC0LhyUQIAAGgbVQBoHFUAaB1L\nAGgefXJSAgAAaCBdclMCAABYIQAAAHRlbXBsYXRlcy9yZWdpc3RyYXRpb24vbG9naW4uaHRtbFgC\nAAAAMTiGclQCAABhaCNOaCRdclUCAAB1YmgPKYFyVgIAAH1yVwIAAChoElUAaBNYDAAAAEVkaXQg\ncHJvZmlsZXJYAgAAaBVVIGZlODViZjY3Mjg4ZDAyNDIwOTVlMTg0NzQyMjNiNzNmclkCAABoF2gY\naBlYNgAAANCg0LXQtNCw0LrRgtC40YDQvtCy0LDQvdC40LUg0LvQuNGH0L3Ri9GFINC00LDQvdC9\n0YvRhXJaAgAAaBtVAGgcVQBoHUsAaB59clsCAABoIF1yXAIAAFgZAAAAdGVtcGxhdGVzL3VzZXJz\nL2VkaXQuaHRtbFgBAAAANIZyXQIAAGFoI05oJF1yXgIAAHViaA8pgXJfAgAAfXJgAgAAKGgSVQBo\nE1gMAAAARWRpdCBwcm9maWxlcmECAABoFVUgOTc3MDgzNDkxMTIyODI3YWIwYmQ5MzMxZDM3NTU1\nZDFyYgIAAGgXaBhoGVgdAAAA0JjQt9C80LXQvdC40YLRjCDQtNCw0L3QvdGL0LVyYwIAAGgbVQBo\nHFUAaB1LAGgefXJkAgAAaCBdcmUCAABYIwAAAHRlbXBsYXRlcy91c2Vycy9wcm9maWxlX2RldGFp\nbC5odG1sWAIAAAAyOIZyZgIAAGFoI05oJF1yZwIAAHViaA8pgXJoAgAAfXJpAgAAKGgSVQBoE1gD\nAAAAQWRkcmoCAABoFVUgZGZjZDQwYTNmZTRkYzI2MDU2ZTExMGY4YTE4N2EyMzByawIAAGgXaBho\nGVglAAAA0JTQvtCx0LDQstC40YLRjCDQv9GD0LHQu9C40LrQsNGG0LjRjnJsAgAAaBtVAGgcVQBo\nHUsAaB59cm0CAABoIF1ybgIAAFgjAAAAdGVtcGxhdGVzL3VzZXJzL3Byb2ZpbGVfZGV0YWlsLmh0\nbWxYAgAAADI5hnJvAgAAYWgjTmgkXXJwAgAAWAUAAABmdXp6eXJxAgAAYXViaA8pgXJyAgAAfXJz\nAgAAKGgSVQBoE1gLAAAATWlkZGxlIG5hbWVydAIAAGgVVSAwMDFmNjczZTkxN2IyYzU1Y2IyYWUw\nMGE4MGM2OGZmN3J1AgAAaBdoGGgZWBAAAADQntGC0YfQtdGB0YLQstC+cnYCAABoG1UAaBxVAGgd\nSwBoHn1ydwIAAGggXXJ4AgAAWA8AAAB1c2Vycy9tb2RlbHMucHlYAgAAADEyhnJ5AgAAYWgjTmgk\nXXJ6AgAAdWJoDymBcnsCAAB9cnwCAAAoaBJVAGgTWA8AAABBY2FkZW1pYyBkZWdyZWVyfQIAAGgV\nVSA3MWIyMDFlZDZiY2IxYTVhMmYwOWI4Yzk2NDE0ZGNkNXJ+AgAAaBdoGGgZWBsAAADQo9GH0ZHQ\nvdCw0Y8g0YHRgtC10L/QtdC90YxyfwIAAGgbVQBoHFUAaB1LAGgefXKAAgAAaCBdcoECAABYDwAA\nAHVzZXJzL21vZGVscy5weVgCAAAAMTOGcoICAABhaCNOaCRdcoMCAAB1YmgPKYFyhAIAAH1yhQIA\nAChoElUAaBNYBQAAAFRpdGxlcoYCAABoFVUgNTM2ZjM2ODQwOGUwZDk0OWRmMWM5ODk2Yzc4NjBm\nMDByhwIAAGgXaBhoGVgZAAAA0KPRh9GR0L3QvtC1INC30LLQsNC90LjQtXKIAgAAaBtVAGgcVQBo\nHUsAaB59cokCAABoIF1yigIAAFgPAAAAdXNlcnMvbW9kZWxzLnB5WAIAAAAxNIZyiwIAAGFoI05o\nJF1yjAIAAFgFAAAAZnV6enlyjQIAAGF1YmgPKYFyjgIAAH1yjwIAAChoElUAaBNYAwAAAEFkZHKQ\nAgAAaBVVIDYxMmI0MzliMmNjZTFjYmMzMGFiYzA5ZTRkOGExNjc1cpECAABoF2gYaBlYEgAAANCU\n0L7Qu9C20L3QvtGB0YLRjHKSAgAAaBtVAGgcVQBoHUsAaB59cpMCAABoIF1ylAIAAFgPAAAAdXNl\ncnMvbW9kZWxzLnB5WAIAAAAxNYZylQIAAGFoI05oJF1ylgIAAFgFAAAAZnV6enlylwIAAGF1YmgP\nKYFymAIAAH1ymQIAAChoElUAaBNYCgAAAG1vbm9ncmFwaHlymgIAAGgVVSBlZTRlY2M1M2E4YjVl\nYmQzYzMzZWRiMzA2MTMyOTViN3KbAgAAaBdoGGgZWBQAAADQpNC+0YLQvtCz0YDQsNGE0LjRj3Kc\nAgAAaBtVAGgcVQBoHUsAaB59cp0CAABoIF1yngIAAFgPAAAAdXNlcnMvbW9kZWxzLnB5WAIAAAAx\nNoZynwIAAGFoI05oJF1yoAIAAFgFAAAAZnV6enlyoQIAAGF1YmgPKYFyogIAAH1yowIAAChoElUA\naBNYBwAAAFByb2ZpbGVypAIAAGgVVSBjMzM3MDk1NDVhYzI1MzNiZTdlYWJmMjFhNGJiODU0Y3Kl\nAgAAaBdoGGgZWA4AAADQn9GA0L7RhNC40LvRjHKmAgAAaBtVAGgcVQBoHUsAaB59cqcCAABoIF1y\nqAIAAFgPAAAAdXNlcnMvbW9kZWxzLnB5WAIAAAAyNYZyqQIAAGFoI05oJF1yqgIAAHViaA8pgXKr\nAgAAfXKsAgAAKGgSVQBoE1gIAAAAUHJvZmlsZXNyrQIAAGgVVSA2NmE1ZWZmZmNmYjE2ODgxMTVj\nMGE4ZTM4Yjc5NjY0MHKuAgAAaBdoGGgZWA4AAADQn9GA0L7RhNC40LvQuHKvAgAAaBtVAGgcVQBo\nHUsAaB59crACAABoIF1ysQIAAFgPAAAAdXNlcnMvbW9kZWxzLnB5WAIAAAAyNoZysgIAAGFoI05o\nJF1yswIAAHViaA8pgXK0AgAAfXK1AgAAKGgSVQBoE1gFAAAATG9naW5ytgIAAGgVVSAyY2QwM2E4\nZTRlZTgzYTczZDU0ZjFkMmJmNzgxOWE5MnK3AgAAaBdoGGgZWAoAAADQm9C+0LPQuNC9crgCAABo\nG1UAaBxVAGgdSwBoHn1yuQIAAGggXXK6AgAAWA4AAAB1c2Vycy92aWV3cy5weVgCAAAAMTiGcrsC\nAABhaCNOaCRdcrwCAABYBQAAAGZ1enp5cr0CAABhdWJoDymBcr4CAAB9cr8CAAAoaBJVAGgTWAQA\nAABOYW1lcsACAABoFVUgMjRmMjQ1MmY4ZjU4MzQ3MWY3NTliYWNkYzY5NWUyNThywQIAAGgXaBho\nGVgGAAAA0JjQvNGPcsICAABoG1UAaBxVAGgdSwBoHn1ywwIAAGggXXLEAgAAWA4AAAB1c2Vycy92\naWV3cy5weVgCAAAAMTmGcsUCAABhaCNOaCRdcsYCAAB1YmgPKYFyxwIAAH1yyAIAAChoElUAaBNY\nBwAAAFN1cm5hbWVyyQIAAGgVVSA4MDQyNjVhMDAxOWFjYWRkYzE1Y2ZkOWE3NWEwMDEzZnLKAgAA\naBdoGGgZWA4AAADQpNCw0LzQuNC70LjRj3LLAgAAaBtVAGgcVQBoHUsAaB59cswCAABoIF1yzQIA\nAFgOAAAAdXNlcnMvdmlld3MucHlYAgAAADIwhnLOAgAAYWgjTmgkXXLPAgAAdWJoDymBctACAAB9\nctECAAAoaBJVAGgTWAUAAABFbWFpbHLSAgAAaBVVIGY0OTg1YzU1YmE3NDRmNTdjOTY2YjE0MTdk\nMTJkZDEwctMCAABoF2gYaBlYIQAAANCt0LvQtdC60YLRgNC+0L3QvdCw0Y8g0L/QvtGH0YLQsHLU\nAgAAaBtVAGgcVQBoHUsAaB59ctUCAABoIF1y1gIAAFgOAAAAdXNlcnMvdmlld3MucHlYAgAAADIx\nhnLXAgAAYWgjTmgkXXLYAgAAdWJoDymBctkCAAB9ctoCAAAoaBJVAGgTWAcAAABXZWxjb21lctsC\nAABoFVUgNWFmMzRhMGEwYWVhNDdhYjcyNmE2YjUzMmFkYmE2Y2Fy3AIAAGgXaBhoGVgfAAAA0JjQ\nvNGPINC/0L7Qu9GM0LfQvtCy0LDRgtC10LvRj3LdAgAAaBtVAGgcVQBoHUsBaB59ct4CAABoIF1y\n3wIAAGgjTmgkXXLgAgAAWAUAAABmdXp6eXLhAgAAYXViZX1y4gIAAChoF1UFVVRGLThy4wIAAFUJ\nd3JhcHdpZHRocuQCAABLTlUFZnBhdGhy5QIAAGgLVQZoZWFkZXJy5gIAAFi2AAAAU09NRSBERVND\nUklQVElWRSBUSVRMRS4KQ29weXJpZ2h0IChDKSBZRUFSIFRIRSBQQUNLQUdFJ1MgQ09QWVJJR0hU\nIEhPTERFUgpUaGlzIGZpbGUgaXMgZGlzdHJpYnV0ZWQgdW5kZXIgdGhlIHNhbWUgbGljZW5zZSBh\ncyB0aGUgUEFDS0FHRSBwYWNrYWdlLgpGSVJTVCBBVVRIT1IgPEVNQUlMQEFERFJFU1M+LCBZRUFS\nLgpy5wIAAFUUY2hlY2tfZm9yX2R1cGxpY2F0ZXNy6AIAAIlVEW1ldGFkYXRhX2lzX2Z1enp5cukC\nAABdcuoCAABYBQAAAGZ1enp5cusCAABhVQhtZXRhZGF0YXLsAgAAfXLtAgAAKFgQAAAAUE8tUmV2\naXNpb24tRGF0ZXLuAgAAWBAAAAAyMDEwLTA3LTA1IDIyOjExcu8CAABYCAAAAExhbmd1YWdlcvAC\nAABYAAAAAFgZAAAAQ29udGVudC1UcmFuc2Zlci1FbmNvZGluZ3LxAgAAWAQAAAA4Yml0cvICAABY\nEgAAAFgtVHJhbnNsYXRlZC1Vc2luZ3LzAgAAWBQAAABkamFuZ28tcm9zZXR0YSAwLjUuNXL0AgAA\nWBIAAABQcm9qZWN0LUlkLVZlcnNpb25y9QIAAFgPAAAAUEFDS0FHRSBWRVJTSU9OcvYCAABYFAAA\nAFJlcG9ydC1Nc2dpZC1CdWdzLVRvcvcCAABYAAAAAFgPAAAATGFzdC1UcmFuc2xhdG9ycvgCAABY\nFQAAADxpZGtyYXZpdHpAZ21haWwuY29tPnL5AgAAWA0AAABMYW5ndWFnZS1UZWFtcvoCAABYFAAA\nAExBTkdVQUdFIDxMTEBsaS5vcmc+cvsCAABYEQAAAFBPVC1DcmVhdGlvbi1EYXRlcvwCAABYFQAA\nADIwMTAtMDctMTQgMTE6MTQrMTEwMHL9AgAAWAwAAABDb250ZW50LVR5cGVy/gIAAFgZAAAAdGV4\ndC9wbGFpbjsgY2hhcnNldD1VVEYtOHL/AgAAWAwAAABNSU1FLVZlcnNpb25yAAMAAFgDAAAAMS4w\ncgEDAAB1dWJ1LjA4ZWQyZjAyNmJjMDNlNGNkY2IwODczNzM1Y2FiMDI3\n','2010-07-28 11:14:55'),('6a5a6d6137f9087663cab3bb67e58bf6','gAJ9cQEuZmNiYTM3YTRhMjA2MzU3NTI2ZjVkOTA1ZjVlYmRjZTM=\n','2010-07-28 12:46:34'),('5be1cb92b087cb5ecbc332838453f19d','gAJ9cQEuZmNiYTM3YTRhMjA2MzU3NTI2ZjVkOTA1ZjVlYmRjZTM=\n','2010-07-28 12:47:43'),('51d41a003c4d1fe9b09e56bab1ab2877','gAJ9cQEuZmNiYTM3YTRhMjA2MzU3NTI2ZjVkOTA1ZjVlYmRjZTM=\n','2010-07-28 14:22:39'),('133b95de6256be1c3d01e6eed47c638d','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigECdS43OTczOWE5NjM5ZTVjZTU0OGYy\nNzA0OTUwYTgzMDkwZg==\n','2010-07-28 13:33:25');
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
INSERT INTO `labs_laboratory` VALUES (1,'Лаборатория конструктивных методов математики','3.10',2,2,''),(2,'Лаборатория математического анализа','3.3',2,7,''),(3,'Сектор топологии и алгебры','3.8',2,8,''),(4,'Лаборатория математического моделирования','3.2',3,9,''),(5,'  	 Лаборатория вычислительной аэро-гидродинамики','3.5',3,10,''),(6,'Лаборатория вычислительных методов математической физики','3.6',3,11,''),(7,'Лаборатория проблем оптимального управления','3.1',4,12,''),(8,'Лаборатория вероятностных методов и системного анализа','3.4',4,13,''),(9,'Сектор геодезии и геодинамики','3.7-с',4,14,''),(10,'Группа ИТО','0',2,17,'');
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
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_news`
--

LOCK TABLES `news_news` WRITE;
/*!40000 ALTER TABLE `news_news` DISABLE KEYS */;
INSERT INTO `news_news` VALUES (3,'Новый сайт института','Запущена тестовая версия нового сайта, присутствует ссылка на предыдущую версию.','2010-07-08 14:28:38',13),(4,'So what gives?',' Internet Explorer\'s problems rendering floats have been thoroughly analyzed, thanks in large part to Big John\'s efforts characterizing and publicizing them. We do still stumble onto undocumented oddities, though, and this demo presents one that hasn\'t been isolated yetor we haven\'t heard about it if it hasand as a delightful by-product, suggests a simpler work-around (or maybe a hack) than we have been using for a bothersome rendering issue that\'s been around a while.The bug demonstrated here causes in-line elements (images, text) adjacent to a floated div to appear to be indented from their expected location. The indentation is caused by IE6\'s weird handling of margins on floated elements. The happy by-product is a cleaner way to defeat the doubled-margin bug.(Note: If you\'re looking at this in some browser other than Internet Explorer 6 on Windows, you\'re likely to wonder what the heck I\'m talking about. All other browsers I have tested render the examples below properly and ignore the work-aroundsyou have to use IE6 to really see what\'s going on, but I\'ve included screenshots in case you just can\'t bri','2010-07-09 11:43:02',1),(6,'CSS Tools: Reset CSS','The goal of a reset stylesheet is to reduce browser inconsistencies in things like default line heights, margins and font sizes of headings, and so on. The general reasoning behind this was discussed in a May 2007 post, if you\'re interested. Reset styles quite often appear in CSS frameworks, and the original \"meyerweb reset\" found its way into Blueprint, among others.The reset styles given here are intentionally very generic. There isn\'t any default color or background set for the body element, for example. I don\'t particularly recommend that you just use this in its unaltered state in your own projects. It should be tweaked, edited, extended, and otherwise tuned to match your specific reset baseline. Fill in your preferred colors for the page, links, and so on.In other words, this is a starting point, not a self-contained black box of no-touchiness.If you want to use my reset styles, then feel free! It\'s all explicitly in the public domain (I have to formally say that or else people ask me about licensing). You can grab a copy of the file to use and tweak as fits you best. If you\'re more of the copy-and-paste type, or just want an in-page preview of what you\'ll be getting, here it is. ','2010-07-09 12:13:14',1),(7,'openSUSE 11.2 has been released!','openSUSE 11.2 is finally out! The openSUSE Project is pleased to announce the release of openSUSE 11.2. openSUSE 11.2 includes new versions of GNOME, KDE, OpenOffice.org, Firefox, the Linux kernel, and many, many more updates and improvements. In 11.2 youâ€™ll find more than 1,000 open source desktop applications. openSUSE also includes a full suite of server software and a rich selection of open source development tools. Get it today!\r\n\r\nYou can also help out by Digging the 11.2 announcement and spreading the word on Twitter!','2010-07-09 12:15:08',1);
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publications_publication`
--

LOCK TABLES `publications_publication` WRITE;
/*!40000 ALTER TABLE `publications_publication` DISABLE KEYS */;
INSERT INTO `publications_publication` VALUES (5,'123','6','0','asd',123,'sad','fdsfz','2',3,54);
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
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publications_publication_authors`
--

LOCK TABLES `publications_publication_authors` WRITE;
/*!40000 ALTER TABLE `publications_publication_authors` DISABLE KEYS */;
INSERT INTO `publications_publication_authors` VALUES (17,5,13),(18,5,6),(15,5,1),(16,5,7),(19,5,9);
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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `south_migrationhistory`
--

LOCK TABLES `south_migrationhistory` WRITE;
/*!40000 ALTER TABLE `south_migrationhistory` DISABLE KEYS */;
INSERT INTO `south_migrationhistory` VALUES (1,'users','0001_initial','2010-07-06 01:29:28'),(2,'news','0001_initial','2010-07-06 01:36:40'),(3,'labs','0001_initial','2010-07-06 01:38:26'),(4,'users','0002_auto__add_field_profile_is_a_cool_guy','2010-07-06 09:35:19'),(5,'users','0003_auto__del_field_profile_is_a_cool_guy','2010-07-06 09:37:30'),(6,'users','0004_auto__chg_field_profile_academic_rank','2010-07-06 23:36:49'),(7,'users','0005_auto__chg_field_profile_post','2010-07-06 23:47:19');
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
INSERT INTO `users_profile` VALUES (1,2,1,'Александрович','д.ф.-м.н.','член-корр. РАН','директор ИПМ',''),(3,7,2,'Николаевич','','','',''),(4,8,3,'Евгеньевич','','','',''),(5,9,4,'Юрьевич','','','',''),(6,10,5,'Валентинович','','','',''),(7,11,6,'Васильевич','','','',''),(8,12,7,'Тимофеевич','','','',''),(9,13,8,'Шалвович','','','',''),(10,14,9,'Данилович','','','',''),(11,15,1,'Алексеевич','','','',''),(12,16,1,'Владимирович','','','',''),(13,17,10,'Алексеевич','','','',''),(14,1,6,'Сергеевич','','','мудодяй','');
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

-- Dump completed on 2010-07-14 14:26:18
