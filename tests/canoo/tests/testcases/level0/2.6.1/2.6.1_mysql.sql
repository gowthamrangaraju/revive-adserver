-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.51a-3ubuntu5.1-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema openx261mysqlcanoo
--

CREATE TABLE `ox_account_preference_assoc` (
  `account_id` mediumint(9) NOT NULL,
  `preference_id` mediumint(9) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY  (`account_id`,`preference_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ox_account_preference_assoc` (`account_id`,`preference_id`,`value`) VALUES 
 (1,1,''),
 (1,2,''),
 (1,3,'1'),
 (1,4,'1'),
 (1,5,'1'),
 (1,6,'1'),
 (1,7,'100'),
 (1,8,'1'),
 (1,9,'1'),
 (1,10,'100'),
 (1,11,'1'),
 (1,12,'1'),
 (1,13,'100'),
 (1,14,'1'),
 (1,15,'Europe/Warsaw'),
 (1,16,'4'),
 (1,17,'1'),
 (1,18,''),
 (1,19,'1'),
 (1,20,'1'),
 (1,21,''),
 (1,22,''),
 (1,23,'1'),
 (1,24,''),
 (1,25,'1'),
 (1,26,''),
 (1,27,'1'),
 (1,28,'1'),
 (1,29,'2'),
 (1,30,''),
 (1,31,''),
 (1,32,'0'),
 (1,33,''),
 (1,34,''),
 (1,35,'0'),
 (1,36,'1'),
 (1,37,''),
 (1,38,'1'),
 (1,39,'1'),
 (1,40,''),
 (1,41,'2'),
 (1,42,'1'),
 (1,43,''),
 (1,44,'3'),
 (1,45,''),
 (1,46,''),
 (1,47,'0'),
 (1,48,''),
 (1,49,''),
 (1,50,'0'),
 (1,51,''),
 (1,52,''),
 (1,53,'0'),
 (1,54,''),
 (1,55,''),
 (1,56,'0'),
 (1,57,'1'),
 (1,58,''),
 (1,59,'4'),
 (1,60,''),
 (1,61,''),
 (1,62,'0'),
 (1,63,''),
 (1,64,''),
 (1,65,'0'),
 (1,66,''),
 (1,67,''),
 (1,68,'0'),
 (1,69,''),
 (1,70,''),
 (1,71,'0'),
 (1,72,''),
 (1,73,'');
INSERT INTO `ox_account_preference_assoc` (`account_id`,`preference_id`,`value`) VALUES 
 (1,74,'0'),
 (1,75,''),
 (1,76,''),
 (1,77,'0'),
 (1,78,''),
 (1,79,''),
 (1,80,'0'),
 (1,81,''),
 (1,82,''),
 (1,83,'0'),
 (1,84,''),
 (1,85,''),
 (1,86,'0'),
 (1,87,''),
 (1,88,''),
 (1,89,'0'),
 (1,90,''),
 (1,91,''),
 (1,92,'0'),
 (1,93,''),
 (1,94,''),
 (1,95,'0'),
 (1,96,''),
 (1,97,''),
 (1,98,'0'),
 (1,99,''),
 (1,100,''),
 (1,101,'0'),
 (1,102,''),
 (1,103,''),
 (1,104,'0'),
 (1,105,''),
 (1,106,''),
 (1,107,'0'),
 (1,108,'1'),
 (1,109,''),
 (1,110,'5'),
 (1,111,''),
 (1,112,''),
 (1,113,'0'),
 (1,114,''),
 (1,115,''),
 (1,116,'0');
CREATE TABLE `ox_account_user_assoc` (
  `account_id` mediumint(9) NOT NULL,
  `user_id` mediumint(9) NOT NULL,
  `linked` datetime NOT NULL,
  PRIMARY KEY  (`account_id`,`user_id`),
  KEY `ox_account_user_assoc_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ox_account_user_assoc` (`account_id`,`user_id`,`linked`) VALUES 
 (1,1,'2008-09-15 13:57:52'),
 (2,1,'2008-09-15 13:57:52');
CREATE TABLE `ox_account_user_permission_assoc` (
  `account_id` mediumint(9) NOT NULL,
  `user_id` mediumint(9) NOT NULL,
  `permission_id` mediumint(9) NOT NULL,
  `is_allowed` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`account_id`,`user_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE `ox_accounts` (
  `account_id` mediumint(9) NOT NULL auto_increment,
  `account_type` varchar(16) NOT NULL default '',
  `account_name` varchar(255) default NULL,
  `m2m_password` varchar(32) default NULL,
  `m2m_ticket` varchar(32) default NULL,
  PRIMARY KEY  (`account_id`),
  KEY `ox_accounts_account_type` (`account_type`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
INSERT INTO `ox_accounts` (`account_id`,`account_type`,`account_name`,`m2m_password`,`m2m_ticket`) VALUES 
 (1,'ADMIN','Administrator account','oTlRO*^L9-LsAdZYhdlg@y*dc','wNUxhMtR__lpy$M2Le&YY0HZ&%7Y5r'),
 (2,'MANAGER','Default manager','uivuXT+MoU5H5jkp=Lch@BmEn','wNUw!mRfsbwqykr)NB)66YprRdsbPV'),
 (3,'ADVERTISER','Advertiser 1',NULL,NULL);
CREATE TABLE `ox_acls` (
  `bannerid` mediumint(9) NOT NULL default '0',
  `logical` varchar(3) NOT NULL default 'and',
  `type` varchar(32) NOT NULL default '',
  `comparison` char(2) NOT NULL default '==',
  `data` text NOT NULL,
  `executionorder` int(10) unsigned NOT NULL default '0',
  UNIQUE KEY `ox_acls_bannerid_executionorder` (`bannerid`,`executionorder`),
  KEY `ox_acls_bannerid` (`bannerid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE `ox_acls_channel` (
  `channelid` mediumint(9) NOT NULL default '0',
  `logical` varchar(3) NOT NULL default 'and',
  `type` varchar(32) NOT NULL default '',
  `comparison` char(2) NOT NULL default '==',
  `data` text NOT NULL,
  `executionorder` int(10) unsigned NOT NULL default '0',
  UNIQUE KEY `ox_acls_channel_channelid_executionorder` (`channelid`,`executionorder`),
  KEY `ox_acls_channel_channelid` (`channelid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE `ox_ad_category_assoc` (
  `ad_category_assoc_id` int(10) unsigned NOT NULL auto_increment,
  `category_id` int(10) unsigned NOT NULL,
  `ad_id` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`ad_category_assoc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE `ox_ad_zone_assoc` (
  `ad_zone_assoc_id` mediumint(9) NOT NULL auto_increment,
  `zone_id` mediumint(9) default NULL,
  `ad_id` mediumint(9) default NULL,
  `priority` double default '0',
  `link_type` smallint(6) NOT NULL default '1',
  `priority_factor` double default '0',
  `to_be_delivered` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`ad_zone_assoc_id`),
  KEY `ox_ad_zone_assoc_zone_id` (`zone_id`),
  KEY `ox_ad_zone_assoc_ad_id` (`ad_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
INSERT INTO `ox_ad_zone_assoc` (`ad_zone_assoc_id`,`zone_id`,`ad_id`,`priority`,`link_type`,`priority_factor`,`to_be_delivered`) VALUES 
 (1,0,1,1,0,1670960,1),
 (2,1,1,0.9,1,100,1),
 (3,0,2,0,0,1,1),
 (4,1,2,0,1,1,1),
 (5,2,1,0.9,1,100,1),
 (6,0,3,0,0,0,1),
 (7,2,3,0,1,0,1);
CREATE TABLE `ox_affiliates` (
  `affiliateid` mediumint(9) NOT NULL auto_increment,
  `agencyid` mediumint(9) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `mnemonic` varchar(5) NOT NULL default '',
  `comments` text,
  `contact` varchar(255) default NULL,
  `email` varchar(64) NOT NULL default '',
  `website` varchar(255) default NULL,
  `updated` datetime NOT NULL,
  `an_website_id` int(11) default NULL,
  `oac_country_code` char(2) NOT NULL default '',
  `oac_language_id` int(11) default NULL,
  `oac_category_id` int(11) default NULL,
  `as_website_id` int(11) default NULL,
  `account_id` mediumint(9) default NULL,
  PRIMARY KEY  (`affiliateid`),
  UNIQUE KEY `ox_affiliates_account_id` (`account_id`),
  KEY `ox_affiliates_agencyid` (`agencyid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
INSERT INTO `ox_affiliates` (`affiliateid`,`agencyid`,`name`,`mnemonic`,`comments`,`contact`,`email`,`website`,`updated`,`an_website_id`,`oac_country_code`,`oac_language_id`,`oac_category_id`,`as_website_id`,`account_id`) VALUES 
 (1,1,'Agency Publisher 1','','','Andrew Hill','andrew.hill@openads.org','http://fornax.net','2007-05-15 13:41:40',NULL,'',NULL,NULL,NULL,1);
CREATE TABLE `ox_affiliates_extra` (
  `affiliateid` mediumint(9) NOT NULL,
  `address` text,
  `city` varchar(255) default NULL,
  `postcode` varchar(64) default NULL,
  `country` varchar(255) default NULL,
  `phone` varchar(64) default NULL,
  `fax` varchar(64) default NULL,
  `account_contact` varchar(255) default NULL,
  `payee_name` varchar(255) default NULL,
  `tax_id` varchar(64) default NULL,
  `mode_of_payment` varchar(64) default NULL,
  `currency` varchar(64) default NULL,
  `unique_users` int(11) default NULL,
  `unique_views` int(11) default NULL,
  `page_rank` int(11) default NULL,
  `category` varchar(255) default NULL,
  `help_file` varchar(255) default NULL,
  PRIMARY KEY  (`affiliateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE `ox_agency` (
  `agencyid` mediumint(9) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `contact` varchar(255) default NULL,
  `email` varchar(64) NOT NULL default '',
  `logout_url` varchar(255) default NULL,
  `active` smallint(1) default '0',
  `updated` datetime NOT NULL,
  `account_id` mediumint(9) default NULL,
  PRIMARY KEY  (`agencyid`),
  UNIQUE KEY `ox_agency_account_id` (`account_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
INSERT INTO `ox_agency` (`agencyid`,`name`,`contact`,`email`,`logout_url`,`active`,`updated`,`account_id`) VALUES 
 (1,'Default manager',NULL,'',NULL,1,'2008-09-15 11:57:52',2);
CREATE TABLE `ox_application_variable` (
  `name` varchar(255) NOT NULL default '',
  `value` text NOT NULL,
  PRIMARY KEY  (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ox_application_variable` (`name`,`value`) VALUES 
 ('tables_core','583'),
 ('oa_version','2.6.1'),
 ('platform_hash','d4d13d70f269e6bf2f75c74d86bb205fe0c16e4b'),
 ('sync_last_run','2008-09-15 12:01:55'),
 ('sync_cache','b:0;'),
 ('sync_timestamp','1221480115'),
 ('admin_account_id','1'),
 ('maintenance_timestamp','1221480136');
CREATE TABLE `ox_audit` (
  `auditid` mediumint(9) NOT NULL auto_increment,
  `actionid` mediumint(9) NOT NULL,
  `context` varchar(255) NOT NULL default '',
  `contextid` mediumint(9) default NULL,
  `parentid` mediumint(9) default NULL,
  `details` text NOT NULL,
  `userid` mediumint(9) NOT NULL default '0',
  `username` varchar(64) default NULL,
  `usertype` tinyint(4) NOT NULL default '0',
  `updated` datetime default NULL,
  `account_id` mediumint(9) NOT NULL,
  `advertiser_account_id` mediumint(9) default NULL,
  `website_account_id` mediumint(9) default NULL,
  PRIMARY KEY  (`auditid`),
  KEY `ox_audit_parentid_contextid` (`parentid`,`contextid`),
  KEY `ox_audit_updated` (`updated`),
  KEY `ox_audit_usertype` (`usertype`),
  KEY `ox_audit_username` (`username`),
  KEY `ox_audit_context_actionid` (`context`,`actionid`),
  KEY `ox_audit_account_id` (`account_id`),
  KEY `ox_audit_advertiser_account_id` (`advertiser_account_id`),
  KEY `ox_audit_website_account_id` (`website_account_id`)
) ENGINE=MyISAM AUTO_INCREMENT=271 DEFAULT CHARSET=utf8;
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (1,1,'accounts',1,NULL,'a:4:{s:10:\"account_id\";i:1;s:12:\"account_type\";s:5:\"ADMIN\";s:12:\"account_name\";s:21:\"Administrator account\";s:8:\"key_desc\";s:21:\"Administrator account\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (2,1,'accounts',2,NULL,'a:4:{s:10:\"account_id\";i:2;s:12:\"account_type\";s:7:\"MANAGER\";s:12:\"account_name\";s:15:\"Default manager\";s:8:\"key_desc\";s:15:\"Default manager\";}',0,'Installer',0,'2008-09-15 11:57:52',2,NULL,NULL),
 (3,1,'agency',1,NULL,'a:9:{s:8:\"agencyid\";i:1;s:4:\"name\";s:15:\"Default manager\";s:7:\"contact\";s:4:\"null\";s:5:\"email\";s:4:\"null\";s:10:\"logout_url\";s:4:\"null\";s:6:\"active\";i:1;s:7:\"updated\";s:19:\"2008-09-15 11:57:52\";s:10:\"account_id\";i:2;s:8:\"key_desc\";s:15:\"Default manager\";}',0,'Installer',0,'2008-09-15 11:57:52',2,NULL,NULL),
 (4,1,'users',1,NULL,'a:14:{s:7:\"user_id\";i:1;s:12:\"contact_name\";s:13:\"Administrator\";s:13:\"email_address\";s:15:\"test@openx.test\";s:8:\"username\";s:5:\"openx\";s:8:\"password\";s:6:\"******\";s:8:\"language\";s:2:\"en\";s:18:\"default_account_id\";i:2;s:8:\"comments\";s:0:\"\";s:6:\"active\";s:4:\"null\";s:11:\"sso_user_id\";i:0;s:12:\"date_created\";s:19:\"2008-09-15 13:57:52\";s:15:\"date_last_login\";s:4:\"null\";s:13:\"email_updated\";s:19:\"2008-09-15 13:57:52\";s:8:\"key_desc\";s:5:\"openx\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (5,1,'account_user_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:7:\"user_id\";i:1;s:6:\"linked\";s:19:\"2008-09-15 13:57:52\";s:8:\"key_desc\";s:21:\"Account #1 -> User #1\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (6,1,'account_user_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:2;s:7:\"user_id\";i:1;s:6:\"linked\";s:19:\"2008-09-15 13:57:52\";s:8:\"key_desc\";s:21:\"Account #2 -> User #1\";}',0,'Installer',0,'2008-09-15 11:57:52',2,NULL,NULL),
 (7,1,'preferences',1,NULL,'a:4:{s:13:\"preference_id\";i:1;s:15:\"preference_name\";s:24:\"default_banner_image_url\";s:12:\"account_type\";s:10:\"TRAFFICKER\";s:8:\"key_desc\";s:24:\"default_banner_image_url\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (8,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:1;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:27:\"Account #1 -> Preference #1\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (9,1,'preferences',2,NULL,'a:4:{s:13:\"preference_id\";i:2;s:15:\"preference_name\";s:30:\"default_banner_destination_url\";s:12:\"account_type\";s:10:\"TRAFFICKER\";s:8:\"key_desc\";s:30:\"default_banner_destination_url\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (10,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:2;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:27:\"Account #1 -> Preference #2\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (11,1,'preferences',3,NULL,'a:4:{s:13:\"preference_id\";i:3;s:15:\"preference_name\";s:42:\"auto_alter_html_banners_for_click_tracking\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:42:\"auto_alter_html_banners_for_click_tracking\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (12,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:3;s:5:\"value\";s:1:\"1\";s:8:\"key_desc\";s:27:\"Account #1 -> Preference #3\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (13,1,'preferences',4,NULL,'a:4:{s:13:\"preference_id\";i:4;s:15:\"preference_name\";s:21:\"default_banner_weight\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:21:\"default_banner_weight\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (14,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:4;s:5:\"value\";s:1:\"1\";s:8:\"key_desc\";s:27:\"Account #1 -> Preference #4\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (15,1,'preferences',5,NULL,'a:4:{s:13:\"preference_id\";i:5;s:15:\"preference_name\";s:23:\"default_campaign_weight\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:23:\"default_campaign_weight\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (16,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:5;s:5:\"value\";s:1:\"1\";s:8:\"key_desc\";s:27:\"Account #1 -> Preference #5\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (17,1,'preferences',6,NULL,'a:4:{s:13:\"preference_id\";i:6;s:15:\"preference_name\";s:16:\"warn_email_admin\";s:12:\"account_type\";s:5:\"ADMIN\";s:8:\"key_desc\";s:16:\"warn_email_admin\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (18,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:6;s:5:\"value\";s:1:\"1\";s:8:\"key_desc\";s:27:\"Account #1 -> Preference #6\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (19,1,'preferences',7,NULL,'a:4:{s:13:\"preference_id\";i:7;s:15:\"preference_name\";s:33:\"warn_email_admin_impression_limit\";s:12:\"account_type\";s:5:\"ADMIN\";s:8:\"key_desc\";s:33:\"warn_email_admin_impression_limit\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (20,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:7;s:5:\"value\";s:3:\"100\";s:8:\"key_desc\";s:27:\"Account #1 -> Preference #7\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (21,1,'preferences',8,NULL,'a:4:{s:13:\"preference_id\";i:8;s:15:\"preference_name\";s:26:\"warn_email_admin_day_limit\";s:12:\"account_type\";s:5:\"ADMIN\";s:8:\"key_desc\";s:26:\"warn_email_admin_day_limit\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (22,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:8;s:5:\"value\";s:1:\"1\";s:8:\"key_desc\";s:27:\"Account #1 -> Preference #8\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (23,1,'preferences',9,NULL,'a:4:{s:13:\"preference_id\";i:9;s:15:\"preference_name\";s:18:\"warn_email_manager\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:18:\"warn_email_manager\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (24,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:9;s:5:\"value\";s:1:\"1\";s:8:\"key_desc\";s:27:\"Account #1 -> Preference #9\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (25,1,'preferences',10,NULL,'a:4:{s:13:\"preference_id\";i:10;s:15:\"preference_name\";s:35:\"warn_email_manager_impression_limit\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:35:\"warn_email_manager_impression_limit\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (26,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:10;s:5:\"value\";s:3:\"100\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #10\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (27,1,'preferences',11,NULL,'a:4:{s:13:\"preference_id\";i:11;s:15:\"preference_name\";s:28:\"warn_email_manager_day_limit\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:28:\"warn_email_manager_day_limit\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (28,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:11;s:5:\"value\";s:1:\"1\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #11\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (29,1,'preferences',12,NULL,'a:4:{s:13:\"preference_id\";i:12;s:15:\"preference_name\";s:21:\"warn_email_advertiser\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:21:\"warn_email_advertiser\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (30,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:12;s:5:\"value\";s:1:\"1\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #12\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (31,1,'preferences',13,NULL,'a:4:{s:13:\"preference_id\";i:13;s:15:\"preference_name\";s:38:\"warn_email_advertiser_impression_limit\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:38:\"warn_email_advertiser_impression_limit\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (32,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:13;s:5:\"value\";s:3:\"100\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #13\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (33,1,'preferences',14,NULL,'a:4:{s:13:\"preference_id\";i:14;s:15:\"preference_name\";s:31:\"warn_email_advertiser_day_limit\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:31:\"warn_email_advertiser_day_limit\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (34,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:14;s:5:\"value\";s:1:\"1\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #14\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (35,1,'preferences',15,NULL,'a:4:{s:13:\"preference_id\";i:15;s:15:\"preference_name\";s:8:\"timezone\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:8:\"timezone\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (36,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:15;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #15\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (37,1,'preferences',16,NULL,'a:4:{s:13:\"preference_id\";i:16;s:15:\"preference_name\";s:22:\"tracker_default_status\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:22:\"tracker_default_status\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (38,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:16;s:5:\"value\";s:1:\"4\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #16\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (39,1,'preferences',17,NULL,'a:4:{s:13:\"preference_id\";i:17;s:15:\"preference_name\";s:20:\"tracker_default_type\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:20:\"tracker_default_type\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (40,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:17;s:5:\"value\";s:1:\"1\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #17\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (41,1,'preferences',18,NULL,'a:4:{s:13:\"preference_id\";i:18;s:15:\"preference_name\";s:22:\"tracker_link_campaigns\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:22:\"tracker_link_campaigns\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (42,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:18;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #18\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (43,1,'preferences',19,NULL,'a:4:{s:13:\"preference_id\";i:19;s:15:\"preference_name\";s:21:\"ui_show_campaign_info\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:21:\"ui_show_campaign_info\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (44,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:19;s:5:\"value\";s:1:\"1\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #19\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (45,1,'preferences',20,NULL,'a:4:{s:13:\"preference_id\";i:20;s:15:\"preference_name\";s:19:\"ui_show_banner_info\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:19:\"ui_show_banner_info\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (46,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:20;s:5:\"value\";s:1:\"1\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #20\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (47,1,'preferences',21,NULL,'a:4:{s:13:\"preference_id\";i:21;s:15:\"preference_name\";s:24:\"ui_show_campaign_preview\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:24:\"ui_show_campaign_preview\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (48,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:21;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #21\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (49,1,'preferences',22,NULL,'a:4:{s:13:\"preference_id\";i:22;s:15:\"preference_name\";s:19:\"ui_show_banner_html\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:19:\"ui_show_banner_html\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (50,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:22;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #22\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (51,1,'preferences',23,NULL,'a:4:{s:13:\"preference_id\";i:23;s:15:\"preference_name\";s:22:\"ui_show_banner_preview\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:22:\"ui_show_banner_preview\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (52,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:23;s:5:\"value\";s:1:\"1\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #23\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (53,1,'preferences',24,NULL,'a:4:{s:13:\"preference_id\";i:24;s:15:\"preference_name\";s:16:\"ui_hide_inactive\";s:12:\"account_type\";s:0:\"\";s:8:\"key_desc\";s:16:\"ui_hide_inactive\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (54,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:24;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #24\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (55,1,'preferences',25,NULL,'a:4:{s:13:\"preference_id\";i:25;s:15:\"preference_name\";s:24:\"ui_show_matching_banners\";s:12:\"account_type\";s:10:\"TRAFFICKER\";s:8:\"key_desc\";s:24:\"ui_show_matching_banners\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (56,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:25;s:5:\"value\";s:1:\"1\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #25\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (57,1,'preferences',26,NULL,'a:4:{s:13:\"preference_id\";i:26;s:15:\"preference_name\";s:32:\"ui_show_matching_banners_parents\";s:12:\"account_type\";s:10:\"TRAFFICKER\";s:8:\"key_desc\";s:32:\"ui_show_matching_banners_parents\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (58,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:26;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #26\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (59,1,'preferences',27,NULL,'a:4:{s:13:\"preference_id\";i:27;s:15:\"preference_name\";s:14:\"ui_novice_user\";s:12:\"account_type\";s:0:\"\";s:8:\"key_desc\";s:14:\"ui_novice_user\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (60,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:27;s:5:\"value\";s:1:\"1\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #27\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (61,1,'preferences',28,NULL,'a:4:{s:13:\"preference_id\";i:28;s:15:\"preference_name\";s:17:\"ui_week_start_day\";s:12:\"account_type\";s:0:\"\";s:8:\"key_desc\";s:17:\"ui_week_start_day\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (62,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:28;s:5:\"value\";s:1:\"1\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #28\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (63,1,'preferences',29,NULL,'a:4:{s:13:\"preference_id\";i:29;s:15:\"preference_name\";s:22:\"ui_percentage_decimals\";s:12:\"account_type\";s:0:\"\";s:8:\"key_desc\";s:22:\"ui_percentage_decimals\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (64,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:29;s:5:\"value\";s:1:\"2\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #29\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (65,1,'preferences',30,NULL,'a:4:{s:13:\"preference_id\";i:30;s:15:\"preference_name\";s:12:\"ui_column_id\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:12:\"ui_column_id\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (66,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:30;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #30\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (67,1,'preferences',31,NULL,'a:4:{s:13:\"preference_id\";i:31;s:15:\"preference_name\";s:18:\"ui_column_id_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:18:\"ui_column_id_label\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (68,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:31;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #31\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (69,1,'preferences',32,NULL,'a:4:{s:13:\"preference_id\";i:32;s:15:\"preference_name\";s:17:\"ui_column_id_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:17:\"ui_column_id_rank\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (70,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:32;s:5:\"value\";s:1:\"0\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #32\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (71,1,'preferences',33,NULL,'a:4:{s:13:\"preference_id\";i:33;s:15:\"preference_name\";s:18:\"ui_column_requests\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:18:\"ui_column_requests\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (72,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:33;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #33\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (73,1,'preferences',34,NULL,'a:4:{s:13:\"preference_id\";i:34;s:15:\"preference_name\";s:24:\"ui_column_requests_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:24:\"ui_column_requests_label\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (74,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:34;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #34\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (75,1,'preferences',35,NULL,'a:4:{s:13:\"preference_id\";i:35;s:15:\"preference_name\";s:23:\"ui_column_requests_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:23:\"ui_column_requests_rank\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (76,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:35;s:5:\"value\";s:1:\"0\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #35\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (77,1,'preferences',36,NULL,'a:4:{s:13:\"preference_id\";i:36;s:15:\"preference_name\";s:21:\"ui_column_impressions\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:21:\"ui_column_impressions\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (78,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:36;s:5:\"value\";s:1:\"1\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #36\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (79,1,'preferences',37,NULL,'a:4:{s:13:\"preference_id\";i:37;s:15:\"preference_name\";s:27:\"ui_column_impressions_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:27:\"ui_column_impressions_label\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (80,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:37;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #37\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (81,1,'preferences',38,NULL,'a:4:{s:13:\"preference_id\";i:38;s:15:\"preference_name\";s:26:\"ui_column_impressions_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:26:\"ui_column_impressions_rank\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (82,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:38;s:5:\"value\";s:1:\"1\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #38\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (83,1,'preferences',39,NULL,'a:4:{s:13:\"preference_id\";i:39;s:15:\"preference_name\";s:16:\"ui_column_clicks\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:16:\"ui_column_clicks\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (84,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:39;s:5:\"value\";s:1:\"1\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #39\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (85,1,'preferences',40,NULL,'a:4:{s:13:\"preference_id\";i:40;s:15:\"preference_name\";s:22:\"ui_column_clicks_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:22:\"ui_column_clicks_label\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (86,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:40;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #40\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (87,1,'preferences',41,NULL,'a:4:{s:13:\"preference_id\";i:41;s:15:\"preference_name\";s:21:\"ui_column_clicks_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:21:\"ui_column_clicks_rank\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (88,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:41;s:5:\"value\";s:1:\"2\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #41\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (89,1,'preferences',42,NULL,'a:4:{s:13:\"preference_id\";i:42;s:15:\"preference_name\";s:13:\"ui_column_ctr\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:13:\"ui_column_ctr\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (90,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:42;s:5:\"value\";s:1:\"1\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #42\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (91,1,'preferences',43,NULL,'a:4:{s:13:\"preference_id\";i:43;s:15:\"preference_name\";s:19:\"ui_column_ctr_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_ctr_label\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (92,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:43;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #43\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (93,1,'preferences',44,NULL,'a:4:{s:13:\"preference_id\";i:44;s:15:\"preference_name\";s:18:\"ui_column_ctr_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:18:\"ui_column_ctr_rank\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (94,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:44;s:5:\"value\";s:1:\"3\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #44\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (95,1,'preferences',45,NULL,'a:4:{s:13:\"preference_id\";i:45;s:15:\"preference_name\";s:21:\"ui_column_conversions\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:21:\"ui_column_conversions\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (96,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:45;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #45\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (97,1,'preferences',46,NULL,'a:4:{s:13:\"preference_id\";i:46;s:15:\"preference_name\";s:27:\"ui_column_conversions_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:27:\"ui_column_conversions_label\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (98,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:46;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #46\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (99,1,'preferences',47,NULL,'a:4:{s:13:\"preference_id\";i:47;s:15:\"preference_name\";s:26:\"ui_column_conversions_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:26:\"ui_column_conversions_rank\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (100,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:47;s:5:\"value\";s:1:\"0\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #47\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (101,1,'preferences',48,NULL,'a:4:{s:13:\"preference_id\";i:48;s:15:\"preference_name\";s:29:\"ui_column_conversions_pending\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:29:\"ui_column_conversions_pending\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (102,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:48;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #48\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (103,1,'preferences',49,NULL,'a:4:{s:13:\"preference_id\";i:49;s:15:\"preference_name\";s:35:\"ui_column_conversions_pending_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:35:\"ui_column_conversions_pending_label\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (104,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:49;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #49\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (105,1,'preferences',50,NULL,'a:4:{s:13:\"preference_id\";i:50;s:15:\"preference_name\";s:34:\"ui_column_conversions_pending_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:34:\"ui_column_conversions_pending_rank\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (106,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:50;s:5:\"value\";s:1:\"0\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #50\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (107,1,'preferences',51,NULL,'a:4:{s:13:\"preference_id\";i:51;s:15:\"preference_name\";s:18:\"ui_column_sr_views\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:18:\"ui_column_sr_views\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (108,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:51;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #51\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (109,1,'preferences',52,NULL,'a:4:{s:13:\"preference_id\";i:52;s:15:\"preference_name\";s:24:\"ui_column_sr_views_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:24:\"ui_column_sr_views_label\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (110,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:52;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #52\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (111,1,'preferences',53,NULL,'a:4:{s:13:\"preference_id\";i:53;s:15:\"preference_name\";s:23:\"ui_column_sr_views_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:23:\"ui_column_sr_views_rank\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (112,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:53;s:5:\"value\";s:1:\"0\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #53\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (113,1,'preferences',54,NULL,'a:4:{s:13:\"preference_id\";i:54;s:15:\"preference_name\";s:19:\"ui_column_sr_clicks\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_sr_clicks\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (114,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:54;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #54\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (115,1,'preferences',55,NULL,'a:4:{s:13:\"preference_id\";i:55;s:15:\"preference_name\";s:25:\"ui_column_sr_clicks_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:25:\"ui_column_sr_clicks_label\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (116,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:55;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #55\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (117,1,'preferences',56,NULL,'a:4:{s:13:\"preference_id\";i:56;s:15:\"preference_name\";s:24:\"ui_column_sr_clicks_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:24:\"ui_column_sr_clicks_rank\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (118,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:56;s:5:\"value\";s:1:\"0\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #56\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (119,1,'preferences',57,NULL,'a:4:{s:13:\"preference_id\";i:57;s:15:\"preference_name\";s:17:\"ui_column_revenue\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:17:\"ui_column_revenue\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (120,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:57;s:5:\"value\";s:1:\"1\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #57\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (121,1,'preferences',58,NULL,'a:4:{s:13:\"preference_id\";i:58;s:15:\"preference_name\";s:23:\"ui_column_revenue_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:23:\"ui_column_revenue_label\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (122,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:58;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #58\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (123,1,'preferences',59,NULL,'a:4:{s:13:\"preference_id\";i:59;s:15:\"preference_name\";s:22:\"ui_column_revenue_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:22:\"ui_column_revenue_rank\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (124,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:59;s:5:\"value\";s:1:\"4\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #59\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (125,1,'preferences',60,NULL,'a:4:{s:13:\"preference_id\";i:60;s:15:\"preference_name\";s:14:\"ui_column_cost\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_cost\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (126,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:60;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #60\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (127,1,'preferences',61,NULL,'a:4:{s:13:\"preference_id\";i:61;s:15:\"preference_name\";s:20:\"ui_column_cost_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_cost_label\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (128,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:61;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #61\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (129,1,'preferences',62,NULL,'a:4:{s:13:\"preference_id\";i:62;s:15:\"preference_name\";s:19:\"ui_column_cost_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_cost_rank\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (130,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:62;s:5:\"value\";s:1:\"0\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #62\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (131,1,'preferences',63,NULL,'a:4:{s:13:\"preference_id\";i:63;s:15:\"preference_name\";s:12:\"ui_column_bv\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:12:\"ui_column_bv\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (132,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:63;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #63\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (133,1,'preferences',64,NULL,'a:4:{s:13:\"preference_id\";i:64;s:15:\"preference_name\";s:18:\"ui_column_bv_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:18:\"ui_column_bv_label\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (134,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:64;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #64\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (135,1,'preferences',65,NULL,'a:4:{s:13:\"preference_id\";i:65;s:15:\"preference_name\";s:17:\"ui_column_bv_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:17:\"ui_column_bv_rank\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (136,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:65;s:5:\"value\";s:1:\"0\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #65\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (137,1,'preferences',66,NULL,'a:4:{s:13:\"preference_id\";i:66;s:15:\"preference_name\";s:19:\"ui_column_num_items\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_num_items\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (138,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:66;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #66\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (139,1,'preferences',67,NULL,'a:4:{s:13:\"preference_id\";i:67;s:15:\"preference_name\";s:25:\"ui_column_num_items_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:25:\"ui_column_num_items_label\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (140,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:67;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #67\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (141,1,'preferences',68,NULL,'a:4:{s:13:\"preference_id\";i:68;s:15:\"preference_name\";s:24:\"ui_column_num_items_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:24:\"ui_column_num_items_rank\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (142,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:68;s:5:\"value\";s:1:\"0\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #68\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (143,1,'preferences',69,NULL,'a:4:{s:13:\"preference_id\";i:69;s:15:\"preference_name\";s:16:\"ui_column_revcpc\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:16:\"ui_column_revcpc\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (144,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:69;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #69\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (145,1,'preferences',70,NULL,'a:4:{s:13:\"preference_id\";i:70;s:15:\"preference_name\";s:22:\"ui_column_revcpc_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:22:\"ui_column_revcpc_label\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (146,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:70;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #70\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (147,1,'preferences',71,NULL,'a:4:{s:13:\"preference_id\";i:71;s:15:\"preference_name\";s:21:\"ui_column_revcpc_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:21:\"ui_column_revcpc_rank\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (148,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:71;s:5:\"value\";s:1:\"0\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #71\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (149,1,'preferences',72,NULL,'a:4:{s:13:\"preference_id\";i:72;s:15:\"preference_name\";s:17:\"ui_column_costcpc\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:17:\"ui_column_costcpc\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (150,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:72;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #72\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (151,1,'preferences',73,NULL,'a:4:{s:13:\"preference_id\";i:73;s:15:\"preference_name\";s:23:\"ui_column_costcpc_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:23:\"ui_column_costcpc_label\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (152,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:73;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #73\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (153,1,'preferences',74,NULL,'a:4:{s:13:\"preference_id\";i:74;s:15:\"preference_name\";s:22:\"ui_column_costcpc_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:22:\"ui_column_costcpc_rank\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (154,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:74;s:5:\"value\";s:1:\"0\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #74\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (155,1,'preferences',75,NULL,'a:4:{s:13:\"preference_id\";i:75;s:15:\"preference_name\";s:25:\"ui_column_technology_cost\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:25:\"ui_column_technology_cost\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (156,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:75;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #75\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (157,1,'preferences',76,NULL,'a:4:{s:13:\"preference_id\";i:76;s:15:\"preference_name\";s:31:\"ui_column_technology_cost_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:31:\"ui_column_technology_cost_label\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (158,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:76;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #76\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (159,1,'preferences',77,NULL,'a:4:{s:13:\"preference_id\";i:77;s:15:\"preference_name\";s:30:\"ui_column_technology_cost_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:30:\"ui_column_technology_cost_rank\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (160,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:77;s:5:\"value\";s:1:\"0\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #77\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (161,1,'preferences',78,NULL,'a:4:{s:13:\"preference_id\";i:78;s:15:\"preference_name\";s:16:\"ui_column_income\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:16:\"ui_column_income\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (162,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:78;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #78\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (163,1,'preferences',79,NULL,'a:4:{s:13:\"preference_id\";i:79;s:15:\"preference_name\";s:22:\"ui_column_income_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:22:\"ui_column_income_label\";}',0,'Installer',0,'2008-09-15 11:57:52',1,NULL,NULL),
 (164,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:79;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #79\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (165,1,'preferences',80,NULL,'a:4:{s:13:\"preference_id\";i:80;s:15:\"preference_name\";s:21:\"ui_column_income_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:21:\"ui_column_income_rank\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (166,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:80;s:5:\"value\";s:1:\"0\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #80\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (167,1,'preferences',81,NULL,'a:4:{s:13:\"preference_id\";i:81;s:15:\"preference_name\";s:23:\"ui_column_income_margin\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:23:\"ui_column_income_margin\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (168,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:81;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #81\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (169,1,'preferences',82,NULL,'a:4:{s:13:\"preference_id\";i:82;s:15:\"preference_name\";s:29:\"ui_column_income_margin_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:29:\"ui_column_income_margin_label\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (170,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:82;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #82\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (171,1,'preferences',83,NULL,'a:4:{s:13:\"preference_id\";i:83;s:15:\"preference_name\";s:28:\"ui_column_income_margin_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:28:\"ui_column_income_margin_rank\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (172,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:83;s:5:\"value\";s:1:\"0\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #83\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (173,1,'preferences',84,NULL,'a:4:{s:13:\"preference_id\";i:84;s:15:\"preference_name\";s:16:\"ui_column_profit\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:16:\"ui_column_profit\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (174,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:84;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #84\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (175,1,'preferences',85,NULL,'a:4:{s:13:\"preference_id\";i:85;s:15:\"preference_name\";s:22:\"ui_column_profit_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:22:\"ui_column_profit_label\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (176,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:85;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #85\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (177,1,'preferences',86,NULL,'a:4:{s:13:\"preference_id\";i:86;s:15:\"preference_name\";s:21:\"ui_column_profit_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:21:\"ui_column_profit_rank\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (178,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:86;s:5:\"value\";s:1:\"0\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #86\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (179,1,'preferences',87,NULL,'a:4:{s:13:\"preference_id\";i:87;s:15:\"preference_name\";s:16:\"ui_column_margin\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:16:\"ui_column_margin\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (180,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:87;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #87\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (181,1,'preferences',88,NULL,'a:4:{s:13:\"preference_id\";i:88;s:15:\"preference_name\";s:22:\"ui_column_margin_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:22:\"ui_column_margin_label\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (182,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:88;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #88\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (183,1,'preferences',89,NULL,'a:4:{s:13:\"preference_id\";i:89;s:15:\"preference_name\";s:21:\"ui_column_margin_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:21:\"ui_column_margin_rank\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (184,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:89;s:5:\"value\";s:1:\"0\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #89\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (185,1,'preferences',90,NULL,'a:4:{s:13:\"preference_id\";i:90;s:15:\"preference_name\";s:14:\"ui_column_erpm\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_erpm\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (186,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:90;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #90\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (187,1,'preferences',91,NULL,'a:4:{s:13:\"preference_id\";i:91;s:15:\"preference_name\";s:20:\"ui_column_erpm_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_erpm_label\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (188,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:91;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #91\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (189,1,'preferences',92,NULL,'a:4:{s:13:\"preference_id\";i:92;s:15:\"preference_name\";s:19:\"ui_column_erpm_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_erpm_rank\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (190,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:92;s:5:\"value\";s:1:\"0\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #92\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (191,1,'preferences',93,NULL,'a:4:{s:13:\"preference_id\";i:93;s:15:\"preference_name\";s:14:\"ui_column_erpc\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_erpc\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (192,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:93;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #93\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (193,1,'preferences',94,NULL,'a:4:{s:13:\"preference_id\";i:94;s:15:\"preference_name\";s:20:\"ui_column_erpc_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_erpc_label\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (194,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:94;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #94\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (195,1,'preferences',95,NULL,'a:4:{s:13:\"preference_id\";i:95;s:15:\"preference_name\";s:19:\"ui_column_erpc_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_erpc_rank\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (196,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:95;s:5:\"value\";s:1:\"0\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #95\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (197,1,'preferences',96,NULL,'a:4:{s:13:\"preference_id\";i:96;s:15:\"preference_name\";s:14:\"ui_column_erps\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_erps\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (198,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:96;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #96\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (199,1,'preferences',97,NULL,'a:4:{s:13:\"preference_id\";i:97;s:15:\"preference_name\";s:20:\"ui_column_erps_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_erps_label\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (200,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:97;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #97\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (201,1,'preferences',98,NULL,'a:4:{s:13:\"preference_id\";i:98;s:15:\"preference_name\";s:19:\"ui_column_erps_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_erps_rank\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (202,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:98;s:5:\"value\";s:1:\"0\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #98\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (203,1,'preferences',99,NULL,'a:4:{s:13:\"preference_id\";i:99;s:15:\"preference_name\";s:14:\"ui_column_eipm\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_eipm\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (204,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:99;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #99\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (205,1,'preferences',100,NULL,'a:4:{s:13:\"preference_id\";i:100;s:15:\"preference_name\";s:20:\"ui_column_eipm_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_eipm_label\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (206,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:100;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:29:\"Account #1 -> Preference #100\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (207,1,'preferences',101,NULL,'a:4:{s:13:\"preference_id\";i:101;s:15:\"preference_name\";s:19:\"ui_column_eipm_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_eipm_rank\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (208,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:101;s:5:\"value\";s:1:\"0\";s:8:\"key_desc\";s:29:\"Account #1 -> Preference #101\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (209,1,'preferences',102,NULL,'a:4:{s:13:\"preference_id\";i:102;s:15:\"preference_name\";s:14:\"ui_column_eipc\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_eipc\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (210,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:102;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:29:\"Account #1 -> Preference #102\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (211,1,'preferences',103,NULL,'a:4:{s:13:\"preference_id\";i:103;s:15:\"preference_name\";s:20:\"ui_column_eipc_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_eipc_label\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (212,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:103;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:29:\"Account #1 -> Preference #103\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (213,1,'preferences',104,NULL,'a:4:{s:13:\"preference_id\";i:104;s:15:\"preference_name\";s:19:\"ui_column_eipc_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_eipc_rank\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (214,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:104;s:5:\"value\";s:1:\"0\";s:8:\"key_desc\";s:29:\"Account #1 -> Preference #104\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (215,1,'preferences',105,NULL,'a:4:{s:13:\"preference_id\";i:105;s:15:\"preference_name\";s:14:\"ui_column_eips\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_eips\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (216,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:105;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:29:\"Account #1 -> Preference #105\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (217,1,'preferences',106,NULL,'a:4:{s:13:\"preference_id\";i:106;s:15:\"preference_name\";s:20:\"ui_column_eips_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_eips_label\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (218,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:106;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:29:\"Account #1 -> Preference #106\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (219,1,'preferences',107,NULL,'a:4:{s:13:\"preference_id\";i:107;s:15:\"preference_name\";s:19:\"ui_column_eips_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_eips_rank\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (220,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:107;s:5:\"value\";s:1:\"0\";s:8:\"key_desc\";s:29:\"Account #1 -> Preference #107\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (221,1,'preferences',108,NULL,'a:4:{s:13:\"preference_id\";i:108;s:15:\"preference_name\";s:14:\"ui_column_ecpm\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_ecpm\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (222,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:108;s:5:\"value\";s:1:\"1\";s:8:\"key_desc\";s:29:\"Account #1 -> Preference #108\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (223,1,'preferences',109,NULL,'a:4:{s:13:\"preference_id\";i:109;s:15:\"preference_name\";s:20:\"ui_column_ecpm_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_ecpm_label\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (224,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:109;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:29:\"Account #1 -> Preference #109\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (225,1,'preferences',110,NULL,'a:4:{s:13:\"preference_id\";i:110;s:15:\"preference_name\";s:19:\"ui_column_ecpm_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_ecpm_rank\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (226,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:110;s:5:\"value\";s:1:\"5\";s:8:\"key_desc\";s:29:\"Account #1 -> Preference #110\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (227,1,'preferences',111,NULL,'a:4:{s:13:\"preference_id\";i:111;s:15:\"preference_name\";s:14:\"ui_column_ecpc\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_ecpc\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (228,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:111;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:29:\"Account #1 -> Preference #111\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (229,1,'preferences',112,NULL,'a:4:{s:13:\"preference_id\";i:112;s:15:\"preference_name\";s:20:\"ui_column_ecpc_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_ecpc_label\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (230,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:112;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:29:\"Account #1 -> Preference #112\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (231,1,'preferences',113,NULL,'a:4:{s:13:\"preference_id\";i:113;s:15:\"preference_name\";s:19:\"ui_column_ecpc_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_ecpc_rank\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (232,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:113;s:5:\"value\";s:1:\"0\";s:8:\"key_desc\";s:29:\"Account #1 -> Preference #113\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (233,1,'preferences',114,NULL,'a:4:{s:13:\"preference_id\";i:114;s:15:\"preference_name\";s:14:\"ui_column_ecps\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_ecps\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (234,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:114;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:29:\"Account #1 -> Preference #114\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (235,1,'preferences',115,NULL,'a:4:{s:13:\"preference_id\";i:115;s:15:\"preference_name\";s:20:\"ui_column_ecps_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_ecps_label\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (236,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:115;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:29:\"Account #1 -> Preference #115\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (237,1,'preferences',116,NULL,'a:4:{s:13:\"preference_id\";i:116;s:15:\"preference_name\";s:19:\"ui_column_ecps_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_ecps_rank\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (238,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:116;s:5:\"value\";s:1:\"0\";s:8:\"key_desc\";s:29:\"Account #1 -> Preference #116\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL),
 (239,2,'account_preference_assoc',0,NULL,'a:2:{s:5:\"value\";a:2:{s:3:\"was\";s:0:\"\";s:2:\"is\";s:13:\"Europe/Warsaw\";}s:8:\"key_desc\";s:28:\"Account #1 -> Preference #15\";}',0,'Installer',0,'2008-09-15 11:57:53',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (240,2,'users',1,NULL,'a:2:{s:15:\"date_last_login\";a:2:{s:3:\"was\";N;s:2:\"is\";s:19:\"2008-09-15 11:57:54\";}s:8:\"key_desc\";N;}',0,NULL,0,'2008-09-15 11:57:54',1,NULL,NULL),
 (241,2,'users',1,NULL,'a:2:{s:15:\"date_last_login\";a:2:{s:3:\"was\";s:19:\"2008-09-15 11:57:54\";s:2:\"is\";s:19:\"2008-09-15 11:58:39\";}s:8:\"key_desc\";N;}',0,NULL,0,'2008-09-15 11:58:39',1,NULL,NULL),
 (242,1,'accounts',3,NULL,'a:4:{s:10:\"account_id\";i:3;s:12:\"account_type\";s:10:\"ADVERTISER\";s:12:\"account_name\";s:12:\"Advertiser 1\";s:8:\"key_desc\";s:12:\"Advertiser 1\";}',1,'openx',0,'2008-09-15 11:58:51',1,3,NULL),
 (243,1,'clients',1,NULL,'a:17:{s:8:\"clientid\";i:1;s:8:\"agencyid\";i:1;s:10:\"clientname\";s:12:\"Advertiser 1\";s:7:\"contact\";s:10:\"advertiser\";s:5:\"email\";s:19:\"example@example.com\";s:6:\"report\";s:1:\"f\";s:14:\"reportinterval\";i:7;s:14:\"reportlastdate\";s:10:\"2008-09-15\";s:16:\"reportdeactivate\";s:1:\"t\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2008-09-15 11:58:51\";s:12:\"lb_reporting\";s:4:\"null\";s:15:\"an_adnetwork_id\";i:0;s:16:\"as_advertiser_id\";i:0;s:10:\"account_id\";i:3;s:21:\"advertiser_limitation\";s:5:\"false\";s:8:\"key_desc\";s:12:\"Advertiser 1\";}',1,'openx',0,'2008-09-15 11:58:51',2,3,NULL),
 (244,2,'users',1,NULL,'a:2:{s:15:\"date_last_login\";a:2:{s:3:\"was\";s:19:\"2008-09-15 11:58:39\";s:2:\"is\";s:19:\"2008-09-15 11:58:51\";}s:8:\"key_desc\";N;}',0,NULL,0,'2008-09-15 11:58:51',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (245,1,'campaigns',1,NULL,'a:30:{s:10:\"campaignid\";i:1;s:12:\"campaignname\";s:31:\"Advertiser 1 - Default Campaign\";s:8:\"clientid\";i:1;s:5:\"views\";i:-1;s:6:\"clicks\";i:-1;s:11:\"conversions\";i:-1;s:6:\"expire\";s:10:\"2007-07-01\";s:8:\"activate\";s:10:\"0000-00-00\";s:8:\"priority\";i:0;s:6:\"weight\";i:1;s:17:\"target_impression\";i:0;s:12:\"target_click\";i:0;s:17:\"target_conversion\";i:0;s:9:\"anonymous\";s:1:\"f\";s:9:\"companion\";i:0;s:8:\"comments\";s:0:\"\";s:7:\"revenue\";i:0;s:12:\"revenue_type\";i:0;s:7:\"updated\";s:19:\"2008-09-15 11:59:03\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:14:\"an_campaign_id\";i:0;s:14:\"as_campaign_id\";i:0;s:6:\"status\";i:3;s:9:\"an_status\";i:0;s:16:\"as_reject_reason\";i:0;s:12:\"hosted_views\";i:0;s:13:\"hosted_clicks\";i:0;s:8:\"key_desc\";s:31:\"Advertiser 1 - Default Campaign\";}',1,'openx',0,'2008-09-15 11:59:03',2,3,NULL),
 (246,1,'campaigns',2,NULL,'a:30:{s:10:\"campaignid\";i:2;s:12:\"campaignname\";s:13:\"test campaign\";s:8:\"clientid\";i:1;s:5:\"views\";i:-1;s:6:\"clicks\";i:-1;s:11:\"conversions\";i:-1;s:6:\"expire\";s:10:\"0000-00-00\";s:8:\"activate\";s:10:\"0000-00-00\";s:8:\"priority\";i:0;s:6:\"weight\";i:1;s:17:\"target_impression\";i:0;s:12:\"target_click\";i:0;s:17:\"target_conversion\";i:0;s:9:\"anonymous\";s:1:\"f\";s:9:\"companion\";i:0;s:8:\"comments\";s:0:\"\";s:7:\"revenue\";i:0;s:12:\"revenue_type\";i:0;s:7:\"updated\";s:19:\"2008-09-15 11:59:04\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:14:\"an_campaign_id\";i:0;s:14:\"as_campaign_id\";i:0;s:6:\"status\";i:0;s:9:\"an_status\";i:0;s:16:\"as_reject_reason\";i:0;s:12:\"hosted_views\";i:0;s:13:\"hosted_clicks\";i:0;s:8:\"key_desc\";s:13:\"test campaign\";}',1,'openx',0,'2008-09-15 11:59:04',2,3,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (247,1,'campaigns',3,NULL,'a:30:{s:10:\"campaignid\";i:3;s:12:\"campaignname\";s:16:\"campaign 2 (gif)\";s:8:\"clientid\";i:1;s:5:\"views\";i:-1;s:6:\"clicks\";i:-1;s:11:\"conversions\";i:-1;s:6:\"expire\";s:10:\"0000-00-00\";s:8:\"activate\";s:10:\"0000-00-00\";s:8:\"priority\";i:0;s:6:\"weight\";i:1;s:17:\"target_impression\";i:0;s:12:\"target_click\";i:0;s:17:\"target_conversion\";i:0;s:9:\"anonymous\";s:1:\"f\";s:9:\"companion\";i:0;s:8:\"comments\";s:0:\"\";s:7:\"revenue\";i:0;s:12:\"revenue_type\";i:0;s:7:\"updated\";s:19:\"2008-09-15 11:59:05\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:14:\"an_campaign_id\";i:0;s:14:\"as_campaign_id\";i:0;s:6:\"status\";i:0;s:9:\"an_status\";i:0;s:16:\"as_reject_reason\";i:0;s:12:\"hosted_views\";i:0;s:13:\"hosted_clicks\";i:0;s:8:\"key_desc\";s:16:\"campaign 2 (gif)\";}',1,'openx',0,'2008-09-15 11:59:05',2,3,NULL),
 (248,2,'users',1,NULL,'a:2:{s:15:\"date_last_login\";a:2:{s:3:\"was\";s:19:\"2008-09-15 11:58:51\";s:2:\"is\";s:19:\"2008-09-15 11:59:05\";}s:8:\"key_desc\";N;}',0,NULL,0,'2008-09-15 11:59:05',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (249,1,'images',0,NULL,'a:4:{s:8:\"filename\";s:4:\"null\";s:8:\"contents\";s:11:\"Binary data\";s:7:\"t_stamp\";s:4:\"null\";s:8:\"key_desc\";s:10:\"468x60.gif\";}',1,'openx',0,'2008-09-15 11:59:19',1,NULL,NULL),
 (250,1,'banners',3,NULL,'a:44:{s:8:\"bannerid\";i:3;s:10:\"campaignid\";i:3;s:11:\"contenttype\";s:3:\"gif\";s:13:\"pluginversion\";i:0;s:11:\"storagetype\";s:3:\"sql\";s:8:\"filename\";s:10:\"468x60.gif\";s:8:\"imageurl\";s:0:\"\";s:12:\"htmltemplate\";s:0:\"\";s:9:\"htmlcache\";s:0:\"\";s:5:\"width\";i:468;s:6:\"height\";i:60;s:6:\"weight\";i:1;s:3:\"seq\";i:0;s:6:\"target\";s:0:\"\";s:3:\"url\";s:28:\"https://developer.openx.org/\";s:3:\"alt\";s:8:\"alt text\";s:10:\"statustext\";s:0:\"\";s:10:\"bannertext\";s:0:\"\";s:11:\"description\";s:17:\"sample gif banner\";s:8:\"autohtml\";s:1:\"f\";s:8:\"adserver\";s:0:\"\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:18:\"compiledlimitation\";s:0:\"\";s:11:\"acl_plugins\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"appendtype\";i:0;s:10:\"bannertype\";i:0;s:12:\"alt_filename\";s:0:\"\";s:12:\"alt_imageurl\";s:4:\"null\";s:15:\"alt_contenttype\";s:0:\"\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2008-09-15 11:59:19\";s:12:\"acls_updated\";s:4:\"null\";s:7:\"keyword\";s:0:\"\";s:11:\"transparent\";s:4:\"null\";s:10:\"parameters\";s:2:\"N;\";s:12:\"an_banner_id\";i:0;s:12:\"as_banner_id\";i:0;s:6:\"status\";i:0;s:16:\"ad_direct_status\";i:0;s:29:\"ad_direct_rejection_reason_id\";i:0;s:8:\"key_desc\";s:17:\"sample gif banner\";}',1,'openx',0,'2008-09-15 11:59:19',2,3,NULL),
 (251,1,'ad_zone_assoc',6,NULL,'a:8:{s:16:\"ad_zone_assoc_id\";i:6;s:7:\"zone_id\";i:0;s:5:\"ad_id\";i:3;s:8:\"priority\";i:0;s:9:\"link_type\";i:0;s:15:\"priority_factor\";i:0;s:15:\"to_be_delivered\";s:4:\"null\";s:8:\"key_desc\";s:16:\"Ad #3 -> Zone #0\";}',1,'openx',0,'2008-09-15 11:59:19',2,3,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (252,2,'users',1,NULL,'a:2:{s:15:\"date_last_login\";a:2:{s:3:\"was\";s:19:\"2008-09-15 11:59:05\";s:2:\"is\";s:19:\"2008-09-15 11:59:20\";}s:8:\"key_desc\";N;}',0,NULL,0,'2008-09-15 11:59:20',1,NULL,NULL),
 (253,2,'users',1,NULL,'a:2:{s:15:\"date_last_login\";a:2:{s:3:\"was\";s:19:\"2008-09-15 11:59:20\";s:2:\"is\";s:19:\"2008-09-15 11:59:36\";}s:8:\"key_desc\";N;}',0,NULL,0,'2008-09-15 11:59:36',1,NULL,NULL),
 (254,1,'zones',1,NULL,'a:32:{s:6:\"zoneid\";i:1;s:11:\"affiliateid\";i:1;s:8:\"zonename\";s:21:\"Publisher 1 - Default\";s:11:\"description\";s:0:\"\";s:8:\"delivery\";i:0;s:8:\"zonetype\";i:3;s:8:\"category\";s:0:\"\";s:5:\"width\";i:468;s:6:\"height\";i:60;s:12:\"ad_selection\";s:0:\"\";s:5:\"chain\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"appendtype\";i:0;s:11:\"forceappend\";s:4:\"null\";s:23:\"inventory_forecast_type\";i:0;s:8:\"comments\";s:0:\"\";s:4:\"cost\";i:0;s:9:\"cost_type\";i:0;s:16:\"cost_variable_id\";s:4:\"null\";s:15:\"technology_cost\";i:0;s:20:\"technology_cost_type\";i:0;s:7:\"updated\";s:19:\"2008-09-15 11:59:47\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:4:\"what\";s:0:\"\";s:10:\"as_zone_id\";i:0;s:15:\"is_in_ad_direct\";s:4:\"null\";s:4:\"rate\";i:0;s:7:\"pricing\";s:4:\"null\";s:8:\"key_desc\";s:21:\"Publisher 1 - Default\";}',1,'openx',0,'2008-09-15 11:59:47',1,NULL,NULL),
 (255,2,'zones',1,NULL,'a:2:{s:8:\"key_desc\";s:21:\"Publisher 1 - Default\";s:11:\"affiliateid\";s:1:\"1\";}',1,'openx',0,'2008-09-15 11:59:48',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (256,1,'zones',2,NULL,'a:32:{s:6:\"zoneid\";i:2;s:11:\"affiliateid\";i:1;s:8:\"zonename\";s:28:\"Agency Publisher 1 - Default\";s:11:\"description\";s:0:\"\";s:8:\"delivery\";i:0;s:8:\"zonetype\";i:3;s:8:\"category\";s:0:\"\";s:5:\"width\";i:468;s:6:\"height\";i:60;s:12:\"ad_selection\";s:0:\"\";s:5:\"chain\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"appendtype\";i:0;s:11:\"forceappend\";s:4:\"null\";s:23:\"inventory_forecast_type\";i:0;s:8:\"comments\";s:0:\"\";s:4:\"cost\";i:0;s:9:\"cost_type\";i:0;s:16:\"cost_variable_id\";s:4:\"null\";s:15:\"technology_cost\";i:0;s:20:\"technology_cost_type\";i:0;s:7:\"updated\";s:19:\"2008-09-15 11:59:49\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:4:\"what\";s:0:\"\";s:10:\"as_zone_id\";i:0;s:15:\"is_in_ad_direct\";s:4:\"null\";s:4:\"rate\";i:0;s:7:\"pricing\";s:4:\"null\";s:8:\"key_desc\";s:28:\"Agency Publisher 1 - Default\";}',1,'openx',0,'2008-09-15 11:59:49',1,NULL,NULL),
 (257,2,'users',1,NULL,'a:2:{s:15:\"date_last_login\";a:2:{s:3:\"was\";s:19:\"2008-09-15 11:59:36\";s:2:\"is\";s:19:\"2008-09-15 11:59:50\";}s:8:\"key_desc\";N;}',0,NULL,0,'2008-09-15 11:59:50',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (258,2,'users',1,NULL,'a:2:{s:15:\"date_last_login\";a:2:{s:3:\"was\";s:19:\"2008-09-15 11:59:50\";s:2:\"is\";s:19:\"2008-09-15 12:00:03\";}s:8:\"key_desc\";N;}',0,NULL,0,'2008-09-15 12:00:03',1,NULL,NULL),
 (259,1,'placement_zone_assoc',4,NULL,'a:4:{s:23:\"placement_zone_assoc_id\";i:4;s:7:\"zone_id\";i:2;s:12:\"placement_id\";i:1;s:8:\"key_desc\";s:22:\"Campaign #1 -> Zone #2\";}',1,'openx',0,'2008-09-15 12:00:16',2,3,NULL),
 (260,2,'users',1,NULL,'a:2:{s:15:\"date_last_login\";a:2:{s:3:\"was\";s:19:\"2008-09-15 12:00:03\";s:2:\"is\";s:19:\"2008-09-15 12:00:17\";}s:8:\"key_desc\";N;}',0,NULL,0,'2008-09-15 12:00:17',1,NULL,NULL),
 (261,1,'trackers',1,NULL,'a:14:{s:9:\"trackerid\";i:1;s:11:\"trackername\";s:14:\"Sample Tracker\";s:11:\"description\";s:0:\"\";s:8:\"clientid\";i:1;s:10:\"viewwindow\";i:3;s:11:\"clickwindow\";i:3;s:11:\"blockwindow\";i:0;s:6:\"status\";s:1:\"4\";s:4:\"type\";s:4:\"true\";s:13:\"linkcampaigns\";s:1:\"f\";s:14:\"variablemethod\";s:4:\"null\";s:10:\"appendcode\";s:0:\"\";s:7:\"updated\";s:19:\"2008-09-15 12:00:29\";s:8:\"key_desc\";s:14:\"Sample Tracker\";}',1,'openx',0,'2008-09-15 12:00:29',2,3,NULL),
 (262,2,'trackers',1,NULL,'a:3:{s:14:\"variablemethod\";a:2:{s:3:\"was\";s:7:\"default\";s:2:\"is\";s:2:\"js\";}s:8:\"key_desc\";s:14:\"Sample Tracker\";s:8:\"clientid\";s:1:\"1\";}',1,'openx',0,'2008-09-15 12:00:30',2,3,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (263,1,'variables',1,NULL,'a:13:{s:10:\"variableid\";i:1;s:9:\"trackerid\";i:1;s:4:\"name\";s:3:\"boo\";s:11:\"description\";s:13:\"Sample number\";s:8:\"datatype\";s:7:\"numeric\";s:7:\"purpose\";s:4:\"NULL\";s:15:\"reject_if_empty\";s:0:\"\";s:9:\"is_unique\";i:0;s:13:\"unique_window\";i:0;s:12:\"variablecode\";s:27:\"var boo = \\\'%%BOO_VALUE%%\\\'\";s:6:\"hidden\";s:1:\"f\";s:7:\"updated\";s:19:\"2008-09-15 12:00:30\";s:8:\"key_desc\";s:3:\"boo\";}',1,'openx',0,'2008-09-15 12:00:30',2,3,NULL),
 (264,1,'variables',2,NULL,'a:13:{s:10:\"variableid\";i:2;s:9:\"trackerid\";i:1;s:4:\"name\";s:3:\"foo\";s:11:\"description\";s:13:\"Sample string\";s:8:\"datatype\";s:6:\"string\";s:7:\"purpose\";s:4:\"NULL\";s:15:\"reject_if_empty\";s:0:\"\";s:9:\"is_unique\";i:0;s:13:\"unique_window\";i:0;s:12:\"variablecode\";s:27:\"var foo = \\\'%%FOO_VALUE%%\\\'\";s:6:\"hidden\";s:1:\"f\";s:7:\"updated\";s:19:\"2008-09-15 12:00:30\";s:8:\"key_desc\";s:3:\"foo\";}',1,'openx',0,'2008-09-15 12:00:30',2,3,NULL),
 (265,2,'users',1,NULL,'a:2:{s:15:\"date_last_login\";a:2:{s:3:\"was\";s:19:\"2008-09-15 12:00:17\";s:2:\"is\";s:19:\"2008-09-15 12:00:31\";}s:8:\"key_desc\";N;}',0,NULL,0,'2008-09-15 12:00:31',1,NULL,NULL);
INSERT INTO `ox_audit` (`auditid`,`actionid`,`context`,`contextid`,`parentid`,`details`,`userid`,`username`,`usertype`,`updated`,`account_id`,`advertiser_account_id`,`website_account_id`) VALUES 
 (266,3,'campaigns_trackers',1,NULL,'a:7:{s:18:\"campaign_trackerid\";i:1;s:10:\"campaignid\";i:3;s:9:\"trackerid\";i:1;s:10:\"viewwindow\";i:3;s:11:\"clickwindow\";i:3;s:6:\"status\";s:1:\"4\";s:8:\"key_desc\";s:25:\"Campaign #3 -> Tracker #1\";}',1,'openx',0,'2008-09-15 12:00:43',2,3,NULL),
 (267,1,'campaigns_trackers',2,NULL,'a:7:{s:18:\"campaign_trackerid\";i:2;s:10:\"campaignid\";i:3;s:9:\"trackerid\";i:1;s:10:\"viewwindow\";i:3;s:11:\"clickwindow\";i:3;s:6:\"status\";s:1:\"4\";s:8:\"key_desc\";s:25:\"Campaign #3 -> Tracker #1\";}',1,'openx',0,'2008-09-15 12:00:43',2,3,NULL),
 (268,2,'users',1,NULL,'a:2:{s:15:\"date_last_login\";a:2:{s:3:\"was\";s:19:\"2008-09-15 12:00:31\";s:2:\"is\";s:19:\"2008-09-15 12:00:44\";}s:8:\"key_desc\";N;}',0,NULL,0,'2008-09-15 12:00:44',1,NULL,NULL),
 (269,1,'channel',1,NULL,'a:12:{s:9:\"channelid\";i:1;s:8:\"agencyid\";i:1;s:11:\"affiliateid\";i:1;s:4:\"name\";s:20:\"Test Admin Channel 2\";s:11:\"description\";s:0:\"\";s:18:\"compiledlimitation\";s:4:\"true\";s:11:\"acl_plugins\";s:4:\"true\";s:6:\"active\";i:1;s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:4:\"null\";s:12:\"acls_updated\";s:4:\"null\";s:8:\"key_desc\";s:20:\"Test Admin Channel 2\";}',1,'openx',0,'2008-09-15 12:00:55',1,NULL,NULL),
 (270,2,'users',1,NULL,'a:2:{s:15:\"date_last_login\";a:2:{s:3:\"was\";s:19:\"2008-09-15 12:00:44\";s:2:\"is\";s:19:\"2008-09-15 12:02:19\";}s:8:\"key_desc\";N;}',0,NULL,0,'2008-09-15 12:02:19',1,NULL,NULL);
CREATE TABLE `ox_banners` (
  `bannerid` mediumint(9) NOT NULL auto_increment,
  `campaignid` mediumint(9) NOT NULL default '0',
  `contenttype` enum('gif','jpeg','png','html','swf','dcr','rpm','mov','txt') NOT NULL default 'gif',
  `pluginversion` mediumint(9) NOT NULL default '0',
  `storagetype` enum('sql','web','url','html','network','txt') NOT NULL default 'sql',
  `filename` varchar(255) NOT NULL default '',
  `imageurl` varchar(255) NOT NULL default '',
  `htmltemplate` text NOT NULL,
  `htmlcache` text NOT NULL,
  `width` smallint(6) NOT NULL default '0',
  `height` smallint(6) NOT NULL default '0',
  `weight` tinyint(4) NOT NULL default '1',
  `seq` tinyint(4) NOT NULL default '0',
  `target` varchar(16) NOT NULL default '',
  `url` text NOT NULL,
  `alt` varchar(255) NOT NULL default '',
  `statustext` varchar(255) NOT NULL default '',
  `bannertext` text NOT NULL,
  `description` varchar(255) NOT NULL default '',
  `autohtml` enum('t','f') NOT NULL default 't',
  `adserver` varchar(50) NOT NULL default '',
  `block` int(11) NOT NULL default '0',
  `capping` int(11) NOT NULL default '0',
  `session_capping` int(11) NOT NULL default '0',
  `compiledlimitation` text NOT NULL,
  `acl_plugins` text,
  `append` text NOT NULL,
  `appendtype` tinyint(4) NOT NULL default '0',
  `bannertype` tinyint(4) NOT NULL default '0',
  `alt_filename` varchar(255) NOT NULL default '',
  `alt_imageurl` varchar(255) NOT NULL default '',
  `alt_contenttype` enum('gif','jpeg','png') NOT NULL default 'gif',
  `comments` text,
  `updated` datetime NOT NULL,
  `acls_updated` datetime NOT NULL default '0000-00-00 00:00:00',
  `keyword` varchar(255) NOT NULL default '',
  `transparent` tinyint(1) NOT NULL default '0',
  `parameters` text,
  `an_banner_id` int(11) default NULL,
  `as_banner_id` int(11) default NULL,
  `status` int(11) NOT NULL default '0',
  `ad_direct_status` tinyint(4) NOT NULL default '0',
  `ad_direct_rejection_reason_id` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`bannerid`),
  KEY `ox_banners_campaignid` (`campaignid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
INSERT INTO `ox_banners` (`bannerid`,`campaignid`,`contenttype`,`pluginversion`,`storagetype`,`filename`,`imageurl`,`htmltemplate`,`htmlcache`,`width`,`height`,`weight`,`seq`,`target`,`url`,`alt`,`statustext`,`bannertext`,`description`,`autohtml`,`adserver`,`block`,`capping`,`session_capping`,`compiledlimitation`,`acl_plugins`,`append`,`appendtype`,`bannertype`,`alt_filename`,`alt_imageurl`,`alt_contenttype`,`comments`,`updated`,`acls_updated`,`keyword`,`transparent`,`parameters`,`an_banner_id`,`as_banner_id`,`status`,`ad_direct_status`,`ad_direct_rejection_reason_id`) VALUES 
 (1,1,'html',0,'html','','','Test HTML Banner!\r\n','Test HTML Banner!\r\n',468,60,1,0,'','','','','','Test HTML Banner!','t','',0,0,0,'(MAX_checkSite_Channel(\\\'7\\\', \\\'=~\\\'))','Site:Channel','',0,0,'','','gif','','2008-04-28 11:20:31','2008-04-28 11:20:31','',0,'N;',NULL,NULL,0,0,0),
 (2,2,'html',0,'html','','','html test banner','<a href=\"{clickurl}\" target=\"{target}\">html test banner</a>',468,60,1,0,'','https://developer.openx.org/','','','','test banner','t','max',0,0,0,'',NULL,'',0,0,'','','gif','','2008-04-28 11:53:30','0000-00-00 00:00:00','',0,'N;',NULL,NULL,0,0,0),
 (3,3,'gif',0,'sql','468x60.gif','','','',468,60,1,0,'','https://developer.openx.org/','alt text','','','sample gif banner','f','',0,0,0,'',NULL,'',0,0,'','','','','2008-09-15 11:59:19','0000-00-00 00:00:00','',0,'N;',NULL,NULL,0,0,0);
CREATE TABLE `ox_campaigns` (
  `campaignid` mediumint(9) NOT NULL auto_increment,
  `campaignname` varchar(255) NOT NULL default '',
  `clientid` mediumint(9) NOT NULL default '0',
  `views` int(11) default '-1',
  `clicks` int(11) default '-1',
  `conversions` int(11) default '-1',
  `expire` date default '0000-00-00',
  `activate` date default '0000-00-00',
  `priority` int(11) NOT NULL default '0',
  `weight` tinyint(4) NOT NULL default '1',
  `target_impression` int(11) NOT NULL default '0',
  `target_click` int(11) NOT NULL default '0',
  `target_conversion` int(11) NOT NULL default '0',
  `anonymous` enum('t','f') NOT NULL default 'f',
  `companion` smallint(1) default '0',
  `comments` text,
  `revenue` decimal(10,4) default NULL,
  `revenue_type` smallint(6) default NULL,
  `updated` datetime NOT NULL,
  `block` int(11) NOT NULL default '0',
  `capping` int(11) NOT NULL default '0',
  `session_capping` int(11) NOT NULL default '0',
  `an_campaign_id` int(11) default NULL,
  `as_campaign_id` int(11) default NULL,
  `status` int(11) NOT NULL default '0',
  `an_status` int(11) NOT NULL default '0',
  `as_reject_reason` int(11) NOT NULL default '0',
  `hosted_views` int(11) NOT NULL default '0',
  `hosted_clicks` int(11) NOT NULL default '0',
  PRIMARY KEY  (`campaignid`),
  KEY `ox_campaigns_clientid` (`clientid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
INSERT INTO `ox_campaigns` (`campaignid`,`campaignname`,`clientid`,`views`,`clicks`,`conversions`,`expire`,`activate`,`priority`,`weight`,`target_impression`,`target_click`,`target_conversion`,`anonymous`,`companion`,`comments`,`revenue`,`revenue_type`,`updated`,`block`,`capping`,`session_capping`,`an_campaign_id`,`as_campaign_id`,`status`,`an_status`,`as_reject_reason`,`hosted_views`,`hosted_clicks`) VALUES 
 (1,'Advertiser 1 - Default Campaign',1,-1,-1,-1,'2007-07-01','0000-00-00',0,1,0,0,0,'f',0,'',NULL,NULL,'2008-09-15 11:59:03',0,0,0,NULL,NULL,3,0,0,0,0),
 (2,'test campaign',1,-1,-1,-1,'0000-00-00','0000-00-00',0,1,0,0,0,'f',0,'',NULL,NULL,'2008-09-15 11:59:04',0,0,0,NULL,NULL,0,0,0,0,0),
 (3,'campaign 2 (gif)',1,-1,-1,-1,'0000-00-00','0000-00-00',0,1,0,0,0,'f',0,'',NULL,NULL,'2008-09-15 11:59:05',0,0,0,NULL,NULL,0,0,0,0,0);
CREATE TABLE `ox_campaigns_trackers` (
  `campaign_trackerid` mediumint(9) NOT NULL auto_increment,
  `campaignid` mediumint(9) NOT NULL default '0',
  `trackerid` mediumint(9) NOT NULL default '0',
  `viewwindow` mediumint(9) NOT NULL default '0',
  `clickwindow` mediumint(9) NOT NULL default '0',
  `status` smallint(1) unsigned NOT NULL default '4',
  PRIMARY KEY  (`campaign_trackerid`),
  KEY `ox_campaigns_trackers_campaignid` (`campaignid`),
  KEY `ox_campaigns_trackers_trackerid` (`trackerid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
INSERT INTO `ox_campaigns_trackers` (`campaign_trackerid`,`campaignid`,`trackerid`,`viewwindow`,`clickwindow`,`status`) VALUES 
 (2,3,1,3,3,4);
CREATE TABLE `ox_category` (
  `category_id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE `ox_channel` (
  `channelid` mediumint(9) NOT NULL auto_increment,
  `agencyid` mediumint(9) NOT NULL default '0',
  `affiliateid` mediumint(9) NOT NULL default '0',
  `name` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `compiledlimitation` text NOT NULL,
  `acl_plugins` text,
  `active` smallint(1) default NULL,
  `comments` text,
  `updated` datetime NOT NULL,
  `acls_updated` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`channelid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
INSERT INTO `ox_channel` (`channelid`,`agencyid`,`affiliateid`,`name`,`description`,`compiledlimitation`,`acl_plugins`,`active`,`comments`,`updated`,`acls_updated`) VALUES 
 (1,1,1,'Test Admin Channel 2','','true','true',1,'','0000-00-00 00:00:00','0000-00-00 00:00:00');
CREATE TABLE `ox_clients` (
  `clientid` mediumint(9) NOT NULL auto_increment,
  `agencyid` mediumint(9) NOT NULL default '0',
  `clientname` varchar(255) NOT NULL default '',
  `contact` varchar(255) default NULL,
  `email` varchar(64) NOT NULL default '',
  `report` enum('t','f') NOT NULL default 't',
  `reportinterval` mediumint(9) NOT NULL default '7',
  `reportlastdate` date NOT NULL default '0000-00-00',
  `reportdeactivate` enum('t','f') NOT NULL default 't',
  `comments` text,
  `updated` datetime NOT NULL,
  `lb_reporting` tinyint(1) NOT NULL default '0',
  `an_adnetwork_id` int(11) default NULL,
  `as_advertiser_id` int(11) default NULL,
  `account_id` mediumint(9) default NULL,
  `advertiser_limitation` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`clientid`),
  UNIQUE KEY `ox_clients_account_id` (`account_id`),
  KEY `ox_clients_agencyid` (`agencyid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
INSERT INTO `ox_clients` (`clientid`,`agencyid`,`clientname`,`contact`,`email`,`report`,`reportinterval`,`reportlastdate`,`reportdeactivate`,`comments`,`updated`,`lb_reporting`,`an_adnetwork_id`,`as_advertiser_id`,`account_id`,`advertiser_limitation`) VALUES 
 (1,1,'Advertiser 1','advertiser','example@example.com','f',7,'2008-09-15','t','','2008-09-15 11:58:51',0,NULL,NULL,3,0);
CREATE TABLE `ox_data_intermediate_ad` (
  `data_intermediate_ad_id` bigint(20) NOT NULL auto_increment,
  `date_time` datetime NOT NULL,
  `operation_interval` int(10) unsigned NOT NULL,
  `operation_interval_id` int(10) unsigned NOT NULL,
  `interval_start` datetime NOT NULL,
  `interval_end` datetime NOT NULL,
  `ad_id` int(10) unsigned NOT NULL,
  `creative_id` int(10) unsigned NOT NULL,
  `zone_id` int(10) unsigned NOT NULL,
  `requests` int(10) unsigned NOT NULL default '0',
  `impressions` int(10) unsigned NOT NULL default '0',
  `clicks` int(10) unsigned NOT NULL default '0',
  `conversions` int(10) unsigned NOT NULL default '0',
  `total_basket_value` decimal(10,4) NOT NULL default '0.0000',
  `total_num_items` int(11) NOT NULL default '0',
  `updated` datetime NOT NULL,
  PRIMARY KEY  (`data_intermediate_ad_id`),
  KEY `ox_data_intermediate_ad_ad_id_date_time` (`ad_id`,`date_time`),
  KEY `ox_data_intermediate_ad_zone_id_date_time` (`zone_id`,`date_time`),
  KEY `ox_data_intermediate_ad_date_time` (`date_time`),
  KEY `ox_data_intermediate_ad_interval_start` (`interval_start`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE `ox_data_intermediate_ad_connection` (
  `data_intermediate_ad_connection_id` bigint(20) NOT NULL auto_increment,
  `server_raw_ip` varchar(16) NOT NULL default '',
  `server_raw_tracker_impression_id` bigint(20) NOT NULL,
  `viewer_id` varchar(32) default NULL,
  `viewer_session_id` varchar(32) default NULL,
  `tracker_date_time` datetime NOT NULL,
  `connection_date_time` datetime default NULL,
  `tracker_id` int(10) unsigned NOT NULL,
  `ad_id` int(10) unsigned NOT NULL,
  `creative_id` int(10) unsigned NOT NULL,
  `zone_id` int(10) unsigned NOT NULL,
  `tracker_channel` varchar(255) default NULL,
  `connection_channel` varchar(255) default NULL,
  `tracker_channel_ids` varchar(64) default NULL,
  `connection_channel_ids` varchar(64) default NULL,
  `tracker_language` varchar(13) default NULL,
  `connection_language` varchar(13) default NULL,
  `tracker_ip_address` varchar(16) default NULL,
  `connection_ip_address` varchar(16) default NULL,
  `tracker_host_name` varchar(255) default NULL,
  `connection_host_name` varchar(255) default NULL,
  `tracker_country` char(2) default NULL,
  `connection_country` char(2) default NULL,
  `tracker_https` int(10) unsigned default NULL,
  `connection_https` int(10) unsigned default NULL,
  `tracker_domain` varchar(255) default NULL,
  `connection_domain` varchar(255) default NULL,
  `tracker_page` varchar(255) default NULL,
  `connection_page` varchar(255) default NULL,
  `tracker_query` varchar(255) default NULL,
  `connection_query` varchar(255) default NULL,
  `tracker_referer` varchar(255) default NULL,
  `connection_referer` varchar(255) default NULL,
  `tracker_search_term` varchar(255) default NULL,
  `connection_search_term` varchar(255) default NULL,
  `tracker_user_agent` varchar(255) default NULL,
  `connection_user_agent` varchar(255) default NULL,
  `tracker_os` varchar(32) default NULL,
  `connection_os` varchar(32) default NULL,
  `tracker_browser` varchar(32) default NULL,
  `connection_browser` varchar(32) default NULL,
  `connection_action` int(10) unsigned default NULL,
  `connection_window` int(10) unsigned default NULL,
  `connection_status` int(10) unsigned NOT NULL default '4',
  `inside_window` tinyint(1) NOT NULL default '0',
  `comments` text,
  `updated` datetime NOT NULL,
  PRIMARY KEY  (`data_intermediate_ad_connection_id`),
  KEY `ox_data_intermediate_ad_connection_tracker_date_time` (`tracker_date_time`),
  KEY `ox_data_intermediate_ad_connection_tracker_id` (`tracker_id`),
  KEY `ox_data_intermediate_ad_connection_ad_id` (`ad_id`),
  KEY `ox_data_intermediate_ad_connection_zone_id` (`zone_id`),
  KEY `ox_data_intermediate_ad_connection_viewer_id` (`viewer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE `ox_data_intermediate_ad_variable_value` (
  `data_intermediate_ad_variable_value_id` bigint(20) NOT NULL auto_increment,
  `data_intermediate_ad_connection_id` bigint(20) NOT NULL,
  `tracker_variable_id` int(11) NOT NULL,
  `value` varchar(50) default NULL,
  PRIMARY KEY  (`data_intermediate_ad_variable_value_id`),
  KEY `ox_data_intermediate_ad_variable_value_data_intermediate_ad_con` (`data_intermediate_ad_connection_id`),
  KEY `ox_data_intermediate_ad_variable_value_tracker_variable_id` (`tracker_variable_id`),
  KEY `ox_data_intermediate_ad_variable_value_tracker_value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE `ox_data_raw_ad_click` (
  `viewer_id` varchar(32) default NULL,
  `viewer_session_id` varchar(32) default NULL,
  `date_time` datetime NOT NULL,
  `ad_id` int(10) unsigned NOT NULL,
  `creative_id` int(10) unsigned NOT NULL,
  `zone_id` int(10) unsigned NOT NULL,
  `channel` varchar(255) default NULL,
  `channel_ids` varchar(64) default NULL,
  `language` varchar(32) default NULL,
  `ip_address` varchar(16) default NULL,
  `host_name` varchar(255) default NULL,
  `country` char(2) default NULL,
  `https` tinyint(1) default NULL,
  `domain` varchar(255) default NULL,
  `page` varchar(255) default NULL,
  `query` varchar(255) default NULL,
  `referer` varchar(255) default NULL,
  `search_term` varchar(255) default NULL,
  `user_agent` varchar(255) default NULL,
  `os` varchar(32) default NULL,
  `browser` varchar(32) default NULL,
  `max_https` tinyint(1) default NULL,
  `geo_region` varchar(50) default NULL,
  `geo_city` varchar(50) default NULL,
  `geo_postal_code` varchar(10) default NULL,
  `geo_latitude` decimal(8,4) default NULL,
  `geo_longitude` decimal(8,4) default NULL,
  `geo_dma_code` varchar(50) default NULL,
  `geo_area_code` varchar(50) default NULL,
  `geo_organisation` varchar(50) default NULL,
  `geo_netspeed` varchar(20) default NULL,
  `geo_continent` varchar(13) default NULL,
  KEY `ox_data_raw_ad_click_viewer_id` (`viewer_id`),
  KEY `ox_data_raw_ad_click_date_time` (`date_time`),
  KEY `ox_data_raw_ad_click_ad_id` (`ad_id`),
  KEY `ox_data_raw_ad_click_zone_id` (`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE `ox_data_raw_ad_impression` (
  `viewer_id` varchar(32) default NULL,
  `viewer_session_id` varchar(32) default NULL,
  `date_time` datetime NOT NULL,
  `ad_id` int(10) unsigned NOT NULL,
  `creative_id` int(10) unsigned NOT NULL,
  `zone_id` int(10) unsigned NOT NULL,
  `channel` varchar(255) default NULL,
  `channel_ids` varchar(64) default NULL,
  `language` varchar(32) default NULL,
  `ip_address` varchar(16) default NULL,
  `host_name` varchar(255) default NULL,
  `country` char(2) default NULL,
  `https` tinyint(1) default NULL,
  `domain` varchar(255) default NULL,
  `page` varchar(255) default NULL,
  `query` varchar(255) default NULL,
  `referer` varchar(255) default NULL,
  `search_term` varchar(255) default NULL,
  `user_agent` varchar(255) default NULL,
  `os` varchar(32) default NULL,
  `browser` varchar(32) default NULL,
  `max_https` tinyint(1) default NULL,
  `geo_region` varchar(50) default NULL,
  `geo_city` varchar(50) default NULL,
  `geo_postal_code` varchar(10) default NULL,
  `geo_latitude` decimal(8,4) default NULL,
  `geo_longitude` decimal(8,4) default NULL,
  `geo_dma_code` varchar(50) default NULL,
  `geo_area_code` varchar(50) default NULL,
  `geo_organisation` varchar(50) default NULL,
  `geo_netspeed` varchar(20) default NULL,
  `geo_continent` varchar(13) default NULL,
  KEY `ox_data_raw_ad_impression_viewer_id` (`viewer_id`),
  KEY `ox_data_raw_ad_impression_date_time` (`date_time`),
  KEY `ox_data_raw_ad_impression_ad_id` (`ad_id`),
  KEY `ox_data_raw_ad_impression_zone_id` (`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ox_data_raw_ad_impression` (`viewer_id`,`viewer_session_id`,`date_time`,`ad_id`,`creative_id`,`zone_id`,`channel`,`channel_ids`,`language`,`ip_address`,`host_name`,`country`,`https`,`domain`,`page`,`query`,`referer`,`search_term`,`user_agent`,`os`,`browser`,`max_https`,`geo_region`,`geo_city`,`geo_postal_code`,`geo_latitude`,`geo_longitude`,`geo_dma_code`,`geo_area_code`,`geo_organisation`,`geo_netspeed`,`geo_continent`) VALUES 
 ('__0284ea3062c81111966398aa6fe17a','','2008-09-15 12:02:16',1,0,1,NULL,NULL,'','85.221.229.114','85.221.229.114','',NULL,NULL,NULL,NULL,NULL,'',NULL,'','',0,'','','','0.0000','0.0000','','','','','');
CREATE TABLE `ox_data_raw_ad_request` (
  `viewer_id` varchar(32) default NULL,
  `viewer_session_id` varchar(32) default NULL,
  `date_time` datetime NOT NULL,
  `ad_id` int(10) unsigned NOT NULL,
  `creative_id` int(10) unsigned NOT NULL,
  `zone_id` int(10) unsigned NOT NULL,
  `channel` varchar(255) default NULL,
  `channel_ids` varchar(64) default NULL,
  `language` varchar(32) default NULL,
  `ip_address` varchar(16) default NULL,
  `host_name` varchar(255) default NULL,
  `https` tinyint(1) default NULL,
  `domain` varchar(255) default NULL,
  `page` varchar(255) default NULL,
  `query` varchar(255) default NULL,
  `referer` varchar(255) default NULL,
  `search_term` varchar(255) default NULL,
  `user_agent` varchar(255) default NULL,
  `os` varchar(32) default NULL,
  `browser` varchar(32) default NULL,
  `max_https` tinyint(1) default NULL,
  KEY `ox_data_raw_ad_request_viewer_id` (`viewer_id`),
  KEY `ox_data_raw_ad_request_date_time` (`date_time`),
  KEY `ox_data_raw_ad_request_ad_id` (`ad_id`),
  KEY `ox_data_raw_ad_request_zone_id` (`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE `ox_data_raw_tracker_impression` (
  `server_raw_tracker_impression_id` bigint(20) NOT NULL auto_increment,
  `server_raw_ip` varchar(16) NOT NULL default '',
  `viewer_id` varchar(32) NOT NULL default '',
  `viewer_session_id` varchar(32) default NULL,
  `date_time` datetime NOT NULL,
  `tracker_id` int(10) unsigned NOT NULL,
  `channel` varchar(255) default NULL,
  `channel_ids` varchar(64) default NULL,
  `language` varchar(32) default NULL,
  `ip_address` varchar(16) default NULL,
  `host_name` varchar(255) default NULL,
  `country` char(2) default NULL,
  `https` int(10) unsigned default NULL,
  `domain` varchar(255) default NULL,
  `page` varchar(255) default NULL,
  `query` varchar(255) default NULL,
  `referer` varchar(255) default NULL,
  `search_term` varchar(255) default NULL,
  `user_agent` varchar(255) default NULL,
  `os` varchar(32) default NULL,
  `browser` varchar(32) default NULL,
  `max_https` int(10) unsigned default NULL,
  `geo_region` varchar(50) default NULL,
  `geo_city` varchar(50) default NULL,
  `geo_postal_code` varchar(10) default NULL,
  `geo_latitude` decimal(8,4) default NULL,
  `geo_longitude` decimal(8,4) default NULL,
  `geo_dma_code` varchar(50) default NULL,
  `geo_area_code` varchar(50) default NULL,
  `geo_organisation` varchar(50) default NULL,
  `geo_netspeed` varchar(20) default NULL,
  `geo_continent` varchar(13) default NULL,
  PRIMARY KEY  (`server_raw_tracker_impression_id`,`server_raw_ip`),
  KEY `ox_data_raw_tracker_impression_viewer_id` (`viewer_id`),
  KEY `ox_data_raw_tracker_impression_date_time` (`date_time`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
INSERT INTO `ox_data_raw_tracker_impression` (`server_raw_tracker_impression_id`,`server_raw_ip`,`viewer_id`,`viewer_session_id`,`date_time`,`tracker_id`,`channel`,`channel_ids`,`language`,`ip_address`,`host_name`,`country`,`https`,`domain`,`page`,`query`,`referer`,`search_term`,`user_agent`,`os`,`browser`,`max_https`,`geo_region`,`geo_city`,`geo_postal_code`,`geo_latitude`,`geo_longitude`,`geo_dma_code`,`geo_area_code`,`geo_organisation`,`geo_netspeed`,`geo_continent`) VALUES 
 (7,'singleDB','__0284ea3062c81111966398aa6fe17a','','2008-09-15 12:02:18',1,'','','','85.221.229.114','85.221.229.114','',0,'','','','','','Mozilla/5.0 (Windows; U; Windows NT 5.1; pl; rv:1.8.1.12) Gecko/20080201 Firefox/2.0.0.12','','',0,'','','','0.0000','0.0000','','','','',''),
 (8,'singleDB','__0284ea3062c81111966398aa6fe17a','','2008-09-15 12:02:18',1,'','','','85.221.229.114','85.221.229.114','',0,'','','','','','Mozilla/5.0 (Windows; U; Windows NT 5.1; pl; rv:1.8.1.12) Gecko/20080201 Firefox/2.0.0.12','','',0,'','','','0.0000','0.0000','','','','','');
CREATE TABLE `ox_data_raw_tracker_variable_value` (
  `server_raw_tracker_impression_id` bigint(20) NOT NULL,
  `server_raw_ip` varchar(16) NOT NULL default '',
  `tracker_variable_id` int(11) NOT NULL,
  `date_time` datetime default NULL,
  `value` varchar(50) default NULL,
  PRIMARY KEY  (`server_raw_tracker_impression_id`,`server_raw_ip`,`tracker_variable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ox_data_raw_tracker_variable_value` (`server_raw_tracker_impression_id`,`server_raw_ip`,`tracker_variable_id`,`date_time`,`value`) VALUES 
 (7,'singleDB',1,'2008-09-15 12:02:18','123'),
 (7,'singleDB',2,'2008-09-15 12:02:18','test_string');
CREATE TABLE `ox_data_summary_ad_hourly` (
  `data_summary_ad_hourly_id` bigint(20) NOT NULL auto_increment,
  `date_time` datetime NOT NULL,
  `ad_id` int(10) unsigned NOT NULL,
  `creative_id` int(10) unsigned NOT NULL,
  `zone_id` int(10) unsigned NOT NULL,
  `requests` int(10) unsigned NOT NULL default '0',
  `impressions` int(10) unsigned NOT NULL default '0',
  `clicks` int(10) unsigned NOT NULL default '0',
  `conversions` int(10) unsigned NOT NULL default '0',
  `total_basket_value` decimal(10,4) default NULL,
  `total_num_items` int(11) default NULL,
  `total_revenue` decimal(10,4) default NULL,
  `total_cost` decimal(10,4) default NULL,
  `total_techcost` decimal(10,4) default NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY  (`data_summary_ad_hourly_id`),
  KEY `ox_data_summary_ad_hourly_date_time` (`date_time`),
  KEY `ox_data_summary_ad_hourly_ad_id_date_time` (`ad_id`,`date_time`),
  KEY `ox_data_summary_ad_hourly_zone_id_date_time` (`zone_id`,`date_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE `ox_data_summary_ad_zone_assoc` (
  `data_summary_ad_zone_assoc_id` bigint(20) NOT NULL auto_increment,
  `operation_interval` int(10) unsigned NOT NULL,
  `operation_interval_id` int(10) unsigned NOT NULL,
  `interval_start` datetime NOT NULL,
  `interval_end` datetime NOT NULL,
  `ad_id` int(10) unsigned NOT NULL,
  `zone_id` int(10) unsigned NOT NULL,
  `required_impressions` int(10) unsigned NOT NULL,
  `requested_impressions` int(10) unsigned NOT NULL,
  `priority` double NOT NULL,
  `priority_factor` double default NULL,
  `priority_factor_limited` smallint(6) NOT NULL default '0',
  `past_zone_traffic_fraction` double default NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `expired` datetime default NULL,
  `expired_by` int(10) unsigned default NULL,
  `to_be_delivered` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`data_summary_ad_zone_assoc_id`),
  KEY `ox_data_summary_ad_zone_assoc_interval_start` (`interval_start`),
  KEY `ox_data_summary_ad_zone_assoc_interval_end` (`interval_end`),
  KEY `ox_data_summary_ad_zone_assoc_ad_id` (`ad_id`),
  KEY `ox_data_summary_ad_zone_assoc_zone_id` (`zone_id`),
  KEY `ox_data_summary_ad_zone_assoc_expired` (`expired`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE `ox_data_summary_channel_daily` (
  `data_summary_channel_daily_id` bigint(20) NOT NULL auto_increment,
  `day` date NOT NULL,
  `channel_id` int(10) unsigned NOT NULL,
  `zone_id` int(10) unsigned NOT NULL,
  `forecast_impressions` int(10) unsigned NOT NULL default '0',
  `actual_impressions` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`data_summary_channel_daily_id`),
  KEY `ox_data_summary_channel_daily_day` (`day`),
  KEY `ox_data_summary_channel_daily_channel_id` (`channel_id`),
  KEY `ox_data_summary_channel_daily_zone_id` (`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE `ox_data_summary_zone_impression_history` (
  `data_summary_zone_impression_history_id` bigint(20) NOT NULL auto_increment,
  `operation_interval` int(10) unsigned NOT NULL,
  `operation_interval_id` int(10) unsigned NOT NULL,
  `interval_start` datetime NOT NULL,
  `interval_end` datetime NOT NULL,
  `zone_id` int(10) unsigned NOT NULL,
  `forecast_impressions` int(10) unsigned default NULL,
  `actual_impressions` int(10) unsigned default NULL,
  `est` smallint(6) default NULL,
  PRIMARY KEY  (`data_summary_zone_impression_history_id`),
  KEY `ox_data_summary_zone_impression_history_operation_interval_id` (`operation_interval_id`),
  KEY `ox_data_summary_zone_impression_history_zone_id` (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=505 DEFAULT CHARSET=utf8;
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (1,60,37,'2008-09-08 13:00:00','2008-09-08 13:59:59',0,1000,NULL,1),
 (2,60,38,'2008-09-08 14:00:00','2008-09-08 14:59:59',0,1000,NULL,1),
 (3,60,39,'2008-09-08 15:00:00','2008-09-08 15:59:59',0,1000,NULL,1),
 (4,60,40,'2008-09-08 16:00:00','2008-09-08 16:59:59',0,1000,NULL,1),
 (5,60,41,'2008-09-08 17:00:00','2008-09-08 17:59:59',0,1000,NULL,1),
 (6,60,42,'2008-09-08 18:00:00','2008-09-08 18:59:59',0,1000,NULL,1),
 (7,60,43,'2008-09-08 19:00:00','2008-09-08 19:59:59',0,1000,NULL,1),
 (8,60,44,'2008-09-08 20:00:00','2008-09-08 20:59:59',0,1000,NULL,1),
 (9,60,45,'2008-09-08 21:00:00','2008-09-08 21:59:59',0,1000,NULL,1),
 (10,60,46,'2008-09-08 22:00:00','2008-09-08 22:59:59',0,1000,NULL,1),
 (11,60,47,'2008-09-08 23:00:00','2008-09-08 23:59:59',0,1000,NULL,1),
 (12,60,48,'2008-09-09 00:00:00','2008-09-09 00:59:59',0,1000,NULL,1);
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (13,60,49,'2008-09-09 01:00:00','2008-09-09 01:59:59',0,1000,NULL,1),
 (14,60,50,'2008-09-09 02:00:00','2008-09-09 02:59:59',0,1000,NULL,1),
 (15,60,51,'2008-09-09 03:00:00','2008-09-09 03:59:59',0,1000,NULL,1),
 (16,60,52,'2008-09-09 04:00:00','2008-09-09 04:59:59',0,1000,NULL,1),
 (17,60,53,'2008-09-09 05:00:00','2008-09-09 05:59:59',0,1000,NULL,1),
 (18,60,54,'2008-09-09 06:00:00','2008-09-09 06:59:59',0,1000,NULL,1),
 (19,60,55,'2008-09-09 07:00:00','2008-09-09 07:59:59',0,1000,NULL,1),
 (20,60,56,'2008-09-09 08:00:00','2008-09-09 08:59:59',0,1000,NULL,1),
 (21,60,57,'2008-09-09 09:00:00','2008-09-09 09:59:59',0,1000,NULL,1),
 (22,60,58,'2008-09-09 10:00:00','2008-09-09 10:59:59',0,1000,NULL,1),
 (23,60,59,'2008-09-09 11:00:00','2008-09-09 11:59:59',0,1000,NULL,1),
 (24,60,60,'2008-09-09 12:00:00','2008-09-09 12:59:59',0,1000,NULL,1);
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (25,60,61,'2008-09-09 13:00:00','2008-09-09 13:59:59',0,1000,NULL,1),
 (26,60,62,'2008-09-09 14:00:00','2008-09-09 14:59:59',0,1000,NULL,1),
 (27,60,63,'2008-09-09 15:00:00','2008-09-09 15:59:59',0,1000,NULL,1),
 (28,60,64,'2008-09-09 16:00:00','2008-09-09 16:59:59',0,1000,NULL,1),
 (29,60,65,'2008-09-09 17:00:00','2008-09-09 17:59:59',0,1000,NULL,1),
 (30,60,66,'2008-09-09 18:00:00','2008-09-09 18:59:59',0,1000,NULL,1),
 (31,60,67,'2008-09-09 19:00:00','2008-09-09 19:59:59',0,1000,NULL,1),
 (32,60,68,'2008-09-09 20:00:00','2008-09-09 20:59:59',0,1000,NULL,1),
 (33,60,69,'2008-09-09 21:00:00','2008-09-09 21:59:59',0,1000,NULL,1),
 (34,60,70,'2008-09-09 22:00:00','2008-09-09 22:59:59',0,1000,NULL,1),
 (35,60,71,'2008-09-09 23:00:00','2008-09-09 23:59:59',0,1000,NULL,1),
 (36,60,72,'2008-09-10 00:00:00','2008-09-10 00:59:59',0,1000,NULL,1);
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (37,60,73,'2008-09-10 01:00:00','2008-09-10 01:59:59',0,1000,NULL,1),
 (38,60,74,'2008-09-10 02:00:00','2008-09-10 02:59:59',0,1000,NULL,1),
 (39,60,75,'2008-09-10 03:00:00','2008-09-10 03:59:59',0,1000,NULL,1),
 (40,60,76,'2008-09-10 04:00:00','2008-09-10 04:59:59',0,1000,NULL,1),
 (41,60,77,'2008-09-10 05:00:00','2008-09-10 05:59:59',0,1000,NULL,1),
 (42,60,78,'2008-09-10 06:00:00','2008-09-10 06:59:59',0,1000,NULL,1),
 (43,60,79,'2008-09-10 07:00:00','2008-09-10 07:59:59',0,1000,NULL,1),
 (44,60,80,'2008-09-10 08:00:00','2008-09-10 08:59:59',0,1000,NULL,1),
 (45,60,81,'2008-09-10 09:00:00','2008-09-10 09:59:59',0,1000,NULL,1),
 (46,60,82,'2008-09-10 10:00:00','2008-09-10 10:59:59',0,1000,NULL,1),
 (47,60,83,'2008-09-10 11:00:00','2008-09-10 11:59:59',0,1000,NULL,1),
 (48,60,84,'2008-09-10 12:00:00','2008-09-10 12:59:59',0,1000,NULL,1);
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (49,60,85,'2008-09-10 13:00:00','2008-09-10 13:59:59',0,1000,NULL,1),
 (50,60,86,'2008-09-10 14:00:00','2008-09-10 14:59:59',0,1000,NULL,1),
 (51,60,87,'2008-09-10 15:00:00','2008-09-10 15:59:59',0,1000,NULL,1),
 (52,60,88,'2008-09-10 16:00:00','2008-09-10 16:59:59',0,1000,NULL,1),
 (53,60,89,'2008-09-10 17:00:00','2008-09-10 17:59:59',0,1000,NULL,1),
 (54,60,90,'2008-09-10 18:00:00','2008-09-10 18:59:59',0,1000,NULL,1),
 (55,60,91,'2008-09-10 19:00:00','2008-09-10 19:59:59',0,1000,NULL,1),
 (56,60,92,'2008-09-10 20:00:00','2008-09-10 20:59:59',0,1000,NULL,1),
 (57,60,93,'2008-09-10 21:00:00','2008-09-10 21:59:59',0,1000,NULL,1),
 (58,60,94,'2008-09-10 22:00:00','2008-09-10 22:59:59',0,1000,NULL,1),
 (59,60,95,'2008-09-10 23:00:00','2008-09-10 23:59:59',0,1000,NULL,1),
 (60,60,96,'2008-09-11 00:00:00','2008-09-11 00:59:59',0,1000,NULL,1);
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (61,60,97,'2008-09-11 01:00:00','2008-09-11 01:59:59',0,1000,NULL,1),
 (62,60,98,'2008-09-11 02:00:00','2008-09-11 02:59:59',0,1000,NULL,1),
 (63,60,99,'2008-09-11 03:00:00','2008-09-11 03:59:59',0,1000,NULL,1),
 (64,60,100,'2008-09-11 04:00:00','2008-09-11 04:59:59',0,1000,NULL,1),
 (65,60,101,'2008-09-11 05:00:00','2008-09-11 05:59:59',0,1000,NULL,1),
 (66,60,102,'2008-09-11 06:00:00','2008-09-11 06:59:59',0,1000,NULL,1),
 (67,60,103,'2008-09-11 07:00:00','2008-09-11 07:59:59',0,1000,NULL,1),
 (68,60,104,'2008-09-11 08:00:00','2008-09-11 08:59:59',0,1000,NULL,1),
 (69,60,105,'2008-09-11 09:00:00','2008-09-11 09:59:59',0,1000,NULL,1),
 (70,60,106,'2008-09-11 10:00:00','2008-09-11 10:59:59',0,1000,NULL,1),
 (71,60,107,'2008-09-11 11:00:00','2008-09-11 11:59:59',0,1000,NULL,1),
 (72,60,108,'2008-09-11 12:00:00','2008-09-11 12:59:59',0,1000,NULL,1);
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (73,60,109,'2008-09-11 13:00:00','2008-09-11 13:59:59',0,1000,NULL,1),
 (74,60,110,'2008-09-11 14:00:00','2008-09-11 14:59:59',0,1000,NULL,1),
 (75,60,111,'2008-09-11 15:00:00','2008-09-11 15:59:59',0,1000,NULL,1),
 (76,60,112,'2008-09-11 16:00:00','2008-09-11 16:59:59',0,1000,NULL,1),
 (77,60,113,'2008-09-11 17:00:00','2008-09-11 17:59:59',0,1000,NULL,1),
 (78,60,114,'2008-09-11 18:00:00','2008-09-11 18:59:59',0,1000,NULL,1),
 (79,60,115,'2008-09-11 19:00:00','2008-09-11 19:59:59',0,1000,NULL,1),
 (80,60,116,'2008-09-11 20:00:00','2008-09-11 20:59:59',0,1000,NULL,1),
 (81,60,117,'2008-09-11 21:00:00','2008-09-11 21:59:59',0,1000,NULL,1),
 (82,60,118,'2008-09-11 22:00:00','2008-09-11 22:59:59',0,1000,NULL,1),
 (83,60,119,'2008-09-11 23:00:00','2008-09-11 23:59:59',0,1000,NULL,1),
 (84,60,120,'2008-09-12 00:00:00','2008-09-12 00:59:59',0,1000,NULL,1);
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (85,60,121,'2008-09-12 01:00:00','2008-09-12 01:59:59',0,1000,NULL,1),
 (86,60,122,'2008-09-12 02:00:00','2008-09-12 02:59:59',0,1000,NULL,1),
 (87,60,123,'2008-09-12 03:00:00','2008-09-12 03:59:59',0,1000,NULL,1),
 (88,60,124,'2008-09-12 04:00:00','2008-09-12 04:59:59',0,1000,NULL,1),
 (89,60,125,'2008-09-12 05:00:00','2008-09-12 05:59:59',0,1000,NULL,1),
 (90,60,126,'2008-09-12 06:00:00','2008-09-12 06:59:59',0,1000,NULL,1),
 (91,60,127,'2008-09-12 07:00:00','2008-09-12 07:59:59',0,1000,NULL,1),
 (92,60,128,'2008-09-12 08:00:00','2008-09-12 08:59:59',0,1000,NULL,1),
 (93,60,129,'2008-09-12 09:00:00','2008-09-12 09:59:59',0,1000,NULL,1),
 (94,60,130,'2008-09-12 10:00:00','2008-09-12 10:59:59',0,1000,NULL,1),
 (95,60,131,'2008-09-12 11:00:00','2008-09-12 11:59:59',0,1000,NULL,1),
 (96,60,132,'2008-09-12 12:00:00','2008-09-12 12:59:59',0,1000,NULL,1);
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (97,60,133,'2008-09-12 13:00:00','2008-09-12 13:59:59',0,1000,NULL,1),
 (98,60,134,'2008-09-12 14:00:00','2008-09-12 14:59:59',0,1000,NULL,1),
 (99,60,135,'2008-09-12 15:00:00','2008-09-12 15:59:59',0,1000,NULL,1),
 (100,60,136,'2008-09-12 16:00:00','2008-09-12 16:59:59',0,1000,NULL,1),
 (101,60,137,'2008-09-12 17:00:00','2008-09-12 17:59:59',0,1000,NULL,1),
 (102,60,138,'2008-09-12 18:00:00','2008-09-12 18:59:59',0,1000,NULL,1),
 (103,60,139,'2008-09-12 19:00:00','2008-09-12 19:59:59',0,1000,NULL,1),
 (104,60,140,'2008-09-12 20:00:00','2008-09-12 20:59:59',0,1000,NULL,1),
 (105,60,141,'2008-09-12 21:00:00','2008-09-12 21:59:59',0,1000,NULL,1),
 (106,60,142,'2008-09-12 22:00:00','2008-09-12 22:59:59',0,1000,NULL,1),
 (107,60,143,'2008-09-12 23:00:00','2008-09-12 23:59:59',0,1000,NULL,1),
 (108,60,144,'2008-09-13 00:00:00','2008-09-13 00:59:59',0,1000,NULL,1);
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (109,60,145,'2008-09-13 01:00:00','2008-09-13 01:59:59',0,1000,NULL,1),
 (110,60,146,'2008-09-13 02:00:00','2008-09-13 02:59:59',0,1000,NULL,1),
 (111,60,147,'2008-09-13 03:00:00','2008-09-13 03:59:59',0,1000,NULL,1),
 (112,60,148,'2008-09-13 04:00:00','2008-09-13 04:59:59',0,1000,NULL,1),
 (113,60,149,'2008-09-13 05:00:00','2008-09-13 05:59:59',0,1000,NULL,1),
 (114,60,150,'2008-09-13 06:00:00','2008-09-13 06:59:59',0,1000,NULL,1),
 (115,60,151,'2008-09-13 07:00:00','2008-09-13 07:59:59',0,1000,NULL,1),
 (116,60,152,'2008-09-13 08:00:00','2008-09-13 08:59:59',0,1000,NULL,1),
 (117,60,153,'2008-09-13 09:00:00','2008-09-13 09:59:59',0,1000,NULL,1),
 (118,60,154,'2008-09-13 10:00:00','2008-09-13 10:59:59',0,1000,NULL,1),
 (119,60,155,'2008-09-13 11:00:00','2008-09-13 11:59:59',0,1000,NULL,1),
 (120,60,156,'2008-09-13 12:00:00','2008-09-13 12:59:59',0,1000,NULL,1);
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (121,60,157,'2008-09-13 13:00:00','2008-09-13 13:59:59',0,1000,NULL,1),
 (122,60,158,'2008-09-13 14:00:00','2008-09-13 14:59:59',0,1000,NULL,1),
 (123,60,159,'2008-09-13 15:00:00','2008-09-13 15:59:59',0,1000,NULL,1),
 (124,60,160,'2008-09-13 16:00:00','2008-09-13 16:59:59',0,1000,NULL,1),
 (125,60,161,'2008-09-13 17:00:00','2008-09-13 17:59:59',0,1000,NULL,1),
 (126,60,162,'2008-09-13 18:00:00','2008-09-13 18:59:59',0,1000,NULL,1),
 (127,60,163,'2008-09-13 19:00:00','2008-09-13 19:59:59',0,1000,NULL,1),
 (128,60,164,'2008-09-13 20:00:00','2008-09-13 20:59:59',0,1000,NULL,1),
 (129,60,165,'2008-09-13 21:00:00','2008-09-13 21:59:59',0,1000,NULL,1),
 (130,60,166,'2008-09-13 22:00:00','2008-09-13 22:59:59',0,1000,NULL,1),
 (131,60,167,'2008-09-13 23:00:00','2008-09-13 23:59:59',0,1000,NULL,1),
 (132,60,0,'2008-09-14 00:00:00','2008-09-14 00:59:59',0,1000,NULL,1);
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (133,60,1,'2008-09-14 01:00:00','2008-09-14 01:59:59',0,1000,NULL,1),
 (134,60,2,'2008-09-14 02:00:00','2008-09-14 02:59:59',0,1000,NULL,1),
 (135,60,3,'2008-09-14 03:00:00','2008-09-14 03:59:59',0,1000,NULL,1),
 (136,60,4,'2008-09-14 04:00:00','2008-09-14 04:59:59',0,1000,NULL,1),
 (137,60,5,'2008-09-14 05:00:00','2008-09-14 05:59:59',0,1000,NULL,1),
 (138,60,6,'2008-09-14 06:00:00','2008-09-14 06:59:59',0,1000,NULL,1),
 (139,60,7,'2008-09-14 07:00:00','2008-09-14 07:59:59',0,1000,NULL,1),
 (140,60,8,'2008-09-14 08:00:00','2008-09-14 08:59:59',0,1000,NULL,1),
 (141,60,9,'2008-09-14 09:00:00','2008-09-14 09:59:59',0,1000,NULL,1),
 (142,60,10,'2008-09-14 10:00:00','2008-09-14 10:59:59',0,1000,NULL,1),
 (143,60,11,'2008-09-14 11:00:00','2008-09-14 11:59:59',0,1000,NULL,1),
 (144,60,12,'2008-09-14 12:00:00','2008-09-14 12:59:59',0,1000,NULL,1);
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (145,60,13,'2008-09-14 13:00:00','2008-09-14 13:59:59',0,1000,NULL,1),
 (146,60,14,'2008-09-14 14:00:00','2008-09-14 14:59:59',0,1000,NULL,1),
 (147,60,15,'2008-09-14 15:00:00','2008-09-14 15:59:59',0,1000,NULL,1),
 (148,60,16,'2008-09-14 16:00:00','2008-09-14 16:59:59',0,1000,NULL,1),
 (149,60,17,'2008-09-14 17:00:00','2008-09-14 17:59:59',0,1000,NULL,1),
 (150,60,18,'2008-09-14 18:00:00','2008-09-14 18:59:59',0,1000,NULL,1),
 (151,60,19,'2008-09-14 19:00:00','2008-09-14 19:59:59',0,1000,NULL,1),
 (152,60,20,'2008-09-14 20:00:00','2008-09-14 20:59:59',0,1000,NULL,1),
 (153,60,21,'2008-09-14 21:00:00','2008-09-14 21:59:59',0,1000,NULL,1),
 (154,60,22,'2008-09-14 22:00:00','2008-09-14 22:59:59',0,1000,NULL,1),
 (155,60,23,'2008-09-14 23:00:00','2008-09-14 23:59:59',0,1000,NULL,1),
 (156,60,24,'2008-09-15 00:00:00','2008-09-15 00:59:59',0,1000,NULL,1);
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (157,60,25,'2008-09-15 01:00:00','2008-09-15 01:59:59',0,1000,NULL,1),
 (158,60,26,'2008-09-15 02:00:00','2008-09-15 02:59:59',0,1000,NULL,1),
 (159,60,27,'2008-09-15 03:00:00','2008-09-15 03:59:59',0,1000,NULL,1),
 (160,60,28,'2008-09-15 04:00:00','2008-09-15 04:59:59',0,1000,NULL,1),
 (161,60,29,'2008-09-15 05:00:00','2008-09-15 05:59:59',0,1000,NULL,1),
 (162,60,30,'2008-09-15 06:00:00','2008-09-15 06:59:59',0,1000,NULL,1),
 (163,60,31,'2008-09-15 07:00:00','2008-09-15 07:59:59',0,1000,NULL,1),
 (164,60,32,'2008-09-15 08:00:00','2008-09-15 08:59:59',0,1000,NULL,1),
 (165,60,33,'2008-09-15 09:00:00','2008-09-15 09:59:59',0,1000,NULL,1),
 (166,60,34,'2008-09-15 10:00:00','2008-09-15 10:59:59',0,1000,NULL,1),
 (167,60,35,'2008-09-15 11:00:00','2008-09-15 11:59:59',0,1000,NULL,1),
 (168,60,36,'2008-09-15 12:00:00','2008-09-15 12:59:59',0,1000,NULL,1);
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (169,60,37,'2008-09-08 13:00:00','2008-09-08 13:59:59',1,1000,NULL,1),
 (170,60,38,'2008-09-08 14:00:00','2008-09-08 14:59:59',1,1000,NULL,1),
 (171,60,39,'2008-09-08 15:00:00','2008-09-08 15:59:59',1,1000,NULL,1),
 (172,60,40,'2008-09-08 16:00:00','2008-09-08 16:59:59',1,1000,NULL,1),
 (173,60,41,'2008-09-08 17:00:00','2008-09-08 17:59:59',1,1000,NULL,1),
 (174,60,42,'2008-09-08 18:00:00','2008-09-08 18:59:59',1,1000,NULL,1),
 (175,60,43,'2008-09-08 19:00:00','2008-09-08 19:59:59',1,1000,NULL,1),
 (176,60,44,'2008-09-08 20:00:00','2008-09-08 20:59:59',1,1000,NULL,1),
 (177,60,45,'2008-09-08 21:00:00','2008-09-08 21:59:59',1,1000,NULL,1),
 (178,60,46,'2008-09-08 22:00:00','2008-09-08 22:59:59',1,1000,NULL,1),
 (179,60,47,'2008-09-08 23:00:00','2008-09-08 23:59:59',1,1000,NULL,1),
 (180,60,48,'2008-09-09 00:00:00','2008-09-09 00:59:59',1,1000,NULL,1);
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (181,60,49,'2008-09-09 01:00:00','2008-09-09 01:59:59',1,1000,NULL,1),
 (182,60,50,'2008-09-09 02:00:00','2008-09-09 02:59:59',1,1000,NULL,1),
 (183,60,51,'2008-09-09 03:00:00','2008-09-09 03:59:59',1,1000,NULL,1),
 (184,60,52,'2008-09-09 04:00:00','2008-09-09 04:59:59',1,1000,NULL,1),
 (185,60,53,'2008-09-09 05:00:00','2008-09-09 05:59:59',1,1000,NULL,1),
 (186,60,54,'2008-09-09 06:00:00','2008-09-09 06:59:59',1,1000,NULL,1),
 (187,60,55,'2008-09-09 07:00:00','2008-09-09 07:59:59',1,1000,NULL,1),
 (188,60,56,'2008-09-09 08:00:00','2008-09-09 08:59:59',1,1000,NULL,1),
 (189,60,57,'2008-09-09 09:00:00','2008-09-09 09:59:59',1,1000,NULL,1),
 (190,60,58,'2008-09-09 10:00:00','2008-09-09 10:59:59',1,1000,NULL,1),
 (191,60,59,'2008-09-09 11:00:00','2008-09-09 11:59:59',1,1000,NULL,1),
 (192,60,60,'2008-09-09 12:00:00','2008-09-09 12:59:59',1,1000,NULL,1);
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (193,60,61,'2008-09-09 13:00:00','2008-09-09 13:59:59',1,1000,NULL,1),
 (194,60,62,'2008-09-09 14:00:00','2008-09-09 14:59:59',1,1000,NULL,1),
 (195,60,63,'2008-09-09 15:00:00','2008-09-09 15:59:59',1,1000,NULL,1),
 (196,60,64,'2008-09-09 16:00:00','2008-09-09 16:59:59',1,1000,NULL,1),
 (197,60,65,'2008-09-09 17:00:00','2008-09-09 17:59:59',1,1000,NULL,1),
 (198,60,66,'2008-09-09 18:00:00','2008-09-09 18:59:59',1,1000,NULL,1),
 (199,60,67,'2008-09-09 19:00:00','2008-09-09 19:59:59',1,1000,NULL,1),
 (200,60,68,'2008-09-09 20:00:00','2008-09-09 20:59:59',1,1000,NULL,1),
 (201,60,69,'2008-09-09 21:00:00','2008-09-09 21:59:59',1,1000,NULL,1),
 (202,60,70,'2008-09-09 22:00:00','2008-09-09 22:59:59',1,1000,NULL,1),
 (203,60,71,'2008-09-09 23:00:00','2008-09-09 23:59:59',1,1000,NULL,1),
 (204,60,72,'2008-09-10 00:00:00','2008-09-10 00:59:59',1,1000,NULL,1);
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (205,60,73,'2008-09-10 01:00:00','2008-09-10 01:59:59',1,1000,NULL,1),
 (206,60,74,'2008-09-10 02:00:00','2008-09-10 02:59:59',1,1000,NULL,1),
 (207,60,75,'2008-09-10 03:00:00','2008-09-10 03:59:59',1,1000,NULL,1),
 (208,60,76,'2008-09-10 04:00:00','2008-09-10 04:59:59',1,1000,NULL,1),
 (209,60,77,'2008-09-10 05:00:00','2008-09-10 05:59:59',1,1000,NULL,1),
 (210,60,78,'2008-09-10 06:00:00','2008-09-10 06:59:59',1,1000,NULL,1),
 (211,60,79,'2008-09-10 07:00:00','2008-09-10 07:59:59',1,1000,NULL,1),
 (212,60,80,'2008-09-10 08:00:00','2008-09-10 08:59:59',1,1000,NULL,1),
 (213,60,81,'2008-09-10 09:00:00','2008-09-10 09:59:59',1,1000,NULL,1),
 (214,60,82,'2008-09-10 10:00:00','2008-09-10 10:59:59',1,1000,NULL,1),
 (215,60,83,'2008-09-10 11:00:00','2008-09-10 11:59:59',1,1000,NULL,1),
 (216,60,84,'2008-09-10 12:00:00','2008-09-10 12:59:59',1,1000,NULL,1);
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (217,60,85,'2008-09-10 13:00:00','2008-09-10 13:59:59',1,1000,NULL,1),
 (218,60,86,'2008-09-10 14:00:00','2008-09-10 14:59:59',1,1000,NULL,1),
 (219,60,87,'2008-09-10 15:00:00','2008-09-10 15:59:59',1,1000,NULL,1),
 (220,60,88,'2008-09-10 16:00:00','2008-09-10 16:59:59',1,1000,NULL,1),
 (221,60,89,'2008-09-10 17:00:00','2008-09-10 17:59:59',1,1000,NULL,1),
 (222,60,90,'2008-09-10 18:00:00','2008-09-10 18:59:59',1,1000,NULL,1),
 (223,60,91,'2008-09-10 19:00:00','2008-09-10 19:59:59',1,1000,NULL,1),
 (224,60,92,'2008-09-10 20:00:00','2008-09-10 20:59:59',1,1000,NULL,1),
 (225,60,93,'2008-09-10 21:00:00','2008-09-10 21:59:59',1,1000,NULL,1),
 (226,60,94,'2008-09-10 22:00:00','2008-09-10 22:59:59',1,1000,NULL,1),
 (227,60,95,'2008-09-10 23:00:00','2008-09-10 23:59:59',1,1000,NULL,1),
 (228,60,96,'2008-09-11 00:00:00','2008-09-11 00:59:59',1,1000,NULL,1);
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (229,60,97,'2008-09-11 01:00:00','2008-09-11 01:59:59',1,1000,NULL,1),
 (230,60,98,'2008-09-11 02:00:00','2008-09-11 02:59:59',1,1000,NULL,1),
 (231,60,99,'2008-09-11 03:00:00','2008-09-11 03:59:59',1,1000,NULL,1),
 (232,60,100,'2008-09-11 04:00:00','2008-09-11 04:59:59',1,1000,NULL,1),
 (233,60,101,'2008-09-11 05:00:00','2008-09-11 05:59:59',1,1000,NULL,1),
 (234,60,102,'2008-09-11 06:00:00','2008-09-11 06:59:59',1,1000,NULL,1),
 (235,60,103,'2008-09-11 07:00:00','2008-09-11 07:59:59',1,1000,NULL,1),
 (236,60,104,'2008-09-11 08:00:00','2008-09-11 08:59:59',1,1000,NULL,1),
 (237,60,105,'2008-09-11 09:00:00','2008-09-11 09:59:59',1,1000,NULL,1),
 (238,60,106,'2008-09-11 10:00:00','2008-09-11 10:59:59',1,1000,NULL,1),
 (239,60,107,'2008-09-11 11:00:00','2008-09-11 11:59:59',1,1000,NULL,1),
 (240,60,108,'2008-09-11 12:00:00','2008-09-11 12:59:59',1,1000,NULL,1);
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (241,60,109,'2008-09-11 13:00:00','2008-09-11 13:59:59',1,1000,NULL,1),
 (242,60,110,'2008-09-11 14:00:00','2008-09-11 14:59:59',1,1000,NULL,1),
 (243,60,111,'2008-09-11 15:00:00','2008-09-11 15:59:59',1,1000,NULL,1),
 (244,60,112,'2008-09-11 16:00:00','2008-09-11 16:59:59',1,1000,NULL,1),
 (245,60,113,'2008-09-11 17:00:00','2008-09-11 17:59:59',1,1000,NULL,1),
 (246,60,114,'2008-09-11 18:00:00','2008-09-11 18:59:59',1,1000,NULL,1),
 (247,60,115,'2008-09-11 19:00:00','2008-09-11 19:59:59',1,1000,NULL,1),
 (248,60,116,'2008-09-11 20:00:00','2008-09-11 20:59:59',1,1000,NULL,1),
 (249,60,117,'2008-09-11 21:00:00','2008-09-11 21:59:59',1,1000,NULL,1),
 (250,60,118,'2008-09-11 22:00:00','2008-09-11 22:59:59',1,1000,NULL,1),
 (251,60,119,'2008-09-11 23:00:00','2008-09-11 23:59:59',1,1000,NULL,1),
 (252,60,120,'2008-09-12 00:00:00','2008-09-12 00:59:59',1,1000,NULL,1);
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (253,60,121,'2008-09-12 01:00:00','2008-09-12 01:59:59',1,1000,NULL,1),
 (254,60,122,'2008-09-12 02:00:00','2008-09-12 02:59:59',1,1000,NULL,1),
 (255,60,123,'2008-09-12 03:00:00','2008-09-12 03:59:59',1,1000,NULL,1),
 (256,60,124,'2008-09-12 04:00:00','2008-09-12 04:59:59',1,1000,NULL,1),
 (257,60,125,'2008-09-12 05:00:00','2008-09-12 05:59:59',1,1000,NULL,1),
 (258,60,126,'2008-09-12 06:00:00','2008-09-12 06:59:59',1,1000,NULL,1),
 (259,60,127,'2008-09-12 07:00:00','2008-09-12 07:59:59',1,1000,NULL,1),
 (260,60,128,'2008-09-12 08:00:00','2008-09-12 08:59:59',1,1000,NULL,1),
 (261,60,129,'2008-09-12 09:00:00','2008-09-12 09:59:59',1,1000,NULL,1),
 (262,60,130,'2008-09-12 10:00:00','2008-09-12 10:59:59',1,1000,NULL,1),
 (263,60,131,'2008-09-12 11:00:00','2008-09-12 11:59:59',1,1000,NULL,1),
 (264,60,132,'2008-09-12 12:00:00','2008-09-12 12:59:59',1,1000,NULL,1);
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (265,60,133,'2008-09-12 13:00:00','2008-09-12 13:59:59',1,1000,NULL,1),
 (266,60,134,'2008-09-12 14:00:00','2008-09-12 14:59:59',1,1000,NULL,1),
 (267,60,135,'2008-09-12 15:00:00','2008-09-12 15:59:59',1,1000,NULL,1),
 (268,60,136,'2008-09-12 16:00:00','2008-09-12 16:59:59',1,1000,NULL,1),
 (269,60,137,'2008-09-12 17:00:00','2008-09-12 17:59:59',1,1000,NULL,1),
 (270,60,138,'2008-09-12 18:00:00','2008-09-12 18:59:59',1,1000,NULL,1),
 (271,60,139,'2008-09-12 19:00:00','2008-09-12 19:59:59',1,1000,NULL,1),
 (272,60,140,'2008-09-12 20:00:00','2008-09-12 20:59:59',1,1000,NULL,1),
 (273,60,141,'2008-09-12 21:00:00','2008-09-12 21:59:59',1,1000,NULL,1),
 (274,60,142,'2008-09-12 22:00:00','2008-09-12 22:59:59',1,1000,NULL,1),
 (275,60,143,'2008-09-12 23:00:00','2008-09-12 23:59:59',1,1000,NULL,1),
 (276,60,144,'2008-09-13 00:00:00','2008-09-13 00:59:59',1,1000,NULL,1);
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (277,60,145,'2008-09-13 01:00:00','2008-09-13 01:59:59',1,1000,NULL,1),
 (278,60,146,'2008-09-13 02:00:00','2008-09-13 02:59:59',1,1000,NULL,1),
 (279,60,147,'2008-09-13 03:00:00','2008-09-13 03:59:59',1,1000,NULL,1),
 (280,60,148,'2008-09-13 04:00:00','2008-09-13 04:59:59',1,1000,NULL,1),
 (281,60,149,'2008-09-13 05:00:00','2008-09-13 05:59:59',1,1000,NULL,1),
 (282,60,150,'2008-09-13 06:00:00','2008-09-13 06:59:59',1,1000,NULL,1),
 (283,60,151,'2008-09-13 07:00:00','2008-09-13 07:59:59',1,1000,NULL,1),
 (284,60,152,'2008-09-13 08:00:00','2008-09-13 08:59:59',1,1000,NULL,1),
 (285,60,153,'2008-09-13 09:00:00','2008-09-13 09:59:59',1,1000,NULL,1),
 (286,60,154,'2008-09-13 10:00:00','2008-09-13 10:59:59',1,1000,NULL,1),
 (287,60,155,'2008-09-13 11:00:00','2008-09-13 11:59:59',1,1000,NULL,1),
 (288,60,156,'2008-09-13 12:00:00','2008-09-13 12:59:59',1,1000,NULL,1);
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (289,60,157,'2008-09-13 13:00:00','2008-09-13 13:59:59',1,1000,NULL,1),
 (290,60,158,'2008-09-13 14:00:00','2008-09-13 14:59:59',1,1000,NULL,1),
 (291,60,159,'2008-09-13 15:00:00','2008-09-13 15:59:59',1,1000,NULL,1),
 (292,60,160,'2008-09-13 16:00:00','2008-09-13 16:59:59',1,1000,NULL,1),
 (293,60,161,'2008-09-13 17:00:00','2008-09-13 17:59:59',1,1000,NULL,1),
 (294,60,162,'2008-09-13 18:00:00','2008-09-13 18:59:59',1,1000,NULL,1),
 (295,60,163,'2008-09-13 19:00:00','2008-09-13 19:59:59',1,1000,NULL,1),
 (296,60,164,'2008-09-13 20:00:00','2008-09-13 20:59:59',1,1000,NULL,1),
 (297,60,165,'2008-09-13 21:00:00','2008-09-13 21:59:59',1,1000,NULL,1),
 (298,60,166,'2008-09-13 22:00:00','2008-09-13 22:59:59',1,1000,NULL,1),
 (299,60,167,'2008-09-13 23:00:00','2008-09-13 23:59:59',1,1000,NULL,1),
 (300,60,0,'2008-09-14 00:00:00','2008-09-14 00:59:59',1,1000,NULL,1);
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (301,60,1,'2008-09-14 01:00:00','2008-09-14 01:59:59',1,1000,NULL,1),
 (302,60,2,'2008-09-14 02:00:00','2008-09-14 02:59:59',1,1000,NULL,1),
 (303,60,3,'2008-09-14 03:00:00','2008-09-14 03:59:59',1,1000,NULL,1),
 (304,60,4,'2008-09-14 04:00:00','2008-09-14 04:59:59',1,1000,NULL,1),
 (305,60,5,'2008-09-14 05:00:00','2008-09-14 05:59:59',1,1000,NULL,1),
 (306,60,6,'2008-09-14 06:00:00','2008-09-14 06:59:59',1,1000,NULL,1),
 (307,60,7,'2008-09-14 07:00:00','2008-09-14 07:59:59',1,1000,NULL,1),
 (308,60,8,'2008-09-14 08:00:00','2008-09-14 08:59:59',1,1000,NULL,1),
 (309,60,9,'2008-09-14 09:00:00','2008-09-14 09:59:59',1,1000,NULL,1),
 (310,60,10,'2008-09-14 10:00:00','2008-09-14 10:59:59',1,1000,NULL,1),
 (311,60,11,'2008-09-14 11:00:00','2008-09-14 11:59:59',1,1000,NULL,1),
 (312,60,12,'2008-09-14 12:00:00','2008-09-14 12:59:59',1,1000,NULL,1);
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (313,60,13,'2008-09-14 13:00:00','2008-09-14 13:59:59',1,1000,NULL,1),
 (314,60,14,'2008-09-14 14:00:00','2008-09-14 14:59:59',1,1000,NULL,1),
 (315,60,15,'2008-09-14 15:00:00','2008-09-14 15:59:59',1,1000,NULL,1),
 (316,60,16,'2008-09-14 16:00:00','2008-09-14 16:59:59',1,1000,NULL,1),
 (317,60,17,'2008-09-14 17:00:00','2008-09-14 17:59:59',1,1000,NULL,1),
 (318,60,18,'2008-09-14 18:00:00','2008-09-14 18:59:59',1,1000,NULL,1),
 (319,60,19,'2008-09-14 19:00:00','2008-09-14 19:59:59',1,1000,NULL,1),
 (320,60,20,'2008-09-14 20:00:00','2008-09-14 20:59:59',1,1000,NULL,1),
 (321,60,21,'2008-09-14 21:00:00','2008-09-14 21:59:59',1,1000,NULL,1),
 (322,60,22,'2008-09-14 22:00:00','2008-09-14 22:59:59',1,1000,NULL,1),
 (323,60,23,'2008-09-14 23:00:00','2008-09-14 23:59:59',1,1000,NULL,1),
 (324,60,24,'2008-09-15 00:00:00','2008-09-15 00:59:59',1,1000,NULL,1);
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (325,60,25,'2008-09-15 01:00:00','2008-09-15 01:59:59',1,1000,NULL,1),
 (326,60,26,'2008-09-15 02:00:00','2008-09-15 02:59:59',1,1000,NULL,1),
 (327,60,27,'2008-09-15 03:00:00','2008-09-15 03:59:59',1,1000,NULL,1),
 (328,60,28,'2008-09-15 04:00:00','2008-09-15 04:59:59',1,1000,NULL,1),
 (329,60,29,'2008-09-15 05:00:00','2008-09-15 05:59:59',1,1000,NULL,1),
 (330,60,30,'2008-09-15 06:00:00','2008-09-15 06:59:59',1,1000,NULL,1),
 (331,60,31,'2008-09-15 07:00:00','2008-09-15 07:59:59',1,1000,NULL,1),
 (332,60,32,'2008-09-15 08:00:00','2008-09-15 08:59:59',1,1000,NULL,1),
 (333,60,33,'2008-09-15 09:00:00','2008-09-15 09:59:59',1,1000,NULL,1),
 (334,60,34,'2008-09-15 10:00:00','2008-09-15 10:59:59',1,1000,NULL,1),
 (335,60,35,'2008-09-15 11:00:00','2008-09-15 11:59:59',1,1000,NULL,1),
 (336,60,36,'2008-09-15 12:00:00','2008-09-15 12:59:59',1,1000,NULL,1);
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (337,60,37,'2008-09-08 13:00:00','2008-09-08 13:59:59',2,1000,NULL,1),
 (338,60,38,'2008-09-08 14:00:00','2008-09-08 14:59:59',2,1000,NULL,1),
 (339,60,39,'2008-09-08 15:00:00','2008-09-08 15:59:59',2,1000,NULL,1),
 (340,60,40,'2008-09-08 16:00:00','2008-09-08 16:59:59',2,1000,NULL,1),
 (341,60,41,'2008-09-08 17:00:00','2008-09-08 17:59:59',2,1000,NULL,1),
 (342,60,42,'2008-09-08 18:00:00','2008-09-08 18:59:59',2,1000,NULL,1),
 (343,60,43,'2008-09-08 19:00:00','2008-09-08 19:59:59',2,1000,NULL,1),
 (344,60,44,'2008-09-08 20:00:00','2008-09-08 20:59:59',2,1000,NULL,1),
 (345,60,45,'2008-09-08 21:00:00','2008-09-08 21:59:59',2,1000,NULL,1),
 (346,60,46,'2008-09-08 22:00:00','2008-09-08 22:59:59',2,1000,NULL,1),
 (347,60,47,'2008-09-08 23:00:00','2008-09-08 23:59:59',2,1000,NULL,1),
 (348,60,48,'2008-09-09 00:00:00','2008-09-09 00:59:59',2,1000,NULL,1);
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (349,60,49,'2008-09-09 01:00:00','2008-09-09 01:59:59',2,1000,NULL,1),
 (350,60,50,'2008-09-09 02:00:00','2008-09-09 02:59:59',2,1000,NULL,1),
 (351,60,51,'2008-09-09 03:00:00','2008-09-09 03:59:59',2,1000,NULL,1),
 (352,60,52,'2008-09-09 04:00:00','2008-09-09 04:59:59',2,1000,NULL,1),
 (353,60,53,'2008-09-09 05:00:00','2008-09-09 05:59:59',2,1000,NULL,1),
 (354,60,54,'2008-09-09 06:00:00','2008-09-09 06:59:59',2,1000,NULL,1),
 (355,60,55,'2008-09-09 07:00:00','2008-09-09 07:59:59',2,1000,NULL,1),
 (356,60,56,'2008-09-09 08:00:00','2008-09-09 08:59:59',2,1000,NULL,1),
 (357,60,57,'2008-09-09 09:00:00','2008-09-09 09:59:59',2,1000,NULL,1),
 (358,60,58,'2008-09-09 10:00:00','2008-09-09 10:59:59',2,1000,NULL,1),
 (359,60,59,'2008-09-09 11:00:00','2008-09-09 11:59:59',2,1000,NULL,1),
 (360,60,60,'2008-09-09 12:00:00','2008-09-09 12:59:59',2,1000,NULL,1);
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (361,60,61,'2008-09-09 13:00:00','2008-09-09 13:59:59',2,1000,NULL,1),
 (362,60,62,'2008-09-09 14:00:00','2008-09-09 14:59:59',2,1000,NULL,1),
 (363,60,63,'2008-09-09 15:00:00','2008-09-09 15:59:59',2,1000,NULL,1),
 (364,60,64,'2008-09-09 16:00:00','2008-09-09 16:59:59',2,1000,NULL,1),
 (365,60,65,'2008-09-09 17:00:00','2008-09-09 17:59:59',2,1000,NULL,1),
 (366,60,66,'2008-09-09 18:00:00','2008-09-09 18:59:59',2,1000,NULL,1),
 (367,60,67,'2008-09-09 19:00:00','2008-09-09 19:59:59',2,1000,NULL,1),
 (368,60,68,'2008-09-09 20:00:00','2008-09-09 20:59:59',2,1000,NULL,1),
 (369,60,69,'2008-09-09 21:00:00','2008-09-09 21:59:59',2,1000,NULL,1),
 (370,60,70,'2008-09-09 22:00:00','2008-09-09 22:59:59',2,1000,NULL,1),
 (371,60,71,'2008-09-09 23:00:00','2008-09-09 23:59:59',2,1000,NULL,1),
 (372,60,72,'2008-09-10 00:00:00','2008-09-10 00:59:59',2,1000,NULL,1);
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (373,60,73,'2008-09-10 01:00:00','2008-09-10 01:59:59',2,1000,NULL,1),
 (374,60,74,'2008-09-10 02:00:00','2008-09-10 02:59:59',2,1000,NULL,1),
 (375,60,75,'2008-09-10 03:00:00','2008-09-10 03:59:59',2,1000,NULL,1),
 (376,60,76,'2008-09-10 04:00:00','2008-09-10 04:59:59',2,1000,NULL,1),
 (377,60,77,'2008-09-10 05:00:00','2008-09-10 05:59:59',2,1000,NULL,1),
 (378,60,78,'2008-09-10 06:00:00','2008-09-10 06:59:59',2,1000,NULL,1),
 (379,60,79,'2008-09-10 07:00:00','2008-09-10 07:59:59',2,1000,NULL,1),
 (380,60,80,'2008-09-10 08:00:00','2008-09-10 08:59:59',2,1000,NULL,1),
 (381,60,81,'2008-09-10 09:00:00','2008-09-10 09:59:59',2,1000,NULL,1),
 (382,60,82,'2008-09-10 10:00:00','2008-09-10 10:59:59',2,1000,NULL,1),
 (383,60,83,'2008-09-10 11:00:00','2008-09-10 11:59:59',2,1000,NULL,1),
 (384,60,84,'2008-09-10 12:00:00','2008-09-10 12:59:59',2,1000,NULL,1);
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (385,60,85,'2008-09-10 13:00:00','2008-09-10 13:59:59',2,1000,NULL,1),
 (386,60,86,'2008-09-10 14:00:00','2008-09-10 14:59:59',2,1000,NULL,1),
 (387,60,87,'2008-09-10 15:00:00','2008-09-10 15:59:59',2,1000,NULL,1),
 (388,60,88,'2008-09-10 16:00:00','2008-09-10 16:59:59',2,1000,NULL,1),
 (389,60,89,'2008-09-10 17:00:00','2008-09-10 17:59:59',2,1000,NULL,1),
 (390,60,90,'2008-09-10 18:00:00','2008-09-10 18:59:59',2,1000,NULL,1),
 (391,60,91,'2008-09-10 19:00:00','2008-09-10 19:59:59',2,1000,NULL,1),
 (392,60,92,'2008-09-10 20:00:00','2008-09-10 20:59:59',2,1000,NULL,1),
 (393,60,93,'2008-09-10 21:00:00','2008-09-10 21:59:59',2,1000,NULL,1),
 (394,60,94,'2008-09-10 22:00:00','2008-09-10 22:59:59',2,1000,NULL,1),
 (395,60,95,'2008-09-10 23:00:00','2008-09-10 23:59:59',2,1000,NULL,1),
 (396,60,96,'2008-09-11 00:00:00','2008-09-11 00:59:59',2,1000,NULL,1);
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (397,60,97,'2008-09-11 01:00:00','2008-09-11 01:59:59',2,1000,NULL,1),
 (398,60,98,'2008-09-11 02:00:00','2008-09-11 02:59:59',2,1000,NULL,1),
 (399,60,99,'2008-09-11 03:00:00','2008-09-11 03:59:59',2,1000,NULL,1),
 (400,60,100,'2008-09-11 04:00:00','2008-09-11 04:59:59',2,1000,NULL,1),
 (401,60,101,'2008-09-11 05:00:00','2008-09-11 05:59:59',2,1000,NULL,1),
 (402,60,102,'2008-09-11 06:00:00','2008-09-11 06:59:59',2,1000,NULL,1),
 (403,60,103,'2008-09-11 07:00:00','2008-09-11 07:59:59',2,1000,NULL,1),
 (404,60,104,'2008-09-11 08:00:00','2008-09-11 08:59:59',2,1000,NULL,1),
 (405,60,105,'2008-09-11 09:00:00','2008-09-11 09:59:59',2,1000,NULL,1),
 (406,60,106,'2008-09-11 10:00:00','2008-09-11 10:59:59',2,1000,NULL,1),
 (407,60,107,'2008-09-11 11:00:00','2008-09-11 11:59:59',2,1000,NULL,1),
 (408,60,108,'2008-09-11 12:00:00','2008-09-11 12:59:59',2,1000,NULL,1);
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (409,60,109,'2008-09-11 13:00:00','2008-09-11 13:59:59',2,1000,NULL,1),
 (410,60,110,'2008-09-11 14:00:00','2008-09-11 14:59:59',2,1000,NULL,1),
 (411,60,111,'2008-09-11 15:00:00','2008-09-11 15:59:59',2,1000,NULL,1),
 (412,60,112,'2008-09-11 16:00:00','2008-09-11 16:59:59',2,1000,NULL,1),
 (413,60,113,'2008-09-11 17:00:00','2008-09-11 17:59:59',2,1000,NULL,1),
 (414,60,114,'2008-09-11 18:00:00','2008-09-11 18:59:59',2,1000,NULL,1),
 (415,60,115,'2008-09-11 19:00:00','2008-09-11 19:59:59',2,1000,NULL,1),
 (416,60,116,'2008-09-11 20:00:00','2008-09-11 20:59:59',2,1000,NULL,1),
 (417,60,117,'2008-09-11 21:00:00','2008-09-11 21:59:59',2,1000,NULL,1),
 (418,60,118,'2008-09-11 22:00:00','2008-09-11 22:59:59',2,1000,NULL,1),
 (419,60,119,'2008-09-11 23:00:00','2008-09-11 23:59:59',2,1000,NULL,1),
 (420,60,120,'2008-09-12 00:00:00','2008-09-12 00:59:59',2,1000,NULL,1);
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (421,60,121,'2008-09-12 01:00:00','2008-09-12 01:59:59',2,1000,NULL,1),
 (422,60,122,'2008-09-12 02:00:00','2008-09-12 02:59:59',2,1000,NULL,1),
 (423,60,123,'2008-09-12 03:00:00','2008-09-12 03:59:59',2,1000,NULL,1),
 (424,60,124,'2008-09-12 04:00:00','2008-09-12 04:59:59',2,1000,NULL,1),
 (425,60,125,'2008-09-12 05:00:00','2008-09-12 05:59:59',2,1000,NULL,1),
 (426,60,126,'2008-09-12 06:00:00','2008-09-12 06:59:59',2,1000,NULL,1),
 (427,60,127,'2008-09-12 07:00:00','2008-09-12 07:59:59',2,1000,NULL,1),
 (428,60,128,'2008-09-12 08:00:00','2008-09-12 08:59:59',2,1000,NULL,1),
 (429,60,129,'2008-09-12 09:00:00','2008-09-12 09:59:59',2,1000,NULL,1),
 (430,60,130,'2008-09-12 10:00:00','2008-09-12 10:59:59',2,1000,NULL,1),
 (431,60,131,'2008-09-12 11:00:00','2008-09-12 11:59:59',2,1000,NULL,1),
 (432,60,132,'2008-09-12 12:00:00','2008-09-12 12:59:59',2,1000,NULL,1);
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (433,60,133,'2008-09-12 13:00:00','2008-09-12 13:59:59',2,1000,NULL,1),
 (434,60,134,'2008-09-12 14:00:00','2008-09-12 14:59:59',2,1000,NULL,1),
 (435,60,135,'2008-09-12 15:00:00','2008-09-12 15:59:59',2,1000,NULL,1),
 (436,60,136,'2008-09-12 16:00:00','2008-09-12 16:59:59',2,1000,NULL,1),
 (437,60,137,'2008-09-12 17:00:00','2008-09-12 17:59:59',2,1000,NULL,1),
 (438,60,138,'2008-09-12 18:00:00','2008-09-12 18:59:59',2,1000,NULL,1),
 (439,60,139,'2008-09-12 19:00:00','2008-09-12 19:59:59',2,1000,NULL,1),
 (440,60,140,'2008-09-12 20:00:00','2008-09-12 20:59:59',2,1000,NULL,1),
 (441,60,141,'2008-09-12 21:00:00','2008-09-12 21:59:59',2,1000,NULL,1),
 (442,60,142,'2008-09-12 22:00:00','2008-09-12 22:59:59',2,1000,NULL,1),
 (443,60,143,'2008-09-12 23:00:00','2008-09-12 23:59:59',2,1000,NULL,1),
 (444,60,144,'2008-09-13 00:00:00','2008-09-13 00:59:59',2,1000,NULL,1);
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (445,60,145,'2008-09-13 01:00:00','2008-09-13 01:59:59',2,1000,NULL,1),
 (446,60,146,'2008-09-13 02:00:00','2008-09-13 02:59:59',2,1000,NULL,1),
 (447,60,147,'2008-09-13 03:00:00','2008-09-13 03:59:59',2,1000,NULL,1),
 (448,60,148,'2008-09-13 04:00:00','2008-09-13 04:59:59',2,1000,NULL,1),
 (449,60,149,'2008-09-13 05:00:00','2008-09-13 05:59:59',2,1000,NULL,1),
 (450,60,150,'2008-09-13 06:00:00','2008-09-13 06:59:59',2,1000,NULL,1),
 (451,60,151,'2008-09-13 07:00:00','2008-09-13 07:59:59',2,1000,NULL,1),
 (452,60,152,'2008-09-13 08:00:00','2008-09-13 08:59:59',2,1000,NULL,1),
 (453,60,153,'2008-09-13 09:00:00','2008-09-13 09:59:59',2,1000,NULL,1),
 (454,60,154,'2008-09-13 10:00:00','2008-09-13 10:59:59',2,1000,NULL,1),
 (455,60,155,'2008-09-13 11:00:00','2008-09-13 11:59:59',2,1000,NULL,1),
 (456,60,156,'2008-09-13 12:00:00','2008-09-13 12:59:59',2,1000,NULL,1);
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (457,60,157,'2008-09-13 13:00:00','2008-09-13 13:59:59',2,1000,NULL,1),
 (458,60,158,'2008-09-13 14:00:00','2008-09-13 14:59:59',2,1000,NULL,1),
 (459,60,159,'2008-09-13 15:00:00','2008-09-13 15:59:59',2,1000,NULL,1),
 (460,60,160,'2008-09-13 16:00:00','2008-09-13 16:59:59',2,1000,NULL,1),
 (461,60,161,'2008-09-13 17:00:00','2008-09-13 17:59:59',2,1000,NULL,1),
 (462,60,162,'2008-09-13 18:00:00','2008-09-13 18:59:59',2,1000,NULL,1),
 (463,60,163,'2008-09-13 19:00:00','2008-09-13 19:59:59',2,1000,NULL,1),
 (464,60,164,'2008-09-13 20:00:00','2008-09-13 20:59:59',2,1000,NULL,1),
 (465,60,165,'2008-09-13 21:00:00','2008-09-13 21:59:59',2,1000,NULL,1),
 (466,60,166,'2008-09-13 22:00:00','2008-09-13 22:59:59',2,1000,NULL,1),
 (467,60,167,'2008-09-13 23:00:00','2008-09-13 23:59:59',2,1000,NULL,1),
 (468,60,0,'2008-09-14 00:00:00','2008-09-14 00:59:59',2,1000,NULL,1);
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (469,60,1,'2008-09-14 01:00:00','2008-09-14 01:59:59',2,1000,NULL,1),
 (470,60,2,'2008-09-14 02:00:00','2008-09-14 02:59:59',2,1000,NULL,1),
 (471,60,3,'2008-09-14 03:00:00','2008-09-14 03:59:59',2,1000,NULL,1),
 (472,60,4,'2008-09-14 04:00:00','2008-09-14 04:59:59',2,1000,NULL,1),
 (473,60,5,'2008-09-14 05:00:00','2008-09-14 05:59:59',2,1000,NULL,1),
 (474,60,6,'2008-09-14 06:00:00','2008-09-14 06:59:59',2,1000,NULL,1),
 (475,60,7,'2008-09-14 07:00:00','2008-09-14 07:59:59',2,1000,NULL,1),
 (476,60,8,'2008-09-14 08:00:00','2008-09-14 08:59:59',2,1000,NULL,1),
 (477,60,9,'2008-09-14 09:00:00','2008-09-14 09:59:59',2,1000,NULL,1),
 (478,60,10,'2008-09-14 10:00:00','2008-09-14 10:59:59',2,1000,NULL,1),
 (479,60,11,'2008-09-14 11:00:00','2008-09-14 11:59:59',2,1000,NULL,1),
 (480,60,12,'2008-09-14 12:00:00','2008-09-14 12:59:59',2,1000,NULL,1);
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (481,60,13,'2008-09-14 13:00:00','2008-09-14 13:59:59',2,1000,NULL,1),
 (482,60,14,'2008-09-14 14:00:00','2008-09-14 14:59:59',2,1000,NULL,1),
 (483,60,15,'2008-09-14 15:00:00','2008-09-14 15:59:59',2,1000,NULL,1),
 (484,60,16,'2008-09-14 16:00:00','2008-09-14 16:59:59',2,1000,NULL,1),
 (485,60,17,'2008-09-14 17:00:00','2008-09-14 17:59:59',2,1000,NULL,1),
 (486,60,18,'2008-09-14 18:00:00','2008-09-14 18:59:59',2,1000,NULL,1),
 (487,60,19,'2008-09-14 19:00:00','2008-09-14 19:59:59',2,1000,NULL,1),
 (488,60,20,'2008-09-14 20:00:00','2008-09-14 20:59:59',2,1000,NULL,1),
 (489,60,21,'2008-09-14 21:00:00','2008-09-14 21:59:59',2,1000,NULL,1),
 (490,60,22,'2008-09-14 22:00:00','2008-09-14 22:59:59',2,1000,NULL,1),
 (491,60,23,'2008-09-14 23:00:00','2008-09-14 23:59:59',2,1000,NULL,1),
 (492,60,24,'2008-09-15 00:00:00','2008-09-15 00:59:59',2,1000,NULL,1);
INSERT INTO `ox_data_summary_zone_impression_history` (`data_summary_zone_impression_history_id`,`operation_interval`,`operation_interval_id`,`interval_start`,`interval_end`,`zone_id`,`forecast_impressions`,`actual_impressions`,`est`) VALUES 
 (493,60,25,'2008-09-15 01:00:00','2008-09-15 01:59:59',2,1000,NULL,1),
 (494,60,26,'2008-09-15 02:00:00','2008-09-15 02:59:59',2,1000,NULL,1),
 (495,60,27,'2008-09-15 03:00:00','2008-09-15 03:59:59',2,1000,NULL,1),
 (496,60,28,'2008-09-15 04:00:00','2008-09-15 04:59:59',2,1000,NULL,1),
 (497,60,29,'2008-09-15 05:00:00','2008-09-15 05:59:59',2,1000,NULL,1),
 (498,60,30,'2008-09-15 06:00:00','2008-09-15 06:59:59',2,1000,NULL,1),
 (499,60,31,'2008-09-15 07:00:00','2008-09-15 07:59:59',2,1000,NULL,1),
 (500,60,32,'2008-09-15 08:00:00','2008-09-15 08:59:59',2,1000,NULL,1),
 (501,60,33,'2008-09-15 09:00:00','2008-09-15 09:59:59',2,1000,NULL,1),
 (502,60,34,'2008-09-15 10:00:00','2008-09-15 10:59:59',2,1000,NULL,1),
 (503,60,35,'2008-09-15 11:00:00','2008-09-15 11:59:59',2,1000,NULL,1),
 (504,60,36,'2008-09-15 12:00:00','2008-09-15 12:59:59',2,1000,NULL,1);
CREATE TABLE `ox_database_action` (
  `database_action_id` int(10) unsigned NOT NULL auto_increment,
  `upgrade_action_id` int(10) unsigned default '0',
  `schema_name` varchar(64) default NULL,
  `version` int(11) NOT NULL,
  `timing` int(2) NOT NULL,
  `action` int(2) NOT NULL,
  `info1` varchar(255) default NULL,
  `info2` varchar(255) default NULL,
  `tablename` varchar(64) default NULL,
  `tablename_backup` varchar(64) default NULL,
  `table_backup_schema` text,
  `updated` datetime default NULL,
  PRIMARY KEY  (`database_action_id`),
  KEY `ox_database_action_upgrade_action_id` (`upgrade_action_id`,`database_action_id`),
  KEY `ox_database_action_schema_version_timing_action` (`schema_name`,`version`,`timing`,`action`),
  KEY `ox_database_action_updated` (`updated`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE `ox_images` (
  `filename` varchar(128) NOT NULL default '',
  `contents` longblob NOT NULL,
  `t_stamp` datetime default NULL,
  PRIMARY KEY  (`filename`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ox_images` (`filename`,`contents`,`t_stamp`) VALUES 
 ('468x60.gif',0x474946383961D4013C00F70000000000800000008000808000000080800080008080808080C0C0C0FF000000FF00FFFF000000FFFF00FF00FFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000330000660000990000CC0000FF0033000033330033660033990033CC0033FF0066000066330066660066990066CC0066FF0099000099330099660099990099CC0099FF00CC0000CC3300CC6600CC9900CCCC00CCFF00FF0000FF3300FF6600FF9900FFCC00FFFF3300003300333300663300993300CC3300FF3333003333333333663333993333CC3333FF3366003366333366663366993366CC3366FF3399003399333399663399993399CC3399FF33CC0033CC3333CC6633CC9933CCCC33CCFF33FF0033FF3333FF6633FF9933FFCC33FFFF6600006600336600666600996600CC6600FF6633006633336633666633996633CC6633FF6666006666336666666666996666CC6666FF6699006699336699666699996699CC6699FF66CC0066CC3366CC6666CC9966CCCC66CCFF66FF0066FF3366FF6666FF9966FFCC66FFFF9900009900339900669900999900CC9900FF9933009933339933669933999933CC9933FF9966009966339966669966999966CC9966FF9999009999339999669999999999CC9999FF99CC0099CC3399CC6699CC9999CCCC99CCFF99FF0099FF3399FF6699FF9999FFCC99FFFFCC0000CC0033CC0066CC0099CC00CCCC00FFCC3300CC3333CC3366CC3399CC33CCCC33FFCC6600CC6633CC6666CC6699CC66CCCC66FFCC9900CC9933CC9966CC9999CC99CCCC99FFCCCC00CCCC33CCCC66CCCC99CCCCCCCCCCFFCCFF00CCFF33CCFF66CCFF99CCFFCCCCFFFFFF0000FF0033FF0066FF0099FF00CCFF00FFFF3300FF3333FF3366FF3399FF33CCFF33FFFF6600FF6633FF6666FF6699FF66CCFF66FFFF9900FF9933FF9966FF9999FF99CCFF99FFFFCC00FFCC33FFCC66FFCC99FFCCCCFFCCFFFFFF00FFFF33FFFF66FFFF99FFFFCCFFFFFF21F90401000010002C00000000D4013C000008FF007FE4104870A0C182080F2A4CC870A1C386101F4A8C4871A2C58A182F6ACCC871A3C78E203F8A0C4972A4C992284FAA4CB8B265CA972E63C29C29B326CD9B3673E2DCA95327CF9F3D810A0D4A74A8D1A2488F2A459AB4E9D2A74EA3429D2AB52A55A557AD6ACDCA75ABD7AE60BFB6141BB62CD9B366D3A25D3B53AD5BB670DFCA8D4B176ADDBB73F3E2DDABB7EF43BF80F90A0E4C787054C38513235EACB8F146C790194B8E4CF9EEE4CB953363DECC55B367CEA03F8B5619BAF4E8D3A6534344CD5AB5EBD68E5FCB863DBB765FDAB86DEBCE9D75B76FDEBF83FF044E5CB8F1E2258F2B47BEBC3941E6D09D4B2F3EBD7AF4EBB3B16BB7CE5D73F7EFDBC333BA164F1EBC79BDE7D3975F8F96BD7BF5F0A9C69FFFBE7E51FBF8E9EBA7B9BF7FFEFF230128A07F044654E08103263890820C22D89F830D46189F841442689E851566689D861C62D89C871D86289C882482A89B8925A6F89A8A2CA2589A8B2DC688998C34C2B8988D35E6C8978E3CE248978F3D06D91E90440AF95691481A39A4924C26C95493503A399C945446795495585A1994965C666992975D86F91898648A195299689A39A69A6CA299E69B6D3214279C740A54E79D6C0604003B,'2008-09-15 11:59:19');
CREATE TABLE `ox_lb_local` (
  `last_run` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE `ox_log_maintenance_forecasting` (
  `log_maintenance_forecasting_id` int(11) NOT NULL auto_increment,
  `start_run` datetime NOT NULL,
  `end_run` datetime NOT NULL,
  `operation_interval` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `updated_to` datetime default NULL,
  PRIMARY KEY  (`log_maintenance_forecasting_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE `ox_log_maintenance_priority` (
  `log_maintenance_priority_id` int(11) NOT NULL auto_increment,
  `start_run` datetime NOT NULL,
  `end_run` datetime NOT NULL,
  `operation_interval` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `run_type` tinyint(3) unsigned NOT NULL,
  `updated_to` datetime default NULL,
  PRIMARY KEY  (`log_maintenance_priority_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
INSERT INTO `ox_log_maintenance_priority` (`log_maintenance_priority_id`,`start_run`,`end_run`,`operation_interval`,`duration`,`run_type`,`updated_to`) VALUES 
 (1,'2008-09-15 12:01:55','2008-09-15 12:01:56',60,1,0,'2008-09-15 12:59:59'),
 (2,'2008-09-15 12:01:56','2008-09-15 12:01:56',60,0,1,NULL),
 (3,'2008-09-15 12:02:16','2008-09-15 12:02:17',60,1,0,'2008-09-15 12:59:59'),
 (4,'2008-09-15 12:02:17','2008-09-15 12:02:17',60,0,1,NULL);
CREATE TABLE `ox_log_maintenance_statistics` (
  `log_maintenance_statistics_id` int(11) NOT NULL auto_increment,
  `start_run` datetime NOT NULL,
  `end_run` datetime NOT NULL,
  `duration` int(11) NOT NULL,
  `adserver_run_type` int(2) default NULL,
  `search_run_type` int(2) default NULL,
  `tracker_run_type` int(2) default NULL,
  `updated_to` datetime default NULL,
  PRIMARY KEY  (`log_maintenance_statistics_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE `ox_password_recovery` (
  `user_type` varchar(64) NOT NULL default '',
  `user_id` int(10) NOT NULL,
  `recovery_id` varchar(64) NOT NULL default '',
  `updated` datetime NOT NULL,
  PRIMARY KEY  (`user_type`,`user_id`),
  UNIQUE KEY `ox_password_recovery_recovery_id` (`recovery_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE `ox_placement_zone_assoc` (
  `placement_zone_assoc_id` mediumint(9) NOT NULL auto_increment,
  `zone_id` mediumint(9) default NULL,
  `placement_id` mediumint(9) default NULL,
  PRIMARY KEY  (`placement_zone_assoc_id`),
  KEY `ox_placement_zone_assoc_zone_id` (`zone_id`),
  KEY `ox_placement_zone_assoc_placement_id` (`placement_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
INSERT INTO `ox_placement_zone_assoc` (`placement_zone_assoc_id`,`zone_id`,`placement_id`) VALUES 
 (1,1,1),
 (2,1,2),
 (3,2,3),
 (4,2,1);
CREATE TABLE `ox_plugins_channel_delivery_assoc` (
  `rule_id` int(10) unsigned NOT NULL default '0',
  `domain_id` int(10) unsigned NOT NULL default '0',
  `rule_order` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`rule_id`,`domain_id`),
  KEY `ox_plugins_channel_delivery_assoc_domain_id` (`domain_id`),
  KEY `ox_plugins_channel_delivery_assoc_rule_id` (`rule_id`),
  KEY `ox_plugins_channel_delivery_assoc_rule_order` (`rule_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE `ox_plugins_channel_delivery_domains` (
  `domain_id` int(10) unsigned NOT NULL auto_increment,
  `domain_name` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`domain_id`),
  KEY `ox_plugins_channel_delivery_domains_domain_name` (`domain_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE `ox_plugins_channel_delivery_rules` (
  `rule_id` int(10) unsigned NOT NULL auto_increment,
  `modifier` varchar(100) NOT NULL default '',
  `client` varchar(100) NOT NULL default '',
  `rule` text NOT NULL,
  PRIMARY KEY  (`rule_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE `ox_preferences` (
  `preference_id` mediumint(9) NOT NULL auto_increment,
  `preference_name` varchar(64) NOT NULL default '',
  `account_type` varchar(16) NOT NULL default '',
  PRIMARY KEY  (`preference_id`),
  UNIQUE KEY `ox_preferences_preference_name` (`preference_name`),
  KEY `ox_preferences_account_type` (`account_type`)
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;
INSERT INTO `ox_preferences` (`preference_id`,`preference_name`,`account_type`) VALUES 
 (1,'default_banner_image_url','TRAFFICKER'),
 (2,'default_banner_destination_url','TRAFFICKER'),
 (3,'auto_alter_html_banners_for_click_tracking','ADVERTISER'),
 (4,'default_banner_weight','ADVERTISER'),
 (5,'default_campaign_weight','ADVERTISER'),
 (6,'warn_email_admin','ADMIN'),
 (7,'warn_email_admin_impression_limit','ADMIN'),
 (8,'warn_email_admin_day_limit','ADMIN'),
 (9,'warn_email_manager','MANAGER'),
 (10,'warn_email_manager_impression_limit','MANAGER'),
 (11,'warn_email_manager_day_limit','MANAGER'),
 (12,'warn_email_advertiser','ADVERTISER'),
 (13,'warn_email_advertiser_impression_limit','ADVERTISER'),
 (14,'warn_email_advertiser_day_limit','ADVERTISER'),
 (15,'timezone','MANAGER'),
 (16,'tracker_default_status','ADVERTISER'),
 (17,'tracker_default_type','ADVERTISER'),
 (18,'tracker_link_campaigns','ADVERTISER'),
 (19,'ui_show_campaign_info','ADVERTISER'),
 (20,'ui_show_banner_info','ADVERTISER'),
 (21,'ui_show_campaign_preview','ADVERTISER');
INSERT INTO `ox_preferences` (`preference_id`,`preference_name`,`account_type`) VALUES 
 (22,'ui_show_banner_html','ADVERTISER'),
 (23,'ui_show_banner_preview','ADVERTISER'),
 (24,'ui_hide_inactive',''),
 (25,'ui_show_matching_banners','TRAFFICKER'),
 (26,'ui_show_matching_banners_parents','TRAFFICKER'),
 (27,'ui_novice_user',''),
 (28,'ui_week_start_day',''),
 (29,'ui_percentage_decimals',''),
 (30,'ui_column_id','MANAGER'),
 (31,'ui_column_id_label','MANAGER'),
 (32,'ui_column_id_rank','MANAGER'),
 (33,'ui_column_requests','MANAGER'),
 (34,'ui_column_requests_label','MANAGER'),
 (35,'ui_column_requests_rank','MANAGER'),
 (36,'ui_column_impressions','MANAGER'),
 (37,'ui_column_impressions_label','MANAGER'),
 (38,'ui_column_impressions_rank','MANAGER'),
 (39,'ui_column_clicks','MANAGER'),
 (40,'ui_column_clicks_label','MANAGER'),
 (41,'ui_column_clicks_rank','MANAGER'),
 (42,'ui_column_ctr','MANAGER'),
 (43,'ui_column_ctr_label','MANAGER'),
 (44,'ui_column_ctr_rank','MANAGER'),
 (45,'ui_column_conversions','MANAGER'),
 (46,'ui_column_conversions_label','MANAGER');
INSERT INTO `ox_preferences` (`preference_id`,`preference_name`,`account_type`) VALUES 
 (47,'ui_column_conversions_rank','MANAGER'),
 (48,'ui_column_conversions_pending','MANAGER'),
 (49,'ui_column_conversions_pending_label','MANAGER'),
 (50,'ui_column_conversions_pending_rank','MANAGER'),
 (51,'ui_column_sr_views','MANAGER'),
 (52,'ui_column_sr_views_label','MANAGER'),
 (53,'ui_column_sr_views_rank','MANAGER'),
 (54,'ui_column_sr_clicks','MANAGER'),
 (55,'ui_column_sr_clicks_label','MANAGER'),
 (56,'ui_column_sr_clicks_rank','MANAGER'),
 (57,'ui_column_revenue','MANAGER'),
 (58,'ui_column_revenue_label','MANAGER'),
 (59,'ui_column_revenue_rank','MANAGER'),
 (60,'ui_column_cost','MANAGER'),
 (61,'ui_column_cost_label','MANAGER'),
 (62,'ui_column_cost_rank','MANAGER'),
 (63,'ui_column_bv','MANAGER'),
 (64,'ui_column_bv_label','MANAGER'),
 (65,'ui_column_bv_rank','MANAGER'),
 (66,'ui_column_num_items','MANAGER'),
 (67,'ui_column_num_items_label','MANAGER'),
 (68,'ui_column_num_items_rank','MANAGER'),
 (69,'ui_column_revcpc','MANAGER');
INSERT INTO `ox_preferences` (`preference_id`,`preference_name`,`account_type`) VALUES 
 (70,'ui_column_revcpc_label','MANAGER'),
 (71,'ui_column_revcpc_rank','MANAGER'),
 (72,'ui_column_costcpc','MANAGER'),
 (73,'ui_column_costcpc_label','MANAGER'),
 (74,'ui_column_costcpc_rank','MANAGER'),
 (75,'ui_column_technology_cost','MANAGER'),
 (76,'ui_column_technology_cost_label','MANAGER'),
 (77,'ui_column_technology_cost_rank','MANAGER'),
 (78,'ui_column_income','MANAGER'),
 (79,'ui_column_income_label','MANAGER'),
 (80,'ui_column_income_rank','MANAGER'),
 (81,'ui_column_income_margin','MANAGER'),
 (82,'ui_column_income_margin_label','MANAGER'),
 (83,'ui_column_income_margin_rank','MANAGER'),
 (84,'ui_column_profit','MANAGER'),
 (85,'ui_column_profit_label','MANAGER'),
 (86,'ui_column_profit_rank','MANAGER'),
 (87,'ui_column_margin','MANAGER'),
 (88,'ui_column_margin_label','MANAGER'),
 (89,'ui_column_margin_rank','MANAGER'),
 (90,'ui_column_erpm','MANAGER'),
 (91,'ui_column_erpm_label','MANAGER'),
 (92,'ui_column_erpm_rank','MANAGER');
INSERT INTO `ox_preferences` (`preference_id`,`preference_name`,`account_type`) VALUES 
 (93,'ui_column_erpc','MANAGER'),
 (94,'ui_column_erpc_label','MANAGER'),
 (95,'ui_column_erpc_rank','MANAGER'),
 (96,'ui_column_erps','MANAGER'),
 (97,'ui_column_erps_label','MANAGER'),
 (98,'ui_column_erps_rank','MANAGER'),
 (99,'ui_column_eipm','MANAGER'),
 (100,'ui_column_eipm_label','MANAGER'),
 (101,'ui_column_eipm_rank','MANAGER'),
 (102,'ui_column_eipc','MANAGER'),
 (103,'ui_column_eipc_label','MANAGER'),
 (104,'ui_column_eipc_rank','MANAGER'),
 (105,'ui_column_eips','MANAGER'),
 (106,'ui_column_eips_label','MANAGER'),
 (107,'ui_column_eips_rank','MANAGER'),
 (108,'ui_column_ecpm','MANAGER'),
 (109,'ui_column_ecpm_label','MANAGER'),
 (110,'ui_column_ecpm_rank','MANAGER'),
 (111,'ui_column_ecpc','MANAGER'),
 (112,'ui_column_ecpc_label','MANAGER'),
 (113,'ui_column_ecpc_rank','MANAGER'),
 (114,'ui_column_ecps','MANAGER'),
 (115,'ui_column_ecps_label','MANAGER'),
 (116,'ui_column_ecps_rank','MANAGER');
CREATE TABLE `ox_session` (
  `sessionid` varchar(32) NOT NULL default '',
  `sessiondata` text NOT NULL,
  `lastused` datetime default NULL,
  PRIMARY KEY  (`sessionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ox_session` (`sessionid`,`sessiondata`,`lastused`) VALUES 
 ('phpads48ce4dc1387f18.91147721','a:2:{s:4:\"user\";O:18:\"OA_Permission_User\":2:{s:5:\"aUser\";a:15:{s:7:\"user_id\";s:1:\"1\";s:12:\"contact_name\";s:13:\"Administrator\";s:13:\"email_address\";s:15:\"test@openx.test\";s:8:\"username\";s:5:\"openx\";s:8:\"language\";s:2:\"en\";s:18:\"default_account_id\";s:1:\"2\";s:8:\"comments\";s:0:\"\";s:6:\"active\";s:1:\"1\";s:11:\"sso_user_id\";s:0:\"\";s:12:\"date_created\";s:19:\"2008-09-15 13:57:52\";s:15:\"date_last_login\";s:0:\"\";s:13:\"email_updated\";s:19:\"2008-09-15 13:57:52\";s:10:\"account_id\";s:1:\"1\";s:6:\"linked\";s:19:\"2008-09-15 13:57:52\";s:8:\"is_admin\";b:1;}s:8:\"aAccount\";a:7:{s:10:\"account_id\";s:1:\"2\";s:12:\"account_type\";s:7:\"MANAGER\";s:12:\"account_name\";s:15:\"Default manager\";s:12:\"m2m_password\";s:0:\"\";s:10:\"m2m_ticket\";s:0:\"\";s:9:\"entity_id\";s:1:\"1\";s:9:\"agency_id\";s:1:\"1\";}}s:5:\"prefs\";a:1:{s:20:\"advertiser-index.php\";a:4:{s:12:\"hideinactive\";b:0;s:9:\"listorder\";s:0:\"\";s:14:\"orderdirection\";s:0:\"\";s:5:\"nodes\";a:0:{}}}}','2008-09-15 11:57:53'),
 ('phpads48ce4def39c542.21006648','a:2:{s:4:\"user\";O:18:\"OA_Permission_User\":2:{s:5:\"aUser\";a:13:{s:7:\"user_id\";s:1:\"1\";s:12:\"contact_name\";s:13:\"Administrator\";s:13:\"email_address\";s:15:\"test@openx.test\";s:8:\"username\";s:5:\"openx\";s:8:\"language\";s:2:\"en\";s:18:\"default_account_id\";s:1:\"2\";s:8:\"comments\";s:0:\"\";s:6:\"active\";s:1:\"1\";s:11:\"sso_user_id\";s:0:\"\";s:12:\"date_created\";s:19:\"2008-09-15 13:57:52\";s:15:\"date_last_login\";s:19:\"2008-09-15 11:58:39\";s:13:\"email_updated\";s:19:\"2008-09-15 13:57:52\";s:8:\"is_admin\";b:1;}s:8:\"aAccount\";a:7:{s:10:\"account_id\";s:1:\"2\";s:12:\"account_type\";s:7:\"MANAGER\";s:12:\"account_name\";s:15:\"Default manager\";s:12:\"m2m_password\";s:25:\"uivuXT+MoU5H5jkp=Lch@BmEn\";s:10:\"m2m_ticket\";s:30:\"wNUw!mRfsbwqykr)NB)66YprRdsbPV\";s:9:\"entity_id\";s:1:\"1\";s:9:\"agency_id\";s:1:\"1\";}}s:5:\"prefs\";a:1:{s:20:\"advertiser-index.php\";a:4:{s:12:\"hideinactive\";b:0;s:9:\"listorder\";s:0:\"\";s:14:\"orderdirection\";s:0:\"\";s:5:\"nodes\";a:0:{}}}}','2008-09-15 11:58:51');
INSERT INTO `ox_session` (`sessionid`,`sessiondata`,`lastused`) VALUES 
 ('phpads48ce4dfb8c0760.94175157','a:2:{s:4:\"user\";O:18:\"OA_Permission_User\":2:{s:5:\"aUser\";a:13:{s:7:\"user_id\";s:1:\"1\";s:12:\"contact_name\";s:13:\"Administrator\";s:13:\"email_address\";s:15:\"test@openx.test\";s:8:\"username\";s:5:\"openx\";s:8:\"language\";s:2:\"en\";s:18:\"default_account_id\";s:1:\"2\";s:8:\"comments\";s:0:\"\";s:6:\"active\";s:1:\"1\";s:11:\"sso_user_id\";s:0:\"\";s:12:\"date_created\";s:19:\"2008-09-15 13:57:52\";s:15:\"date_last_login\";s:19:\"2008-09-15 11:58:51\";s:13:\"email_updated\";s:19:\"2008-09-15 13:57:52\";s:8:\"is_admin\";b:1;}s:8:\"aAccount\";a:7:{s:10:\"account_id\";s:1:\"2\";s:12:\"account_type\";s:7:\"MANAGER\";s:12:\"account_name\";s:15:\"Default manager\";s:12:\"m2m_password\";s:25:\"uivuXT+MoU5H5jkp=Lch@BmEn\";s:10:\"m2m_ticket\";s:30:\"wNUw!mRfsbwqykr)NB)66YprRdsbPV\";s:9:\"entity_id\";s:1:\"1\";s:9:\"agency_id\";s:1:\"1\";}}s:5:\"prefs\";a:2:{s:20:\"advertiser-index.php\";a:4:{s:12:\"hideinactive\";b:0;s:9:\"listorder\";s:0:\"\";s:14:\"orderdirection\";s:0:\"\";s:5:\"nodes\";a:0:{}}s:17:\"campaign-zone.php\";a:2:{s:9:\"listorder\";s:4:\"name\";s:14:\"orderdirection\";s:2:\"up\";}}}','2008-09-15 11:59:05'),
 ('phpads48ce4e0981d053.72979675','a:2:{s:4:\"user\";O:18:\"OA_Permission_User\":2:{s:5:\"aUser\";a:13:{s:7:\"user_id\";s:1:\"1\";s:12:\"contact_name\";s:13:\"Administrator\";s:13:\"email_address\";s:15:\"test@openx.test\";s:8:\"username\";s:5:\"openx\";s:8:\"language\";s:2:\"en\";s:18:\"default_account_id\";s:1:\"2\";s:8:\"comments\";s:0:\"\";s:6:\"active\";s:1:\"1\";s:11:\"sso_user_id\";s:0:\"\";s:12:\"date_created\";s:19:\"2008-09-15 13:57:52\";s:15:\"date_last_login\";s:19:\"2008-09-15 11:59:05\";s:13:\"email_updated\";s:19:\"2008-09-15 13:57:52\";s:8:\"is_admin\";b:1;}s:8:\"aAccount\";a:7:{s:10:\"account_id\";s:1:\"2\";s:12:\"account_type\";s:7:\"MANAGER\";s:12:\"account_name\";s:15:\"Default manager\";s:12:\"m2m_password\";s:25:\"uivuXT+MoU5H5jkp=Lch@BmEn\";s:10:\"m2m_ticket\";s:30:\"wNUw!mRfsbwqykr)NB)66YprRdsbPV\";s:9:\"entity_id\";s:1:\"1\";s:9:\"agency_id\";s:1:\"1\";}}s:5:\"prefs\";a:1:{s:20:\"advertiser-index.php\";a:4:{s:12:\"hideinactive\";b:0;s:9:\"listorder\";s:0:\"\";s:14:\"orderdirection\";s:0:\"\";s:5:\"nodes\";a:1:{s:7:\"clients\";a:1:{i:1;a:2:{s:6:\"expand\";b:1;s:9:\"campaigns\";a:3:{i:1;a:1:{s:6:\"expand\";b:1;}i:3;a:1:{s:6:\"expand\";b:1;}i:2;a:1:{s:6:\"expand\";b:1;}}}}}}}}','2008-09-15 11:59:19');
INSERT INTO `ox_session` (`sessionid`,`sessiondata`,`lastused`) VALUES 
 ('phpads48ce4e183fe255.67684200','a:2:{s:4:\"user\";O:18:\"OA_Permission_User\":2:{s:5:\"aUser\";a:13:{s:7:\"user_id\";s:1:\"1\";s:12:\"contact_name\";s:13:\"Administrator\";s:13:\"email_address\";s:15:\"test@openx.test\";s:8:\"username\";s:5:\"openx\";s:8:\"language\";s:2:\"en\";s:18:\"default_account_id\";s:1:\"2\";s:8:\"comments\";s:0:\"\";s:6:\"active\";s:1:\"1\";s:11:\"sso_user_id\";s:0:\"\";s:12:\"date_created\";s:19:\"2008-09-15 13:57:52\";s:15:\"date_last_login\";s:19:\"2008-09-15 11:59:20\";s:13:\"email_updated\";s:19:\"2008-09-15 13:57:52\";s:8:\"is_admin\";b:1;}s:8:\"aAccount\";a:7:{s:10:\"account_id\";s:1:\"2\";s:12:\"account_type\";s:7:\"MANAGER\";s:12:\"account_name\";s:15:\"Default manager\";s:12:\"m2m_password\";s:25:\"uivuXT+MoU5H5jkp=Lch@BmEn\";s:10:\"m2m_ticket\";s:30:\"wNUw!mRfsbwqykr)NB)66YprRdsbPV\";s:9:\"entity_id\";s:1:\"1\";s:9:\"agency_id\";s:1:\"1\";}}s:5:\"prefs\";a:2:{s:20:\"advertiser-index.php\";a:4:{s:12:\"hideinactive\";b:0;s:9:\"listorder\";s:0:\"\";s:14:\"orderdirection\";s:0:\"\";s:5:\"nodes\";a:0:{}}s:19:\"affiliate-index.php\";a:3:{s:9:\"listorder\";s:0:\"\";s:14:\"orderdirection\";s:0:\"\";s:5:\"nodes\";s:0:\"\";}}}','2008-09-15 11:59:31'),
 ('phpads48ce4e28477fc6.08449594','a:2:{s:4:\"user\";O:18:\"OA_Permission_User\":2:{s:5:\"aUser\";a:13:{s:7:\"user_id\";s:1:\"1\";s:12:\"contact_name\";s:13:\"Administrator\";s:13:\"email_address\";s:15:\"test@openx.test\";s:8:\"username\";s:5:\"openx\";s:8:\"language\";s:2:\"en\";s:18:\"default_account_id\";s:1:\"2\";s:8:\"comments\";s:0:\"\";s:6:\"active\";s:1:\"1\";s:11:\"sso_user_id\";s:0:\"\";s:12:\"date_created\";s:19:\"2008-09-15 13:57:52\";s:15:\"date_last_login\";s:19:\"2008-09-15 11:59:36\";s:13:\"email_updated\";s:19:\"2008-09-15 13:57:52\";s:8:\"is_admin\";b:1;}s:8:\"aAccount\";a:7:{s:10:\"account_id\";s:1:\"2\";s:12:\"account_type\";s:7:\"MANAGER\";s:12:\"account_name\";s:15:\"Default manager\";s:12:\"m2m_password\";s:25:\"uivuXT+MoU5H5jkp=Lch@BmEn\";s:10:\"m2m_ticket\";s:30:\"wNUw!mRfsbwqykr)NB)66YprRdsbPV\";s:9:\"entity_id\";s:1:\"1\";s:9:\"agency_id\";s:1:\"1\";}}s:5:\"prefs\";a:3:{s:20:\"advertiser-index.php\";a:4:{s:12:\"hideinactive\";b:0;s:9:\"listorder\";s:0:\"\";s:14:\"orderdirection\";s:0:\"\";s:5:\"nodes\";a:0:{}}s:19:\"affiliate-index.php\";a:3:{s:9:\"listorder\";s:0:\"\";s:14:\"orderdirection\";s:0:\"\";s:5:\"nodes\";s:0:\"\";}s:16:\"zone-include.php\";a:6:{s:12:\"hideinactive\";b:0;s:11:\"showbanners\";b:1;s:13:\"showcampaigns\";b:0;s:9:\"listorder\";s:4:\"name\";s:14:\"orderdirection\";s:2:\"up\";s:4:\"view\";s:9:\"placement\";}}}','2008-09-15 11:59:49');
INSERT INTO `ox_session` (`sessionid`,`sessiondata`,`lastused`) VALUES 
 ('phpads48ce4e36103587.62738531','a:2:{s:4:\"user\";O:18:\"OA_Permission_User\":2:{s:5:\"aUser\";a:13:{s:7:\"user_id\";s:1:\"1\";s:12:\"contact_name\";s:13:\"Administrator\";s:13:\"email_address\";s:15:\"test@openx.test\";s:8:\"username\";s:5:\"openx\";s:8:\"language\";s:2:\"en\";s:18:\"default_account_id\";s:1:\"2\";s:8:\"comments\";s:0:\"\";s:6:\"active\";s:1:\"1\";s:11:\"sso_user_id\";s:0:\"\";s:12:\"date_created\";s:19:\"2008-09-15 13:57:52\";s:15:\"date_last_login\";s:19:\"2008-09-15 11:59:50\";s:13:\"email_updated\";s:19:\"2008-09-15 13:57:52\";s:8:\"is_admin\";b:1;}s:8:\"aAccount\";a:7:{s:10:\"account_id\";s:1:\"2\";s:12:\"account_type\";s:7:\"MANAGER\";s:12:\"account_name\";s:15:\"Default manager\";s:12:\"m2m_password\";s:25:\"uivuXT+MoU5H5jkp=Lch@BmEn\";s:10:\"m2m_ticket\";s:30:\"wNUw!mRfsbwqykr)NB)66YprRdsbPV\";s:9:\"entity_id\";s:1:\"1\";s:9:\"agency_id\";s:1:\"1\";}}s:5:\"prefs\";a:3:{s:20:\"advertiser-index.php\";a:4:{s:12:\"hideinactive\";b:0;s:9:\"listorder\";s:0:\"\";s:14:\"orderdirection\";s:0:\"\";s:5:\"nodes\";a:0:{}}s:19:\"affiliate-index.php\";a:3:{s:9:\"listorder\";s:0:\"\";s:14:\"orderdirection\";s:0:\"\";s:5:\"nodes\";s:2:\",1\";}s:16:\"zone-include.php\";a:6:{s:12:\"hideinactive\";b:0;s:11:\"showbanners\";b:1;s:13:\"showcampaigns\";b:0;s:9:\"listorder\";s:4:\"name\";s:14:\"orderdirection\";s:2:\"up\";s:4:\"view\";s:9:\"placement\";}}}','2008-09-15 12:00:02'),
 ('phpads48ce4e43354b01.33752196','a:2:{s:4:\"user\";O:18:\"OA_Permission_User\":2:{s:5:\"aUser\";a:13:{s:7:\"user_id\";s:1:\"1\";s:12:\"contact_name\";s:13:\"Administrator\";s:13:\"email_address\";s:15:\"test@openx.test\";s:8:\"username\";s:5:\"openx\";s:8:\"language\";s:2:\"en\";s:18:\"default_account_id\";s:1:\"2\";s:8:\"comments\";s:0:\"\";s:6:\"active\";s:1:\"1\";s:11:\"sso_user_id\";s:0:\"\";s:12:\"date_created\";s:19:\"2008-09-15 13:57:52\";s:15:\"date_last_login\";s:19:\"2008-09-15 12:00:03\";s:13:\"email_updated\";s:19:\"2008-09-15 13:57:52\";s:8:\"is_admin\";b:1;}s:8:\"aAccount\";a:7:{s:10:\"account_id\";s:1:\"2\";s:12:\"account_type\";s:7:\"MANAGER\";s:12:\"account_name\";s:15:\"Default manager\";s:12:\"m2m_password\";s:25:\"uivuXT+MoU5H5jkp=Lch@BmEn\";s:10:\"m2m_ticket\";s:30:\"wNUw!mRfsbwqykr)NB)66YprRdsbPV\";s:9:\"entity_id\";s:1:\"1\";s:9:\"agency_id\";s:1:\"1\";}}s:5:\"prefs\";a:3:{s:20:\"advertiser-index.php\";a:4:{s:12:\"hideinactive\";b:0;s:9:\"listorder\";s:0:\"\";s:14:\"orderdirection\";s:0:\"\";s:5:\"nodes\";a:1:{s:7:\"clients\";a:1:{i:1;a:1:{s:6:\"expand\";b:1;}}}}s:17:\"campaign-zone.php\";a:2:{s:9:\"listorder\";s:4:\"name\";s:14:\"orderdirection\";s:2:\"up\";}s:20:\"campaign-banners.php\";a:1:{i:1;a:4:{s:12:\"hideinactive\";b:0;s:9:\"listorder\";s:0:\"\";s:14:\"orderdirection\";s:0:\"\";s:5:\"nodes\";s:0:\"\";}}}}','2008-09-15 12:00:16');
INSERT INTO `ox_session` (`sessionid`,`sessiondata`,`lastused`) VALUES 
 ('phpads48ce4e50e26674.44555840','a:2:{s:4:\"user\";O:18:\"OA_Permission_User\":2:{s:5:\"aUser\";a:13:{s:7:\"user_id\";s:1:\"1\";s:12:\"contact_name\";s:13:\"Administrator\";s:13:\"email_address\";s:15:\"test@openx.test\";s:8:\"username\";s:5:\"openx\";s:8:\"language\";s:2:\"en\";s:18:\"default_account_id\";s:1:\"2\";s:8:\"comments\";s:0:\"\";s:6:\"active\";s:1:\"1\";s:11:\"sso_user_id\";s:0:\"\";s:12:\"date_created\";s:19:\"2008-09-15 13:57:52\";s:15:\"date_last_login\";s:19:\"2008-09-15 12:00:17\";s:13:\"email_updated\";s:19:\"2008-09-15 13:57:52\";s:8:\"is_admin\";b:1;}s:8:\"aAccount\";a:7:{s:10:\"account_id\";s:1:\"2\";s:12:\"account_type\";s:7:\"MANAGER\";s:12:\"account_name\";s:15:\"Default manager\";s:12:\"m2m_password\";s:25:\"uivuXT+MoU5H5jkp=Lch@BmEn\";s:10:\"m2m_ticket\";s:30:\"wNUw!mRfsbwqykr)NB)66YprRdsbPV\";s:9:\"entity_id\";s:1:\"1\";s:9:\"agency_id\";s:1:\"1\";}}s:5:\"prefs\";a:4:{s:20:\"advertiser-index.php\";a:4:{s:12:\"hideinactive\";b:0;s:9:\"listorder\";s:0:\"\";s:14:\"orderdirection\";s:0:\"\";s:5:\"nodes\";a:0:{}}s:23:\"advertiser-trackers.php\";a:2:{s:9:\"listorder\";s:0:\"\";s:14:\"orderdirection\";s:0:\"\";}s:21:\"tracker-campaigns.php\";a:3:{s:12:\"hideinactive\";b:0;s:9:\"listorder\";s:0:\"\";s:14:\"orderdirection\";s:0:\"\";}s:21:\"tracker-variables.php\";a:1:{s:9:\"trackerid\";s:1:\"1\";}}}','2008-09-15 12:00:30'),
 ('phpads48ce4e5f371a15.12602409','a:2:{s:4:\"user\";O:18:\"OA_Permission_User\":2:{s:5:\"aUser\";a:13:{s:7:\"user_id\";s:1:\"1\";s:12:\"contact_name\";s:13:\"Administrator\";s:13:\"email_address\";s:15:\"test@openx.test\";s:8:\"username\";s:5:\"openx\";s:8:\"language\";s:2:\"en\";s:18:\"default_account_id\";s:1:\"2\";s:8:\"comments\";s:0:\"\";s:6:\"active\";s:1:\"1\";s:11:\"sso_user_id\";s:0:\"\";s:12:\"date_created\";s:19:\"2008-09-15 13:57:52\";s:15:\"date_last_login\";s:19:\"2008-09-15 12:00:31\";s:13:\"email_updated\";s:19:\"2008-09-15 13:57:52\";s:8:\"is_admin\";b:1;}s:8:\"aAccount\";a:7:{s:10:\"account_id\";s:1:\"2\";s:12:\"account_type\";s:7:\"MANAGER\";s:12:\"account_name\";s:15:\"Default manager\";s:12:\"m2m_password\";s:25:\"uivuXT+MoU5H5jkp=Lch@BmEn\";s:10:\"m2m_ticket\";s:30:\"wNUw!mRfsbwqykr)NB)66YprRdsbPV\";s:9:\"entity_id\";s:1:\"1\";s:9:\"agency_id\";s:1:\"1\";}}s:5:\"prefs\";a:4:{s:20:\"advertiser-index.php\";a:4:{s:12:\"hideinactive\";b:0;s:9:\"listorder\";s:0:\"\";s:14:\"orderdirection\";s:0:\"\";s:5:\"nodes\";a:0:{}}s:23:\"advertiser-trackers.php\";a:2:{s:9:\"listorder\";s:0:\"\";s:14:\"orderdirection\";s:0:\"\";}s:21:\"tracker-campaigns.php\";a:3:{s:12:\"hideinactive\";b:0;s:9:\"listorder\";s:0:\"\";s:14:\"orderdirection\";s:0:\"\";}s:21:\"tracker-variables.php\";a:2:{s:9:\"variables\";a:2:{i:0;a:14:{s:10:\"variableid\";s:1:\"1\";s:9:\"trackerid\";s:1:\"1\";s:4:\"name\";s:3:\"boo\";s:11:\"description\";s:13:\"Sample number\";s:8:\"datatype\";s:7:\"numeric\";s:7:\"purpose\";s:0:\"\";s:15:\"reject_if_empty\";s:1:\"0\";s:9:\"is_unique\";s:1:\"0\";s:13:\"unique_window\";s:1:\"0\";s:12:\"variablecode\";s:21:\"\\\\\\\'%%BOO_VALUE%%\\\\\\\'\";s:6:\"hidden\";s:1:\"f\";s:7:\"updated\";s:19:\"2008-09-15 12:00:30\";s:17:\"publisher_visible\";a:0:{}s:16:\"publisher_hidden\";a:0:{}}i:1;a:14:{s:10:\"variableid\";s:1:\"2\";s:9:\"trackerid\";s:1:\"1\";s:4:\"name\";s:3:\"foo\";s:11:\"description\";s:13:\"Sample string\";s:8:\"datatype\";s:6:\"string\";s:7:\"purpose\";s:0:\"\";s:15:\"reject_if_empty\";s:1:\"0\";s:9:\"is_unique\";s:1:\"0\";s:13:\"unique_window\";s:1:\"0\";s:12:\"variablecode\";s:21:\"\\\\\\\'%%FOO_VALUE%%\\\\\\\'\";s:6:\"hidden\";s:1:\"f\";s:7:\"updated\";s:19:\"2008-09-15 12:00:30\";s:17:\"publisher_visible\";a:0:{}s:16:\"publisher_hidden\";a:0:{}}}s:9:\"trackerid\";s:1:\"1\";}}}','2008-09-15 12:00:43');
INSERT INTO `ox_session` (`sessionid`,`sessiondata`,`lastused`) VALUES 
 ('phpads48ce4e6bba1923.63069360','a:2:{s:4:\"user\";O:18:\"OA_Permission_User\":2:{s:5:\"aUser\";a:13:{s:7:\"user_id\";s:1:\"1\";s:12:\"contact_name\";s:13:\"Administrator\";s:13:\"email_address\";s:15:\"test@openx.test\";s:8:\"username\";s:5:\"openx\";s:8:\"language\";s:2:\"en\";s:18:\"default_account_id\";s:1:\"2\";s:8:\"comments\";s:0:\"\";s:6:\"active\";s:1:\"1\";s:11:\"sso_user_id\";s:0:\"\";s:12:\"date_created\";s:19:\"2008-09-15 13:57:52\";s:15:\"date_last_login\";s:19:\"2008-09-15 12:00:44\";s:13:\"email_updated\";s:19:\"2008-09-15 13:57:52\";s:8:\"is_admin\";b:1;}s:8:\"aAccount\";a:7:{s:10:\"account_id\";s:1:\"2\";s:12:\"account_type\";s:7:\"MANAGER\";s:12:\"account_name\";s:15:\"Default manager\";s:12:\"m2m_password\";s:25:\"uivuXT+MoU5H5jkp=Lch@BmEn\";s:10:\"m2m_ticket\";s:30:\"wNUw!mRfsbwqykr)NB)66YprRdsbPV\";s:9:\"entity_id\";s:1:\"1\";s:9:\"agency_id\";s:1:\"1\";}}s:5:\"prefs\";a:2:{s:20:\"advertiser-index.php\";a:4:{s:12:\"hideinactive\";b:0;s:9:\"listorder\";s:0:\"\";s:14:\"orderdirection\";s:0:\"\";s:5:\"nodes\";a:0:{}}s:19:\"affiliate-index.php\";a:3:{s:9:\"listorder\";s:0:\"\";s:14:\"orderdirection\";s:0:\"\";s:5:\"nodes\";s:0:\"\";}}}','2008-09-15 12:00:55'),
 ('phpads48ce4ecb067697.31862620','a:1:{s:4:\"user\";O:18:\"OA_Permission_User\":2:{s:5:\"aUser\";a:13:{s:7:\"user_id\";s:1:\"1\";s:12:\"contact_name\";s:13:\"Administrator\";s:13:\"email_address\";s:15:\"test@openx.test\";s:8:\"username\";s:5:\"openx\";s:8:\"language\";s:2:\"en\";s:18:\"default_account_id\";s:1:\"2\";s:8:\"comments\";s:0:\"\";s:6:\"active\";s:1:\"1\";s:11:\"sso_user_id\";s:0:\"\";s:12:\"date_created\";s:19:\"2008-09-15 13:57:52\";s:15:\"date_last_login\";s:19:\"2008-09-15 12:02:19\";s:13:\"email_updated\";s:19:\"2008-09-15 13:57:52\";s:8:\"is_admin\";b:1;}s:8:\"aAccount\";a:7:{s:10:\"account_id\";s:1:\"2\";s:12:\"account_type\";s:7:\"MANAGER\";s:12:\"account_name\";s:15:\"Default manager\";s:12:\"m2m_password\";s:25:\"uivuXT+MoU5H5jkp=Lch@BmEn\";s:10:\"m2m_ticket\";s:30:\"wNUw!mRfsbwqykr)NB)66YprRdsbPV\";s:9:\"entity_id\";s:1:\"1\";s:9:\"agency_id\";s:1:\"1\";}}}','2008-09-15 12:02:29');
CREATE TABLE `ox_targetstats` (
  `day` date NOT NULL default '0000-00-00',
  `campaignid` mediumint(9) NOT NULL default '0',
  `target` int(11) NOT NULL default '0',
  `views` int(11) NOT NULL default '0',
  `modified` tinyint(4) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE `ox_tracker_append` (
  `tracker_append_id` int(11) NOT NULL auto_increment,
  `tracker_id` mediumint(9) NOT NULL default '0',
  `rank` int(11) NOT NULL default '0',
  `tagcode` text NOT NULL,
  `paused` enum('t','f') NOT NULL default 'f',
  `autotrack` enum('t','f') NOT NULL default 'f',
  PRIMARY KEY  (`tracker_append_id`),
  KEY `ox_tracker_append_tracker_id` (`tracker_id`,`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE `ox_trackers` (
  `trackerid` mediumint(9) NOT NULL auto_increment,
  `trackername` varchar(255) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  `clientid` mediumint(9) NOT NULL default '0',
  `viewwindow` mediumint(9) NOT NULL default '0',
  `clickwindow` mediumint(9) NOT NULL default '0',
  `blockwindow` mediumint(9) NOT NULL default '0',
  `status` smallint(1) unsigned NOT NULL default '4',
  `type` smallint(1) unsigned NOT NULL default '1',
  `linkcampaigns` enum('t','f') NOT NULL default 'f',
  `variablemethod` enum('default','js','dom','custom') NOT NULL default 'default',
  `appendcode` text NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY  (`trackerid`),
  KEY `ox_trackers_clientid` (`clientid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
INSERT INTO `ox_trackers` (`trackerid`,`trackername`,`description`,`clientid`,`viewwindow`,`clickwindow`,`blockwindow`,`status`,`type`,`linkcampaigns`,`variablemethod`,`appendcode`,`updated`) VALUES 
 (1,'Sample Tracker','',1,3,3,0,4,1,'f','js','','2008-09-15 12:00:30');
CREATE TABLE `ox_upgrade_action` (
  `upgrade_action_id` int(10) unsigned NOT NULL auto_increment,
  `upgrade_name` varchar(128) default NULL,
  `version_to` varchar(64) NOT NULL default '',
  `version_from` varchar(64) default NULL,
  `action` int(2) NOT NULL,
  `description` varchar(255) default NULL,
  `logfile` varchar(128) default NULL,
  `confbackup` varchar(128) default NULL,
  `updated` datetime default NULL,
  PRIMARY KEY  (`upgrade_action_id`),
  KEY `ox_upgrade_action_updated` (`updated`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
INSERT INTO `ox_upgrade_action` (`upgrade_action_id`,`upgrade_name`,`version_to`,`version_from`,`action`,`description`,`logfile`,`confbackup`,`updated`) VALUES 
 (1,'install_2.6.1','2.6.1','0',1,'UPGRADE_COMPLETE','install.log',NULL,'2008-09-15 13:57:49');
CREATE TABLE `ox_userlog` (
  `userlogid` mediumint(9) NOT NULL auto_increment,
  `timestamp` int(11) NOT NULL default '0',
  `usertype` tinyint(4) NOT NULL default '0',
  `userid` mediumint(9) NOT NULL default '0',
  `action` mediumint(9) NOT NULL default '0',
  `object` mediumint(9) default NULL,
  `details` mediumtext,
  PRIMARY KEY  (`userlogid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE `ox_users` (
  `user_id` mediumint(9) NOT NULL auto_increment,
  `contact_name` varchar(255) NOT NULL default '',
  `email_address` varchar(64) NOT NULL default '',
  `username` varchar(64) default NULL,
  `password` varchar(64) default NULL,
  `language` varchar(5) default NULL,
  `default_account_id` mediumint(9) default NULL,
  `comments` text,
  `active` tinyint(1) NOT NULL default '1',
  `sso_user_id` int(11) default NULL,
  `date_created` datetime default NULL,
  `date_last_login` datetime default NULL,
  `email_updated` datetime default NULL,
  PRIMARY KEY  (`user_id`),
  UNIQUE KEY `ox_users_username` (`username`),
  UNIQUE KEY `ox_users_sso_user_id` (`sso_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
INSERT INTO `ox_users` (`user_id`,`contact_name`,`email_address`,`username`,`password`,`language`,`default_account_id`,`comments`,`active`,`sso_user_id`,`date_created`,`date_last_login`,`email_updated`) VALUES 
 (1,'Administrator','test@openx.test','openx','7a89a595cfc6cb85480202a143e37d2e','en',2,NULL,1,NULL,'2008-09-15 13:57:52','2008-09-15 12:02:19','2008-09-15 13:57:52');
CREATE TABLE `ox_variable_publisher` (
  `variable_id` int(11) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  PRIMARY KEY  (`variable_id`,`publisher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE `ox_variables` (
  `variableid` mediumint(9) unsigned NOT NULL auto_increment,
  `trackerid` mediumint(9) NOT NULL default '0',
  `name` varchar(250) NOT NULL default '',
  `description` varchar(250) default NULL,
  `datatype` enum('numeric','string','date') NOT NULL default 'numeric',
  `purpose` enum('basket_value','num_items','post_code') default NULL,
  `reject_if_empty` smallint(1) unsigned NOT NULL default '0',
  `is_unique` int(11) NOT NULL default '0',
  `unique_window` int(11) NOT NULL default '0',
  `variablecode` varchar(255) NOT NULL default '',
  `hidden` enum('t','f') NOT NULL default 'f',
  `updated` datetime NOT NULL,
  PRIMARY KEY  (`variableid`),
  KEY `ox_variables_is_unique` (`is_unique`),
  KEY `ox_variables_trackerid` (`trackerid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
INSERT INTO `ox_variables` (`variableid`,`trackerid`,`name`,`description`,`datatype`,`purpose`,`reject_if_empty`,`is_unique`,`unique_window`,`variablecode`,`hidden`,`updated`) VALUES 
 (1,1,'boo','Sample number','numeric',NULL,0,0,0,'var boo = \\\'%%BOO_VALUE%%\\\'','f','2008-09-15 12:00:30'),
 (2,1,'foo','Sample string','string',NULL,0,0,0,'var foo = \\\'%%FOO_VALUE%%\\\'','f','2008-09-15 12:00:30');
CREATE TABLE `ox_zones` (
  `zoneid` mediumint(9) NOT NULL auto_increment,
  `affiliateid` mediumint(9) default NULL,
  `zonename` varchar(245) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  `delivery` smallint(6) NOT NULL default '0',
  `zonetype` smallint(6) NOT NULL default '0',
  `category` text NOT NULL,
  `width` smallint(6) NOT NULL default '0',
  `height` smallint(6) NOT NULL default '0',
  `ad_selection` text NOT NULL,
  `chain` text NOT NULL,
  `prepend` text NOT NULL,
  `append` text NOT NULL,
  `appendtype` tinyint(4) NOT NULL default '0',
  `forceappend` enum('t','f') default 'f',
  `inventory_forecast_type` smallint(6) NOT NULL default '0',
  `comments` text,
  `cost` decimal(10,4) default NULL,
  `cost_type` smallint(6) default NULL,
  `cost_variable_id` varchar(255) default NULL,
  `technology_cost` decimal(10,4) default NULL,
  `technology_cost_type` smallint(6) default NULL,
  `updated` datetime NOT NULL,
  `block` int(11) NOT NULL default '0',
  `capping` int(11) NOT NULL default '0',
  `session_capping` int(11) NOT NULL default '0',
  `what` text NOT NULL,
  `as_zone_id` int(11) default NULL,
  `is_in_ad_direct` tinyint(1) NOT NULL default '0',
  `rate` decimal(19,2) default NULL,
  `pricing` varchar(50) NOT NULL default 'CPM',
  PRIMARY KEY  (`zoneid`),
  KEY `ox_zones_zonenameid` (`zonename`,`zoneid`),
  KEY `ox_zones_affiliateid` (`affiliateid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
INSERT INTO `ox_zones` (`zoneid`,`affiliateid`,`zonename`,`description`,`delivery`,`zonetype`,`category`,`width`,`height`,`ad_selection`,`chain`,`prepend`,`append`,`appendtype`,`forceappend`,`inventory_forecast_type`,`comments`,`cost`,`cost_type`,`cost_variable_id`,`technology_cost`,`technology_cost_type`,`updated`,`block`,`capping`,`session_capping`,`what`,`as_zone_id`,`is_in_ad_direct`,`rate`,`pricing`) VALUES 
 (1,1,'Publisher 1 - Default','',0,3,'',468,60,'','','','',0,'f',0,'',NULL,NULL,NULL,NULL,NULL,'2008-09-15 11:59:48',0,0,0,'',NULL,0,NULL,'CPM'),
 (2,1,'Agency Publisher 1 - Default','',0,3,'',468,60,'','','','',0,'f',0,'',NULL,NULL,NULL,NULL,NULL,'2008-09-15 11:59:49',0,0,0,'',NULL,0,NULL,'CPM');



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
