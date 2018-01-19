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
INSERT INTO `actor_messagefolder` VALUES (13160,12970),(13160,12971),(13160,12972),(13160,12973),(13160,12974),(13161,12975),(13161,12976),(13161,12977),(13161,12978),(13161,12979),(13162,12980),(13162,12981),(13162,12982),(13162,12983),(13162,12984),(13163,12985),(13163,12986),(13163,12987),(13163,12988),(13163,12989),(13164,12990),(13164,12991),(13164,12992),(13164,12993),(13164,12994),(13173,12995),(13173,12996),(13173,12997),(13173,12998),(13173,12999),(13174,13000),(13174,13001),(13174,13002),(13174,13003),(13174,13004),(13175,13005),(13175,13006),(13175,13007),(13175,13008),(13175,13009),(13176,13010),(13176,13011),(13176,13012),(13176,13013),(13176,13014),(13177,13015),(13177,13016),(13177,13017),(13177,13018),(13177,13019),(13214,13020),(13214,13021),(13214,13022),(13214,13023),(13214,13024),(13215,13025),(13215,13026),(13215,13027),(13215,13028),(13215,13029),(13216,13030),(13216,13031),(13216,13032),(13216,13033),(13216,13034),(13217,13035),(13217,13036),(13217,13037),(13217,13038),(13217,13039),(13218,13040),(13218,13041),(13218,13042),(13218,13043),(13218,13044),(13219,13045),(13219,13046),(13219,13047),(13219,13048),(13219,13049),(13220,13050),(13220,13051),(13220,13052),(13220,13053),(13220,13054),(13221,13055),(13221,13056),(13221,13057),(13221,13058),(13221,13059),(13222,13060),(13222,13061),(13222,13062),(13222,13063),(13222,13064),(13223,13065),(13223,13066),(13223,13067),(13223,13068),(13223,13069),(13224,13070),(13224,13071),(13224,13072),(13224,13073),(13224,13074),(13178,13075),(13178,13076),(13178,13077),(13178,13078),(13178,13079),(13179,13080),(13179,13081),(13179,13082),(13179,13083),(13179,13084),(13180,13085),(13180,13086),(13180,13087),(13180,13088),(13180,13089),(13181,13090),(13181,13091),(13181,13092),(13181,13093),(13181,13094),(13182,13095),(13182,13096),(13182,13097),(13182,13098),(13182,13099),(13165,13100),(13165,13101),(13165,13102),(13165,13103),(13165,13104),(13166,13105),(13166,13106),(13166,13107),(13166,13108),(13166,13109),(13167,13110),(13167,13111),(13167,13112),(13167,13113),(13167,13114),(13168,13115),(13168,13116),(13168,13117),(13168,13118),(13168,13119),(13169,13120),(13169,13121),(13169,13122),(13169,13123),(13169,13124);
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
INSERT INTO `actor_socialidentity` VALUES (13161,13131),(13162,13132),(13163,13133),(13164,13134),(13165,13145),(13166,13146),(13167,13147),(13168,13148),(13169,13149);
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
INSERT INTO `administrator` VALUES (13160,0,'Administrator address','Administrator1@administrator.com','Admin','+34662657322','Administrator1 Surnames','\0',12939),(13161,0,'Administrator address','Administrator2@administrator.com','Administrator2','+34662657322','Administrator2 Surnames','\0',12940),(13162,0,'Administrator address','Administrator3@administrator.com','Administrator3','+34662657323','Administrator3 Surnames','\0',12941),(13163,0,'Administrator address','Administrator4@administrator.com','Administrator4','+34662657324','Administrator4 Surnames','\0',12942),(13164,0,'Administrator address','Administrator5@administrator.com','Administrator5','+34662657325','Administrator5 Surnames','\0',12943);
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
INSERT INTO `applicationfor` VALUES (13282,0,'La caixa',102,'03','20','Jose Angel Dominguez Espinaco','4388576018410707','2015-10-21 10:10:00','','ACCEPTED',13219,13214,13260),(13283,0,'Santander',103,'05','21','Daniel Lozano','4388576018410707','2017-12-11 00:10:00','','ACCEPTED',13220,13215,13260),(13284,0,'Santander',655,'06','17','Maria Ruiz','4388576018410707','2017-10-21 01:10:00','','ACCEPTED',13221,13216,13261),(13285,0,'Bankia',876,'04','16','Laura vera','4388576018410707','2017-10-21 02:10:00','','ACCEPTED',13221,13217,13262),(13286,0,'La caixa',724,'05','18','Joaquin rodriguez','4388576018410707','2017-10-21 03:10:00','','CANCELLED',13223,13218,13262),(13287,0,'La caixa',724,'05','18','María rodriguez','4388576018410707','2017-10-21 03:10:00','','PENDING',13224,NULL,13262),(13288,0,'La caixa',724,'05','18','Joaquin rodriguez','4388576018410707','2017-10-27 03:10:00','','ACCEPTED',13223,13214,13264);
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
INSERT INTO `applicationfor_comments` VALUES (13282,'comment1 ApplicaciontFor1'),(13282,'comment2 ApplicaciontFor1'),(13282,'comment3 ApplicaciontFor1'),(13283,'comment1 ApplicaciontFor2'),(13283,'comment2 ApplicaciontFor2'),(13283,'comment3 ApplicaciontFor2'),(13284,'comment1 ApplicaciontFor3'),(13284,'comment2 ApplicaciontFor3'),(13284,'comment3 ApplicaciontFor3'),(13285,'comment1 ApplicaciontFor4'),(13285,'comment2 ApplicaciontFor4'),(13285,'comment3 ApplicaciontFor4'),(13286,'comment1 ApplicaciontFor5'),(13286,'comment2 ApplicaciontFor5'),(13286,'comment3 ApplicaciontFor5'),(13287,'comment1 ApplicaciontFor5'),(13287,'comment2 ApplicaciontFor5'),(13287,'comment3 ApplicaciontFor5');
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
INSERT INTO `auditor` VALUES (13178,0,'C/ avenida del auditor','auditor1@acmeexplorer.com','auditor 1','+34617557203','auditor1 auditor1','\0',12959),(13179,0,'C/ avenida del auditor','auditor2@acmeexplorer.com','auditor 2','+34617557243','auditor2 auditor2','\0',12960),(13180,0,'C/ avenida del auditor','auditor3@acmeexplorer.com','auditor 3','+34617357243','auditor3 auditor3','\0',12961),(13181,0,'C/ avenida del auditor','auditor4@acmeexplorer.com','auditor 4','+34677557243','auditor4 audito45','\0',12962),(13182,0,'C/ avenida del auditor','auditor5@acmeexplorer.com','auditor 5','+34617557243','auditor5 auditor5','\0',12963);
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
INSERT INTO `auditrecord` VALUES (13188,0,'attachments auditrecord 1','','2017-10-01 15:25:00','auditrecord1',13178),(13189,0,'attachments auditrecord 2 ','\0','2017-10-01 15:25:00','auditrecord2',13178),(13190,0,'attachments auditrecord 3','','2017-10-01 15:25:00','auditrecord3',13178),(13191,0,'attachments auditrecord 4 VIAGRA','','2017-10-01 15:25:00','auditrecord4',13179),(13192,0,'attachments auditrecord 5','','2017-10-01 15:25:00','auditrecord5',13180);
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
INSERT INTO `auditrecord_attachments` VALUES (13188,'http://www.driver.com'),(13188,'http://www.driver.com');
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
INSERT INTO `category` VALUES (13203,1,'Lake',13209),(13204,1,'Savana',13210),(13205,1,'River',13211),(13206,1,'River',13209),(13207,1,'Mountain',13211),(13208,1,'Mountain',13210),(13209,1,'Water',13212),(13210,1,'Ground',13212),(13211,1,'Climbing',13213),(13212,1,'Safari',13213),(13213,0,'CATEGORY',NULL);
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
  `defaultPhone` varchar(255) DEFAULT NULL,
  `maxNumberFinder` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configurationsystem`
--

LOCK TABLES `configurationsystem` WRITE;
/*!40000 ALTER TABLE `configurationsystem` DISABLE KEYS */;
INSERT INTO `configurationsystem` VALUES (12938,0,0.21,'http://creek-tours.com/wp-content/uploads/Kenya-Tanzania-Family-Safari-banner.jpg',1,'+34',10);
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
INSERT INTO `configurationsystem_category` VALUES (12938,13203),(12938,13204),(12938,13205),(12938,13206),(12938,13207),(12938,13208),(12938,13209),(12938,13210),(12938,13211),(12938,13212),(12938,13213);
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
INSERT INTO `configurationsystem_spamwords` VALUES (12938,'viagra'),(12938,'cialis'),(12938,'sex'),(12938,'jes extender');
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
INSERT INTO `configurationsystem_tag` VALUES (12938,13170),(12938,13171),(12938,13172);
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
INSERT INTO `contactemergency` VALUES (13193,0,'contact1@gmail.com','contact 1','+55888846'),(13194,0,'contact2@gmail.com','contact 2','+34888846'),(13195,0,'contact3@gmail.com','contact 3','+36855846'),(13196,0,'contact4@gmail.com','contact 4','+368857446'),(13197,0,'contact5@gmail.com','contact 5','6657446');
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
INSERT INTO `curricula` VALUES (13289,0,'171023-ABCD',13225,13173),(13290,0,'171023-ABCE',13226,13174),(13291,0,'171023-ABCF',13227,13175),(13292,0,'171023-ABCG',13228,13176);
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
INSERT INTO `curricula_educationrecord` VALUES (13289,13230),(13290,13231),(13291,13232),(13292,13233);
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
INSERT INTO `curricula_endorserrecord` VALUES (13289,13240),(13290,13241),(13291,13242),(13292,13243);
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
INSERT INTO `curricula_miscellaneousrecord` VALUES (13289,13245),(13290,13246),(13291,13247);
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
INSERT INTO `curricula_professionalrecord` VALUES (13289,13235),(13290,13236),(13291,13237),(13292,13238);
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
INSERT INTO `educationrecord` VALUES (13230,0,'educationRecord 1','institution 1','https://www.example.com','2017/2018'),(13231,0,'educationRecord 2','institution 2','https://www.example.com','2014/2017'),(13232,0,'educationRecord 3','institution 3','https://www.example.com','2015/2017'),(13233,0,'educationRecord 4','institution 4','https://www.example.com','2014/2015'),(13234,0,'educationRecord 5','institution 5','https://www.example.com','2012/2015');
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
INSERT INTO `educationrecord_comments` VALUES (13231,'hola1'),(13231,'hola2'),(13231,'hola3'),(13232,'hola1'),(13233,'hola1'),(13233,'hola3');
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
INSERT INTO `endorserrecord` VALUES (13240,0,'endorserRecord1@gmail.com','endorserRecord 1','https://endorsserRecord.com','+45(674)1234'),(13241,0,'endorserRecord2@gmail.com','endorserRecord 2','https://endorsserRecord.com','+40(674)1234'),(13242,0,'endorserRecord3@gmail.com','endorserRecord 3','https://endorsserRecord.com','+45(604)1634'),(13243,0,'endorserRecord4@gmail.com','endorserRecord 4','https://endorsserRecord.com','+34(674)1454'),(13244,0,'endorserRecord5@gmail.com','endorserRecord 5','https://endorsserRecord.com','+05(600)1234');
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
INSERT INTO `endorserrecord_comments` VALUES (13240,'hola4'),(13240,'hola5'),(13241,'hola1'),(13241,'hola2'),(13241,'hola3'),(13241,'hola4'),(13241,'hola5'),(13242,'hola1'),(13242,'hola2'),(13242,'hola3'),(13242,'hola4'),(13242,'hola5'),(13243,'hola1'),(13243,'hola2');
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
INSERT INTO `explorer` VALUES (13219,1,'Address explorer 1','explorer1@mail.com','Explorer 1','+313(987)1121','surname Explorer 1','\0',12964,13250),(13220,1,'Address explorer 2','explorer2@mail.com','Explorer 2','+313(987)1131','surname Explorer 2','\0',12965,13251),(13221,1,'Address explorer 3','explorer3@mail.com','Explorer 3','+313(987)1141','surname Explorer 3','\0',12966,13252),(13222,1,'Address explorer 4','explorer4@mail.com','Explorer 4','+313(987)1131','surname Explorer 4','\0',12967,13253),(13223,1,'Address explorer 5','explorer5@mail.com','Explorer 5','+313(987)1131','surname Explorer 5','\0',12968,13254),(13224,1,'Address explorer 6','explorer6@mail.com','Explorer 6','+313(987)1131','surname Explorer 6','\0',12969,13255);
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
INSERT INTO `explorer_contactemergency` VALUES (13219,13193),(13220,13194),(13221,13193),(13221,13194),(13221,13195),(13223,13197);
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
INSERT INTO `finder` VALUES (13250,0,'2017-10-14',100,'2015-10-14',NULL,0,'2017-10-14 23:59:00'),(13251,0,'2017-10-14',100,'2015-10-14',NULL,0,'2017-10-14 23:59:00'),(13252,0,'2017-10-14',100,'2015-10-14',NULL,0,'2017-10-14 23:59:00'),(13253,0,'2017-10-14',100,'2015-10-14',NULL,0,'2017-10-14 23:59:00'),(13254,0,'2017-10-14',100,'2015-10-14',NULL,0,'2017-10-14 23:59:00'),(13255,0,'2017-10-14',100,'2015-10-14',NULL,0,'2017-10-14 23:59:00');
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
INSERT INTO `hibernate_sequences` VALUES ('DomainEntity',2);
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
INSERT INTO `legaltext` VALUES (13198,0,'body 1','\0',1,'2017-10-29 23:59:00','title 1'),(13199,0,'body 2','\0',1,'2017-11-02 23:59:00','title 2'),(13200,0,'body 3','\0',1,'2017-11-12 23:59:00','title 3'),(13201,0,' LEGAL TEXT   2. Acceptance of these Conditions   The fact that you access this website implies that    you know, understand and accept the Terms of Use in the version existing    at the time of access.','\0',4,'2017-11-23 23:59:00','title english'),(13202,0,'AVISO LEGAL   2. Aceptación de estas Condiciones   El hecho de que acceda a este sitio Web implica que conoce, entiende y acepta las Condiciones de    en la versión existente en el momento del acceso.','\0',4,'2017-11-23 23:59:00','title español');
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
INSERT INTO `legaltext_trip` VALUES (13198,13260),(13199,13261),(13200,13262);
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
INSERT INTO `manager` VALUES (13214,0,'Address Manager 1','manager1@mail.com','Manager 1','+313(987)1111','surname Manager 1','\0',12944),(13215,0,'Address Manager 2','manager2@mail.com','Manager 2','+313(987)1112','surname Manager 2','\0',12945),(13216,0,'Address Manager 3','manager3@mail.com','Manager 3','+313(987)1113','surname Manager 3','\0',12946),(13217,0,'Address Manager 4','manager4@mail.com','Manager 4','+313(987)1114','surname Manager 4','\0',12947),(13218,0,'Address Manager 5','manager5@mail.com','Manager 5','+313(987)1115','surname Manager 5','\0',12948);
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
INSERT INTO `message` VALUES (13256,0,'body 1','2017-10-01 15:20:00','HIGH','subject 1',12975,13161,13160),(13257,0,'body 1','2017-10-01 15:20:00','HIGH','subject 1',12971,13161,13160),(13258,0,'body 2','2017-10-01 15:25:00','HIGH','subject 2',13080,13179,13178),(13259,0,'body 2','2017-10-01 15:25:00','HIGH','subject 2',13076,13179,13178);
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
INSERT INTO `messagefolder` VALUES (12970,0,'\0','In box'),(12971,0,'\0','Out box'),(12972,0,'\0','Notification box'),(12973,0,'\0','Trash box'),(12974,0,'\0','Spam box'),(12975,0,'\0','In box'),(12976,0,'\0','Out box'),(12977,0,'\0','Notification box'),(12978,0,'\0','Trash box'),(12979,0,'\0','Spam box'),(12980,0,'\0','In box'),(12981,0,'\0','Out box'),(12982,0,'\0','Notification box'),(12983,0,'\0','Trash box'),(12984,0,'\0','Spam box'),(12985,0,'\0','In box'),(12986,0,'\0','Out box'),(12987,0,'\0','Notification box'),(12988,0,'\0','Trash box'),(12989,0,'\0','Spam box'),(12990,0,'\0','In box'),(12991,0,'\0','Out box'),(12992,0,'\0','Notification box'),(12993,0,'\0','Trash box'),(12994,0,'\0','Spam box'),(12995,0,'\0','In box'),(12996,0,'\0','Out box'),(12997,0,'\0','Notification box'),(12998,0,'\0','Trash box'),(12999,0,'\0','Spam box'),(13000,0,'\0','In box'),(13001,0,'\0','Out box'),(13002,0,'\0','Notification box'),(13003,0,'\0','Trash box'),(13004,0,'\0','Spam box'),(13005,0,'\0','In box'),(13006,0,'\0','Out box'),(13007,0,'\0','Notification box'),(13008,0,'\0','Trash box'),(13009,0,'\0','Spam box'),(13010,0,'\0','In box'),(13011,0,'\0','Out box'),(13012,0,'\0','Notification box'),(13013,0,'\0','Trash box'),(13014,0,'\0','Spam box'),(13015,0,'\0','In box'),(13016,0,'\0','Out box'),(13017,0,'\0','Notification box'),(13018,0,'\0','Trash box'),(13019,0,'\0','Spam box'),(13020,0,'\0','In box'),(13021,0,'\0','Out box'),(13022,0,'\0','Notification box'),(13023,0,'\0','Trash box'),(13024,0,'\0','Spam box'),(13025,0,'\0','In box'),(13026,0,'\0','Out box'),(13027,0,'\0','Notification box'),(13028,0,'\0','Trash box'),(13029,0,'\0','Spam box'),(13030,0,'\0','In box'),(13031,0,'\0','Out box'),(13032,0,'\0','Notification box'),(13033,0,'\0','Trash box'),(13034,0,'\0','Spam box'),(13035,0,'\0','In box'),(13036,0,'\0','Out box'),(13037,0,'\0','Notification box'),(13038,0,'\0','Trash box'),(13039,0,'\0','Spam box'),(13040,0,'\0','In box'),(13041,0,'\0','Out box'),(13042,0,'\0','Notification box'),(13043,0,'\0','Trash box'),(13044,0,'\0','Spam box'),(13045,0,'\0','In box'),(13046,0,'\0','Out box'),(13047,0,'\0','Notification box'),(13048,0,'\0','Trash box'),(13049,0,'\0','Spam box'),(13050,0,'\0','In box'),(13051,0,'\0','Out box'),(13052,0,'\0','Notification box'),(13053,0,'\0','Trash box'),(13054,0,'\0','Spam box'),(13055,0,'\0','In box'),(13056,0,'\0','Out box'),(13057,0,'\0','Notification box'),(13058,0,'\0','Trash box'),(13059,0,'\0','Spam box'),(13060,0,'\0','In box'),(13061,0,'\0','Out box'),(13062,0,'\0','Notification box'),(13063,0,'\0','Trash box'),(13064,0,'\0','Spam box'),(13065,0,'\0','In box'),(13066,0,'\0','Out box'),(13067,0,'\0','Notification box'),(13068,0,'\0','Trash box'),(13069,0,'\0','Spam box'),(13070,0,'\0','In box'),(13071,0,'\0','Out box'),(13072,0,'\0','Notification box'),(13073,0,'\0','Trash box'),(13074,0,'\0','Spam box'),(13075,0,'\0','In box'),(13076,0,'\0','Out box'),(13077,0,'\0','Notification box'),(13078,0,'\0','Trash box'),(13079,0,'\0','Spam box'),(13080,0,'\0','In box'),(13081,0,'\0','Out box'),(13082,0,'\0','Notification box'),(13083,0,'\0','Trash box'),(13084,0,'\0','Spam box'),(13085,0,'\0','In box'),(13086,0,'\0','Out box'),(13087,0,'\0','Notification box'),(13088,0,'\0','Trash box'),(13089,0,'\0','Spam box'),(13090,0,'\0','In box'),(13091,0,'\0','Out box'),(13092,0,'\0','Notification box'),(13093,0,'\0','Trash box'),(13094,0,'\0','Spam box'),(13095,0,'\0','In box'),(13096,0,'\0','Out box'),(13097,0,'\0','Notification box'),(13098,0,'\0','Trash box'),(13099,0,'\0','Spam box'),(13100,0,'\0','In box'),(13101,0,'\0','Out box'),(13102,0,'\0','Notification box'),(13103,0,'\0','Trash box'),(13104,0,'\0','Spam box'),(13105,0,'\0','In box'),(13106,0,'\0','Out box'),(13107,0,'\0','Notification box'),(13108,0,'\0','Trash box'),(13109,0,'\0','Spam box'),(13110,0,'\0','In box'),(13111,0,'\0','Out box'),(13112,0,'\0','Notification box'),(13113,0,'\0','Trash box'),(13114,0,'\0','Spam box'),(13115,0,'\0','In box'),(13116,0,'\0','Out box'),(13117,0,'\0','Notification box'),(13118,0,'\0','Trash box'),(13119,0,'\0','Spam box'),(13120,0,'\0','In box'),(13121,0,'\0','Out box'),(13122,0,'\0','Notification box'),(13123,0,'\0','Trash box'),(13124,0,'\0','Spam box'),(13125,0,'','folder 1'),(13126,0,'','folder 2'),(13127,0,'','folder 3'),(13128,0,'','folder 4'),(13129,0,'','folder 4');
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
INSERT INTO `miscellaneousrecord` VALUES (13245,0,'https://miscellaneousRecord.com','miscellaneousRecord 1'),(13246,0,'https://miscellaneousRecord.com','miscellaneousRecord 2'),(13247,0,'https://miscellaneousRecord.com','miscellaneousRecord 3'),(13248,0,'https://miscellaneousRecord.com','miscellaneousRecord 4'),(13249,0,'https://miscellaneousRecord.com','miscellaneousRecord 5');
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
INSERT INTO `miscellaneousrecord_comments` VALUES (13246,'hola1'),(13246,'hola2'),(13246,'hola3'),(13246,'hola4'),(13246,'hola5'),(13249,'hola1'),(13249,'hola2'),(13249,'hola3'),(13249,'hola4');
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
INSERT INTO `note` VALUES (13183,0,'Description note 1 viagra','2017-10-01 15:25:00','remark1','reply note 1','2017-10-02 15:25:00',13178),(13184,0,'Description note 2','2017-10-01 15:25:00','remark2','reply note 2','2017-10-02 15:25:00',13178),(13185,0,'Description note 3','2017-10-01 15:25:00','remark3','reply note 3','2017-10-02 15:25:00',13179),(13186,0,'Description note 4','2017-10-01 15:25:00','remark4','Description note 4','2017-10-02 15:25:00',13179),(13187,0,'Description note 5','2017-10-01 15:25:00','remark5','Description note 4','2017-10-02 15:25:00',13180);
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
INSERT INTO `personalrecord` VALUES (13225,0,'personalRecord1@gmail.com','personalRecord 1','https://www.example.com','+34(578)1234','https://www.example.com'),(13226,0,'personalRecord2@gmail.com','personalRecord 2','https://www.example.com','+34(578)1235','https://www.example.com'),(13227,0,'personalRecord3@gmail.com','personalRecord 3','https://www.example.com','+34(578)1236','https://www.example.com'),(13228,0,'personalRecord4@gmail.com','personalRecord 4','https://www.example.com','+34(578)1237','https://www.example.com'),(13229,0,'personalRecord5@gmail.com','personalRecord 5','https://www.example.com','+34(578)1237','https://www.example.com');
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
INSERT INTO `professionalrecord` VALUES (13235,0,'professionalRecord 1','https://www.example.com','rol 1','2014/2017'),(13236,0,'professionalRecord 2','https://www.example.com','rol 2','2014/2015'),(13237,0,'professionalRecord 3','https://www.example.com','rol 3','2015/2017'),(13238,0,'professionalRecord 4','https://www.example.com','rol 4','2012/2015'),(13239,0,'professionalRecord 5','https://www.example.com','rol 5','2010/2017');
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
INSERT INTO `professionalrecord_comments` VALUES (13235,'hola1'),(13235,'hola2'),(13235,'hola3'),(13235,'hola4'),(13235,'hola5'),(13236,'hola1'),(13236,'hola2'),(13236,'hola3'),(13236,'hola4'),(13236,'hola5'),(13237,'hola1'),(13239,'hola1'),(13239,'hola2'),(13239,'hola5');
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
INSERT INTO `ranger` VALUES (13173,0,'C/ avenida del ranger','ranger1@acmeexplorer.com','ranger 1','+34617557203','ranger1 ranger1','\0',12949),(13174,0,'C/ avenida del ranger','ranger2@acmeexplorer.com','ranger 2','+34617557203','ranger2 ranger2','\0',12950),(13175,0,'C/ avenida del ranger','ranger3@acmeexplorer.com','ranger 3','+34617557203','ranger3 ranger3','\0',12951),(13176,0,'C/ avenida del ranger','ranger4@acmeexplorer.com','ranger 4','+34617557203','ranger1 ranger4','\0',12952),(13177,0,'C/ avenida del ranger','ranger5@acmeexplorer.com','ranger 5','+34617557203','ranger5 ranger5','\0',12953);
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
INSERT INTO `socialidentity` VALUES (13130,0,'http://www.sample.com','identityadmin 1','nickadmin1','http://www.sample.com'),(13131,0,'http://www.sample.com','identityadmin 2','nickadmin2','http://www.sample.com'),(13132,0,'http://www.sample.com','identityadmin 3','nickadmin3','http://www.sample.com'),(13133,0,'http://www.sample.com','identityadmin 4','nickadmin4','http://www.sample.com'),(13134,0,'http://www.sample.com','identityadmin 5','nickadmin5','http://www.sample.com'),(13135,0,'http://www.sample.com','identitymanager 1','nickmanager1','http://www.sample.com'),(13136,0,'http://www.sample.com','identitymanager 2','nickmanager2','http://www.sample.com'),(13137,0,'http://www.sample.com','identitymanager 3','nickmanager3','http://www.sample.com'),(13138,0,'http://www.sample.com','identitymanager 4','nickmanager4','http://www.sample.com'),(13139,0,'http://www.sample.com','identitymanager 5','nickmanager5','http://www.sample.com'),(13140,0,'http://www.sample.com','identityranger 1','nickranger1','http://www.sample.com'),(13141,0,'http://www.sample.com','identityranger 2','nickranger2','http://www.sample.com'),(13142,0,'http://www.sample.com','identityranger 3','nickranger3','http://www.sample.com'),(13143,0,'http://www.sample.com','identityranger 4','nickranger4','http://www.sample.com'),(13144,0,'http://www.sample.com','identityranger 5','nickranger5','http://www.sample.com'),(13145,0,'http://www.sample.com','identityexponsor 1','nicksponsor1','http://www.sample.com'),(13146,0,'http://www.sample.com','identitysponsor 2','nicksxponsor2','http://www.sample.com'),(13147,0,'http://www.sample.com','identitySponsor 3','nickSponsor3','http://www.sample.com'),(13148,0,'http://www.sample.com','identitySponsor 4','nickSponsor4','http://www.sample.com'),(13149,0,'http://www.sample.com','identitySponsor 5','nickSponsor5','http://www.sample.com'),(13150,0,'http://www.sample.com','identityexplorer 1','nickexplorer 1','http://www.sample.com'),(13151,0,'http://www.sample.com','identityexplorer 2','nickexplorer 2','http://www.sample.com'),(13152,0,'http://www.sample.com','identityexplorer 3','nickexplorer3','http://www.sample.com'),(13153,0,'http://www.sample.com','identityexplorer 4','nickexplorer 4','http://www.sample.com'),(13154,0,'http://www.sample.com','identityexplorer 5','nickexplorer 5','http://www.sample.com'),(13155,0,'http://www.sample.com','identityauditor 1','nickauditor 1','http://www.sample.com'),(13156,0,'http://www.sample.com','identityauditor 2','nickauditor 2','http://www.sample.com'),(13157,0,'http://www.sample.com','identityauditor 3','nickauditor 3','http://www.sample.com'),(13158,0,'http://www.sample.com','identityauditor 4','nickauditor 4','http://www.sample.com'),(13159,0,'http://www.sample.com','identityauditor 5','nickauditor 5','http://www.sample.com');
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
INSERT INTO `sponsor` VALUES (13165,0,'Sponsor1 address','sponsor1@sponsor.com','Sponsor1','+34662657322','Sponsor1 Surnames','\0',12954),(13166,0,'Sponsor2 address','sponsor2@sponsor.com','Sponsor2','+34662657322','Sponsor2 Surnames','\0',12955),(13167,0,'Sponsor3 address','sponsor3@sponsor.com','Sponsor3','+34662657322','Sponsor3 Surnames','\0',12956),(13168,0,'Sponsor4 address','sponsor4@sponsor.com','Sponsor4','+34662657322','Sponsor4 Surnames','\0',12957),(13169,0,'Sponsor5 address','sponsor5@sponsor.com','Sponsor5','+34662657322','Sponsor5 Surnames','\0',12958);
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
INSERT INTO `sponsorship` VALUES (13265,0,'https://www.webtenerife.com/es/interes/empresas-servicios-turista/empresas-excursiones/publishingimages/empresas-excursiones-organizadas-2-sb.jpg','La caixa',102,'03','20','Jose Angel Dominguez Espinaco','4388576018410707','http://www.link-banner.com',13165,13260),(13266,0,'https://www.bioparcvalencia.es/wp-content/uploads/2015/09/grupo-escolar-sabana-africana-bioparc-valencia.jpg','La caixa',102,'03','20','Jose Angel Dominguez Espinaco','4388576018410707','http://www.link-banner.com',13165,13261),(13267,0,'https://www.france-voyage.com/visuals/pratique/hiking-with-pleasure-21-1_w1000.jpg','La caixa',102,'03','20','Jose Angel Dominguez Espinaco','4388576018410707','http://www.banner.com',13166,13261),(13268,0,'http://www.francetourisme.fr/images/visite_guidee_de_paris/pass_city_tour.jpg','Santander',103,'05','21','Daniel Lozano','4388576018410707','http://www.banner.com',13167,13262),(13269,0,'http://www.portaldeexcursiones.com/fotos-excursiones/50845_amsterdam1.jpg','Santander',103,'05','21','Daniel Lozano','4388576018410707','http://www.example.com',13168,13263),(13270,0,'https://cache-graphicslib.viator.com/graphicslib/thumbs674x446/6331/SITours/excursi-n-de-un-d-a-en-ferry-a-las-bahamas-desde-miami-in-miami-157631.jpg','Santander',103,'05','21','Daniel Lozano','4388576018410707','http://www.example.com',13168,13263),(13271,0,'https://cache-graphicslib.viator.com/graphicslib/thumbs674x446/6331/SITours/excursi-n-de-un-d-a-en-ferry-a-las-bahamas-desde-miami-in-miami-157631.jpg','Santander',103,'05','21','Daniel Lozano','4388576018410707','http://www.example.com',13169,13264);
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
INSERT INTO `stage` VALUES (13293,1,'description 1',1,7,'title 1',8.47,13260),(13294,1,'description 2',2,2,'title 2',2.42,13260),(13295,1,'description 3',3,3,'title 3',3.63,13262),(13296,1,'description 4',4,4,'title 4',4.84,13263),(13297,1,'description 5',5,5,'title 5',6.05,13264),(13298,1,'description 6',5,5,'title 6',6.05,13261);
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
INSERT INTO `story` VALUES (13277,0,'text Story 1','Story 1 sex',13219,13260),(13278,0,'text Story 2','Story 2',13220,13261),(13279,0,'text Story 3','Story 3',13221,13262),(13280,0,'text Story 4','Story 4',13222,13263),(13281,0,'text Story 5','Story 5',13223,13264);
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
INSERT INTO `story_attachments` VALUES (13277,'http://www.story1.com'),(13278,'http://www.story2.com'),(13279,'http://www.story3.com'),(13280,'http://www.story4.com'),(13281,'http://www.story5.com');
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
INSERT INTO `survivalclass` VALUES (13272,0,'description survivalClass 1',37.35,-5.98,'Reina mercedes','2017-10-22 10:10:00','survivalClass 1',13214,13260),(13273,0,'description survivalClass 2',37.28,-5.49,'Paradas','2017-10-21 10:10:00','survivalClass 2',13214,13261),(13274,0,'description survivalClass 3',40.6,5.5,'Mar balear','2017-10-21 10:10:00','survivalClass 3',13215,13262),(13275,0,'description survivalClass 4',41.34,2.09,'Barcelona','2017-10-21 08:10:00','survivalClass 4',13217,13263),(13276,0,'description survivalClass 5',43.65,7.08,'Monaco','2017-10-21 09:10:00','survivalClass 5',13218,13264);
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
INSERT INTO `survivalclass_explorer` VALUES (13272,13219),(13272,13220),(13273,13221),(13273,13222),(13274,13222),(13274,13223),(13275,13222),(13276,13219),(13276,13220),(13276,13221),(13276,13222),(13276,13223);
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
INSERT INTO `tag` VALUES (13170,0,'country'),(13171,0,'expertise'),(13172,0,'dangerousness');
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
INSERT INTO `trip` VALUES (13260,1,'\0','description 1','2016-12-30',10.89,'2016-10-14 23:59:00',NULL,'requirementsExplorers 1','2016-11-14','170112-WWWW','title 1',13214,13173),(13261,1,'\0','description 2','2019-08-04',6.05,'2018-10-14 23:59:00',NULL,'requirementsExplorers 2','2018-11-22','160112-AAAA','title 2',13214,13174),(13262,1,'\0','description 3','2018-08-04',3.63,'2018-02-02 22:45:00',NULL,'requirementsExplorers 3','2018-07-11','150112-BBBB','title 3',13215,13175),(13263,1,'','description 4','2015-08-04',4.84,'2015-01-20 22:45:00','reasonWhy 4','requirementsExplorers 4','2015-02-21','150112-CCCC','title 4',13217,13176),(13264,1,'\0','description 5','2019-08-04',6.05,'2019-01-14 23:59:00',NULL,'requirementsExplorers 5','2019-02-21','150112-DDDD','title 5',13218,13177);
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
INSERT INTO `trip_auditrecord` VALUES (13260,13188),(13261,13189),(13262,13190),(13262,13191),(13263,13192);
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
INSERT INTO `trip_note` VALUES (13260,13183),(13261,13184),(13263,13185),(13263,13186),(13263,13187);
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
INSERT INTO `trip_stage` VALUES (13260,13293),(13260,13294),(13261,13298),(13262,13295),(13263,13296),(13264,13297);
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
INSERT INTO `useraccount` VALUES (12939,0,'','21232f297a57a5a743894a0e4a801fc3','admin'),(12940,0,'','82954495ff7e2a735ed2192c35b2cd00','administrator2'),(12941,0,'','0185e578be37caa9c276e0c8903e261a','administrator3'),(12942,0,'','3ce013337481d5af81e21bf6791a574e','administrator4'),(12943,0,'','f2ec5fdcc58bcb002270a11f6bb2a9b3','administrator5'),(12944,0,'','c240642ddef994358c96da82c0361a58','manager1'),(12945,0,'','8df5127cd164b5bc2d2b78410a7eea0c','manager2'),(12946,0,'','2d3a5db4a2a9717b43698520a8de57d0','manager3'),(12947,0,'','e1ec6fc941af3ba79a4ac5242dd39735','manager4'),(12948,0,'','029cb1d27c0b9c551703ccba2591c334','manager5'),(12949,0,'','0724ee360da2267273a1330a2e61232c','ranger1'),(12950,0,'','dc095ac91ed81b91d6415f5cb90a14f5','ranger2'),(12951,0,'','3463481ed1abde8365da6600c3edb985','ranger3'),(12952,0,'','76bbcf2c573db6b0c41e2388ed3ff3c0','ranger4'),(12953,0,'','07fb3d4fb1b4cc4d79e10ae2a14b44e9','ranger5'),(12954,0,'','42c63ad66d4dc07ed17753772bef96d6','sponsor1'),(12955,0,'','3dc67f80a03324e01b1640f45d107485','sponsor2'),(12956,0,'','857a54956061fdc1b88d7722cafe6519','sponsor3'),(12957,0,'','a8be034fe44a453e912feadc414dc803','sponsor4'),(12958,0,'','d6d7f85c15bbb451ef50b704b3693033','sponsor5'),(12959,0,'','175d2e7a63f386554a4dd66e865c3e14','auditor1'),(12960,0,'','04dd94ba3212ac52ad3a1f4cbfb52d4f','auditor2'),(12961,0,'','fc2073dbe4f65dfd71e46602f8e6a5f3','auditor3'),(12962,0,'','6cc8affcba51a854192a33af68c08f49','auditor4'),(12963,0,'','3775bf00262284e83013c9cea5f41431','auditor5'),(12964,0,'','03fc13f308051f4942d35c84592b8d5a','explorer1'),(12965,0,'','5a1b9d1b35a024241cdf419f645f7765','explorer2'),(12966,0,'','1dfcf0b9f4a3ce786b5340e554929eb4','explorer3'),(12967,0,'','a970e7ef3301a37ccfe7aab380fa9d4a','explorer4'),(12968,0,'','d8420d0725247c256c6ed45abf4911d3','explorer5'),(12969,0,'','f1ee5f1a48950b10aeaa40c20a7e2b45','explorer6');
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
INSERT INTO `useraccount_authorities` VALUES (12939,'ADMINISTRATOR'),(12940,'ADMINISTRATOR'),(12941,'ADMINISTRATOR'),(12942,'ADMINISTRATOR'),(12943,'ADMINISTRATOR'),(12944,'MANAGER'),(12945,'MANAGER'),(12946,'MANAGER'),(12947,'MANAGER'),(12948,'MANAGER'),(12949,'RANGER'),(12950,'RANGER'),(12951,'RANGER'),(12952,'RANGER'),(12953,'RANGER'),(12954,'SPONSOR'),(12955,'SPONSOR'),(12956,'SPONSOR'),(12957,'SPONSOR'),(12958,'SPONSOR'),(12959,'AUDITOR'),(12960,'AUDITOR'),(12961,'AUDITOR'),(12962,'AUDITOR'),(12963,'AUDITOR'),(12964,'EXPLORER'),(12965,'EXPLORER'),(12966,'EXPLORER'),(12967,'EXPLORER'),(12968,'EXPLORER'),(12969,'EXPLORER');
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

-- Dump completed on 2018-01-19 17:24:50

