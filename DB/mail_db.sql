-- MySQL dump 8.23
--
-- Host: localhost    Database: mail_db
---------------------------------------------------------
-- Server version       3.23.58-log

--
-- Table structure for table `MailCache`
--

CREATE TABLE MailCache (
  s_mailid varchar(18) NOT NULL default '',
  s_domain tinyint(4) NOT NULL default '1',
  s_mhost varchar(32) NOT NULL default '',
  s_modify timestamp(14) NOT NULL,
  PRIMARY KEY  (s_mailid,s_domain)
) TYPE=HEAP;

--
-- Dumping data for table `MailCache`
--



--
-- Table structure for table `MailForward`
--

CREATE TABLE MailForward (
  s_mailid varchar(18) NOT NULL default '',
  s_domain tinyint(4) NOT NULL default '1',
  s_count int(11) NOT NULL default '0',
  s_type enum('F','P','D') NOT NULL default 'F',
  s_target varchar(128) NOT NULL default '',
  PRIMARY KEY  (s_mailid,s_domain,s_count)
) TYPE=MyISAM;

--
-- Dumping data for table `MailForward`
--



--
-- Table structure for table `MailTrap`
--

CREATE TABLE MailTrap (
  s_mailfrom char(128) NOT NULL default '',
  s_host char(128) NOT NULL default '',
  s_ip char(16) NOT NULL default '',
  s_bulks int(10) unsigned NOT NULL default '0',
  s_wrongbulks int(10) unsigned NOT NULL default '0',
  s_size int(10) unsigned NOT NULL default '0',
  s_addtime timestamp(14) NOT NULL
) TYPE=HEAP;

--
-- Dumping data for table `MailTrap`
--
