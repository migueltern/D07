start transaction;
create database `Acme-Explorer`;

use `Acme-Explorer`;

create user 'acme-user'@'%' identified by password '*4F10007AADA9EE3DBB2CC36575DFC6F4FDE27577';
create user 'acme-manager'@'%' identified by password '*FDB8CD304EB2317D10C95D797A4BD7492560F55F';

grant select, insert, update, delete on `Acme-Explorer`.* to 'acme-user'@'%';
grant select, insert, update, delete, create, drop, references, index, alter, create temporary tables, lock tables, create view, create routine, alter routine, execute, trigger, show view on `Acme-Explorer`.* to 'acme-manager'@'%';
-- MySQL dump 10.13  Distrib 5.5.29, for Win64 (x86)
--
-- Host: localhost    Database: acme-explorer
-- ------------------------------------------------------
-- Server version	5.5.29

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
-- Table structure for table `actor_messagefolder`
--

DROP TABLE IF EXISTS `actor_messagefolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actor_messagefolder` (
  `Actor_id` int(11) NOT NULL,
  `messagesFolders_id` int(11) NOT NULL,
  UNIQUE KEY `UK_9r38jrnmcit3asym390tk6fyb` (`messagesFolders_id`),
  CONSTRAINT `FK_9r38jrnmcit3asym390tk6fyb` FOREIGN KEY (`messagesFolders_id`) REFERENCES `messagefolder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor_messagefolder`
--

LOCK TABLES `actor_messagefolder` WRITE;
/*!40000 ALTER TABLE `actor_messagefolder` DISABLE KEYS */;
INSERT INTO `actor_messagefolder` VALUES (13259,13069),(13259,13070),(13259,13071),(13259,13072),(13259,13073),(13260,13074),(13260,13075),(13260,13076),(13260,13077),(13260,13078),(13261,13079),(13261,13080),(13261,13081),(13261,13082),(13261,13083),(13262,13084),(13262,13085),(13262,13086),(13262,13087),(13262,13088),(13263,13089),(13263,13090),(13263,13091),(13263,13092),(13263,13093),(13274,13094),(13274,13095),(13274,13096),(13274,13097),(13274,13098),(13275,13099),(13275,13100),(13275,13101),(13275,13102),(13275,13103),(13276,13104),(13276,13105),(13276,13106),(13276,13107),(13276,13108),(13277,13109),(13277,13110),(13277,13111),(13277,13112),(13277,13113),(13278,13114),(13278,13115),(13278,13116),(13278,13117),(13278,13118),(13315,13119),(13315,13120),(13315,13121),(13315,13122),(13315,13123),(13316,13124),(13316,13125),(13316,13126),(13316,13127),(13316,13128),(13317,13129),(13317,13130),(13317,13131),(13317,13132),(13317,13133),(13318,13134),(13318,13135),(13318,13136),(13318,13137),(13318,13138),(13319,13139),(13319,13140),(13319,13141),(13319,13142),(13319,13143),(13320,13144),(13320,13145),(13320,13146),(13320,13147),(13320,13148),(13321,13149),(13321,13150),(13321,13151),(13321,13152),(13321,13153),(13322,13154),(13322,13155),(13322,13156),(13322,13157),(13322,13158),(13323,13159),(13323,13160),(13323,13161),(13323,13162),(13323,13163),(13324,13164),(13324,13165),(13324,13166),(13324,13167),(13324,13168),(13325,13169),(13325,13170),(13325,13171),(13325,13172),(13325,13173),(13279,13174),(13279,13175),(13279,13176),(13279,13177),(13279,13178),(13280,13179),(13280,13180),(13280,13181),(13280,13182),(13280,13183),(13281,13184),(13281,13185),(13281,13186),(13281,13187),(13281,13188),(13282,13189),(13282,13190),(13282,13191),(13282,13192),(13282,13193),(13283,13194),(13283,13195),(13283,13196),(13283,13197),(13283,13198),(13264,13199),(13264,13200),(13264,13201),(13264,13202),(13264,13203),(13265,13204),(13265,13205),(13265,13206),(13265,13207),(13265,13208),(13266,13209),(13266,13210),(13266,13211),(13266,13212),(13266,13213),(13267,13214),(13267,13215),(13267,13216),(13267,13217),(13267,13218),(13268,13219),(13268,13220),(13268,13221),(13268,13222),(13268,13223),(13259,13224),(13259,13225),(13259,13226),(13259,13227),(13259,13228);
/*!40000 ALTER TABLE `actor_messagefolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actor_socialidentity`
--

DROP TABLE IF EXISTS `actor_socialidentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actor_socialidentity` (
  `Actor_id` int(11) NOT NULL,
  `socialIdentities_id` int(11) NOT NULL,
  UNIQUE KEY `UK_fvjtbijvsijias3suehxiq0jm` (`socialIdentities_id`),
  CONSTRAINT `FK_fvjtbijvsijias3suehxiq0jm` FOREIGN KEY (`socialIdentities_id`) REFERENCES `socialidentity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor_socialidentity`
--

LOCK TABLES `actor_socialidentity` WRITE;
/*!40000 ALTER TABLE `actor_socialidentity` DISABLE KEYS */;
INSERT INTO `actor_socialidentity` VALUES (13259,13229),(13260,13230),(13261,13231),(13262,13232),(13263,13233),(13264,13244),(13265,13245),(13266,13246),(13267,13247),(13268,13248);
/*!40000 ALTER TABLE `actor_socialidentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrator` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `suspicious` bit(1) NOT NULL,
  `userAccount_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_idt4b4u259p6vs4pyr9lax4eg` (`userAccount_id`),
  CONSTRAINT `FK_idt4b4u259p6vs4pyr9lax4eg` FOREIGN KEY (`userAccount_id`) REFERENCES `useraccount` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` VALUES (13259,0,'Administrator address','Administrator1@administrator.com','Administrator1','+34662657322','Administrator1 Surnames','\0',13038),(13260,0,'Administrator address','Administrator2@administrator.com','Administrator2','+34662657322','Administrator2 Surnames','\0',13039),(13261,0,'Administrator address','Administrator3@administrator.com','Administrator3','+34662657323','Administrator3 Surnames','\0',13040),(13262,0,'Administrator address','Administrator4@administrator.com','Administrator4','+34662657324','Administrator4 Surnames','\0',13041),(13263,0,'Administrator address','Administrator5@administrator.com','Administrator5','+34662657325','Administrator5 Surnames','\0',13042);
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicationfor`
--

DROP TABLE IF EXISTS `applicationfor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicationfor` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `brandName` varchar(255) DEFAULT NULL,
  `cvv` int(11) NOT NULL,
  `expirationMonth` varchar(255) DEFAULT NULL,
  `expirationYear` varchar(255) DEFAULT NULL,
  `holderName` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `moment` datetime DEFAULT NULL,
  `reasonWhy` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `explorer_id` int(11) NOT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `trip_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_qkn29o630r4wdvtaugkns82g3` (`explorer_id`),
  KEY `FK_ep3lhiylkqxx6w8v5n9jiacf6` (`manager_id`),
  KEY `FK_djyjfgplhq5lreh4yipstoch1` (`trip_id`),
  CONSTRAINT `FK_djyjfgplhq5lreh4yipstoch1` FOREIGN KEY (`trip_id`) REFERENCES `trip` (`id`),
  CONSTRAINT `FK_ep3lhiylkqxx6w8v5n9jiacf6` FOREIGN KEY (`manager_id`) REFERENCES `manager` (`id`),
  CONSTRAINT `FK_qkn29o630r4wdvtaugkns82g3` FOREIGN KEY (`explorer_id`) REFERENCES `explorer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicationfor`
--

LOCK TABLES `applicationfor` WRITE;
/*!40000 ALTER TABLE `applicationfor` DISABLE KEYS */;
INSERT INTO `applicationfor` VALUES (13384,0,'La caixa',102,'03','20','Jose Angel Dominguez Espinaco','4388576018410707','2015-10-21 10:10:00','','ACCEPTED',13320,13315,13362),(13385,0,'Santander',103,'05','21','Daniel Lozano','4388576018410707','2017-12-11 00:10:00','','ACCEPTED',13321,13316,13362),(13386,0,'Santander',655,'06','17','Maria Ruiz','4388576018410707','2017-10-21 01:10:00','','ACCEPTED',13322,13317,13363),(13387,0,'Bankia',876,'04','16','Laura vera','4388576018410707','2017-10-21 02:10:00','','ACCEPTED',13322,13318,13364),(13388,0,'La caixa',724,'05','18','Joaquin rodriguez','4388576018410707','2017-10-21 03:10:00','','CANCELLED',13324,13319,13364),(13389,0,'La caixa',724,'05','18','María rodriguez','4388576018410707','2017-10-21 03:10:00','','PENDING',13325,NULL,13364),(13390,0,'La caixa',724,'05','18','Joaquin rodriguez','4388576018410707','2017-10-27 03:10:00','','ACCEPTED',13324,13315,13366),(32769,4,'',0,'','','','','2018-01-18 12:58:00','porque sí','DUE',13320,13316,32768);
/*!40000 ALTER TABLE `applicationfor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicationfor_comments`
--

DROP TABLE IF EXISTS `applicationfor_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicationfor_comments` (
  `ApplicationFor_id` int(11) NOT NULL,
  `comments` varchar(255) DEFAULT NULL,
  KEY `FK_n30okwyuwhsnvclw83sjncnlt` (`ApplicationFor_id`),
  CONSTRAINT `FK_n30okwyuwhsnvclw83sjncnlt` FOREIGN KEY (`ApplicationFor_id`) REFERENCES `applicationfor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicationfor_comments`
--

LOCK TABLES `applicationfor_comments` WRITE;
/*!40000 ALTER TABLE `applicationfor_comments` DISABLE KEYS */;
INSERT INTO `applicationfor_comments` VALUES (13384,'comment1 ApplicaciontFor1'),(13384,'comment2 ApplicaciontFor1'),(13384,'comment3 ApplicaciontFor1'),(13385,'comment1 ApplicaciontFor2'),(13385,'comment2 ApplicaciontFor2'),(13385,'comment3 ApplicaciontFor2'),(13386,'comment1 ApplicaciontFor3'),(13386,'comment2 ApplicaciontFor3'),(13386,'comment3 ApplicaciontFor3'),(13387,'comment1 ApplicaciontFor4'),(13387,'comment2 ApplicaciontFor4'),(13387,'comment3 ApplicaciontFor4'),(13388,'comment1 ApplicaciontFor5'),(13388,'comment2 ApplicaciontFor5'),(13388,'comment3 ApplicaciontFor5'),(13389,'comment1 ApplicaciontFor5'),(13389,'comment2 ApplicaciontFor5'),(13389,'comment3 ApplicaciontFor5'),(32769,'me gustaria viajar aqui');
/*!40000 ALTER TABLE `applicationfor_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditor`
--

DROP TABLE IF EXISTS `auditor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditor` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `suspicious` bit(1) NOT NULL,
  `userAccount_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_img3kaubb62u0h0jujkh1tejo` (`userAccount_id`),
  CONSTRAINT `FK_img3kaubb62u0h0jujkh1tejo` FOREIGN KEY (`userAccount_id`) REFERENCES `useraccount` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditor`
--

LOCK TABLES `auditor` WRITE;
/*!40000 ALTER TABLE `auditor` DISABLE KEYS */;
INSERT INTO `auditor` VALUES (13279,0,'C/ avenida del auditor','auditor1@acmeexplorer.com','auditor 1','+34617557203','auditor1 auditor1','\0',13058),(13280,0,'C/ avenida del auditor','auditor2@acmeexplorer.com','auditor 2','+34617557243','auditor2 auditor2','\0',13059),(13281,0,'C/ avenida del auditor','auditor3@acmeexplorer.com','auditor 3','+34617357243','auditor3 auditor3','\0',13060),(13282,0,'C/ avenida del auditor','auditor4@acmeexplorer.com','auditor 4','+34677557243','auditor4 audito45','\0',13061),(13283,0,'C/ avenida del auditor','auditor5@acmeexplorer.com','auditor 5','+34617557243','auditor5 auditor5','\0',13062);
/*!40000 ALTER TABLE `auditor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditrecord`
--

DROP TABLE IF EXISTS `auditrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditrecord` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `draftMode` bit(1) NOT NULL,
  `realisedMoment` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `auditor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_td4sv8mbdf910amh5qj8kskjv` (`auditor_id`),
  CONSTRAINT `FK_td4sv8mbdf910amh5qj8kskjv` FOREIGN KEY (`auditor_id`) REFERENCES `auditor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditrecord`
--

LOCK TABLES `auditrecord` WRITE;
/*!40000 ALTER TABLE `auditrecord` DISABLE KEYS */;
INSERT INTO `auditrecord` VALUES (13289,0,'attachments auditrecord 1','','2017-10-01 15:25:00','auditrecord1',13279),(13290,0,'attachments auditrecord 2 ','\0','2017-10-01 15:25:00','auditrecord2',13279),(13291,0,'attachments auditrecord 3','','2017-10-01 15:25:00','auditrecord3',13279),(13292,0,'attachments auditrecord 4 VIAGRA','','2017-10-01 15:25:00','auditrecord4',13280),(13293,0,'attachments auditrecord 5','','2017-10-01 15:25:00','auditrecord5',13281);
/*!40000 ALTER TABLE `auditrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditrecord_attachments`
--

DROP TABLE IF EXISTS `auditrecord_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditrecord_attachments` (
  `AuditRecord_id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  KEY `FK_maqb3v04iw2jvggyf0qyd0dtp` (`AuditRecord_id`),
  CONSTRAINT `FK_maqb3v04iw2jvggyf0qyd0dtp` FOREIGN KEY (`AuditRecord_id`) REFERENCES `auditrecord` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditrecord_attachments`
--

LOCK TABLES `auditrecord_attachments` WRITE;
/*!40000 ALTER TABLE `auditrecord_attachments` DISABLE KEYS */;
INSERT INTO `auditrecord_attachments` VALUES (13289,'http://www.driver.com'),(13289,'http://www.driver.com');
/*!40000 ALTER TABLE `auditrecord_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `fatherCategory_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_8dbpkngc2chtdg1xbd67fu6s0` (`fatherCategory_id`),
  CONSTRAINT `FK_8dbpkngc2chtdg1xbd67fu6s0` FOREIGN KEY (`fatherCategory_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (13304,1,'Lake',13310),(13305,1,'Savana',13311),(13306,1,'River',13312),(13307,1,'River',13310),(13308,1,'Mountain',13312),(13309,1,'Mountain',13311),(13310,1,'Water',13313),(13311,1,'Ground',13313),(13312,1,'Climbing',13314),(13313,1,'Safari',13314),(13314,0,'CATEGORY',NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_trip`
--

DROP TABLE IF EXISTS `category_trip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_trip` (
  `Category_id` int(11) NOT NULL,
  `trips_id` int(11) NOT NULL,
  KEY `FK_jpmhd61n1frm86vucckf760uh` (`trips_id`),
  KEY `FK_mvh6bvklcktdyn2rpho7d0cp0` (`Category_id`),
  CONSTRAINT `FK_mvh6bvklcktdyn2rpho7d0cp0` FOREIGN KEY (`Category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `FK_jpmhd61n1frm86vucckf760uh` FOREIGN KEY (`trips_id`) REFERENCES `trip` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_trip`
--

LOCK TABLES `category_trip` WRITE;
/*!40000 ALTER TABLE `category_trip` DISABLE KEYS */;
INSERT INTO `category_trip` VALUES (13304,13362),(13306,13363),(13307,13364),(13309,13366),(13311,13362),(13313,13364),(13313,13362);
/*!40000 ALTER TABLE `category_trip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configurationsystem`
--

DROP TABLE IF EXISTS `configurationsystem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configurationsystem` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `VAT` double NOT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `cacheMaxTime` int(11) NOT NULL,
  `maxNumberFinder` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configurationsystem`
--

LOCK TABLES `configurationsystem` WRITE;
/*!40000 ALTER TABLE `configurationsystem` DISABLE KEYS */;
INSERT INTO `configurationsystem` VALUES (13037,0,0.21,'http://creek-tours.com/wp-content/uploads/Kenya-Tanzania-Family-Safari-banner.jpg',1,10);
/*!40000 ALTER TABLE `configurationsystem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configurationsystem_category`
--

DROP TABLE IF EXISTS `configurationsystem_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configurationsystem_category` (
  `ConfigurationSystem_id` int(11) NOT NULL,
  `defaultCategories_id` int(11) NOT NULL,
  UNIQUE KEY `UK_pmon6y1retrhnobrj15emstb` (`defaultCategories_id`),
  KEY `FK_q1lbwcfv2ac1wq7bqjp1w89av` (`ConfigurationSystem_id`),
  CONSTRAINT `FK_q1lbwcfv2ac1wq7bqjp1w89av` FOREIGN KEY (`ConfigurationSystem_id`) REFERENCES `configurationsystem` (`id`),
  CONSTRAINT `FK_pmon6y1retrhnobrj15emstb` FOREIGN KEY (`defaultCategories_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configurationsystem_category`
--

LOCK TABLES `configurationsystem_category` WRITE;
/*!40000 ALTER TABLE `configurationsystem_category` DISABLE KEYS */;
INSERT INTO `configurationsystem_category` VALUES (13037,13304),(13037,13305),(13037,13306),(13037,13307),(13037,13308),(13037,13309),(13037,13310),(13037,13311),(13037,13312),(13037,13313),(13037,13314);
/*!40000 ALTER TABLE `configurationsystem_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configurationsystem_spamwords`
--

DROP TABLE IF EXISTS `configurationsystem_spamwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configurationsystem_spamwords` (
  `ConfigurationSystem_id` int(11) NOT NULL,
  `spamWords` varchar(255) DEFAULT NULL,
  KEY `FK_ndaj1y1wr90fuqw567bbgckpt` (`ConfigurationSystem_id`),
  CONSTRAINT `FK_ndaj1y1wr90fuqw567bbgckpt` FOREIGN KEY (`ConfigurationSystem_id`) REFERENCES `configurationsystem` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configurationsystem_spamwords`
--

LOCK TABLES `configurationsystem_spamwords` WRITE;
/*!40000 ALTER TABLE `configurationsystem_spamwords` DISABLE KEYS */;
INSERT INTO `configurationsystem_spamwords` VALUES (13037,'viagra'),(13037,'cialis'),(13037,'sex'),(13037,'jes extender');
/*!40000 ALTER TABLE `configurationsystem_spamwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configurationsystem_tag`
--

DROP TABLE IF EXISTS `configurationsystem_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configurationsystem_tag` (
  `ConfigurationSystem_id` int(11) NOT NULL,
  `defaultTags_id` int(11) NOT NULL,
  UNIQUE KEY `UK_q5qv6nnhwa8iv9rd4ew7xdnji` (`defaultTags_id`),
  KEY `FK_t57c5hdi2dbn7txplhgodfmc8` (`ConfigurationSystem_id`),
  CONSTRAINT `FK_t57c5hdi2dbn7txplhgodfmc8` FOREIGN KEY (`ConfigurationSystem_id`) REFERENCES `configurationsystem` (`id`),
  CONSTRAINT `FK_q5qv6nnhwa8iv9rd4ew7xdnji` FOREIGN KEY (`defaultTags_id`) REFERENCES `tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configurationsystem_tag`
--

LOCK TABLES `configurationsystem_tag` WRITE;
/*!40000 ALTER TABLE `configurationsystem_tag` DISABLE KEYS */;
INSERT INTO `configurationsystem_tag` VALUES (13037,13269),(13037,13270),(13037,13271);
/*!40000 ALTER TABLE `configurationsystem_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactemergency`
--

DROP TABLE IF EXISTS `contactemergency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactemergency` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactemergency`
--

LOCK TABLES `contactemergency` WRITE;
/*!40000 ALTER TABLE `contactemergency` DISABLE KEYS */;
INSERT INTO `contactemergency` VALUES (13294,0,'contact1@gmail.com','contact 1','+55888846'),(13295,0,'contact2@gmail.com','contact 2','+34888846'),(13296,0,'contact3@gmail.com','contact 3','+36855846'),(13297,0,'contact4@gmail.com','contact 4','+368857446'),(13298,0,'contact5@gmail.com','contact 5','6657446');
/*!40000 ALTER TABLE `contactemergency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curricula`
--

DROP TABLE IF EXISTS `curricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curricula` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `ticker` varchar(255) DEFAULT NULL,
  `personalRecord_id` int(11) DEFAULT NULL,
  `ranger_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_s045e798atoy3bgoup12l3fiy` (`ranger_id`),
  UNIQUE KEY `UK_k2avf7gsne221guoys68kviqr` (`ticker`),
  KEY `FK_sb69tfhsf51vub0mq9n3kyeuy` (`personalRecord_id`),
  CONSTRAINT `FK_s045e798atoy3bgoup12l3fiy` FOREIGN KEY (`ranger_id`) REFERENCES `ranger` (`id`),
  CONSTRAINT `FK_sb69tfhsf51vub0mq9n3kyeuy` FOREIGN KEY (`personalRecord_id`) REFERENCES `personalrecord` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curricula`
--

LOCK TABLES `curricula` WRITE;
/*!40000 ALTER TABLE `curricula` DISABLE KEYS */;
INSERT INTO `curricula` VALUES (13391,0,'171023-ABCD',13326,13274),(13392,0,'171023-ABCE',13327,13275),(13393,0,'171023-ABCF',13328,13276),(13394,0,'171023-ABCG',13329,13277);
/*!40000 ALTER TABLE `curricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curricula_educationrecord`
--

DROP TABLE IF EXISTS `curricula_educationrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curricula_educationrecord` (
  `Curricula_id` int(11) NOT NULL,
  `educationRecords_id` int(11) NOT NULL,
  UNIQUE KEY `UK_7svxs7dgerojiaytqcpwbgaq0` (`educationRecords_id`),
  KEY `FK_t1wke0qhch7ranmaupik2aldb` (`Curricula_id`),
  CONSTRAINT `FK_t1wke0qhch7ranmaupik2aldb` FOREIGN KEY (`Curricula_id`) REFERENCES `curricula` (`id`),
  CONSTRAINT `FK_7svxs7dgerojiaytqcpwbgaq0` FOREIGN KEY (`educationRecords_id`) REFERENCES `educationrecord` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curricula_educationrecord`
--

LOCK TABLES `curricula_educationrecord` WRITE;
/*!40000 ALTER TABLE `curricula_educationrecord` DISABLE KEYS */;
INSERT INTO `curricula_educationrecord` VALUES (13391,13331),(13392,13332),(13393,13333),(13394,13334);
/*!40000 ALTER TABLE `curricula_educationrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curricula_endorserrecord`
--

DROP TABLE IF EXISTS `curricula_endorserrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curricula_endorserrecord` (
  `Curricula_id` int(11) NOT NULL,
  `endorserRecords_id` int(11) NOT NULL,
  UNIQUE KEY `UK_exe5kb3j7mnedts3ea6jvcsp7` (`endorserRecords_id`),
  KEY `FK_9t3mmgy847vqc8upl8mv706mt` (`Curricula_id`),
  CONSTRAINT `FK_9t3mmgy847vqc8upl8mv706mt` FOREIGN KEY (`Curricula_id`) REFERENCES `curricula` (`id`),
  CONSTRAINT `FK_exe5kb3j7mnedts3ea6jvcsp7` FOREIGN KEY (`endorserRecords_id`) REFERENCES `endorserrecord` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curricula_endorserrecord`
--

LOCK TABLES `curricula_endorserrecord` WRITE;
/*!40000 ALTER TABLE `curricula_endorserrecord` DISABLE KEYS */;
INSERT INTO `curricula_endorserrecord` VALUES (13391,13341),(13392,13342),(13393,13343),(13394,13344);
/*!40000 ALTER TABLE `curricula_endorserrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curricula_miscellaneousrecord`
--

DROP TABLE IF EXISTS `curricula_miscellaneousrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curricula_miscellaneousrecord` (
  `Curricula_id` int(11) NOT NULL,
  `miscellaneousRecords_id` int(11) NOT NULL,
  UNIQUE KEY `UK_ae8caphsf8j19u8cf6q0l5axy` (`miscellaneousRecords_id`),
  KEY `FK_ivld1qhgtgfa4ij8v1a5xh4jf` (`Curricula_id`),
  CONSTRAINT `FK_ivld1qhgtgfa4ij8v1a5xh4jf` FOREIGN KEY (`Curricula_id`) REFERENCES `curricula` (`id`),
  CONSTRAINT `FK_ae8caphsf8j19u8cf6q0l5axy` FOREIGN KEY (`miscellaneousRecords_id`) REFERENCES `miscellaneousrecord` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curricula_miscellaneousrecord`
--

LOCK TABLES `curricula_miscellaneousrecord` WRITE;
/*!40000 ALTER TABLE `curricula_miscellaneousrecord` DISABLE KEYS */;
INSERT INTO `curricula_miscellaneousrecord` VALUES (13391,13346),(13392,13347),(13393,13348);
/*!40000 ALTER TABLE `curricula_miscellaneousrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curricula_professionalrecord`
--

DROP TABLE IF EXISTS `curricula_professionalrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curricula_professionalrecord` (
  `Curricula_id` int(11) NOT NULL,
  `professionalRecords_id` int(11) NOT NULL,
  UNIQUE KEY `UK_ec8xu2gjxln8ooeqm0ucekv3g` (`professionalRecords_id`),
  KEY `FK_8i0ncl6lxqwuk1bwkbtwakvja` (`Curricula_id`),
  CONSTRAINT `FK_8i0ncl6lxqwuk1bwkbtwakvja` FOREIGN KEY (`Curricula_id`) REFERENCES `curricula` (`id`),
  CONSTRAINT `FK_ec8xu2gjxln8ooeqm0ucekv3g` FOREIGN KEY (`professionalRecords_id`) REFERENCES `professionalrecord` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curricula_professionalrecord`
--

LOCK TABLES `curricula_professionalrecord` WRITE;
/*!40000 ALTER TABLE `curricula_professionalrecord` DISABLE KEYS */;
INSERT INTO `curricula_professionalrecord` VALUES (13391,13336),(13392,13337),(13393,13338),(13394,13339);
/*!40000 ALTER TABLE `curricula_professionalrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `educationrecord`
--

DROP TABLE IF EXISTS `educationrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `educationrecord` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `diplomaTitle` varchar(255) DEFAULT NULL,
  `institution` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `studyingPeriod` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educationrecord`
--

LOCK TABLES `educationrecord` WRITE;
/*!40000 ALTER TABLE `educationrecord` DISABLE KEYS */;
INSERT INTO `educationrecord` VALUES (13331,0,'educationRecord 1','institution 1','https://www.example.com','2017/2018'),(13332,0,'educationRecord 2','institution 2','https://www.example.com','2014/2017'),(13333,0,'educationRecord 3','institution 3','https://www.example.com','2015/2017'),(13334,0,'educationRecord 4','institution 4','https://www.example.com','2014/2015'),(13335,0,'educationRecord 5','institution 5','https://www.example.com','2012/2015');
/*!40000 ALTER TABLE `educationrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `educationrecord_comments`
--

DROP TABLE IF EXISTS `educationrecord_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `educationrecord_comments` (
  `EducationRecord_id` int(11) NOT NULL,
  `comments` varchar(255) DEFAULT NULL,
  KEY `FK_8upnn1ut4e4lbxwiapc4rvi51` (`EducationRecord_id`),
  CONSTRAINT `FK_8upnn1ut4e4lbxwiapc4rvi51` FOREIGN KEY (`EducationRecord_id`) REFERENCES `educationrecord` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educationrecord_comments`
--

LOCK TABLES `educationrecord_comments` WRITE;
/*!40000 ALTER TABLE `educationrecord_comments` DISABLE KEYS */;
INSERT INTO `educationrecord_comments` VALUES (13332,'hola1'),(13332,'hola2'),(13332,'hola3'),(13333,'hola1'),(13334,'hola1'),(13334,'hola3');
/*!40000 ALTER TABLE `educationrecord_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endorserrecord`
--

DROP TABLE IF EXISTS `endorserrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endorserrecord` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `linkedProfile` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endorserrecord`
--

LOCK TABLES `endorserrecord` WRITE;
/*!40000 ALTER TABLE `endorserrecord` DISABLE KEYS */;
INSERT INTO `endorserrecord` VALUES (13341,0,'endorserRecord1@gmail.com','endorserRecord 1','https://endorsserRecord.com','+45(674)1234'),(13342,0,'endorserRecord2@gmail.com','endorserRecord 2','https://endorsserRecord.com','+40(674)1234'),(13343,0,'endorserRecord3@gmail.com','endorserRecord 3','https://endorsserRecord.com','+45(604)1634'),(13344,0,'endorserRecord4@gmail.com','endorserRecord 4','https://endorsserRecord.com','+34(674)1454'),(13345,0,'endorserRecord5@gmail.com','endorserRecord 5','https://endorsserRecord.com','+05(600)1234');
/*!40000 ALTER TABLE `endorserrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endorserrecord_comments`
--

DROP TABLE IF EXISTS `endorserrecord_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endorserrecord_comments` (
  `EndorserRecord_id` int(11) NOT NULL,
  `comments` varchar(255) DEFAULT NULL,
  KEY `FK_b0fje2axm5kdjeio92yd935mi` (`EndorserRecord_id`),
  CONSTRAINT `FK_b0fje2axm5kdjeio92yd935mi` FOREIGN KEY (`EndorserRecord_id`) REFERENCES `endorserrecord` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endorserrecord_comments`
--

LOCK TABLES `endorserrecord_comments` WRITE;
/*!40000 ALTER TABLE `endorserrecord_comments` DISABLE KEYS */;
INSERT INTO `endorserrecord_comments` VALUES (13341,'hola4'),(13341,'hola5'),(13342,'hola1'),(13342,'hola2'),(13342,'hola3'),(13342,'hola4'),(13342,'hola5'),(13343,'hola1'),(13343,'hola2'),(13343,'hola3'),(13343,'hola4'),(13343,'hola5'),(13344,'hola1'),(13344,'hola2');
/*!40000 ALTER TABLE `endorserrecord_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `explorer`
--

DROP TABLE IF EXISTS `explorer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `explorer` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `suspicious` bit(1) NOT NULL,
  `userAccount_id` int(11) NOT NULL,
  `finder_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_fjs8q8hlbsegiuxw4r2ko6uv6` (`userAccount_id`),
  KEY `FK_gmhjk9b98bjgtxkh0gmck9ly8` (`finder_id`),
  CONSTRAINT `FK_fjs8q8hlbsegiuxw4r2ko6uv6` FOREIGN KEY (`userAccount_id`) REFERENCES `useraccount` (`id`),
  CONSTRAINT `FK_gmhjk9b98bjgtxkh0gmck9ly8` FOREIGN KEY (`finder_id`) REFERENCES `finder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `explorer`
--

LOCK TABLES `explorer` WRITE;
/*!40000 ALTER TABLE `explorer` DISABLE KEYS */;
INSERT INTO `explorer` VALUES (13320,1,'Address explorer 1','explorer1@mail.com','Explorer 1','+313(987)1121','surname Explorer 1','\0',13063,13352),(13321,1,'Address explorer 2','explorer2@mail.com','Explorer 2','+313(987)1131','surname Explorer 2','\0',13064,13353),(13322,1,'Address explorer 3','explorer3@mail.com','Explorer 3','+313(987)1141','surname Explorer 3','\0',13065,13354),(13323,1,'Address explorer 4','explorer4@mail.com','Explorer 4','+313(987)1131','surname Explorer 4','\0',13066,13355),(13324,1,'Address explorer 5','explorer5@mail.com','Explorer 5','+313(987)1131','surname Explorer 5','\0',13067,13356),(13325,1,'Address explorer 6','explorer6@mail.com','Explorer 6','+313(987)1131','surname Explorer 6','\0',13068,13357);
/*!40000 ALTER TABLE `explorer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `explorer_contactemergency`
--

DROP TABLE IF EXISTS `explorer_contactemergency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `explorer_contactemergency` (
  `Explorer_id` int(11) NOT NULL,
  `contactsEmergency_id` int(11) NOT NULL,
  KEY `FK_snjdqww8qtb98wuqwl09evr4e` (`contactsEmergency_id`),
  KEY `FK_5g88gq101v31gy45c492yy3gp` (`Explorer_id`),
  CONSTRAINT `FK_5g88gq101v31gy45c492yy3gp` FOREIGN KEY (`Explorer_id`) REFERENCES `explorer` (`id`),
  CONSTRAINT `FK_snjdqww8qtb98wuqwl09evr4e` FOREIGN KEY (`contactsEmergency_id`) REFERENCES `contactemergency` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `explorer_contactemergency`
--

LOCK TABLES `explorer_contactemergency` WRITE;
/*!40000 ALTER TABLE `explorer_contactemergency` DISABLE KEYS */;
INSERT INTO `explorer_contactemergency` VALUES (13320,13294),(13321,13295),(13322,13294),(13322,13295),(13322,13296),(13324,13298);
/*!40000 ALTER TABLE `explorer_contactemergency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finder`
--

DROP TABLE IF EXISTS `finder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finder` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `finalDate` date DEFAULT NULL,
  `highPrice` double DEFAULT NULL,
  `initialDate` date DEFAULT NULL,
  `keyWord` varchar(255) DEFAULT NULL,
  `lowPrice` double DEFAULT NULL,
  `startCacheTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finder`
--

LOCK TABLES `finder` WRITE;
/*!40000 ALTER TABLE `finder` DISABLE KEYS */;
INSERT INTO `finder` VALUES (13352,0,'2017-10-14',100,'2015-10-14',NULL,0,'2017-10-14 23:59:00'),(13353,1,NULL,NULL,NULL,'',NULL,'2018-01-18 12:50:29'),(13354,0,'2017-10-14',100,'2015-10-14',NULL,0,'2017-10-14 23:59:00'),(13355,0,'2017-10-14',100,'2015-10-14',NULL,0,'2017-10-14 23:59:00'),(13356,0,'2017-10-14',100,'2015-10-14',NULL,0,'2017-10-14 23:59:00'),(13357,0,'2017-10-14',100,'2015-10-14',NULL,0,'2017-10-14 23:59:00');
/*!40000 ALTER TABLE `finder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finder_trip`
--

DROP TABLE IF EXISTS `finder_trip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finder_trip` (
  `Finder_id` int(11) NOT NULL,
  `trips_id` int(11) NOT NULL,
  KEY `FK_banf3cvq0wb1mhnq645alwstq` (`trips_id`),
  KEY `FK_5c35eq4ikvgxcjfyq4g1l0g3e` (`Finder_id`),
  CONSTRAINT `FK_5c35eq4ikvgxcjfyq4g1l0g3e` FOREIGN KEY (`Finder_id`) REFERENCES `finder` (`id`),
  CONSTRAINT `FK_banf3cvq0wb1mhnq645alwstq` FOREIGN KEY (`trips_id`) REFERENCES `trip` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finder_trip`
--

LOCK TABLES `finder_trip` WRITE;
/*!40000 ALTER TABLE `finder_trip` DISABLE KEYS */;
INSERT INTO `finder_trip` VALUES (13353,13362),(13353,13363),(13353,13364),(13353,13365),(13353,13366);
/*!40000 ALTER TABLE `finder_trip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequences`
--

DROP TABLE IF EXISTS `hibernate_sequences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequences` (
  `sequence_name` varchar(255) DEFAULT NULL,
  `sequence_next_hi_value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequences`
--

LOCK TABLES `hibernate_sequences` WRITE;
/*!40000 ALTER TABLE `hibernate_sequences` DISABLE KEYS */;
INSERT INTO `hibernate_sequences` VALUES ('DomainEntity',3);
/*!40000 ALTER TABLE `hibernate_sequences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `legaltext`
--

DROP TABLE IF EXISTS `legaltext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `legaltext` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `body` varchar(255) DEFAULT NULL,
  `draftMode` bit(1) NOT NULL,
  `lawsNumber` int(11) NOT NULL,
  `moment` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `legaltext`
--

LOCK TABLES `legaltext` WRITE;
/*!40000 ALTER TABLE `legaltext` DISABLE KEYS */;
INSERT INTO `legaltext` VALUES (13299,0,'body 1','\0',1,'2017-10-29 23:59:00','title 1'),(13300,0,'body 2','\0',1,'2017-11-02 23:59:00','title 2'),(13301,0,'body 3','\0',1,'2017-11-12 23:59:00','title 3'),(13302,0,' LEGAL TEXT   2. Acceptance of these Conditions   The fact that you access this website implies that    you know, understand and accept the Terms of Use in the version existing    at the time of access.','\0',4,'2017-11-23 23:59:00','title english'),(13303,0,'AVISO LEGAL   2. Aceptación de estas Condiciones   El hecho de que acceda a este sitio Web implica que conoce, entiende y acepta las Condiciones de    en la versión existente en el momento del acceso.','\0',4,'2017-11-23 23:59:00','title español');
/*!40000 ALTER TABLE `legaltext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `legaltext_trip`
--

DROP TABLE IF EXISTS `legaltext_trip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `legaltext_trip` (
  `LegalText_id` int(11) NOT NULL,
  `trips_id` int(11) NOT NULL,
  UNIQUE KEY `UK_nhe46krpx0p82b2bfg4rfivtl` (`trips_id`),
  KEY `FK_euperohyjlo853196aj98q7k0` (`LegalText_id`),
  CONSTRAINT `FK_euperohyjlo853196aj98q7k0` FOREIGN KEY (`LegalText_id`) REFERENCES `legaltext` (`id`),
  CONSTRAINT `FK_nhe46krpx0p82b2bfg4rfivtl` FOREIGN KEY (`trips_id`) REFERENCES `trip` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `legaltext_trip`
--

LOCK TABLES `legaltext_trip` WRITE;
/*!40000 ALTER TABLE `legaltext_trip` DISABLE KEYS */;
INSERT INTO `legaltext_trip` VALUES (13299,13362),(13300,13363),(13301,13364),(13302,13365),(13303,13366);
/*!40000 ALTER TABLE `legaltext_trip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manager` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `suspicious` bit(1) NOT NULL,
  `userAccount_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_84bmmxlq61tiaoc7dy7kdcghh` (`userAccount_id`),
  CONSTRAINT `FK_84bmmxlq61tiaoc7dy7kdcghh` FOREIGN KEY (`userAccount_id`) REFERENCES `useraccount` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES (13315,0,'Address Manager 1','manager1@mail.com','Manager 1','+313(987)1111','surname Manager 1','\0',13043),(13316,0,'Address Manager 2','manager2@mail.com','Manager 2','+313(987)1112','surname Manager 2','\0',13044),(13317,0,'Address Manager 3','manager3@mail.com','Manager 3','+313(987)1113','surname Manager 3','\0',13045),(13318,0,'Address Manager 4','manager4@mail.com','Manager 4','+313(987)1114','surname Manager 4','\0',13046),(13319,0,'Address Manager 5','manager5@mail.com','Manager 5','+313(987)1115','surname Manager 5','\0',13047);
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `body` varchar(255) DEFAULT NULL,
  `moment` datetime DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `messageFolder_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_iq38mox9qghnx2rc8hpdtmros` (`messageFolder_id`),
  CONSTRAINT `FK_iq38mox9qghnx2rc8hpdtmros` FOREIGN KEY (`messageFolder_id`) REFERENCES `messagefolder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (13358,0,'body 1','2017-10-01 15:20:00','HIGH','subject 1',13074,13260,13259),(13359,0,'body 1','2017-10-01 15:20:00','HIGH','subject 1',13070,13260,13259),(13360,0,'body 2','2017-10-01 15:25:00','HIGH','subject 2',13179,13280,13279),(13361,0,'body 2','2017-10-01 15:25:00','HIGH','subject 2',13175,13280,13279),(32770,0,'The status for application for 0 is change to pending status','2018-01-18 12:58:45','HIGH','Status changed',13146,13320,13259),(32771,0,'The status for application for 0 is change to pending status','2018-01-18 12:58:45','HIGH','Status changed',13126,13316,13259),(65536,0,'The status for application for 32769 is change to rejected status','2018-01-18 13:22:34','HIGH','Status changed',13146,13320,13259),(65537,0,'The status for application for 32769 is change to rejected status','2018-01-18 13:22:34','HIGH','Status changed',13126,13316,13259),(65544,0,'The status for application for 32769 is change to pending status','2018-01-19 11:28:55','HIGH','Status changed',13146,13320,13259),(65545,0,'The status for application for 32769 is change to pending status','2018-01-19 11:28:55','HIGH','Status changed',13126,13316,13259),(65546,0,'The status for application for 32769 is change to due status','2018-01-19 11:29:04','HIGH','Status changed',13146,13320,13259),(65547,0,'The status for application for 32769 is change to due status','2018-01-19 11:29:04','HIGH','Status changed',13126,13316,13259);
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messagefolder`
--

DROP TABLE IF EXISTS `messagefolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messagefolder` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `modifiable` bit(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messagefolder`
--

LOCK TABLES `messagefolder` WRITE;
/*!40000 ALTER TABLE `messagefolder` DISABLE KEYS */;
INSERT INTO `messagefolder` VALUES (13069,0,'\0','In box'),(13070,0,'\0','Out box'),(13071,0,'\0','Notification box'),(13072,0,'\0','Trash box'),(13073,0,'\0','Spam box'),(13074,0,'\0','In box'),(13075,0,'\0','Out box'),(13076,0,'\0','Notification box'),(13077,0,'\0','Trash box'),(13078,0,'\0','Spam box'),(13079,0,'\0','In box'),(13080,0,'\0','Out box'),(13081,0,'\0','Notification box'),(13082,0,'\0','Trash box'),(13083,0,'\0','Spam box'),(13084,0,'\0','In box'),(13085,0,'\0','Out box'),(13086,0,'\0','Notification box'),(13087,0,'\0','Trash box'),(13088,0,'\0','Spam box'),(13089,0,'\0','In box'),(13090,0,'\0','Out box'),(13091,0,'\0','Notification box'),(13092,0,'\0','Trash box'),(13093,0,'\0','Spam box'),(13094,0,'\0','In box'),(13095,0,'\0','Out box'),(13096,0,'\0','Notification box'),(13097,0,'\0','Trash box'),(13098,0,'\0','Spam box'),(13099,0,'\0','In box'),(13100,0,'\0','Out box'),(13101,0,'\0','Notification box'),(13102,0,'\0','Trash box'),(13103,0,'\0','Spam box'),(13104,0,'\0','In box'),(13105,0,'\0','Out box'),(13106,0,'\0','Notification box'),(13107,0,'\0','Trash box'),(13108,0,'\0','Spam box'),(13109,0,'\0','In box'),(13110,0,'\0','Out box'),(13111,0,'\0','Notification box'),(13112,0,'\0','Trash box'),(13113,0,'\0','Spam box'),(13114,0,'\0','In box'),(13115,0,'\0','Out box'),(13116,0,'\0','Notification box'),(13117,0,'\0','Trash box'),(13118,0,'\0','Spam box'),(13119,0,'\0','In box'),(13120,0,'\0','Out box'),(13121,0,'\0','Notification box'),(13122,0,'\0','Trash box'),(13123,0,'\0','Spam box'),(13124,0,'\0','In box'),(13125,0,'\0','Out box'),(13126,0,'\0','Notification box'),(13127,0,'\0','Trash box'),(13128,0,'\0','Spam box'),(13129,0,'\0','In box'),(13130,0,'\0','Out box'),(13131,0,'\0','Notification box'),(13132,0,'\0','Trash box'),(13133,0,'\0','Spam box'),(13134,0,'\0','In box'),(13135,0,'\0','Out box'),(13136,0,'\0','Notification box'),(13137,0,'\0','Trash box'),(13138,0,'\0','Spam box'),(13139,0,'\0','In box'),(13140,0,'\0','Out box'),(13141,0,'\0','Notification box'),(13142,0,'\0','Trash box'),(13143,0,'\0','Spam box'),(13144,0,'\0','In box'),(13145,0,'\0','Out box'),(13146,0,'\0','Notification box'),(13147,0,'\0','Trash box'),(13148,0,'\0','Spam box'),(13149,0,'\0','In box'),(13150,0,'\0','Out box'),(13151,0,'\0','Notification box'),(13152,0,'\0','Trash box'),(13153,0,'\0','Spam box'),(13154,0,'\0','In box'),(13155,0,'\0','Out box'),(13156,0,'\0','Notification box'),(13157,0,'\0','Trash box'),(13158,0,'\0','Spam box'),(13159,0,'\0','In box'),(13160,0,'\0','Out box'),(13161,0,'\0','Notification box'),(13162,0,'\0','Trash box'),(13163,0,'\0','Spam box'),(13164,0,'\0','In box'),(13165,0,'\0','Out box'),(13166,0,'\0','Notification box'),(13167,0,'\0','Trash box'),(13168,0,'\0','Spam box'),(13169,0,'\0','In box'),(13170,0,'\0','Out box'),(13171,0,'\0','Notification box'),(13172,0,'\0','Trash box'),(13173,0,'\0','Spam box'),(13174,0,'\0','In box'),(13175,0,'\0','Out box'),(13176,0,'\0','Notification box'),(13177,0,'\0','Trash box'),(13178,0,'\0','Spam box'),(13179,0,'\0','In box'),(13180,0,'\0','Out box'),(13181,0,'\0','Notification box'),(13182,0,'\0','Trash box'),(13183,0,'\0','Spam box'),(13184,0,'\0','In box'),(13185,0,'\0','Out box'),(13186,0,'\0','Notification box'),(13187,0,'\0','Trash box'),(13188,0,'\0','Spam box'),(13189,0,'\0','In box'),(13190,0,'\0','Out box'),(13191,0,'\0','Notification box'),(13192,0,'\0','Trash box'),(13193,0,'\0','Spam box'),(13194,0,'\0','In box'),(13195,0,'\0','Out box'),(13196,0,'\0','Notification box'),(13197,0,'\0','Trash box'),(13198,0,'\0','Spam box'),(13199,0,'\0','In box'),(13200,0,'\0','Out box'),(13201,0,'\0','Notification box'),(13202,0,'\0','Trash box'),(13203,0,'\0','Spam box'),(13204,0,'\0','In box'),(13205,0,'\0','Out box'),(13206,0,'\0','Notification box'),(13207,0,'\0','Trash box'),(13208,0,'\0','Spam box'),(13209,0,'\0','In box'),(13210,0,'\0','Out box'),(13211,0,'\0','Notification box'),(13212,0,'\0','Trash box'),(13213,0,'\0','Spam box'),(13214,0,'\0','In box'),(13215,0,'\0','Out box'),(13216,0,'\0','Notification box'),(13217,0,'\0','Trash box'),(13218,0,'\0','Spam box'),(13219,0,'\0','In box'),(13220,0,'\0','Out box'),(13221,0,'\0','Notification box'),(13222,0,'\0','Trash box'),(13223,0,'\0','Spam box'),(13224,0,'','folder 1'),(13225,0,'','folder 2'),(13226,0,'','folder 3'),(13227,0,'','folder 4'),(13228,0,'','folder 4'),(65539,0,'\0','In box'),(65540,0,'\0','Out box'),(65541,0,'\0','Notification box'),(65542,0,'\0','Trash box'),(65543,0,'\0','Spam box');
/*!40000 ALTER TABLE `messagefolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `miscellaneousrecord`
--

DROP TABLE IF EXISTS `miscellaneousrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `miscellaneousrecord` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `miscellaneousrecord`
--

LOCK TABLES `miscellaneousrecord` WRITE;
/*!40000 ALTER TABLE `miscellaneousrecord` DISABLE KEYS */;
INSERT INTO `miscellaneousrecord` VALUES (13346,0,'https://miscellaneousRecord.com','miscellaneousRecord 1'),(13347,0,'https://miscellaneousRecord.com','miscellaneousRecord 2'),(13348,0,'https://miscellaneousRecord.com','miscellaneousRecord 3'),(13349,0,'https://miscellaneousRecord.com','miscellaneousRecord 4'),(13350,0,'https://miscellaneousRecord.com','miscellaneousRecord 5');
/*!40000 ALTER TABLE `miscellaneousrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `miscellaneousrecord_comments`
--

DROP TABLE IF EXISTS `miscellaneousrecord_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `miscellaneousrecord_comments` (
  `MiscellaneousRecord_id` int(11) NOT NULL,
  `comments` varchar(255) DEFAULT NULL,
  KEY `FK_ajnajfg26mdd0ujsxrq56vyvf` (`MiscellaneousRecord_id`),
  CONSTRAINT `FK_ajnajfg26mdd0ujsxrq56vyvf` FOREIGN KEY (`MiscellaneousRecord_id`) REFERENCES `miscellaneousrecord` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `miscellaneousrecord_comments`
--

LOCK TABLES `miscellaneousrecord_comments` WRITE;
/*!40000 ALTER TABLE `miscellaneousrecord_comments` DISABLE KEYS */;
INSERT INTO `miscellaneousrecord_comments` VALUES (13347,'hola1'),(13347,'hola2'),(13347,'hola3'),(13347,'hola4'),(13347,'hola5'),(13350,'hola1'),(13350,'hola2'),(13350,'hola3'),(13350,'hola4');
/*!40000 ALTER TABLE `miscellaneousrecord_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `note`
--

DROP TABLE IF EXISTS `note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `note` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `body` varchar(255) DEFAULT NULL,
  `createdMoment` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `reply` varchar(255) DEFAULT NULL,
  `replyMoment` datetime DEFAULT NULL,
  `auditor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_c3f5vlsshwqtjo5f74rfs8gm4` (`auditor_id`),
  CONSTRAINT `FK_c3f5vlsshwqtjo5f74rfs8gm4` FOREIGN KEY (`auditor_id`) REFERENCES `auditor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note`
--

LOCK TABLES `note` WRITE;
/*!40000 ALTER TABLE `note` DISABLE KEYS */;
INSERT INTO `note` VALUES (13284,0,'Description note 1 viagra','2017-10-01 15:25:00','remark1','reply note 1','2017-10-02 15:25:00',13279),(13285,0,'Description note 2','2017-10-01 15:25:00','remark2','reply note 2','2017-10-02 15:25:00',13279),(13286,0,'Description note 3','2017-10-01 15:25:00','remark3','reply note 3','2017-10-02 15:25:00',13280),(13287,0,'Description note 4','2017-10-01 15:25:00','remark4','Description note 4','2017-10-02 15:25:00',13280),(13288,0,'Description note 5','2017-10-01 15:25:00','remark5','Description note 4','2017-10-02 15:25:00',13281);
/*!40000 ALTER TABLE `note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personalrecord`
--

DROP TABLE IF EXISTS `personalrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personalrecord` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `linkedProfile` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personalrecord`
--

LOCK TABLES `personalrecord` WRITE;
/*!40000 ALTER TABLE `personalrecord` DISABLE KEYS */;
INSERT INTO `personalrecord` VALUES (13326,0,'personalRecord1@gmail.com','personalRecord 1','https://www.example.com','+34(578)1234','https://www.example.com'),(13327,0,'personalRecord2@gmail.com','personalRecord 2','https://www.example.com','+34(578)1235','https://www.example.com'),(13328,0,'personalRecord3@gmail.com','personalRecord 3','https://www.example.com','+34(578)1236','https://www.example.com'),(13329,0,'personalRecord4@gmail.com','personalRecord 4','https://www.example.com','+34(578)1237','https://www.example.com'),(13330,0,'personalRecord5@gmail.com','personalRecord 5','https://www.example.com','+34(578)1237','https://www.example.com');
/*!40000 ALTER TABLE `personalrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professionalrecord`
--

DROP TABLE IF EXISTS `professionalrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professionalrecord` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `companyName` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `workPeriod` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professionalrecord`
--

LOCK TABLES `professionalrecord` WRITE;
/*!40000 ALTER TABLE `professionalrecord` DISABLE KEYS */;
INSERT INTO `professionalrecord` VALUES (13336,0,'professionalRecord 1','https://www.example.com','rol 1','2014/2017'),(13337,0,'professionalRecord 2','https://www.example.com','rol 2','2014/2015'),(13338,0,'professionalRecord 3','https://www.example.com','rol 3','2015/2017'),(13339,0,'professionalRecord 4','https://www.example.com','rol 4','2012/2015'),(13340,0,'professionalRecord 5','https://www.example.com','rol 5','2010/2017');
/*!40000 ALTER TABLE `professionalrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professionalrecord_comments`
--

DROP TABLE IF EXISTS `professionalrecord_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professionalrecord_comments` (
  `ProfessionalRecord_id` int(11) NOT NULL,
  `comments` varchar(255) DEFAULT NULL,
  KEY `FK_p6ml7gtt96exn742i2gl3b8dj` (`ProfessionalRecord_id`),
  CONSTRAINT `FK_p6ml7gtt96exn742i2gl3b8dj` FOREIGN KEY (`ProfessionalRecord_id`) REFERENCES `professionalrecord` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professionalrecord_comments`
--

LOCK TABLES `professionalrecord_comments` WRITE;
/*!40000 ALTER TABLE `professionalrecord_comments` DISABLE KEYS */;
INSERT INTO `professionalrecord_comments` VALUES (13336,'hola1'),(13336,'hola2'),(13336,'hola3'),(13336,'hola4'),(13336,'hola5'),(13337,'hola1'),(13337,'hola2'),(13337,'hola3'),(13337,'hola4'),(13337,'hola5'),(13338,'hola1'),(13340,'hola1'),(13340,'hola2'),(13340,'hola5');
/*!40000 ALTER TABLE `professionalrecord_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ranger`
--

DROP TABLE IF EXISTS `ranger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ranger` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `suspicious` bit(1) NOT NULL,
  `userAccount_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_axw07q0mobub2mvr0xeh7al5f` (`userAccount_id`),
  CONSTRAINT `FK_axw07q0mobub2mvr0xeh7al5f` FOREIGN KEY (`userAccount_id`) REFERENCES `useraccount` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranger`
--

LOCK TABLES `ranger` WRITE;
/*!40000 ALTER TABLE `ranger` DISABLE KEYS */;
INSERT INTO `ranger` VALUES (13274,0,'C/ avenida del ranger','ranger1@acmeexplorer.com','ranger 1','+34617557203','ranger1 ranger1','\0',13048),(13275,0,'C/ avenida del ranger','ranger2@acmeexplorer.com','ranger 2','+34617557203','ranger2 ranger2','\0',13049),(13276,0,'C/ avenida del ranger','ranger3@acmeexplorer.com','ranger 3','+34617557203','ranger3 ranger3','\0',13050),(13277,0,'C/ avenida del ranger','ranger4@acmeexplorer.com','ranger 4','+34617557203','ranger1 ranger4','\0',13051),(13278,0,'C/ avenida del ranger','ranger5@acmeexplorer.com','ranger 5','+34617557203','ranger5 ranger5','\0',13052);
/*!40000 ALTER TABLE `ranger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialidentity`
--

DROP TABLE IF EXISTS `socialidentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialidentity` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nick` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialidentity`
--

LOCK TABLES `socialidentity` WRITE;
/*!40000 ALTER TABLE `socialidentity` DISABLE KEYS */;
INSERT INTO `socialidentity` VALUES (13229,0,'http://www.sample.com','identityadmin 1','nickadmin1','http://www.sample.com'),(13230,0,'http://www.sample.com','identityadmin 2','nickadmin2','http://www.sample.com'),(13231,0,'http://www.sample.com','identityadmin 3','nickadmin3','http://www.sample.com'),(13232,0,'http://www.sample.com','identityadmin 4','nickadmin4','http://www.sample.com'),(13233,0,'http://www.sample.com','identityadmin 5','nickadmin5','http://www.sample.com'),(13234,0,'http://www.sample.com','identitymanager 1','nickmanager1','http://www.sample.com'),(13235,0,'http://www.sample.com','identitymanager 2','nickmanager2','http://www.sample.com'),(13236,0,'http://www.sample.com','identitymanager 3','nickmanager3','http://www.sample.com'),(13237,0,'http://www.sample.com','identitymanager 4','nickmanager4','http://www.sample.com'),(13238,0,'http://www.sample.com','identitymanager 5','nickmanager5','http://www.sample.com'),(13239,0,'http://www.sample.com','identityranger 1','nickranger1','http://www.sample.com'),(13240,0,'http://www.sample.com','identityranger 2','nickranger2','http://www.sample.com'),(13241,0,'http://www.sample.com','identityranger 3','nickranger3','http://www.sample.com'),(13242,0,'http://www.sample.com','identityranger 4','nickranger4','http://www.sample.com'),(13243,0,'http://www.sample.com','identityranger 5','nickranger5','http://www.sample.com'),(13244,0,'http://www.sample.com','identityexponsor 1','nicksponsor1','http://www.sample.com'),(13245,0,'http://www.sample.com','identitysponsor 2','nicksxponsor2','http://www.sample.com'),(13246,0,'http://www.sample.com','identitySponsor 3','nickSponsor3','http://www.sample.com'),(13247,0,'http://www.sample.com','identitySponsor 4','nickSponsor4','http://www.sample.com'),(13248,0,'http://www.sample.com','identitySponsor 5','nickSponsor5','http://www.sample.com'),(13249,0,'http://www.sample.com','identityexplorer 1','nickexplorer 1','http://www.sample.com'),(13250,0,'http://www.sample.com','identityexplorer 2','nickexplorer 2','http://www.sample.com'),(13251,0,'http://www.sample.com','identityexplorer 3','nickexplorer3','http://www.sample.com'),(13252,0,'http://www.sample.com','identityexplorer 4','nickexplorer 4','http://www.sample.com'),(13253,0,'http://www.sample.com','identityexplorer 5','nickexplorer 5','http://www.sample.com'),(13254,0,'http://www.sample.com','identityauditor 1','nickauditor 1','http://www.sample.com'),(13255,0,'http://www.sample.com','identityauditor 2','nickauditor 2','http://www.sample.com'),(13256,0,'http://www.sample.com','identityauditor 3','nickauditor 3','http://www.sample.com'),(13257,0,'http://www.sample.com','identityauditor 4','nickauditor 4','http://www.sample.com'),(13258,0,'http://www.sample.com','identityauditor 5','nickauditor 5','http://www.sample.com');
/*!40000 ALTER TABLE `socialidentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsor`
--

DROP TABLE IF EXISTS `sponsor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sponsor` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `suspicious` bit(1) NOT NULL,
  `userAccount_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_okfx8h0cn4eidh8ng563vowjc` (`userAccount_id`),
  CONSTRAINT `FK_okfx8h0cn4eidh8ng563vowjc` FOREIGN KEY (`userAccount_id`) REFERENCES `useraccount` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsor`
--

LOCK TABLES `sponsor` WRITE;
/*!40000 ALTER TABLE `sponsor` DISABLE KEYS */;
INSERT INTO `sponsor` VALUES (13264,1,'Sponsor1 address','sponsor1@sponsor.com','Sponsor12','+34662657322','Sponsor1 Surnames','\0',13053),(13265,0,'Sponsor2 address','sponsor2@sponsor.com','Sponsor2','+34662657322','Sponsor2 Surnames','\0',13054),(13266,0,'Sponsor3 address','sponsor3@sponsor.com','Sponsor3','+34662657322','Sponsor3 Surnames','\0',13055),(13267,0,'Sponsor4 address','sponsor4@sponsor.com','Sponsor4','+34662657322','Sponsor4 Surnames','\0',13056),(13268,0,'Sponsor5 address','sponsor5@sponsor.com','Sponsor5','+34662657322','Sponsor5 Surnames','\0',13057);
/*!40000 ALTER TABLE `sponsor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsorship`
--

DROP TABLE IF EXISTS `sponsorship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sponsorship` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `bannerURL` varchar(255) DEFAULT NULL,
  `brandName` varchar(255) DEFAULT NULL,
  `cvv` int(11) NOT NULL,
  `expirationMonth` varchar(255) DEFAULT NULL,
  `expirationYear` varchar(255) DEFAULT NULL,
  `holderName` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `sponsor_id` int(11) NOT NULL,
  `trip_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_e3idyfyffpufog3sjl3c2ulun` (`sponsor_id`),
  KEY `FK_p6ydvo1r10eo68cj18xvbx37q` (`trip_id`),
  CONSTRAINT `FK_p6ydvo1r10eo68cj18xvbx37q` FOREIGN KEY (`trip_id`) REFERENCES `trip` (`id`),
  CONSTRAINT `FK_e3idyfyffpufog3sjl3c2ulun` FOREIGN KEY (`sponsor_id`) REFERENCES `sponsor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsorship`
--

LOCK TABLES `sponsorship` WRITE;
/*!40000 ALTER TABLE `sponsorship` DISABLE KEYS */;
INSERT INTO `sponsorship` VALUES (13367,0,'https://www.webtenerife.com/es/interes/empresas-servicios-turista/empresas-excursiones/publishingimages/empresas-excursiones-organizadas-2-sb.jpg','La caixa',102,'03','20','Jose Angel Dominguez Espinaco','4388576018410707','http://www.link-banner.com',13264,13362),(13368,0,'https://www.bioparcvalencia.es/wp-content/uploads/2015/09/grupo-escolar-sabana-africana-bioparc-valencia.jpg','La caixa',102,'03','20','Jose Angel Dominguez Espinaco','4388576018410707','http://www.link-banner.com',13264,13363),(13369,0,'https://www.france-voyage.com/visuals/pratique/hiking-with-pleasure-21-1_w1000.jpg','La caixa',102,'03','20','Jose Angel Dominguez Espinaco','4388576018410707','http://www.banner.com',13265,13363),(13370,0,'http://www.francetourisme.fr/images/visite_guidee_de_paris/pass_city_tour.jpg','Santander',103,'05','21','Daniel Lozano','4388576018410707','http://www.banner.com',13266,13364),(13371,0,'http://www.portaldeexcursiones.com/fotos-excursiones/50845_amsterdam1.jpg','Santander',103,'05','21','Daniel Lozano','4388576018410707','http://www.example.com',13267,13365),(13372,0,'https://cache-graphicslib.viator.com/graphicslib/thumbs674x446/6331/SITours/excursi-n-de-un-d-a-en-ferry-a-las-bahamas-desde-miami-in-miami-157631.jpg','Santander',103,'05','21','Daniel Lozano','4388576018410707','http://www.example.com',13267,13365),(13373,0,'https://cache-graphicslib.viator.com/graphicslib/thumbs674x446/6331/SITours/excursi-n-de-un-d-a-en-ferry-a-las-bahamas-desde-miami-in-miami-157631.jpg','Santander',103,'05','21','Daniel Lozano','4388576018410707','http://www.example.com',13268,13366),(65538,1,'https://images.rcc.es','abasd',123,'12','19','asdsd','44443332221110000','https://images.racc.es/agencia-viajes--hoteles-768x480.jpg',13264,32768);
/*!40000 ALTER TABLE `sponsorship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stage`
--

DROP TABLE IF EXISTS `stage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stage` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `price` double NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `totalPrice` double NOT NULL,
  `trip_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_g8uuphy1i55oxqtlti7cftxk5` (`trip_id`),
  CONSTRAINT `FK_g8uuphy1i55oxqtlti7cftxk5` FOREIGN KEY (`trip_id`) REFERENCES `trip` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stage`
--

LOCK TABLES `stage` WRITE;
/*!40000 ALTER TABLE `stage` DISABLE KEYS */;
INSERT INTO `stage` VALUES (13395,1,'description 1',1,7,'title 1',8.47,13362),(13396,1,'description 2',2,2,'title 2',2.42,13362),(13397,1,'description 3',3,3,'title 3',3.63,13364),(13398,1,'description 4',4,4,'title 4',4.84,13365),(13399,1,'description 5',5,5,'title 5',6.05,13366),(13400,1,'description 6',5,5,'title 6',6.05,13363);
/*!40000 ALTER TABLE `stage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `story`
--

DROP TABLE IF EXISTS `story`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `story` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `explorer_id` int(11) NOT NULL,
  `trip_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_gfxb1n7yg00bo5w5rg2gphd82` (`explorer_id`),
  KEY `FK_h0duh0rohxwpscrd7e89cnsgv` (`trip_id`),
  CONSTRAINT `FK_h0duh0rohxwpscrd7e89cnsgv` FOREIGN KEY (`trip_id`) REFERENCES `trip` (`id`),
  CONSTRAINT `FK_gfxb1n7yg00bo5w5rg2gphd82` FOREIGN KEY (`explorer_id`) REFERENCES `explorer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `story`
--

LOCK TABLES `story` WRITE;
/*!40000 ALTER TABLE `story` DISABLE KEYS */;
INSERT INTO `story` VALUES (13379,0,'text Story 1','Story 1 sex',13320,13362),(13380,0,'text Story 2','Story 2',13321,13363),(13381,0,'text Story 3','Story 3',13322,13364),(13382,0,'text Story 4','Story 4',13323,13365),(13383,0,'text Story 5','Story 5',13324,13366);
/*!40000 ALTER TABLE `story` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `story_attachments`
--

DROP TABLE IF EXISTS `story_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `story_attachments` (
  `Story_id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  KEY `FK_ff4kbl6pm6bat35eamsxb9n51` (`Story_id`),
  CONSTRAINT `FK_ff4kbl6pm6bat35eamsxb9n51` FOREIGN KEY (`Story_id`) REFERENCES `story` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `story_attachments`
--

LOCK TABLES `story_attachments` WRITE;
/*!40000 ALTER TABLE `story_attachments` DISABLE KEYS */;
INSERT INTO `story_attachments` VALUES (13379,'http://www.story1.com'),(13380,'http://www.story2.com'),(13381,'http://www.story3.com'),(13382,'http://www.story4.com'),(13383,'http://www.story5.com');
/*!40000 ALTER TABLE `story_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survivalclass`
--

DROP TABLE IF EXISTS `survivalclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survivalclass` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `organisedMoment` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `manager_id` int(11) NOT NULL,
  `trip_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_12c914ckjj0bpwg7xdgpwxael` (`manager_id`),
  KEY `FK_kgmsndege9b3pa1f2gce9hb40` (`trip_id`),
  CONSTRAINT `FK_kgmsndege9b3pa1f2gce9hb40` FOREIGN KEY (`trip_id`) REFERENCES `trip` (`id`),
  CONSTRAINT `FK_12c914ckjj0bpwg7xdgpwxael` FOREIGN KEY (`manager_id`) REFERENCES `manager` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survivalclass`
--

LOCK TABLES `survivalclass` WRITE;
/*!40000 ALTER TABLE `survivalclass` DISABLE KEYS */;
INSERT INTO `survivalclass` VALUES (13374,0,'description survivalClass 1',37.35,-5.98,'Reina mercedes','2017-10-22 10:10:00','survivalClass 1',13315,13362),(13375,0,'description survivalClass 2',37.28,-5.49,'Paradas','2017-10-21 10:10:00','survivalClass 2',13315,13363),(13376,0,'description survivalClass 3',40.6,5.5,'Mar balear','2017-10-21 10:10:00','survivalClass 3',13316,13364),(13377,0,'description survivalClass 4',41.34,2.09,'Barcelona','2017-10-21 08:10:00','survivalClass 4',13318,13365),(13378,0,'description survivalClass 5',43.65,7.08,'Monaco','2017-10-21 09:10:00','survivalClass 5',13319,13366);
/*!40000 ALTER TABLE `survivalclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survivalclass_explorer`
--

DROP TABLE IF EXISTS `survivalclass_explorer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survivalclass_explorer` (
  `SurvivalClass_id` int(11) NOT NULL,
  `explorers_id` int(11) NOT NULL,
  KEY `FK_7i2xgij2tq2yt7rj87jj5obgx` (`explorers_id`),
  KEY `FK_3sdn7xxvqfm886k6uvcmbnu7q` (`SurvivalClass_id`),
  CONSTRAINT `FK_3sdn7xxvqfm886k6uvcmbnu7q` FOREIGN KEY (`SurvivalClass_id`) REFERENCES `survivalclass` (`id`),
  CONSTRAINT `FK_7i2xgij2tq2yt7rj87jj5obgx` FOREIGN KEY (`explorers_id`) REFERENCES `explorer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survivalclass_explorer`
--

LOCK TABLES `survivalclass_explorer` WRITE;
/*!40000 ALTER TABLE `survivalclass_explorer` DISABLE KEYS */;
INSERT INTO `survivalclass_explorer` VALUES (13374,13320),(13374,13321),(13375,13322),(13375,13323),(13376,13323),(13376,13324),(13377,13323),(13378,13320),(13378,13321),(13378,13322),(13378,13323),(13378,13324);
/*!40000 ALTER TABLE `survivalclass_explorer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (13269,0,'country'),(13270,0,'expertise'),(13271,0,'dangerousness'),(13272,0,'name 4'),(13273,0,'name 5');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trip`
--

DROP TABLE IF EXISTS `trip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trip` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `cancelled` bit(1) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `finishDate` date DEFAULT NULL,
  `price` double NOT NULL,
  `publicationDate` datetime DEFAULT NULL,
  `reasonWhy` varchar(255) DEFAULT NULL,
  `requirementsExplorers` varchar(255) DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `ticker` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `manager_id` int(11) NOT NULL,
  `ranger_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ugq799eb7dgmgmqjoxkjpx5k` (`ticker`),
  KEY `FK_bt26lls0o7ykesy9ye75887rk` (`manager_id`),
  KEY `FK_65bd0l9xa0l1x5qnjg2su9tig` (`ranger_id`),
  CONSTRAINT `FK_65bd0l9xa0l1x5qnjg2su9tig` FOREIGN KEY (`ranger_id`) REFERENCES `ranger` (`id`),
  CONSTRAINT `FK_bt26lls0o7ykesy9ye75887rk` FOREIGN KEY (`manager_id`) REFERENCES `manager` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trip`
--

LOCK TABLES `trip` WRITE;
/*!40000 ALTER TABLE `trip` DISABLE KEYS */;
INSERT INTO `trip` VALUES (13362,1,'\0','description 1','2016-12-30',10.89,'2016-10-14 23:59:00',NULL,'requirementsExplorers 1','2016-11-14','170112-WWWW','title 1',13315,13274),(13363,1,'\0','description 2','2019-08-04',6.05,'2018-10-14 23:59:00',NULL,'requirementsExplorers 2','2018-11-22','160112-AAAA','title 2',13315,13275),(13364,1,'\0','description 3','2018-08-04',3.63,'2018-02-02 22:45:00',NULL,'requirementsExplorers 3','2018-07-11','150112-BBBB','title 3',13316,13276),(13365,1,'','description 4','2015-08-04',4.84,'2015-01-20 22:45:00','reasonWhy 4','requirementsExplorers 4','2015-02-21','150112-CCCC','title 4',13318,13277),(13366,1,'\0','description 5','2019-08-04',6.05,'2019-01-14 23:59:00',NULL,'requirementsExplorers 5','2019-02-21','150112-DDDD','title 5',13319,13278),(32768,1,'\0','sadasd','2019-02-02',0,'2018-01-18 12:57:00','','saver saltar','2019-01-03','180118-WSXK','asdsd',13316,13277);
/*!40000 ALTER TABLE `trip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trip_auditrecord`
--

DROP TABLE IF EXISTS `trip_auditrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trip_auditrecord` (
  `Trip_id` int(11) NOT NULL,
  `auditRecords_id` int(11) NOT NULL,
  UNIQUE KEY `UK_efflo7ugi59rvfihqbpune4w6` (`auditRecords_id`),
  KEY `FK_262yi5vvj9aymluijcg69nr0u` (`Trip_id`),
  CONSTRAINT `FK_262yi5vvj9aymluijcg69nr0u` FOREIGN KEY (`Trip_id`) REFERENCES `trip` (`id`),
  CONSTRAINT `FK_efflo7ugi59rvfihqbpune4w6` FOREIGN KEY (`auditRecords_id`) REFERENCES `auditrecord` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trip_auditrecord`
--

LOCK TABLES `trip_auditrecord` WRITE;
/*!40000 ALTER TABLE `trip_auditrecord` DISABLE KEYS */;
INSERT INTO `trip_auditrecord` VALUES (13362,13289),(13363,13290),(13364,13291),(13364,13292),(13365,13293);
/*!40000 ALTER TABLE `trip_auditrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trip_note`
--

DROP TABLE IF EXISTS `trip_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trip_note` (
  `Trip_id` int(11) NOT NULL,
  `notes_id` int(11) NOT NULL,
  UNIQUE KEY `UK_gspinqmxp23mb1iasuatrgwxb` (`notes_id`),
  KEY `FK_jy1nuxo77tmco0y3jk9ktshn1` (`Trip_id`),
  CONSTRAINT `FK_jy1nuxo77tmco0y3jk9ktshn1` FOREIGN KEY (`Trip_id`) REFERENCES `trip` (`id`),
  CONSTRAINT `FK_gspinqmxp23mb1iasuatrgwxb` FOREIGN KEY (`notes_id`) REFERENCES `note` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trip_note`
--

LOCK TABLES `trip_note` WRITE;
/*!40000 ALTER TABLE `trip_note` DISABLE KEYS */;
INSERT INTO `trip_note` VALUES (13362,13284),(13363,13285),(13365,13286),(13365,13287),(13365,13288);
/*!40000 ALTER TABLE `trip_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trip_stage`
--

DROP TABLE IF EXISTS `trip_stage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trip_stage` (
  `Trip_id` int(11) NOT NULL,
  `stages_id` int(11) NOT NULL,
  UNIQUE KEY `UK_pypsdnr343h93d9c7hpugcyyv` (`stages_id`),
  KEY `FK_stea9evs7jmvh3yf9i17pw6kn` (`Trip_id`),
  CONSTRAINT `FK_stea9evs7jmvh3yf9i17pw6kn` FOREIGN KEY (`Trip_id`) REFERENCES `trip` (`id`),
  CONSTRAINT `FK_pypsdnr343h93d9c7hpugcyyv` FOREIGN KEY (`stages_id`) REFERENCES `stage` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trip_stage`
--

LOCK TABLES `trip_stage` WRITE;
/*!40000 ALTER TABLE `trip_stage` DISABLE KEYS */;
INSERT INTO `trip_stage` VALUES (13362,13395),(13362,13396),(13363,13400),(13364,13397),(13365,13398),(13366,13399);
/*!40000 ALTER TABLE `trip_stage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useraccount`
--

DROP TABLE IF EXISTS `useraccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useraccount` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `activated` bit(1) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_csivo9yqa08nrbkog71ycilh5` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useraccount`
--

LOCK TABLES `useraccount` WRITE;
/*!40000 ALTER TABLE `useraccount` DISABLE KEYS */;
INSERT INTO `useraccount` VALUES (13038,0,'','d5cee333abe432891a0de57d0ee38713','administrator1'),(13039,0,'','82954495ff7e2a735ed2192c35b2cd00','administrator2'),(13040,0,'','0185e578be37caa9c276e0c8903e261a','administrator3'),(13041,0,'','3ce013337481d5af81e21bf6791a574e','administrator4'),(13042,0,'','f2ec5fdcc58bcb002270a11f6bb2a9b3','administrator5'),(13043,0,'','c240642ddef994358c96da82c0361a58','manager1'),(13044,0,'','8df5127cd164b5bc2d2b78410a7eea0c','manager2'),(13045,0,'','2d3a5db4a2a9717b43698520a8de57d0','manager3'),(13046,0,'','e1ec6fc941af3ba79a4ac5242dd39735','manager4'),(13047,0,'','029cb1d27c0b9c551703ccba2591c334','manager5'),(13048,0,'','0724ee360da2267273a1330a2e61232c','ranger1'),(13049,0,'','dc095ac91ed81b91d6415f5cb90a14f5','ranger2'),(13050,0,'','3463481ed1abde8365da6600c3edb985','ranger3'),(13051,0,'','76bbcf2c573db6b0c41e2388ed3ff3c0','ranger4'),(13052,0,'','07fb3d4fb1b4cc4d79e10ae2a14b44e9','ranger5'),(13053,1,'','99825573284aeef43663a7416421f510','sponsor1'),(13054,0,'','3dc67f80a03324e01b1640f45d107485','sponsor2'),(13055,0,'','857a54956061fdc1b88d7722cafe6519','sponsor3'),(13056,0,'','a8be034fe44a453e912feadc414dc803','sponsor4'),(13057,0,'','d6d7f85c15bbb451ef50b704b3693033','sponsor5'),(13058,0,'','175d2e7a63f386554a4dd66e865c3e14','auditor1'),(13059,0,'','04dd94ba3212ac52ad3a1f4cbfb52d4f','auditor2'),(13060,0,'','fc2073dbe4f65dfd71e46602f8e6a5f3','auditor3'),(13061,0,'','6cc8affcba51a854192a33af68c08f49','auditor4'),(13062,0,'','3775bf00262284e83013c9cea5f41431','auditor5'),(13063,0,'','03fc13f308051f4942d35c84592b8d5a','explorer1'),(13064,0,'','5a1b9d1b35a024241cdf419f645f7765','explorer2'),(13065,0,'','1dfcf0b9f4a3ce786b5340e554929eb4','explorer3'),(13066,0,'','a970e7ef3301a37ccfe7aab380fa9d4a','explorer4'),(13067,0,'','d8420d0725247c256c6ed45abf4911d3','explorer5'),(13068,0,'','f1ee5f1a48950b10aeaa40c20a7e2b45','explorer6');
/*!40000 ALTER TABLE `useraccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useraccount_authorities`
--

DROP TABLE IF EXISTS `useraccount_authorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useraccount_authorities` (
  `UserAccount_id` int(11) NOT NULL,
  `authority` varchar(255) DEFAULT NULL,
  KEY `FK_b63ua47r0u1m7ccc9lte2ui4r` (`UserAccount_id`),
  CONSTRAINT `FK_b63ua47r0u1m7ccc9lte2ui4r` FOREIGN KEY (`UserAccount_id`) REFERENCES `useraccount` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useraccount_authorities`
--

LOCK TABLES `useraccount_authorities` WRITE;
/*!40000 ALTER TABLE `useraccount_authorities` DISABLE KEYS */;
INSERT INTO `useraccount_authorities` VALUES (13038,'ADMINISTRATOR'),(13039,'ADMINISTRATOR'),(13040,'ADMINISTRATOR'),(13041,'ADMINISTRATOR'),(13042,'ADMINISTRATOR'),(13043,'MANAGER'),(13044,'MANAGER'),(13045,'MANAGER'),(13046,'MANAGER'),(13047,'MANAGER'),(13048,'RANGER'),(13049,'RANGER'),(13050,'RANGER'),(13051,'RANGER'),(13052,'RANGER'),(13054,'SPONSOR'),(13055,'SPONSOR'),(13056,'SPONSOR'),(13057,'SPONSOR'),(13058,'AUDITOR'),(13059,'AUDITOR'),(13060,'AUDITOR'),(13061,'AUDITOR'),(13062,'AUDITOR'),(13063,'EXPLORER'),(13064,'EXPLORER'),(13065,'EXPLORER'),(13066,'EXPLORER'),(13067,'EXPLORER'),(13068,'EXPLORER'),(13053,'SPONSOR');
/*!40000 ALTER TABLE `useraccount_authorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `value`
--

DROP TABLE IF EXISTS `value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `value` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `value` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `trip_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_gshaqbur2cof541isdpqw7fhs` (`tag_id`),
  KEY `FK_i0yqkpsgylvwk2bp6nky4o4es` (`trip_id`),
  CONSTRAINT `FK_i0yqkpsgylvwk2bp6nky4o4es` FOREIGN KEY (`trip_id`) REFERENCES `trip` (`id`),
  CONSTRAINT `FK_gshaqbur2cof541isdpqw7fhs` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `value`
--

LOCK TABLES `value` WRITE;
/*!40000 ALTER TABLE `value` DISABLE KEYS */;
INSERT INTO `value` VALUES (13351,1,1,13269,13362);
/*!40000 ALTER TABLE `value` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-19 19:22:40
