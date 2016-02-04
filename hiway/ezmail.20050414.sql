# MySQL dump 5.13
#
# Host: localhost    Database: ezmail
#--------------------------------------------------------
# Server version	3.22.20a

#
# Table structure for table 'emailtbc'
#
CREATE TABLE emailtbc (
  name varchar(20) DEFAULT '' NOT NULL,
  username varchar(20) DEFAULT '' NOT NULL,
  domainname varchar(200) DEFAULT 'apol-mp.com.tw' NOT NULL,
  password varchar(20),
  mquota varchar(20) DEFAULT '20',
  forward varchar(255) DEFAULT '',
  forwardopen decimal(1,0) DEFAULT '1',
  wquota varchar(20) DEFAULT '10',
  UNIQUE Index_1 (username,domainname),
  UNIQUE Index_2 (name,domainname)
);

#
# Dumping data for table 'emailtbc'
#

INSERT INTO emailtbc VALUES ('smiler','ty000001','apol-mp.com.tw','n53990','20','',1,'10');
INSERT INTO emailtbc VALUES ('ty000002','sean','apol-mp.com.tw','c498t49h','20','',1,'10');
INSERT INTO emailtbc VALUES ('ty000003','max8020','apol-mp.com.tw','d5wusu8d','20','',1,'10');
