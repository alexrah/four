-- MySQL dump 10.13  Distrib 5.1.67, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: four
-- ------------------------------------------------------
-- Server version	5.1.67

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
-- Table structure for table `ujcu6_acymailing_config`
--

DROP TABLE IF EXISTS `ujcu6_acymailing_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_acymailing_config` (
  `namekey` varchar(200) NOT NULL,
  `value` text,
  PRIMARY KEY (`namekey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_acymailing_config`
--

LOCK TABLES `ujcu6_acymailing_config` WRITE;
/*!40000 ALTER TABLE `ujcu6_acymailing_config` DISABLE KEYS */;
INSERT INTO `ujcu6_acymailing_config` VALUES ('level','Starter'),('version','4.2.0'),('from_name','Minima'),('from_email','email@email.com'),('mailer_method','mail'),('sendmail_path','/usr/sbin/sendmail'),('smtp_secured',''),('smtp_auth','0'),('smtp_username',''),('smtp_password',''),('reply_name','Minima'),('reply_email','email@email.com'),('cron_sendto','email@email.com'),('bounce_email',''),('add_names','1'),('encoding_format','8bit'),('charset','UTF-8'),('word_wrapping','150'),('hostname',''),('embed_images','0'),('embed_files','1'),('editor','0'),('multiple_part','1'),('smtp_host','localhost'),('smtp_port',''),('queue_nbmail','40'),('queue_nbmail_auto','70'),('queue_type','auto'),('queue_try','3'),('queue_pause','120'),('allow_visitor','1'),('require_confirmation','0'),('priority_newsletter','3'),('allowedfiles','zip,doc,docx,pdf,xls,txt,gzip,rar,jpg,gif,xlsx,pps,csv,bmp,ico,odg,odp,ods,odt,png,ppt,swf,xcf,mp3,wma'),('uploadfolder','media/com_acymailing/upload'),('confirm_redirect',''),('subscription_message','1'),('notification_unsuball',''),('cron_next','1251990901'),('confirmation_message','1'),('welcome_message','1'),('unsub_message','1'),('cron_last','0'),('cron_fromip',''),('cron_report',''),('cron_frequency','900'),('cron_sendreport','2'),('cron_fullreport','1'),('cron_savereport','2'),('cron_savepath','media/com_acymailing/logs/report351458633.log'),('notification_created',''),('notification_accept',''),('notification_refuse',''),('forward','0'),('description_starter','Joomla!™ E-mail Marketing'),('description_essential','Joomla!™ Newsletter System'),('description_business','Joomla!™ Newsletter System'),('description_enterprise','Joomla!™ Newsletter Extension'),('priority_followup','2'),('unsub_redirect',''),('show_footer','1'),('use_sef','0'),('itemid','0'),('css_module','default'),('css_frontend','default'),('css_backend','default'),('menu_position','under'),('unsub_reasons','a:2:{i:0;s:21:\"UNSUB_SURVEY_FREQUENT\";i:1;s:21:\"UNSUB_SURVEY_RELEVANT\";}'),('installcomplete','1'),('Starter','0'),('Essential','1'),('Business','2'),('Enterprise','3'),('website','http://192.168.1.3/joomla/minima/'),('module_redirect','192.168.1.3|localhost|192.168.1.2|192.168.1.4|192.168.1.95|teddydemo.tk');
/*!40000 ALTER TABLE `ujcu6_acymailing_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_acymailing_fields`
--

DROP TABLE IF EXISTS `ujcu6_acymailing_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_acymailing_fields` (
  `fieldid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `fieldname` varchar(250) NOT NULL,
  `namekey` varchar(50) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `value` text NOT NULL,
  `published` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ordering` smallint(5) unsigned DEFAULT '99',
  `options` text,
  `core` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `required` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `backend` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `frontcomp` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `default` varchar(250) DEFAULT NULL,
  `listing` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`fieldid`),
  UNIQUE KEY `namekey` (`namekey`),
  KEY `orderingindex` (`published`,`ordering`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_acymailing_fields`
--

LOCK TABLES `ujcu6_acymailing_fields` WRITE;
/*!40000 ALTER TABLE `ujcu6_acymailing_fields` DISABLE KEYS */;
INSERT INTO `ujcu6_acymailing_fields` VALUES (1,'NAMECAPTION','name','text','',1,1,'',1,1,1,1,'',1),(2,'EMAILCAPTION','email','text','',1,2,'',1,1,1,1,'',1),(3,'RECEIVE','html','radio','0::JOOMEXT_TEXT\n1::HTML',1,3,'',1,1,1,1,'1',1);
/*!40000 ALTER TABLE `ujcu6_acymailing_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_acymailing_filter`
--

DROP TABLE IF EXISTS `ujcu6_acymailing_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_acymailing_filter` (
  `filid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `description` text,
  `published` tinyint(3) unsigned DEFAULT NULL,
  `lasttime` int(10) unsigned DEFAULT NULL,
  `trigger` text,
  `report` text,
  `action` text,
  `filter` text,
  PRIMARY KEY (`filid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_acymailing_filter`
--

LOCK TABLES `ujcu6_acymailing_filter` WRITE;
/*!40000 ALTER TABLE `ujcu6_acymailing_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_acymailing_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_acymailing_history`
--

DROP TABLE IF EXISTS `ujcu6_acymailing_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_acymailing_history` (
  `subid` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `action` varchar(50) NOT NULL COMMENT 'different actions: created,modified,confirmed',
  `data` text,
  `source` text,
  `mailid` mediumint(8) unsigned DEFAULT NULL,
  KEY `subid` (`subid`,`date`),
  KEY `dateindex` (`date`),
  KEY `actionindex` (`action`,`mailid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_acymailing_history`
--

LOCK TABLES `ujcu6_acymailing_history` WRITE;
/*!40000 ALTER TABLE `ujcu6_acymailing_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_acymailing_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_acymailing_list`
--

DROP TABLE IF EXISTS `ujcu6_acymailing_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_acymailing_list` (
  `name` varchar(250) NOT NULL,
  `description` text,
  `ordering` smallint(5) unsigned DEFAULT '0',
  `listid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `published` tinyint(4) DEFAULT NULL,
  `userid` int(10) unsigned DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `color` varchar(30) DEFAULT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `welmailid` mediumint(9) DEFAULT NULL,
  `unsubmailid` mediumint(9) DEFAULT NULL,
  `type` enum('list','campaign') NOT NULL DEFAULT 'list',
  `access_sub` varchar(250) DEFAULT 'all',
  `access_manage` varchar(250) NOT NULL DEFAULT 'none',
  `languages` varchar(250) NOT NULL DEFAULT 'all',
  PRIMARY KEY (`listid`),
  KEY `typeorderingindex` (`type`,`ordering`),
  KEY `useridindex` (`userid`),
  KEY `typeuseridindex` (`type`,`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_acymailing_list`
--

LOCK TABLES `ujcu6_acymailing_list` WRITE;
/*!40000 ALTER TABLE `ujcu6_acymailing_list` DISABLE KEYS */;
INSERT INTO `ujcu6_acymailing_list` VALUES ('Newsletters','Receive our latest news',1,1,1,236,'mailing_list','#3366ff',1,NULL,NULL,'list','all','none','all');
/*!40000 ALTER TABLE `ujcu6_acymailing_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_acymailing_listcampaign`
--

DROP TABLE IF EXISTS `ujcu6_acymailing_listcampaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_acymailing_listcampaign` (
  `campaignid` smallint(5) unsigned NOT NULL,
  `listid` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`campaignid`,`listid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_acymailing_listcampaign`
--

LOCK TABLES `ujcu6_acymailing_listcampaign` WRITE;
/*!40000 ALTER TABLE `ujcu6_acymailing_listcampaign` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_acymailing_listcampaign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_acymailing_listmail`
--

DROP TABLE IF EXISTS `ujcu6_acymailing_listmail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_acymailing_listmail` (
  `listid` smallint(5) unsigned NOT NULL,
  `mailid` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`listid`,`mailid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_acymailing_listmail`
--

LOCK TABLES `ujcu6_acymailing_listmail` WRITE;
/*!40000 ALTER TABLE `ujcu6_acymailing_listmail` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_acymailing_listmail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_acymailing_listsub`
--

DROP TABLE IF EXISTS `ujcu6_acymailing_listsub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_acymailing_listsub` (
  `listid` smallint(5) unsigned NOT NULL,
  `subid` int(10) unsigned NOT NULL,
  `subdate` int(10) unsigned DEFAULT NULL,
  `unsubdate` int(10) unsigned DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`listid`,`subid`),
  KEY `subidindex` (`subid`),
  KEY `listidstatusindex` (`listid`,`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_acymailing_listsub`
--

LOCK TABLES `ujcu6_acymailing_listsub` WRITE;
/*!40000 ALTER TABLE `ujcu6_acymailing_listsub` DISABLE KEYS */;
INSERT INTO `ujcu6_acymailing_listsub` VALUES (1,1,1366890086,NULL,1);
/*!40000 ALTER TABLE `ujcu6_acymailing_listsub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_acymailing_mail`
--

DROP TABLE IF EXISTS `ujcu6_acymailing_mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_acymailing_mail` (
  `mailid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(250) NOT NULL,
  `body` longtext NOT NULL,
  `altbody` longtext NOT NULL,
  `published` tinyint(4) DEFAULT '1',
  `senddate` int(10) unsigned DEFAULT NULL,
  `created` int(10) unsigned DEFAULT NULL,
  `fromname` varchar(250) DEFAULT NULL,
  `fromemail` varchar(250) DEFAULT NULL,
  `replyname` varchar(250) DEFAULT NULL,
  `replyemail` varchar(250) DEFAULT NULL,
  `type` enum('news','autonews','followup','unsub','welcome','notification') NOT NULL DEFAULT 'news',
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `userid` int(10) unsigned DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `attach` text,
  `html` tinyint(4) NOT NULL DEFAULT '1',
  `tempid` smallint(6) NOT NULL DEFAULT '0',
  `key` varchar(200) DEFAULT NULL,
  `frequency` varchar(50) DEFAULT NULL,
  `params` text,
  `sentby` int(10) unsigned DEFAULT NULL,
  `metakey` text,
  `metadesc` text,
  `filter` text,
  PRIMARY KEY (`mailid`),
  KEY `senddate` (`senddate`),
  KEY `typemailidindex` (`type`,`mailid`),
  KEY `useridindex` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_acymailing_mail`
--

LOCK TABLES `ujcu6_acymailing_mail` WRITE;
/*!40000 ALTER TABLE `ujcu6_acymailing_mail` DISABLE KEYS */;
INSERT INTO `ujcu6_acymailing_mail` VALUES (1,'New Subscriber on your website : {user:email}','<p>Hello {subtag:name},</p><p>A new user has been created in AcyMailing : </p><blockquote><p>Name : {user:name}</p><p>Email : {user:email}</p><p>IP : {user:ip} </p><p>Subscription : {user:subscription}</p></blockquote>','',1,NULL,NULL,NULL,NULL,NULL,NULL,'notification',0,NULL,'notification_created',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'A User unsubscribed from all your lists : {user:email}','<p>Hello {subtag:name},</p><p>The user {user:name} : {user:email} unsubscribed from all your lists</p><p>Subscription : {user:subscription}</p><p>{survey}</p>','',1,NULL,NULL,NULL,NULL,NULL,NULL,'notification',0,NULL,'notification_unsuball',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'A User unsubscribed : {user:email}','<p>Hello {subtag:name},</p><p>The user {user:name} : {user:email} unsubscribed from your list</p><p>Subscription : {user:subscription}</p><p>{survey}</p>','',1,NULL,NULL,NULL,NULL,NULL,NULL,'notification',0,NULL,'notification_unsub',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'A User refuses to receive e-mails from your website : {user:email}','<p>The User {user:name} : {user:email} refuses to receive any e-mail anymore from your website.</p><p>Subscription : {user:subscription}</p><p>{survey}</p>','',1,NULL,NULL,NULL,NULL,NULL,NULL,'notification',0,NULL,'notification_refuse',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'{subtag:name|ucfirst}, {trans:PLEASE_CONFIRM_SUB}','<div style=\"text-align: center; width: 100%; background-color: #ffffff;\">\r\n			<table style=\"text-align:justify; margin:auto; background-color:#ebebeb; border:1px solid #e7e7e7\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\" bgcolor=\"#ebebeb\">\r\n			<tbody>\r\n			<tr style=\"line-height: 0px;\">\r\n			<td style=\"line-height: 0px;\" height=\"38px\"><img src=\"media/com_acymailing/templates/newsletter-4/top.png\" border=\"0\" alt=\" - - - \" /></td>\r\n			</tr>\r\n			<tr>\r\n			<td style=\"text-align:center\" width=\"600\">\r\n			<table style=\"margin:auto;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"520\">\r\n			<tbody>\r\n			<tr>\r\n			<td style=\"background-color: #ffffff; border: 1px solid #dbdbdb; padding: 20px; width: 500px; margin: 15px auto; text-align: left;\">\r\n			<h1>Hello {subtag:name|ucfirst},</h1>\r\n			<p>{trans:CONFIRM_MSG}<br /><br />{trans:CONFIRM_MSG_ACTIVATE}</p>\r\n			<br />\r\n			<p style=\"text-align:center;\"><strong>{confirm}{trans:CONFIRM_SUBSCRIPTION}{/confirm}</strong></p>\r\n			</td>\r\n			</tr>\r\n			</tbody>\r\n			</table>\r\n			</td>\r\n			</tr>\r\n			<tr style=\"line-height: 0px;\">\r\n			<td style=\"line-height: 0px;\" height=\"40px\"><img src=\"media/com_acymailing/templates/newsletter-4/bottom.png\" border=\"0\" alt=\" - - - \" /></td>\r\n			</tr>\r\n			</tbody>\r\n			</table>\r\n			</div>','',1,NULL,NULL,NULL,NULL,NULL,NULL,'notification',0,NULL,'confirmation',NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'AcyMailing Cron Report {mainreport}','<p>{report}</p><p>{detailreport}</p>','',1,NULL,NULL,NULL,NULL,NULL,NULL,'notification',0,NULL,'report',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'A Newsletter has been generated : \"{subject}\"','<p>The Newsletter issue {issuenb} has been generated : </p><p>Subject : {subject}</p><p>{body}</p>','',1,NULL,NULL,NULL,NULL,NULL,NULL,'notification',0,NULL,'notification_autonews',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'Modify your subscription','<p>Hello {subtag:name}, </p><p>You requested some changes on your subscription,</p><p>Please {modify}click here{/modify} to be identified as the owner of this account and then modify your subscription.</p>','',1,NULL,NULL,NULL,NULL,NULL,NULL,'notification',0,NULL,'modif',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ujcu6_acymailing_mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_acymailing_queue`
--

DROP TABLE IF EXISTS `ujcu6_acymailing_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_acymailing_queue` (
  `senddate` int(10) unsigned NOT NULL,
  `subid` int(10) unsigned NOT NULL,
  `mailid` mediumint(8) unsigned NOT NULL,
  `priority` tinyint(3) unsigned DEFAULT '3',
  `try` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `paramqueue` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`subid`,`mailid`),
  KEY `listingindex` (`senddate`,`subid`),
  KEY `mailidindex` (`mailid`),
  KEY `orderingindex` (`priority`,`senddate`,`subid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_acymailing_queue`
--

LOCK TABLES `ujcu6_acymailing_queue` WRITE;
/*!40000 ALTER TABLE `ujcu6_acymailing_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_acymailing_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_acymailing_rules`
--

DROP TABLE IF EXISTS `ujcu6_acymailing_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_acymailing_rules` (
  `ruleid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `ordering` smallint(6) DEFAULT NULL,
  `regex` text NOT NULL,
  `executed_on` text NOT NULL,
  `action_message` text NOT NULL,
  `action_user` text NOT NULL,
  `published` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`ruleid`),
  KEY `ordering` (`published`,`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_acymailing_rules`
--

LOCK TABLES `ujcu6_acymailing_rules` WRITE;
/*!40000 ALTER TABLE `ujcu6_acymailing_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_acymailing_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_acymailing_stats`
--

DROP TABLE IF EXISTS `ujcu6_acymailing_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_acymailing_stats` (
  `mailid` mediumint(8) unsigned NOT NULL,
  `senthtml` int(10) unsigned NOT NULL DEFAULT '0',
  `senttext` int(10) unsigned NOT NULL DEFAULT '0',
  `senddate` int(10) unsigned NOT NULL,
  `openunique` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `opentotal` int(10) unsigned NOT NULL DEFAULT '0',
  `bounceunique` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `fail` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `clicktotal` int(10) unsigned NOT NULL DEFAULT '0',
  `clickunique` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `unsub` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forward` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bouncedetails` text,
  PRIMARY KEY (`mailid`),
  KEY `senddateindex` (`senddate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_acymailing_stats`
--

LOCK TABLES `ujcu6_acymailing_stats` WRITE;
/*!40000 ALTER TABLE `ujcu6_acymailing_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_acymailing_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_acymailing_subscriber`
--

DROP TABLE IF EXISTS `ujcu6_acymailing_subscriber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_acymailing_subscriber` (
  `subid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(250) NOT NULL,
  `created` int(10) unsigned DEFAULT NULL,
  `confirmed` tinyint(4) NOT NULL DEFAULT '0',
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `accept` tinyint(4) NOT NULL DEFAULT '1',
  `ip` varchar(100) DEFAULT NULL,
  `html` tinyint(4) NOT NULL DEFAULT '1',
  `key` varchar(250) DEFAULT NULL,
  `confirmed_date` int(10) unsigned NOT NULL DEFAULT '0',
  `confirmed_ip` varchar(100) DEFAULT NULL,
  `lastopen_date` int(10) unsigned NOT NULL DEFAULT '0',
  `lastclick_date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`subid`),
  UNIQUE KEY `email` (`email`),
  KEY `userid` (`userid`),
  KEY `queueindex` (`enabled`,`accept`,`confirmed`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_acymailing_subscriber`
--

LOCK TABLES `ujcu6_acymailing_subscriber` WRITE;
/*!40000 ALTER TABLE `ujcu6_acymailing_subscriber` DISABLE KEYS */;
INSERT INTO `ujcu6_acymailing_subscriber` VALUES (1,'install@joomshaper.com',236,'Super User',1366757615,1,1,1,NULL,1,NULL,0,NULL,0,0);
/*!40000 ALTER TABLE `ujcu6_acymailing_subscriber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_acymailing_template`
--

DROP TABLE IF EXISTS `ujcu6_acymailing_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_acymailing_template` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `description` text,
  `body` longtext,
  `altbody` longtext,
  `created` int(10) unsigned DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '1',
  `premium` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` smallint(5) unsigned DEFAULT '0',
  `namekey` varchar(50) NOT NULL,
  `styles` text,
  `subject` varchar(250) DEFAULT NULL,
  `stylesheet` text,
  `fromname` varchar(250) DEFAULT NULL,
  `fromemail` varchar(250) DEFAULT NULL,
  `replyname` varchar(250) DEFAULT NULL,
  `replyemail` varchar(250) DEFAULT NULL,
  `thumb` varchar(250) DEFAULT NULL,
  `readmore` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`tempid`),
  UNIQUE KEY `namekey` (`namekey`),
  KEY `orderingindex` (`ordering`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_acymailing_template`
--

LOCK TABLES `ujcu6_acymailing_template` WRITE;
/*!40000 ALTER TABLE `ujcu6_acymailing_template` DISABLE KEYS */;
INSERT INTO `ujcu6_acymailing_template` VALUES (1,'Notification template','','<div style=\"text-align:center; width:100%; background-color:#fff;\">\r\n	<div class=\"info acyeditor_delete acyeditor_text\">{readonline}This email contains graphics, so if you don\'t see them,view it in your browser{/readonline}</div>\r\n	<table width=\"600\" bgcolor=\"#ebebeb\" cellpadding=\"0\" cellspacing=\"0\" style=\"text-align:justify; margin:auto; background-color:#ebebeb; border:1px solid #e7e7e7\" align=\"center\">\r\n		<tr>\r\n			<td height=\"38px\" style=\"background-color:#69b4c0\" valign=\"bottom\">\r\n				<img src=\"media/com_acymailing/templates/newsletter-4/top.png\" alt=\" - - - \"/>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td width=\"600\" style=\"text-align:center\">\r\n				<table width=\"600\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"margin:auto;\">\r\n					<tr class=\"acyeditor_delete\">\r\n						<td width=\"40\" style=\"background-color:#ebebeb\"></td>\r\n						<td class=\"acyeditor_text\" width=\"520\" style=\"padding:20px 0px; text-align:left; background-color:#ebebeb\">\r\n									<img src=\"media/com_acymailing/templates/newsletter-4/message_icon.png\" alt=\"-\" style=\"float:left; margin:0px; margin-right:20px;\"/>\r\n							<h3>Topic of your message</h3>\r\n							<h4>Subtitle for your message</h4>\r\n						</td>\r\n						<td width=\"40\" style=\"background-color:#ebebeb\"></td>\r\n					</tr>\r\n					<tr class=\"acyeditor_delete\">\r\n						<td width=\"40\" style=\"background-color:#ebebeb\"></td>\r\n						<td width=\"520\" class=\"acyeditor_text\" style=\"background-color:#fff; border:1px solid #dbdbdb; padding:20px; width:500px; margin:auto; margin-top:15px; margin-bottom:15px;text-align:left\">\r\n							<h1>Dear {subtag:name},</h1>Your message here...\r\n						</td>\r\n						<td width=\"40\" style=\"background-color:#ebebeb\"></td>\r\n					</tr>\r\n				</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td height=\"40px\" valign=\"bottom\" style=\"background-color:#ebebeb\">\r\n				<img src=\"media/com_acymailing/templates/newsletter-4/bottom.png\" alt=\"---\" />\r\n			</td>\r\n		</tr>\r\n	 </table>\r\n	 <div class=\"info acyeditor_delete acyeditor_text\">Not interested any more? {unsubscribe}Unsubscribe{/unsubscribe}</div>\r\n</div>','',NULL,1,0,1,'newsletter-4','a:10:{s:6:\"tag_h1\";s:76:\"color:#393939 !important; font-size:14px; font-weight:bold; margin:10px 0px;\";s:6:\"tag_h2\";s:106:\"color: #309fb3 !important; font-size: 14px; font-weight: normal; text-align:left; margin:0px; padding:0px;\";s:6:\"tag_h3\";s:144:\"color: #393939 !important; font-size: 18px; font-weight: bold; text-align:left; margin:0px; padding-bottom:5px; border-bottom:1px solid #bdbdbd;\";s:6:\"tag_h4\";s:117:\"color: #309fb3 !important; font-size: 14px; font-weight: bold; text-align:left; margin:0px; padding: 5px 0px 0px 0px;\";s:5:\"tag_a\";s:71:\"color:#309FB3; text-decoration:none; font-style:italic; cursor:pointer;\";s:19:\"acymailing_readmore\";s:90:\"font-size: 12px; color: #fff; background-color:#309fb3; font-weight:bold; padding:3px 5px;\";s:17:\"acymailing_online\";s:52:\"color:#a3a3a3; text-decoration:none; font-size:11px;\";s:16:\"acymailing_unsub\";s:52:\"color:#a3a3a3; text-decoration:none; font-size:11px;\";s:8:\"color_bg\";s:7:\"#ffffff\";s:18:\"acymailing_content\";s:19:\"text-align:justify;\";}',NULL,'div,table,p{font-family: Verdana, Arial, Helvetica, sans-serif; font-size:12px; text-align:justify; color:#8c8c8c; margin:0px}\r\ndiv.info{text-align:center;padding:10px;font-size:11px;color:#a3a3a3;}',NULL,NULL,NULL,NULL,'media/com_acymailing/templates/newsletter-4/newsletter-4.png',''),(2,'Newspaper','','\r\n<div style=\"width:100%; background-color:#454545; padding-bottom:20px; color:#ffffff;\" align=\"center\">\r\n	<div class=\"acymailing_online acyeditor_delete acyeditor_text\">{readonline}This e-mail contains graphics, if you don\'t see them <strong>»view it online.</strong>{/readonline}</div>\r\n\r\n	 <table width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" style=\"margin:auto; background-color:#ffffff; color:#454545;\">\r\n		<tr>\r\n			<td>\r\n				<table width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n					<tr class=\"acyeditor_delete\">\r\n						<td width=\"30\" style=\"background-color:#ffffff\">&nbsp;</td>\r\n						<td class=\"acyeditor_text\" width=\"386\" style=\"font-family:Times New Roman, Times, serif; background-color:#ffffff\"><h1>Your e-mail title</h1> <br/> <h3>Subtitle</h3></td>\r\n						<td class=\"acyeditor_picture\" width=\"184\" style=\"line-height:0px; background-color:#ffffff\"><img src=\"media/com_acymailing/templates/newsletter-5/logo.png\" height=\"96\" width=\"184\" alt=\"logo\" /></td>\r\n					</tr>\r\n					<tr class=\"acyeditor_delete\">\r\n						<td colspan=\"3\" width=\"600\" height=\"31\" valign=\"top\" style=\"line-height:0px; background-color:#e4e4e4\"><img src=\"media/com_acymailing/templates/newsletter-5/header.png\" width=\"600\" height=\"31\" alt=\"---\" /></td>\r\n					</tr>\r\n					<tr class=\"acyeditor_delete\">\r\n						<td class=\"acyeditor_picture\" colspan=\"3\" width=\"600\" height=\"31\" valign=\"top\" style=\"line-height:0px; background-color:#ffffff\"><img src=\"media/com_acymailing/templates/newsletter-5/banner.png\" width=\"600\" height=\"217\" alt=\"banner\" /></td>\r\n					</tr>\r\n					<tr class=\"acyeditor_delete\">\r\n						<td colspan=\"3\" width=\"600\" height=\"31\" valign=\"top\" style=\"line-height:0px;\"><img src=\"media/com_acymailing/templates/newsletter-5/separator.png\" height=\"21\" width=\"600\" alt=\"---\" /></td>\r\n					</tr>\r\n				</table>\r\n			</td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td>\r\n				<table width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n					<tr>\r\n						<td width=\"30\" style=\"background-color:#ffffff\">&nbsp;</td>\r\n						<td class=\"acyeditor_text\" width=\"540\" style=\"text-align:justify; color:#575757; font-family:Times New Roman, Times, serif; font-size:13px; background-color:#ffffff\">\r\n							<h2>Interviews and reports</h2>\r\n							<span class=\"dark\">Lorem ipsum dolor sit amet, consectLorem ipsum dolor sit amet.</span><br/>\r\n							consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi. Vivamus elementum.ed elementum convallis mi. <a href=\"#\">Vivamus elementum</a>.Lorem ipsum dolor sit amet.<br/> <br/>\r\n							cLorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi. Vivamus elementum. <br /><br />\r\n							<span class=\"acymailing_readmore\">Read More</span>\r\n							<br /><br />\r\n\r\n							<h2>Journalism around the world</h2> <span class=\"dark\">Lorem ipsum dolor sit amet, consectLorem. consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum.</span> consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi. Vivamus elementum.ed elementum convallis mi. <br /><br />Vivamus elementum.<a href=\"#\">Lorem ipsum dolor</a> sit amet.Lorem ipsum dolor sit amet, consectetur adipiscing elit. <br /><br />\r\n							<span class=\"acymailing_readmore\">Read More</span>\r\n						</td>\r\n						<td width=\"30\" style=\"background-color:#ffffff\">&nbsp;</td>\r\n					</tr>\r\n				</table>\r\n			</td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td>\r\n				<table width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n					<tr>\r\n						<td width=\"600\" height=\"14\" style=\"background-color:#ffffff\"><img src=\"media/com_acymailing/templates/newsletter-5/footer1.png\" width=\"600\" height=\"14\" alt=\"--\" /></td>\r\n					</tr>\r\n					<tr>\r\n						<td width=\"600\" style=\"text-align:center; background-color:#ebebeb;  color:#454545; font-family:Times New Roman, Times, serif; font-size:13px\" height=\"25\" class=\"acyfooter acyeditor_text\"><a href=\"#\">www.mywebsite.com</a> |  <a href=\"#\">contact</a> | <a href=\"#\">Facebook</a> | <a href=\"#\">Twitter</a></td>\r\n					</tr>\r\n					<tr>\r\n						<td width=\"600\" height=\"7\" style=\"background-color:#454545;\"><img src=\"media/com_acymailing/templates/newsletter-5/footer2.png\" width=\"600\" height=\"7\" alt=\"--\" /></td>\r\n					</tr>\r\n				</table>\r\n			</td>\r\n		</tr>\r\n	</table>\r\n	<div class=\"acymailing_unsub acyeditor_delete acyeditor_text\">{unsubscribe}If you’re not interested any more  <strong>» unsubscribe</strong>{/unsubscribe}</div>\r\n</div>\r\n','',NULL,1,0,2,'newsletter-5','a:10:{s:6:\"tag_h1\";s:71:\"color:#454545 !important; font-size:24px; font-weight:bold; margin:0px;\";s:6:\"tag_h2\";s:145:\"color:#b20000 !important; font-size:18px; font-weight:bold; margin:0px; margin-bottom:10px; padding-bottom:4px; border-bottom: 1px solid #d6d6d6;\";s:6:\"tag_h3\";s:76:\"color:#b20101 !important; font-weight:bold; font-size:18px; margin:10px 0px;\";s:6:\"tag_h4\";s:67:\"color:#e52323 !important; font-weight:bold; margin:0px; padding:0px\";s:5:\"tag_a\";s:65:\"cursor:pointer; color:#9d0000; text-decoration:none; border:none;\";s:19:\"acymailing_readmore\";s:152:\"cursor:pointer; color:#ffffff; background-color:#9d0000; border-top:1px solid #9d0000; border-bottom:1px solid #9d0000; padding:3px 5px; font-size:13px;\";s:17:\"acymailing_online\";s:148:\"color:#dddddd; text-decoration:none; font-size:13px; margin:10px; text-align:center; font-family:Times New Roman, Times, serif; padding-bottom:10px;\";s:8:\"color_bg\";s:7:\"#454545\";s:18:\"acymailing_content\";s:0:\"\";s:16:\"acymailing_unsub\";s:131:\"color:#dddddd; text-decoration:none; font-size:13px; text-align:center; font-family:Times New Roman, Times, serif; padding-top:10px\";}',NULL,'.acyfooter a{\r\n	color:#454545;\r\n}\r\n.dark{\r\n	color:#454545;\r\n	font-weight:bold;\r\n}\r\ndiv,table,p{font-family:\"Times New Roman\", Times, serif;font-size:13px;color:#575757;}',NULL,NULL,NULL,NULL,'media/com_acymailing/templates/newsletter-5/newsletter-5.png',''),(3,'Build Bio','','<div style=\"width:100%; background-color:#3c3c3c; padding-bottom:20px; color:#ffffff;\" align=\"center\">\r\n	<div class=\"acymailing_online acyeditor_delete acyeditor_text\">{readonline}This e-mail contains graphics, if you don\'t see them <strong>»view it online.</strong>{/readonline}</div>\r\n	<table width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" style=\"margin:auto; background-color:#ffffff; color:#575757;\">\r\n		<tr>\r\n			<td>\r\n				<table width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n					<tr class=\"acyeditor_delete\">\r\n						<td colspan=\"3\" width=\"600\" height=\"41\" style=\"line-height:0px; background-color:#eeeeee\" valign=\"bottom\"><img src=\"media/com_acymailing/templates/newsletter-6/header.png\" width=\"600\" height=\"41\" alt=\"mail\"  /></td>\r\n					</tr>\r\n					<tr class=\"acyeditor_delete\">\r\n						<td class=\"acyeditor_picture\" width=\"250\" height=\"122\" style=\"line-height:0px; background-color:#ffffff\"><img src=\"media/com_acymailing/templates/newsletter-6/logo.png\" width=\"250\" height=\"122\" alt=\"logo\" /></td>\r\n						<td class=\"acyeditor_picture\" width=\"328\" height=\"122\" style=\"line-height:0px; background-color:#ffffff\"><img src=\"media/com_acymailing/templates/newsletter-6/banner.png\" width=\"328\" height=\"122\" alt=\"banner\" /></td>\r\n						<td width=\"22\" height=\"122\" style=\"background-color:#ffffff\">&nbsp;</td>\r\n					</tr>\r\n					<tr class=\"acyeditor_delete\">\r\n						<td width=\"250\" style=\"background-color:#b9cf00; color:#ffffff;\">&nbsp;</td>\r\n						<td class=\"acyeditor_text\" width=\"328\" height=\"25\" style=\"text-align:right; background-color:#b9cf00; color:#ffffff;\">Newsletter n°{mailid} - {date:3}</td>\r\n						<td width=\"22\" style=\"background-color:#b9cf00; color:#ffffff;\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td colspan=\"3\" width=\"600\" height=\"25\" style=\"background-color:#ffffff\">&nbsp;</td>\r\n					</tr>\r\n				</table>\r\n			</td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td>\r\n				<table width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n					<tr>\r\n						<td width=\"30\" style=\"background-color:#ffffff\">&nbsp;</td>\r\n						<td class=\"acyeditor_text\" width=\"540\" style=\"text-align:justify; color:#575757; background-color:#ffffff\"><span class=\"intro\">Hello {subtag:name},</span> <br/><br/>\r\n							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum Vivamus elementum. sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi.\r\n\r\n							<h2>Day One</h2>\r\n							<strong>Lorem ipsum dolor sit amet, consectLorem ipsum dolor sit amet.</strong><br />\r\n							consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed <a href=\"#\">elementum convallis</a> mi. Vivamus elementum.ed elementum convallis mi. Vivamus elementum.Lorem ipsum dolor sit amet. <br/><br/>\r\n							cLorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi. Vivamus elementum.\r\n							<br/><br/><span class=\"acymailing_readmore\">Read More</span>\r\n\r\n							<h2>How to build a green house</h2> <img src=\"media/com_acymailing/templates/newsletter-6/picture.png\" height=\"160\" width=\"193\" alt=\"picture\" style=\"float:left;\" />\r\n							<strong>Lorem ipsum dolor sit amet, elit.</strong> Aenean sollicitudin orci sit amet . Sed <a href=\"#\">elementum convallis</a> mi. Vivamus elementum.ed elementum convallis mi. Vivamus elementum.Lorem ipsum dolor sit amet. <br/><br/>\r\n							cLorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi. Vivamus elementum.\r\n							<br/><br/><span class=\"acymailing_readmore\">Read More</span>\r\n						</td>\r\n						<td width=\"30\" style=\"background-color:#ffffff\">&nbsp;</td>\r\n					</tr>\r\n				</table>\r\n			</td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td>\r\n				<table width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n					<tr>\r\n						<td width=\"18\" style=\"background-color:#ffffff\">&nbsp;</td>\r\n						<td width=\"523\" style=\"background-color:#ffffff\">&nbsp;</td>\r\n						<td width=\"59\" style=\"background-color:#ffffff\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td colspan=\"3\" width=\"600\" valign=\"top\" style=\"line-height:0px; background-color:#efefef;\"><img src=\"media/com_acymailing/templates/newsletter-6/footer1.png\" width=\"600\" height=\"18\" alt=\"--\"/></td>\r\n					</tr>\r\n					<tr>\r\n						<td width=\"18\" height=\"20\" style=\"line-height:0px; background-color:#efefef;\"><img src=\"media/com_acymailing/templates/newsletter-6/footer2.png\" height=\"20\" width=\"18\" alt=\"-\" /></td>\r\n						<td width=\"523\" style=\"text-align:right; background-color:#efefef; color:#575757;\" class=\"acyfooter acyeditor_text\"><a href=\"#\">www.mywebsite.com</a> |  <a href=\"#\">Contac</a>t</td>\r\n						<td width=\"59\" height=\"20\" style=\"line-height:0px; background-color:#efefef;\"><a href=\"#\"><img src=\"media/com_acymailing/templates/newsletter-6/mail.png\" width=\"59\" height=\"20\" alt=\"message\" style=\"border:none;\" /></a></td>\r\n					</tr>\r\n					<tr>\r\n						<td colspan=\"3\" width=\"600\" valign=\"top\" style=\"background-color:#3c3c3c; line-height:0px;\"><img src=\"media/com_acymailing/templates/newsletter-6/footer4.png\" height=\"24\" width=\"600\" alt=\"--\"/></td>\r\n					</tr>\r\n				</table>\r\n			</td>\r\n		</tr>\r\n	</table>\r\n	<div class=\"acymailing_unsub acyeditor_delete acyeditor_text\">\r\n		{unsubscribe}If you’re not interested any more  <strong>» unsubscribe</strong>{/unsubscribe}\r\n	</div>\r\n</div>\r\n','',NULL,1,0,3,'newsletter-6','a:9:{s:6:\"tag_h1\";s:69:\"font-weight:bold; font-size:14px;color:#3c3c3c !important;margin:0px;\";s:6:\"tag_h2\";s:129:\"color:#b9cf00 !important; font-size:14px; font-weight:bold; margin-top:20px; border-bottom:1px solid #d6d6d6; padding-bottom:4px;\";s:6:\"tag_h3\";s:149:\"color:#7e7e7e !important; font-size:14px; font-weight:bold; margin:20px 0px 0px 0px; border-bottom:1px solid #d6d6d6; padding-bottom:0px 0px 4px 0px;\";s:6:\"tag_h4\";s:84:\"color:#879700 !important; font-size:12px; font-weight:bold; margin:0px; padding:0px;\";s:8:\"color_bg\";s:7:\"#3c3c3c\";s:5:\"tag_a\";s:65:\"cursor:pointer; color:#a2b500; text-decoration:none; border:none;\";s:17:\"acymailing_online\";s:91:\"color:#dddddd; text-decoration:none; font-size:11px; text-align:center; padding-bottom:10px\";s:16:\"acymailing_unsub\";s:88:\"color:#dddddd; text-decoration:none; font-size:11px; text-align:center; padding-top:10px\";s:19:\"acymailing_readmore\";s:73:\"cursor:pointer; color:#ffffff; background-color:#b9cf00; padding:3px 5px;\";}',NULL,'table, div, p{\r\n	font-family: Verdana, Arial, Helvetica, sans-serif;\r\n	font-size:11px;\r\n	color:#575757;\r\n}\r\n.intro{\r\n	font-weight:bold;\r\n	font-size:12px;}\r\n\r\n.acyfooter a{\r\n	color:#575757;}\r\n',NULL,NULL,NULL,NULL,'media/com_acymailing/templates/newsletter-6/newsletter-6.png','');
/*!40000 ALTER TABLE `ujcu6_acymailing_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_acymailing_url`
--

DROP TABLE IF EXISTS `ujcu6_acymailing_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_acymailing_url` (
  `urlid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`urlid`),
  KEY `url` (`url`(250))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_acymailing_url`
--

LOCK TABLES `ujcu6_acymailing_url` WRITE;
/*!40000 ALTER TABLE `ujcu6_acymailing_url` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_acymailing_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_acymailing_urlclick`
--

DROP TABLE IF EXISTS `ujcu6_acymailing_urlclick`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_acymailing_urlclick` (
  `urlid` int(10) unsigned NOT NULL,
  `mailid` mediumint(8) unsigned NOT NULL,
  `click` smallint(5) unsigned NOT NULL DEFAULT '0',
  `subid` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`urlid`,`mailid`,`subid`),
  KEY `dateindex` (`date`),
  KEY `mailidindex` (`mailid`),
  KEY `subidindex` (`subid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_acymailing_urlclick`
--

LOCK TABLES `ujcu6_acymailing_urlclick` WRITE;
/*!40000 ALTER TABLE `ujcu6_acymailing_urlclick` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_acymailing_urlclick` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_acymailing_userstats`
--

DROP TABLE IF EXISTS `ujcu6_acymailing_userstats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_acymailing_userstats` (
  `mailid` mediumint(8) unsigned NOT NULL,
  `subid` int(10) unsigned NOT NULL,
  `html` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `sent` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `senddate` int(10) unsigned NOT NULL,
  `open` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `opendate` int(11) NOT NULL,
  `bounce` tinyint(4) NOT NULL DEFAULT '0',
  `fail` tinyint(4) NOT NULL DEFAULT '0',
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`mailid`,`subid`),
  KEY `senddateindex` (`senddate`),
  KEY `subidindex` (`subid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_acymailing_userstats`
--

LOCK TABLES `ujcu6_acymailing_userstats` WRITE;
/*!40000 ALTER TABLE `ujcu6_acymailing_userstats` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_acymailing_userstats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_assets`
--

DROP TABLE IF EXISTS `ujcu6_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_assets`
--

LOCK TABLES `ujcu6_assets` WRITE;
/*!40000 ALTER TABLE `ujcu6_assets` DISABLE KEYS */;
INSERT INTO `ujcu6_assets` VALUES (1,0,1,151,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(2,1,1,2,1,'com_admin','com_admin','{}'),(3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(6,1,11,12,1,'com_config','com_config','{}'),(7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(8,1,17,78,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(9,1,79,80,1,'com_cpanel','com_cpanel','{}'),(10,1,81,82,1,'com_installer','com_installer','{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),(11,1,83,84,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(12,1,85,86,1,'com_login','com_login','{}'),(13,1,87,88,1,'com_mailto','com_mailto','{}'),(14,1,89,90,1,'com_massmail','com_massmail','{}'),(15,1,91,92,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),(16,1,93,94,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(17,1,95,96,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(18,1,97,110,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(19,1,111,114,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(20,1,115,116,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(21,1,117,118,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}'),(22,1,119,120,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(23,1,121,122,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(24,1,123,126,1,'com_users','com_users','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(25,1,127,130,1,'com_weblinks','com_weblinks','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(26,1,131,132,1,'com_wrapper','com_wrapper','{}'),(27,8,18,21,2,'com_content.category.2','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(28,3,4,5,2,'com_banners.category.3','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(29,7,14,15,2,'com_contact.category.4','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(30,19,112,113,2,'com_newsfeeds.category.5','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(31,25,128,129,2,'com_weblinks.category.6','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(32,24,124,125,1,'com_users.category.7','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(33,1,133,134,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(34,1,135,136,1,'com_joomlaupdate','com_joomlaupdate','{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(35,37,67,76,3,'com_content.category.8','Joomla','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(36,35,68,69,4,'com_content.article.1','The Joomla! Community','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(37,8,22,77,2,'com_content.category.9','Sample Data Article','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(38,37,23,66,3,'com_content.category.10','Demo','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(39,38,24,25,4,'com_content.article.2','Module Variations','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(40,38,26,43,4,'com_content.category.11','Shortcode','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(41,40,27,28,5,'com_content.article.3','Accordion','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(42,40,29,30,5,'com_content.article.4','Carousel','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(43,40,31,32,5,'com_content.article.5','Tab','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(44,40,33,34,5,'com_content.article.6','Map','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(45,40,35,36,5,'com_content.article.7','Testimonial ','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(47,40,37,38,5,'com_content.article.9','Button','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(48,40,39,40,5,'com_content.article.10','Icon','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(51,38,44,45,4,'com_content.article.13','Article','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(52,38,46,47,4,'com_content.article.14','Typography','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(54,40,41,42,5,'com_content.article.16','Gallery','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(55,38,48,49,4,'com_content.article.17','Video','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(56,38,50,51,4,'com_content.article.18','Module Position','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(57,35,70,71,4,'com_content.article.19','The Joomla Blog','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(58,35,72,73,4,'com_content.article.20','The Joomla overview','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(59,35,74,75,4,'com_content.article.21','The Joomla Help','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(63,38,52,53,4,'com_content.article.25','Cross Browser','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(65,1,137,138,1,'com_k2','com_k2','{\"core.admin\":[],\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(77,38,54,55,4,'com_content.article.37','About Us','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(78,38,56,57,4,'com_content.article.38','Pricing Table','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(79,38,58,59,4,'com_content.article.39','Portfolio','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(80,38,60,61,4,'com_content.article.40','Service','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(82,27,19,20,3,'com_content.article.42','Presets','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(83,38,62,63,4,'com_content.article.43','Home','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(84,1,139,140,1,'com_acymailing','acymailing','{}'),(85,38,64,65,4,'com_content.article.44','Short-code','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(86,1,141,142,1,'com_tags','com_tags','{}'),(87,1,143,144,1,'com_contenthistory','com_contenthistory','{}'),(88,1,145,146,1,'com_ajax','com_ajax','{}'),(89,1,147,148,1,'com_postinstall','com_postinstall','{}'),(90,18,98,99,2,'com_modules.module.145','Clients','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(91,18,100,101,2,'com_modules.module.174','Bottom','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(92,18,102,103,2,'com_modules.module.116','SP Smart Slider','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(93,18,104,105,2,'com_modules.module.175','Footer menu','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(94,18,106,107,2,'com_modules.module.211','Fox Contact',''),(95,1,149,150,1,'com_foxcontact','com_foxcontact','{}'),(96,18,108,109,2,'com_modules.module.212','contatto','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
/*!40000 ALTER TABLE `ujcu6_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_associations`
--

DROP TABLE IF EXISTS `ujcu6_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_associations`
--

LOCK TABLES `ujcu6_associations` WRITE;
/*!40000 ALTER TABLE `ujcu6_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_banner_clients`
--

DROP TABLE IF EXISTS `ujcu6_banner_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_banner_clients`
--

LOCK TABLES `ujcu6_banner_clients` WRITE;
/*!40000 ALTER TABLE `ujcu6_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_banner_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_banner_tracks`
--

DROP TABLE IF EXISTS `ujcu6_banner_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_banner_tracks`
--

LOCK TABLES `ujcu6_banner_tracks` WRITE;
/*!40000 ALTER TABLE `ujcu6_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_banner_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_banners`
--

DROP TABLE IF EXISTS `ujcu6_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_banners`
--

LOCK TABLES `ujcu6_banners` WRITE;
/*!40000 ALTER TABLE `ujcu6_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_categories`
--

DROP TABLE IF EXISTS `ujcu6_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_categories`
--

LOCK TABLES `ujcu6_categories` WRITE;
/*!40000 ALTER TABLE `ujcu6_categories` DISABLE KEYS */;
INSERT INTO `ujcu6_categories` VALUES (1,0,0,0,21,0,'','system','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','',236,'2009-10-18 16:07:09',0,'0000-00-00 00:00:00',0,'*',1),(2,27,1,1,2,1,'uncategorised','com_content','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',236,'2010-06-28 13:26:37',0,'0000-00-00 00:00:00',0,'*',1),(3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\",\"foobar\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',236,'2010-06-28 13:27:35',0,'0000-00-00 00:00:00',0,'*',1),(4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',236,'2010-06-28 13:27:57',0,'0000-00-00 00:00:00',0,'*',1),(5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',236,'2010-06-28 13:28:15',0,'0000-00-00 00:00:00',0,'*',1),(6,31,1,9,10,1,'uncategorised','com_weblinks','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',236,'2010-06-28 13:28:33',0,'0000-00-00 00:00:00',0,'*',1),(7,32,1,11,12,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',236,'2010-06-28 13:28:33',0,'0000-00-00 00:00:00',0,'*',1),(8,35,9,18,19,2,'sample-data-article/joomla','com_content','Joomla','joomla','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',236,'2013-01-31 07:26:07',439,'2013-01-31 08:00:22',1,'*',1),(9,37,1,13,20,1,'sample-data-article','com_content','Sample Data Article','sample-data-article','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',236,'2013-01-31 07:51:48',0,'0000-00-00 00:00:00',0,'*',1),(10,38,9,14,17,2,'sample-data-article/demo','com_content','Demo','demo','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',236,'2013-01-31 07:52:06',0,'0000-00-00 00:00:00',0,'*',1),(11,40,10,15,16,3,'sample-data-article/demo/short-code','com_content','Shortcode','short-code','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',236,'2013-01-31 08:00:08',0,'0000-00-00 00:00:00',0,'*',1);
/*!40000 ALTER TABLE `ujcu6_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_contact_details`
--

DROP TABLE IF EXISTS `ujcu6_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_contact_details`
--

LOCK TABLES `ujcu6_contact_details` WRITE;
/*!40000 ALTER TABLE `ujcu6_contact_details` DISABLE KEYS */;
INSERT INTO `ujcu6_contact_details` VALUES (1,'Send us a Feedback','contact-us','Web Developer','1209 Willow Oaks Lane','New York','Lafayette','United States','1200','+088123456','415-255-8156','','','email@example.com',0,1,0,'0000-00-00 00:00:00',1,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"1\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"0\",\"linka_name\":\"Facebook\",\"linka\":\"http:\\/\\/www.facebook.com\\/joomla\",\"linkb_name\":\"Twitter\",\"linkb\":\"http:\\/\\/twitter.com\\/joomla\",\"linkc_name\":\"\",\"linkc\":null,\"linkd_name\":\"\",\"linkd\":null,\"linke_name\":\"\",\"linke\":\"\",\"contact_layout\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}',0,4,1,'632746238745','http://www.joomshaper.com','','','','*','2013-01-31 07:52:56',236,'','2013-04-30 10:11:29',236,'','','{\"robots\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0);
/*!40000 ALTER TABLE `ujcu6_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_content`
--

DROP TABLE IF EXISTS `ujcu6_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_content`
--

LOCK TABLES `ujcu6_content` WRITE;
/*!40000 ALTER TABLE `ujcu6_content` DISABLE KEYS */;
INSERT INTO `ujcu6_content` VALUES (1,36,'The Joomla! Community','the-joomla-community','<p>Joomla! means All Together, and it is a community of people all working and having fun together that makes Joomla! possible. Thousands of people each year participate in the Joomla! community, and we hope you will be one of them.</p>\r\n<p>People with all kinds of skills, of all skill levels and from around the world are welcome to join in. Participate in the <a href=\"http://joomla.org\">Joomla.org</a> family of websites (the<a href=\"http://forum.joomla.org\"> forum </a>is a great place to start). Come to a <a href=\"http://community.joomla.org/events.html\">Joomla! event</a>. Join or start a <a href=\"http://community.joomla.org/user-groups.html\">Joomla! Users Group</a>. Whether you are a developer, site administrator, designer, end user or fan, there are ways for you to participate and contribute.</p>','',1,8,'2013-01-31 07:27:02',236,'','2013-01-31 09:03:15',439,0,'0000-00-00 00:00:00','2013-01-31 07:27:02','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,3,'','',1,138,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(2,39,'Module Variations','module-variations','<p>Welcome to <strong>Shaper Minima </strong>template. This is the premium template for Joomla based on Helix Framework V2.We used some module variation to make it more flexible for users. Just use module class suffix example (dark,blue,green).</p>','',1,10,'2013-01-31 07:53:08',236,'','2013-05-07 08:06:44',236,0,'0000-00-00 00:00:00','2013-01-31 07:53:08','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',7,11,'','',1,656,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(3,41,'Accordion','sc-accordion','<p>[accordion id=\"sc-accordion\"] [accordion_item title=\'Item 1\']Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare consectetur sodales. Nulla luctus cursus mauris at dapibus. Cras ac felis et neque consequat elementum a eget turpis. Aliquam erat volutpat. Integer feugiat sem eu ligula vulputate consequat. Nulla facilisi. Cras vel elit lectus, at fringilla lorem.[/accordion_item] [accordion_item title=\'Item 2\']consectetur adipiscing elit. Proin ornare consectetur sodales. Nulla luctus cursus mauris at dapibus. Cras ac felis et neque consequat elementum a eget turpis. Aliquam erat volutpat. Integer feugiat sem eu ligula vulputate consequat. Nulla facilisi. Cras vel elit lectus, at fringilla lorem.[/accordion_item] [accordion_item title=\'Item 3\'] Proin ornare consectetur sodales. Nulla luctus cursus mauris at dapibus. Cras ac felis et neque consequat elementum a eget turpis. Aliquam erat volutpat. Integer feugiat sem eu ligula vulputate consequat. Nulla facilisi. Cras vel elit lectus, at fringilla lorem.[/accordion_item] [/accordion]</p>\r\n<h3>Get the code</h3>\r\n<pre>[[accordion] <br />    [accordion_item title=\'ITEM_TITLE\']ADD_CONTENT_HERE[/accordion_item]<br />    [accordion_item title=\'ITEM_TITLE\']ADD_CONTENT_HERE[/accordion_item] <br />    [accordion_item title=\'ITEM_TITLE\']ADD_CONTENT_HERE[/accordion_item]<br />[/accordion]]</pre>','',1,11,'2013-01-31 08:07:29',236,'','2013-02-04 09:56:46',439,0,'0000-00-00 00:00:00','2013-01-31 08:07:29','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',11,9,'','',1,64,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(4,42,'Carousel','sc-carousel','<p>[carousel]</p>\r\n<p>[carousel_item]</p>\r\n<p><img src=\"http://twitter.github.com/bootstrap/assets/img/examples/slide-01.jpg\" border=\"0\" width=\"1500\" height=\"550\" /></p>\r\n<p>[caption]</p>\r\n<p>Powerful templates framework to develop Joomla base website faster!</p>\r\n<p>[/caption]</p>\r\n<p>[/carousel_item]</p>\r\n<p>[carousel_item]</p>\r\n<p><img src=\"http://twitter.github.com/bootstrap/assets/img/examples/slide-02.jpg\" border=\"0\" width=\"1500\" height=\"550\" style=\"border: 0;\" /></p>\r\n<p>[caption]</p>\r\n<p>Powerful templates framework to develop Joomla base website faster!</p>\r\n<p>[/caption]</p>\r\n<p>[/carousel_item]</p>\r\n<p>[carousel_item]</p>\r\n<p><img src=\"http://twitter.github.com/bootstrap/assets/img/examples/slide-03.jpg\" border=\"0\" width=\"1500\" height=\"550\" style=\"border: 0;\" /></p>\r\n<p>[caption]</p>\r\n<p>Powerful templates framework to develop Joomla base website faster!</p>\r\n<p>[/caption]</p>\r\n<p>[/carousel_item]</p>\r\n<p>[/carousel]</p>\r\n<h3>Get the code</h3>\r\n<pre>[[carousel]\r\n[carousel_item]add image here [caption]Powerful templates framework to develop Joomla base website faster![/caption][/carousel_item]\r\n[/carousel]]</pre>','',1,11,'2013-01-31 08:39:47',236,'','2013-02-05 10:31:47',439,0,'0000-00-00 00:00:00','2013-01-31 08:39:47','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',21,8,'','',1,97,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(5,43,'Tab','tab','<p>[row]</p>\r\n<p>[col class=\"span6\"]</p>\r\n<p>[tab id=\"tab1\" class=\"tabbale\" button=\"nav-tabs\"] [tab_item title=\"Tab1\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare consectetur sodales. Nulla luctus cursus mauris at dapibus. Cras ac felis et neque consequat elementum a eget turpis. Aliquam erat volutpat. Integer feugiat sem eu ligula vulputate consequat. Nulla facilisi. Cras vel elit lectus, at fringilla lorem.[/tab_item] [tab_item title=\"Tab2\"]consectetur adipiscing elit. Proin ornare consectetur sodales. Nulla luctus cursus mauris at dapibus. Cras ac felis et neque consequat elementum a eget turpis. Aliquam erat volutpat. Integer feugiat sem eu ligula vulputate consequat. Nulla facilisi. Cras vel elit lectus, at fringilla lorem.[/tab_item] [tab_item title=\"Tab3\"]consectetur adipiscing elit. Proin ornare consectetur sodales. Nulla luctus cursus mauris at dapibus. Cras ac felis et neque consequat elementum a eget turpis. Aliquam erat volutpat. Integer feugiat sem eu ligula vulputate consequat. Nulla facilisi. Cras vel elit lectus, at fringilla lorem.[/tab_item][/tab]</p>\r\n<p>[/col]</p>\r\n<p>[col class=\"span6\"]</p>\r\n<p>[tab id=\"tab2\" class=\"tabbale tab-pill\" button=\"nav-pills\"] [tab_item title=\"Tab1\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare consectetur sodales. Nulla luctus cursus mauris at dapibus. Cras ac felis et neque consequat elementum a eget turpis. Aliquam erat volutpat. Integer feugiat sem eu ligula vulputate consequat. Nulla facilisi. Cras vel elit lectus, at fringilla lorem.[/tab_item] [tab_item title=\"Tab2\"]consectetur adipiscing elit. Proin ornare consectetur sodales. Nulla luctus cursus mauris at dapibus. Cras ac felis et neque consequat elementum a eget turpis. Aliquam erat volutpat. Integer feugiat sem eu ligula vulputate consequat. Nulla facilisi. Cras vel elit lectus, at fringilla lorem.[/tab_item] [tab_item title=\"Tab3\"]consectetur adipiscing elit. Proin ornare consectetur sodales. Nulla luctus cursus mauris at dapibus. Cras ac felis et neque consequat elementum a eget turpis. Aliquam erat volutpat. Integer feugiat sem eu ligula vulputate consequat. Nulla facilisi. Cras vel elit lectus, at fringilla lorem.[/tab_item][/tab]</p>\r\n<p>[/col]</p>\r\n<p>[/row]</p>\r\n<h3>Get the code</h3>\r\n<pre>[[tab] \r\n[tab_item title=\"ITEM_TITLE\"]ADD_CONTENT_HERE[/tab_item ]\r\n[tab_item title=\"ITEM_TITLE\"]ADD_CONTENT_HERE[/tab_item ] \r\n[tab_item title=\"ITEM_TITLE\"]ADD_CONTENT_HERE[/tab_item ]\r\n[/tab]]\r\n</pre>','',1,11,'2013-01-31 08:51:31',236,'','2013-05-06 08:56:42',236,0,'0000-00-00 00:00:00','2013-01-31 08:51:31','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',11,7,'','',1,77,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(6,44,'Map','sc-map','<p>[spmap lat=\"23.743193\" lng=\"90.388281\" zoom=\"8\" maptype=\"ROADMAP\"]</p>\r\n<h3>Get the code</h3>\r\n<pre>[[spmap lat=\"LATITUDE\" lng=\"LONGITUDE\" zoom=\"VALUE 1 to 10\"]]</pre>','',1,11,'2013-01-31 09:06:35',236,'','2013-06-27 11:28:20',236,0,'0000-00-00 00:00:00','2013-01-31 09:06:35','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',11,6,'','',1,33,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\",\"tags\":null}',0,'*',''),(7,45,'Testimonial ','testimonial','<p>[testimonial name=\"John Doe\" email=\"jakirhasaneng@gmail.com\" company=\"joomshaper\" designation=\"Developer\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum venenatis, felis a semper mollis, mauris mi suscipit dui, non laoreet diam enim et turpis. Sed imperdiet ultrices felis, at ultricies tellus consequat a. Proin condimentum porttitor eros, vitae facilisis sapien rhoncus vitae. Aliquam dapibus elit non metus posuere blandit. Phasellus a aliquam urna. Aliquam ac massa tellus, a semper odio. In hac habitasse platea dictumst. Integer tincidunt, nisi quis congue consectetur, lacus augue scelerisque enim, eu vehicula neque tortor ac risus. Nunc mollis interdum iaculis. [/testimonial]</p>\r\n<h3>Get the code</h3>\r\n<pre>[[testimonial name=\"AUTHOR_NAME\" email=\"AUTHOR_EMAIL\" company=\"AUTHOR_COMPANY\" designation=\"AUTHOR_DESIGNATION\"]ADD_CONTENT_HERE[/testimonial]]</pre>','',1,11,'2013-01-31 09:09:00',236,'','2013-01-31 09:49:51',439,0,'0000-00-00 00:00:00','2013-01-31 09:09:00','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',8,5,'','',1,42,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(9,47,'Button','sc-button','<p>[row] [col class=\"span6\"] [button type=\"default\" size=\"\" link=\"#\"]Default[/button]</p>\r\n<p>[button type=\"primary\" size=\"\" link=\"#\"]Primary[/button]</p>\r\n<p>[button type=\"info\" size=\"\" link=\"#\"]Info[/button]</p>\r\n<p>[button type=\"success\" size=\"\" link=\"#\"]Success[/button]</p>\r\n<p>[button type=\"warning\" size=\"\" link=\"#\"]Warning[/button]</p>\r\n<p>[button type=\"danger\" size=\"\" link=\"#\"]danger[/button]</p>\r\n<p>[button type=\"inverse\" size=\"\" link=\"#\"]Inverse[/button]</p>\r\n<p>[button type=\"block btn-primary\" size=\"large\" link=\"#\"]Block level button[/button] [/col] [col class=\"span6\"] [button type=\"default\" size=\"large\" link=\"#\"]Large button[/button]</p>\r\n<p>[button type=\"primary\" size=\"large\" link=\"#\"]Large button[/button]</p>\r\n<p>[button type=\"default\" size=\"\" link=\"#\"]Default button[/button]</p>\r\n<p>[button type=\"primary\" size=\"\" link=\"#\"]Default button[/button]</p>\r\n<p>[button type=\"default\" size=\"small\" link=\"#\"]Small button[/button]</p>\r\n<p>[button type=\"primary\" size=\"small\" link=\"#\"]Small button[/button]</p>\r\n<p>[button type=\"default\" size=\"mini\" link=\"#\"]Mini button[/button]</p>\r\n<p>[button type=\"primary\" size=\"mini\" link=\"#\"]Mini button[/button] [/col] [/row]</p>\r\n<h3>Get the code</h3>\r\n<pre>[[button type=\"BUTTON_TYPE\"]...[/button]]\r\n</pre>','',1,11,'2013-01-31 09:16:06',236,'','2013-04-09 12:50:03',236,0,'0000-00-00 00:00:00','2013-01-31 09:16:06','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',5,3,'','',1,100,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(10,48,'Icon','sc-icon','<p>[fontawesome_icons]</p>','',1,11,'2013-01-31 09:26:14',236,'','2013-11-11 11:18:18',236,0,'0000-00-00 00:00:00','2013-01-31 09:26:14','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',9,2,'','',1,45,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(13,51,'Article','article','<ul>\r\n<li>This is a sample <strong>unordered list</strong></li>\r\n</ul>\r\n<ul class=\"arrow\">\r\n<li>ul with class <strong>arrow</strong></li>\r\n</ul>\r\n<ul class=\"arrow-2\">\r\n<li>ul with class <strong>arrow-2</strong></li>\r\n</ul>\r\n<ul class=\"star\">\r\n<li>ul with class <strong>star</strong></li>\r\n</ul>\r\n<ul class=\"rss\">\r\n<li>ul with class <strong>rss</strong></li>\r\n</ul>','',1,10,'2013-01-31 11:56:10',236,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2013-01-31 11:56:10','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,10,'','',1,7,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(14,52,'Typography','typgraphy','<p>[row]</p>\r\n<p>[col class=\"span6\"]</p>\r\n<h1>h1. Heading 1</h1>\r\n<h2>h2. Heading 2</h2>\r\n<h3>h3. Heading 3</h3>\r\n<h4>h4. Heading 4</h4>\r\n<h5>h5. Heading 5</h5>\r\n<h6>h6. Heading 6</h6>\r\n<p>[/col]</p>\r\n<p>[col class=\"span6\"]</p>\r\n<h3>Dropcap</h3>\r\n<p>[dropcap]This is a Magazine Style Drop Cap. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.[/dropcap]</p>\r\n<pre>[[dropcap]Dropcap Texts[/dropcap]]</pre>\r\n<p>[/col]</p>\r\n<p>[/row]</p>\r\n<p>[row]</p>\r\n<h3>Lists example</h3>\r\n<p>[col class=\"span6\"]</p>\r\n<ul>\r\n<li>This is a sample <strong>unordered list</strong></li>\r\n</ul>\r\n<ul class=\"arrow\">\r\n<li>ul with class <strong>arrow</strong></li>\r\n</ul>\r\n<ul class=\"arrow-double\">\r\n<li>ul with class <strong>arrow-double</strong></li>\r\n</ul>\r\n<ul class=\"tick\">\r\n<li>ul with class <strong>tick</strong></li>\r\n</ul>\r\n<ul class=\"cross\">\r\n<li>ul with class <strong>cross</strong></li>\r\n</ul>\r\n<ul class=\"star\">\r\n<li>ul with class <strong>star</strong></li>\r\n</ul>\r\n<ul class=\"rss\">\r\n<li>ul with class <strong>rss</strong></li>\r\n</ul>\r\n<p>[/col]</p>\r\n<p>[col class=\"span6\"]</p>\r\n<ol>\r\n<li>This is a sample <strong>ordered list</strong></li>\r\n</ol>\r\n<ul class=\"arrow\">\r\n<li>ul with class <strong>arrow</strong></li>\r\n</ul>\r\n<ul class=\"arrow-double\">\r\n<li>ul with class <strong>arrow-double</strong></li>\r\n</ul>\r\n<ul class=\"tick\">\r\n<li>ul with class <strong>tick</strong></li>\r\n</ul>\r\n<ul class=\"cross\">\r\n<li>ul with class <strong>cross</strong></li>\r\n</ul>\r\n<ul class=\"star\">\r\n<li>ul with class <strong>star</strong></li>\r\n</ul>\r\n<ul class=\"rss\">\r\n<li>ul with class <strong>rss</strong></li>\r\n</ul>\r\n<p>[/col]</p>\r\n<p>[/row]</p>\r\n<h3>Block Number</h3>\r\n<p>[row][col class=\"span4\"] [blocknumber type=\"circle\" text=\"01\" color=\"#FFF\" background=\"#34bcf5\"]Lorem ipsum dolor sit amet consectetuer rutrum dignissim et neque id.[/blocknumber]</p>\r\n<p>[blocknumber type=\"circle\" text=\"02\" color=\"#FFF\" background=\"#aacb24\"]Lorem ipsum dolor sit amet consectetuer rutrum dignissim et neque id.[/blocknumber]</p>\r\n<p>[blocknumber type=\"circle\" text=\"03\" color=\"#FFF\" background=\"#f16a10\"]Lorem ipsum dolor sit amet consectetuer rutrum dignissim et neque id.[/blocknumber]</p>\r\n<pre>[[blocknumber type=\"circle\" text=\"01\" color=\"#FFF\" background=\"#f16a10\"]Circle Block Number[/blocknumber]]</pre>\r\n<p>[/col]</p>\r\n<p>[col class=\"span4\"] [blocknumber type=\"rounded\" text=\"01\" color=\"#FFF\" background=\"#7d2828\"]Lorem ipsum dolor sit amet consectetuer rutrum dignissim et neque id.[/blocknumber]</p>\r\n<p>[blocknumber type=\"rounded\" text=\"02\" color=\"#FFF\" background=\"#d80000\"]Lorem ipsum dolor sit amet consectetuer rutrum dignissim et neque id.[/blocknumber]</p>\r\n<p>[blocknumber type=\"rounded\" text=\"03\" color=\"#FFF\" background=\"#329491\"]Lorem ipsum dolor sit amet consectetuer rutrum dignissim et neque id.[/blocknumber]</p>\r\n<pre>[[blocknumber type=\"rounded\" text=\"01\" color=\"#FFF\" background=\"#329491\"]Rounded Block Number[/blocknumber]]</pre>\r\n<p>[/col]</p>\r\n<p>[col class=\"span4\"] [blocknumber text=\"01\" color=\"#FFF\" background=\"#999\"]Lorem ipsum dolor sit amet consectetuer rutrum dignissim et neque id.[/blocknumber]</p>\r\n<p>[blocknumber text=\"02\" color=\"#FFF\" background=\"#666\"]Lorem ipsum dolor sit amet consectetuer rutrum dignissim et neque id.[/blocknumber]</p>\r\n<p>[blocknumber text=\"03\" color=\"#FFF\" background=\"#000\"]Lorem ipsum dolor sit amet consectetuer rutrum dignissim et neque id.[/blocknumber]</p>\r\n<pre>[[blocknumber text=\"01\" color=\"#FFF\" background=\"#999\"]Normal Block Number[/blocknumber]]</pre>\r\n<p>[/col]<span style=\"line-height: 1.3em;\">[/row]</span></p>\r\n<h3>Block Examples </h3>\r\n<p>[row][col class=\"span4\"]</p>\r\n<p>[block color=\"#FFF\" background=\"#34bcf5\"]Lorem ipsum dolor sit amet, sic genero nomine Piscatore mihi. Dicis Deducitur potest flens praemio quod non dum veniens indica enim.[/block]</p>\r\n<p>[block color=\"#FFF\" background=\"#aacb24\"]Lorem ipsum dolor sit amet, sic genero nomine Piscatore mihi. Dicis Deducitur potest flens praemio quod non dum veniens indica enim.[/block]</p>\r\n<p>[block color=\"#FFF\" background=\"#f16a10\"]Lorem ipsum dolor sit amet, sic genero nomine Piscatore mihi. Dicis Deducitur potest flens praemio quod non dum veniens indica enim.[/block]</p>\r\n<pre>[[block color=\"#FFF\" background=\"#f16a10\"]Content[/block]]</pre>\r\n<p>[/col]</p>\r\n<p>[col class=\"span4\"]</p>\r\n<p>[block type=\"rounded\" color=\"#FFF\" background=\"#7d2828\"]Lorem ipsum dolor sit amet, sic genero nomine Piscatore mihi. Dicis Deducitur potest flens praemio quod non dum veniens indica enim.[/block]</p>\r\n<p>[block type=\"rounded\" color=\"#FFF\" background=\"#329491\"]Lorem ipsum dolor sit amet, sic genero nomine Piscatore mihi. Dicis Deducitur potest flens praemio quod non dum veniens indica enim.[/block]</p>\r\n<p>[block type=\"rounded\" color=\"#FFF\" background=\"#000000\"]Lorem ipsum dolor sit amet, sic genero nomine Piscatore mihi. Dicis Deducitur potest flens praemio quod non dum veniens indica enim.[/block]</p>\r\n<pre>[[block type=\"rounded\" color=\"#FFF\" background=\"#000000\"]Lorem ipsum dolor[/block]]</pre>\r\n<p>[/col]</p>\r\n<p>[col class=\"span4\"]</p>\r\n<p>[block border=\"1px dashed #CCC\" padding=\"14px 15px\"]Lorem ipsum dolor sit amet, sic genero nomine Piscatore mihi. Dicis Deducitur potest flens praemio quod non dum veniens indica enim.[/block]</p>\r\n<p>[block border=\"3px solid #34bcf5\" padding=\"12px 15px\"]Lorem ipsum dolor sit amet, sic genero nomine Piscatore mihi. Dicis Deducitur potest flens praemio quod non dum veniens indica enim.[/block]</p>\r\n<p>[block type=\"rounded\" border=\"5px solid #aacb24\" padding=\"10px 15px\"]Lorem ipsum dolor sit amet, sic genero nomine Piscatore mihi. Dicis Deducitur potest flens praemio quod non dum veniens indica enim.[/block]</p>\r\n<pre>[[block border=\"5px solid #aacb24\" padding=\"10px 15px\"]Lorem ipsum dolor[/block]]</pre>\r\n<p>[/col]</p>\r\n<p>[/row]</p>\r\n<h3>Bubble Examples</h3>\r\n<p>[row][col class=\"span4\"]</p>\r\n<p><span style=\"line-height: 1.3em;\">[bubble author=\"Betty D. Steward\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ligula orci, ullamcorper vitae sodales venenatis, feugiat et felis. Donec non dui velit, a posuere dui.[/bubble]</span></p>\r\n<p><span style=\"line-height: 1.3em;\">[/col][col class=\"span4\"]</span></p>\r\n<p><span style=\"line-height: 1.3em;\">[bubble color=\"#FFF\" background=\"#736357\" author=\"Barbara J. Pennebaker\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ligula orci, ullamcorper vitae sodales venenatis, feugiat et felis. Donec non dui velit, a posuere dui.[/bubble]</span></p>\r\n<p><span style=\"line-height: 1.3em;\">[/col]</span><span style=\"line-height: 1.3em;\">[col class=\"span4\"]</span></p>\r\n<p><span style=\"line-height: 1.3em;\">[bubble background=\"transparent\" border=\"3px solid #ccc\" author=\"Chad M. Simmons\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ligula orci, ullamcorper vitae sodales venenatis, feugiat et felis. Donec non dui.[/bubble]</span></p>\r\n<p><span>[/col]</span></p>\r\n<p><span style=\"line-height: 1.3em;\">[/row]</span></p>\r\n<p><span style=\"line-height: 1.3em;\">[row][col class=\"span12\"]</span></p>\r\n<p> </p>\r\n<pre>[[bubble background=\"#FFF\" color=\"#666\" border=\"3px solid #ccc\" author=\"Chad M. Simmons\"]Lorem ipsum dolor sit amet.[/bubble]]</pre>\r\n<p><span style=\"line-height: 1.3em;\">[/col]</span><span style=\"line-height: 1.3em;\">[/row]</span></p>','',1,10,'2013-01-31 11:57:09',236,'','2013-02-14 11:14:05',439,0,'0000-00-00 00:00:00','2013-01-31 11:57:09','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',91,9,'','',1,607,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(16,54,'Gallery','gallery','<p>[gallery columns=\"4\" filter=\"yes\"]</p>\r\n<p>[gallery_item tag=\"joomla\" src=\"images/helix/gallery/300x200.png\" /]</p>\r\n<p>[gallery_item tag=\"wordpress\" src=\"images/helix/gallery/300x200.png\" /]</p>\r\n<p>[gallery_item tag=\"joomla, wordpress\" src=\"images/helix/gallery/300x200.png\" /]</p>\r\n<p>[gallery_item tag=\"magento\" src=\"images/helix/gallery/300x200.png\" /]</p>\r\n<p>[gallery_item tag=\"opencart\" src=\"images/helix/gallery/300x200.png\" /]</p>\r\n<p>[gallery_item tag=\"magento, opencart\" src=\"images/helix/gallery/300x200.png\" /]</p>\r\n<p>[gallery_item tag=\"joomla, magento, wordpress, opencart\" src=\"images/helix/gallery/300x200.png\" /]</p>\r\n<p>[gallery_item tag=\"drupal\" src=\"images/helix/gallery/300x200.png\" /]</p>\r\n<p>[/gallery]</p>\r\n<h3>Get the code</h3>\r\n<pre>[[gallery columns=\"4\" filter=\"yes\"]\r\n[gallery_item tag=\"joomla\" src=\"images/helix/gallery/300x200.png\"/]\r\n[gallery_item tag=\"wordpress\" src=\"images/helix/gallery/300x200.png\"/]\r\n[gallery_item tag=\"joomla, wordpress\" src=\"images/helix/gallery/300x200.png\"/]\r\n[gallery_item tag=\"magento\" src=\"images/helix/gallery/300x200.png\"/]\r\n[gallery_item tag=\"opencart\" src=\"images/helix/gallery/300x200.png\"/]\r\n[gallery_item tag=\"magento, opencart\" src=\"images/helix/gallery/300x200.png\"/]\r\n[gallery_item tag=\"joomla, magento, wordpress, opencart\" src=\"images/helix/gallery/300x200.png\"/]\r\n[gallery_item tag=\"drupal\" src=\"images/helix/gallery/300x200.png\"/]\r\n[/gallery]]\r\n</pre>','',1,11,'2013-02-04 06:47:55',236,'','2013-04-09 07:34:55',236,0,'0000-00-00 00:00:00','2013-02-04 06:47:55','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',30,0,'','',1,109,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(17,55,'Video','video','<p>[row]</p>\r\n<p>[col class=\"span6\"]</p>\r\n<p>[spvideo]https://www.youtube.com/watch?v=vb2eObvmvdI[/spvideo]</p>\r\n<h3>Get the code</h3>\r\n<pre>[[spvideo]http://www.youtube.com/watch?v=vb2eObvmvdI[/spvideo]]</pre>\r\n<p>[/col]</p>\r\n<p>[col class=\"span6\"]</p>\r\n<p>[spvideo]http://vimeo.com/3701346[/spvideo]</p>\r\n<h3>Get the code</h3>\r\n<pre>[[spvideo]http://vimeo.com/3701346[/spvideo]]</pre>\r\n<p>[/col]</p>\r\n<p>[/row]</p>','',1,10,'2013-02-04 06:56:51',236,'','2013-06-27 11:28:05',236,0,'0000-00-00 00:00:00','2013-02-04 06:56:51','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',34,8,'','',1,103,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\",\"tags\":null}',0,'*',''),(18,56,'Module Position','module-position','<table class=\"table table-bordered table-striped center\">\r\n<thead>\r\n<tr><th colspan=\"6\">\r\n<h4><strong>Header</strong></h4>\r\n</th></tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>logo</td>\r\n<td>flag</td>\r\n<td>search</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"table table-bordered table-striped center\">\r\n<thead>\r\n<tr><th colspan=\"6\">\r\n<h4><strong>Menu</strong></h4>\r\n</th></tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>menu</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"table table-bordered table-striped center\">\r\n<thead>\r\n<tr><th colspan=\"6\">\r\n<h4><strong>Title</strong></h4>\r\n</th></tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>title</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"table table-bordered table-striped center\">\r\n<thead>\r\n<tr><th colspan=\"6\">\r\n<h4><strong>Breadcrumbs</strong></h4>\r\n</th></tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>breadcrumb</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"table table-bordered table-striped center\">\r\n<thead>\r\n<tr><th colspan=\"6\">\r\n<h4><strong>Slideshow</strong></h4>\r\n</th></tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>slideshow</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"table table-bordered table-striped center\">\r\n<thead>\r\n<tr><th colspan=\"6\">\r\n<h4><strong>User Top</strong></h4>\r\n</th></tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>user-top</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"table table-bordered table-striped center\">\r\n<thead>\r\n<tr><th colspan=\"6\">\r\n<h4><strong>User</strong></h4>\r\n</th></tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>user1</td>\r\n<td>user2</td>\r\n<td>user3</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"table table-bordered table-striped center\">\r\n<thead>\r\n<tr><th colspan=\"6\">\r\n<h4><strong>Main Body</strong></h4>\r\n</th></tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>component</td>\r\n<td>right</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"table table-bordered table-striped center\">\r\n<thead>\r\n<tr><th colspan=\"6\">\r\n<h4><strong>Content</strong></h4>\r\n</th></tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>content1</td>\r\n<td>content2</td>\r\n<td>content3</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"table table-bordered table-striped center\">\r\n<thead>\r\n<tr><th colspan=\"6\">\r\n<h4><strong>User Middle</strong></h4>\r\n</th></tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>user-middle</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"table table-bordered table-striped center\">\r\n<thead>\r\n<tr><th colspan=\"6\">\r\n<h4><strong>Bottom</strong></h4>\r\n</th></tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>bottom</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"table table-bordered table-striped center\">\r\n<thead>\r\n<tr><th colspan=\"6\">\r\n<h4><strong>Footer</strong></h4>\r\n</th></tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>footer2</td>\r\n<td>footer1</td>\r\n</tr>\r\n</tbody>\r\n</table>','',1,10,'2013-02-04 07:49:29',236,'','2013-05-06 12:16:20',236,0,'0000-00-00 00:00:00','2013-02-04 07:49:29','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',37,7,'','',1,146,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(19,57,'The Joomla Blog','the-joomla-blog','<p>Joomla! means All Together, and it is a community of people all working and having fun together that makes Joomla! possible. Thousands of people each year participate in the Joomla! community, and we hope you will be one of them.</p>\r\n<p>People with all kinds of skills, of all skill levels and from around the world are welcome to join in. Participate in the <a href=\"http://joomla.org\">Joomla.org</a> family of websites (the<a href=\"http://forum.joomla.org\"> forum </a>is a great place to start). Come to a <a href=\"http://community.joomla.org/events.html\">Joomla! event</a>. Join or start a <a href=\"http://community.joomla.org/user-groups.html\">Joomla! Users Group</a>. Whether you are a developer, site administrator, designer, end user or fan, there are ways for you to participate and contribute.</p>','',1,8,'2013-01-31 07:27:02',236,'','2013-02-04 09:19:32',439,0,'0000-00-00 00:00:00','2013-01-31 07:27:02','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,2,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(20,58,'The Joomla overview','the-joomla-overview','<p>Joomla! means All Together, and it is a community of people all working and having fun together that makes Joomla! possible. Thousands of people each year participate in the Joomla! community, and we hope you will be one of them.</p>\r\n<p>People with all kinds of skills, of all skill levels and from around the world are welcome to join in. Participate in the <a href=\"http://joomla.org\">Joomla.org</a> family of websites (the<a href=\"http://forum.joomla.org\"> forum </a>is a great place to start). Come to a <a href=\"http://community.joomla.org/events.html\">Joomla! event</a>. Join or start a <a href=\"http://community.joomla.org/user-groups.html\">Joomla! Users Group</a>. Whether you are a developer, site administrator, designer, end user or fan, there are ways for you to participate and contribute.</p>','',1,8,'2013-01-31 07:27:02',236,'','2013-02-04 09:20:04',439,0,'0000-00-00 00:00:00','2013-01-31 07:27:02','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,1,'','',1,2,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(21,59,'The Joomla Help','the-joomla-help','<p>Joomla! means All Together, and it is a community of people all working and having fun together that makes Joomla! possible. Thousands of people each year participate in the Joomla! community, and we hope you will be one of them.</p>\r\n<p>People with all kinds of skills, of all skill levels and from around the world are welcome to join in. Participate in the <a href=\"http://joomla.org\">Joomla.org</a> family of websites (the<a href=\"http://forum.joomla.org\"> forum </a>is a great place to start). Come to a <a href=\"http://community.joomla.org/events.html\">Joomla! event</a>. Join or start a <a href=\"http://community.joomla.org/user-groups.html\">Joomla! Users Group</a>. Whether you are a developer, site administrator, designer, end user or fan, there are ways for you to participate and contribute.</p>','',1,8,'2013-01-31 07:27:02',236,'','2013-02-04 09:20:24',439,0,'0000-00-00 00:00:00','2013-01-31 07:27:02','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,0,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(25,63,'Cross Browser','cross-browser','Sed condimentum nibh est. Quisque quis risus elit. Maecenas dapibus, libero eget pulvinar','Sed eget ante quis felis tristique lobortis. Curabitur feugiat, libero vel convallis ultrices, justo leo mattis tellus, non aliquet est ligula non nulla. Nullam commodo felis ac lectus eleifend ut facilisis velit egestas. Ut sit amet lobortis nisl. Curabitur ut augue quis massa interdum bibendum vel ut lorem. Pellentesque sed neque a purus porttitor rutrum ut et erat. Proin id augue metus, a commodo orci. Quisque viverra congue aliquam. Integer rutrum quam quis massa ultrices mattis. Maecenas consequat egestas arcu at feugiat.',1,10,'2013-03-17 19:51:01',236,'','2013-03-18 05:38:59',236,0,'0000-00-00 00:00:00','2013-03-17 19:51:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,6,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(37,77,'About Us','about-us','<p>[row][col class=\"span6\"]</p>\r\n<h2>Welcome to minima</h2>\r\n<p>This is Photoshop\'s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.</p>\r\n<p>[/col] [col class=\"span6\"]</p>\r\n<h2>Our Skills</h2>\r\n<div class=\"progress-title\"><span class=\"desg\">SEO</span><span class=\"pull-right percent\">70%</span></div>\r\n<div class=\"progress progress-warning\">\r\n<div class=\"bar\" style=\"width: 70%;\"> </div>\r\n</div>\r\n<div class=\"progress-title\"><span class=\"desg\">Market Research</span><span class=\"pull-right percent\">60%</span></div>\r\n<div class=\"progress progress-warning\">\r\n<div class=\"bar\" style=\"width: 60%;\"> </div>\r\n</div>\r\n<div class=\"progress-title\"><span class=\"desg\">Web Development</span><span class=\"pull-right percent\">80%</span></div>\r\n<div class=\"progress progress-warning\">\r\n<div class=\"bar\" style=\"width: 80%;\"> </div>\r\n</div>\r\n<div class=\"progress-title\"><span class=\"desg\">Web Design</span><span class=\"pull-right percent\">100%</span></div>\r\n<div class=\"progress progress-warning\">\r\n<div class=\"bar\" style=\"width: 100%;\"> </div>\r\n</div>\r\n<p>[/col] [/row]</p>\r\n<p> </p>\r\n<h2>Our Team</h2>\r\n<p>[row] [col class=\"span4\"]</p>\r\n<div class=\"sp-box-border team clearfix\">\r\n<div class=\"img-scale\"><img src=\"images/minima/team/team1.jpg\" border=\"0\" alt=\" \" /></div>\r\n<div class=\"team-desc\">\r\n<h4>John Doe</h4>\r\n<span>Founder</span>\r\n<div class=\"pull-right clearfix\"><a class=\"about-social-icon facebook\" href=\"#\">[icon name=\"facebook\" /]</a><a class=\"about-social-icon twitter\" href=\"#\">[icon name=\"twitter\" /]</a><a class=\"about-social-icon gplus\" href=\"#\">[icon name=\"google-plus\" /]</a><a class=\"about-social-icon pinterest\" href=\"#\">[icon name=\"pinterest\" /]</a></div>\r\n</div>\r\n</div>\r\n<p>[/col] [col class=\"span4\"]</p>\r\n<div class=\"sp-box-border team clearfix\">\r\n<div class=\"img-scale\"><img src=\"images/minima/team/team2.jpg\" border=\"0\" alt=\" \" /></div>\r\n<div class=\"team-desc\">\r\n<h4>John Doe</h4>\r\n<span>Founder</span>\r\n<div class=\"pull-right clearfix\"><a class=\"about-social-icon facebook\" href=\"#\">[icon name=\"facebook\" /]</a><a class=\"about-social-icon twitter\" href=\"#\">[icon name=\"twitter\" /]</a><a class=\"about-social-icon gplus\" href=\"#\">[icon name=\"google-plus\" /]</a><a class=\"about-social-icon pinterest\" href=\"#\">[icon name=\"pinterest\" /]</a></div>\r\n</div>\r\n</div>\r\n<p>[/col] [col class=\"span4\"]</p>\r\n<div class=\"sp-box-border team clearfix\">\r\n<div class=\"img-scale\"><img src=\"images/minima/team/team3.jpg\" border=\"0\" alt=\" \" /></div>\r\n<div class=\"team-desc\">\r\n<h4>John Doe</h4>\r\n<span>Founder</span>\r\n<div class=\"pull-right clearfix\"><a class=\"about-social-icon facebook\" href=\"#\">[icon name=\"facebook\" /]</a><a class=\"about-social-icon twitter\" href=\"#\">[icon name=\"twitter\" /]</a><a class=\"about-social-icon gplus\" href=\"#\">[icon name=\"google-plus\" /]</a><a class=\"about-social-icon pinterest\" href=\"#\">[icon name=\"pinterest\" /]</a></div>\r\n</div>\r\n</div>\r\n<p>[/col] [/row] [row] [col class=\"span4\"]</p>\r\n<div class=\"sp-box-border team clearfix\">\r\n<div class=\"img-scale\"><img src=\"images/minima/team/team4.jpg\" border=\"0\" alt=\" \" /></div>\r\n<div class=\"team-desc\">\r\n<h4>John Doe</h4>\r\n<span>Founder</span>\r\n<div class=\"pull-right clearfix\"><a class=\"about-social-icon facebook\" href=\"#\">[icon name=\"facebook\" /]</a><a class=\"about-social-icon twitter\" href=\"#\">[icon name=\"twitter\" /]</a><a class=\"about-social-icon gplus\" href=\"#\">[icon name=\"google-plus\" /]</a><a class=\"about-social-icon pinterest\" href=\"#\">[icon name=\"pinterest\" /]</a></div>\r\n</div>\r\n</div>\r\n<p>[/col] [col class=\"span4\"]</p>\r\n<div class=\"sp-box-border team clearfix\">\r\n<div class=\"img-scale\"><img src=\"images/minima/team/team5.jpg\" border=\"0\" alt=\" \" /></div>\r\n<div class=\"team-desc\">\r\n<h4>John Doe</h4>\r\n<span>Founder</span>\r\n<div class=\"pull-right clearfix\"><a class=\"about-social-icon facebook\" href=\"#\">[icon name=\"facebook\" /]</a><a class=\"about-social-icon twitter\" href=\"#\">[icon name=\"twitter\" /]</a><a class=\"about-social-icon gplus\" href=\"#\">[icon name=\"google-plus\" /]</a><a class=\"about-social-icon pinterest\" href=\"#\">[icon name=\"pinterest\" /]</a></div>\r\n</div>\r\n</div>\r\n<p>[/col] [col class=\"span4\"]</p>\r\n<div class=\"sp-box-border team clearfix\">\r\n<div class=\"img-scale\"><img src=\"images/minima/team/team6.jpg\" border=\"0\" alt=\" \" /></div>\r\n<div class=\"team-desc\">\r\n<h4>John Doe</h4>\r\n<span>Founder</span>\r\n<div class=\"pull-right clearfix\"><a class=\"about-social-icon facebook\" href=\"#\">[icon name=\"facebook\" /]</a><a class=\"about-social-icon twitter\" href=\"#\">[icon name=\"twitter\" /]</a><a class=\"about-social-icon gplus\" href=\"#\">[icon name=\"google-plus\" /]</a><a class=\"about-social-icon pinterest\" href=\"#\">[icon name=\"pinterest\" /]</a></div>\r\n</div>\r\n</div>\r\n<p>[/col] [/row]</p>','',1,10,'2013-03-27 18:13:15',236,'','2013-05-02 07:46:36',236,0,'0000-00-00 00:00:00','2013-03-27 18:13:15','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',98,5,'','',1,722,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(38,78,'Pricing Table','pricing-table','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam quis lectus sed augue porttitor adipiscing eget in neque. Proin elementum malesuada odio, vitae scelerisque augue consectetur nec. Quisque et ante eu turpis faucibus commodo. Nullam eu purus et dui vehicula euismod mollis ac leo. Praesent nibh nibh, ultrices in hendrerit nec, porta non nisi, Nullam eu purus et dui vehicula euismod mollis ac leo. Praesent nibh nibh, ultrices in hendrerit nec.</p>\r\n<p>[row]<br />[col class=\"span3\"]</p>\r\n<ul class=\"pricing-table\">\r\n<li class=\"plan-name\">\r\n<h3>BASIC</h3>\r\n</li>\r\n<li class=\"plan-price\">$99.00<small> / Monthly</small></li>\r\n<li>Unlimited site licenses</li>\r\n<li>20% discount on</li>\r\n<li>Ticket Support</li>\r\n<li>Forum Support</li>\r\n<li class=\"plan-signup\"><a class=\"readmore\" href=\"#\">Sign Up</a></li>\r\n</ul>\r\n<p><span style=\"line-height: 1.3em;\"><span style=\"line-height: 1.3em;\"><span>[/col]</span> <br />[col class=\"span3\"]</span></span></p>\r\n<ul class=\"pricing-table featured\">\r\n<li class=\"plan-name bg\">\r\n<h3>PREMIUM</h3>\r\n</li>\r\n<li class=\"plan-price\">$200 <small>/ Monthly</small></li>\r\n<li>Unlimited site licenses</li>\r\n<li>20% discount on</li>\r\n<li>Ticket Support</li>\r\n<li>Forum Support</li>\r\n<li class=\"plan-signup\"><a class=\"readmore\" href=\"#\">Sign Up</a></li>\r\n</ul>\r\n<p><span style=\"line-height: 1.3em;\"><span style=\"line-height: 1.3em;\"><span>[/col]</span> <br />[col class=\"span3\"]</span></span></p>\r\n<ul class=\"pricing-table\">\r\n<li class=\"plan-name\">\r\n<h3>PROFESSIONAL</h3>\r\n</li>\r\n<li class=\"plan-price\">$99 <small>/ Monthly</small></li>\r\n<li>Unlimited site licenses</li>\r\n<li>20% discount on</li>\r\n<li>Ticket Support</li>\r\n<li>Forum Support</li>\r\n<li class=\"plan-signup\"><a class=\"readmore\" href=\"#\">Sign Up</a></li>\r\n</ul>\r\n<p><span style=\"line-height: 1.3em;\"><span style=\"line-height: 1.3em;\"><span>[/col]</span><br />[col class=\"span3\"]</span></span></p>\r\n<ul class=\"pricing-table\">\r\n<li class=\"plan-name\">\r\n<h3>BUSINESS</h3>\r\n</li>\r\n<li class=\"plan-price\">$99 <small>/ Monthly</small></li>\r\n<li>Unlimited site licenses</li>\r\n<li>20% discount on</li>\r\n<li>Ticket Support</li>\r\n<li>Forum Support</li>\r\n<li class=\"plan-signup\"><a class=\"readmore\" href=\"#\">Sign Up</a></li>\r\n</ul>\r\n<p><span style=\"line-height: 1.3em;\"><span>[/col]</span><br /></span><span style=\"line-height: 1.3em;\">[/row]<br /><br /><br /><br /></span></p>','',1,10,'2013-03-28 07:20:01',236,'','2013-04-30 07:44:59',236,0,'0000-00-00 00:00:00','2013-03-28 07:20:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',56,4,'','',1,488,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(39,79,'Portfolio','portfolio','<p>[gallery columns=\"3\" filter=\"yes\"]<br />[gallery_item tag=\"Design\" src=\"images/minima/gallery/img1.jpg\"]</p>\r\n<h4>Sed porttitor scelerisque</h4>\r\n<p><span>www.joomshaper.com</span></p>\r\n<p>This is Photoshop\'s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit.</p>\r\n<p>[/gallery_item]</p>\r\n<p>[gallery_item tag=\"marketing\" src=\"images/minima/gallery/img2.jpg\"]</p>\r\n<h4>Turpis sem lacinia augue</h4>\r\n<p><span>www.joomshaper.com</span></p>\r\n<p>This is Photoshop\'s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit.</p>\r\n<p>[/gallery_item]</p>\r\n<p>[gallery_item tag=\"development\" src=\"images/minima/gallery/img3.jpg\"]</p>\r\n<h4>Ristique sagittis neque</h4>\r\n<p><span>www.joomshaper.com</span></p>\r\n<p>This is Photoshop\'s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit.</p>\r\n<p>[/gallery_item]</p>\r\n<p>[gallery_item tag=\"SEO\" src=\"images/minima/gallery/img4.jpg\"]</p>\r\n<h4>Condimentum non diam</h4>\r\n<p><span>www.joomshaper.com</span></p>\r\n<p>This is Photoshop\'s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit.</p>\r\n<p>[/gallery_item]</p>\r\n<p>[gallery_item tag=\"development\" src=\"images/minima/gallery/img5.jpg\"]</p>\r\n<h4>Integer varius consequat</h4>\r\n<p><span>www.joomshaper.com</span></p>\r\n<p>This is Photoshop\'s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit.</p>\r\n<p>[/gallery_item]</p>\r\n<p>[gallery_item tag=\"development\" src=\"images/minima/gallery/img6.jpg\"]</p>\r\n<h4>Imperdiet arcu tincidunt</h4>\r\n<p><span>www.joomshaper.com</span></p>\r\n<p>This is Photoshop\'s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit.</p>\r\n<p>[/gallery_item]</p>\r\n<p>[/gallery]</p>','',1,10,'2013-03-28 09:59:15',236,'','2013-05-07 06:34:12',236,0,'0000-00-00 00:00:00','2013-03-28 09:59:15','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"0\",\"link_titles\":\"0\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',40,3,'','',1,426,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(40,80,'Service','service','<div class=\"row-fluid sp-service-page\">\r\n<div class=\"span6\">\r\n<div class=\"media\">\r\n<p class=\"sp-blocknumber pull-left\"><span class=\"circle\" style=\"color: #fff;\">01</span></p>\r\n<div class=\"media-body\">\r\n<h2>Service A</h2>\r\n<p>This is Photoshop\'s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"span6\">\r\n<div class=\"media\">\r\n<p class=\"sp-blocknumber pull-left\"><span class=\"circle\" style=\"color: #fff;\">02</span></p>\r\n<div class=\"media-body\">\r\n<h2>Service B</h2>\r\n<p>This is Photoshop\'s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"row-fluid sp-service-page\">\r\n<div class=\"span6\">\r\n<div class=\"media\">\r\n<p class=\"sp-blocknumber pull-left\"><span class=\"circle\" style=\"color: #fff;\">03</span></p>\r\n<div class=\"media-body\">\r\n<h2>Service C</h2>\r\n<p>This is Photoshop\'s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"span6\">\r\n<div class=\"media\">\r\n<p class=\"sp-blocknumber pull-left\"><span class=\"circle\" style=\"color: #fff;\">04</span></p>\r\n<div class=\"media-body\">\r\n<h2>Service D</h2>\r\n<p>This is Photoshop\'s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>','',1,10,'2013-03-29 05:50:11',236,'','2013-05-06 07:33:06',236,0,'0000-00-00 00:00:00','2013-03-29 05:50:11','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',70,2,'','',1,387,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(42,82,'Presets','presets','<div class=\"row-fluid\">\r\n<ul class=\"thumbnails\">\r\n<li class=\"span3\">\r\n<div class=\"thumbnail\"><a href=\"?preset=preset1\"><img src=\"images/minima/presets/preset1.jpg\" border=\"0\" alt=\"\" /></a></div>\r\n</li>\r\n<li class=\"span3\">\r\n<div class=\"thumbnail\"><a href=\"?preset=preset2\"><img src=\"images/minima/presets/preset2.jpg\" border=\"0\" alt=\"\" /></a></div>\r\n</li>\r\n<li class=\"span3\">\r\n<div class=\"thumbnail\"><a href=\"?preset=preset3\"><img src=\"images/minima/presets/preset3.jpg\" border=\"0\" alt=\"\" /></a></div>\r\n</li>\r\n<li class=\"span3\">\r\n<div class=\"thumbnail\"><a href=\"?preset=preset4\"><img src=\"images/minima/presets/preset4.jpg\" border=\"0\" alt=\"\" /></a></div>\r\n</li>\r\n</ul>\r\n</div>\r\n<div class=\"row-fluid\">\r\n<ul class=\"thumbnails\">\r\n<li class=\"span3\">\r\n<div class=\"thumbnail\"><a href=\"?preset=preset5\"><img src=\"images/minima/presets/preset5.jpg\" border=\"0\" alt=\"\" /></a></div>\r\n</li>\r\n<li class=\"span3\">\r\n<div class=\"thumbnail\"><a href=\"?preset=preset6\"><img src=\"images/minima/presets/preset6.jpg\" border=\"0\" alt=\"\" /></a></div>\r\n</li>\r\n<li class=\"span3\">\r\n<div class=\"thumbnail\"><a href=\"?preset=preset7\"><img src=\"images/minima/presets/preset7.jpg\" border=\"0\" alt=\"\" /></a></div>\r\n</li>\r\n<li class=\"span3\">\r\n<div class=\"thumbnail\"><a href=\"?preset=preset8\"><img src=\"images/minima/presets/preset8.jpg\" border=\"0\" alt=\"\" /></a></div>\r\n</li>\r\n</ul>\r\n</div>\r\n<div class=\"row-fluid\">\r\n<ul class=\"thumbnails\">\r\n<li class=\"span3\">\r\n<div class=\"thumbnail\"><a href=\"?preset=preset9\"><img src=\"images/minima/presets/preset9.jpg\" border=\"0\" alt=\"\" /></a></div>\r\n</li>\r\n<li class=\"span3\">\r\n<div class=\"thumbnail\"><a href=\"?preset=preset10\"><img src=\"images/minima/presets/preset10.jpg\" border=\"0\" alt=\"\" /></a></div>\r\n</li>\r\n</ul>\r\n</div>','',1,2,'2013-04-15 09:05:55',236,'','2013-05-06 07:38:02',236,0,'0000-00-00 00:00:00','2013-04-15 09:05:55','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"0\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',37,0,'','',1,162,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(43,83,'Home','home','<div class=\"service-grid\">\r\n<div class=\"row-fluid \">\r\n<div class=\"span4\">\r\n<div class=\"media services\">\r\n<div class=\"pull-left\"><img src=\"images/home.png\" alt=\"\" border=\"0\" /></div>\r\n<div class=\"media-body\">\r\n<h3><a href=\"#\">Slogan Titolo Primo</a></h3>\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium error sit voluptatem accusantium</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"span4\">\r\n<div class=\"media services\">\r\n<div class=\"pull-left\"><img src=\"images/stop.png\" alt=\"\" border=\"0\" /></div>\r\n<div class=\"media-body\">\r\n<h3><a href=\"#\">Slogan Titolo Secondo</a></h3>\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium error sit voluptatem accusantium</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"span4\">\r\n<div class=\"media services\">\r\n<div class=\"pull-left\"><img src=\"images/bubble.png\" alt=\"\" border=\"0\" /></div>\r\n<div class=\"media-body\">\r\n<h3><a href=\"#\">Slogan Titolo Terzo</a></h3>\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium error sit voluptatem accusantium</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>','',1,10,'2013-04-24 11:55:39',236,'','2014-04-22 14:37:59',236,0,'0000-00-00 00:00:00','2013-04-24 11:55:39','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',29,1,'','',1,2439,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(44,85,'Short-code','shortcode','<p>[row] [col class=\"span6\"]</p>\r\n<h2>Accordion</h2>\r\n<p>[accordion id=\"sc-accordion\"] [accordion_item title=\'Selected\'] Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare consectetur sodales. Nulla luctus cursus mauris at dapibus. Cras ac felis et neque consequat elementum a eget turpis. Aliquam erat volutpat. Integer feugiat sem eu ligula vulputate consequat. Nulla facilisi. Cras vel elit lectus, at fringilla lorem. [/accordion_item] [accordion_item title=\'Accordion\'] consectetur adipiscing elit. Proin ornare consectetur sodales. Nulla luctus cursus mauris at dapibus. Cras ac felis et neque consequat elementum a eget turpis. Aliquam erat volutpat. Integer feugiat sem eu ligula vulputate consequat. Nulla facilisi. Cras vel elit lectus, at fringilla lorem. [/accordion_item] [accordion_item title=\'Accordion2\'] Proin ornare consectetur sodales. Nulla luctus cursus mauris at dapibus. Cras ac felis et neque consequat elementum a eget turpis. Aliquam erat volutpat. Integer feugiat sem eu ligula vulputate consequat. Nulla facilisi. Cras vel elit lectus, at fringilla lorem. [/accordion_item] [/accordion]</p>\r\n<p>[/col] [col class=\"span6\"]</p>\r\n<h2>Tabs</h2>\r\n<p>[tab id=\"tab1\" class=\"tabbale\" button=\"nav-tabs\"] [tab_item title=\"Tabs A\"] Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare consectetur sodales. Nulla luctus cursus mauris at dapibus. Cras ac felis et neque consequat elementum a eget turpis. Aliquam erat volutpat. Integer feugiat sem eu ligula vulputate consequat. Nulla facilisi. Cras vel elit lectus, at fringilla lorem. Integer feugiat sem eu ligula vulputate consequat. Nulla facilisi. Cras vel elit lectus, at fringilla lorem. [/tab_item] [tab_item title=\"Tabs B\"] Consectetur adipiscing elit. Proin ornare consectetur sodales. Nulla luctus cursus mauris at dapibus. Cras ac felis et neque consequat elementum a eget turpis. Aliquam erat volutpat. Integer feugiat sem eu ligula vulputate consequat. Nulla facilisi. Cras vel elit lectus, at fringilla lorem. Integer feugiat sem eu ligula vulputate consequat. Nulla facilisi. Cras vel elit lectus, at fringilla lorem.[/tab_item][/tab]</p>\r\n<p>[/col] [/row] [row] [col class=\"span6\"]</p>\r\n<h2>Progress Bars</h2>\r\n<div class=\"progress-title\"><span class=\"desg\">Lorem Ipsum</span><span class=\"pull-right percent\">80%</span></div>\r\n<div class=\"progress progress-danger\">\r\n<div class=\"bar\" style=\"width: 80%;\"> </div>\r\n</div>\r\n<div class=\"progress-title\"><span class=\"desg\">Lorem Ipsum</span><span class=\"pull-right percent\">60%</span></div>\r\n<div class=\"progress progress-info\">\r\n<div class=\"bar\" style=\"width: 60%;\"> </div>\r\n</div>\r\n<div class=\"progress-title\"><span class=\"desg\">Lorsaem Ipsum</span><span class=\"pull-right percent\">60%</span></div>\r\n<div class=\"progress progress-primary\">\r\n<div class=\"bar\" style=\"width: 60%;\"> </div>\r\n</div>\r\n<p>[/col] [col class=\"span6\"]</p>\r\n<p>[tab id=\"tab2\" class=\"tabbale tab-pill\" button=\"nav-pills\"] [tab_item title=\"Tabs A\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare consectetur sodales. Nulla luctus cursus mauris at dapibus. Cras ac felis et neque consequat elementum a eget turpis. Aliquam erat volutpat. Integer feugiat sem eu ligula vulputate consequat. Nulla facilisi. Cras vel elit lectus, at fringilla lorem. Integer feugiat sem eu ligula vulputate consequat. Nulla facilisi. Cras vel elit lectus, at fringilla lorem.[/tab_item] [tab_item title=\"Tabs B\"]consectetur adipiscing elit. Proin ornare consectetur sodales. Nulla luctus cursus mauris at dapibus. Cras ac felis et neque consequat elementum a eget turpis. Aliquam erat volutpat. Integer feugiat sem eu ligula vulputate consequat. Nulla facilisi. Cras vel elit lectus, at fringilla lorem. Integer feugiat sem eu ligula vulputate consequat. Nulla facilisi. Cras vel elit lectus, at fringilla lorem.[/tab_item][/tab]</p>\r\n<p>[/col] [/row]</p>','',1,10,'2013-04-29 08:30:24',236,'','2013-05-06 09:01:04',236,0,'0000-00-00 00:00:00','2013-04-29 08:30:24','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"0\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',19,0,'','',1,202,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
/*!40000 ALTER TABLE `ujcu6_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_content_frontpage`
--

DROP TABLE IF EXISTS `ujcu6_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_content_frontpage`
--

LOCK TABLES `ujcu6_content_frontpage` WRITE;
/*!40000 ALTER TABLE `ujcu6_content_frontpage` DISABLE KEYS */;
INSERT INTO `ujcu6_content_frontpage` VALUES (12,6),(15,5),(22,4),(23,1),(24,2),(26,3);
/*!40000 ALTER TABLE `ujcu6_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_content_rating`
--

DROP TABLE IF EXISTS `ujcu6_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_content_rating`
--

LOCK TABLES `ujcu6_content_rating` WRITE;
/*!40000 ALTER TABLE `ujcu6_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_content_types`
--

DROP TABLE IF EXISTS `ujcu6_content_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) NOT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_content_types`
--

LOCK TABLES `ujcu6_content_types` WRITE;
/*!40000 ALTER TABLE `ujcu6_content_types` DISABLE KEYS */;
INSERT INTO `ujcu6_content_types` VALUES (1,'Article','com_content.article','{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\": {\"fulltext\":\"fulltext\"}}','ContentHelperRoute::getArticleRoute','{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(2,'Weblink','com_weblinks.weblink','{\"special\":{\"dbtable\":\"#__weblinks\",\"key\":\"id\",\"type\":\"Weblink\",\"prefix\":\"WeblinksTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"url\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\": {}}','WeblinksHelperRoute::getWeblinkRoute','{\"formFile\":\"administrator\\/components\\/com_weblinks\\/models\\/forms\\/weblink.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"featured\",\"images\"], \"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(3,'Contact','com_contact.contact','{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\": {\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}','ContactHelperRoute::getContactRoute','{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),(4,'Newsfeed','com_newsfeeds.newsfeed','{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\": {\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}','NewsfeedsHelperRoute::getNewsfeedRoute','{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(5,'User','com_users.user','{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\": {}}','UsersHelperRoute::getUserRoute',''),(6,'Article Category','com_content.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContentHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(7,'Contact Category','com_contact.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContactHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(8,'Newsfeeds Category','com_newsfeeds.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','NewsfeedsHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(9,'Weblinks Category','com_weblinks.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','WeblinksHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(10,'Tag','com_tags.tag','{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}','TagsHelperRoute::getTagRoute','{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(11,'Banner','com_banners.banner','{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(12,'Banners Category','com_banners.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(13,'Banner Client','com_banners.client','{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),(14,'User Notes','com_users.note','{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(15,'User Notes Category','com_users.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
/*!40000 ALTER TABLE `ujcu6_content_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_contentitem_tag_map`
--

DROP TABLE IF EXISTS `ujcu6_contentitem_tag_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_contentitem_tag_map`
--

LOCK TABLES `ujcu6_contentitem_tag_map` WRITE;
/*!40000 ALTER TABLE `ujcu6_contentitem_tag_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_contentitem_tag_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_core_log_searches`
--

DROP TABLE IF EXISTS `ujcu6_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_core_log_searches`
--

LOCK TABLES `ujcu6_core_log_searches` WRITE;
/*!40000 ALTER TABLE `ujcu6_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_extensions`
--

DROP TABLE IF EXISTS `ujcu6_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10082 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_extensions`
--

LOCK TABLES `ujcu6_extensions` WRITE;
/*!40000 ALTER TABLE `ujcu6_extensions` DISABLE KEYS */;
INSERT INTO `ujcu6_extensions` VALUES (1,'com_mailto','component','com_mailto','',0,1,1,1,'{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(2,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(3,'com_admin','component','com_admin','',1,1,1,1,'{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(4,'com_banners','component','com_banners','',1,1,1,0,'{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(5,'com_cache','component','com_cache','',1,1,1,1,'{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(6,'com_categories','component','com_categories','',1,1,1,1,'{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(7,'com_checkin','component','com_checkin','',1,1,1,1,'{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(8,'com_contact','component','com_contact','',1,1,1,0,'{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_contact_category\":\"hide\",\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(9,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10,'com_installer','component','com_installer','',1,1,1,1,'{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(11,'com_languages','component','com_languages','',1,1,1,1,'{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"en-GB\",\"site\":\"it-IT\"}','','',0,'0000-00-00 00:00:00',0,0),(12,'com_login','component','com_login','',1,1,1,1,'{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(13,'com_media','component','com_media','',1,1,0,1,'{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\",\"enable_flash\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(14,'com_menus','component','com_menus','',1,1,1,1,'{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(15,'com_messages','component','com_messages','',1,1,1,1,'{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(16,'com_modules','component','com_modules','',1,1,1,1,'{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(17,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_word_count\":\"0\",\"show_headings\":\"1\",\"show_name\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"display_num\":\"\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\",\"show_cat_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(18,'com_plugins','component','com_plugins','',1,1,1,1,'{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(19,'com_search','component','com_search','',1,1,1,0,'{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','{\"enabled\":\"0\",\"show_date\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(20,'com_templates','component','com_templates','',1,1,1,1,'{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{\"template_positions_display\":\"1\",\"upload_limit\":\"2\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}','','',0,'0000-00-00 00:00:00',0,0),(21,'com_weblinks','component','com_weblinks','',1,1,1,0,'{\"name\":\"com_weblinks\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_comp_description\":\"1\",\"comp_description\":\"\",\"show_link_hits\":\"1\",\"show_link_description\":\"1\",\"show_other_cats\":\"0\",\"show_headings\":\"0\",\"show_numbers\":\"0\",\"show_report\":\"1\",\"count_clicks\":\"1\",\"target\":\"0\",\"link_icons\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(22,'com_content','component','com_content','',1,1,0,1,'{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"0\",\"readmore_limit\":\"100\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_heading_title_text\":\"1\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(23,'com_config','component','com_config','',1,1,0,1,'{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0),(24,'com_redirect','component','com_redirect','',1,1,0,1,'{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(25,'com_users','component','com_users','',1,1,0,1,'{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"allowUserRegistration\":\"1\",\"new_usertype\":\"2\",\"useractivation\":\"1\",\"frontend_userparams\":\"1\",\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(27,'com_finder','component','com_finder','',1,1,0,0,'{\"legacy\":false,\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}','','',0,'0000-00-00 00:00:00',0,0),(28,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(29,'com_tags','component','com_tags','',1,1,1,1,'{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(30,'com_contenthistory','component','com_contenthistory','',1,1,1,0,'{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(31,'com_ajax','component','com_ajax','',1,1,1,0,'{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(32,'com_postinstall','component','com_postinstall','',1,1,1,1,'{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(100,'PHPMailer','library','phpmailer','',0,1,1,1,'{\"name\":\"PHPMailer\",\"type\":\"library\",\"creationDate\":\"2001\",\"author\":\"PHPMailer\",\"copyright\":\"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2013, Jim Jagielski. All Rights Reserved.\",\"authorEmail\":\"jimjag@gmail.com\",\"authorUrl\":\"https:\\/\\/github.com\\/PHPMailer\\/PHPMailer\",\"version\":\"5.2.6\",\"description\":\"LIB_PHPMAILER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(101,'SimplePie','library','simplepie','',0,1,1,1,'{\"name\":\"SimplePie\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"SimplePie\",\"copyright\":\"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/simplepie.org\\/\",\"version\":\"1.2\",\"description\":\"LIB_SIMPLEPIE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(102,'phputf8','library','phputf8','',0,1,1,1,'{\"name\":\"phputf8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(103,'Joomla! Platform','library','joomla','',0,1,1,1,'{\"name\":\"Joomla! Platform\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{\"mediaversion\":\"cf7e450154af72420365f6c3f8097b17\"}','','',0,'0000-00-00 00:00:00',0,0),(104,'IDNA Convert','library','idna_convert','',0,1,1,1,'{\"name\":\"IDNA Convert\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(105,'FOF','library','fof','',0,1,1,1,'{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2013-10-22\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2013 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.1.rc4\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(200,'mod_articles_archive','module','mod_articles_archive','',0,1,1,0,'{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters.\\n\\t\\tAll rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(201,'mod_articles_latest','module','mod_articles_latest','',0,1,1,0,'{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(202,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(203,'mod_banners','module','mod_banners','',0,1,1,0,'{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(204,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(205,'mod_custom','module','mod_custom','',0,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(206,'mod_feed','module','mod_feed','',0,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(207,'mod_footer','module','mod_footer','',0,1,1,0,'{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(208,'mod_login','module','mod_login','',0,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(209,'mod_menu','module','mod_menu','',0,1,1,1,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(210,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(211,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(212,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(213,'mod_search','module','mod_search','',0,1,1,0,'{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(214,'mod_stats','module','mod_stats','',0,1,1,0,'{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(215,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(216,'mod_users_latest','module','mod_users_latest','',0,1,1,0,'{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(217,'mod_weblinks','module','mod_weblinks','',0,1,1,0,'{\"name\":\"mod_weblinks\",\"type\":\"module\",\"creationDate\":\"July 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(218,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(219,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(220,'mod_articles_category','module','mod_articles_category','',0,1,1,0,'{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(221,'mod_articles_categories','module','mod_articles_categories','',0,1,1,0,'{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(222,'mod_languages','module','mod_languages','',0,1,1,1,'{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(223,'mod_finder','module','mod_finder','',0,1,0,0,'{\"legacy\":false,\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(300,'mod_custom','module','mod_custom','',1,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(301,'mod_feed','module','mod_feed','',1,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(302,'mod_latest','module','mod_latest','',1,1,1,0,'{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(303,'mod_logged','module','mod_logged','',1,1,1,0,'{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(304,'mod_login','module','mod_login','',1,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(305,'mod_menu','module','mod_menu','',1,1,1,0,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(307,'mod_popular','module','mod_popular','',1,1,1,0,'{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(308,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(309,'mod_status','module','mod_status','',1,1,1,0,'{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(310,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(311,'mod_title','module','mod_title','',1,1,1,0,'{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(312,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(313,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(314,'mod_version','module','mod_version','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(315,'mod_stats_admin','module','mod_stats_admin','',1,1,1,0,'{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}','{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0),(316,'mod_tags_popular','module','mod_tags_popular','',0,1,1,0,'{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(317,'mod_tags_similar','module','mod_tags_similar','',0,1,1,0,'{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\"}','{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(400,'plg_authentication_gmail','plugin','gmail','authentication',0,0,1,0,'{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0),(401,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(402,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0),(404,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0),(405,'plg_content_geshi','plugin','geshi','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_content_geshi\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"qbnz.com\\/highlighter\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_GESHI_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(406,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\"}','{\"style\":\"xhtml\"}','','',0,'2011-09-18 15:22:50',0,0),(407,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,0,'{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0),(408,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,0,'{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),(409,'plg_content_vote','plugin','vote','content',0,1,1,0,'{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',6,0),(410,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"3.15\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\"}','{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0),(411,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(412,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,0,'{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2013\",\"author\":\"Moxiecode Systems AB\",\"copyright\":\"Moxiecode Systems AB\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"tinymce.moxiecode.com\",\"version\":\"4.0.10\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"2\",\"skin\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"0\",\"lang_code\":\"en\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"toolbar\":\"top\",\"toolbar_align\":\"left\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"true\",\"resize_horizontal\":\"false\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"format_date\":\"%Y-%m-%d\",\"inserttime\":\"1\",\"format_time\":\"%H:%M:%S\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"media\":\"1\",\"hr\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"style\":\"1\",\"layer\":\"1\",\"xhtmlxtras\":\"1\",\"visualchars\":\"1\",\"visualblocks\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advimage\":\"1\",\"advlink\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}','','',0,'0000-00-00 00:00:00',3,0),(413,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,1,'{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(414,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(415,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(416,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',4,0),(417,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(418,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(419,'plg_search_content','plugin','content','search',0,1,1,0,'{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(420,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(421,'plg_search_weblinks','plugin','weblinks','search',0,1,1,0,'{\"name\":\"plg_search_weblinks\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(422,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(423,'plg_system_p3p','plugin','p3p','system',0,1,1,0,'{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0),(424,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0),(425,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0),(426,'plg_system_log','plugin','log','system',0,1,1,1,'{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),(427,'plg_system_redirect','plugin','redirect','system',0,1,1,1,'{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',6,0),(428,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',7,0),(429,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',8,0),(430,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(431,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,0,'{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),(432,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2009 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{\"autoregister\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0),(433,'plg_user_profile','plugin','profile','user',0,0,1,0,'{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(434,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(435,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(436,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',10,0),(437,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(438,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(439,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,1,1,0,'{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0),(440,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',7,0),(441,'plg_content_finder','plugin','finder','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(442,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(443,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(444,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(445,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',4,0),(446,'plg_finder_weblinks','plugin','weblinks','finder',0,1,1,0,'{\"name\":\"plg_finder_weblinks\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),(447,'plg_finder_tags','plugin','tags','finder',0,1,1,0,'{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(448,'plg_twofactorauth_totp','plugin','totp','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(449,'plg_authentication_cookie','plugin','cookie','authentication',0,1,1,0,'{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(450,'plg_twofactorauth_yubikey','plugin','yubikey','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"Se[ptember 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(504,'hathor','template','hathor','',1,1,1,0,'{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"hathor@tarrconsulting.com\",\"authorUrl\":\"http:\\/\\/www.tarrconsulting.com\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(600,'English (United Kingdom)','language','en-GB','',0,1,1,1,'{\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2013-03-07\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(601,'English (United Kingdom)','language','en-GB','',1,1,1,1,'{\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2013-03-07\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(700,'files_joomla','file','joomla','',0,1,1,1,'{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"November 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10003,'SP Smart Slider','module','mod_sp_smart_slider','',0,1,0,0,'{\"legacy\":false,\"name\":\"SP Smart Slider\",\"type\":\"module\",\"creationDate\":\"Nov 2012\",\"author\":\"JoomShaper.com\",\"copyright\":\"Copyright (C) 2010 - 2013 JoomShaper.com. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"www.joomshaper.com\",\"version\":\"1.0.3\",\"description\":\"SP Smart Slider\",\"group\":\"\"}','{\"sp_style\":\"nivo_slider\",\"module_cache\":\"1\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}','','',0,'0000-00-00 00:00:00',0,0),(10005,'SP Quick Contact','module','mod_sp_quickcontact','',0,1,0,0,'{\"legacy\":false,\"name\":\"SP Quick Contact\",\"type\":\"module\",\"creationDate\":\"Aug 2011\",\"author\":\"JoomShaper.com\",\"copyright\":\"Copyright (C) 2010 - 2012 JoomShaper.com. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"www.joomshaper.com\",\"version\":\"1.2.0\",\"description\":\"SP Quick Contact - Ajax based Quick Contact Module for Joomla!\",\"group\":\"\"}','{\"email\":\"\",\"success\":\"Email was sent successfully.\",\"failed\":\"Email could not be sent.\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}','','',0,'0000-00-00 00:00:00',0,0),(10006,'com_k2','component','com_k2','',1,1,0,0,'{\"legacy\":false,\"name\":\"COM_K2\",\"type\":\"component\",\"creationDate\":\"April 7th, 2013\",\"author\":\"JoomlaWorks\",\"copyright\":\"Copyright (c) 2006 - 2013 JoomlaWorks Ltd. All rights reserved.\",\"authorEmail\":\"please-use-the-contact-form@joomlaworks.net\",\"authorUrl\":\"www.joomlaworks.net\",\"version\":\"2.6.6\",\"description\":\"Thank you for installing K2 by JoomlaWorks, the powerful content extension for Joomla!\",\"group\":\"\"}','{\"enable_css\":\"1\",\"jQueryHandling\":\"1.8.3\",\"backendJQueryHandling\":\"local\",\"userName\":\"1\",\"userImage\":\"1\",\"userDescription\":\"1\",\"userURL\":\"1\",\"userEmail\":\"0\",\"userFeedLink\":\"0\",\"userFeedIcon\":\"0\",\"userItemCount\":\"10\",\"userItemTitle\":\"1\",\"userItemTitleLinked\":\"1\",\"userItemDateCreated\":\"1\",\"userItemImage\":\"1\",\"userItemIntroText\":\"1\",\"userItemCategory\":\"1\",\"userItemTags\":\"1\",\"userItemCommentsAnchor\":\"1\",\"userItemReadMore\":\"1\",\"userItemK2Plugins\":\"1\",\"tagItemCount\":\"10\",\"tagItemTitle\":\"1\",\"tagItemTitleLinked\":\"1\",\"tagItemDateCreated\":\"1\",\"tagItemImage\":\"1\",\"tagItemIntroText\":\"1\",\"tagItemCategory\":\"1\",\"tagItemReadMore\":\"1\",\"tagItemExtraFields\":\"0\",\"tagOrdering\":\"\",\"tagFeedLink\":\"0\",\"tagFeedIcon\":\"0\",\"genericItemCount\":\"10\",\"genericItemTitle\":\"1\",\"genericItemTitleLinked\":\"1\",\"genericItemDateCreated\":\"1\",\"genericItemImage\":\"1\",\"genericItemIntroText\":\"1\",\"genericItemCategory\":\"1\",\"genericItemReadMore\":\"1\",\"genericItemExtraFields\":\"0\",\"genericFeedLink\":\"0\",\"genericFeedIcon\":\"0\",\"feedLimit\":\"10\",\"feedItemImage\":\"1\",\"feedImgSize\":\"S\",\"feedItemIntroText\":\"1\",\"feedTextWordLimit\":\"\",\"feedItemFullText\":\"1\",\"feedItemTags\":\"0\",\"feedItemVideo\":\"0\",\"feedItemGallery\":\"0\",\"feedItemAttachments\":\"0\",\"feedBogusEmail\":\"\",\"introTextCleanup\":\"0\",\"introTextCleanupExcludeTags\":\"\",\"introTextCleanupTagAttr\":\"\",\"fullTextCleanup\":\"0\",\"fullTextCleanupExcludeTags\":\"\",\"fullTextCleanupTagAttr\":\"\",\"xssFiltering\":\"0\",\"linkPopupWidth\":\"900\",\"linkPopupHeight\":\"600\",\"imagesQuality\":\"100\",\"itemImageXS\":\"100\",\"itemImageS\":\"200\",\"itemImageM\":\"350\",\"itemImageL\":\"770\",\"itemImageXL\":\"800\",\"itemImageGeneric\":\"750\",\"catImageWidth\":\"64\",\"catImageDefault\":\"1\",\"userImageWidth\":\"124\",\"userImageDefault\":\"1\",\"commenterImgWidth\":\"64\",\"onlineImageEditor\":\"splashup\",\"imageTimestamp\":\"0\",\"imageMemoryLimit\":\"\",\"socialButtonCode\":\"<script type=\\\"text\\/javascript\\\" src=\\\"http:\\/\\/w.sharethis.com\\/button\\/buttons.js\\\"><\\/script>\\r\\n<script type=\\\"text\\/javascript\\\">stLight.options({publisher: \\\"ur-c64aa0b1-b15d-c411-f5fd-ee8e97f0f64d\\\"}); <\\/script>\\r\\n\\r\\n<div style=\\\"padding:20px 0\\\" class=\\\"social-share\\\">\\r\\n<span class=\'st_facebook_vcount\' displayText=\'Facebook\'><\\/span>\\r\\n<span class=\'st_twitter_vcount\' displayText=\'Tweet\'><\\/span>\\r\\n<span class=\'st_googleplus_vcount\' displayText=\'+1\'><\\/span>\\r\\n<span class=\'st_linkedin_vcount\' displayText=\'LinkedIn\'><\\/span>\\r\\n<span class=\'st_pinterest_vcount\' displayText=\'Pinterest\'><\\/span>\\r\\n<span class=\'st_email_vcount\' displayText=\'Email\'><\\/span>\\r\\n<span class=\'st_sharethis_vcount\' displayText=\'ShareThis\'><\\/span>\\r\\n<\\/div>\",\"twitterUsername\":\"\",\"facebookImage\":\"Small\",\"comments\":\"1\",\"commentsOrdering\":\"DESC\",\"commentsLimit\":\"10\",\"commentsFormPosition\":\"below\",\"commentsPublishing\":\"1\",\"commentsReporting\":\"2\",\"commentsReportRecipient\":\"\",\"inlineCommentsModeration\":\"0\",\"gravatar\":\"0\",\"recaptcha\":\"0\",\"commentsFormNotes\":\"1\",\"commentsFormNotesText\":\"\",\"frontendEditing\":\"1\",\"showImageTab\":\"1\",\"showImageGalleryTab\":\"1\",\"showVideoTab\":\"1\",\"showExtraFieldsTab\":\"1\",\"showAttachmentsTab\":\"1\",\"showK2Plugins\":\"1\",\"sideBarDisplayFrontend\":\"0\",\"mergeEditors\":\"1\",\"sideBarDisplay\":\"1\",\"attachmentsFolder\":\"\",\"hideImportButton\":\"1\",\"googleSearch\":\"0\",\"googleSearchContainer\":\"k2GoogleSearchContainer\",\"K2UserProfile\":\"0\",\"K2UserGroup\":\"1\",\"redirect\":\"101\",\"adminSearch\":\"simple\",\"cookieDomain\":\"\",\"taggingSystem\":\"1\",\"lockTags\":\"0\",\"showTagFilter\":\"0\",\"k2TagNorm\":\"0\",\"k2TagNormCase\":\"lower\",\"k2TagNormAdditionalReplacements\":\"\",\"recaptcha_public_key\":\"\",\"recaptcha_private_key\":\"\",\"recaptcha_theme\":\"clean\",\"recaptchaOnRegistration\":\"0\",\"stopForumSpam\":\"1\",\"stopForumSpamApiKey\":\"\",\"showItemsCounterAdmin\":\"1\",\"showChildCatItems\":\"1\",\"disableCompactOrdering\":\"0\",\"metaDescLimit\":\"150\",\"enforceSEFReplacements\":\"0\",\"SEFReplacements\":\"\\u00c0|A, \\u00c1|A, \\u00c2|A, \\u00c3|A, \\u00c4|A, \\u00c5|A, \\u00e0|a, \\u00e1|a, \\u00e2|a, \\u00e3|a, \\u00e4|a, \\u00e5|a, \\u0100|A, \\u0101|a, \\u0102|A, \\u0103|a, \\u0104|A, \\u0105|a, \\u00c7|C, \\u00e7|c, \\u0106|C, \\u0107|c, \\u0108|C, \\u0109|c, \\u010a|C, \\u010b|c, \\u010c|C, \\u010d|c, \\u00d0|D, \\u00f0|d, \\u010e|D, \\u010f|d, \\u0110|D, \\u0111|d, \\u00c8|E, \\u00c9|E, \\u00ca|E, \\u00cb|E, \\u00e8|e, \\u00e9|e, \\u00ea|e, \\u00eb|e, \\u0112|E, \\u0113|e, \\u0114|E, \\u0115|e, \\u0116|E, \\u0117|e, \\u0118|E, \\u0119|e, \\u011a|E, \\u011b|e, \\u011c|G, \\u011d|g, \\u011e|G, \\u011f|g, \\u0120|G, \\u0121|g, \\u0122|G, \\u0123|g, \\u0124|H, \\u0125|h, \\u0126|H, \\u0127|h, \\u00cc|I, \\u00cd|I, \\u00ce|I, \\u00cf|I, \\u00ec|i, \\u00ed|i, \\u00ee|i, \\u00ef|i, \\u0128|I, \\u0129|i, \\u012a|I, \\u012b|i, \\u012c|I, \\u012d|i, \\u012e|I, \\u012f|i, \\u0130|I, \\u0131|i, \\u0134|J, \\u0135|j, \\u0136|K, \\u0137|k, \\u0138|k, \\u0139|L, \\u013a|l, \\u013b|L, \\u013c|l, \\u013d|L, \\u013e|l, \\u013f|L, \\u0140|l, \\u0141|L, \\u0142|l, \\u00d1|N, \\u00f1|n, \\u0143|N, \\u0144|n, \\u0145|N, \\u0146|n, \\u0147|N, \\u0148|n, \\u0149|n, \\u014a|N, \\u014b|n, \\u00d2|O, \\u00d3|O, \\u00d4|O, \\u00d5|O, \\u00d6|O, \\u00d8|O, \\u00f2|o, \\u00f3|o, \\u00f4|o, \\u00f5|o, \\u00f6|o, \\u00f8|o, \\u014c|O, \\u014d|o, \\u014e|O, \\u014f|o, \\u0150|O, \\u0151|o, \\u0154|R, \\u0155|r, \\u0156|R, \\u0157|r, \\u0158|R, \\u0159|r, \\u015a|S, \\u015b|s, \\u015c|S, \\u015d|s, \\u015e|S, \\u015f|s, \\u0160|S, \\u0161|s, \\u017f|s, \\u0162|T, \\u0163|t, \\u0164|T, \\u0165|t, \\u0166|T, \\u0167|t, \\u00d9|U, \\u00da|U, \\u00db|U, \\u00dc|U, \\u00f9|u, \\u00fa|u, \\u00fb|u, \\u00fc|u, \\u0168|U, \\u0169|u, \\u016a|U, \\u016b|u, \\u016c|U, \\u016d|u, \\u016e|U, \\u016f|u, \\u0170|U, \\u0171|u, \\u0172|U, \\u0173|u, \\u0174|W, \\u0175|w, \\u00dd|Y, \\u00fd|y, \\u00ff|y, \\u0176|Y, \\u0177|y, \\u0178|Y, \\u0179|Z, \\u017a|z, \\u017b|Z, \\u017c|z, \\u017d|Z, \\u017e|z, \\u03b1|a, \\u03b2|b, \\u03b3|g, \\u03b4|d, \\u03b5|e, \\u03b6|z, \\u03b7|h, \\u03b8|th, \\u03b9|i, \\u03ba|k, \\u03bb|l, \\u03bc|m, \\u03bd|n, \\u03be|x, \\u03bf|o, \\u03c0|p, \\u03c1|r, \\u03c3|s, \\u03c4|t, \\u03c5|y, \\u03c6|f, \\u03c7|ch, \\u03c8|ps, \\u03c9|w, \\u0391|A, \\u0392|B, \\u0393|G, \\u0394|D, \\u0395|E, \\u0396|Z, \\u0397|H, \\u0398|Th, \\u0399|I, \\u039a|K, \\u039b|L, \\u039c|M, \\u039e|X, \\u039f|O, \\u03a0|P, \\u03a1|R, \\u03a3|S, \\u03a4|T, \\u03a5|Y, \\u03a6|F, \\u03a7|Ch, \\u03a8|Ps, \\u03a9|W, \\u03ac|a, \\u03ad|e, \\u03ae|h, \\u03af|i, \\u03cc|o, \\u03cd|y, \\u03ce|w, \\u0386|A, \\u0388|E, \\u0389|H, \\u038a|I, \\u038c|O, \\u038e|Y, \\u038f|W, \\u03ca|i, \\u0390|i, \\u03cb|y, \\u03c2|s, \\u0410|A, \\u04d0|A, \\u04d2|A, \\u04d8|E, \\u04da|E, \\u04d4|E, \\u0411|B, \\u0412|V, \\u0413|G, \\u0490|G, \\u0403|G, \\u0492|G, \\u04f6|G, y|Y, \\u0414|D, \\u0415|E, \\u0400|E, \\u0401|YO, \\u04d6|E, \\u04bc|E, \\u04be|E, \\u0404|YE, \\u0416|ZH, \\u04c1|DZH, \\u0496|ZH, \\u04dc|DZH, \\u0417|Z, \\u0498|Z, \\u04de|DZ, \\u04e0|DZ, \\u0405|DZ, \\u0418|I, \\u040d|I, \\u04e4|I, \\u04e2|I, \\u0406|I, \\u0407|JI, \\u04c0|I, \\u0419|Y, \\u048a|Y, \\u0408|J, \\u041a|K, \\u049a|Q, \\u049e|Q, \\u04a0|K, \\u04c3|Q, \\u049c|K, \\u041b|L, \\u04c5|L, \\u0409|L, \\u041c|M, \\u04cd|M, \\u041d|N, \\u04c9|N, \\u04a2|N, \\u04c7|N, \\u04a4|N, \\u040a|N, \\u041e|O, \\u04e6|O, \\u04e8|O, \\u04ea|O, \\u04a8|O, \\u041f|P, \\u04a6|PF, \\u0420|P, \\u048e|P, \\u0421|S, \\u04aa|S, \\u0422|T, \\u04ac|TH, \\u040b|T, \\u040c|K, \\u0423|U, \\u040e|U, \\u04f2|U, \\u04f0|U, \\u04ee|U, \\u04ae|U, \\u04b0|U, \\u0424|F, \\u0425|H, \\u04b2|H, \\u04ba|H, \\u0426|TS, \\u04b4|TS, \\u0427|CH, \\u04f4|CH, \\u04b6|CH, \\u04cb|CH, \\u04b8|CH, \\u040f|DZ, \\u0428|SH, \\u0429|SHT, \\u042a|A, \\u042b|Y, \\u04f8|Y, \\u042c|Y, \\u048c|Y, \\u042d|E, \\u04ec|E, \\u042e|YU, \\u042f|YA, \\u0430|a, \\u04d1|a, \\u04d3|a, \\u04d9|e, \\u04db|e, \\u04d5|e, \\u0431|b, \\u0432|v, \\u0433|g, \\u0491|g, \\u0453|g, \\u0493|g, \\u04f7|g, y|y, \\u0434|d, \\u0435|e, \\u0450|e, \\u0451|yo, \\u04d7|e, \\u04bd|e, \\u04bf|e, \\u0454|ye, \\u0436|zh, \\u04c2|dzh, \\u0497|zh, \\u04dd|dzh, \\u0437|z, \\u0499|z, \\u04df|dz, \\u04e1|dz, \\u0455|dz, \\u0438|i, \\u045d|i, \\u04e5|i, \\u04e3|i, \\u0456|i, \\u0457|ji, \\u04c0|i, \\u0439|y, \\u048b|y, \\u0458|j, \\u043a|k, \\u049b|q, \\u049f|q, \\u04a1|k, \\u04c4|q, \\u049d|k, \\u043b|l, \\u04c6|l, \\u0459|l, \\u043c|m, \\u04ce|m, \\u043d|n, \\u04ca|n, \\u04a3|n, \\u04c8|n, \\u04a5|n, \\u045a|n, \\u043e|o, \\u04e7|o, \\u04e9|o, \\u04eb|o, \\u04a9|o, \\u043f|p, \\u04a7|pf, \\u0440|p, \\u048f|p, \\u0441|s, \\u04ab|s, \\u0442|t, \\u04ad|th, \\u045b|t, \\u045c|k, \\u0443|u, \\u045e|u, \\u04f3|u, \\u04f1|u, \\u04ef|u, \\u04af|u, \\u04b1|u, \\u0444|f, \\u0445|h, \\u04b3|h, \\u04bb|h, \\u0446|ts, \\u04b5|ts, \\u0447|ch, \\u04f5|ch, \\u04b7|ch, \\u04cc|ch, \\u04b9|ch, \\u045f|dz, \\u0448|sh, \\u0449|sht, \\u044a|a, \\u044b|y, \\u04f9|y, \\u044c|y, \\u048d|y, \\u044d|e, \\u04ed|e, \\u044e|yu, \\u044f|ya\",\"k2Sef\":\"0\",\"k2SefLabelCat\":\"content\",\"k2SefLabelTag\":\"tag\",\"k2SefLabelUser\":\"author\",\"k2SefLabelSearch\":\"search\",\"k2SefLabelDate\":\"date\",\"k2SefLabelItem\":\"0\",\"k2SefLabelItemCustomPrefix\":\"\",\"k2SefInsertItemId\":\"1\",\"k2SefItemIdTitleAliasSep\":\"dash\",\"k2SefUseItemTitleAlias\":\"1\",\"k2SefInsertCatId\":\"1\",\"k2SefCatIdTitleAliasSep\":\"dash\",\"k2SefUseCatTitleAlias\":\"1\",\"sh404SefLabelCat\":\"\",\"sh404SefLabelUser\":\"blog\",\"sh404SefLabelItem\":\"2\",\"sh404SefTitleAlias\":\"alias\",\"sh404SefModK2ContentFeedAlias\":\"feed\",\"sh404SefInsertItemId\":\"0\",\"sh404SefInsertUniqueItemId\":\"0\",\"cbIntegration\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(10007,'plg_finder_k2','plugin','k2','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_k2\",\"type\":\"plugin\",\"creationDate\":\"April 7th, 2013\",\"author\":\"JoomlaWorks\",\"copyright\":\"Copyright (c) 2006 - 2013 JoomlaWorks Ltd. All rights reserved.\",\"authorEmail\":\"please-use-the-contact-form@joomlaworks.net\",\"authorUrl\":\"www.joomlaworks.net\",\"version\":\"2.6.6\",\"description\":\"PLG_FINDER_K2_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10008,'Search - K2','plugin','k2','search',0,1,1,0,'{\"legacy\":false,\"name\":\"Search - K2\",\"type\":\"plugin\",\"creationDate\":\"April 7th, 2013\",\"author\":\"JoomlaWorks\",\"copyright\":\"Copyright (c) 2006 - 2013 JoomlaWorks Ltd. All rights reserved.\",\"authorEmail\":\"please-use-the-contact-form@joomlaworks.net\",\"authorUrl\":\"www.joomlaworks.net\",\"version\":\"2.6.6\",\"description\":\"K2_THIS_PLUGIN_EXTENDS_THE_DEFAULT_JOOMLA_SEARCH_FUNCTIONALITY_TO_K2_CONTENT\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_tags\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(10009,'System - K2','plugin','k2','system',0,1,1,0,'{\"legacy\":false,\"name\":\"System - K2\",\"type\":\"plugin\",\"creationDate\":\"April 7th, 2013\",\"author\":\"JoomlaWorks\",\"copyright\":\"Copyright (c) 2006 - 2013 JoomlaWorks Ltd. All rights reserved.\",\"authorEmail\":\"please-use-the-contact-form@joomlaworks.net\",\"authorUrl\":\"www.joomlaworks.net\",\"version\":\"2.6.6\",\"description\":\"K2_THE_K2_SYSTEM_PLUGIN_IS_USED_TO_ASSIST_THE_PROPER_FUNCTIONALITY_OF_THE_K2_COMPONENT_SITE_WIDE_MAKE_SURE_ITS_ALWAYS_PUBLISHED_WHEN_THE_K2_COMPONENT_IS_INSTALLED\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10010,'User - K2','plugin','k2','user',0,1,1,0,'{\"legacy\":false,\"name\":\"User - K2\",\"type\":\"plugin\",\"creationDate\":\"April 7th, 2013\",\"author\":\"JoomlaWorks\",\"copyright\":\"Copyright (c) 2006 - 2013 JoomlaWorks Ltd. All rights reserved.\",\"authorEmail\":\"please-use-the-contact-form@joomlaworks.net\",\"authorUrl\":\"www.joomlaworks.net\",\"version\":\"2.6.6\",\"description\":\"K2_A_USER_SYNCHRONIZATION_PLUGIN_FOR_K2\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10011,'Josetta - K2 Categories','plugin','k2category','josetta_ext',0,1,1,0,'{\"legacy\":false,\"name\":\"Josetta - K2 Categories\",\"type\":\"plugin\",\"creationDate\":\"April 7th, 2013\",\"author\":\"JoomlaWorks\",\"copyright\":\"Copyright (c) 2006 - 2013 JoomlaWorks Ltd. All rights reserved.\",\"authorEmail\":\"please-use-the-contact-form@joomlaworks.net\",\"authorUrl\":\"www.joomlaworks.net\",\"version\":\"2.6.6\",\"description\":\"\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10012,'Josetta - K2 Items','plugin','k2item','josetta_ext',0,1,1,0,'{\"legacy\":false,\"name\":\"Josetta - K2 Items\",\"type\":\"plugin\",\"creationDate\":\"June 7th, 2012\",\"author\":\"JoomlaWorks\",\"copyright\":\"Copyright (c) 2006 - 2013 JoomlaWorks Ltd. All rights reserved.\",\"authorEmail\":\"please-use-the-contact-form@joomlaworks.net\",\"authorUrl\":\"www.joomlaworks.net\",\"version\":\"2.6.6\",\"description\":\"\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10013,'K2 Comments','module','mod_k2_comments','',0,1,0,0,'{\"legacy\":false,\"name\":\"K2 Comments\",\"type\":\"module\",\"creationDate\":\"April 7th, 2013\",\"author\":\"JoomlaWorks\",\"copyright\":\"Copyright (c) 2006 - 2013 JoomlaWorks Ltd. All rights reserved.\",\"authorEmail\":\"please-use-the-contact-form@joomlaworks.net\",\"authorUrl\":\"www.joomlaworks.net\",\"version\":\"2.6.6\",\"description\":\"MOD_K2_COMMENTS_DESCRIPTION\",\"group\":\"\"}','{\"moduleclass_sfx\":\"\",\"module_usage\":\"\",\"\":\"K2_TOP_COMMENTERS\",\"catfilter\":\"0\",\"category_id\":\"\",\"comments_limit\":\"5\",\"comments_word_limit\":\"10\",\"commenterName\":\"1\",\"commentAvatar\":\"1\",\"commentAvatarWidthSelect\":\"custom\",\"commentAvatarWidth\":\"50\",\"commentDate\":\"1\",\"commentDateFormat\":\"absolute\",\"commentLink\":\"1\",\"itemTitle\":\"1\",\"itemCategory\":\"1\",\"feed\":\"1\",\"commenters_limit\":\"5\",\"commenterNameOrUsername\":\"1\",\"commenterAvatar\":\"1\",\"commenterAvatarWidthSelect\":\"custom\",\"commenterAvatarWidth\":\"50\",\"commenterLink\":\"1\",\"commenterCommentsCounter\":\"1\",\"commenterLatestComment\":\"1\",\"cache\":\"1\",\"cache_time\":\"900\"}','','',0,'0000-00-00 00:00:00',0,0),(10014,'K2 Content','module','mod_k2_content','',0,1,0,0,'{\"legacy\":false,\"name\":\"K2 Content\",\"type\":\"module\",\"creationDate\":\"April 7th, 2013\",\"author\":\"JoomlaWorks\",\"copyright\":\"Copyright (c) 2006 - 2013 JoomlaWorks Ltd. All rights reserved.\",\"authorEmail\":\"please-use-the-contact-form@joomlaworks.net\",\"authorUrl\":\"www.joomlaworks.net\",\"version\":\"2.6.6\",\"description\":\"K2_MOD_K2_CONTENT_DESCRIPTION\",\"group\":\"\"}','{\"moduleclass_sfx\":\"\",\"getTemplate\":\"Default\",\"source\":\"filter\",\"\":\"K2_OTHER_OPTIONS\",\"catfilter\":\"0\",\"category_id\":\"\",\"getChildren\":\"0\",\"itemCount\":\"5\",\"itemsOrdering\":\"\",\"FeaturedItems\":\"1\",\"popularityRange\":\"\",\"videosOnly\":\"0\",\"item\":\"\",\"items\":\"\",\"itemTitle\":\"1\",\"itemAuthor\":\"1\",\"itemAuthorAvatar\":\"1\",\"itemAuthorAvatarWidthSelect\":\"custom\",\"itemAuthorAvatarWidth\":\"50\",\"userDescription\":\"1\",\"itemIntroText\":\"1\",\"itemIntroTextWordLimit\":\"\",\"itemImage\":\"1\",\"itemImgSize\":\"Small\",\"itemVideo\":\"1\",\"itemVideoCaption\":\"1\",\"itemVideoCredits\":\"1\",\"itemAttachments\":\"1\",\"itemTags\":\"1\",\"itemCategory\":\"1\",\"itemDateCreated\":\"1\",\"itemHits\":\"1\",\"itemReadMore\":\"1\",\"itemExtraFields\":\"0\",\"itemCommentsCounter\":\"1\",\"feed\":\"1\",\"itemPreText\":\"\",\"itemCustomLink\":\"0\",\"itemCustomLinkTitle\":\"\",\"itemCustomLinkURL\":\"http:\\/\\/\",\"itemCustomLinkMenuItem\":\"\",\"K2Plugins\":\"1\",\"JPlugins\":\"1\",\"cache\":\"1\",\"cache_time\":\"900\"}','','',0,'0000-00-00 00:00:00',0,0),(10015,'K2 Tools','module','mod_k2_tools','',0,1,0,0,'{\"legacy\":false,\"name\":\"K2 Tools\",\"type\":\"module\",\"creationDate\":\"April 7th, 2013\",\"author\":\"JoomlaWorks\",\"copyright\":\"Copyright (c) 2006 - 2013 JoomlaWorks Ltd. All rights reserved.\",\"authorEmail\":\"please-use-the-contact-form@joomlaworks.net\",\"authorUrl\":\"www.joomlaworks.net\",\"version\":\"2.6.6\",\"description\":\"K2_TOOLS\",\"group\":\"\"}','{\"moduleclass_sfx\":\"\",\"module_usage\":\"0\",\"\":\"K2_CUSTOM_CODE_SETTINGS\",\"archiveItemsCounter\":\"1\",\"archiveCategory\":\"\",\"authors_module_category\":\"\",\"authorItemsCounter\":\"1\",\"authorAvatar\":\"1\",\"authorAvatarWidthSelect\":\"custom\",\"authorAvatarWidth\":\"50\",\"authorLatestItem\":\"1\",\"calendarCategory\":\"\",\"home\":\"\",\"seperator\":\"\",\"root_id\":\"\",\"end_level\":\"\",\"categoriesListOrdering\":\"\",\"categoriesListItemsCounter\":\"1\",\"root_id2\":\"\",\"catfilter\":\"0\",\"category_id\":\"\",\"getChildren\":\"0\",\"liveSearch\":\"\",\"width\":\"20\",\"text\":\"\",\"button\":\"\",\"imagebutton\":\"\",\"button_text\":\"\",\"min_size\":\"75\",\"max_size\":\"300\",\"cloud_limit\":\"30\",\"cloud_category\":\"0\",\"cloud_category_recursive\":\"0\",\"customCode\":\"\",\"parsePhp\":\"0\",\"K2Plugins\":\"0\",\"JPlugins\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\"}','','',0,'0000-00-00 00:00:00',0,0),(10016,'K2 Users','module','mod_k2_users','',0,1,0,0,'{\"legacy\":false,\"name\":\"K2 Users\",\"type\":\"module\",\"creationDate\":\"April 7th, 2013\",\"author\":\"JoomlaWorks\",\"copyright\":\"Copyright (c) 2006 - 2013 JoomlaWorks Ltd. All rights reserved.\",\"authorEmail\":\"please-use-the-contact-form@joomlaworks.net\",\"authorUrl\":\"www.joomlaworks.net\",\"version\":\"2.6.6\",\"description\":\"K2_MOD_K2_USERS_DESCRTIPTION\",\"group\":\"\"}','{\"moduleclass_sfx\":\"\",\"getTemplate\":\"Default\",\"source\":\"0\",\"\":\"K2_DISPLAY_OPTIONS\",\"filter\":\"1\",\"K2UserGroup\":\"\",\"ordering\":\"1\",\"limit\":\"4\",\"userIDs\":\"\",\"userName\":\"1\",\"userAvatar\":\"1\",\"userAvatarWidthSelect\":\"custom\",\"userAvatarWidth\":\"50\",\"userDescription\":\"1\",\"userDescriptionWordLimit\":\"\",\"userURL\":\"1\",\"userEmail\":\"0\",\"userFeed\":\"1\",\"userItemCount\":\"1\",\"cache\":\"1\",\"cache_time\":\"900\"}','','',0,'0000-00-00 00:00:00',0,0),(10017,'K2 User','module','mod_k2_user','',0,1,0,0,'{\"legacy\":false,\"name\":\"K2 User\",\"type\":\"module\",\"creationDate\":\"April 7th, 2013\",\"author\":\"JoomlaWorks\",\"copyright\":\"Copyright (c) 2006 - 2013 JoomlaWorks Ltd. All rights reserved.\",\"authorEmail\":\"please-use-the-contact-form@joomlaworks.net\",\"authorUrl\":\"www.joomlaworks.net\",\"version\":\"2.6.6\",\"description\":\"K2_MOD_K2_USER_DESCRIPTION\",\"group\":\"\"}','{\"moduleclass_sfx\":\"\",\"pretext\":\"\",\"\":\"K2_LOGIN_LOGOUT_REDIRECTION\",\"name\":\"1\",\"userAvatar\":\"1\",\"userAvatarWidthSelect\":\"custom\",\"userAvatarWidth\":\"50\",\"menu\":\"\",\"login\":\"\",\"logout\":\"\",\"usesecure\":\"0\",\"cache\":\"0\",\"cache_time\":\"900\"}','','',0,'0000-00-00 00:00:00',0,0),(10018,'K2 Quick Icons (admin)','module','mod_k2_quickicons','',1,1,2,0,'{\"legacy\":false,\"name\":\"K2 Quick Icons (admin)\",\"type\":\"module\",\"creationDate\":\"April 7th, 2013\",\"author\":\"JoomlaWorks\",\"copyright\":\"Copyright (c) 2006 - 2013 JoomlaWorks Ltd. All rights reserved.\",\"authorEmail\":\"please-use-the-contact-form@joomlaworks.net\",\"authorUrl\":\"www.joomlaworks.net\",\"version\":\"2.6.6\",\"description\":\"K2_QUICKICONS_FOR_USE_IN_THE_JOOMLA_CONTROL_PANEL_DASHBOARD_PAGE\",\"group\":\"\"}','{\"modCSSStyling\":\"1\",\"modLogo\":\"1\",\"cache\":\"0\",\"cache_time\":\"900\"}','','',0,'0000-00-00 00:00:00',0,0),(10019,'K2 Stats (admin)','module','mod_k2_stats','',1,1,2,0,'{\"legacy\":false,\"name\":\"K2 Stats (admin)\",\"type\":\"module\",\"creationDate\":\"April 7th, 2013\",\"author\":\"JoomlaWorks\",\"copyright\":\"Copyright (c) 2006 - 2013 JoomlaWorks Ltd. All rights reserved.\",\"authorEmail\":\"please-use-the-contact-form@joomlaworks.net\",\"authorUrl\":\"www.joomlaworks.net\",\"version\":\"2.6.6\",\"description\":\"K2_STATS_FOR_USE_IN_THE_K2_DASHBOARD_PAGE\",\"group\":\"\"}','{\"latestItems\":\"1\",\"popularItems\":\"1\",\"mostCommentedItems\":\"1\",\"latestComments\":\"1\",\"statistics\":\"1\",\"cache\":\"0\",\"cache_time\":\"900\"}','','',0,'0000-00-00 00:00:00',0,0),(10024,'shaper_minima','template','shaper_minima','',0,1,1,0,'{\"legacy\":false,\"name\":\"shaper_minima\",\"type\":\"template\",\"creationDate\":\"Apr 2013\",\"author\":\"JoomShaper.com\",\"copyright\":\"Copyright (C) 2010 - 2013 JoomShaper.com. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"http:\\/\\/www.joomshaper.com\",\"version\":\"1.0.0\",\"description\":\"\\n\\t\\tShaper Minima is a clean yet elegant responsive Joomla business template. If you are running out a small business company then Copora will fit perfectly for your new business website.\\n\\t\\tIn this template, we presented 6 presets and a full screen slideshow layout for SP Smart Slider. Minima has some special pages thats required for a business or coporate site like\\n\\t\\tAbout Us, Contact Us, Portfolio, Services, Pircing table etc. Also all cool features of Helix Framework is available.\\n\\t\\tIn order to glue with your customers, we brought blog feature in this template which is 100% powered by mighty K2.\\n\\t\\t\\t<h3>Key Features<\\/h3>\\n\\t\\t\\t<ul class=\\\"arrow\\\">\\n\\t\\t\\t\\t<li>Unlimited module positions with the power of unique layout builder<\\/li>\\n\\t\\t\\t\\t<li>Powered by Bootstrap and compatible with Joomla 2.5 and 3.0<\\/li>\\n\\t\\t\\t\\t<li>Six (6) presets with presets manager<\\/li>\\n\\t\\t\\t\\t<li>Uses latest web technologies like html5 and css3<\\/li>\\n\\t\\t\\t\\t<li>Tons of shortcodes in built<\\/li>\\n\\t\\t\\t\\t<li>Built with LESS CSS<\\/li>\\n\\t\\t\\t\\t<li>Megamenu, RTL Support, CSS and JS compression and many more...<\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\n\\t\",\"group\":\"\"}','{\"layout_width\":\"1170\",\"layout_type\":\"responsive\",\"logo_type\":\"image\",\"logo_position\":\"logo\",\"logo_type_text\":\"Helix\",\"logo_type_slogan\":\"Joomla! Templates Framework\",\"logo_width\":\"190\",\"logo_height\":\"60\",\"footer_position\":\"footer1\",\"showcp\":\"1\",\"copyright\":\"Copyright \\u00a9  {year} Shaper Minima Demo. All Rights Reserved.\",\"show_helix_logo\":\"1\",\"jcredit\":\"1\",\"validator\":\"0\",\"credit_link\":\"1\",\"credit_text\":\"Designed by {JoomShaper}\",\"showtop\":\"1\",\"totop_position\":\"footer2\",\"preset\":\"preset1\",\"preset1_bg\":\"#dddddd\",\"preset1_link\":\"#0b7794\",\"preset1_text\":\"#555555\",\"preset1_highlighted\":\"#46c6e3\",\"preset1_bottom\":\"#0a7693\",\"preset1_footer\":\"#056a86\",\"preset2_bg\":\"#dddddd\",\"preset2_link\":\"#088f67\",\"preset2_text\":\"#555555\",\"preset2_highlighted\":\"#14ad80\",\"preset2_bottom\":\"#05694b\",\"preset2_footer\":\"#004d36\",\"preset3_bg\":\"#dddddd\",\"preset3_link\":\"#dc6957\",\"preset3_text\":\"#555555\",\"preset3_highlighted\":\"#bac45a\",\"preset3_bottom\":\"#dc6957\",\"preset3_footer\":\"#c45a4a\",\"preset4_bg\":\"#dddddd\",\"preset4_link\":\"#656f8c\",\"preset4_text\":\"#555555\",\"preset4_highlighted\":\"#9bbfab\",\"preset4_bottom\":\"#656f8c\",\"preset4_footer\":\"#525a72\",\"preset5_bg\":\"#dddddd\",\"preset5_link\":\"#be9481\",\"preset5_text\":\"#555555\",\"preset5_highlighted\":\"#42726d\",\"preset5_bottom\":\"#be9481\",\"preset5_footer\":\"#9f7c6c\",\"preset6_bg\":\"#dddddd\",\"preset6_link\":\"#3b5998\",\"preset6_text\":\"#555555\",\"preset6_highlighted\":\"#476ab4\",\"preset6_bottom\":\"#3b5998\",\"preset6_footer\":\"#324e87\",\"menu\":\"mainmenu\",\"menutype\":\"mega\",\"menu_col_width\":\"200\",\"show_menu_image\":\"1\",\"menu_image_position\":\"1\",\"submenu_position\":\"0\",\"init_x\":\"0\",\"init_y\":\"0\",\"sub_x\":\"0\",\"sub_y\":\"0\",\"body_font\":\"\",\"header_font\":\"Fjalla+One\",\"header_selectors\":\"h1,h2,h3,h4,h5,h6\",\"other_font\":\"\",\"cache_time\":\"60\",\"compress_css\":\"0\",\"compress_js\":\"0\",\"enable_ga\":\"0\",\"ga_code\":\"\",\"loadjquery\":\"0\",\"loadfromcdn\":\"0\",\"lessoption\":\"1\",\"hide_component_area\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(10027,'اللغة العربية للمحرر TinyMCE','file','TinyMCE_ar-AA','',0,1,0,0,'{\"legacy\":false,\"name\":\"\\u0627\\u0644\\u0644\\u063a\\u0629 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629 \\u0644\\u0644\\u0645\\u062d\\u0631\\u0631 TinyMCE\",\"type\":\"file\",\"creationDate\":\"01 September 2012\",\"author\":\"Dr. Ashraf Damra\",\"copyright\":\"(C) 2010-2011 Arabic Translation Team\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.jarabic.com\",\"version\":\"3.5.3\",\"description\":\"\\n\\t\\t<h3>\\u062a\\u0645 \\u0628\\u0646\\u062c\\u0627\\u062d \\u062a\\u0646\\u0635\\u064a\\u0628 \\u062d\\u0632\\u0645\\u0629 \\u0627\\u0644\\u0644\\u063a\\u0629 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629 \\u0644\\u0644\\u0645\\u062d\\u0631\\u0631 TinyMCE 3 \\u0627\\u0644\\u0645\\u0639\\u062a\\u0645\\u062f \\u0641\\u064a \\u062c\\u0648\\u0645\\u0644\\u0627! 2.5<\\/h3>\\n\\t\\t<div style=\\\"font-weight:normal\\\">\\u062a\\u0630\\u0643\\u0631 \\u0623\\u0646\\u0647 \\u0645\\u0646 \\u0627\\u0644\\u0648\\u0627\\u062c\\u0628 \\u0627\\u062f\\u062e\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0627\\u0644\\u0644\\u063a\\u0629 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629 ar \\u0641\\u064a \\u062e\\u0627\\u0646\\u0629 \\u0627\\u0644\\u0644\\u063a\\u0629 \\u0639\\u0646\\u062f<a href=\\\"index.php?option=com_plugins&view=plugins&filter_search=TinyMCE\\\"><strong> \\u0627\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u0637\\u0628\\u064a\\u0642 \\u0627\\u0644\\u0645\\u0633\\u0627\\u0639\\u062f \\u0627\\u0644\\u0645\\u062d\\u0631\\u0631-TinyMCE <\\/strong><\\/a><br \\/>\\n\\t\\t\\n\\t\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10028,'ar-AA','package','pkg_ar-AA','',0,1,1,0,'{\"legacy\":false,\"name\":\"Arabic Unitag Language Package - \\u062d\\u0632\\u0645\\u0629 \\u0627\\u0644\\u0644\\u063a\\u0629 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629 \\u0627\\u0644\\u0645\\u0648\\u062d\\u062f\\u0629\",\"type\":\"package\",\"creationDate\":\"27 April 2013\",\"author\":\"Dr. Ashraf Damra\\/Abu Nidal and Karim embarek\\/xmedia\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters & Dr. Ashraf Damra\\/Abu Nidal and Karim embarek\\/xmedia. All rights reserved.\",\"authorEmail\":\"dr.d.ashraf@gmail.com \\/ maxnew486@hotmail.com\\u200f\",\"authorUrl\":\"www.jarabic.com\",\"version\":\"2.5.11.1\",\"description\":\"\\n\\t    <h3>\\u062d\\u0632\\u0645\\u0629 \\u0627\\u0644\\u0644\\u063a\\u0629 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629 \\u0627\\u0644\\u0645\\u0648\\u062d\\u062f\\u0629 \\u0644\\u0646\\u0638\\u0627\\u0645 \\u062c\\u0648\\u0645\\u0644\\u0627! 2.5.11 \\u0627\\u0644\\u0627\\u0635\\u062f\\u0627\\u0631 1<\\/h3>\\n\\t\\t<h3>Arabic Unitag Language Package for Joomla! 2.5.11 version 1<\\/h3>\\n\\t\\t<h3>\\u062a\\u0645 \\u0628\\u0646\\u062c\\u0627\\u062d \\u062a\\u0646\\u0635\\u064a\\u0628 \\u062d\\u0632\\u0645\\u0629 \\u0627\\u0644\\u0644\\u063a\\u0629 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629 \\u0644\\u0644\\u0645\\u062d\\u0631\\u0631 TinyMCE 3 \\u0627\\u0644\\u0645\\u0639\\u062a\\u0645\\u062f \\u0641\\u064a \\u062c\\u0648\\u0645\\u0644\\u0627! 2.5<\\/h3>\\n\\t\\t<div style=\\\"font-weight:normal\\\">\\u062a\\u0630\\u0643\\u0631 \\u0623\\u0646\\u0647 \\u0645\\u0646 \\u0627\\u0644\\u0648\\u0627\\u062c\\u0628 \\u0627\\u062f\\u062e\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0627\\u0644\\u0644\\u063a\\u0629 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629 ar \\u0641\\u064a \\u062e\\u0627\\u0646\\u0629 \\u0627\\u0644\\u0644\\u063a\\u0629 \\u0639\\u0646\\u062f<a href=\\\"index.php?option=com_plugins&view=plugins&filter_search=TinyMCE\\\"><strong> \\u0627\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u0637\\u0628\\u064a\\u0642 \\u0627\\u0644\\u0645\\u0633\\u0627\\u0639\\u062f \\u0627\\u0644\\u0645\\u062d\\u0631\\u0631-TinyMCE <\\/strong><\\/a><br \\/>\\n\\t\\t\\n   \",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10031,'TinyMCE langue FR','file','TinyMCE_fr-FR','',0,1,0,0,'{\"legacy\":false,\"name\":\"TinyMCE langue FR\",\"type\":\"file\",\"creationDate\":\"4 feb 2013\",\"author\":\"French translation team : joomla.fr\",\"copyright\":\"(C) 2005-2013 French Translation Team\",\"authorEmail\":\"traduction@joomla.fr\",\"authorUrl\":\"www.joomla.fr\",\"version\":\"3.5.4.1\",\"description\":\"\\t\\t\\n\\t\\t<h3>Installation du pack de langue FR de TinyMCE 3.5.4.1 pour Joomla 2.5 effectu\\u00e9e avec succ\\u00e8s<\\/h3>\\n \\u00a0 \\u00a0 \\u00a0 \\u00a0<div style=\\\"font-weight:normal\\\">\\n \\t\\tN\'oubliez pas de s\\u00e9lectionner la langue FR dans la \\n \\t\\t<a href=\\\"index.php?option=com_plugins&view=plugins&filter_search=TinyMCE\\\"><strong>gestion du plug-in TinyMCE<\\/strong><\\/a><br \\/>\\n \\t\\tSi vous utilisez la d\\u00e9tection automatique, veillez \\u00e0 ce que soient install\\u00e9s les diff\\u00e9rents packs de langue de TinyMCE correspondants \\n \\t\\t\\u00e0 ceux install\\u00e9s pour Joomla!<\\/div>\\t\\t\\n\\t\\t\\n\\t\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10032,'fr-FR','package','pkg_fr-FR','',0,1,1,0,'{\"legacy\":false,\"name\":\"French Language Pack\",\"type\":\"package\",\"creationDate\":\"19 mar 2013\",\"author\":\"French translation team : joomla.fr\",\"copyright\":\"Copyright (C) 2005 - 2013 joomla.fr et Open Source Matters. Tous droits r\\u00e9serv\\u00e9s\",\"authorEmail\":\"traduction@joomla.fr\",\"authorUrl\":\"www.joomla.fr\",\"version\":\"2.5.11.1\",\"description\":\"\\n\\t\\t\\n\\t\\t<h3>Joomla! Full French (fr-FR) Language Package version 2.5.11v1<\\/h3>\\n\\t\\t<h3>Paquet de langue fran\\u00e7ais complet Joomla! fr-FR version 2.5.11v1<\\/h3>\\n\\t\\t<div>Installation inclue du pack de langue fr-FR de TinyMCE 3.5.4 pour Joomla 2.5.11<\\/div><br>\\n\\t\\t<div style=\\\"font-weight: normal; padding-bottom:15px;\\\">N\'oubliez pas de s\\u00e9lectionner la langue FR dans les <a href=\\\"index.php?option=com_plugins&amp;view=plugins&amp;filter_search=TinyMCE\\\"><strong>param\\u00e8tres du plug-in \'\\u00c9diteur - TinyMCE\'<\\/strong><\\/a> (param\\u00e8tre  \'Langue de l\'\\u00e9diteur\' = fr).<br>\\n \\t\\tSi vous utilisez la <strong>d\\u00e9tection automatique<\\/strong>, veillez \\u00e0 ce que soient install\\u00e9s les diff\\u00e9rents packs de langue de TinyMCE correspondants aux packs de langue install\\u00e9s pour Joomla!<\\/div>\\n\\t\\t\\n\\t\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10035,'TinyMCE nl-NL','file','TinyMCE_nl-NL','',0,1,0,0,'{\"legacy\":false,\"name\":\"TinyMCE nl-NL\",\"type\":\"file\",\"creationDate\":\"18 June 2012\",\"author\":\"Dutch Translation Team\",\"copyright\":\"(C) 2010-2012 Dutch Translation Team\",\"authorEmail\":\"taal@joomlacommunity.eu\",\"authorUrl\":\"http:\\/\\/www.joomlacommunity.eu\",\"version\":\"3.5.1.1\",\"description\":\"\\n\\t\\t<h2>Nederlands taalpakket voor TinyMCE 3.5.1.1 in Joomla 2.5 installeren geslaagd<\\/h2>\\n\\t\\tIndien u andere talen gebruikt dan Nederlands en Engels zorg dan dat u deze taalpakketten ook ge\\u00efnstalleerd heeft, voordat u \\\"Automatische taalselectie\\\" activeert via de volgende stappen:<br\\/>\\n\\t\\t<ol>\\n\\t\\t<li>Extensies<\\/li>\\n\\t\\t<li>Pluginbeheer<\\/li>\\n\\t\\t<li><a href=\\\"index.php?option=com_plugins&view=plugins&filter_search=Tekstverwerker - TinyMCE\\\">Tekstverwerker - TinyMCE<\\/a><br\\/>Of zoek in Extensies-Pluginbeheer de Editor - TinyMCE<\\/li>\\n\\t\\t<li>Basis opties<\\/li>\\n\\t\\t<li>Automatische taalselectie instellen op Ja<\\/li>\\n\\t\\t<li>Functionaliteit instellen op Uitgebreid (Optioneel -- Indien u alle functionaliteit wilt gebruiken van)<\\/li>\\n\\t\\t<\\/ol>\\n\\t\\t<p><\\/p>\\n\\t\\t<p>Bugs, taalfouten of verbeteringen kunnen gemeld worden op <a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/project\\/nederlands\\/tracker\\/?action=TrackerItemBrowse&tracker_id=10287\\\" target=\\\"_blank\\\">de tracker van het Dutch Translation Team<\\/a><br\\/>\\n\\t\\tOf op het <a href=\\\"http:\\/\\/forum.joomlacommunity.eu\\/forumdisplay.php?f=121\\\" target=\\\"_blank\\\">forum van JoomlaCommunity<\\/a><\\/p>\\n\\t\\t<p><\\/p>\\n\\t\\t\\n\\t\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10036,'nl-NL','package','pkg_nl-NL','',0,1,1,0,'{\"legacy\":false,\"name\":\"Dutch Language Pack\",\"type\":\"package\",\"creationDate\":\"2013-04-14\",\"author\":\"Dutch Translation Team\",\"copyright\":\"\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"2.5.11.1\",\"description\":\"2.5 Joomla Dutch Language Package\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10038,'TinyMCE de-DE','file','file_tinymce_de-DE','',0,1,0,0,'{\"legacy\":false,\"name\":\"TinyMCE de-DE\",\"type\":\"file\",\"creationDate\":\"27.04.2013\",\"author\":\"J!German\",\"copyright\":\"Copyright (C) 2008 - 2012 J!German. All rights reserved.\",\"authorEmail\":\"team@jgerman.de\",\"authorUrl\":\"http:\\/\\/www.jgerman.de\",\"version\":\"2.5.11.1\",\"description\":\"\\n      <img style=\\\"margin: 5px; vertical-align: middle;\\\" alt=\\\"German (Deutsch)\\\" src=\\\"data:;base64,R0lGODlhEgAMAJEAAP\\/OAAAAAN0AAAAAACH5BAAAAAAALAAAAAASAAwAAAIXjI+py+2vhJy02ouz3hb4D4biSJbmKRYAOw==\\\" height=\\\"12\\\" width=\\\"18\\\" \\/>Deutsche Editor (TinyMCE)-\\u00dcbersetzung f\\u00fcr Joomla! 2.5.11\\n      <br \\/>\\n      <img style=\\\"margin: 5px; vertical-align: middle;\\\" alt=\\\"English (Englisch)\\\" src=\\\"data:image\\/gif;base64,R0lGODlhEgAMAPcAANQYLe+nr+iPmgElcdQuQtQtQtq\\/zc8UK88TKu2Sm+A4SOucpn2RvxIseCBLmRIpdtIWLAEkctAUK\\/\\/f3g4tguqXodozRcwDHNa8y8fT5h9GlP\\/7+R82fcwIIPOCiRg2fwc0fP\\/6+AEohAwqgffV2QYuhfaTmQApgi1VngAZd9Y0SOmTnaysytIjOPixtbZlgOxVYehUYPbP09FqfWByq\\/XL0BIndO2Fju6AieZ8iQAaed9gcOnm7t28wgEpdImUt2B\\/uOtWYsAPHP\\/o5t5SYdzs98pwd\\/KXn\\/\\/v7tjo9WRyqXBtkgEdbPbu8c0MJHdomvB4gHBglMwGH7Nphm6Zy9Pq6uufqfjh5NUwRM8SKhIqd9c5TNc4TNUxRRIjcxAvg9FpfPCmpiBOjv\\/r6cYgKhIfb\\/\\/i4fSTmdm+zClSnOiMl+dXY1RioK5kgxg5hPOZoNMpPmh\\/tTxalmqFut\\/G0tchLdni765RcOiOmQAgfcHZ7v77+3J4o+6UnfTKz\\/\\/\\/\\/OurtYScx66wzThepMy7vwAeeiJLmumQmv\\/m5QAceN00RmOBqgEnc9zr9+lWY+qWoNY0Rw80eudUYWZ1qytZk+unsAYxiup5g+iSnX6Ww7Vif9EQH\\/Df5dbc6hIqdt3w+\\/\\/q6MwFHfOLkuj6\\/+ylrgAVde+aotPQ3+yMls8VLNbc69+lo+6nr9tHWAAPcLTI480GHssAGf\\/\\/\\/wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAAAAAAALAAAAAASAAwAAAjoAH9wKPOggZYPPepsCiPHRgNPXtzwGVKEwZdShUoYAAArAIpEKSwp0RTDERREjRiMyIOGYwAHIia9kORhApspRC6NsZOJDgRYlQK1WYODxKc5gjJcYeUnxB8ZCKRYQeKihqw9p1goUNRlC6QCBOAcyNICCxcVBApYUBCrrdtYFw6k6vDW7RsBAlYsqJAgBwInO\\/ocwvNoAaYjQPTIkmXKBA9OEkIBGiVrg5oEqqi8aoIqyIwoGjBwJDWIRiczN1rdOQMDzBNDOk5s7JjGFYU4SUCJMrJETIQBPkAQIiNkFaUBjJhEWlQlIAA7\\\" height=\\\"12\\\" width=\\\"18\\\" \\/>German Editor (TinyMCE) translation for Joomla! 2.5.11\\n    \",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10040,'de-DE','package','pkg_de-DE','',0,1,1,0,'{\"legacy\":false,\"name\":\"German Language Pack\",\"type\":\"package\",\"creationDate\":\"27.04.2013\",\"author\":\"J!German\",\"copyright\":\"\",\"authorEmail\":\"team@jgerman.de\",\"authorUrl\":\"http:\\/\\/www.jgerman.de\",\"version\":\"2.5.11.1\",\"description\":\"\\n    <div style=\\\"text-align: center;\\\">\\n      <h2>Deutsches \\u201eFull\\u201c-Sprachpaket f\\u00fcr Joomla! 2.5.11 von <a title=\\\"J!German\\\" href=\\\"http:\\/\\/www.jgerman.de\\\" target=\\\"_blank\\\">J!German<\\/a><\\/h2>\\n      <h3><span style=\\\"color: #008000;\\\">\\u00dcbersetzungsversion: 2.5.11v1<\\/span><\\/h3>\\n      <hr \\/>\\n      <table rules=\\\"all\\\" frame=\\\"border\\\" style=\\\"width: 90%; border-color: #000000; border-width: 1px; border-style: solid;\\\" align=\\\"center\\\" border=\\\"1\\\">\\n      <colgroup> <col width=\\\"30%\\\" \\/> <col width=\\\"60\\\" \\/> <\\/colgroup>\\n      <tbody>\\n        <tr>\\n          <td>\\n            <ul>\\n              <li>Frontend (Website)-\\u00dcbersetzung<\\/li>\\n            <\\/ul>\\n          <\\/td>\\n          <td rowspan=\\\"2\\\">\\n            <ul>\\n              <li>\\n                <span style=\\\"text-decoration: underline;\\\">Neuinstallation:<\\/span>\\n                <br \\/>\\n                Legen Sie die deutsche Sprache unter <a title=\\\"Language Manager\\\" href=\\\"index.php?option=com_languages\\\" target=\\\"_blank\\\">\\u201eExtensions\\u201c \\u2192 \\u201eLanguage Manager\\u201c<\\/a> als Standardsprache (\\u201eDefault\\u201c), sowohl f\\u00fcr die Website (\\u201eInstalled - Site\\u201c) als auch f\\u00fcr die Administration (\\u201eInstalled - Administrator\\u201c), fest.\\n              <\\/li>\\n              <br \\/>\\n              <li>\\n                <span style=\\\"text-decoration: underline;\\\">Aktualisierung:<\\/span>\\n                <br \\/>\\n                Es sind keine weiteren Schritte erforderlich.\\n              <\\/li>\\n            <\\/ul>\\n          <\\/td>\\n        <\\/tr>\\n        <tr>\\n          <td>\\n            <ul>\\n              <li>Backend (Administrator)-\\u00dcbersetzung<\\/li>\\n            <\\/ul>\\n          <\\/td>\\n        <\\/tr>\\n        <tr>\\n          <td>\\n            <ul>\\n              <li>Editor (TinyMCE)-\\u00dcbersetzung<\\/li>\\n            <\\/ul>\\n          <\\/td>\\n          <td>\\n            <ul>\\n              <li>\\n                <span style=\\\"text-decoration: underline;\\\">Neuinstallation:<\\/span>\\n                <br \\/>\\n                Aktivieren Sie in den <a title=\\\"TinyMCE in der Pluginverwaltung\\\" href=\\\"index.php?option=com_plugins&amp;view=plugins&amp;filter_search=TinyMCE\\\" target=\\\"_blank\\\">TinyMCE-Plugineinstellungen<\\/a> die automatische Sprachauswahl auf \\u201eJa\\u201c (\\u201eBasisoptionen\\u201c \\u2192 \\u201eAutom. Sprachauswahl\\u201c).\\n              <\\/li>\\n              <br \\/>\\n              <li>\\n                <span style=\\\"text-decoration: underline;\\\">Aktualisierung (nur wenn vor dieser Installation ein <strong>separates<\\/strong> TinyMCE-Sprachpaket installiert war):<\\/span>\\n                <br \\/>\\n                Deinstallieren Sie das alte TinyMCE-Sprachpaket \\u00fcber \\u201eErweiterungen\\u201c \\u2192 \\u201eErweiterungen\\u201c \\u2192 \\u201eVerwalten\\u201c \\u2192 \\u201eTinyMCE de-DE\\u201c. Danach installieren Sie dieses Paket erneut.<br \\/>Damit sorgen Sie daf\\u00fcr, dass der alte Aktualisierungsserver f\\u00fcr das einzelne TinyMCE-Sprachpaket aus Joomla! gel\\u00f6scht wird und so bei einer Aktualisierungsanfrage nicht unn\\u00f6tig gepr\\u00fcft wird.\\n              <\\/li>\\n            <\\/ul>\\n          <\\/td>\\n        <\\/tr>\\n      <\\/tbody>\\n      <\\/table>\\n      <br \\/>\\n      <span style=\\\"text-decoration: underline;\\\">Hinweis:<\\/span> Dieses Paket unterst\\u00fctzt die Joomla! eigene <a title=\\\"Joomla!-Aktualisierungsfunktion\\\" href=\\\"index.php?option=com_installer&amp;view=update\\\" target=\\\"_blank\\\">Aktualisierungsfunktion<\\/a>!\\n    <\\/div>\\n    \",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10043,'TinyMCE es-ES','file','TinyMCE_es-ES','',0,1,0,0,'{\"legacy\":false,\"name\":\"TinyMCE es-ES\",\"type\":\"file\",\"creationDate\":\"2012-6-18\",\"author\":\"Comunidad Joomla!\",\"copyright\":\"(C) 2010-2012 spanish Translation Team\",\"authorEmail\":\"info@comunidadjoomla.org\",\"authorUrl\":\"http:\\/\\/www.comunidadjoomla.org\",\"version\":\"3.5.2\",\"description\":\"\\n\\t\\t<h2>Successfully installed spanish language pack for TinyMCE 3.5.2 in Joomla 2.5<\\/h2>\\n\\t\\tIf you use other languages than English and spanish, Please make sure that you also installed all other language packs for TinyMCE before you enabling \\\"Automatic Language Selection\\\" through the following steps:<br\\/>\\n\\t\\t<ol>\\n\\t\\t<li>Extensions<\\/li>\\n\\t\\t<li>Plugin Manager<\\/li>\\n\\t\\t<li><a href=\\\"index.php?option=com_plugins&view=plugins&filter_search=Editor - TinyMCE\\\">Editor - TinyMCE<\\/a><\\/li>\\n\\t\\t<li>Basic Options<\\/li>\\n\\t\\t<li>Automatic Language Selection :: Yes<\\/li>\\n\\t\\t<li>Functionality :: Extended (Optional -- If you want to use full functions of TinyMCE)<\\/li>\\n\\t\\t<\\/ol>\\n\\t\\t<p><\\/p>\\n\\t\\t<p>Please report any bugs or issues at the Comunidad Joomla! <a href=\\\"http:\\/\\/foro.comunidadjoomla.org\\/traduccion-ext\\/\\\" target=\\\"_blank\\\">Translation forum<\\/a><\\/p>\\n\\t\\t<p><\\/p>\\n\\t\\t<p>Translated by: <a href=\\\"http:\\/\\/www.comunidadjoomla.org\\\" target=\\\"_blank\\\" title=\\\"\\\">The spanish translation team of Comunidad Joomla!<\\/a><\\/p>\\n\\t\\t<h2>El paquete en espa\\u00f1ol para el editor TinyMCE 3.5.2 se ha instalado con \\u00e9xito sobre Joomla 2.5<\\/h2>\\n\\t\\tSi usted usa otros idiomas adem\\u00e1s del ingl\\u00e9s y el espa\\u00f1ol, por favor, aseg\\u00farese de que tambi\\u00e9n instala los dem\\u00e1s idiomas para el TinyMCE antes de habilitar la opci\\u00f3n \\\"Selecci\\u00f3n autom\\u00e1tica del idioma\\\" por medio de los siguientes pasos:<br\\/>\\n\\t\\t<ol>\\n\\t\\t<li>Extensiones<\\/li>\\n\\t\\t<li>Gestor de plugins<\\/li>\\n\\t\\t<li><a href=\\\"index.php?option=com_plugins&view=plugins&filter_search=Editor - TinyMCE\\\">Editor - TinyMCE<\\/a><\\/li>\\n\\t\\t<li>Opciones b\\u00e1sicas<\\/li>\\n\\t\\t<li>Selecci\\u00f3n autom\\u00e1tica del idioma :: S\\u00ed<\\/li>\\n\\t\\t<li>Funcionalidad :: Extendida (opcional -- Si usted desea usar las funcionalidades al completo del editor TinyMCE)<\\/li>\\n\\t\\t<\\/ol>\\n\\t\\t<p><\\/p>\\n\\t\\t<p>Por favor, reporte cualquier bug o asunto relacionado a nuestro <a href=\\\"http:\\/\\/foro.comunidadjoomla.org\\/traduccion-ext\\/\\\" target=\\\"_blank\\\">Foro de traducciones<\\/a><\\/p>\\n\\t\\t<p><\\/p>\\n\\t\\t<p>Traducci\\u00f3n: <a href=\\\"http:\\/\\/www.comunidadjoomla.org\\\" target=\\\"_blank\\\" title=\\\"\\\">El equipo de traducci\\u00f3n de Comunidad Joomla!<\\/a><\\/p>\\n\\t\\t\\n\\t\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10044,'es-ES','package','pkg_es-ES','',0,1,1,0,'{\"legacy\":false,\"name\":\"Spanish Language Pack\",\"type\":\"package\",\"creationDate\":\"24 de abril del 2013\",\"author\":\"Spanish Translation Team: comunidadjoomla.org\",\"copyright\":\"Copyright (C) 2005 - 2013 comunidadjoomla.org and Open Source Matters. All rights reserved.\",\"authorEmail\":\"info@comunidadjoomla.org\",\"authorUrl\":\"www.comunidadjoomla.org\",\"version\":\"2.5.10.1\",\"description\":\"\\n\\t\\t<h2>Successfully installed the spanish language pack for Joomla! 2.5.10 with the TinyMCE 3.5.2 language files included.<\\/h2>\\n\\t\\tIf you use other languages than English and spanish, please make sure that you also installed all other language packs for TinyMCE before you enabling \\\"Automatic Language Selection\\\" through the following steps:<br\\/>\\n\\t\\t<ol>\\n\\t\\t<li>Extensions<\\/li>\\n\\t\\t<li>Plugin Manager<\\/li>\\n\\t\\t<li><a href=\\\"index.php?option=com_plugins&view=plugins&filter_search=Editor - TinyMCE\\\">Editor - TinyMCE<\\/a><\\/li>\\n\\t\\t<li>Basic Options<\\/li>\\n\\t\\t<li>Automatic Language Selection :: Yes<\\/li>\\n\\t\\t<li>Functionality :: Extended (Optional -- If you want to use full functions of TinyMCE)<\\/li>\\n\\t\\t<\\/ol>\\n\\t\\t<p><\\/p>\\n\\t\\t<p>Please report any bugs or issues at the Comunidad Joomla! <a href=\\\"http:\\/\\/foro.comunidadjoomla.org\\/traduccion-ext\\/\\\" target=\\\"_blank\\\">Translation forum<\\/a><\\/p>\\n\\t\\t<p><\\/p>\\n\\t\\t<p>Translated by: <a href=\\\"http:\\/\\/www.comunidadjoomla.org\\\" target=\\\"_blank\\\" title=\\\"\\\">The spanish translation team of Comunidad Joomla!<\\/a><\\/p>\\n\\t\\t<h2>El paquete en espa\\u00f1ol para Joomla! 2.5.10, incluyendo los archivos del editor TinyMCE 3.5.2, se ha instalado correctamente<\\/h2>\\n\\t\\tReferente al idioma del editor TinyMCE, si usted usa otros idiomas adem\\u00e1s del ingl\\u00e9s y el espa\\u00f1ol, por favor, aseg\\u00farese de que tambi\\u00e9n instala los dem\\u00e1s idiomas para el TinyMCE antes de habilitar la opci\\u00f3n \\\"Selecci\\u00f3n autom\\u00e1tica del idioma\\\" por medio de los siguientes pasos:<br\\/>\\n\\t\\t<ol>\\n\\t\\t<li>Extensiones<\\/li>\\n\\t\\t<li>Gestor de plugins<\\/li>\\n\\t\\t<li><a href=\\\"index.php?option=com_plugins&view=plugins&filter_search=Editor - TinyMCE\\\">Editor - TinyMCE<\\/a><\\/li>\\n\\t\\t<li>Opciones b\\u00e1sicas<\\/li>\\n\\t\\t<li>Selecci\\u00f3n autom\\u00e1tica del idioma :: S\\u00ed<\\/li>\\n\\t\\t<li>Funcionalidad :: Extendida (opcional -- Si usted desea usar las funcionalidades al completo del editor TinyMCE)<\\/li>\\n\\t\\t<\\/ol>\\n\\t\\t<p><\\/p>\\n\\t\\t<p>Por favor, reporte cualquier bug o asunto relacionado a nuestro <a href=\\\"http:\\/\\/foro.comunidadjoomla.org\\/traduccion-ext\\/\\\" target=\\\"_blank\\\">Foro de traducciones<\\/a><\\/p>\\n\\t\\t<p><\\/p>\\n\\t\\t<p>Traducci\\u00f3n: <a href=\\\"http:\\/\\/www.comunidadjoomla.org\\\" target=\\\"_blank\\\" title=\\\"\\\">El equipo de traducci\\u00f3n de Comunidad Joomla!<\\/a><\\/p>\\n\\t\\t\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10045,'acymailing','component','com_acymailing','',1,1,0,0,'{\"legacy\":true,\"name\":\"AcyMailing\",\"type\":\"component\",\"creationDate\":\"avril 2013\",\"author\":\"Acyba\",\"copyright\":\"Copyright (C) 2009-2013 ACYBA SARL - All rights reserved.\",\"authorEmail\":\"dev@acyba.com\",\"authorUrl\":\"http:\\/\\/www.acyba.com\",\"version\":\"4.2.0\",\"description\":\"Manage your Mailing lists, Newsletters, e-mail marketing campaigns\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10046,'AcyMailing : trigger Joomla Content plugins','plugin','contentplugin','acymailing',0,0,1,0,'','','','',0,'0000-00-00 00:00:00',15,0),(10047,'AcyMailing Manage text','plugin','managetext','acymailing',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',10,0),(10048,'AcyMailing Tag : Website links','plugin','online','acymailing',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',6,0),(10049,'AcyMailing : share on social networks','plugin','share','acymailing',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',20,0),(10050,'AcyMailing : Statistics Plugin','plugin','stats','acymailing',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',50,0),(10051,'AcyMailing table of contents generator','plugin','tablecontents','acymailing',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',5,0),(10052,'AcyMailing Tag : CB User information','plugin','tagcbuser','acymailing',0,0,1,0,'','','','',0,'0000-00-00 00:00:00',4,0),(10053,'AcyMailing Tag : content insertion','plugin','tagcontent','acymailing',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',11,0),(10054,'AcyMailing Tag : Subscriber information','plugin','tagsubscriber','acymailing',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',2,0),(10055,'AcyMailing Tag : Manage the Subscription','plugin','tagsubscription','acymailing',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',1,0),(10056,'AcyMailing Tag : Date / Time','plugin','tagtime','acymailing',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',5,0),(10057,'AcyMailing Tag : Joomla User Information','plugin','taguser','acymailing',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',3,0),(10058,'AcyMailing Template Class Replacer','plugin','template','acymailing',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',25,0),(10059,'AcyMailing Editor (beta)','plugin','acyeditor','editors',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',5,0),(10060,'AcyMailing : (auto)Subscribe during Joomla registration','plugin','regacymailing','system',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0),(10061,'AcyMailing Module','module','mod_acymailing','',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0),(10062,'ArabicUnitag','language','ar-AA','',0,1,0,0,'{\"legacy\":false,\"name\":\"Arabic Unitag (\\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629 \\u0627\\u0644\\u0645\\u0648\\u062d\\u062f\\u0629)\",\"type\":\"language\",\"creationDate\":\"27 April 2013\",\"author\":\"Dr. Ashraf Damra\\/Abu Nidal and Karim embarek\\/xmedia\",\"copyright\":\"Copyright (C) 2005 - 2012 Dr. Ashraf Damra\\/Abu Nidal and Karim embarek\\/xmedia and Open Source Matters. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"2.5.11\",\"description\":\"Arabic Unitag site language pack for Joomla! 2.5.11 \\u062d\\u0632\\u0645\\u0629 \\u0627\\u0644\\u0644\\u063a\\u0629 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629 \\u0627\\u0644\\u0645\\u0648\\u062d\\u062f\\u0629\\/\\u0627\\u0644\\u0645\\u0648\\u0642\\u0639\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10063,'ArabicUnitag','language','ar-AA','',1,1,0,0,'{\"legacy\":false,\"name\":\"Arabic Unitag (\\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629 \\u0627\\u0644\\u0645\\u0648\\u062d\\u062f\\u0629)\",\"type\":\"language\",\"creationDate\":\"27 April 2013\",\"author\":\"Dr. Ashraf Damra\\/Abu Nidal and Karim embarek\\/xmedia\",\"copyright\":\"Copyright (C) 2005 - 2012 Dr. Ashraf Damra\\/Abu Nidal and Karim embarek\\/xmedia and Open Source Matters. All rights reserved.\",\"authorEmail\":\"dr.d.ashraf@gmail.com \\/ maxnew486@hotmail.com\\u200f\",\"authorUrl\":\"www.jarabic.com\",\"version\":\"2.5.11\",\"description\":\"Arabic Unitag Administrator language 2.5.11 \\u062d\\u0632\\u0645\\u0629 \\u0627\\u0644\\u0644\\u063a\\u0629 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629 \\u0627\\u0644\\u0645\\u0648\\u062d\\u062f\\u0629\\/\\u0627\\u0644\\u0625\\u062f\\u0627\\u0631\\u0629\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10064,'NederlandsNL','language','nl-NL','',0,1,0,0,'{\"legacy\":false,\"name\":\"Nederlands (NL)\",\"type\":\"language\",\"creationDate\":\"2013-04-14\",\"author\":\"Dutch Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2013 Dutch Translation Team en Open Source Matters. All rights reserved.\",\"authorEmail\":\"taal@joomlacommunity.eu\",\"authorUrl\":\"http:\\/\\/joomlacode.org\\/gf\\/project\\/nederlands\\/\",\"version\":\"2.5.11\",\"description\":\"Nederlands taalbestand Joomla! 2.5 (site)\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10065,'NederlandsNL','language','nl-NL','',1,1,0,0,'{\"legacy\":false,\"name\":\"Nederlands (NL)\",\"type\":\"language\",\"creationDate\":\"2013-04-14\",\"author\":\"Dutch Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2013 Dutch Translation Team en Open Source Matters. All rights reserved.\",\"authorEmail\":\"taal@joomlacommunity.eu\",\"authorUrl\":\"http:\\/\\/joomlacode.org\\/gf\\/project\\/nederlands\\/\",\"version\":\"2.5.10\",\"description\":\"Nederlands taalbestand Joomla! 2.5 (beheergedeelte)\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10066,'Frenchfr-FR','language','fr-FR','',0,1,0,0,'{\"legacy\":false,\"name\":\"French (fr-FR)\",\"type\":\"language\",\"creationDate\":\"19 mar 2013\",\"author\":\"French translation team : joomla.fr\",\"copyright\":\"Copyright (C) 2005 - 2013 joomla.fr et Open Source Matters. Tous droits r\\u00e9serv\\u00e9s\",\"authorEmail\":\"traduction@joomla.fr\",\"authorUrl\":\"www.joomla.fr\",\"version\":\"2.5.11.1\",\"description\":\"fr-FR site language\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10067,'Frenchfr-FR','language','fr-FR','',1,1,0,0,'{\"legacy\":false,\"name\":\"French (fr-FR)\",\"type\":\"language\",\"creationDate\":\"19 mar 2013\",\"author\":\"French translation team : joomla.fr\",\"copyright\":\"Copyright (C) 2005 - 2013 joomla.fr et Open Source Matters. Tous droits r\\u00e9serv\\u00e9s\",\"authorEmail\":\"traduction@joomla.fr\",\"authorUrl\":\"www.joomla.fr\",\"version\":\"2.5.11.1\",\"description\":\"fr-FR administrator language\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10068,'GermanDE-CH-AT','language','de-DE','',0,1,0,0,'{\"legacy\":false,\"name\":\"German (DE-CH-AT)\",\"type\":\"language\",\"creationDate\":\"27.04.2013\",\"author\":\"J!German\",\"copyright\":\"Copyright (C) 2008 - 2012 J!German. All rights reserved.\",\"authorEmail\":\"team@jgerman.de\",\"authorUrl\":\"http:\\/\\/www.jgerman.de\",\"version\":\"2.5.11.1\",\"description\":\"\\n      <img style=\\\"margin: 5px; vertical-align: middle;\\\" alt=\\\"German (Deutsch)\\\" src=\\\"data:;base64,R0lGODlhEgAMAJEAAP\\/OAAAAAN0AAAAAACH5BAAAAAAALAAAAAASAAwAAAIXjI+py+2vhJy02ouz3hb4D4biSJbmKRYAOw==\\\" height=\\\"12\\\" width=\\\"18\\\" \\/>Deutsche Frontend (Website)-\\u00dcbersetzung f\\u00fcr Joomla! 2.5.11\\n      <br \\/>\\n      <img style=\\\"margin: 5px; vertical-align: middle;\\\" alt=\\\"English (Englisch)\\\" src=\\\"data:image\\/gif;base64,R0lGODlhEgAMAPcAANQYLe+nr+iPmgElcdQuQtQtQtq\\/zc8UK88TKu2Sm+A4SOucpn2RvxIseCBLmRIpdtIWLAEkctAUK\\/\\/f3g4tguqXodozRcwDHNa8y8fT5h9GlP\\/7+R82fcwIIPOCiRg2fwc0fP\\/6+AEohAwqgffV2QYuhfaTmQApgi1VngAZd9Y0SOmTnaysytIjOPixtbZlgOxVYehUYPbP09FqfWByq\\/XL0BIndO2Fju6AieZ8iQAaed9gcOnm7t28wgEpdImUt2B\\/uOtWYsAPHP\\/o5t5SYdzs98pwd\\/KXn\\/\\/v7tjo9WRyqXBtkgEdbPbu8c0MJHdomvB4gHBglMwGH7Nphm6Zy9Pq6uufqfjh5NUwRM8SKhIqd9c5TNc4TNUxRRIjcxAvg9FpfPCmpiBOjv\\/r6cYgKhIfb\\/\\/i4fSTmdm+zClSnOiMl+dXY1RioK5kgxg5hPOZoNMpPmh\\/tTxalmqFut\\/G0tchLdni765RcOiOmQAgfcHZ7v77+3J4o+6UnfTKz\\/\\/\\/\\/OurtYScx66wzThepMy7vwAeeiJLmumQmv\\/m5QAceN00RmOBqgEnc9zr9+lWY+qWoNY0Rw80eudUYWZ1qytZk+unsAYxiup5g+iSnX6Ww7Vif9EQH\\/Df5dbc6hIqdt3w+\\/\\/q6MwFHfOLkuj6\\/+ylrgAVde+aotPQ3+yMls8VLNbc69+lo+6nr9tHWAAPcLTI480GHssAGf\\/\\/\\/wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAAAAAAALAAAAAASAAwAAAjoAH9wKPOggZYPPepsCiPHRgNPXtzwGVKEwZdShUoYAAArAIpEKSwp0RTDERREjRiMyIOGYwAHIia9kORhApspRC6NsZOJDgRYlQK1WYODxKc5gjJcYeUnxB8ZCKRYQeKihqw9p1goUNRlC6QCBOAcyNICCxcVBApYUBCrrdtYFw6k6vDW7RsBAlYsqJAgBwInO\\/ocwvNoAaYjQPTIkmXKBA9OEkIBGiVrg5oEqqi8aoIqyIwoGjBwJDWIRiczN1rdOQMDzBNDOk5s7JjGFYU4SUCJMrJETIQBPkAQIiNkFaUBjJhEWlQlIAA7\\\" height=\\\"12\\\" width=\\\"18\\\" \\/>German Frontend (Website) translation for Joomla! 2.5.11\\n    \",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10069,'GermanDE-CH-AT','language','de-DE','',1,1,0,0,'{\"legacy\":false,\"name\":\"German (DE-CH-AT)\",\"type\":\"language\",\"creationDate\":\"27.04.2013\",\"author\":\"J!German\",\"copyright\":\"Copyright (C) 2008 - 2012 J!German. All rights reserved.\",\"authorEmail\":\"team@jgerman.de\",\"authorUrl\":\"http:\\/\\/www.jgerman.de\",\"version\":\"2.5.11.1\",\"description\":\"\\n      <img style=\\\"margin: 5px; vertical-align: middle;\\\" alt=\\\"German (Deutsch)\\\" src=\\\"data:;base64,R0lGODlhEgAMAJEAAP\\/OAAAAAN0AAAAAACH5BAAAAAAALAAAAAASAAwAAAIXjI+py+2vhJy02ouz3hb4D4biSJbmKRYAOw==\\\" height=\\\"12\\\" width=\\\"18\\\" \\/>Deutsche Backend (Administrator)-\\u00dcbersetzung f\\u00fcr Joomla! 2.5.11\\n      <br \\/>\\n      <img style=\\\"margin: 5px; vertical-align: middle;\\\" alt=\\\"English (Englisch)\\\" src=\\\"data:image\\/gif;base64,R0lGODlhEgAMAPcAANQYLe+nr+iPmgElcdQuQtQtQtq\\/zc8UK88TKu2Sm+A4SOucpn2RvxIseCBLmRIpdtIWLAEkctAUK\\/\\/f3g4tguqXodozRcwDHNa8y8fT5h9GlP\\/7+R82fcwIIPOCiRg2fwc0fP\\/6+AEohAwqgffV2QYuhfaTmQApgi1VngAZd9Y0SOmTnaysytIjOPixtbZlgOxVYehUYPbP09FqfWByq\\/XL0BIndO2Fju6AieZ8iQAaed9gcOnm7t28wgEpdImUt2B\\/uOtWYsAPHP\\/o5t5SYdzs98pwd\\/KXn\\/\\/v7tjo9WRyqXBtkgEdbPbu8c0MJHdomvB4gHBglMwGH7Nphm6Zy9Pq6uufqfjh5NUwRM8SKhIqd9c5TNc4TNUxRRIjcxAvg9FpfPCmpiBOjv\\/r6cYgKhIfb\\/\\/i4fSTmdm+zClSnOiMl+dXY1RioK5kgxg5hPOZoNMpPmh\\/tTxalmqFut\\/G0tchLdni765RcOiOmQAgfcHZ7v77+3J4o+6UnfTKz\\/\\/\\/\\/OurtYScx66wzThepMy7vwAeeiJLmumQmv\\/m5QAceN00RmOBqgEnc9zr9+lWY+qWoNY0Rw80eudUYWZ1qytZk+unsAYxiup5g+iSnX6Ww7Vif9EQH\\/Df5dbc6hIqdt3w+\\/\\/q6MwFHfOLkuj6\\/+ylrgAVde+aotPQ3+yMls8VLNbc69+lo+6nr9tHWAAPcLTI480GHssAGf\\/\\/\\/wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAAAAAAALAAAAAASAAwAAAjoAH9wKPOggZYPPepsCiPHRgNPXtzwGVKEwZdShUoYAAArAIpEKSwp0RTDERREjRiMyIOGYwAHIia9kORhApspRC6NsZOJDgRYlQK1WYODxKc5gjJcYeUnxB8ZCKRYQeKihqw9p1goUNRlC6QCBOAcyNICCxcVBApYUBCrrdtYFw6k6vDW7RsBAlYsqJAgBwInO\\/ocwvNoAaYjQPTIkmXKBA9OEkIBGiVrg5oEqqi8aoIqyIwoGjBwJDWIRiczN1rdOQMDzBNDOk5s7JjGFYU4SUCJMrJETIQBPkAQIiNkFaUBjJhEWlQlIAA7\\\" height=\\\"12\\\" width=\\\"18\\\" \\/>German Backend (Administrator) translation for Joomla! 2.5.11\\n    \",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10070,'SpanishES','language','es-ES','',0,1,0,0,'{\"legacy\":true,\"name\":\"Spanish (ES)\",\"type\":\"language\",\"creationDate\":\"2013-4-24\",\"author\":\"Spanish Translation Team: Comunidad Joomla\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters and comunidadjoomla.org. All rights reserved.\",\"authorEmail\":\"info@comunidadjoomla.org\",\"authorUrl\":\"www.comunidadjoomla.org\",\"version\":\"2.5.10.1\",\"description\":\"Spanish language pack for Joomla! 2.5.10 - Site\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10071,'SpanishES','language','es-ES','',1,1,0,0,'{\"legacy\":true,\"name\":\"Spanish (ES)\",\"type\":\"language\",\"creationDate\":\"2013-4-24\",\"author\":\"Spanish Translation Team: Comunidad Joomla\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters and comunidadjoomla.org. All rights reserved.\",\"authorEmail\":\"info@comunidadjoomla.org\",\"authorUrl\":\"www.comunidadjoomla.org\",\"version\":\"2.5.10.1\",\"description\":\"Spanish language pack for Joomla! 2.5.10 - Administrator\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10072,'isis','template','isis','',1,1,1,0,'{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\"}','{\"templateColor\":\"\",\"logoFile\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10073,'protostar','template','protostar','',0,1,1,0,'{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\"}','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(10074,'beez3','template','beez3','',0,1,1,0,'{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0),(10075,'plg_installer_webinstaller','plugin','webinstaller','installer',0,1,1,0,'{\"name\":\"plg_installer_webinstaller\",\"type\":\"plugin\",\"creationDate\":\"7 October 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.0.2\",\"description\":\"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','{\"tab_position\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(10076,'System - Helix Framework','plugin','helix','system',0,1,1,0,'{\"name\":\"System - Helix Framework\",\"type\":\"plugin\",\"creationDate\":\"March 2011\",\"author\":\"JoomShaper.com\",\"copyright\":\"Copyright (C) 2010 - 2013 JoomShaper. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"www.joomshaper.com\",\"version\":\"2.1.3\",\"description\":\"Helix Framework - JoomShaper Template Framework for Joomla 2.5 and 3.X\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10077,'ItalianItaly','language','it-IT','',0,1,0,0,'{\"name\":\"Italian (Italy)\",\"type\":\"language\",\"creationDate\":\"2014-02-25\",\"author\":\"Italian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters and Joomla.it. All rights reserved\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"3.2.3.1\",\"description\":\"Italian site language pack for Joomla! 3.2\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10078,'ItalianItaly','language','it-IT','',1,1,0,0,'{\"name\":\"Italian (Italy)\",\"type\":\"language\",\"creationDate\":\"2014-02-25\",\"author\":\"Italian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters and Joomla.it. All rights reserved\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"3.2.3.1\",\"description\":\"Italian administration language pack for Joomla! 3.2\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10079,'it-IT','package','pkg_it-IT','',0,1,1,0,'{\"name\":\"Italian Language Pack\",\"type\":\"package\",\"creationDate\":\"25 febbraio 2014\",\"author\":\"Italian translation team : joomla.it\",\"copyright\":\"Copyright (C) 2005 - 2014 joomla.it e Open Source Matters. Tutti i diritti riservati\",\"authorEmail\":\"info@joomla.it\",\"authorUrl\":\"www.joomla.it\",\"version\":\"3.2.3.1\",\"description\":\"Joomla! 3.2 Full Italian (it-IT) Language Package - Version 3.2.3v1\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10080,'Fox Contact','module','mod_foxcontact','',0,1,0,0,'{\"name\":\"Fox Contact\",\"type\":\"module\",\"creationDate\":\"Unknown\",\"author\":\"Demis Palma\",\"copyright\":\"Demis Palma\",\"authorEmail\":\"demis@fox.ra.it\",\"authorUrl\":\"http:\\/\\/www.fox.ra.it\\/\",\"version\":\"2.0.19\",\"description\":\"MOD_FOXCONTACT_DESCRIPTION\",\"group\":\"\"}','{\"form_width\":\"100\",\"form_unit\":\"%\",\"customhtml0display\":\"1\",\"customhtml0order\":\"-1000\",\"customhtml1display\":\"1\",\"customhtml1order\":\"1000\",\"labelsdisplay\":\"0\",\"labelswidth\":\"230\",\"labelsunit\":\"px\",\"sender0display\":\"2\",\"sender0order\":\"5\",\"sender1display\":\"2\",\"sender1order\":\"10\",\"sender1isemail\":\"1\",\"senderwidth\":\"85\",\"senderunit\":\"%\",\"text0display\":\"1\",\"text0order\":\"15\",\"text1display\":\"0\",\"text1order\":\"20\",\"text2display\":\"0\",\"text2order\":\"25\",\"text3display\":\"0\",\"text3order\":\"30\",\"text4display\":\"0\",\"text4order\":\"35\",\"text5display\":\"0\",\"text5order\":\"40\",\"text6display\":\"0\",\"text6order\":\"45\",\"text7display\":\"0\",\"text7order\":\"50\",\"text8display\":\"0\",\"text8order\":\"55\",\"text9display\":\"0\",\"text9order\":\"60\",\"textwidth\":\"85\",\"textunit\":\"%\",\"dropdown0display\":\"1\",\"dropdown0order\":\"65\",\"dropdown1display\":\"0\",\"dropdown1order\":\"70\",\"dropdown2display\":\"0\",\"dropdown2order\":\"75\",\"dropdownwidth\":\"85\",\"dropdownunit\":\"%\",\"textarea0display\":\"1\",\"textarea0order\":\"80\",\"textarea1display\":\"0\",\"textarea1order\":\"85\",\"textarea2display\":\"0\",\"textarea2order\":\"90\",\"textareawidth\":\"85\",\"textareaheight\":\"180\",\"textareaunit\":\"%\",\"checkbox0display\":\"1\",\"checkbox0order\":\"95\",\"checkbox1display\":\"0\",\"checkbox1order\":\"100\",\"checkbox2display\":\"0\",\"checkbox2order\":\"105\",\"checkbox3display\":\"0\",\"checkbox3order\":\"110\",\"checkbox4display\":\"0\",\"checkbox4order\":\"115\",\"uploaddisplay\":\"0\",\"uploadmethod\":\"1\",\"uploadmax_file_size\":\"10000\",\"upload_filter\":\"1\",\"upload_audio\":\"0\",\"upload_video\":\"0\",\"upload_images\":\"1\",\"upload_documents\":\"1\",\"upload_archives\":\"1\",\"submittype\":\"0\",\"submiticon\":\"\",\"resetbutton\":\"0\",\"resettype\":\"0\",\"reseticon\":\"\",\"email_sent_action\":\"0\",\"email_sent_textdisplay\":\"1\",\"copy_to_submitter\":\"1\",\"email_copy_summary\":\"0\",\"spam_check\":\"1\",\"spam_detected_textdisplay\":\"1\",\"stdcaptchadisplay\":\"0\",\"stdcaptchatype\":\"0\",\"stdcaptcha_length\":\"5\",\"stdcaptchawidth\":\"150\",\"stdcaptchaheight\":\"75\",\"stdcaptchafont\":\"\",\"stdcaptchafontmin\":\"14\",\"stdcaptchafontmax\":\"20\",\"stdcaptchaangle\":\"20\",\"stdcaptcha_backgroundcolor\":\"#ffffff\",\"stdcaptcha_textcolor\":\"#191919\",\"stdcaptcha_disturbcolor\":\"#c8c8c8\",\"stylesheet\":\"neon.css\",\"acymailing\":\"0\",\"acymailing_checkboxes\":\"hidden|hidden\",\"acymailing_auto_checked\":\"0\",\"jnews\":\"0\",\"jnews_checkboxes\":\"hidden|hidden\",\"jnews_auto_checked\":\"0\",\"othernewsletters\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(10081,'com_foxcontact','component','com_foxcontact','',1,1,0,0,'{\"name\":\"COM_FOXCONTACT\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Demis Palma\",\"copyright\":\"Demis Palma\",\"authorEmail\":\"demis@fox.ra.it\",\"authorUrl\":\"http:\\/\\/www.fox.ra.it\\/\",\"version\":\"2.0.19\",\"description\":\"COM_FOXCONTACT_DESCRIPTION\",\"group\":\"\"}','{\"adminemailfrom\":{\"select\":\"admin\"},\"adminemailreplyto\":{\"select\":\"submitter\"},\"submitteremailfrom\":{\"select\":\"admin\"},\"submitteremailreplyto\":{\"select\":\"admin\"}}','','',0,'0000-00-00 00:00:00',0,0);
/*!40000 ALTER TABLE `ujcu6_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_finder_filters`
--

DROP TABLE IF EXISTS `ujcu6_finder_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_finder_filters`
--

LOCK TABLES `ujcu6_finder_filters` WRITE;
/*!40000 ALTER TABLE `ujcu6_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_finder_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_finder_links`
--

DROP TABLE IF EXISTS `ujcu6_finder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_finder_links`
--

LOCK TABLES `ujcu6_finder_links` WRITE;
/*!40000 ALTER TABLE `ujcu6_finder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_finder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_finder_links_terms0`
--

DROP TABLE IF EXISTS `ujcu6_finder_links_terms0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_finder_links_terms0`
--

LOCK TABLES `ujcu6_finder_links_terms0` WRITE;
/*!40000 ALTER TABLE `ujcu6_finder_links_terms0` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_finder_links_terms0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_finder_links_terms1`
--

DROP TABLE IF EXISTS `ujcu6_finder_links_terms1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_finder_links_terms1`
--

LOCK TABLES `ujcu6_finder_links_terms1` WRITE;
/*!40000 ALTER TABLE `ujcu6_finder_links_terms1` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_finder_links_terms1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_finder_links_terms2`
--

DROP TABLE IF EXISTS `ujcu6_finder_links_terms2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_finder_links_terms2`
--

LOCK TABLES `ujcu6_finder_links_terms2` WRITE;
/*!40000 ALTER TABLE `ujcu6_finder_links_terms2` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_finder_links_terms2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_finder_links_terms3`
--

DROP TABLE IF EXISTS `ujcu6_finder_links_terms3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_finder_links_terms3`
--

LOCK TABLES `ujcu6_finder_links_terms3` WRITE;
/*!40000 ALTER TABLE `ujcu6_finder_links_terms3` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_finder_links_terms3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_finder_links_terms4`
--

DROP TABLE IF EXISTS `ujcu6_finder_links_terms4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_finder_links_terms4`
--

LOCK TABLES `ujcu6_finder_links_terms4` WRITE;
/*!40000 ALTER TABLE `ujcu6_finder_links_terms4` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_finder_links_terms4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_finder_links_terms5`
--

DROP TABLE IF EXISTS `ujcu6_finder_links_terms5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_finder_links_terms5`
--

LOCK TABLES `ujcu6_finder_links_terms5` WRITE;
/*!40000 ALTER TABLE `ujcu6_finder_links_terms5` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_finder_links_terms5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_finder_links_terms6`
--

DROP TABLE IF EXISTS `ujcu6_finder_links_terms6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_finder_links_terms6`
--

LOCK TABLES `ujcu6_finder_links_terms6` WRITE;
/*!40000 ALTER TABLE `ujcu6_finder_links_terms6` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_finder_links_terms6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_finder_links_terms7`
--

DROP TABLE IF EXISTS `ujcu6_finder_links_terms7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_finder_links_terms7`
--

LOCK TABLES `ujcu6_finder_links_terms7` WRITE;
/*!40000 ALTER TABLE `ujcu6_finder_links_terms7` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_finder_links_terms7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_finder_links_terms8`
--

DROP TABLE IF EXISTS `ujcu6_finder_links_terms8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_finder_links_terms8`
--

LOCK TABLES `ujcu6_finder_links_terms8` WRITE;
/*!40000 ALTER TABLE `ujcu6_finder_links_terms8` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_finder_links_terms8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_finder_links_terms9`
--

DROP TABLE IF EXISTS `ujcu6_finder_links_terms9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_finder_links_terms9`
--

LOCK TABLES `ujcu6_finder_links_terms9` WRITE;
/*!40000 ALTER TABLE `ujcu6_finder_links_terms9` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_finder_links_terms9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_finder_links_termsa`
--

DROP TABLE IF EXISTS `ujcu6_finder_links_termsa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_finder_links_termsa`
--

LOCK TABLES `ujcu6_finder_links_termsa` WRITE;
/*!40000 ALTER TABLE `ujcu6_finder_links_termsa` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_finder_links_termsa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_finder_links_termsb`
--

DROP TABLE IF EXISTS `ujcu6_finder_links_termsb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_finder_links_termsb`
--

LOCK TABLES `ujcu6_finder_links_termsb` WRITE;
/*!40000 ALTER TABLE `ujcu6_finder_links_termsb` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_finder_links_termsb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_finder_links_termsc`
--

DROP TABLE IF EXISTS `ujcu6_finder_links_termsc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_finder_links_termsc`
--

LOCK TABLES `ujcu6_finder_links_termsc` WRITE;
/*!40000 ALTER TABLE `ujcu6_finder_links_termsc` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_finder_links_termsc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_finder_links_termsd`
--

DROP TABLE IF EXISTS `ujcu6_finder_links_termsd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_finder_links_termsd`
--

LOCK TABLES `ujcu6_finder_links_termsd` WRITE;
/*!40000 ALTER TABLE `ujcu6_finder_links_termsd` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_finder_links_termsd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_finder_links_termse`
--

DROP TABLE IF EXISTS `ujcu6_finder_links_termse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_finder_links_termse`
--

LOCK TABLES `ujcu6_finder_links_termse` WRITE;
/*!40000 ALTER TABLE `ujcu6_finder_links_termse` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_finder_links_termse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_finder_links_termsf`
--

DROP TABLE IF EXISTS `ujcu6_finder_links_termsf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_finder_links_termsf`
--

LOCK TABLES `ujcu6_finder_links_termsf` WRITE;
/*!40000 ALTER TABLE `ujcu6_finder_links_termsf` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_finder_links_termsf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_finder_taxonomy`
--

DROP TABLE IF EXISTS `ujcu6_finder_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_finder_taxonomy`
--

LOCK TABLES `ujcu6_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `ujcu6_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `ujcu6_finder_taxonomy` VALUES (1,0,'ROOT',0,0,0);
/*!40000 ALTER TABLE `ujcu6_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `ujcu6_finder_taxonomy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_finder_taxonomy_map`
--

LOCK TABLES `ujcu6_finder_taxonomy_map` WRITE;
/*!40000 ALTER TABLE `ujcu6_finder_taxonomy_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_finder_taxonomy_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_finder_terms`
--

DROP TABLE IF EXISTS `ujcu6_finder_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_finder_terms`
--

LOCK TABLES `ujcu6_finder_terms` WRITE;
/*!40000 ALTER TABLE `ujcu6_finder_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_finder_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_finder_terms_common`
--

DROP TABLE IF EXISTS `ujcu6_finder_terms_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_finder_terms_common`
--

LOCK TABLES `ujcu6_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `ujcu6_finder_terms_common` DISABLE KEYS */;
INSERT INTO `ujcu6_finder_terms_common` VALUES ('a','en'),('about','en'),('after','en'),('ago','en'),('all','en'),('am','en'),('an','en'),('and','en'),('ani','en'),('any','en'),('are','en'),('aren\'t','en'),('as','en'),('at','en'),('be','en'),('but','en'),('by','en'),('for','en'),('from','en'),('get','en'),('go','en'),('how','en'),('if','en'),('in','en'),('into','en'),('is','en'),('isn\'t','en'),('it','en'),('its','en'),('me','en'),('more','en'),('most','en'),('must','en'),('my','en'),('new','en'),('no','en'),('none','en'),('not','en'),('noth','en'),('nothing','en'),('of','en'),('off','en'),('often','en'),('old','en'),('on','en'),('onc','en'),('once','en'),('onli','en'),('only','en'),('or','en'),('other','en'),('our','en'),('ours','en'),('out','en'),('over','en'),('page','en'),('she','en'),('should','en'),('small','en'),('so','en'),('some','en'),('than','en'),('thank','en'),('that','en'),('the','en'),('their','en'),('theirs','en'),('them','en'),('then','en'),('there','en'),('these','en'),('they','en'),('this','en'),('those','en'),('thus','en'),('time','en'),('times','en'),('to','en'),('too','en'),('true','en'),('under','en'),('until','en'),('up','en'),('upon','en'),('use','en'),('user','en'),('users','en'),('veri','en'),('version','en'),('very','en'),('via','en'),('want','en'),('was','en'),('way','en'),('were','en'),('what','en'),('when','en'),('where','en'),('whi','en'),('which','en'),('who','en'),('whom','en'),('whose','en'),('why','en'),('wide','en'),('will','en'),('with','en'),('within','en'),('without','en'),('would','en'),('yes','en'),('yet','en'),('you','en'),('your','en'),('yours','en');
/*!40000 ALTER TABLE `ujcu6_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_finder_tokens`
--

DROP TABLE IF EXISTS `ujcu6_finder_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_finder_tokens`
--

LOCK TABLES `ujcu6_finder_tokens` WRITE;
/*!40000 ALTER TABLE `ujcu6_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_finder_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `ujcu6_finder_tokens_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_finder_tokens_aggregate`
--

LOCK TABLES `ujcu6_finder_tokens_aggregate` WRITE;
/*!40000 ALTER TABLE `ujcu6_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_finder_tokens_aggregate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_finder_types`
--

DROP TABLE IF EXISTS `ujcu6_finder_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_finder_types`
--

LOCK TABLES `ujcu6_finder_types` WRITE;
/*!40000 ALTER TABLE `ujcu6_finder_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_finder_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_foxcontact_sessions`
--

DROP TABLE IF EXISTS `ujcu6_foxcontact_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_foxcontact_sessions` (
  `id` varchar(32) NOT NULL,
  `cid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `keyword` varchar(32) NOT NULL,
  `birth` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data` text,
  UNIQUE KEY `index` (`id`,`cid`,`mid`,`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_foxcontact_sessions`
--

LOCK TABLES `ujcu6_foxcontact_sessions` WRITE;
/*!40000 ALTER TABLE `ujcu6_foxcontact_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_foxcontact_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_foxcontact_settings`
--

DROP TABLE IF EXISTS `ujcu6_foxcontact_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_foxcontact_settings` (
  `name` varchar(32) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_foxcontact_settings`
--

LOCK TABLES `ujcu6_foxcontact_settings` WRITE;
/*!40000 ALTER TABLE `ujcu6_foxcontact_settings` DISABLE KEYS */;
INSERT INTO `ujcu6_foxcontact_settings` VALUES ('captchadrawer','use_gd'),('dns','dns_check'),('mimefilter','use_fileinfo');
/*!40000 ALTER TABLE `ujcu6_foxcontact_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_k2_attachments`
--

DROP TABLE IF EXISTS `ujcu6_k2_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_k2_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemID` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `titleAttribute` text NOT NULL,
  `hits` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `itemID` (`itemID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_k2_attachments`
--

LOCK TABLES `ujcu6_k2_attachments` WRITE;
/*!40000 ALTER TABLE `ujcu6_k2_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_k2_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_k2_categories`
--

DROP TABLE IF EXISTS `ujcu6_k2_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_k2_categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `extraFieldsGroup` int(11) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `trash` smallint(6) NOT NULL DEFAULT '0',
  `plugins` text NOT NULL,
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`published`,`access`,`trash`),
  KEY `parent` (`parent`),
  KEY `ordering` (`ordering`),
  KEY `published` (`published`),
  KEY `access` (`access`),
  KEY `trash` (`trash`),
  KEY `language` (`language`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_k2_categories`
--

LOCK TABLES `ujcu6_k2_categories` WRITE;
/*!40000 ALTER TABLE `ujcu6_k2_categories` DISABLE KEYS */;
INSERT INTO `ujcu6_k2_categories` VALUES (1,'Blog','blog','<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>',0,0,1,1,1,'','{\"inheritFrom\":\"0\",\"theme\":\"\",\"num_leading_items\":\"0\",\"num_leading_columns\":\"1\",\"leadingImgSize\":\"Large\",\"num_primary_items\":\"0\",\"num_primary_columns\":\"2\",\"primaryImgSize\":\"Medium\",\"num_secondary_items\":\"0\",\"num_secondary_columns\":\"1\",\"secondaryImgSize\":\"Small\",\"num_links\":\"0\",\"num_links_columns\":\"1\",\"linksImgSize\":\"XSmall\",\"catCatalogMode\":\"0\",\"catFeaturedItems\":\"1\",\"catOrdering\":\"\",\"catPagination\":\"2\",\"catPaginationResults\":\"1\",\"catTitle\":\"0\",\"catTitleItemCounter\":\"0\",\"catDescription\":\"0\",\"catImage\":\"0\",\"catFeedLink\":\"0\",\"catFeedIcon\":\"0\",\"subCategories\":\"1\",\"subCatColumns\":\"2\",\"subCatOrdering\":\"\",\"subCatTitle\":\"1\",\"subCatTitleItemCounter\":\"1\",\"subCatDescription\":\"1\",\"subCatImage\":\"1\",\"itemImageXS\":\"\",\"itemImageS\":\"\",\"itemImageM\":\"\",\"itemImageL\":\"\",\"itemImageXL\":\"\",\"catItemTitle\":\"1\",\"catItemTitleLinked\":\"1\",\"catItemFeaturedNotice\":\"0\",\"catItemAuthor\":\"1\",\"catItemDateCreated\":\"1\",\"catItemRating\":\"0\",\"catItemImage\":\"1\",\"catItemIntroText\":\"1\",\"catItemIntroTextWordLimit\":\"\",\"catItemExtraFields\":\"0\",\"catItemHits\":\"0\",\"catItemCategory\":\"1\",\"catItemTags\":\"1\",\"catItemAttachments\":\"0\",\"catItemAttachmentsCounter\":\"1\",\"catItemVideo\":\"0\",\"catItemVideoWidth\":\"\",\"catItemVideoHeight\":\"\",\"catItemAudioWidth\":\"\",\"catItemAudioHeight\":\"\",\"catItemVideoAutoPlay\":\"0\",\"catItemImageGallery\":\"0\",\"catItemDateModified\":\"0\",\"catItemReadMore\":\"1\",\"catItemCommentsAnchor\":\"1\",\"catItemK2Plugins\":\"1\",\"itemDateCreated\":\"1\",\"itemTitle\":\"1\",\"itemFeaturedNotice\":\"1\",\"itemAuthor\":\"1\",\"itemFontResizer\":\"1\",\"itemPrintButton\":\"1\",\"itemEmailButton\":\"1\",\"itemSocialButton\":\"1\",\"itemVideoAnchor\":\"1\",\"itemImageGalleryAnchor\":\"1\",\"itemCommentsAnchor\":\"1\",\"itemRating\":\"1\",\"itemImage\":\"1\",\"itemImgSize\":\"Large\",\"itemImageMainCaption\":\"1\",\"itemImageMainCredits\":\"1\",\"itemIntroText\":\"1\",\"itemFullText\":\"1\",\"itemExtraFields\":\"1\",\"itemDateModified\":\"1\",\"itemHits\":\"1\",\"itemCategory\":\"1\",\"itemTags\":\"1\",\"itemAttachments\":\"1\",\"itemAttachmentsCounter\":\"1\",\"itemVideo\":\"1\",\"itemVideoWidth\":\"\",\"itemVideoHeight\":\"\",\"itemAudioWidth\":\"\",\"itemAudioHeight\":\"\",\"itemVideoAutoPlay\":\"0\",\"itemVideoCaption\":\"1\",\"itemVideoCredits\":\"1\",\"itemImageGallery\":\"1\",\"itemNavigation\":\"1\",\"itemComments\":\"1\",\"itemTwitterButton\":\"1\",\"itemFacebookButton\":\"1\",\"itemGooglePlusOneButton\":\"1\",\"itemAuthorBlock\":\"1\",\"itemAuthorImage\":\"1\",\"itemAuthorDescription\":\"1\",\"itemAuthorURL\":\"1\",\"itemAuthorEmail\":\"0\",\"itemAuthorLatest\":\"1\",\"itemAuthorLatestLimit\":\"5\",\"itemRelated\":\"1\",\"itemRelatedLimit\":\"5\",\"itemRelatedTitle\":\"1\",\"itemRelatedCategory\":\"0\",\"itemRelatedImageSize\":\"0\",\"itemRelatedIntrotext\":\"0\",\"itemRelatedFulltext\":\"0\",\"itemRelatedAuthor\":\"0\",\"itemRelatedMedia\":\"0\",\"itemRelatedImageGallery\":\"0\",\"itemK2Plugins\":\"1\",\"catMetaDesc\":\"\",\"catMetaKey\":\"\",\"catMetaRobots\":\"\",\"catMetaAuthor\":\"\"}',0,'','*'),(2,'News','news','<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC.</p>',1,0,1,1,1,'2.png','{\"inheritFrom\":\"0\",\"theme\":\"\",\"num_leading_items\":\"2\",\"num_leading_columns\":\"1\",\"leadingImgSize\":\"Large\",\"num_primary_items\":\"0\",\"num_primary_columns\":\"0\",\"primaryImgSize\":\"Medium\",\"num_secondary_items\":\"0\",\"num_secondary_columns\":\"0\",\"secondaryImgSize\":\"Small\",\"num_links\":\"0\",\"num_links_columns\":\"0\",\"linksImgSize\":\"XSmall\",\"catCatalogMode\":\"0\",\"catFeaturedItems\":\"1\",\"catOrdering\":\"\",\"catPagination\":\"2\",\"catPaginationResults\":\"0\",\"catTitle\":\"0\",\"catTitleItemCounter\":\"0\",\"catDescription\":\"0\",\"catImage\":\"0\",\"catFeedLink\":\"0\",\"catFeedIcon\":\"0\",\"subCategories\":\"0\",\"subCatColumns\":\"2\",\"subCatOrdering\":\"\",\"subCatTitle\":\"1\",\"subCatTitleItemCounter\":\"1\",\"subCatDescription\":\"1\",\"subCatImage\":\"1\",\"itemImageXS\":\"\",\"itemImageS\":\"\",\"itemImageM\":\"\",\"itemImageL\":\"\",\"itemImageXL\":\"\",\"catItemTitle\":\"1\",\"catItemTitleLinked\":\"1\",\"catItemFeaturedNotice\":\"1\",\"catItemAuthor\":\"1\",\"catItemDateCreated\":\"1\",\"catItemRating\":\"0\",\"catItemImage\":\"1\",\"catItemIntroText\":\"1\",\"catItemIntroTextWordLimit\":\"\",\"catItemExtraFields\":\"0\",\"catItemHits\":\"0\",\"catItemCategory\":\"1\",\"catItemTags\":\"1\",\"catItemAttachments\":\"0\",\"catItemAttachmentsCounter\":\"0\",\"catItemVideo\":\"0\",\"catItemVideoWidth\":\"\",\"catItemVideoHeight\":\"\",\"catItemAudioWidth\":\"\",\"catItemAudioHeight\":\"\",\"catItemVideoAutoPlay\":\"0\",\"catItemImageGallery\":\"1\",\"catItemDateModified\":\"0\",\"catItemReadMore\":\"1\",\"catItemCommentsAnchor\":\"1\",\"catItemK2Plugins\":\"1\",\"itemDateCreated\":\"1\",\"itemTitle\":\"1\",\"itemFeaturedNotice\":\"1\",\"itemAuthor\":\"1\",\"itemFontResizer\":\"0\",\"itemPrintButton\":\"0\",\"itemEmailButton\":\"0\",\"itemSocialButton\":\"1\",\"itemVideoAnchor\":\"0\",\"itemImageGalleryAnchor\":\"0\",\"itemCommentsAnchor\":\"1\",\"itemRating\":\"1\",\"itemImage\":\"1\",\"itemImgSize\":\"Large\",\"itemImageMainCaption\":\"1\",\"itemImageMainCredits\":\"1\",\"itemIntroText\":\"1\",\"itemFullText\":\"1\",\"itemExtraFields\":\"1\",\"itemDateModified\":\"0\",\"itemHits\":\"0\",\"itemCategory\":\"1\",\"itemTags\":\"1\",\"itemAttachments\":\"0\",\"itemAttachmentsCounter\":\"0\",\"itemVideo\":\"0\",\"itemVideoWidth\":\"\",\"itemVideoHeight\":\"\",\"itemAudioWidth\":\"\",\"itemAudioHeight\":\"\",\"itemVideoAutoPlay\":\"0\",\"itemVideoCaption\":\"0\",\"itemVideoCredits\":\"0\",\"itemImageGallery\":\"1\",\"itemNavigation\":\"0\",\"itemComments\":\"1\",\"itemTwitterButton\":\"0\",\"itemFacebookButton\":\"0\",\"itemGooglePlusOneButton\":\"0\",\"itemAuthorBlock\":\"1\",\"itemAuthorImage\":\"1\",\"itemAuthorDescription\":\"1\",\"itemAuthorURL\":\"0\",\"itemAuthorEmail\":\"0\",\"itemAuthorLatest\":\"0\",\"itemAuthorLatestLimit\":\"5\",\"itemRelated\":\"1\",\"itemRelatedLimit\":\"5\",\"itemRelatedTitle\":\"1\",\"itemRelatedCategory\":\"1\",\"itemRelatedImageSize\":\"0\",\"itemRelatedIntrotext\":\"1\",\"itemRelatedFulltext\":\"1\",\"itemRelatedAuthor\":\"1\",\"itemRelatedMedia\":\"1\",\"itemRelatedImageGallery\":\"1\",\"itemK2Plugins\":\"1\",\"catMetaDesc\":\"\",\"catMetaKey\":\"\",\"catMetaRobots\":\"\",\"catMetaAuthor\":\"\"}',0,'','*'),(3,'Events','events','<p><span>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC.</span></p>',1,0,1,1,2,'3.png','{\"inheritFrom\":\"2\",\"theme\":\"\",\"num_leading_items\":\"2\",\"num_leading_columns\":\"1\",\"leadingImgSize\":\"Large\",\"num_primary_items\":\"4\",\"num_primary_columns\":\"2\",\"primaryImgSize\":\"Medium\",\"num_secondary_items\":\"4\",\"num_secondary_columns\":\"1\",\"secondaryImgSize\":\"Small\",\"num_links\":\"4\",\"num_links_columns\":\"1\",\"linksImgSize\":\"XSmall\",\"catCatalogMode\":\"0\",\"catFeaturedItems\":\"1\",\"catOrdering\":\"\",\"catPagination\":\"2\",\"catPaginationResults\":\"1\",\"catTitle\":\"1\",\"catTitleItemCounter\":\"1\",\"catDescription\":\"1\",\"catImage\":\"1\",\"catFeedLink\":\"1\",\"catFeedIcon\":\"1\",\"subCategories\":\"1\",\"subCatColumns\":\"2\",\"subCatOrdering\":\"\",\"subCatTitle\":\"1\",\"subCatTitleItemCounter\":\"1\",\"subCatDescription\":\"1\",\"subCatImage\":\"1\",\"itemImageXS\":\"\",\"itemImageS\":\"\",\"itemImageM\":\"\",\"itemImageL\":\"\",\"itemImageXL\":\"\",\"catItemTitle\":\"1\",\"catItemTitleLinked\":\"1\",\"catItemFeaturedNotice\":\"0\",\"catItemAuthor\":\"1\",\"catItemDateCreated\":\"1\",\"catItemRating\":\"0\",\"catItemImage\":\"1\",\"catItemIntroText\":\"1\",\"catItemIntroTextWordLimit\":\"\",\"catItemExtraFields\":\"0\",\"catItemHits\":\"0\",\"catItemCategory\":\"1\",\"catItemTags\":\"1\",\"catItemAttachments\":\"0\",\"catItemAttachmentsCounter\":\"0\",\"catItemVideo\":\"0\",\"catItemVideoWidth\":\"\",\"catItemVideoHeight\":\"\",\"catItemAudioWidth\":\"\",\"catItemAudioHeight\":\"\",\"catItemVideoAutoPlay\":\"0\",\"catItemImageGallery\":\"0\",\"catItemDateModified\":\"0\",\"catItemReadMore\":\"1\",\"catItemCommentsAnchor\":\"1\",\"catItemK2Plugins\":\"1\",\"itemDateCreated\":\"1\",\"itemTitle\":\"1\",\"itemFeaturedNotice\":\"1\",\"itemAuthor\":\"1\",\"itemFontResizer\":\"1\",\"itemPrintButton\":\"1\",\"itemEmailButton\":\"1\",\"itemSocialButton\":\"1\",\"itemVideoAnchor\":\"1\",\"itemImageGalleryAnchor\":\"1\",\"itemCommentsAnchor\":\"1\",\"itemRating\":\"1\",\"itemImage\":\"1\",\"itemImgSize\":\"Large\",\"itemImageMainCaption\":\"1\",\"itemImageMainCredits\":\"1\",\"itemIntroText\":\"1\",\"itemFullText\":\"1\",\"itemExtraFields\":\"1\",\"itemDateModified\":\"1\",\"itemHits\":\"1\",\"itemCategory\":\"1\",\"itemTags\":\"1\",\"itemAttachments\":\"1\",\"itemAttachmentsCounter\":\"1\",\"itemVideo\":\"1\",\"itemVideoWidth\":\"\",\"itemVideoHeight\":\"\",\"itemAudioWidth\":\"\",\"itemAudioHeight\":\"\",\"itemVideoAutoPlay\":\"0\",\"itemVideoCaption\":\"1\",\"itemVideoCredits\":\"1\",\"itemImageGallery\":\"1\",\"itemNavigation\":\"1\",\"itemComments\":\"1\",\"itemTwitterButton\":\"1\",\"itemFacebookButton\":\"1\",\"itemGooglePlusOneButton\":\"1\",\"itemAuthorBlock\":\"1\",\"itemAuthorImage\":\"1\",\"itemAuthorDescription\":\"1\",\"itemAuthorURL\":\"1\",\"itemAuthorEmail\":\"0\",\"itemAuthorLatest\":\"1\",\"itemAuthorLatestLimit\":\"5\",\"itemRelated\":\"1\",\"itemRelatedLimit\":\"5\",\"itemRelatedTitle\":\"1\",\"itemRelatedCategory\":\"0\",\"itemRelatedImageSize\":\"0\",\"itemRelatedIntrotext\":\"0\",\"itemRelatedFulltext\":\"0\",\"itemRelatedAuthor\":\"0\",\"itemRelatedMedia\":\"0\",\"itemRelatedImageGallery\":\"0\",\"itemK2Plugins\":\"1\",\"catMetaDesc\":\"\",\"catMetaKey\":\"\",\"catMetaRobots\":\"\",\"catMetaAuthor\":\"\"}',0,'','*'),(4,'Notice','notice','<p><span>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC.</span></p>',1,0,1,1,3,'4.png','{\"inheritFrom\":\"2\",\"theme\":\"\",\"num_leading_items\":\"2\",\"num_leading_columns\":\"1\",\"leadingImgSize\":\"Large\",\"num_primary_items\":\"4\",\"num_primary_columns\":\"2\",\"primaryImgSize\":\"Medium\",\"num_secondary_items\":\"4\",\"num_secondary_columns\":\"1\",\"secondaryImgSize\":\"Small\",\"num_links\":\"4\",\"num_links_columns\":\"1\",\"linksImgSize\":\"XSmall\",\"catCatalogMode\":\"0\",\"catFeaturedItems\":\"1\",\"catOrdering\":\"\",\"catPagination\":\"2\",\"catPaginationResults\":\"1\",\"catTitle\":\"1\",\"catTitleItemCounter\":\"1\",\"catDescription\":\"1\",\"catImage\":\"1\",\"catFeedLink\":\"1\",\"catFeedIcon\":\"1\",\"subCategories\":\"1\",\"subCatColumns\":\"2\",\"subCatOrdering\":\"\",\"subCatTitle\":\"1\",\"subCatTitleItemCounter\":\"1\",\"subCatDescription\":\"1\",\"subCatImage\":\"1\",\"itemImageXS\":\"\",\"itemImageS\":\"\",\"itemImageM\":\"\",\"itemImageL\":\"\",\"itemImageXL\":\"\",\"catItemTitle\":\"1\",\"catItemTitleLinked\":\"1\",\"catItemFeaturedNotice\":\"0\",\"catItemAuthor\":\"1\",\"catItemDateCreated\":\"1\",\"catItemRating\":\"0\",\"catItemImage\":\"1\",\"catItemIntroText\":\"1\",\"catItemIntroTextWordLimit\":\"\",\"catItemExtraFields\":\"0\",\"catItemHits\":\"0\",\"catItemCategory\":\"1\",\"catItemTags\":\"1\",\"catItemAttachments\":\"0\",\"catItemAttachmentsCounter\":\"0\",\"catItemVideo\":\"0\",\"catItemVideoWidth\":\"\",\"catItemVideoHeight\":\"\",\"catItemAudioWidth\":\"\",\"catItemAudioHeight\":\"\",\"catItemVideoAutoPlay\":\"0\",\"catItemImageGallery\":\"0\",\"catItemDateModified\":\"0\",\"catItemReadMore\":\"1\",\"catItemCommentsAnchor\":\"1\",\"catItemK2Plugins\":\"1\",\"itemDateCreated\":\"1\",\"itemTitle\":\"1\",\"itemFeaturedNotice\":\"1\",\"itemAuthor\":\"1\",\"itemFontResizer\":\"1\",\"itemPrintButton\":\"1\",\"itemEmailButton\":\"1\",\"itemSocialButton\":\"1\",\"itemVideoAnchor\":\"1\",\"itemImageGalleryAnchor\":\"1\",\"itemCommentsAnchor\":\"1\",\"itemRating\":\"1\",\"itemImage\":\"1\",\"itemImgSize\":\"Large\",\"itemImageMainCaption\":\"1\",\"itemImageMainCredits\":\"1\",\"itemIntroText\":\"1\",\"itemFullText\":\"1\",\"itemExtraFields\":\"1\",\"itemDateModified\":\"1\",\"itemHits\":\"1\",\"itemCategory\":\"1\",\"itemTags\":\"1\",\"itemAttachments\":\"1\",\"itemAttachmentsCounter\":\"1\",\"itemVideo\":\"1\",\"itemVideoWidth\":\"\",\"itemVideoHeight\":\"\",\"itemAudioWidth\":\"\",\"itemAudioHeight\":\"\",\"itemVideoAutoPlay\":\"0\",\"itemVideoCaption\":\"1\",\"itemVideoCredits\":\"1\",\"itemImageGallery\":\"1\",\"itemNavigation\":\"1\",\"itemComments\":\"1\",\"itemTwitterButton\":\"1\",\"itemFacebookButton\":\"1\",\"itemGooglePlusOneButton\":\"1\",\"itemAuthorBlock\":\"1\",\"itemAuthorImage\":\"1\",\"itemAuthorDescription\":\"1\",\"itemAuthorURL\":\"1\",\"itemAuthorEmail\":\"0\",\"itemAuthorLatest\":\"1\",\"itemAuthorLatestLimit\":\"5\",\"itemRelated\":\"1\",\"itemRelatedLimit\":\"5\",\"itemRelatedTitle\":\"1\",\"itemRelatedCategory\":\"0\",\"itemRelatedImageSize\":\"0\",\"itemRelatedIntrotext\":\"0\",\"itemRelatedFulltext\":\"0\",\"itemRelatedAuthor\":\"0\",\"itemRelatedMedia\":\"0\",\"itemRelatedImageGallery\":\"0\",\"itemK2Plugins\":\"1\",\"catMetaDesc\":\"\",\"catMetaKey\":\"\",\"catMetaRobots\":\"\",\"catMetaAuthor\":\"\"}',0,'','*'),(5,'Mobile','mobile','<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC.</p>',1,0,1,1,4,'5.png','{\"inheritFrom\":\"2\",\"theme\":\"\",\"num_leading_items\":\"2\",\"num_leading_columns\":\"1\",\"leadingImgSize\":\"Large\",\"num_primary_items\":\"4\",\"num_primary_columns\":\"2\",\"primaryImgSize\":\"Medium\",\"num_secondary_items\":\"4\",\"num_secondary_columns\":\"1\",\"secondaryImgSize\":\"Small\",\"num_links\":\"4\",\"num_links_columns\":\"1\",\"linksImgSize\":\"XSmall\",\"catCatalogMode\":\"0\",\"catFeaturedItems\":\"1\",\"catOrdering\":\"\",\"catPagination\":\"2\",\"catPaginationResults\":\"1\",\"catTitle\":\"1\",\"catTitleItemCounter\":\"1\",\"catDescription\":\"1\",\"catImage\":\"1\",\"catFeedLink\":\"1\",\"catFeedIcon\":\"1\",\"subCategories\":\"1\",\"subCatColumns\":\"2\",\"subCatOrdering\":\"\",\"subCatTitle\":\"1\",\"subCatTitleItemCounter\":\"1\",\"subCatDescription\":\"1\",\"subCatImage\":\"1\",\"itemImageXS\":\"\",\"itemImageS\":\"\",\"itemImageM\":\"\",\"itemImageL\":\"\",\"itemImageXL\":\"\",\"catItemTitle\":\"1\",\"catItemTitleLinked\":\"1\",\"catItemFeaturedNotice\":\"0\",\"catItemAuthor\":\"1\",\"catItemDateCreated\":\"1\",\"catItemRating\":\"0\",\"catItemImage\":\"1\",\"catItemIntroText\":\"1\",\"catItemIntroTextWordLimit\":\"\",\"catItemExtraFields\":\"0\",\"catItemHits\":\"0\",\"catItemCategory\":\"1\",\"catItemTags\":\"1\",\"catItemAttachments\":\"0\",\"catItemAttachmentsCounter\":\"0\",\"catItemVideo\":\"0\",\"catItemVideoWidth\":\"\",\"catItemVideoHeight\":\"\",\"catItemAudioWidth\":\"\",\"catItemAudioHeight\":\"\",\"catItemVideoAutoPlay\":\"0\",\"catItemImageGallery\":\"0\",\"catItemDateModified\":\"0\",\"catItemReadMore\":\"1\",\"catItemCommentsAnchor\":\"1\",\"catItemK2Plugins\":\"1\",\"itemDateCreated\":\"1\",\"itemTitle\":\"1\",\"itemFeaturedNotice\":\"1\",\"itemAuthor\":\"1\",\"itemFontResizer\":\"1\",\"itemPrintButton\":\"1\",\"itemEmailButton\":\"1\",\"itemSocialButton\":\"1\",\"itemVideoAnchor\":\"1\",\"itemImageGalleryAnchor\":\"1\",\"itemCommentsAnchor\":\"1\",\"itemRating\":\"1\",\"itemImage\":\"1\",\"itemImgSize\":\"Large\",\"itemImageMainCaption\":\"1\",\"itemImageMainCredits\":\"1\",\"itemIntroText\":\"1\",\"itemFullText\":\"1\",\"itemExtraFields\":\"1\",\"itemDateModified\":\"1\",\"itemHits\":\"1\",\"itemCategory\":\"1\",\"itemTags\":\"1\",\"itemAttachments\":\"1\",\"itemAttachmentsCounter\":\"1\",\"itemVideo\":\"1\",\"itemVideoWidth\":\"\",\"itemVideoHeight\":\"\",\"itemAudioWidth\":\"\",\"itemAudioHeight\":\"\",\"itemVideoAutoPlay\":\"0\",\"itemVideoCaption\":\"1\",\"itemVideoCredits\":\"1\",\"itemImageGallery\":\"1\",\"itemNavigation\":\"1\",\"itemComments\":\"1\",\"itemTwitterButton\":\"1\",\"itemFacebookButton\":\"1\",\"itemGooglePlusOneButton\":\"1\",\"itemAuthorBlock\":\"1\",\"itemAuthorImage\":\"1\",\"itemAuthorDescription\":\"1\",\"itemAuthorURL\":\"1\",\"itemAuthorEmail\":\"0\",\"itemAuthorLatest\":\"1\",\"itemAuthorLatestLimit\":\"5\",\"itemRelated\":\"1\",\"itemRelatedLimit\":\"5\",\"itemRelatedTitle\":\"1\",\"itemRelatedCategory\":\"0\",\"itemRelatedImageSize\":\"0\",\"itemRelatedIntrotext\":\"0\",\"itemRelatedFulltext\":\"0\",\"itemRelatedAuthor\":\"0\",\"itemRelatedMedia\":\"0\",\"itemRelatedImageGallery\":\"0\",\"itemK2Plugins\":\"1\",\"catMetaDesc\":\"\",\"catMetaKey\":\"\",\"catMetaRobots\":\"\",\"catMetaAuthor\":\"\"}',0,'','*'),(6,'iphone','iphone','<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC.</p>',1,0,1,1,5,'6.png','{\"inheritFrom\":\"2\",\"theme\":\"\",\"num_leading_items\":\"2\",\"num_leading_columns\":\"1\",\"leadingImgSize\":\"Large\",\"num_primary_items\":\"4\",\"num_primary_columns\":\"2\",\"primaryImgSize\":\"Medium\",\"num_secondary_items\":\"4\",\"num_secondary_columns\":\"1\",\"secondaryImgSize\":\"Small\",\"num_links\":\"4\",\"num_links_columns\":\"1\",\"linksImgSize\":\"XSmall\",\"catCatalogMode\":\"0\",\"catFeaturedItems\":\"1\",\"catOrdering\":\"\",\"catPagination\":\"2\",\"catPaginationResults\":\"1\",\"catTitle\":\"1\",\"catTitleItemCounter\":\"1\",\"catDescription\":\"1\",\"catImage\":\"1\",\"catFeedLink\":\"1\",\"catFeedIcon\":\"1\",\"subCategories\":\"1\",\"subCatColumns\":\"2\",\"subCatOrdering\":\"\",\"subCatTitle\":\"1\",\"subCatTitleItemCounter\":\"1\",\"subCatDescription\":\"1\",\"subCatImage\":\"1\",\"itemImageXS\":\"\",\"itemImageS\":\"\",\"itemImageM\":\"\",\"itemImageL\":\"\",\"itemImageXL\":\"\",\"catItemTitle\":\"1\",\"catItemTitleLinked\":\"1\",\"catItemFeaturedNotice\":\"0\",\"catItemAuthor\":\"1\",\"catItemDateCreated\":\"1\",\"catItemRating\":\"0\",\"catItemImage\":\"1\",\"catItemIntroText\":\"1\",\"catItemIntroTextWordLimit\":\"\",\"catItemExtraFields\":\"0\",\"catItemHits\":\"0\",\"catItemCategory\":\"1\",\"catItemTags\":\"1\",\"catItemAttachments\":\"0\",\"catItemAttachmentsCounter\":\"0\",\"catItemVideo\":\"0\",\"catItemVideoWidth\":\"\",\"catItemVideoHeight\":\"\",\"catItemAudioWidth\":\"\",\"catItemAudioHeight\":\"\",\"catItemVideoAutoPlay\":\"0\",\"catItemImageGallery\":\"0\",\"catItemDateModified\":\"0\",\"catItemReadMore\":\"1\",\"catItemCommentsAnchor\":\"1\",\"catItemK2Plugins\":\"1\",\"itemDateCreated\":\"1\",\"itemTitle\":\"1\",\"itemFeaturedNotice\":\"1\",\"itemAuthor\":\"1\",\"itemFontResizer\":\"1\",\"itemPrintButton\":\"1\",\"itemEmailButton\":\"1\",\"itemSocialButton\":\"1\",\"itemVideoAnchor\":\"1\",\"itemImageGalleryAnchor\":\"1\",\"itemCommentsAnchor\":\"1\",\"itemRating\":\"1\",\"itemImage\":\"1\",\"itemImgSize\":\"Large\",\"itemImageMainCaption\":\"1\",\"itemImageMainCredits\":\"1\",\"itemIntroText\":\"1\",\"itemFullText\":\"1\",\"itemExtraFields\":\"1\",\"itemDateModified\":\"1\",\"itemHits\":\"1\",\"itemCategory\":\"1\",\"itemTags\":\"1\",\"itemAttachments\":\"1\",\"itemAttachmentsCounter\":\"1\",\"itemVideo\":\"1\",\"itemVideoWidth\":\"\",\"itemVideoHeight\":\"\",\"itemAudioWidth\":\"\",\"itemAudioHeight\":\"\",\"itemVideoAutoPlay\":\"0\",\"itemVideoCaption\":\"1\",\"itemVideoCredits\":\"1\",\"itemImageGallery\":\"1\",\"itemNavigation\":\"1\",\"itemComments\":\"1\",\"itemTwitterButton\":\"1\",\"itemFacebookButton\":\"1\",\"itemGooglePlusOneButton\":\"1\",\"itemAuthorBlock\":\"1\",\"itemAuthorImage\":\"1\",\"itemAuthorDescription\":\"1\",\"itemAuthorURL\":\"1\",\"itemAuthorEmail\":\"0\",\"itemAuthorLatest\":\"1\",\"itemAuthorLatestLimit\":\"5\",\"itemRelated\":\"1\",\"itemRelatedLimit\":\"5\",\"itemRelatedTitle\":\"1\",\"itemRelatedCategory\":\"0\",\"itemRelatedImageSize\":\"0\",\"itemRelatedIntrotext\":\"0\",\"itemRelatedFulltext\":\"0\",\"itemRelatedAuthor\":\"0\",\"itemRelatedMedia\":\"0\",\"itemRelatedImageGallery\":\"0\",\"itemK2Plugins\":\"1\",\"catMetaDesc\":\"\",\"catMetaKey\":\"\",\"catMetaRobots\":\"\",\"catMetaAuthor\":\"\"}',0,'','*'),(7,'Gatgets','gatgets','<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC.</p>',1,0,1,1,6,'7.png','{\"inheritFrom\":\"2\",\"theme\":\"\",\"num_leading_items\":\"2\",\"num_leading_columns\":\"1\",\"leadingImgSize\":\"Large\",\"num_primary_items\":\"4\",\"num_primary_columns\":\"2\",\"primaryImgSize\":\"Medium\",\"num_secondary_items\":\"4\",\"num_secondary_columns\":\"1\",\"secondaryImgSize\":\"Small\",\"num_links\":\"4\",\"num_links_columns\":\"1\",\"linksImgSize\":\"XSmall\",\"catCatalogMode\":\"0\",\"catFeaturedItems\":\"1\",\"catOrdering\":\"\",\"catPagination\":\"2\",\"catPaginationResults\":\"1\",\"catTitle\":\"1\",\"catTitleItemCounter\":\"1\",\"catDescription\":\"1\",\"catImage\":\"1\",\"catFeedLink\":\"1\",\"catFeedIcon\":\"1\",\"subCategories\":\"1\",\"subCatColumns\":\"2\",\"subCatOrdering\":\"\",\"subCatTitle\":\"1\",\"subCatTitleItemCounter\":\"1\",\"subCatDescription\":\"1\",\"subCatImage\":\"1\",\"itemImageXS\":\"\",\"itemImageS\":\"\",\"itemImageM\":\"\",\"itemImageL\":\"\",\"itemImageXL\":\"\",\"catItemTitle\":\"1\",\"catItemTitleLinked\":\"1\",\"catItemFeaturedNotice\":\"0\",\"catItemAuthor\":\"1\",\"catItemDateCreated\":\"1\",\"catItemRating\":\"0\",\"catItemImage\":\"1\",\"catItemIntroText\":\"1\",\"catItemIntroTextWordLimit\":\"\",\"catItemExtraFields\":\"0\",\"catItemHits\":\"0\",\"catItemCategory\":\"1\",\"catItemTags\":\"1\",\"catItemAttachments\":\"0\",\"catItemAttachmentsCounter\":\"0\",\"catItemVideo\":\"0\",\"catItemVideoWidth\":\"\",\"catItemVideoHeight\":\"\",\"catItemAudioWidth\":\"\",\"catItemAudioHeight\":\"\",\"catItemVideoAutoPlay\":\"0\",\"catItemImageGallery\":\"0\",\"catItemDateModified\":\"0\",\"catItemReadMore\":\"1\",\"catItemCommentsAnchor\":\"1\",\"catItemK2Plugins\":\"1\",\"itemDateCreated\":\"1\",\"itemTitle\":\"1\",\"itemFeaturedNotice\":\"1\",\"itemAuthor\":\"1\",\"itemFontResizer\":\"1\",\"itemPrintButton\":\"1\",\"itemEmailButton\":\"1\",\"itemSocialButton\":\"1\",\"itemVideoAnchor\":\"1\",\"itemImageGalleryAnchor\":\"1\",\"itemCommentsAnchor\":\"1\",\"itemRating\":\"1\",\"itemImage\":\"1\",\"itemImgSize\":\"Large\",\"itemImageMainCaption\":\"1\",\"itemImageMainCredits\":\"1\",\"itemIntroText\":\"1\",\"itemFullText\":\"1\",\"itemExtraFields\":\"1\",\"itemDateModified\":\"1\",\"itemHits\":\"1\",\"itemCategory\":\"1\",\"itemTags\":\"1\",\"itemAttachments\":\"1\",\"itemAttachmentsCounter\":\"1\",\"itemVideo\":\"1\",\"itemVideoWidth\":\"\",\"itemVideoHeight\":\"\",\"itemAudioWidth\":\"\",\"itemAudioHeight\":\"\",\"itemVideoAutoPlay\":\"0\",\"itemVideoCaption\":\"1\",\"itemVideoCredits\":\"1\",\"itemImageGallery\":\"1\",\"itemNavigation\":\"1\",\"itemComments\":\"1\",\"itemTwitterButton\":\"1\",\"itemFacebookButton\":\"1\",\"itemGooglePlusOneButton\":\"1\",\"itemAuthorBlock\":\"1\",\"itemAuthorImage\":\"1\",\"itemAuthorDescription\":\"1\",\"itemAuthorURL\":\"1\",\"itemAuthorEmail\":\"0\",\"itemAuthorLatest\":\"1\",\"itemAuthorLatestLimit\":\"5\",\"itemRelated\":\"1\",\"itemRelatedLimit\":\"5\",\"itemRelatedTitle\":\"1\",\"itemRelatedCategory\":\"0\",\"itemRelatedImageSize\":\"0\",\"itemRelatedIntrotext\":\"0\",\"itemRelatedFulltext\":\"0\",\"itemRelatedAuthor\":\"0\",\"itemRelatedMedia\":\"0\",\"itemRelatedImageGallery\":\"0\",\"itemK2Plugins\":\"1\",\"catMetaDesc\":\"\",\"catMetaKey\":\"\",\"catMetaRobots\":\"\",\"catMetaAuthor\":\"\"}',0,'','*');
/*!40000 ALTER TABLE `ujcu6_k2_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_k2_comments`
--

DROP TABLE IF EXISTS `ujcu6_k2_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_k2_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `commentDate` datetime NOT NULL,
  `commentText` text NOT NULL,
  `commentEmail` varchar(255) NOT NULL,
  `commentURL` varchar(255) NOT NULL,
  `published` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `itemID` (`itemID`),
  KEY `userID` (`userID`),
  KEY `published` (`published`),
  KEY `latestComments` (`published`,`commentDate`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_k2_comments`
--

LOCK TABLES `ujcu6_k2_comments` WRITE;
/*!40000 ALTER TABLE `ujcu6_k2_comments` DISABLE KEYS */;
INSERT INTO `ujcu6_k2_comments` VALUES (1,1,0,'john doe','2013-04-01 09:17:29','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque rutrum enim ut magna sodales feugiat. Vestibulum cursus, nibh in adipiscing viverra, lorem quam tincidunt nunc, non iaculis nisl orci id risus.','jakirhasaneng@yahoo.com','',1),(2,4,0,'Santa Sohan','2013-04-04 06:24:52','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac leo arcu, vitae faucibus diam. Praesent massa diam, interdum eget tincidunt nec, euismod aliquam orci. Morbi pharetra nisl augue. Etiam adipiscing nulla ut felis tristique aliquam.','santa@sohan.com','http://www.santasohan.com',1),(3,3,0,'Jakir hasan','2013-04-04 06:28:18','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac leo arcu, vitae faucibus diam. Praesent massa diam, interdum eget tincidunt nec, euismod aliquam orci. Morbi pharetra nisl augue. Etiam adipiscing nulla ut felis tristique aliquam.','jakirhasaneng@yahoo.com','http://www.webroxs.com',1),(4,4,0,'Kailak Ray','2013-04-15 08:40:16','Morem dolor sit amet, consectetur adipiscing elit. Ut ac leo arcu, vitae faucibus diam. Praesent massa diam, interdum eget tincidunt nec, euismod aliquam orci. Morbi pharetra nisl augue. Etiam adipiscing nulla ut felis tristique aliquam.','kailak@joomshaper.com','http://www.joomshaper.com',1),(5,4,236,'Super User','2013-04-15 09:27:24','Duis porttitor, sapien et ultrices viverra, ligula magna adipiscing augue, ut porta enim justo at augue.','email@email.com','',1),(6,2,0,'Hasan Joe','2013-04-26 10:33:06','Aliquam erat volutpat. Nam sem urna, sagittis ac tempor non, rutrum nec mauris. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus eget est magna. Donec in nunc sapien, sit amet tempus augue. Integer aliquet, risus et dapibus pharetra, erat mi blandit lacus,','demo@demo.com','',1),(7,4,236,'Super User','2013-05-03 08:56:48','This is an admin comment.','email@email.com','',1);
/*!40000 ALTER TABLE `ujcu6_k2_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_k2_extra_fields`
--

DROP TABLE IF EXISTS `ujcu6_k2_extra_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_k2_extra_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `group` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `group` (`group`),
  KEY `published` (`published`),
  KEY `ordering` (`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_k2_extra_fields`
--

LOCK TABLES `ujcu6_k2_extra_fields` WRITE;
/*!40000 ALTER TABLE `ujcu6_k2_extra_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_k2_extra_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_k2_extra_fields_groups`
--

DROP TABLE IF EXISTS `ujcu6_k2_extra_fields_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_k2_extra_fields_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_k2_extra_fields_groups`
--

LOCK TABLES `ujcu6_k2_extra_fields_groups` WRITE;
/*!40000 ALTER TABLE `ujcu6_k2_extra_fields_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_k2_extra_fields_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_k2_items`
--

DROP TABLE IF EXISTS `ujcu6_k2_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_k2_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `catid` int(11) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `video` text,
  `gallery` varchar(255) DEFAULT NULL,
  `extra_fields` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `extra_fields_search` text NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL,
  `checked_out` int(10) unsigned NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `trash` smallint(6) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `featured` smallint(6) NOT NULL DEFAULT '0',
  `featured_ordering` int(11) NOT NULL DEFAULT '0',
  `image_caption` text NOT NULL,
  `image_credits` varchar(255) NOT NULL,
  `video_caption` text NOT NULL,
  `video_credits` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL,
  `params` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `metakey` text NOT NULL,
  `plugins` text NOT NULL,
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `item` (`published`,`publish_up`,`publish_down`,`trash`,`access`),
  KEY `catid` (`catid`),
  KEY `created_by` (`created_by`),
  KEY `ordering` (`ordering`),
  KEY `featured` (`featured`),
  KEY `featured_ordering` (`featured_ordering`),
  KEY `hits` (`hits`),
  KEY `created` (`created`),
  KEY `language` (`language`),
  FULLTEXT KEY `search` (`title`,`introtext`,`fulltext`,`extra_fields_search`,`image_caption`,`image_credits`,`video_caption`,`video_credits`,`metadesc`,`metakey`),
  FULLTEXT KEY `title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_k2_items`
--

LOCK TABLES `ujcu6_k2_items` WRITE;
/*!40000 ALTER TABLE `ujcu6_k2_items` DISABLE KEYS */;
INSERT INTO `ujcu6_k2_items` VALUES (1,'The standard chunk of Lorem Ipsum used.','the-standard-chunk-of-lorem-ipsum-used-since-the-1500s-is-reproduced-below-for-those-interested',2,1,'<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n','\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>',NULL,NULL,'[]','','2013-03-20 13:19:01',236,'',0,'0000-00-00 00:00:00','2013-05-06 13:18:14',236,'2013-03-20 13:19:01','0000-00-00 00:00:00',0,1,1,0,0,'','','','',190,'{\"catItemTitle\":\"\",\"catItemTitleLinked\":\"\",\"catItemFeaturedNotice\":\"\",\"catItemAuthor\":\"\",\"catItemDateCreated\":\"\",\"catItemRating\":\"\",\"catItemImage\":\"\",\"catItemIntroText\":\"\",\"catItemExtraFields\":\"\",\"catItemHits\":\"\",\"catItemCategory\":\"\",\"catItemTags\":\"\",\"catItemAttachments\":\"\",\"catItemAttachmentsCounter\":\"\",\"catItemVideo\":\"\",\"catItemVideoWidth\":\"\",\"catItemVideoHeight\":\"\",\"catItemAudioWidth\":\"\",\"catItemAudioHeight\":\"\",\"catItemVideoAutoPlay\":\"\",\"catItemImageGallery\":\"\",\"catItemDateModified\":\"\",\"catItemReadMore\":\"\",\"catItemCommentsAnchor\":\"\",\"catItemK2Plugins\":\"\",\"itemDateCreated\":\"\",\"itemTitle\":\"\",\"itemFeaturedNotice\":\"\",\"itemAuthor\":\"\",\"itemFontResizer\":\"\",\"itemPrintButton\":\"\",\"itemEmailButton\":\"\",\"itemSocialButton\":\"\",\"itemVideoAnchor\":\"\",\"itemImageGalleryAnchor\":\"\",\"itemCommentsAnchor\":\"\",\"itemRating\":\"\",\"itemImage\":\"\",\"itemImgSize\":\"\",\"itemImageMainCaption\":\"\",\"itemImageMainCredits\":\"\",\"itemIntroText\":\"\",\"itemFullText\":\"\",\"itemExtraFields\":\"\",\"itemDateModified\":\"\",\"itemHits\":\"\",\"itemCategory\":\"\",\"itemTags\":\"\",\"itemAttachments\":\"\",\"itemAttachmentsCounter\":\"\",\"itemVideo\":\"\",\"itemVideoWidth\":\"\",\"itemVideoHeight\":\"\",\"itemAudioWidth\":\"\",\"itemAudioHeight\":\"\",\"itemVideoAutoPlay\":\"\",\"itemVideoCaption\":\"\",\"itemVideoCredits\":\"\",\"itemImageGallery\":\"\",\"itemNavigation\":\"\",\"itemComments\":\"\",\"itemTwitterButton\":\"\",\"itemFacebookButton\":\"\",\"itemGooglePlusOneButton\":\"\",\"itemAuthorBlock\":\"\",\"itemAuthorImage\":\"\",\"itemAuthorDescription\":\"\",\"itemAuthorURL\":\"\",\"itemAuthorEmail\":\"\",\"itemAuthorLatest\":\"\",\"itemAuthorLatestLimit\":\"\",\"itemRelated\":\"\",\"itemRelatedLimit\":\"\",\"itemRelatedTitle\":\"\",\"itemRelatedCategory\":\"\",\"itemRelatedImageSize\":\"\",\"itemRelatedIntrotext\":\"\",\"itemRelatedFulltext\":\"\",\"itemRelatedAuthor\":\"\",\"itemRelatedMedia\":\"\",\"itemRelatedImageGallery\":\"\",\"itemK2Plugins\":\"\"}','','robots=\nauthor=','','','*'),(2,'Etiam porttitor turpis sit amet mauris volutpat.','etiam-porttitor-turpis-sit-amet-mauris-volutpat-eu-ullamcorper-libero-below-for-those-pulvinar',2,1,'<p>Nam egestas, libero nec placerat lacinia, tellus orci bibendum lectus, a elementum tortor arcu eget lectus. Etiam porttitor turpis sit amet mauris volutpat eu ullamcorper libero pulvinar. Integer ornare pulvinar magna. Integer et neque neque. Suspendisse vel diam vitae lorem tincidunt porta. Aliquam erat volutpat. Nam sem urna, sagittis ac tempor non, rutrum nec mauris. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus eget est magna. Donec in nunc sapien, sit amet tempus augue. Integer aliquet, risus et dapibus pharetra, erat mi blandit lacus, et aliquam risus ipsum id velit. Nulla facilisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla a justo a dui pellentesque gravida.</p>\r\n','\r\n<p>Etiam porttitor turpis sit amet mauris volutpat eu ullamcorper libero pulvinar. Integer ornare pulvinar magna. Integer et neque neque. Suspendisse vel diam vitae lorem tincidunt porta. Aliquam erat volutpat. Nam sem urna, sagittis ac tempor non, rutrum nec mauris. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus eget est magna. Donec in nunc sapien, sit amet tempus augue. Integer aliquet, risus et dapibus pharetra, erat mi blandit lacus, et aliquam risus ipsum id velit. Nulla facilisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla a justo a dui pellentesque gravida. Nulla volutpat ligula eget sem pellentesque elementum. Duis porttitor, sapien et ultrices viverra, ligula magna adipiscing augue, ut porta enim justo at augue.</p>',NULL,NULL,'[]','','2013-04-03 06:58:58',236,'',0,'0000-00-00 00:00:00','2013-05-06 13:17:42',236,'2013-04-03 06:58:58','0000-00-00 00:00:00',0,1,2,0,0,'','','','',13,'{\"catItemTitle\":\"\",\"catItemTitleLinked\":\"\",\"catItemFeaturedNotice\":\"\",\"catItemAuthor\":\"\",\"catItemDateCreated\":\"\",\"catItemRating\":\"\",\"catItemImage\":\"\",\"catItemIntroText\":\"\",\"catItemExtraFields\":\"\",\"catItemHits\":\"\",\"catItemCategory\":\"\",\"catItemTags\":\"\",\"catItemAttachments\":\"\",\"catItemAttachmentsCounter\":\"\",\"catItemVideo\":\"\",\"catItemVideoWidth\":\"\",\"catItemVideoHeight\":\"\",\"catItemAudioWidth\":\"\",\"catItemAudioHeight\":\"\",\"catItemVideoAutoPlay\":\"\",\"catItemImageGallery\":\"\",\"catItemDateModified\":\"\",\"catItemReadMore\":\"\",\"catItemCommentsAnchor\":\"\",\"catItemK2Plugins\":\"\",\"itemDateCreated\":\"\",\"itemTitle\":\"\",\"itemFeaturedNotice\":\"\",\"itemAuthor\":\"\",\"itemFontResizer\":\"\",\"itemPrintButton\":\"\",\"itemEmailButton\":\"\",\"itemSocialButton\":\"\",\"itemVideoAnchor\":\"\",\"itemImageGalleryAnchor\":\"\",\"itemCommentsAnchor\":\"\",\"itemRating\":\"\",\"itemImage\":\"\",\"itemImgSize\":\"\",\"itemImageMainCaption\":\"\",\"itemImageMainCredits\":\"\",\"itemIntroText\":\"\",\"itemFullText\":\"\",\"itemExtraFields\":\"\",\"itemDateModified\":\"\",\"itemHits\":\"\",\"itemCategory\":\"\",\"itemTags\":\"\",\"itemAttachments\":\"\",\"itemAttachmentsCounter\":\"\",\"itemVideo\":\"\",\"itemVideoWidth\":\"\",\"itemVideoHeight\":\"\",\"itemAudioWidth\":\"\",\"itemAudioHeight\":\"\",\"itemVideoAutoPlay\":\"\",\"itemVideoCaption\":\"\",\"itemVideoCredits\":\"\",\"itemImageGallery\":\"\",\"itemNavigation\":\"\",\"itemComments\":\"\",\"itemTwitterButton\":\"\",\"itemFacebookButton\":\"\",\"itemGooglePlusOneButton\":\"\",\"itemAuthorBlock\":\"\",\"itemAuthorImage\":\"\",\"itemAuthorDescription\":\"\",\"itemAuthorURL\":\"\",\"itemAuthorEmail\":\"\",\"itemAuthorLatest\":\"\",\"itemAuthorLatestLimit\":\"\",\"itemRelated\":\"\",\"itemRelatedLimit\":\"\",\"itemRelatedTitle\":\"\",\"itemRelatedCategory\":\"\",\"itemRelatedImageSize\":\"\",\"itemRelatedIntrotext\":\"\",\"itemRelatedFulltext\":\"\",\"itemRelatedAuthor\":\"\",\"itemRelatedMedia\":\"\",\"itemRelatedImageGallery\":\"\",\"itemK2Plugins\":\"\"}','','robots=\nauthor=','','','*'),(3,'Aenean consectetur quam quis justo sodales.','aenean-consectetur-quam-quis-justo-sodales',2,1,'<p>Nam egestas, libero nec placerat lacinia, tellus orci bibendum lectus, a elementum tortor arcu eget lectus. Etiam porttitor turpis sit amet mauris volutpat eu ullamcorper libero pulvinar. Integer ornare pulvinar magna. Integer et neque neque. Suspendisse vel diam vitae lorem tincidunt porta. Aliquam erat volutpat. Nam sem urna, sagittis ac tempor non, rutrum nec mauris. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus eget est magna. Donec in nunc sapien, sit amet tempus augue. Integer aliquet, risus et dapibus pharetra, erat mi blandit lacus, et aliquam risus ipsum id velit. Nulla facilisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla a justo a dui pellentesque gravida.</p>\r\n','\r\n<p>Etiam porttitor turpis sit amet mauris volutpat eu ullamcorper libero pulvinar. Integer ornare pulvinar magna. Integer et neque neque. Suspendisse vel diam vitae lorem tincidunt porta. Aliquam erat volutpat. Nam sem urna, sagittis ac tempor non, rutrum nec mauris. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus eget est magna. Donec in nunc sapien, sit amet tempus augue. Integer aliquet, risus et dapibus pharetra, erat mi blandit lacus, et aliquam risus ipsum id velit. Nulla facilisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla a justo a dui pellentesque gravida. Nulla volutpat ligula eget sem pellentesque elementum. Duis porttitor, sapien et ultrices viverra, ligula magna adipiscing augue, ut porta enim justo at augue.</p>',NULL,NULL,'[]','','2013-04-03 07:09:56',236,'',0,'0000-00-00 00:00:00','2013-05-06 13:16:51',236,'2013-04-03 07:09:56','0000-00-00 00:00:00',0,1,3,0,0,'','','','',67,'{\"catItemTitle\":\"\",\"catItemTitleLinked\":\"\",\"catItemFeaturedNotice\":\"\",\"catItemAuthor\":\"\",\"catItemDateCreated\":\"\",\"catItemRating\":\"\",\"catItemImage\":\"\",\"catItemIntroText\":\"\",\"catItemExtraFields\":\"\",\"catItemHits\":\"\",\"catItemCategory\":\"\",\"catItemTags\":\"\",\"catItemAttachments\":\"\",\"catItemAttachmentsCounter\":\"\",\"catItemVideo\":\"\",\"catItemVideoWidth\":\"\",\"catItemVideoHeight\":\"\",\"catItemAudioWidth\":\"\",\"catItemAudioHeight\":\"\",\"catItemVideoAutoPlay\":\"\",\"catItemImageGallery\":\"\",\"catItemDateModified\":\"\",\"catItemReadMore\":\"\",\"catItemCommentsAnchor\":\"\",\"catItemK2Plugins\":\"\",\"itemDateCreated\":\"\",\"itemTitle\":\"\",\"itemFeaturedNotice\":\"\",\"itemAuthor\":\"\",\"itemFontResizer\":\"\",\"itemPrintButton\":\"\",\"itemEmailButton\":\"\",\"itemSocialButton\":\"\",\"itemVideoAnchor\":\"\",\"itemImageGalleryAnchor\":\"\",\"itemCommentsAnchor\":\"\",\"itemRating\":\"\",\"itemImage\":\"\",\"itemImgSize\":\"\",\"itemImageMainCaption\":\"\",\"itemImageMainCredits\":\"\",\"itemIntroText\":\"\",\"itemFullText\":\"\",\"itemExtraFields\":\"\",\"itemDateModified\":\"\",\"itemHits\":\"\",\"itemCategory\":\"\",\"itemTags\":\"\",\"itemAttachments\":\"\",\"itemAttachmentsCounter\":\"\",\"itemVideo\":\"\",\"itemVideoWidth\":\"\",\"itemVideoHeight\":\"\",\"itemAudioWidth\":\"\",\"itemAudioHeight\":\"\",\"itemVideoAutoPlay\":\"\",\"itemVideoCaption\":\"\",\"itemVideoCredits\":\"\",\"itemImageGallery\":\"\",\"itemNavigation\":\"\",\"itemComments\":\"\",\"itemTwitterButton\":\"\",\"itemFacebookButton\":\"\",\"itemGooglePlusOneButton\":\"\",\"itemAuthorBlock\":\"\",\"itemAuthorImage\":\"\",\"itemAuthorDescription\":\"\",\"itemAuthorURL\":\"\",\"itemAuthorEmail\":\"\",\"itemAuthorLatest\":\"\",\"itemAuthorLatestLimit\":\"\",\"itemRelated\":\"\",\"itemRelatedLimit\":\"\",\"itemRelatedTitle\":\"\",\"itemRelatedCategory\":\"\",\"itemRelatedImageSize\":\"\",\"itemRelatedIntrotext\":\"\",\"itemRelatedFulltext\":\"\",\"itemRelatedAuthor\":\"\",\"itemRelatedMedia\":\"\",\"itemRelatedImageGallery\":\"\",\"itemK2Plugins\":\"\"}','','robots=\nauthor=','','','*'),(4,'Quisque vitae diam in sapien bibendum rhoncus.','quisque-vitae-diam-in-sapien-bibendum-rhoncus',2,1,'<p>Nam egestas, libero nec placerat lacinia, tellus orci bibendum lectus, a elementum tortor arcu eget lectus. Etiam porttitor turpis sit amet mauris volutpat eu ullamcorper libero pulvinar. Integer ornare pulvinar magna. Integer et neque neque. Suspendisse vel diam vitae lorem tincidunt porta. Aliquam erat volutpat. Nam sem urna, sagittis ac tempor non, rutrum nec mauris. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus eget est magna. Donec in nunc sapien, sit amet tempus augue. Integer aliquet, risus et dapibus pharetra, erat mi blandit lacus, et aliquam risus ipsum id velit. Nulla facilisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla a justo a dui pellentesque gravida.</p>\r\n','\r\n<p>Etiam porttitor turpis sit amet mauris volutpat eu ullamcorper libero pulvinar. Integer ornare pulvinar magna. Integer et neque neque. Suspendisse vel diam vitae lorem tincidunt porta. Aliquam erat volutpat. Nam sem urna, sagittis ac tempor non, rutrum nec mauris. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus eget est magna. Donec in nunc sapien, sit amet tempus augue. Integer aliquet, risus et dapibus pharetra, erat mi blandit lacus, et aliquam risus ipsum id velit. Nulla facilisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla a justo a dui pellentesque gravida. Nulla volutpat ligula eget sem pellentesque elementum. Duis porttitor, sapien et ultrices viverra, ligula magna adipiscing augue, ut porta enim justo at augue.</p>','<iframe width=\"560\" height=\"315\" src=\"http://www.youtube.com/embed/EI65DFwC94o\" frameborder=\"0\" allowfullscreen></iframe>',NULL,'[]','','2013-04-03 08:04:41',236,'',0,'0000-00-00 00:00:00','2013-05-06 13:15:40',236,'2013-04-03 08:04:41','0000-00-00 00:00:00',0,1,4,0,1,'','','','',772,'{\"catItemTitle\":\"\",\"catItemTitleLinked\":\"\",\"catItemFeaturedNotice\":\"\",\"catItemAuthor\":\"\",\"catItemDateCreated\":\"\",\"catItemRating\":\"\",\"catItemImage\":\"\",\"catItemIntroText\":\"\",\"catItemExtraFields\":\"\",\"catItemHits\":\"\",\"catItemCategory\":\"\",\"catItemTags\":\"\",\"catItemAttachments\":\"\",\"catItemAttachmentsCounter\":\"\",\"catItemVideo\":\"\",\"catItemVideoWidth\":\"\",\"catItemVideoHeight\":\"\",\"catItemAudioWidth\":\"\",\"catItemAudioHeight\":\"\",\"catItemVideoAutoPlay\":\"\",\"catItemImageGallery\":\"\",\"catItemDateModified\":\"\",\"catItemReadMore\":\"\",\"catItemCommentsAnchor\":\"\",\"catItemK2Plugins\":\"\",\"itemDateCreated\":\"\",\"itemTitle\":\"\",\"itemFeaturedNotice\":\"\",\"itemAuthor\":\"\",\"itemFontResizer\":\"\",\"itemPrintButton\":\"\",\"itemEmailButton\":\"\",\"itemSocialButton\":\"\",\"itemVideoAnchor\":\"\",\"itemImageGalleryAnchor\":\"\",\"itemCommentsAnchor\":\"\",\"itemRating\":\"\",\"itemImage\":\"\",\"itemImgSize\":\"\",\"itemImageMainCaption\":\"\",\"itemImageMainCredits\":\"\",\"itemIntroText\":\"\",\"itemFullText\":\"\",\"itemExtraFields\":\"\",\"itemDateModified\":\"\",\"itemHits\":\"\",\"itemCategory\":\"\",\"itemTags\":\"\",\"itemAttachments\":\"\",\"itemAttachmentsCounter\":\"\",\"itemVideo\":\"\",\"itemVideoWidth\":\"\",\"itemVideoHeight\":\"\",\"itemAudioWidth\":\"\",\"itemAudioHeight\":\"\",\"itemVideoAutoPlay\":\"\",\"itemVideoCaption\":\"\",\"itemVideoCredits\":\"\",\"itemImageGallery\":\"\",\"itemNavigation\":\"\",\"itemComments\":\"\",\"itemTwitterButton\":\"\",\"itemFacebookButton\":\"\",\"itemGooglePlusOneButton\":\"\",\"itemAuthorBlock\":\"\",\"itemAuthorImage\":\"\",\"itemAuthorDescription\":\"\",\"itemAuthorURL\":\"\",\"itemAuthorEmail\":\"\",\"itemAuthorLatest\":\"\",\"itemAuthorLatestLimit\":\"\",\"itemRelated\":\"\",\"itemRelatedLimit\":\"\",\"itemRelatedTitle\":\"\",\"itemRelatedCategory\":\"\",\"itemRelatedImageSize\":\"\",\"itemRelatedIntrotext\":\"\",\"itemRelatedFulltext\":\"\",\"itemRelatedAuthor\":\"\",\"itemRelatedMedia\":\"\",\"itemRelatedImageGallery\":\"\",\"itemK2Plugins\":\"\"}','','robots=\nauthor=','','','*'),(5,'djsfh sdjkfh jsdj fhjk','djsfh-sdjkfh-jsdj-fhjk',2,1,'<p>Nam egestas, libero nec placerat lacinia, tellus orci bibendum lectus, a elementum tortor arcu eget lectus. Etiam porttitor turpis sit amet mauris volutpat eu ullamcorper libero pulvinar. Integer ornare pulvinar magna. Integer et neque neque. Suspendisse vel diam vitae lorem tincidunt porta. Aliquam erat volutpat. Nam sem urna, sagittis ac tempor non, rutrum nec mauris. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus eget est magna. Donec in nunc sapien, sit amet tempus augue. Integer aliquet, risus et dapibus pharetra, erat mi blandit lacus, et aliquam risus ipsum id velit. Nulla facilisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla a justo a dui pellentesque gravida.</p>\r\n','\r\n<p>Etiam porttitor turpis sit amet mauris volutpat eu ullamcorper libero pulvinar. Integer ornare pulvinar magna. Integer et neque neque. Suspendisse vel diam vitae lorem tincidunt porta. Aliquam erat volutpat. Nam sem urna, sagittis ac tempor non, rutrum nec mauris. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus eget est magna. Donec in nunc sapien, sit amet tempus augue. Integer aliquet, risus et dapibus pharetra, erat mi blandit lacus, et aliquam risus ipsum id velit. Nulla facilisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla a justo a dui pellentesque gravida. Nulla volutpat ligula eget sem pellentesque elementum. Duis porttitor, sapien et ultrices viverra, ligula magna adipiscing augue, ut porta enim justo at augue.</p>','<iframe width=\"560\" height=\"315\" src=\"http://www.youtube.com/embed/EI65DFwC94o\" frameborder=\"0\" allowfullscreen></iframe>',NULL,'[]','','2013-05-06 08:09:40',236,'',0,'0000-00-00 00:00:00','2013-05-06 08:10:13',236,'2013-04-03 08:04:41','0000-00-00 00:00:00',1,1,5,0,1,'','','','',1,'{\"catItemTitle\":\"\",\"catItemTitleLinked\":\"\",\"catItemFeaturedNotice\":\"\",\"catItemAuthor\":\"\",\"catItemDateCreated\":\"\",\"catItemRating\":\"\",\"catItemImage\":\"\",\"catItemIntroText\":\"\",\"catItemExtraFields\":\"\",\"catItemHits\":\"\",\"catItemCategory\":\"\",\"catItemTags\":\"\",\"catItemAttachments\":\"\",\"catItemAttachmentsCounter\":\"\",\"catItemVideo\":\"\",\"catItemVideoWidth\":\"\",\"catItemVideoHeight\":\"\",\"catItemAudioWidth\":\"\",\"catItemAudioHeight\":\"\",\"catItemVideoAutoPlay\":\"\",\"catItemImageGallery\":\"\",\"catItemDateModified\":\"\",\"catItemReadMore\":\"\",\"catItemCommentsAnchor\":\"\",\"catItemK2Plugins\":\"\",\"itemDateCreated\":\"\",\"itemTitle\":\"\",\"itemFeaturedNotice\":\"\",\"itemAuthor\":\"\",\"itemFontResizer\":\"\",\"itemPrintButton\":\"\",\"itemEmailButton\":\"\",\"itemSocialButton\":\"\",\"itemVideoAnchor\":\"\",\"itemImageGalleryAnchor\":\"\",\"itemCommentsAnchor\":\"\",\"itemRating\":\"\",\"itemImage\":\"\",\"itemImgSize\":\"\",\"itemImageMainCaption\":\"\",\"itemImageMainCredits\":\"\",\"itemIntroText\":\"\",\"itemFullText\":\"\",\"itemExtraFields\":\"\",\"itemDateModified\":\"\",\"itemHits\":\"\",\"itemCategory\":\"\",\"itemTags\":\"\",\"itemAttachments\":\"\",\"itemAttachmentsCounter\":\"\",\"itemVideo\":\"\",\"itemVideoWidth\":\"\",\"itemVideoHeight\":\"\",\"itemAudioWidth\":\"\",\"itemAudioHeight\":\"\",\"itemVideoAutoPlay\":\"\",\"itemVideoCaption\":\"\",\"itemVideoCredits\":\"\",\"itemImageGallery\":\"\",\"itemNavigation\":\"\",\"itemComments\":\"\",\"itemTwitterButton\":\"\",\"itemFacebookButton\":\"\",\"itemGooglePlusOneButton\":\"\",\"itemAuthorBlock\":\"\",\"itemAuthorImage\":\"\",\"itemAuthorDescription\":\"\",\"itemAuthorURL\":\"\",\"itemAuthorEmail\":\"\",\"itemAuthorLatest\":\"\",\"itemAuthorLatestLimit\":\"\",\"itemRelated\":\"\",\"itemRelatedLimit\":\"\",\"itemRelatedTitle\":\"\",\"itemRelatedCategory\":\"\",\"itemRelatedImageSize\":\"\",\"itemRelatedIntrotext\":\"\",\"itemRelatedFulltext\":\"\",\"itemRelatedAuthor\":\"\",\"itemRelatedMedia\":\"\",\"itemRelatedImageGallery\":\"\",\"itemK2Plugins\":\"\"}','','robots=\nauthor=','','','*');
/*!40000 ALTER TABLE `ujcu6_k2_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_k2_rating`
--

DROP TABLE IF EXISTS `ujcu6_k2_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_k2_rating` (
  `itemID` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(11) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_k2_rating`
--

LOCK TABLES `ujcu6_k2_rating` WRITE;
/*!40000 ALTER TABLE `ujcu6_k2_rating` DISABLE KEYS */;
INSERT INTO `ujcu6_k2_rating` VALUES (1,14,3,'192.168.1.99'),(3,18,4,'192.168.1.99'),(4,27,6,'127.0.0.1');
/*!40000 ALTER TABLE `ujcu6_k2_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_k2_tags`
--

DROP TABLE IF EXISTS `ujcu6_k2_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_k2_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `published` (`published`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_k2_tags`
--

LOCK TABLES `ujcu6_k2_tags` WRITE;
/*!40000 ALTER TABLE `ujcu6_k2_tags` DISABLE KEYS */;
INSERT INTO `ujcu6_k2_tags` VALUES (1,'corpora',1),(2,'business',1),(3,'fashion',1),(4,'entertainmeent',1),(5,'shaper',1),(6,'joomla',1),(7,'corporate',1),(8,'theme',1),(9,'laptop',1),(10,'iphone',1),(11,'ipad',1),(12,'samsung',1),(13,'Ebooks',1),(14,'magazine',1),(15,'express',1);
/*!40000 ALTER TABLE `ujcu6_k2_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_k2_tags_xref`
--

DROP TABLE IF EXISTS `ujcu6_k2_tags_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_k2_tags_xref` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tagID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tagID` (`tagID`),
  KEY `itemID` (`itemID`)
) ENGINE=MyISAM AUTO_INCREMENT=210 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_k2_tags_xref`
--

LOCK TABLES `ujcu6_k2_tags_xref` WRITE;
/*!40000 ALTER TABLE `ujcu6_k2_tags_xref` DISABLE KEYS */;
INSERT INTO `ujcu6_k2_tags_xref` VALUES (187,5,5),(193,6,4),(192,5,4),(186,6,5),(209,7,1),(208,1,1),(197,10,3),(196,3,3),(203,14,2),(202,2,2);
/*!40000 ALTER TABLE `ujcu6_k2_tags_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_k2_user_groups`
--

DROP TABLE IF EXISTS `ujcu6_k2_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_k2_user_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `permissions` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_k2_user_groups`
--

LOCK TABLES `ujcu6_k2_user_groups` WRITE;
/*!40000 ALTER TABLE `ujcu6_k2_user_groups` DISABLE KEYS */;
INSERT INTO `ujcu6_k2_user_groups` VALUES (1,'Registered','{\"comment\":\"1\",\"frontEdit\":\"0\",\"add\":\"0\",\"editOwn\":\"0\",\"editAll\":\"0\",\"publish\":\"0\",\"inheritance\":0,\"categories\":\"all\"}'),(2,'Site Owner','{\"comment\":\"1\",\"frontEdit\":\"1\",\"add\":\"1\",\"editOwn\":\"1\",\"editAll\":\"1\",\"publish\":\"1\",\"inheritance\":1,\"categories\":\"all\"}');
/*!40000 ALTER TABLE `ujcu6_k2_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_k2_users`
--

DROP TABLE IF EXISTS `ujcu6_k2_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_k2_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `gender` enum('m','f') NOT NULL DEFAULT 'm',
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `group` int(11) NOT NULL DEFAULT '0',
  `plugins` text NOT NULL,
  `ip` varchar(15) NOT NULL,
  `hostname` varchar(255) NOT NULL,
  `notes` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userID` (`userID`),
  KEY `group` (`group`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_k2_users`
--

LOCK TABLES `ujcu6_k2_users` WRITE;
/*!40000 ALTER TABLE `ujcu6_k2_users` DISABLE KEYS */;
INSERT INTO `ujcu6_k2_users` VALUES (1,236,'Super User','m','<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure.</p>','1.jpg','',1,'','192.168.1.99','192.168.1.99','');
/*!40000 ALTER TABLE `ujcu6_k2_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_languages`
--

DROP TABLE IF EXISTS `ujcu6_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_languages`
--

LOCK TABLES `ujcu6_languages` WRITE;
/*!40000 ALTER TABLE `ujcu6_languages` DISABLE KEYS */;
INSERT INTO `ujcu6_languages` VALUES (1,'en-GB','English (UK)','English (UK)','en','en','','','','',0,0,1),(2,'es-ES','Spanish (ES)','Spanish (ES)','es','es','','','','',0,1,0),(3,'fr-FR','French (fr-FR)','French (fr-FR)','fr','fr','','','','',0,1,0),(4,'it_IT','Italiano (IT)','italiano','it','it_it','','','','',1,1,0);
/*!40000 ALTER TABLE `ujcu6_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_menu`
--

DROP TABLE IF EXISTS `ujcu6_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_menu`
--

LOCK TABLES `ujcu6_menu` WRITE;
/*!40000 ALTER TABLE `ujcu6_menu` DISABLE KEYS */;
INSERT INTO `ujcu6_menu` VALUES (1,'','Menu_Item_Root','root','','','','',1,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,213,0,'*',0),(2,'menu','com_banners','Banners','','Banners','index.php?option=com_banners','component',0,1,1,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',1,10,0,'*',1),(3,'menu','com_banners','Banners','','Banners/Banners','index.php?option=com_banners','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',2,3,0,'*',1),(4,'menu','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',0,2,2,6,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',4,5,0,'*',1),(5,'menu','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',6,7,0,'*',1),(6,'menu','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',8,9,0,'*',1),(7,'menu','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',0,1,1,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',133,138,0,'*',1),(8,'menu','com_contact','Contacts','','Contacts/Contacts','index.php?option=com_contact','component',0,7,2,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',134,135,0,'*',1),(9,'menu','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',0,7,2,6,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',136,137,0,'*',1),(10,'menu','com_messages','Messaging','','Messaging','index.php?option=com_messages','component',0,1,1,15,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',139,144,0,'*',1),(11,'menu','com_messages_add','New Private Message','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',0,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',140,141,0,'*',1),(12,'menu','com_messages_read','Read Private Message','','Messaging/Read Private Message','index.php?option=com_messages','component',0,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-read',0,'',142,143,0,'*',1),(13,'menu','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',0,1,1,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',145,150,0,'*',1),(14,'menu','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',0,13,2,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',146,147,0,'*',1),(15,'menu','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',0,13,2,6,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',148,149,0,'*',1),(16,'menu','com_redirect','Redirect','','Redirect','index.php?option=com_redirect','component',0,1,1,24,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',163,164,0,'*',1),(17,'menu','com_search','Basic Search','','Basic Search','index.php?option=com_search','component',0,1,1,19,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',153,154,0,'*',1),(18,'menu','com_weblinks','Weblinks','','Weblinks','index.php?option=com_weblinks','component',0,1,1,21,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',155,160,0,'*',1),(19,'menu','com_weblinks_links','Links','','Weblinks/Links','index.php?option=com_weblinks','component',0,18,2,21,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',156,157,0,'*',1),(20,'menu','com_weblinks_categories','Categories','','Weblinks/Categories','index.php?option=com_categories&extension=com_weblinks','component',0,18,2,6,0,'0000-00-00 00:00:00',0,0,'class:weblinks-cat',0,'',158,159,0,'*',1),(21,'menu','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',0,1,1,27,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',151,152,0,'*',1),(22,'menu','com_joomlaupdate','Joomla! Update','','Joomla! Update','index.php?option=com_joomlaupdate','component',0,1,1,28,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',161,162,0,'*',1),(23,'main','com_tags','Tags','','Tags','index.php?option=com_tags','component',0,1,1,29,0,'0000-00-00 00:00:00',0,1,'class:tags',0,'',45,46,0,'',1),(101,'mainmenu','Home','home','','home','index.php?option=com_content&view=article&id=43','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"0\",\"link_titles\":\"0\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',11,12,1,'*',0),(102,'mainmenu','Features','2013-01-31-06-37-23','','2013-01-31-06-37-23','#','url',0,1,1,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"0\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',13,44,0,'*',0),(103,'mainmenu','Typography','typgraphy','','2013-01-31-06-37-23/typgraphy','index.php?option=com_content&view=article&id=14','component',0,102,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',14,15,0,'*',0),(104,'mainmenu','Module Position','module-position','','2013-01-31-06-37-23/module-position','index.php?option=com_content&view=article&id=18','component',0,102,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',16,17,0,'*',0),(105,'mainmenu','Module Variations','module-variations','','2013-01-31-06-37-23/module-variations','index.php?option=com_content&view=article&id=2','component',0,102,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',18,19,0,'*',0),(107,'mainmenu','Shortcode','2013-01-31-07-00-31','','2013-01-31-07-00-31','#','url',0,1,1,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"2\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"400\",\"colxw\":\"200\\r\\n200\",\"class\":\"\",\"subcontent\":\"normal\"}',61,86,0,'*',0),(113,'mainmenu','RTL Demos','2013-01-31-07-09-06','','2013-01-31-06-37-23/2013-01-31-07-09-06','#','url',0,102,2,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',38,43,0,'*',0),(114,'mainmenu','LTR Language','2013-01-31-07-09-56','','2013-01-31-06-37-23/2013-01-31-07-09-06/2013-01-31-07-09-56','?direction=ltr','url',0,113,3,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',39,40,0,'*',0),(115,'mainmenu','RTL Language','2013-01-31-07-10-29','','2013-01-31-06-37-23/2013-01-31-07-09-06/2013-01-31-07-10-29','?direction=rtl','url',0,113,3,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',41,42,0,'*',0),(117,'mainmenu','Presets','presets','','presets','index.php?option=com_content&view=article&id=42','component',0,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"0\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"2\",\"group\":\"1\",\"showgrouptitle\":\"0\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',87,112,0,'*',0),(118,'mainmenu','Preset1','2013-01-31-07-21-59','','presets/2013-05-03-14-00-03/2013-01-31-07-21-59','?preset=preset1','url',0,213,3,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',89,90,0,'*',0),(119,'mainmenu','Menu Example','2013-01-31-07-23-52','','2013-01-31-06-37-23/2013-01-31-07-23-52','#','url',0,102,2,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"2\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',20,37,0,'*',0),(120,'mainmenu','Preset2','2013-01-31-07-24-34','','presets/2013-05-03-14-00-03/2013-01-31-07-24-34','?preset=preset2','url',0,213,3,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',91,92,0,'*',0),(121,'mainmenu','Preset3','2013-01-31-07-25-04','','presets/2013-05-03-14-00-03/2013-01-31-07-25-04','?preset=preset3','url',0,213,3,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',93,94,0,'*',0),(123,'mainmenu','Joomla!','joomla','','joomla','index.php?option=com_content&view=article&id=1','component',0,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',123,132,0,'*',0),(124,'mainmenu','Group2','2013-01-31-07-29-22','','2013-01-31-06-37-23/2013-01-31-07-23-52/2013-01-31-07-29-22','#','url',0,119,3,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"showmenutitle\":\"0\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"1\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',29,36,0,'*',0),(125,'mainmenu','Child Item','2013-01-31-07-32-05','','2013-01-31-06-37-23/2013-01-31-07-23-52/2013-01-31-07-29-22/2013-01-31-07-32-05','#','url',0,124,4,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',30,31,0,'*',0),(126,'mainmenu','Child Item','2013-01-31-07-32-48','','2013-01-31-06-37-23/2013-01-31-07-23-52/2013-01-31-07-29-22/2013-01-31-07-32-48','#','url',0,124,4,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',32,33,0,'*',0),(127,'mainmenu','Child Item','2013-01-31-07-33-25','','2013-01-31-06-37-23/2013-01-31-07-23-52/2013-01-31-07-29-22/2013-01-31-07-33-25','#','url',0,124,4,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',34,35,0,'*',0),(128,'mainmenu','Group1','2013-01-31-07-34-16','','2013-01-31-06-37-23/2013-01-31-07-23-52/2013-01-31-07-34-16','#','url',0,119,3,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"showmenutitle\":\"0\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"1\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',21,28,0,'*',0),(129,'mainmenu','Child Item','2013-01-31-07-35-10','','2013-01-31-06-37-23/2013-01-31-07-23-52/2013-01-31-07-34-16/2013-01-31-07-35-10','#','url',0,128,4,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',22,23,0,'*',0),(130,'mainmenu','Child Item','2013-01-31-07-38-19','','2013-01-31-06-37-23/2013-01-31-07-23-52/2013-01-31-07-34-16/2013-01-31-07-38-19','#','url',0,128,4,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',24,25,0,'*',0),(131,'mainmenu','Child Item','2013-01-31-07-38-54','','2013-01-31-06-37-23/2013-01-31-07-23-52/2013-01-31-07-34-16/2013-01-31-07-38-54','#','url',0,128,4,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',26,27,0,'*',0),(132,'mainmenu','Category Blog','category-blog','','joomla/category-blog','index.php?option=com_content&view=category&layout=blog&id=8','component',0,123,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"layout_type\":\"blog\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',124,125,0,'*',0),(133,'mainmenu','Single Article','single-article','','joomla/single-article','index.php?option=com_content&view=article&id=1','component',0,123,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',126,127,0,'*',0),(140,'mainmenu','Login','login','','joomla/login','index.php?option=com_users&view=login','component',0,123,2,25,0,'0000-00-00 00:00:00',0,1,'',0,'{\"login_redirect_url\":\"\",\"logindescription_show\":\"1\",\"login_description\":\"\",\"login_image\":\"\",\"logout_redirect_url\":\"\",\"logoutdescription_show\":\"1\",\"logout_description\":\"\",\"logout_image\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',128,129,0,'*',0),(141,'mainmenu','Registration','registration','','joomla/registration','index.php?option=com_users&view=registration','component',0,123,2,25,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',130,131,0,'*',0),(142,'mainmenu','Accordion','accordion','','2013-01-31-07-00-31/2013-05-03-14-09-52/accordion','index.php?option=com_content&view=article&id=3','component',0,215,3,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',63,64,0,'*',0),(143,'mainmenu','Carousel','carousel','','2013-01-31-07-00-31/2013-05-03-14-09-52/carousel','index.php?option=com_content&view=article&id=4','component',0,215,3,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',65,66,0,'*',0),(144,'mainmenu','Tab','tab','','2013-01-31-07-00-31/2013-05-03-14-09-52/tab','index.php?option=com_content&view=article&id=5','component',0,215,3,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',67,68,0,'*',0),(145,'mainmenu','Map','map','','2013-01-31-07-00-31/2013-05-03-14-09-52/map','index.php?option=com_content&view=article&id=6','component',0,215,3,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',69,70,0,'*',0),(146,'mainmenu','Testimonial ','testimonial','','2013-01-31-07-00-31/2013-05-03-14-09-52/testimonial','index.php?option=com_content&view=article&id=7','component',0,215,3,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',71,72,0,'*',0),(148,'mainmenu','Button','button','','2013-01-31-07-00-31/2013-05-03-14-10-18/button','index.php?option=com_content&view=article&id=9','component',0,216,3,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',75,76,0,'*',0),(149,'mainmenu','Icon','icon','','2013-01-31-07-00-31/2013-05-03-14-10-18/icon','index.php?option=com_content&view=article&id=10','component',0,216,3,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',77,78,0,'*',0),(150,'mainmenu','Column','column','','2013-01-31-07-00-31/2013-05-03-14-10-18/column','index.php?option=com_content&view=article&id=11','component',0,216,3,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',79,80,0,'*',0),(151,'top-menu','About Us','about-us','','about-us','index.php?option=com_content&view=article&id=12','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',165,166,0,'*',0),(152,'top-menu','About Joomla','about-joomla','','about-joomla','index.php?option=com_content&view=article&id=1','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',167,168,0,'*',0),(153,'top-menu','Joomla Overview','joomla-overview','','joomla-overview','index.php?option=com_content&view=article&id=1','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',169,170,0,'*',0),(154,'mainmenu','Gallery','gallery','','2013-01-31-07-00-31/2013-05-03-14-10-18/gallery','index.php?option=com_content&view=article&id=16','component',0,216,3,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',81,82,0,'*',0),(155,'mainmenu','Video','video','','2013-01-31-07-00-31/2013-05-03-14-10-18/video','index.php?option=com_content&view=article&id=17','component',0,216,3,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',83,84,0,'*',0),(156,'mainmenu','404','2013-02-06-08-37-59','','2013-04-08-10-35-26/2013-02-06-08-37-59','index.php?option=404','url',0,177,2,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',58,59,0,'*',0),(168,'mainmenu','Blog','blog','','blog','index.php?option=com_k2&view=itemlist&layout=category&task=category&id=2','component',0,1,1,10006,0,'0000-00-00 00:00:00',0,1,'',0,'{\"categories\":[\"2\"],\"singleCatOrdering\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',113,122,0,'*',0),(169,'mainmenu','Categories','categories','','blog/categories','index.php?option=com_k2&view=itemlist&layout=category&task=category&id=1','component',0,168,2,10006,0,'0000-00-00 00:00:00',0,1,'',0,'{\"categories\":[\"1\"],\"singleCatOrdering\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',114,115,0,'*',0),(170,'mainmenu','Item','item','','blog/item','index.php?option=com_k2&view=item&layout=item&id=4','component',0,168,2,10006,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',116,117,0,'*',0),(171,'mainmenu','User','user','','blog/user','index.php?option=com_k2&view=itemlist&layout=user&id=236&task=user','component',0,168,2,10006,0,'0000-00-00 00:00:00',0,1,'',0,'{\"theme\":\"default\",\"userOrdering\":\"\",\"userFeedLink\":\"0\",\"userFeedIcon\":\"0\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',118,119,0,'*',0),(172,'mainmenu','Tag','tag','','blog/tag','index.php?option=com_k2&view=itemlist&layout=tag&tag=corpora&task=tag','component',0,168,2,10006,0,'0000-00-00 00:00:00',0,1,'',0,'{\"theme\":\"default\",\"categoriesFilter\":[\"2\"],\"tagOrdering\":\"\",\"tagFeedLink\":\"0\",\"tagFeedIcon\":\"0\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',120,121,0,'*',0),(173,'mainmenu','Preset4','2013-04-04-12-50-35','','presets/2013-05-03-14-00-03/2013-04-04-12-50-35','?preset=preset4','url',0,213,3,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',95,96,0,'*',0),(174,'mainmenu','Preset5','2013-04-04-12-51-57','','presets/2013-05-03-14-00-03/2013-04-04-12-51-57','?preset=preset5','url',0,213,3,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',97,98,0,'*',0),(175,'mainmenu','Preset6','2013-04-04-12-52-39','','presets/2013-05-03-14-02-10/2013-04-04-12-52-39','?preset=preset6','url',0,214,3,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',101,102,0,'*',0),(177,'mainmenu','Pages','2013-04-08-10-35-26','','2013-04-08-10-35-26','#','url',0,1,1,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',45,60,0,'*',0),(178,'mainmenu','About Us','about-us','','2013-04-08-10-35-26/about-us','index.php?option=com_content&view=article&id=37','component',0,177,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"0\",\"link_titles\":\"0\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',46,47,0,'*',0),(179,'mainmenu','Portfolio','portfolio','','2013-04-08-10-35-26/portfolio','index.php?option=com_content&view=article&id=39','component',0,177,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"0\",\"link_titles\":\"0\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',48,49,0,'*',0),(180,'mainmenu','Pricing Table','pricing-table','','2013-04-08-10-35-26/pricing-table','index.php?option=com_content&view=article&id=38','component',0,177,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"0\",\"link_titles\":\"0\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',50,51,0,'*',0),(182,'mainmenu','Contact','contact','','2013-04-08-10-35-26/contact','index.php?option=com_contact&view=contact&id=1','component',0,177,2,8,0,'0000-00-00 00:00:00',0,1,'',0,'{\"presentation_style\":\"plain\",\"show_contact_category\":\"\",\"show_contact_list\":\"0\",\"show_name\":\"0\",\"show_position\":\"0\",\"show_email\":\"0\",\"show_street_address\":\"0\",\"show_suburb\":\"0\",\"show_state\":\"0\",\"show_postcode\":\"0\",\"show_country\":\"0\",\"show_telephone\":\"0\",\"show_mobile\":\"0\",\"show_fax\":\"0\",\"show_webpage\":\"0\",\"show_misc\":\"0\",\"show_image\":\"0\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',52,53,0,'*',0),(184,'main','COM_K2','com-k2','','com-k2','index.php?option=com_k2','component',0,1,1,10006,0,'0000-00-00 00:00:00',0,1,'../media/k2/assets/images/system/k2_16x16.png',0,'',171,192,0,'',1),(185,'main','K2_ITEMS','k2-items','','com-k2/k2-items','index.php?option=com_k2&view=items','component',0,184,2,10006,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',172,173,0,'',1),(186,'main','K2_CATEGORIES','k2-categories','','com-k2/k2-categories','index.php?option=com_k2&view=categories','component',0,184,2,10006,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',174,175,0,'',1),(187,'main','K2_TAGS','k2-tags','','com-k2/k2-tags','index.php?option=com_k2&view=tags','component',0,184,2,10006,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',176,177,0,'',1),(188,'main','K2_COMMENTS','k2-comments','','com-k2/k2-comments','index.php?option=com_k2&view=comments','component',0,184,2,10006,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',178,179,0,'',1),(189,'main','K2_USERS','k2-users','','com-k2/k2-users','index.php?option=com_k2&view=users','component',0,184,2,10006,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',180,181,0,'',1),(190,'main','K2_USER_GROUPS','k2-user-groups','','com-k2/k2-user-groups','index.php?option=com_k2&view=usergroups','component',0,184,2,10006,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',182,183,0,'',1),(191,'main','K2_EXTRA_FIELDS','k2-extra-fields','','com-k2/k2-extra-fields','index.php?option=com_k2&view=extrafields','component',0,184,2,10006,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',184,185,0,'',1),(192,'main','K2_EXTRA_FIELD_GROUPS','k2-extra-field-groups','','com-k2/k2-extra-field-groups','index.php?option=com_k2&view=extrafieldsgroups','component',0,184,2,10006,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',186,187,0,'',1),(193,'main','K2_MEDIA_MANAGER','k2-media-manager','','com-k2/k2-media-manager','index.php?option=com_k2&view=media','component',0,184,2,10006,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',188,189,0,'',1),(194,'main','K2_INFORMATION','k2-information','','com-k2/k2-information','index.php?option=com_k2&view=info','component',0,184,2,10006,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',190,191,0,'',1),(195,'mainmenu','Service','service','','2013-04-08-10-35-26/service','index.php?option=com_content&view=article&id=40','component',0,177,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"0\",\"link_titles\":\"0\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',54,55,0,'*',0),(199,'main','AcyMailing','acymailing','','acymailing','index.php?option=com_acymailing','component',0,1,1,10045,0,'0000-00-00 00:00:00',0,1,'../media/com_acymailing/images/icons/icon-16-acymailing.png',0,'',193,210,0,'',1),(200,'main','Users','users','','acymailing/users','index.php?option=com_acymailing&ctrl=subscriber','component',0,199,2,10045,0,'0000-00-00 00:00:00',0,1,'../media/com_acymailing/images/icons/icon-16-users.png',0,'',194,195,0,'',1),(201,'main','Lists','lists','','acymailing/lists','index.php?option=com_acymailing&ctrl=list','component',0,199,2,10045,0,'0000-00-00 00:00:00',0,1,'../media/com_acymailing/images/icons/icon-16-acylist.png',0,'',196,197,0,'',1),(202,'main','Newsletters','newsletters','','acymailing/newsletters','index.php?option=com_acymailing&ctrl=newsletter','component',0,199,2,10045,0,'0000-00-00 00:00:00',0,1,'../media/com_acymailing/images/icons/icon-16-newsletter.png',0,'',198,199,0,'',1),(203,'main','Templates','templates','','acymailing/templates','index.php?option=com_acymailing&ctrl=template','component',0,199,2,10045,0,'0000-00-00 00:00:00',0,1,'../media/com_acymailing/images/icons/icon-16-acytemplate.png',0,'',200,201,0,'',1),(204,'main','Queue','queue','','acymailing/queue','index.php?option=com_acymailing&ctrl=queue','component',0,199,2,10045,0,'0000-00-00 00:00:00',0,1,'../media/com_acymailing/images/icons/icon-16-process.png',0,'',202,203,0,'',1),(205,'main','Statistics','statistics','','acymailing/statistics','index.php?option=com_acymailing&ctrl=stats','component',0,199,2,10045,0,'0000-00-00 00:00:00',0,1,'../media/com_acymailing/images/icons/icon-16-stats.png',0,'',204,205,0,'',1),(206,'main','Configuration','configuration','','acymailing/configuration','index.php?option=com_acymailing&ctrl=cpanel','component',0,199,2,10045,0,'0000-00-00 00:00:00',0,1,'../media/com_acymailing/images/icons/icon-16-acyconfig.png',0,'',206,207,0,'',1),(207,'main','Update_About','update-about','','acymailing/update-about','index.php?option=com_acymailing&ctrl=update','component',0,199,2,10045,0,'0000-00-00 00:00:00',0,1,'../media/com_acymailing/images/icons/icon-16-update.png',0,'',208,209,0,'',1),(208,'mainmenu','Short-Code','short-code','','2013-04-08-10-35-26/short-code','index.php?option=com_content&view=article&id=44','component',0,177,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"0\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',56,57,0,'*',0),(209,'mainmenu','Preset7','2013-05-03-10-16-28','','presets/2013-05-03-14-02-10/2013-05-03-10-16-28','?preset=preset7','url',0,214,3,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',103,104,0,'*',0),(210,'mainmenu','Preset8','2013-05-03-10-16-45','','presets/2013-05-03-14-02-10/2013-05-03-10-16-45','?preset=preset8','url',0,214,3,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',105,106,0,'*',0),(211,'mainmenu','Preset9','2013-05-03-10-17-56','','presets/2013-05-03-14-02-10/2013-05-03-10-17-56','?preset=preset9','url',0,214,3,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',107,108,0,'*',0),(212,'mainmenu','Preset10','2013-05-03-10-18-15','','presets/2013-05-03-14-02-10/2013-05-03-10-18-15','?preset=preset10','url',0,214,3,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',109,110,0,'*',0),(213,'mainmenu','Group1','2013-05-03-14-00-03','','presets/2013-05-03-14-00-03','#','url',0,117,2,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"1\",\"showgrouptitle\":\"0\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',88,99,0,'*',0),(214,'mainmenu','Group2','2013-05-03-14-02-10','','presets/2013-05-03-14-02-10','#','url',0,117,2,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"1\",\"showgrouptitle\":\"0\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',100,111,0,'*',0),(215,'mainmenu','Group1','2013-05-03-14-09-52','','2013-01-31-07-00-31/2013-05-03-14-09-52','#','url',0,107,2,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"1\",\"showgrouptitle\":\"0\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',62,73,0,'*',0),(216,'mainmenu','Group2','2013-05-03-14-10-18','','2013-01-31-07-00-31/2013-05-03-14-10-18','','url',0,107,2,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"1\",\"showgrouptitle\":\"0\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',74,85,0,'*',0),(217,'main','com_postinstall','Post-installation messages','','Post-installation messages','index.php?option=com_postinstall','component',0,1,1,32,0,'0000-00-00 00:00:00',0,1,'class:postinstall',0,'',45,46,0,'*',1),(218,'main','COM_FOXCONTACT_MENU','com-foxcontact-menu','','com-foxcontact-menu','index.php?option=com_foxcontact','component',0,1,1,10081,0,'0000-00-00 00:00:00',0,1,'../media/com_foxcontact/images/email-16.png',0,'',211,212,0,'',1);
/*!40000 ALTER TABLE `ujcu6_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_menu_types`
--

DROP TABLE IF EXISTS `ujcu6_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_menu_types`
--

LOCK TABLES `ujcu6_menu_types` WRITE;
/*!40000 ALTER TABLE `ujcu6_menu_types` DISABLE KEYS */;
INSERT INTO `ujcu6_menu_types` VALUES (1,'mainmenu','Main Menu','The main menu for the site'),(2,'top-menu','Top Menu','');
/*!40000 ALTER TABLE `ujcu6_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_messages`
--

DROP TABLE IF EXISTS `ujcu6_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_messages`
--

LOCK TABLES `ujcu6_messages` WRITE;
/*!40000 ALTER TABLE `ujcu6_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_messages_cfg`
--

DROP TABLE IF EXISTS `ujcu6_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_messages_cfg`
--

LOCK TABLES `ujcu6_messages_cfg` WRITE;
/*!40000 ALTER TABLE `ujcu6_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_modules`
--

DROP TABLE IF EXISTS `ujcu6_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_modules`
--

LOCK TABLES `ujcu6_modules` WRITE;
/*!40000 ALTER TABLE `ujcu6_modules` DISABLE KEYS */;
INSERT INTO `ujcu6_modules` VALUES (2,0,'Login','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*'),(3,0,'Popular Articles','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(4,0,'Recently Added Articles','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(8,0,'Toolbar','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*'),(9,0,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*'),(10,0,'Logged-in Users','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(12,0,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),(13,0,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*'),(14,0,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*'),(15,0,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*'),(79,0,'Multilanguage status','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(86,0,'Joomla Version','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(87,0,'Menu Module','','<p><span style=\"line-height: 1.3em;\"><img class=\"pull-left\" src=\"images/sample/img-drp-menu.png\" border=\"0\" alt=\"\" />Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Far far away, behind the word.</span></p>',1,'menumodule',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(116,92,'SP Smart Slider','','',1,'slideshow',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_sp_smart_slider',1,1,'{\"sp_style\":\"minima\",\"sliders\":{\"source\":[\"text\",\"text\",\"text\"],\"text\":{\"pretitle\":[\"\",\"\",\"\"],\"title\":[\"Ci occupiamo di <span>Asfalto<\\/span> sempre di alta <span>Qualit\\u00e1<\\/span>\",\"Le migliori <span>tecnologie<\\/span> messe a <span>Vostra<\\/span> disposizione\",\"Make the <span>customer<\\/span> hero of your <span>story<\\/span>\"],\"posttitle\":[\"\",\"\",\"\"],\"link\":[\"#\",\"#\",\"#\"],\"readmore\":[\"Details\",\"Details\",\"Details\"],\"image\":[\"images\\/asphalt_4.jpg\",\"images\\/asphalt_1.jpg\",\"images\\/minima\\/slideshow\\/slide3.png\"],\"thumb\":[\"\",\"\",\"\"],\"introtext\":[\"Praesent et turpis sed arcu feugiat imperdiet. Ut gravida elementum tortor. Integer tempor metus vel orci feugiat vel pulvinar purus imperdiet. Nulla gravida cursus est ut scelerisque. Sed fermentum tortor nisi, a tincidunt eros. Maecenas sollicitudin lectus nec leo commodo pharetra. Fusce aliquet luctus augue, quis ultrices magna ultrices in. Integer laoreet scelerisque eleifend. Aenean pellentesque volutpat augue, nec tempor lorem consectetur non.\",\"Praesent et turpis sed arcu feugiat imperdiet. Ut gravida elementum tortor. Integer tempor metus vel orci feugiat vel pulvinar purus imperdiet. Nulla gravida cursus est ut scelerisque. Sed fermentum tortor nisi, a tincidunt eros. Maecenas sollicitudin lectus nec leo commodo pharetra. Fusce aliquet luctus augue, quis ultrices magna ultrices in. Integer laoreet scelerisque eleifend. Aenean pellentesque volutpat augue, nec tempor lorem consectetur non.\",\"Praesent et turpis sed arcu feugiat imperdiet. Ut gravida elementum tortor. Integer tempor metus vel orci feugiat vel pulvinar purus imperdiet. Nulla gravida cursus est ut scelerisque. Sed fermentum tortor nisi, a tincidunt eros. Maecenas sollicitudin lectus nec leo commodo pharetra. Fusce aliquet luctus augue, quis ultrices magna ultrices in. Integer laoreet scelerisque eleifend. Aenean pellentesque volutpat augue, nec tempor lorem consectetur non.\"],\"content\":[\"\",\"\",\"\"],\"state\":[\"published\",\"published\",\"unpublished\"]}},\"animation\":{\"minima\":{\"autoplay\":\"1\",\"interval\":\"5000\"}},\"moduleclass_sfx\":\"\",\"module_cache\":\"1\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(123,0,'Popular Comments','','',1,'right',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_k2_comments',1,1,'{\"moduleclass_sfx\":\"\",\"module_usage\":\"0\",\"catfilter\":\"0\",\"comments_limit\":\"2\",\"comments_word_limit\":\"20\",\"commenterName\":\"1\",\"commentAvatar\":\"1\",\"commentAvatarWidthSelect\":\"custom\",\"commentAvatarWidth\":\"50\",\"commentDate\":\"1\",\"commentDateFormat\":\"absolute\",\"commentLink\":\"1\",\"itemTitle\":\"0\",\"itemCategory\":\"0\",\"feed\":\"0\",\"commenters_limit\":\"5\",\"commenterNameOrUsername\":\"1\",\"commenterAvatar\":\"1\",\"commenterAvatarWidthSelect\":\"custom\",\"commenterAvatarWidth\":\"50\",\"commenterLink\":\"1\",\"commenterCommentsCounter\":\"1\",\"commenterLatestComment\":\"1\",\"cache\":\"1\",\"cache_time\":\"900\"}',0,'*'),(125,0,'Categories','','',4,'right',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_k2_tools',1,1,'{\"moduleclass_sfx\":\"\",\"module_usage\":\"4\",\"archiveItemsCounter\":\"1\",\"archiveCategory\":\"0\",\"authors_module_category\":\"0\",\"authorItemsCounter\":\"1\",\"authorAvatar\":\"1\",\"authorAvatarWidthSelect\":\"custom\",\"authorAvatarWidth\":\"50\",\"authorLatestItem\":\"1\",\"calendarCategory\":\"0\",\"home\":\"\",\"seperator\":\"\",\"root_id\":\"1\",\"end_level\":\"\",\"categoriesListOrdering\":\"\",\"categoriesListItemsCounter\":\"1\",\"root_id2\":\"0\",\"catfilter\":\"0\",\"getChildren\":\"0\",\"liveSearch\":\"\",\"width\":\"20\",\"text\":\"\",\"button\":\"\",\"imagebutton\":\"\",\"button_text\":\"\",\"min_size\":\"75\",\"max_size\":\"300\",\"cloud_limit\":\"30\",\"cloud_category\":[\"0\"],\"cloud_category_recursive\":\"0\",\"customCode\":\"\",\"parsePhp\":\"0\",\"K2Plugins\":\"0\",\"JPlugins\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\"}',0,'*'),(128,0,'K2 Quick Icons (admin)','','',0,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_k2_quickicons',1,1,'',1,'*'),(129,0,'K2 Stats (admin)','','',0,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_k2_stats',1,1,'',1,'*'),(133,0,'Top Comments','','',1,'commetsload',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_k2_comments',1,1,'{\"moduleclass_sfx\":\"\",\"module_usage\":\"1\",\"catfilter\":\"0\",\"comments_limit\":\"2\",\"comments_word_limit\":\"10\",\"commenterName\":\"1\",\"commentAvatar\":\"1\",\"commentAvatarWidthSelect\":\"custom\",\"commentAvatarWidth\":\"50\",\"commentDate\":\"1\",\"commentDateFormat\":\"absolute\",\"commentLink\":\"1\",\"itemTitle\":\"1\",\"itemCategory\":\"1\",\"feed\":\"1\",\"commenters_limit\":\"2\",\"commenterNameOrUsername\":\"1\",\"commenterAvatar\":\"1\",\"commenterAvatarWidthSelect\":\"custom\",\"commenterAvatarWidth\":\"50\",\"commenterLink\":\"1\",\"commenterCommentsCounter\":\"1\",\"commenterLatestComment\":\"1\",\"cache\":\"1\",\"cache_time\":\"900\"}',0,'*'),(135,0,'New Users','','',5,'right',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_k2_tools',1,1,'{\"moduleclass_sfx\":\"\",\"module_usage\":\"1\",\"archiveItemsCounter\":\"1\",\"archiveCategory\":\"0\",\"authors_module_category\":\"2\",\"authorItemsCounter\":\"0\",\"authorAvatar\":\"1\",\"authorAvatarWidthSelect\":\"custom\",\"authorAvatarWidth\":\"50\",\"authorLatestItem\":\"1\",\"calendarCategory\":\"0\",\"home\":\"\",\"seperator\":\"\",\"root_id\":\"0\",\"end_level\":\"\",\"categoriesListOrdering\":\"\",\"categoriesListItemsCounter\":\"1\",\"root_id2\":\"0\",\"catfilter\":\"0\",\"getChildren\":\"0\",\"liveSearch\":\"\",\"width\":\"20\",\"text\":\"\",\"button\":\"\",\"imagebutton\":\"\",\"button_text\":\"\",\"min_size\":\"110\",\"max_size\":\"300\",\"cloud_limit\":\"30\",\"cloud_category\":[\"0\"],\"cloud_category_recursive\":\"0\",\"customCode\":\"\",\"parsePhp\":\"0\",\"K2Plugins\":\"0\",\"JPlugins\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\"}',0,'*'),(145,90,'Clients','','<div class=\"pull-left\"><img src=\"images/clients.png\" alt=\"\" border=\"0\" /></div>\r\n<div>\r\n<h3><a href=\"#\">I Nostri Clienti</a></h3>\r\nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium error sit voluptatem accusantium</div>',1,'user-middle',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(146,0,'About us ','','<p>[row] [col class=\"span3\"]</p>\r\n<h1>About Us</h1>\r\n<p>[/col] [col class=\"span9\"]</p>\r\n<div class=\"title-border visible-desktop\">\r\n<h3>We build connected brands</h3>\r\n<h3>We are a digital marketing agency</h3>\r\n</div>\r\n<p>[/col] [/row]</p>',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"images\\/minima\\/aboutus-banner.png\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(148,0,'Portfolio','','<p>[row] [col class=\"span3\"]</p>\r\n<h1>Our Clients</h1>\r\n<p>[/col] [col class=\"span9\"]</p>\r\n<div class=\"title-border\">\r\n<h3>We build connected brands</h3>\r\n<h3>We are a digital marketing agency</h3>\r\n</div>\r\n<p>[/col] [/row]</p>',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"images\\/minima\\/portfolio-banner.png\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(149,0,'Pricing Table','','<p>[row] [col class=\"span3\"]</p>\r\n<h1>Pricing Table</h1>\r\n<p>[/col]</p>\r\n<p>[col class=\"span9\"]</p>\r\n<div class=\"title-border\">\r\n<h3>We build connected brands</h3>\r\n<h3>We are a digital marketing agency</h3>\r\n</div>\r\n<p>[/col] [/row]</p>',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"images\\/minima\\/pricing-banner.png\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(151,0,'Contact','','<p>[row] [col class=\"span3\"]</p>\r\n<h1>Contact</h1>\r\n<p>[/col] [col class=\"span9\"]</p>\r\n<div class=\"title-border visible-desktop\">\r\n<h3>We build connected brands</h3>\r\n<h3>We are a digital marketing agency</h3>\r\n</div>\r\n<p>[/col] [/row]</p>',7,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(158,0,'Blog','','<p>[row] [col class=\"span3\"]</p>\r\n<h1>Blog</h1>\r\n<p>[/col] [col class=\"span9\"]</p>\r\n<div class=\"title-border visible-desktop\">\r\n<h3>We build connected brands</h3>\r\n<h3>We are a digital marketing agency</h3>\r\n</div>\r\n<p>[/col] [/row]</p>',2,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(159,0,'Service','','<p>[row] [col class=\"span3\"]</p>\r\n<h1>Our Services</h1>\r\n<p>[/col] [col class=\"span9\"]</p>\r\n<div class=\"title-border visible-desktop\">\r\n<h3>We build connected brands</h3>\r\n<h3>We are a digital marketing agency</h3>\r\n</div>\r\n<p>[/col] [/row]</p>',8,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"images\\/minima\\/service-banner.png\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(160,0,'Presets','','<p>[row] [col class=\"span3\"]</p>\r\n<h1>Presets</h1>\r\n<p>[/col] [col class=\"span9\"]</p>\r\n<div class=\"title-border\">\r\n<h3>We build connected brands</h3>\r\n<h3>We are a digital marketing agency</h3>\r\n</div>\r\n<p>[/col] [/row]</p>',9,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(161,0,'Joomla','','<h1>Joomla</h1>',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(169,0,'Feature','','<p>[row] [col class=\"span3\"]</p>\r\n<h1>Feature</h1>\r\n<p>[/col] [col class=\"span9\"]</p>\r\n<div class=\"title-border\">\r\n<h3>We build connected brands</h3>\r\n<h3>We are a digital marketing agency</h3>\r\n</div>\r\n<p>[/col] [/row]</p>',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(170,0,'Search','','',1,'search',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_search',1,0,'{\"label\":\"\",\"width\":\"20\",\"text\":\"\",\"button\":\"\",\"button_pos\":\"right\",\"imagebutton\":\"\",\"button_text\":\"\",\"opensearch\":\"1\",\"opensearch_title\":\"\",\"set_itemid\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(172,0,'flag','','<p><a href=\"#\"><img src=\"images/flag.png\" border=\"0\" alt=\"\" /></a></p>',1,'flag',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\" none flag\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(174,91,'Bottom','','<p>[row] [col class=\"span6\"]</p>\r\n<h3>Domande? Informazioni?</h3>\r\n<p>perspiciatis unde omnis iste natus error [/col] [col class=\"span6\"]</p>\r\n<h3 class=\"bottom-h3\">+1 234 567 8888</h3>\r\n<p>[/col][/row]</p>',1,'bottom',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(175,93,'Footer menu','','',1,'footer2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_menu',1,0,'{\"menutype\":\"top-menu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(176,0,'AcyMailing Module','','',1,'loadmodule',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_acymailing',1,0,'{\"effect\":\"normal\",\"lists\":\"None\",\"hiddenlists\":\"All\",\"displaymode\":\"tableless\",\"listschecked\":\"All\",\"checkmode\":\"0\",\"dropdown\":\"0\",\"overlay\":\"0\",\"link\":\"1\",\"customfields\":\"email\",\"nametext\":\"\",\"emailtext\":\"\",\"fieldsize\":\"100%\",\"displayfields\":\"0\",\"introtext\":\"\",\"finaltext\":\"\",\"showsubscribe\":\"1\",\"subscribetext\":\"Subscribe\",\"subscribetextreg\":\"\",\"showunsubscribe\":\"0\",\"unsubscribetext\":\"\",\"redirectmode\":\"0\",\"redirectlink\":\"\",\"redirectlinkunsub\":\"\",\"showterms\":\"0\",\"showtermspopup\":\"1\",\"termscontent\":\"0\",\"mootoolsintro\":\"\",\"mootoolsbutton\":\"\",\"boxwidth\":\"250\",\"boxheight\":\"200\",\"moduleclass_sfx\":\"\",\"textalign\":\"none\",\"loggedin\":\"1\",\"cache\":\"0\",\"includejs\":\"module\",\"itemid\":\"\"}',0,'*'),(177,0,'Map','','<div class=\"sp-map\">[spmap lat=\"23.743193\" lng=\"90.388281\" zoom=\"8\" height=\"350\" maptype=\"ROADMAP\"]</div>',1,'user1',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(179,0,'Contact-Address','','<h2>Address 1</h2>\r\n<p>2466 Brookside Drive Birmingham, AL 35291</p>\r\n<p>Phone: 05-377-0533</p>\r\n<p>Email: lbickley@teleworm.us</p>\r\n<p> </p>\r\n<h2>Address 2</h2>\r\n<p>2466 Brookside Drive Birmingham, AL 35291</p>\r\n<p>Phone: 05-377-0533</p>\r\n<p>Email: lbickley@teleworm.us</p>',1,'right',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"none\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(181,0,'Short code','','<p>[row] [col class=\"span3\"]</p>\r\n<h1>Short Code</h1>\r\n<p>[/col] [col class=\"span9\"]</p>\r\n<div class=\"title-border visible-desktop\">\r\n<h3>We build connected brands</h3>\r\n<h3>We are a digital marketing agency</h3>\r\n</div>\r\n<p>[/col] [/row]</p>',7,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(192,0,'Variation Orange','','<p>Use module class suffix \"orange\"</p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here</p>',1,'content1',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\" orange\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(193,0,'Variation green','','<p>Use module class suffix \"green\"</p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here</p>',1,'content2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\" green\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(194,0,'Variation Blue','','<p>Use module class suffix \"blue\"</p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here</p>',1,'content3',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\" blue\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(195,0,'Variation navy-blue','','<div>[icon name=\'camera\' class=\"pull-left\" size=\'24\'][/icon]\r\n<h3>Variation navy-blue</h3>\r\n<p>Use module class suffix \"navy-blue\"</p>\r\n</div>\r\n<div>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here</div>',1,'content1',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\" navy-blue\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(196,0,'Variation dark-ash','','<div>[icon name=\'heart\' class=\"pull-left\" size=\'24\'][/icon]\r\n<h3>Variation dark-ash</h3>\r\n<p>Use module class suffix \"dark-ash\"</p>\r\n</div>\r\n<div>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here</div>',1,'content2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\" dark-ash\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(197,0,'Variation dark-red','','<div>[icon name=\'gift\' class=\"pull-left\" size=\'24\'][/icon]\r\n<h3>Variation dark-red</h3>\r\n<p>Use module class suffix \"dark-red\"</p>\r\n</div>\r\n<div>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here</div>',1,'content3',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\" dark-red\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(198,0,'Variation ash-white','','<p>Use module class suffix \"ash-white\"</p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here</p>',1,'content1',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\" ash-white\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(199,0,'Variation deep-ash','','<p>Use module class suffix \"deep-ash\"</p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here</p>',1,'content2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\" deep-ash\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(200,0,'Variation Highlighted','','<p>Use module class suffix \"highlighted\"</p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here.page when looking at its layout. The point of using Lorem Ipsum.The point of using Lorem Ipsum</p>',1,'content3',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\" highlighted\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(201,0,'Variation light-ash','','<p>Use module class suffix \"light-ash\"</p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here.page when looking at its layout. The point of using Lorem Ipsum.The point of using Lorem Ipsum</p>',1,'content1',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\" light-ash\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(202,0,'Variation white','','<p>Use module class suffix \"white\"</p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here.page when looking at its layout. The point of using Lorem Ipsum.The point of using Lorem Ipsum</p>',1,'content2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\" white\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(203,0,'Variation paste','','<p>Use module class suffix \"paste\"</p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here.page when looking at its layout. The point of using Lorem Ipsum.The point of using Lorem Ipsum</p>',1,'content3',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\" paste\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(204,0,'Variation None','','<p>Use module class suffix \"none\"</p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here.page when looking at its layout. The point of using Lorem Ipsum.The point of using Lorem Ipsum</p>',1,'content1',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\" none\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(205,0,'Variation None Icon','','<div>[icon name=\'cog\' class=\"pull-left\" size=\'24\'][/icon]\r\n<h3>Variation None Icon</h3>\r\n<p>Use module class suffix \"none-icon\"</p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here.page when looking at its layout. The point of using Lorem Ipsum.The point of using Lorem Ipsum</p>\r\n</div>',1,'content2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\" none-icon\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(206,0,'Variation None Center','','<p>Use module class suffix \"none-center\"</p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here.page when looking at its layout. The point of using Lorem Ipsum.The point of using Lorem Ipsum</p>',1,'content3',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\" none-center\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(207,0,'Variation Hot','','<p>Use module class suffix \"badge-hot\"</p>\r\n<p><span class=\"badge-hot\"> Variation Hot </span></p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here.page when looking at its layout. The point of using Lorem Ipsum.The point of using Lorem Ipsum</p>',1,'content1',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"hot\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(208,0,'Variation New','','<p>Use module class suffix \"badge-new\"</p>\r\n<p><span class=\"badge-new\"> Variation New</span></p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here.page when looking at its layout. The point of using Lorem Ipsum.The point of using Lorem Ipsum</p>',1,'content2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\" new\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(209,0,'Variation Free','','<p>Use module class suffix \"badge-free\"</p>\r\n<p><span class=\"badge-free\"> Variation Free</span></p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here.page when looking at its layout. The point of using Lorem Ipsum.The point of using Lorem Ipsum</p>',1,'content3',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\" free\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(210,0,'Variation Top','','<p>Use module class suffix \"badge-top\"</p>\r\n<p><span class=\"badge-top\"> Variation Top</span></p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here.page when looking at its layout. The point of using Lorem Ipsum.The point of using Lorem Ipsum</p>',1,'content1',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\" top\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(212,96,'contatto','','',1,'bottom',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_foxcontact',1,1,'{\"to_address\":\"alexrah@gmail.com\",\"cc_address\":\"\",\"bcc_address\":\"\",\"email_subject\":\"Richiesta informazioni da teddydemo\\/four\",\"jmessenger_user\":\"0\",\"page_subheading\":\"Non esistate a contattarci\",\"form_width\":\"100\",\"form_unit\":\"%\",\"customhtml0\":\"Per maggiori informazioni, compilate il modulo sottostante. Sarete ricontattati al pi\\u00fa presto.<br \\/>Si prega di compilare <b>tutti i campi richiesti<\\/b>.\",\"customhtml0display\":\"1\",\"customhtml0order\":\"-1000\",\"customhtml1\":\"\",\"customhtml1display\":\"1\",\"customhtml1order\":\"1000\",\"labelsdisplay\":\"0\",\"labelswidth\":\"230\",\"labelsunit\":\"px\",\"sender0\":\"Nome Cognome\",\"sender0display\":\"2\",\"sender0order\":\"5\",\"sender1\":\"Email\",\"sender1display\":\"2\",\"sender1order\":\"10\",\"sender1isemail\":\"1\",\"senderwidth\":\"85\",\"senderunit\":\"%\",\"text0\":\"Numero Telefonico\",\"text0display\":\"2\",\"text0order\":\"15\",\"text1\":\"\",\"text1display\":\"0\",\"text1order\":\"20\",\"text2\":\"\",\"text2display\":\"0\",\"text2order\":\"25\",\"text3\":\"\",\"text3display\":\"0\",\"text3order\":\"30\",\"text4\":\"\",\"text4display\":\"0\",\"text4order\":\"35\",\"text5\":\"\",\"text5display\":\"0\",\"text5order\":\"40\",\"text6\":\"\",\"text6display\":\"0\",\"text6order\":\"45\",\"text7\":\"\",\"text7display\":\"0\",\"text7order\":\"50\",\"text8\":\"\",\"text8display\":\"0\",\"text8order\":\"55\",\"text9\":\"\",\"text9display\":\"0\",\"text9order\":\"60\",\"textwidth\":\"85\",\"textunit\":\"%\",\"dropdown0\":\"Come siete venuti a conoscenza dei nostri servizi\",\"dropdown0display\":\"1\",\"dropdown0values\":\"Amici,Clienti,Internet, Altro\",\"dropdown0order\":\"65\",\"dropdown1\":\"\",\"dropdown1display\":\"0\",\"dropdown1values\":\"\",\"dropdown1order\":\"70\",\"dropdown2\":\"\",\"dropdown2display\":\"0\",\"dropdown2values\":\"\",\"dropdown2order\":\"75\",\"dropdownwidth\":\"87\",\"dropdownunit\":\"%\",\"textarea0\":\"Describe your request\",\"textarea0display\":\"1\",\"textarea0order\":\"80\",\"textarea1\":\"\",\"textarea1display\":\"0\",\"textarea1order\":\"85\",\"textarea2\":\"\",\"textarea2display\":\"0\",\"textarea2order\":\"90\",\"textareawidth\":\"86\",\"textareaheight\":\"180\",\"textareaunit\":\"%\",\"checkbox0\":\"Accetto termini e condizioni del servizio\",\"checkbox0display\":\"1\",\"checkbox0order\":\"95\",\"checkbox1\":\"\",\"checkbox1display\":\"0\",\"checkbox1order\":\"100\",\"checkbox2\":\"\",\"checkbox2display\":\"0\",\"checkbox2order\":\"105\",\"checkbox3\":\"\",\"checkbox3display\":\"0\",\"checkbox3order\":\"110\",\"checkbox4\":\"\",\"checkbox4display\":\"0\",\"checkbox4order\":\"115\",\"uploaddisplay\":\"0\",\"uploadmethod\":\"1\",\"upload\":\"Select files to attach\",\"uploadmax_file_size\":\"10000\",\"upload_filter\":\"1\",\"upload_audio\":\"0\",\"upload_video\":\"0\",\"upload_images\":\"1\",\"upload_documents\":\"1\",\"upload_archives\":\"1\",\"submittext\":\"Invia\",\"submittype\":\"0\",\"submiticon\":\"-1\",\"resetbutton\":\"0\",\"resettext\":\"Reset\",\"resettype\":\"0\",\"reseticon\":\"-1\",\"email_sent_action\":\"0\",\"email_sent_text\":\"Your message has been received. We will contact you in a few days.\",\"email_sent_textdisplay\":\"1\",\"email_sent_page\":\"101\",\"copy_to_submitter\":\"1\",\"email_copy_subject\":\"Thank you for contacting us\",\"email_copy_text\":\"Your message has been received. We will contact you in a few days.\",\"email_copy_summary\":\"0\",\"spam_check\":\"1\",\"spam_words\":\"www,http,url=,href=,link=,.txt,shit,fuck\",\"spam_detected_text\":\"We are sorry, but the system thinks your message contains unwanted advertising and <b>was blocked<\\/b>.<br \\/>If you think this is an error, please go back and modify yourmessage. Avoid words such as <i>www, http,<\\/i> and so on.\",\"spam_detected_textdisplay\":\"1\",\"stdcaptchadisplay\":\"0\",\"stdcaptcha\":\"Security code\",\"stdcaptchatype\":\"0\",\"stdcaptcha_length\":\"5\",\"stdcaptchawidth\":\"150\",\"stdcaptchaheight\":\"75\",\"stdcaptchafont\":\"-1\",\"stdcaptchafontmin\":\"14\",\"stdcaptchafontmax\":\"20\",\"stdcaptchaangle\":\"20\",\"stdcaptcha_backgroundcolor\":\"#ffffff\",\"stdcaptcha_textcolor\":\"#191919\",\"stdcaptcha_disturbcolor\":\"#c8c8c8\",\"layout\":\"_:default\",\"stylesheet\":\"neon.css\",\"moduleclass_sfx\":\"\",\"acymailing\":\"0\",\"acymailing_checkboxes\":\"hidden|hidden\",\"acymailing_auto_checked\":\"0\",\"jnews\":\"0\",\"jnews_checkboxes\":\"hidden|hidden\",\"jnews_auto_checked\":\"0\",\"othernewsletters\":\"1\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
/*!40000 ALTER TABLE `ujcu6_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_modules_menu`
--

DROP TABLE IF EXISTS `ujcu6_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_modules_menu`
--

LOCK TABLES `ujcu6_modules_menu` WRITE;
/*!40000 ALTER TABLE `ujcu6_modules_menu` DISABLE KEYS */;
INSERT INTO `ujcu6_modules_menu` VALUES (2,0),(3,0),(4,0),(6,0),(7,0),(8,0),(9,0),(10,0),(12,0),(13,0),(14,0),(15,0),(79,0),(86,0),(87,0),(116,101),(123,168),(123,169),(123,170),(123,171),(123,172),(125,168),(125,169),(125,170),(125,171),(125,172),(128,0),(129,0),(133,168),(135,168),(135,169),(135,170),(135,171),(135,172),(145,101),(146,178),(148,179),(149,180),(151,182),(158,168),(158,169),(158,170),(158,171),(158,172),(159,195),(160,117),(161,123),(161,132),(161,133),(161,139),(161,140),(161,141),(161,156),(169,102),(169,103),(169,104),(169,105),(169,107),(169,142),(169,143),(169,144),(169,145),(169,146),(169,147),(169,148),(169,149),(169,150),(169,154),(169,155),(170,0),(172,0),(174,101),(175,0),(176,0),(177,182),(179,182),(181,208),(192,105),(193,105),(194,105),(195,105),(196,105),(197,105),(198,105),(199,105),(200,105),(201,105),(202,105),(203,105),(204,105),(205,105),(206,105),(207,105),(208,105),(209,105),(210,105),(212,0);
/*!40000 ALTER TABLE `ujcu6_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_newsfeeds`
--

DROP TABLE IF EXISTS `ujcu6_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_newsfeeds`
--

LOCK TABLES `ujcu6_newsfeeds` WRITE;
/*!40000 ALTER TABLE `ujcu6_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_overrider`
--

DROP TABLE IF EXISTS `ujcu6_overrider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_overrider`
--

LOCK TABLES `ujcu6_overrider` WRITE;
/*!40000 ALTER TABLE `ujcu6_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_overrider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_postinstall_messages`
--

DROP TABLE IF EXISTS `ujcu6_postinstall_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_postinstall_messages`
--

LOCK TABLES `ujcu6_postinstall_messages` WRITE;
/*!40000 ALTER TABLE `ujcu6_postinstall_messages` DISABLE KEYS */;
INSERT INTO `ujcu6_postinstall_messages` VALUES (1,700,'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION','plg_twofactorauth_totp',1,'action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_condition','3.2.0',1),(2,700,'COM_CPANEL_MSG_EACCELERATOR_TITLE','COM_CPANEL_MSG_EACCELERATOR_BODY','COM_CPANEL_MSG_EACCELERATOR_BUTTON','com_cpanel',1,'action','admin://components/com_admin/postinstall/eaccelerator.php','admin_postinstall_eaccelerator_action','admin://components/com_admin/postinstall/eaccelerator.php','admin_postinstall_eaccelerator_condition','3.2.0',1),(3,700,'PLG_USER_JOOMLA_POSTINSTALL_STRONGPW_TITLE','PLG_USER_JOOMLA_POSTINSTALL_STRONGPW_TEXT','PLG_USER_JOOMLA_POSTINSTALL_STRONGPW_BTN','plg_user_joomla',1,'action','site://plugins/user/joomla/postinstall/actions.php','plguserjoomla_postinstall_action','site://plugins/user/joomla/postinstall/actions.php','plguserjoomla_postinstall_condition','3.2.0',1);
/*!40000 ALTER TABLE `ujcu6_postinstall_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_redirect_links`
--

DROP TABLE IF EXISTS `ujcu6_redirect_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_redirect_links`
--

LOCK TABLES `ujcu6_redirect_links` WRITE;
/*!40000 ALTER TABLE `ujcu6_redirect_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_schemas`
--

DROP TABLE IF EXISTS `ujcu6_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_schemas`
--

LOCK TABLES `ujcu6_schemas` WRITE;
/*!40000 ALTER TABLE `ujcu6_schemas` DISABLE KEYS */;
INSERT INTO `ujcu6_schemas` VALUES (700,'3.2.0'),(10081,'1.9.0');
/*!40000 ALTER TABLE `ujcu6_schemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_session`
--

DROP TABLE IF EXISTS `ujcu6_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_session`
--

LOCK TABLES `ujcu6_session` WRITE;
/*!40000 ALTER TABLE `ujcu6_session` DISABLE KEYS */;
INSERT INTO `ujcu6_session` VALUES ('0gkqrtt8pajm4vsgk5o0lv1495',1,0,'1398181179','__default|a:8:{s:15:\"session.counter\";i:31;s:19:\"session.timer.start\";i:1398177337;s:18:\"session.timer.last\";i:1398181179;s:17:\"session.timer.now\";i:1398181179;s:22:\"session.client.browser\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.116 Safari/537.36\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":6:{s:11:\"application\";O:8:\"stdClass\":1:{s:4:\"lang\";s:0:\"\";}s:13:\"com_installer\";O:8:\"stdClass\":2:{s:7:\"message\";s:0:\"\";s:17:\"extension_message\";s:0:\"\";}s:11:\"com_content\";O:8:\"stdClass\":1:{s:4:\"edit\";O:8:\"stdClass\":1:{s:7:\"article\";O:8:\"stdClass\":2:{s:2:\"id\";a:0:{}s:4:\"data\";N;}}}s:11:\"com_modules\";O:8:\"stdClass\":1:{s:7:\"modules\";O:8:\"stdClass\":4:{s:6:\"filter\";O:8:\"stdClass\":8:{s:18:\"client_id_previous\";i:0;s:6:\"search\";s:0:\"\";s:6:\"access\";i:0;s:5:\"state\";s:0:\"\";s:8:\"position\";s:0:\"\";s:6:\"module\";s:0:\"\";s:9:\"client_id\";i:0;s:8:\"language\";s:0:\"\";}s:8:\"ordercol\";s:8:\"position\";s:9:\"orderdirn\";s:3:\"asc\";s:10:\"limitstart\";s:1:\"0\";}}s:6:\"global\";O:8:\"stdClass\":1:{s:4:\"list\";O:8:\"stdClass\":1:{s:5:\"limit\";i:0;}}s:13:\"com_templates\";O:8:\"stdClass\":1:{s:4:\"edit\";O:8:\"stdClass\":1:{s:5:\"style\";O:8:\"stdClass\":2:{s:2:\"id\";a:1:{i:0;i:13;}s:4:\"data\";N;}}}}}s:4:\"user\";O:5:\"JUser\":27:{s:9:\"\\0\\0\\0isRoot\";b:1;s:2:\"id\";s:3:\"236\";s:4:\"name\";s:10:\"Super User\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:17:\"alexrah@gmail.com\";s:8:\"password\";s:60:\"$2y$10$7YHB9H0FI8Szsh0/dJgvVO/OOBFcimCnRzq2f1kMYCLrrLLojprSy\";s:14:\"password_clear\";s:0:\"\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:12:\"registerDate\";s:19:\"2014-04-13 23:00:31\";s:13:\"lastvisitDate\";s:19:\"2014-04-22 00:26:14\";s:10:\"activation\";s:1:\"0\";s:6:\"params\";s:2:\"{}\";s:6:\"groups\";a:1:{i:8;s:1:\"8\";}s:5:\"guest\";i:0;s:13:\"lastResetTime\";s:19:\"0000-00-00 00:00:00\";s:10:\"resetCount\";s:1:\"0\";s:10:\"\\0\\0\\0_params\";O:9:\"JRegistry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:8;}s:14:\"\\0\\0\\0_authLevels\";a:5:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:6;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:1:{i:0;s:28:\"User not Super Administrator\";}s:3:\"aid\";i:0;s:6:\"otpKey\";s:0:\"\";s:4:\"otep\";s:0:\"\";s:3:\"gid\";i:1000;}s:13:\"session.token\";s:32:\"5c4b89e9f98d9506eba26f642db38bb6\";}',236,'admin'),('2qjtogpa3mj56ml2pgbj5ejr52',0,1,'1398181316','__default|a:7:{s:15:\"session.counter\";i:12;s:19:\"session.timer.start\";i:1398180554;s:18:\"session.timer.last\";i:1398181314;s:17:\"session.timer.now\";i:1398181316;s:22:\"session.client.browser\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.116 Safari/537.36\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":24:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;i:1;}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:10:\"\\0\\0\\0_params\";O:9:\"JRegistry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:1:{i:0;i:1;}s:14:\"\\0\\0\\0_authLevels\";a:2:{i:0;i:1;i:1;i:1;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
/*!40000 ALTER TABLE `ujcu6_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_tags`
--

DROP TABLE IF EXISTS `ujcu6_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_tags`
--

LOCK TABLES `ujcu6_tags` WRITE;
/*!40000 ALTER TABLE `ujcu6_tags` DISABLE KEYS */;
INSERT INTO `ujcu6_tags` VALUES (1,0,0,1,0,'','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','',0,'2011-01-01 00:00:01','',0,'0000-00-00 00:00:00','','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `ujcu6_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_template_styles`
--

DROP TABLE IF EXISTS `ujcu6_template_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_template_styles`
--

LOCK TABLES `ujcu6_template_styles` WRITE;
/*!40000 ALTER TABLE `ujcu6_template_styles` DISABLE KEYS */;
INSERT INTO `ujcu6_template_styles` VALUES (5,'hathor',1,'0','Hathor - Default','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),(13,'shaper_minima',0,'1','shaper_minima - Default','{\"layout_width\":\"1170\",\"layout_type\":\"responsive\",\"logo_type\":\"text\",\"logo_position\":\"logo\",\"logo_type_image\":\"\",\"logo_type_text\":\"Patrick\'s Roads\",\"logo_type_slogan\":\" \",\"logo_width\":\"195\",\"logo_height\":\"37\",\"footer_position\":\"footer1\",\"showcp\":\"1\",\"copyright\":\"Copyright \\u00a9  {year} Teddynet.net. All Rights Reserved.\",\"show_helix_logo\":\"0\",\"jcredit\":\"1\",\"validator\":\"0\",\"credit_link\":\"1\",\"credit_text\":\"Designed by  <a href=\\\"http:\\/\\/www.teddynet.net\\\" target=\\\"_blank\\\">Teddynet.net<\\/a>\",\"showtop\":\"1\",\"totop_position\":\"footer2\",\"preset\":\"preset1\",\"preset1_bg\":\"#fff\",\"preset1_text\":\"#444444\",\"preset1_link\":\"rgb(255, 102, 0)\",\"preset2_bg\":\"#ffffff\",\"preset2_text\":\"#444444\",\"preset2_link\":\"#00a9ec\",\"preset3_bg\":\"#fff\",\"preset3_text\":\"#444444\",\"preset3_link\":\"#67a926\",\"preset4_bg\":\"#fff\",\"preset4_text\":\"#444444\",\"preset4_link\":\"#ed145b\",\"preset5_bg\":\"#fff\",\"preset5_text\":\"#444444\",\"preset5_link\":\"#004b84\",\"preset6_bg\":\"#fff\",\"preset6_text\":\"#444444\",\"preset6_link\":\"#f04e3e\",\"preset7_bg\":\"#ffffff\",\"preset7_text\":\"#444444\",\"preset7_link\":\"#7c402e\",\"preset8_bg\":\"#ffffff\",\"preset8_text\":\"#444444\",\"preset8_link\":\"#00a98f\",\"preset9_bg\":\"#ffffff\",\"preset9_text\":\"#444444\",\"preset9_link\":\"#ae5590\",\"preset10_bg\":\"#ffffff\",\"preset10_text\":\"#444444\",\"preset10_link\":\"#748e59\",\"layout\":[{\"name\":\"Header\",\"class\":\"container\",\"responsive\":\"\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"\",\"children\":[{\"span\":\"6\",\"offset\":\"\",\"type\":\"modules\",\"position\":\"logo\",\"style\":\"none\",\"customclass\":\"\",\"responsiveclass\":\"\"},{\"span\":\"3\",\"offset\":\"\",\"type\":\"modules\",\"position\":\"flag\",\"style\":\"none\",\"customclass\":\"\",\"responsiveclass\":\"visible-desktop\"},{\"span\":\"3\",\"offset\":\"\",\"type\":\"modules\",\"position\":\"search\",\"style\":\"none\",\"customclass\":\"\",\"responsiveclass\":\"visible-desktop\"}]},{\"name\":\"Menu\",\"class\":\"container\",\"responsive\":\"\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"\",\"children\":[{\"span\":\"12\",\"offset\":\"\",\"type\":\"modules\",\"position\":\"menu\",\"style\":\"none\",\"customclass\":\"\",\"responsiveclass\":\"\"}]},{\"name\":\"Title\",\"class\":\"container\",\"responsive\":\"visible-desktop\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"\",\"children\":[{\"span\":\"12\",\"offset\":\"\",\"type\":\"modules\",\"position\":\"title\",\"style\":\"none\",\"customclass\":\"\",\"responsiveclass\":\"\"}]},{\"name\":\"Breadcrumbs\",\"class\":\"container\",\"responsive\":\"\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"\",\"children\":[{\"span\":\"12\",\"offset\":\"\",\"type\":\"modules\",\"position\":\"breadcrumb\",\"style\":\"none\",\"customclass\":\"\",\"responsiveclass\":\"\"}]},{\"name\":\"Slideshow\",\"class\":\"container\",\"responsive\":\"\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"\",\"children\":[{\"span\":\"12\",\"offset\":\"\",\"type\":\"modules\",\"position\":\"slideshow\",\"style\":\"none\",\"customclass\":\"\",\"responsiveclass\":\"\"}]},{\"name\":\"User Top\",\"class\":\"container\",\"responsive\":\"\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"\",\"children\":[{\"span\":\"12\",\"offset\":\"\",\"type\":\"modules\",\"position\":\"user-top\",\"style\":\"sp_raw\",\"customclass\":\"\",\"responsiveclass\":\"\"}]},{\"name\":\"Users\",\"class\":\"container\",\"responsive\":\"\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"\",\"children\":[{\"span\":\"4\",\"offset\":\"\",\"type\":\"modules\",\"position\":\"user1\",\"style\":\"sp_flat\",\"customclass\":\"\",\"responsiveclass\":\"\"},{\"span\":\"4\",\"offset\":\"\",\"type\":\"modules\",\"position\":\"user2\",\"style\":\"sp_flat\",\"customclass\":\"\",\"responsiveclass\":\"\"},{\"span\":\"4\",\"offset\":\"\",\"type\":\"modules\",\"position\":\"user3\",\"style\":\"sp_flat\",\"customclass\":\"\",\"responsiveclass\":\"\"}]},{\"name\":\"Main Body\",\"class\":\"container\",\"responsive\":\"\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"\",\"children\":[{\"span\":\"8\",\"offset\":\"\",\"type\":\"message\",\"position\":\"\",\"style\":\"none\",\"customclass\":\"\",\"responsiveclass\":\"\",\"children\":[{\"name\":\"Component Area\",\"class\":\"\",\"responsive\":\"\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"\",\"children\":[{\"span\":\"12\",\"offset\":\"\",\"type\":\"component\",\"position\":\"\",\"style\":\"none\",\"customclass\":\"\",\"responsiveclass\":\"\"}]}]},{\"span\":\"4\",\"offset\":\"\",\"type\":\"modules\",\"position\":\"right\",\"style\":\"sp_xhtml\",\"customclass\":\"\",\"responsiveclass\":\"\"}]},{\"name\":\"Content\",\"class\":\"container\",\"responsive\":\"\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"\",\"children\":[{\"span\":\"4\",\"offset\":\"\",\"type\":\"modules\",\"position\":\"content1\",\"style\":\"sp_xhtml\",\"customclass\":\"\",\"responsiveclass\":\"\"},{\"span\":\"4\",\"offset\":\"\",\"type\":\"modules\",\"position\":\"content2\",\"style\":\"sp_xhtml\",\"customclass\":\"\",\"responsiveclass\":\"\"},{\"span\":\"4\",\"offset\":\"\",\"type\":\"modules\",\"position\":\"content3\",\"style\":\"sp_xhtml\",\"customclass\":\"\",\"responsiveclass\":\"\"}]},{\"name\":\"User Middle\",\"class\":\"container\",\"responsive\":\"\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"\",\"children\":[{\"span\":\"12\",\"offset\":\"\",\"type\":\"modules\",\"position\":\"user-middle\",\"style\":\"sp-xhtml\",\"customclass\":\"\",\"responsiveclass\":\"\"}]},{\"name\":\"Bottom\",\"class\":\"container\",\"responsive\":\"\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"\",\"children\":[{\"span\":\"12\",\"offset\":\"\",\"type\":\"modules\",\"position\":\"bottom\",\"style\":\"none\",\"customclass\":\"\",\"responsiveclass\":\"\"}]},{\"name\":\"Footer\",\"class\":\"container\",\"responsive\":\"\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"\",\"children\":[{\"span\":\"7\",\"offset\":\"\",\"type\":\"modules\",\"position\":\"footer1\",\"style\":\"none\",\"customclass\":\"\",\"responsiveclass\":\"\"},{\"span\":\"5\",\"offset\":\"\",\"type\":\"modules\",\"position\":\"footer2\",\"style\":\"none\",\"customclass\":\"\",\"responsiveclass\":\"\"}]}],\"menu\":\"mainmenu\",\"menutype\":\"mega\",\"menu_col_width\":\"200\",\"show_menu_image\":\"1\",\"menu_image_position\":\"1\",\"submenu_position\":\"0\",\"init_x\":\"0\",\"init_y\":\"0\",\"sub_x\":\"0\",\"sub_y\":\"0\",\"body_font\":\"Roboto:400,100,300\",\"body_selectors\":\"body\",\"header_font\":\"Roboto:400,100,300,700\",\"header_selectors\":\"h1,h2,h3,h4,h5,h6\",\"other_font\":\"\",\"other_selectors\":\"\",\"cache_time\":\"60\",\"compress_css\":\"0\",\"compress_js\":\"0\",\"enable_ga\":\"0\",\"ga_code\":\"\",\"loadjquery\":\"1\",\"loadfromcdn\":\"0\",\"lessoption\":\"1\",\"hide_component_area\":\"0\"}'),(14,'protostar',0,'0','protostar - Default','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),(15,'isis',1,'1','isis - Default','{\"templateColor\":\"\",\"logoFile\":\"\"}'),(16,'beez3',0,'0','beez3 - Default','{\"wrapperSmall\":53,\"wrapperLarge\":72,\"logo\":\"\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"bootstrap\":\"\",\"templatecolor\":\"nature\",\"headerImage\":\"\",\"backgroundcolor\":\"#eee\"}');
/*!40000 ALTER TABLE `ujcu6_template_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_ucm_base`
--

DROP TABLE IF EXISTS `ujcu6_ucm_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_ucm_base`
--

LOCK TABLES `ujcu6_ucm_base` WRITE;
/*!40000 ALTER TABLE `ujcu6_ucm_base` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_ucm_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_ucm_content`
--

DROP TABLE IF EXISTS `ujcu6_ucm_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_ucm_content`
--

LOCK TABLES `ujcu6_ucm_content` WRITE;
/*!40000 ALTER TABLE `ujcu6_ucm_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_ucm_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_ucm_history`
--

DROP TABLE IF EXISTS `ujcu6_ucm_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_ucm_history`
--

LOCK TABLES `ujcu6_ucm_history` WRITE;
/*!40000 ALTER TABLE `ujcu6_ucm_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_ucm_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_update_sites`
--

DROP TABLE IF EXISTS `ujcu6_update_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_update_sites`
--

LOCK TABLES `ujcu6_update_sites` WRITE;
/*!40000 ALTER TABLE `ujcu6_update_sites` DISABLE KEYS */;
INSERT INTO `ujcu6_update_sites` VALUES (1,'Joomla Core','collection','http://update.joomla.org/core/list.xml',1,1398177425),(2,'Joomla Extension Directory','collection','http://update.joomla.org/jed/list.xml',0,0),(3,'Accredited Joomla! Translations','collection','http://update.joomla.org/language/translationlist_3.xml',1,1398177423),(5,'K2 Updates','extension','http://getk2.org/update.xml',1,1398177423),(7,'Dutch Language Updates','collection','http://download.joomlacommunity.eu/downloads/updates/translationlist.xml',1,1398177423),(8,'J!German Language Updates','collection','http://update.jgerman.de/translationlist.xml',1,1398177425),(9,'AcyMailing','extension','http://www.acyba.com/component/updateme/updatexml/component-acymailing/level-Starter/file-extension.xml',1,1398177425),(10,'WebInstaller Update Site','extension','http://appscdn.joomla.org/webapps/jedapps/webinstaller.xml',1,1398177425),(11,'System - Helix Framework','extension','http://www.joomshaper.com/updates/plg_system_helix.xml',1,1398177425),(12,'Foxcontact update site','extension','http://www.fox.ra.it/phocadownload/foxcontact.xml',1,1398177425);
/*!40000 ALTER TABLE `ujcu6_update_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_update_sites_extensions`
--

DROP TABLE IF EXISTS `ujcu6_update_sites_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_update_sites_extensions`
--

LOCK TABLES `ujcu6_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `ujcu6_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `ujcu6_update_sites_extensions` VALUES (1,700),(2,700),(3,600),(3,10028),(3,10032),(3,10036),(3,10040),(3,10044),(3,10079),(5,10006),(7,10036),(8,10040),(9,10045),(10,10075),(11,10076),(12,10081);
/*!40000 ALTER TABLE `ujcu6_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_updates`
--

DROP TABLE IF EXISTS `ujcu6_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_updates`
--

LOCK TABLES `ujcu6_updates` WRITE;
/*!40000 ALTER TABLE `ujcu6_updates` DISABLE KEYS */;
INSERT INTO `ujcu6_updates` VALUES (1,1,700,'Joomla','','joomla','file','',0,'3.2.3','','http://update.joomla.org/core/sts/extension_sts.xml',''),(2,3,0,'Malay','','pkg_ms-MY','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/ms-MY_details.xml',''),(3,3,0,'Romanian','','pkg_ro-RO','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/ro-RO_details.xml',''),(4,3,0,'Flemish','','pkg_nl-BE','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/nl-BE_details.xml',''),(5,3,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/zh-TW_details.xml',''),(6,3,10032,'French','','pkg_fr-FR','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/fr-FR_details.xml',''),(7,3,10040,'German','','pkg_de-DE','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/de-DE_details.xml',''),(8,3,0,'Greek','','pkg_el-GR','package','',0,'3.2.0.1','','http://update.joomla.org/language/details3/el-GR_details.xml',''),(9,3,0,'Japanese','','pkg_ja-JP','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/ja-JP_details.xml',''),(10,3,0,'Hebrew','','pkg_he-IL','package','',0,'3.1.1.1','','http://update.joomla.org/language/details3/he-IL_details.xml',''),(11,3,0,'EnglishAU','','pkg_en-AU','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/en-AU_details.xml',''),(12,3,0,'EnglishUS','','pkg_en-US','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/en-US_details.xml',''),(13,3,0,'Hungarian','','pkg_hu-HU','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/hu-HU_details.xml',''),(14,3,0,'Afrikaans','','pkg_af-ZA','package','',0,'3.2.0.1','','http://update.joomla.org/language/details3/af-ZA_details.xml',''),(15,3,10028,'Arabic Unitag','','pkg_ar-AA','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/ar-AA_details.xml',''),(16,3,0,'Belarusian','','pkg_be-BY','package','',0,'3.2.1.1','','http://update.joomla.org/language/details3/be-BY_details.xml',''),(17,3,0,'Bulgarian','','pkg_bg-BG','package','',0,'3.2.1.1','','http://update.joomla.org/language/details3/bg-BG_details.xml',''),(18,3,0,'Catalan','','pkg_ca-ES','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/ca-ES_details.xml',''),(19,3,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'3.2.1.1','','http://update.joomla.org/language/details3/zh-CN_details.xml',''),(20,3,0,'Croatian','','pkg_hr-HR','package','',0,'3.1.5.1','','http://update.joomla.org/language/details3/hr-HR_details.xml',''),(21,3,0,'Czech','','pkg_cs-CZ','package','',0,'3.2.3.4','','http://update.joomla.org/language/details3/cs-CZ_details.xml',''),(22,3,0,'Danish','','pkg_da-DK','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/da-DK_details.xml',''),(23,3,10036,'Dutch','','pkg_nl-NL','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/nl-NL_details.xml',''),(24,3,0,'Estonian','','pkg_et-EE','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/et-EE_details.xml',''),(25,3,0,'Korean','','pkg_ko-KR','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/ko-KR_details.xml',''),(26,3,0,'Latvian','','pkg_lv-LV','package','',0,'3.2.3.2','','http://update.joomla.org/language/details3/lv-LV_details.xml',''),(27,3,0,'Macedonian','','pkg_mk-MK','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/mk-MK_details.xml',''),(28,3,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/nb-NO_details.xml',''),(29,3,0,'Persian','','pkg_fa-IR','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/fa-IR_details.xml',''),(30,3,0,'Polish','','pkg_pl-PL','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/pl-PL_details.xml',''),(31,3,0,'Russian','','pkg_ru-RU','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/ru-RU_details.xml',''),(32,3,0,'Slovak','','pkg_sk-SK','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/sk-SK_details.xml',''),(33,3,0,'Swedish','','pkg_sv-SE','package','',0,'3.2.1.1','','http://update.joomla.org/language/details3/sv-SE_details.xml',''),(34,3,0,'Syriac','','pkg_sy-IQ','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/sy-IQ_details.xml',''),(35,3,0,'Tamil','','pkg_ta-IN','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/ta-IN_details.xml',''),(36,3,0,'Thai','','pkg_th-TH','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/th-TH_details.xml',''),(37,3,0,'Turkish','','pkg_tr-TR','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/tr-TR_details.xml',''),(38,3,0,'Ukrainian','','pkg_uk-UA','package','',0,'3.2.0.6','','http://update.joomla.org/language/details3/uk-UA_details.xml',''),(39,3,0,'Uyghur','','pkg_ug-CN','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/ug-CN_details.xml',''),(40,3,0,'Albanian','','pkg_sq-AL','package','',0,'3.1.1.1','','http://update.joomla.org/language/details3/sq-AL_details.xml',''),(41,3,0,'Portuguese Brazil','','pkg_pt-BR','package','',0,'3.0.2.1','','http://update.joomla.org/language/details3/pt-BR_details.xml',''),(42,3,0,'Serbian Latin','','pkg_sr-YU','package','',0,'3.2.3.3','','http://update.joomla.org/language/details3/sr-YU_details.xml',''),(43,3,10044,'Spanish','','pkg_es-ES','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/es-ES_details.xml',''),(44,3,0,'Bosnian','','pkg_bs-BA','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/bs-BA_details.xml',''),(45,3,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'3.2.3.2','','http://update.joomla.org/language/details3/sr-RS_details.xml',''),(46,3,0,'Vietnamese','','pkg_vi-VN','package','',0,'3.2.1.1','','http://update.joomla.org/language/details3/vi-VN_details.xml',''),(47,3,0,'Bahasa Indonesia','','pkg_id-ID','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/id-ID_details.xml',''),(48,3,0,'Finnish','','pkg_fi-FI','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/fi-FI_details.xml',''),(49,3,0,'Swahili','','pkg_sw-KE','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/sw-KE_details.xml',''),(50,3,0,'Montenegrin','','pkg_srp-ME','package','',0,'3.2.1.1','','http://update.joomla.org/language/details3/srp-ME_details.xml',''),(51,5,10006,'K2','K2, the powerful content extension for Joomla! (by JoomlaWorks)','com_k2','component','',1,'2.6.8','','http://getk2.org/update.xml',''),(52,9,10045,'AcyMailing Starter','Latest version of AcyMailing Starter','com_acymailing','component','',1,'4.6.2','','http://www.acyba.com/component/updateme/updatexml/component-acymailing/level-Starter/file-extension.xml','http://www.acyba.com'),(53,10,10075,'Installer - Install from Web','This plugin offers functionality for the \'Install from Web\' tab.','webinstaller','plugin','installer',0,'1.0.5','','http://appscdn.joomla.org/webapps/jedapps/webinstaller.xml','http://docs.joomla.org/Install_from_Web'),(54,11,10076,'System - Helix Framework','','helix','plugin','system',0,'2.1.4','','http://www.joomshaper.com/updates/plg_system_helix.xml','');
/*!40000 ALTER TABLE `ujcu6_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_user_keys`
--

DROP TABLE IF EXISTS `ujcu6_user_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_user_keys`
--

LOCK TABLES `ujcu6_user_keys` WRITE;
/*!40000 ALTER TABLE `ujcu6_user_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_user_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_user_notes`
--

DROP TABLE IF EXISTS `ujcu6_user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_user_notes`
--

LOCK TABLES `ujcu6_user_notes` WRITE;
/*!40000 ALTER TABLE `ujcu6_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_user_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_user_profiles`
--

DROP TABLE IF EXISTS `ujcu6_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_user_profiles`
--

LOCK TABLES `ujcu6_user_profiles` WRITE;
/*!40000 ALTER TABLE `ujcu6_user_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_user_usergroup_map`
--

DROP TABLE IF EXISTS `ujcu6_user_usergroup_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_user_usergroup_map`
--

LOCK TABLES `ujcu6_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `ujcu6_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `ujcu6_user_usergroup_map` VALUES (236,8);
/*!40000 ALTER TABLE `ujcu6_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_usergroups`
--

DROP TABLE IF EXISTS `ujcu6_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_usergroups`
--

LOCK TABLES `ujcu6_usergroups` WRITE;
/*!40000 ALTER TABLE `ujcu6_usergroups` DISABLE KEYS */;
INSERT INTO `ujcu6_usergroups` VALUES (1,0,1,20,'Public'),(2,1,6,17,'Registered'),(3,2,7,14,'Author'),(4,3,8,11,'Editor'),(5,4,9,10,'Publisher'),(6,1,2,5,'Manager'),(7,6,3,4,'Administrator'),(8,1,18,19,'Super Users');
/*!40000 ALTER TABLE `ujcu6_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_users`
--

DROP TABLE IF EXISTS `ujcu6_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_users`
--

LOCK TABLES `ujcu6_users` WRITE;
/*!40000 ALTER TABLE `ujcu6_users` DISABLE KEYS */;
INSERT INTO `ujcu6_users` VALUES (236,'Super User','admin','alexrah@gmail.com','$2y$10$vhOd.XJTravjbFpAF.Go9eHOwRKKfw7OXdK3rpzdB9xoYziOHDXuS',0,1,'2014-04-13 23:00:31','2014-04-22 14:36:32','0','','0000-00-00 00:00:00',0,'','');
/*!40000 ALTER TABLE `ujcu6_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_viewlevels`
--

DROP TABLE IF EXISTS `ujcu6_viewlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_viewlevels`
--

LOCK TABLES `ujcu6_viewlevels` WRITE;
/*!40000 ALTER TABLE `ujcu6_viewlevels` DISABLE KEYS */;
INSERT INTO `ujcu6_viewlevels` VALUES (1,'Public',0,'[1]'),(2,'Registered',1,'[6,2,8]'),(3,'Special',2,'[6,3,8]'),(5,'Guest',0,'[9]'),(6,'Super Users',0,'[8]');
/*!40000 ALTER TABLE `ujcu6_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujcu6_weblinks`
--

DROP TABLE IF EXISTS `ujcu6_weblinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujcu6_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujcu6_weblinks`
--

LOCK TABLES `ujcu6_weblinks` WRITE;
/*!40000 ALTER TABLE `ujcu6_weblinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujcu6_weblinks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-04-22 17:47:34
