-- MySQL dump 8.23
--
-- Host: localhost    Database: mail_db
---------------------------------------------------------
-- Server version	3.23.58-log

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


INSERT INTO MailTrap VALUES ('n9y5c9m0@umail.hinet.net','smtp01.aptg.net','210.243.155.173',1,0,0,20041215182959);
INSERT INTO MailTrap VALUES ('duming@aptg.net','smtp01.aptg.net','219.91.117.78',1,0,0,20041215182956);
INSERT INTO MailTrap VALUES ('szhuapeng@tom.com','smtp01.aptg.net','219.133.131.51',1,0,0,20041215182959);
INSERT INTO MailTrap VALUES ('stece7481@aptg.net','smtp01.aptg.net','202.43.196.227',1,0,0,20041215182959);
INSERT INTO MailTrap VALUES ('laplace@aptg.net','smtp01.aptg.net','222.250.177.113',1,0,0,20041215182954);
INSERT INTO MailTrap VALUES ('kelly3296@yahoo.com.tw','smtp01.aptg.net','202.43.200.184',1,0,0,20041215182958);
INSERT INTO MailTrap VALUES ('m8499@ms48.hinet.net','smtp01.aptg.net','218.34.154.171',1,0,0,20041215182957);
INSERT INTO MailTrap VALUES ('ahuhuhuhu2001@yahoo.com.tw','smtp01.aptg.net','65.205.19.85',1,0,13147,20041215182952);
INSERT INTO MailTrap VALUES ('susan@cc.chit.edu.tw','smtp01.aptg.net','192.192.231.194',1,0,0,20041215182952);
INSERT INTO MailTrap VALUES ('dan168@aptg.net','smtp01.aptg.net','202.178.146.146',1,0,0,20041215182950);
INSERT INTO MailTrap VALUES ('susan@cc.chit.edu.tw','smtp01.aptg.net','192.192.231.194',1,0,0,20041215182950);
INSERT INTO MailTrap VALUES ('mridea02@aptg.net','smtp01.aptg.net','210.85.154.5',1,0,0,20041215182949);
INSERT INTO MailTrap VALUES ('u0l8c3q9@umail.hinet.net','smtp01.aptg.net','221.151.119.66',1,0,0,20041215182948);
INSERT INTO MailTrap VALUES ('just-karen@justshop.com.tw','smtp01.aptg.net','210.85.63.165',1,0,0,20041215182931);
INSERT INTO MailTrap VALUES ('anthony_alven@hotmail.com','smtp01.aptg.net','219.136.231.126',1,0,0,20041215182850);
INSERT INTO MailTrap VALUES ('sh.seven@msa.hinet.net','smtp01.aptg.net','222.250.107.4',27,0,0,20041215182942);
INSERT INTO MailTrap VALUES ('sbj@ms45.url.com.tw','smtp01.aptg.net','61.220.178.122',1,0,0,20041215182939);
INSERT INTO MailTrap VALUES ('wwwopu@yahoo.com.tw','smtp01.aptg.net','218.78.211.7',1,0,0,20041215182937);
INSERT INTO MailTrap VALUES ('tim0088@aptg.net','smtp01.aptg.net','210.200.211.22',1,0,0,20041215182937);
INSERT INTO MailTrap VALUES ('kin5589@aptg.net','smtp01.aptg.net','218.34.173.56',2,0,0,20041215182933);
INSERT INTO MailTrap VALUES ('changlans@aptg.net','smtp01.aptg.net','222.250.132.197',3,0,0,20041215182838);
INSERT INTO MailTrap VALUES ('tung06@ethome.net.tw','smtp01.aptg.net','218.184.140.246',24,0,0,20041215182931);
INSERT INTO MailTrap VALUES ('susan@cc.chit.edu.tw','smtp01.aptg.net','192.192.231.194',1,0,0,20041215182932);
INSERT INTO MailTrap VALUES ('cm267163@aptg.net','smtp01.aptg.net','222.250.19.3',1,0,0,20041215182932);
INSERT INTO MailTrap VALUES ('exchange-robot@paypal.com','smtp01.aptg.net','61.30.79.170',1,0,0,20041215182930);
INSERT INTO MailTrap VALUES ('mridea02@aptg.net','smtp01.aptg.net','210.85.154.5',1,0,0,20041215182928);
INSERT INTO MailTrap VALUES ('sharon95@aptg.net','smtp01.aptg.net','210.58.33.199',1,0,0,20041215182928);
INSERT INTO MailTrap VALUES ('carey960@aptg.net','smtp01.aptg.net','210.58.32.212',83,0,0,20041215182928);
INSERT INTO MailTrap VALUES ('service@kai-sa.com','smtp01.aptg.net','218.184.168.219',2,0,0,20041215182923);
INSERT INTO MailTrap VALUES ('tweety0203@aptg.net','smtp01.aptg.net','222.156.120.37',1,0,0,20041215182923);
INSERT INTO MailTrap VALUES ('csgt@ms39.hinet.net','smtp01.aptg.net','218.34.77.76',1,0,0,20041215182925);
INSERT INTO MailTrap VALUES ('kerry.hsu@qmico.com','smtp01.aptg.net','220.228.109.210',1,0,0,20041215182916);
INSERT INTO MailTrap VALUES ('ubon@aptg.net','smtp01.aptg.net','218.184.132.122',2,0,0,20041215182923);
INSERT INTO MailTrap VALUES ('duming@aptg.net','smtp01.aptg.net','219.91.117.78',1,0,0,20041215182917);
INSERT INTO MailTrap VALUES ('duming@aptg.net','smtp01.aptg.net','219.91.117.78',1,0,0,20041215182910);
INSERT INTO MailTrap VALUES ('johnny@96327.com','smtp01.aptg.net','61.145.190.98',1,0,0,20041215182908);
INSERT INTO MailTrap VALUES ('andrea-huang@patta.com.tw','smtp01.aptg.net','211.23.253.196',1,0,0,20041215182911);
INSERT INTO MailTrap VALUES ('mridea02@aptg.net','smtp01.aptg.net','210.85.154.5',1,0,0,20041215182910);
INSERT INTO MailTrap VALUES ('cm267163@aptg.net','smtp01.aptg.net','222.250.19.3',1,0,0,20041215182910);
INSERT INTO MailTrap VALUES ('yes3890114@yahoo.com.tw','smtp01.aptg.net','202.43.200.248',1,0,0,20041215182908);
INSERT INTO MailTrap VALUES ('number2377@yahoo.com.tw','smtp01.aptg.net','203.133.1.154',1,0,22379,20041215182908);
INSERT INTO MailTrap VALUES ('cni@cnicoffee.com.tw','smtp01.aptg.net','218.184.91.156',1,0,0,20041215182906);
INSERT INTO MailTrap VALUES ('duming@aptg.net','smtp01.aptg.net','219.91.117.78',1,0,0,20041215182855);
INSERT INTO MailTrap VALUES ('mridea02@aptg.net','smtp01.aptg.net','210.85.154.5',1,0,0,20041215182902);
INSERT INTO MailTrap VALUES ('8Aqlao1209@ms18.hinet.net','smtp01.aptg.net','213.30.75.53',1,0,0,20041215182859);
INSERT INTO MailTrap VALUES ('jacky829@ms10.hinet.net','smtp01.aptg.net','210.85.8.242',1,0,0,20041215182859);
INSERT INTO MailTrap VALUES ('n2232479@aptg.net','smtp01.aptg.net','210.85.239.146',4,0,0,20041215182645);
INSERT INTO MailTrap VALUES ('cm267163@aptg.net','smtp01.aptg.net','222.250.19.3',1,0,0,20041215182850);
INSERT INTO MailTrap VALUES ('amtb1965@aptg.net','smtp01.aptg.net','202.178.155.177',1,0,0,20041215182849);
INSERT INTO MailTrap VALUES ('ling@kaiphone.com','smtp01.aptg.net','218.247.38.220',1,0,0,20041215182848);
INSERT INTO MailTrap VALUES ('tjh@cryptsoft.com','smtp01.aptg.net','213.229.146.180',1,0,0,20041215182839);
INSERT INTO MailTrap VALUES ('jacknon@ms13.hinet.net','smtp01.aptg.net','210.58.173.111',1,0,0,20041215182842);
INSERT INTO MailTrap VALUES ('betty@minkatpe.com.tw','smtp01.aptg.net','211.23.169.218',1,0,0,20041215182844);
INSERT INTO MailTrap VALUES ('jessiesss@tom.com','smtp01.aptg.net','219.133.207.190',1,0,0,20041215182839);
INSERT INTO MailTrap VALUES ('SANBELLA@MS17.HINET.NET','smtp01.aptg.net','202.178.162.117',1,0,0,20041215182842);
INSERT INTO MailTrap VALUES ('www55772000@yahoo.com.tw','smtp01.aptg.net','65.205.19.85',1,0,7266,20041215182843);
INSERT INTO MailTrap VALUES ('cheng588@seed.net.tw','smtp01.aptg.net','139.175.54.16',1,0,1976842,20041215182842);
INSERT INTO MailTrap VALUES ('j04w@e-lifeisset.com','smtp01.aptg.net','66.55.189.18',1,0,0,20041215182840);
INSERT INTO MailTrap VALUES ('breezchi@yahoo.com.tw','smtp01.aptg.net','202.43.200.212',1,0,0,20041215182836);
INSERT INTO MailTrap VALUES ('duming@aptg.net','smtp01.aptg.net','219.91.117.78',1,0,0,20041215182833);
INSERT INTO MailTrap VALUES ('cheng588@seed.net.tw','smtp01.aptg.net','139.175.54.12',1,0,164740,20041215182834);
INSERT INTO MailTrap VALUES ('cassie1226@aptg.net','smtp01.aptg.net','222.250.140.177',1,0,0,20041215182833);
INSERT INTO MailTrap VALUES ('ssdesign@aptg.net','smtp01.aptg.net','210.85.20.133',1,0,0,20041215182833);
INSERT INTO MailTrap VALUES ('cm267163@aptg.net','smtp01.aptg.net','222.250.19.3',1,0,0,20041215182833);
INSERT INTO MailTrap VALUES ('emily@vaxcel.com.tw','smtp01.aptg.net','210.201.152.209',2,0,0,20041215182828);
INSERT INTO MailTrap VALUES ('changlans@aptg.net','smtp01.aptg.net','222.250.132.197',4,0,0,20041215182737);
INSERT INTO MailTrap VALUES ('ysl2002@aptg.net','smtp01.aptg.net','219.91.114.239',1,0,0,20041215182830);
INSERT INTO MailTrap VALUES ('carmemonty@terra.es','smtp01.aptg.net','213.98.168.188',1,0,0,20041215182827);
INSERT INTO MailTrap VALUES ('kelly3296@yahoo.com.tw','smtp01.aptg.net','202.43.200.186',1,0,0,20041215182827);
INSERT INTO MailTrap VALUES ('','smtp01.aptg.net','222.250.93.44',1,0,0,20041215182827);
INSERT INTO MailTrap VALUES ('','smtp01.aptg.net','222.250.93.44',1,0,0,20041215182826);
INSERT INTO MailTrap VALUES ('TSUN@CSCTW.JNJ.COM','smtp01.aptg.net','148.177.192.40',1,0,0,20041215182825);
INSERT INTO MailTrap VALUES ('kuo.veelin@hccatv.etmc.com.tw','smtp01.aptg.net','202.178.224.202',1,0,0,20041215182825);
INSERT INTO MailTrap VALUES ('prettynecute@yahoo.com.tw','smtp01.aptg.net','202.43.200.130',1,0,0,20041215182824);
INSERT INTO MailTrap VALUES ('bhble.bhble@rayman.com.cn','smtp01.aptg.net','61.159.253.224',1,0,0,20041215182816);
INSERT INTO MailTrap VALUES ('mridea02@aptg.net','smtp01.aptg.net','210.85.154.5',1,0,0,20041215182823);
INSERT INTO MailTrap VALUES ('gary0498@ms41.hinet.net','smtp01.aptg.net','210.85.114.147',1,0,0,20041215182823);
INSERT INTO MailTrap VALUES ('owner-promote-outgoing@mrhanky.ale.com.tw','smtp01.aptg.net','210.17.16.88',1,0,6473,20041215182816);
INSERT INTO MailTrap VALUES ('n2232479@aptg.net','smtp01.aptg.net','210.85.239.146',4,0,0,20041215182606);
INSERT INTO MailTrap VALUES ('duming@aptg.net','smtp01.aptg.net','219.91.117.78',1,0,0,20041215182816);
INSERT INTO MailTrap VALUES ('perfume1026@yahoo.com','smtp01.aptg.net','206.190.38.226',1,0,0,20041215182814);
INSERT INTO MailTrap VALUES ('service@kai-sa.com','smtp01.aptg.net','218.184.168.219',2,0,0,20041215182813);
INSERT INTO MailTrap VALUES ('duming@aptg.net','smtp01.aptg.net','219.91.117.78',1,0,0,20041215182806);
INSERT INTO MailTrap VALUES ('root@oms07.104.com.tw','smtp01.aptg.net','202.8.15.66',1,0,15356,20041215182811);
INSERT INTO MailTrap VALUES ('vccl@aptg.net','smtp01.aptg.net','202.178.164.98',3,0,0,20041215182801);
INSERT INTO MailTrap VALUES ('rutkui094@yahoo.com.tw','smtp01.aptg.net','80.59.18.213',1,0,0,20041215182805);
INSERT INTO MailTrap VALUES ('hansen@aptg.com.tw','smtp01.aptg.net','210.200.106.90',1,0,0,20041215182805);
INSERT INTO MailTrap VALUES ('zhi703@yahoo.com.tw','smtp01.aptg.net','202.43.200.196',1,0,0,20041215182803);
INSERT INTO MailTrap VALUES ('joysewu@hotmail.com','smtp01.aptg.net','64.4.31.181',1,0,13988,20041215182802);
INSERT INTO MailTrap VALUES ('nobody@www.egohouse.com.tw','smtp01.aptg.net','202.178.252.252',1,0,22962,20041215182801);
INSERT INTO MailTrap VALUES ('carolin@synnex.com.tw','smtp01.aptg.net','203.75.218.71',1,0,19306,20041215182759);
INSERT INTO MailTrap VALUES ('hero490416@pchome.com.tw','smtp01.aptg.net','222.250.202.8',12,0,0,20041215182757);
INSERT INTO MailTrap VALUES ('duming@aptg.net','smtp01.aptg.net','219.91.117.78',1,0,0,20041215182753);
INSERT INTO MailTrap VALUES ('root@epaper3.yuanta.com.tw','smtp01.aptg.net','211.72.253.216',1,0,0,20041215182756);
INSERT INTO MailTrap VALUES ('mridea02@aptg.net','smtp01.aptg.net','210.85.154.5',1,0,0,20041215182755);
INSERT INTO MailTrap VALUES ('chifar.chifar@msa.hinet.net','smtp01.aptg.net','168.95.4.127',1,0,158813,20041215182754);
INSERT INTO MailTrap VALUES ('cuttingboard@shienming.com.tw','smtp01.aptg.net','222.250.84.41',1,0,0,20041215182743);
INSERT INTO MailTrap VALUES ('yoyoma311@aptg.net','smtp01.aptg.net','222.250.112.55',1,0,0,20041215182744);
INSERT INTO MailTrap VALUES ('SANBELLA@MS17.HINET.NET','smtp01.aptg.net','202.178.162.117',1,0,0,20041215182751);
INSERT INTO MailTrap VALUES ('skyed@aptg.net','smtp01.aptg.net','218.34.227.72',1,0,0,20041215182743);
INSERT INTO MailTrap VALUES ('andrea-huang@patta.com.tw','smtp01.aptg.net','211.23.253.196',1,0,0,20041215182748);
INSERT INTO MailTrap VALUES ('sandy@mail.cyc.edu.tw','smtp01.aptg.net','61.230.115.158',1,0,0,20041215182744);
INSERT INTO MailTrap VALUES ('duming@aptg.net','smtp01.aptg.net','219.91.117.78',1,0,0,20041215182738);
INSERT INTO MailTrap VALUES ('SANBELLA@MS17.HINET.NET','smtp01.aptg.net','202.178.162.117',1,0,0,20041215182743);
INSERT INTO MailTrap VALUES ('cfotyl@aptg.net','smtp01.aptg.net','218.184.119.126',46,0,0,20041215182741);
INSERT INTO MailTrap VALUES ('paochingwang@aptg.net','smtp01.aptg.net','210.85.142.47',1,0,0,20041215182742);
INSERT INTO MailTrap VALUES ('service@kai-sa.com','smtp01.aptg.net','218.184.168.219',2,0,0,20041215182740);
INSERT INTO MailTrap VALUES ('197707@aptg.net','smtp01.aptg.net','202.43.196.226',1,0,0,20041215182740);
INSERT INTO MailTrap VALUES ('havicosaigon@hcm.vnn.vn','smtp01.aptg.net','221.132.20.65',1,0,0,20041215182733);
INSERT INTO MailTrap VALUES ('ted911@aptg.net','smtp01.aptg.net','210.85.170.152',18,0,0,20041215182733);
INSERT INTO MailTrap VALUES ('mridea02@aptg.net','smtp01.aptg.net','210.85.154.5',1,0,0,20041215182734);
INSERT INTO MailTrap VALUES ('tracie@taiwanpcc.com.tw','smtp01.aptg.net','61.57.232.3',1,0,113085,20041215182730);
INSERT INTO MailTrap VALUES ('a6331203@ms21.hinet.net','smtp01.aptg.net','168.95.4.138',1,0,207762,20041215182733);
INSERT INTO MailTrap VALUES ('ruruyy31@yahoo.com.tw','smtp01.aptg.net','210.82.89.37',1,0,0,20041215182733);
INSERT INTO MailTrap VALUES ('lun2417@sksc.com.tw','smtp01.aptg.net','61.67.7.36',1,0,241288,20041215182730);
INSERT INTO MailTrap VALUES ('kevin@digimaster.com.tw','smtp01.aptg.net','61.62.128.178',1,0,0,20041215182730);
INSERT INTO MailTrap VALUES ('lydia13_yu@hotmail.com','smtp01.aptg.net','210.66.111.150',1,0,0,20041215182727);
INSERT INTO MailTrap VALUES ('changlans@aptg.net','smtp01.aptg.net','222.250.132.197',1,0,0,20041215182726);
INSERT INTO MailTrap VALUES ('duming@aptg.net','smtp01.aptg.net','219.91.117.78',1,0,0,20041215182720);
INSERT INTO MailTrap VALUES ('a9271605@st2.fju.edu.tw','smtp01.aptg.net','218.184.36.114',1,0,0,20041215182725);
INSERT INTO MailTrap VALUES ('jimfa@aptg.net','smtp01.aptg.net','218.184.138.28',1,0,0,20041215182637);
INSERT INTO MailTrap VALUES ('sdk-docl10nbugs@java.sun.com','smtp01.aptg.net','220.150.14.130',1,0,0,20041215182724);
INSERT INTO MailTrap VALUES ('nico1979@aptg.net','smtp01.aptg.net','202.178.138.13',20,0,0,20041215182647);
INSERT INTO MailTrap VALUES ('kay_ch@pchome.com.tw','smtp01.aptg.net','210.85.215.253',3,0,0,20041215182538);
INSERT INTO MailTrap VALUES ('jimfa@aptg.net','smtp01.aptg.net','218.184.138.28',1,0,0,20041215182716);
INSERT INTO MailTrap VALUES ('kuo.veelin@hccatv.etmc.com.tw','smtp01.aptg.net','202.178.224.202',2,0,0,20041215182720);
INSERT INTO MailTrap VALUES ('kelly3296@yahoo.com.tw','smtp01.aptg.net','202.43.200.183',1,0,0,20041215182719);
INSERT INTO MailTrap VALUES ('duming@aptg.net','smtp01.aptg.net','219.91.117.78',1,0,0,20041215182706);
INSERT INTO MailTrap VALUES ('service@kai-sa.com','smtp01.aptg.net','218.184.168.219',2,0,0,20041215182717);
INSERT INTO MailTrap VALUES ('cutekikilu@yahoo.com.tw','smtp01.aptg.net','61.228.61.66',1,0,0,20041215182717);
INSERT INTO MailTrap VALUES ('yggFU@mailfb.com','smtp01.aptg.net','203.87.131.43',1,0,0,20041215182715);
INSERT INTO MailTrap VALUES ('we123562003@yahoo.com.tw','smtp01.aptg.net','209.203.6.46',1,0,7334,20041215182714);
INSERT INTO MailTrap VALUES ('chioubob@aptg.net','smtp01.aptg.net','210.85.126.111',7,0,0,20041215182645);
INSERT INTO MailTrap VALUES ('HCK@mail.gigatek.com.tw','smtp01.aptg.net','61.219.92.160',1,0,0,20041215182652);
INSERT INTO MailTrap VALUES ('helenhou@aptg.net','smtp01.aptg.net','218.34.152.172',2,0,0,20041215182710);
INSERT INTO MailTrap VALUES ('¦°Â`¦³¼Öºô@ms.xtime.com.tw','smtp01.aptg.net','211.23.198.252',1,0,0,20041215182708);
INSERT INTO MailTrap VALUES ('zoe@jupitex.com.hk','smtp01.aptg.net','202.140.165.85',1,0,0,20041215182703);
INSERT INTO MailTrap VALUES ('g988.p399@msa.hinet.net','smtp01.aptg.net','168.95.4.101',1,0,5539,20041215182708);
INSERT INTO MailTrap VALUES ('iq2w100s@pchome.com.tw','smtp01.aptg.net','218.4.190.162',1,0,3214,20041215182703);
INSERT INTO MailTrap VALUES ('h2sw44108@ms47.hinet.net','smtp01.aptg.net','218.4.190.162',1,0,3193,20041215182703);
INSERT INTO MailTrap VALUES ('hggd124919prht@viw.bsnted.com','smtp01.aptg.net','66.54.93.243',1,0,0,20041215182702);
INSERT INTO MailTrap VALUES ('e01529@mail.trtc.com.tw','smtp01.aptg.net','220.130.9.22',1,0,24139,20041215182701);
INSERT INTO MailTrap VALUES ('n2232479@aptg.net','smtp01.aptg.net','210.85.239.146',4,0,0,20041215182525);
INSERT INTO MailTrap VALUES ('mridea02@aptg.net','smtp01.aptg.net','210.85.154.5',1,0,0,20041215182658);
INSERT INTO MailTrap VALUES ('karen@simmonstaiwan.com.tw','smtp01.aptg.net','210.242.13.252',1,0,79273,20041215182654);
INSERT INTO MailTrap VALUES ('just-karen@justshop.com.tw','smtp01.aptg.net','210.85.63.165',1,0,0,20041215182631);
INSERT INTO MailTrap VALUES ('water0804@aptg.net','smtp01.aptg.net','218.34.71.16',1,0,0,20041215182651);
INSERT INTO MailTrap VALUES ('ryan@maistek.com.tw','smtp01.aptg.net','210.201.113.52',1,0,0,20041215182649);
INSERT INTO MailTrap VALUES ('edith0020@doramail.com','smtp01.aptg.net','219.81.128.121',1,0,0,20041215182646);
INSERT INTO MailTrap VALUES ('hui0830@ms68.hinet.net','smtp01.aptg.net','219.91.19.9',1,0,0,20041215182649);
INSERT INTO MailTrap VALUES ('duming@aptg.net','smtp01.aptg.net','219.91.117.78',1,0,0,20041215182644);
INSERT INTO MailTrap VALUES ('ysunflower@aptg.net','smtp01.aptg.net','210.85.20.11',1,0,0,20041215183217);
INSERT INTO MailTrap VALUES ('sh.seven@msa.hinet.net','smtp01.aptg.net','222.250.107.4',27,0,0,20041215183135);
INSERT INTO MailTrap VALUES ('veral@seed.net.tw','smtp01.aptg.net','218.34.14.57',1,0,0,20041215183212);
INSERT INTO MailTrap VALUES ('kim@gtpg.com.tw','smtp01.aptg.net','218.34.215.132',1,0,0,20041215183213);
INSERT INTO MailTrap VALUES ('mridea02@aptg.net','smtp01.aptg.net','210.85.154.5',1,0,0,20041215183211);
INSERT INTO MailTrap VALUES ('ritamok@ms3.hinet.net','smtp01.aptg.net','210.85.18.69',1,0,0,20041215183150);
INSERT INTO MailTrap VALUES ('breezchi@yahoo.com.tw','smtp01.aptg.net','202.43.200.212',1,0,0,20041215183209);
INSERT INTO MailTrap VALUES ('betty@minkatpe.com.tw','smtp01.aptg.net','211.23.169.218',1,0,0,20041215183208);
INSERT INTO MailTrap VALUES ('','smtp01.aptg.net','218.34.71.104',1,0,0,20041215183209);
INSERT INTO MailTrap VALUES ('ape25570@anet.net.tw','smtp01.aptg.net','61.31.233.95',1,0,19886,20041215183209);
INSERT INTO MailTrap VALUES ('duming@aptg.net','smtp01.aptg.net','219.91.117.78',1,0,0,20041215183201);
INSERT INTO MailTrap VALUES ('ag005189@mail.apol.com.tw','smtp01.aptg.net','210.200.211.21',1,0,0,20041215183208);
INSERT INTO MailTrap VALUES ('mridea02@aptg.net','smtp01.aptg.net','210.85.154.5',1,0,0,20041215183207);
INSERT INTO MailTrap VALUES ('clever@ms94.url.com.tw','smtp01.aptg.net','210.85.128.21',3,0,0,20041215183205);
INSERT INTO MailTrap VALUES ('ydsheh@aptg.net','smtp01.aptg.net','218.34.100.81',1,0,0,20041215182646);
INSERT INTO MailTrap VALUES ('Eric_yeh@o-ta.com.tw','smtp01.aptg.net','61.218.207.41',1,0,7217,20041215183205);
INSERT INTO MailTrap VALUES ('service@sogo-card.com.tw','smtp01.aptg.net','203.70.35.56',1,0,31863,20041215183201);
INSERT INTO MailTrap VALUES ('abc6655@aptg.net','smtp01.aptg.net','222.156.104.74',1,0,0,20041215183157);
INSERT INTO MailTrap VALUES ('czc13@aptg.net','smtp01.aptg.net','202.178.154.134',6,0,0,20041215182643);
INSERT INTO MailTrap VALUES ('a9005529@aptg.net','smtp01.aptg.net','218.184.42.209',1,0,0,20041215183157);
INSERT INTO MailTrap VALUES ('duming@aptg.net','smtp01.aptg.net','219.91.117.78',1,0,0,20041215183151);
INSERT INTO MailTrap VALUES ('cm267163@aptg.net','smtp01.aptg.net','222.250.19.3',1,0,0,20041215183155);
INSERT INTO MailTrap VALUES ('mridea02@aptg.net','smtp01.aptg.net','210.85.154.5',1,0,0,20041215182642);
INSERT INTO MailTrap VALUES ('craftech@aptg.net','smtp01.aptg.net','219.91.21.18',1,0,0,20041215183152);
INSERT INTO MailTrap VALUES ('auto-service@fridae.com','smtp01.aptg.net','202.172.239.81',1,0,71300,20041215182638);
INSERT INTO MailTrap VALUES ('nhhuichi@aptg.net','smtp01.aptg.net','210.85.74.153',1,0,0,20041215183154);
INSERT INTO MailTrap VALUES ('duming@aptg.net','smtp01.aptg.net','219.91.117.78',1,0,0,20041215183147);
INSERT INTO MailTrap VALUES ('1111111111@ms12.hinet.net','smtp01.aptg.net','66.101.24.161',1,0,5674,20041215182641);
INSERT INTO MailTrap VALUES ('mikecheng@lsc.net.tw','smtp01.aptg.net','222.250.108.177',1,0,0,20041215183149);
INSERT INTO MailTrap VALUES ('n2232479@aptg.net','smtp01.aptg.net','210.85.239.146',4,0,0,20041215183045);
INSERT INTO MailTrap VALUES ('eitha01@ms72.hinet.net','smtp01.aptg.net','218.35.33.33',1,0,0,20041215183147);
INSERT INTO MailTrap VALUES ('mridea02@aptg.net','smtp01.aptg.net','210.85.154.5',1,0,0,20041215182639);
INSERT INTO MailTrap VALUES ('longwang@seed.net.tw','smtp01.aptg.net','210.58.145.196',4,0,0,20041215182626);
INSERT INTO MailTrap VALUES ('eitha01@ms72.hinet.net','smtp01.aptg.net','218.35.33.33',1,0,0,20041215183146);
INSERT INTO MailTrap VALUES ('cia1234@aptg.net','smtp01.aptg.net','222.250.201.91',1,0,0,20041215183145);
INSERT INTO MailTrap VALUES ('eitha01@ms72.hinet.net','smtp01.aptg.net','218.35.33.33',1,0,0,20041215183145);
INSERT INTO MailTrap VALUES ('','smtp01.aptg.net','203.75.191.194',1,0,20309,20041215182639);
INSERT INTO MailTrap VALUES ('eitha01@ms72.hinet.net','smtp01.aptg.net','218.35.33.33',1,0,0,20041215183143);
INSERT INTO MailTrap VALUES ('eitha01@ms72.hinet.net','smtp01.aptg.net','218.35.33.33',1,0,0,20041215183142);
INSERT INTO MailTrap VALUES ('duming@aptg.net','smtp01.aptg.net','219.91.117.78',1,0,0,20041215182631);
INSERT INTO MailTrap VALUES ('annyjun@ms58.hinet.net','smtp01.aptg.net','210.202.152.9',1,0,0,20041215183133);
INSERT INTO MailTrap VALUES ('bevin@aptg.net','smtp01.aptg.net','210.85.14.182',1,0,0,20041215183140);
INSERT INTO MailTrap VALUES ('niche@seed.net.tw','smtp01.aptg.net','218.184.56.79',1,0,0,20041215183139);
INSERT INTO MailTrap VALUES ('lydia13_yu@hotmail.com','smtp01.aptg.net','210.66.111.150',1,0,0,20041215182635);
INSERT INTO MailTrap VALUES ('kelly3296@yahoo.com.tw','smtp01.aptg.net','202.43.200.182',1,0,0,20041215183138);
INSERT INTO MailTrap VALUES ('ufjl2232@ms12.hinet.net','smtp01.aptg.net','218.35.5.27',1,0,0,20041215183133);
INSERT INTO MailTrap VALUES ('phee_boon_kang@alum.mit.edu','smtp01.aptg.net','210.85.162.36',1,0,0,20041215183136);
INSERT INTO MailTrap VALUES ('editor@mail.chinatimes.com.tw','smtp01.aptg.net','61.230.101.4',1,0,0,20041215183133);
INSERT INTO MailTrap VALUES ('limits9@aptg.net','smtp01.aptg.net','222.250.164.17',14,0,0,20041215183121);
INSERT INTO MailTrap VALUES ('curtis928@mail.apol.com.tw','smtp01.aptg.net','210.200.211.21',1,0,0,20041215183131);
INSERT INTO MailTrap VALUES ('duming@aptg.net','smtp01.aptg.net','219.91.117.78',1,0,0,20041215183127);
INSERT INTO MailTrap VALUES ('mato@aptg.net','smtp01.aptg.net','219.91.88.45',46,0,0,20041215183125);
INSERT INTO MailTrap VALUES ('tiabta@ms17.hinet.net','smtp01.aptg.net','210.85.21.78',1,0,0,20041215182623);
INSERT INTO MailTrap VALUES ('thomas@vaxcel.com.tw','smtp01.aptg.net','210.201.152.209',8,0,0,20041215182630);
INSERT INTO MailTrap VALUES ('mridea02@aptg.net','smtp01.aptg.net','210.85.154.5',1,0,0,20041215183128);
INSERT INTO MailTrap VALUES ('sunchief@ms35.hinet.net','smtp01.aptg.net','218.35.24.150',1,0,0,20041215183104);
INSERT INTO MailTrap VALUES ('cm267163@aptg.net','smtp01.aptg.net','222.250.19.3',1,0,0,20041215183124);
INSERT INTO MailTrap VALUES ('duming@aptg.net','smtp01.aptg.net','219.91.117.78',1,0,0,20041215182624);
INSERT INTO MailTrap VALUES ('changlans@aptg.net','smtp01.aptg.net','222.250.132.197',4,0,0,20041215182615);
INSERT INTO MailTrap VALUES ('abcd001@aptg.net','smtp01.aptg.net','202.178.158.160',1,0,0,20041215183053);
INSERT INTO MailTrap VALUES ('cm267163@aptg.net','smtp01.aptg.net','222.250.19.3',1,0,0,20041215183122);
INSERT INTO MailTrap VALUES ('mridea02@aptg.net','smtp01.aptg.net','210.85.154.5',1,0,0,20041215183119);
INSERT INTO MailTrap VALUES ('fulcase@ms8.hinet.net','smtp01.aptg.net','218.184.78.23',1,0,0,20041215183117);
INSERT INTO MailTrap VALUES ('fm0312@cathaylife.com.tw','smtp01.aptg.net','202.154.192.89',1,0,0,20041215183117);
INSERT INTO MailTrap VALUES ('lbuaecupzzhxlc@inwind.it','smtp01.aptg.net','168.95.4.28',1,0,1251,20041215182630);
INSERT INTO MailTrap VALUES ('sharon_family@yahoo.com.tw','smtp01.aptg.net','210.58.33.199',1,0,0,20041215182623);
INSERT INTO MailTrap VALUES ('duming@aptg.net','smtp01.aptg.net','219.91.117.78',1,0,0,20041215183114);
INSERT INTO MailTrap VALUES ('trista33@aptg.net','smtp01.aptg.net','218.184.132.210',1,0,0,20041215182626);
INSERT INTO MailTrap VALUES ('billy1213@aptg.net','smtp01.aptg.net','218.34.180.79',1,0,0,20041215182625);
INSERT INTO MailTrap VALUES ('llhtchekqqdt@kali.com.cn','smtp01.aptg.net','61.252.153.251',1,0,2472,20041215183115);
INSERT INTO MailTrap VALUES ('king_wen@aptg.net','smtp01.aptg.net','210.58.18.153',1,0,0,20041215183114);
INSERT INTO MailTrap VALUES ('czc13@aptg.net','smtp01.aptg.net','202.178.154.134',1,0,0,20041215182608);
INSERT INTO MailTrap VALUES ('bizoo99@aptg.net','smtp01.aptg.net','202.43.196.226',1,0,0,20041215183114);
INSERT INTO MailTrap VALUES ('yuh@aptg.net','smtp01.aptg.net','202.178.192.16',1,0,0,20041215182624);
INSERT INTO MailTrap VALUES ('robertc@aptg.net','smtp01.aptg.net','218.34.143.86',1,0,0,20041215183110);
INSERT INTO MailTrap VALUES ('0o1o8.db81k@yahoo.com','smtp01.aptg.net','61.252.153.251',1,0,2711,20041215183110);
INSERT INTO MailTrap VALUES ('haoxin@aptg.net','smtp01.aptg.net','222.156.101.205',1,0,0,20041215182528);
INSERT INTO MailTrap VALUES ('js529@aptg.net','smtp01.aptg.net','202.178.161.86',1,0,0,20041215182621);
INSERT INTO MailTrap VALUES ('service@kai-sa.com','smtp01.aptg.net','218.184.168.219',2,0,0,20041215182621);
INSERT INTO MailTrap VALUES ('fasfd@21cn.com','smtp01.aptg.net','219.133.129.109',1,0,0,20041215182620);
INSERT INTO MailTrap VALUES ('susan@cc.chit.edu.tw','smtp01.aptg.net','192.192.231.194',1,0,0,20041215183107);
INSERT INTO MailTrap VALUES ('whj571@yahoo.com.tw','smtp01.aptg.net','202.43.201.131',1,0,0,20041215183106);
INSERT INTO MailTrap VALUES ('nolimits@seed.net.tw','smtp01.aptg.net','139.175.54.121',1,0,2237,20041215183106);
INSERT INTO MailTrap VALUES ('lance312@aptg.net','smtp01.aptg.net','218.34.198.49',3,0,0,20041215183103);
INSERT INTO MailTrap VALUES ('forestln@aptg.net','smtp01.aptg.net','222.250.1.23',1,0,0,20041215182620);
INSERT INTO MailTrap VALUES ('craftech@ms13.hinet.net','smtp01.aptg.net','219.91.21.18',2,0,0,20041215183104);
INSERT INTO MailTrap VALUES ('cm267163@aptg.net','smtp01.aptg.net','222.250.19.3',1,0,0,20041215183102);
INSERT INTO MailTrap VALUES ('duming@aptg.net','smtp01.aptg.net','219.91.117.78',1,0,0,20041215182615);
INSERT INTO MailTrap VALUES ('kolino@aptg.net','smtp01.aptg.net','222.250.84.71',1,0,0,20041215182619);
INSERT INTO MailTrap VALUES ('harbour.tpe@msa.hinet.net','smtp01.aptg.net','210.203.75.23',1,0,0,20041215183101);
INSERT INTO MailTrap VALUES ('duming@aptg.net','smtp01.aptg.net','219.91.117.78',1,0,0,20041215183056);
INSERT INTO MailTrap VALUES ('anderw@aptg.net','smtp01.aptg.net','222.250.50.158',1,0,0,20041215183057);
INSERT INTO MailTrap VALUES ('kay_ch@pchome.com.tw','smtp01.aptg.net','210.85.215.253',2,0,0,20041215183004);
INSERT INTO MailTrap VALUES ('sta7249888@aptg.net','smtp01.aptg.net','222.250.117.48',1,0,0,20041215183054);
INSERT INTO MailTrap VALUES ('richna@aptg.net','smtp01.aptg.net','218.184.0.20',2,0,0,20041215183055);
INSERT INTO MailTrap VALUES ('buttcorp@ms33.hinet.net','smtp01.aptg.net','218.184.145.62',2,0,0,20041215182615);
INSERT INTO MailTrap VALUES ('robert02@aptg.net','smtp01.aptg.net','210.85.4.171',2,0,0,20041215183038);
INSERT INTO MailTrap VALUES ('csgt@ms39.hinet.net','smtp01.aptg.net','218.34.77.76',1,0,0,20041215183054);
INSERT INTO MailTrap VALUES ('mikihara@aptg.net','smtp01.aptg.net','218.184.20.235',1,0,0,20041215182614);
INSERT INTO MailTrap VALUES ('plus101@aptg.net','smtp01.aptg.net','210.85.98.90',1,0,0,20041215182614);
INSERT INTO MailTrap VALUES ('sh.seven@msa.hinet.net','smtp01.aptg.net','222.250.107.4',27,0,0,20041215183052);
INSERT INTO MailTrap VALUES ('mename@aptg.net','smtp01.aptg.net','219.91.108.159',44,0,0,20041215183050);
INSERT INTO MailTrap VALUES ('service@kai-sa.com','smtp01.aptg.net','218.184.168.219',2,0,0,20041215182613);
INSERT INTO MailTrap VALUES ('mylittawong@welltruth.com','smtp01.aptg.net','210.85.194.125',2,0,0,20041215182553);
INSERT INTO MailTrap VALUES ('jessie@mail.simontown.com.tw','smtp01.aptg.net','61.222.49.66',1,0,0,20041215183048);
INSERT INTO MailTrap VALUES ('neby@ms23.hinet.net','smtp01.aptg.net','210.85.44.175',1,0,0,20041215183047);
INSERT INTO MailTrap VALUES ('yrs@aptg.net','smtp01.aptg.net','202.178.168.143',1,0,0,20041215182924);
INSERT INTO MailTrap VALUES ('mridea02@aptg.net','smtp01.aptg.net','210.85.154.5',1,0,0,20041215182612);
INSERT INTO MailTrap VALUES ('n2232479@aptg.net','smtp01.aptg.net','210.85.239.146',4,0,0,20041215182854);
INSERT INTO MailTrap VALUES ('cm267163@aptg.net','smtp01.aptg.net','222.250.19.3',1,0,0,20041215183043);
INSERT INTO MailTrap VALUES ('2228@ms2.seeder.net','smtp01.aptg.net','210.58.147.133',1,0,0,20041215182612);
INSERT INTO MailTrap VALUES ('ponny.lee@msa.hinet.net','smtp01.aptg.net','61.230.119.62',1,0,0,20041215182610);
INSERT INTO MailTrap VALUES ('freight.dept@msa.hinet.net','smtp01.aptg.net','210.85.12.156',3,0,0,20041215182943);
INSERT INTO MailTrap VALUES ('duming@aptg.net','smtp01.aptg.net','219.91.117.78',1,0,0,20041215182603);
INSERT INTO MailTrap VALUES ('SPro2gAW@hotmail.com','smtp01.aptg.net','210.58.102.139',7,1,0,20041215183037);
INSERT INTO MailTrap VALUES ('gaenet@ms75.hinet.net','smtp01.aptg.net','218.35.36.121',1,0,0,20041215182957);
INSERT INTO MailTrap VALUES ('5478@aptg.net','smtp01.aptg.net','219.91.120.97',32,0,0,20041215182607);
INSERT INTO MailTrap VALUES ('jacky829@ms10.hinet.net','smtp01.aptg.net','210.85.8.242',1,0,0,20041215183014);
INSERT INTO MailTrap VALUES ('kpitwn2@ms46.hinet.net','smtp01.aptg.net','211.21.88.99',1,0,0,20041215183036);
INSERT INTO MailTrap VALUES ('miles@ubfb.com.tw','smtp01.aptg.net','220.130.137.168',1,0,0,20041215182607);
INSERT INTO MailTrap VALUES ('hsien.s668@msa.hinet.net','smtp01.aptg.net','168.95.4.147',1,0,1615,20041215182607);
INSERT INTO MailTrap VALUES ('duming@aptg.net','smtp01.aptg.net','219.91.117.78',1,0,0,20041215183032);
INSERT INTO MailTrap VALUES ('5478@aptg.net','smtp01.aptg.net','219.91.120.97',32,0,0,20041215182602);
INSERT INTO MailTrap VALUES ('ii138132@aptg.net','smtp01.aptg.net','218.34.189.184',31,0,0,20041215183033);
INSERT INTO MailTrap VALUES ('diana666700@aptg.net','smtp01.aptg.net','210.58.159.125',1,0,0,20041215182600);
INSERT INTO MailTrap VALUES ('anthony-kang@citra.com.tw','smtp01.aptg.net','61.141.167.60',1,0,0,20041215182555);
INSERT INTO MailTrap VALUES ('mridea02@aptg.net','smtp01.aptg.net','210.85.154.5',1,0,0,20041215183033);
INSERT INTO MailTrap VALUES ('js529@aptg.net','smtp01.aptg.net','202.178.161.86',1,0,0,20041215182553);
INSERT INTO MailTrap VALUES ('jf5559@aptg.net','smtp01.aptg.net','222.250.48.6',1,0,0,20041215183030);
INSERT INTO MailTrap VALUES ('pk1@ms21.url.com.tw','smtp01.aptg.net','61.228.89.222',1,0,0,20041215183028);
INSERT INTO MailTrap VALUES ('kelly3296@yahoo.com.tw','smtp01.aptg.net','202.43.200.189',1,0,0,20041215182553);
INSERT INTO MailTrap VALUES ('cttc@aptg.net','smtp01.aptg.net','210.85.30.42',2,0,0,20041215183026);
INSERT INTO MailTrap VALUES ('tienkuei@ebtnet.net.','smtp01.aptg.net','222.250.190.60',10,0,0,20041215183020);
INSERT INTO MailTrap VALUES ('aey9919@aptg.net','smtp01.aptg.net','210.85.128.19',1,0,0,20041215183027);
INSERT INTO MailTrap VALUES ('limits9@aptg.net','smtp01.aptg.net','222.250.164.17',13,0,0,20041215182933);
INSERT INTO MailTrap VALUES ('n2232479@aptg.net','smtp01.aptg.net','210.85.239.146',4,0,0,20041215182826);
INSERT INTO MailTrap VALUES ('sunchief@ms35.hinet.net','smtp01.aptg.net','218.35.24.150',1,0,0,20041215183006);
INSERT INTO MailTrap VALUES ('MVZ3UfXoET@gcn.net.tw','smtp01.aptg.net','210.58.102.139',10,0,0,20041215183026);
INSERT INTO MailTrap VALUES ('sonny222@aptg.net','smtp01.aptg.net','202.43.196.226',1,0,0,20041215183027);
INSERT INTO MailTrap VALUES ('TSUN@CSCTW.JNJ.COM','smtp01.aptg.net','148.177.192.40',1,0,0,20041215182552);
INSERT INTO MailTrap VALUES ('www@a-grade.com','smtp01.aptg.net','210.85.89.227',1,0,0,20041215182550);
INSERT INTO MailTrap VALUES ('mridea02@aptg.net','smtp01.aptg.net','210.85.154.5',1,0,0,20041215183026);
INSERT INTO MailTrap VALUES ('joanne9319@aptg.net','smtp01.aptg.net','210.85.5.79',2,0,0,20041215183019);
INSERT INTO MailTrap VALUES ('member@dks.com.tw','smtp01.aptg.net','168.95.4.32',1,0,5515,20041215182552);
INSERT INTO MailTrap VALUES ('violayeh@aptg.net','smtp01.aptg.net','218.35.13.12',1,0,0,20041215182540);
INSERT INTO MailTrap VALUES ('xiaoyun-lin@umail.hinet.net','smtp01.aptg.net','218.35.12.147',2,0,0,20041215183025);
INSERT INTO MailTrap VALUES ('spin3d@yahoo.com.tw','smtp01.aptg.net','203.222.4.206',1,0,2067,20041215182546);
INSERT INTO MailTrap VALUES ('victor.fang@ibts.com.tw','smtp01.aptg.net','210.202.219.193',1,0,301109,20041215182543);
INSERT INTO MailTrap VALUES ('harbour.tpe@msa.hinet.net','smtp01.aptg.net','210.203.75.23',1,0,0,20041215182539);
INSERT INTO MailTrap VALUES ('wangbear@aptg.net','smtp01.aptg.net','218.184.137.97',2,0,0,20041215183022);
INSERT INTO MailTrap VALUES ('leohsu@aptg.net','smtp01.aptg.net','219.91.114.250',3,0,0,20041215182534);
INSERT INTO MailTrap VALUES ('duming@aptg.net','smtp01.aptg.net','219.91.117.78',1,0,0,20041215182538);
INSERT INTO MailTrap VALUES ('root@epaper3.yuanta.com.tw','smtp01.aptg.net','211.72.253.216',1,0,0,20041215183023);
INSERT INTO MailTrap VALUES ('7381146@aptg.net','smtp01.aptg.net','210.200.211.21',1,0,0,20041215182540);
INSERT INTO MailTrap VALUES ('service@kai-sa.com','smtp01.aptg.net','218.184.168.219',2,0,0,20041215182537);
INSERT INTO MailTrap VALUES ('woodytao@aptg.net','smtp01.aptg.net','218.35.24.36',3,0,0,20041215182914);
INSERT INTO MailTrap VALUES ('sybil.love@msa.hinet.net','smtp01.aptg.net','168.95.4.161',1,0,8825,20041215183023);
INSERT INTO MailTrap VALUES ('root@oms11.104.com.tw','smtp01.aptg.net','202.8.15.70',1,0,14418,20041215182537);
INSERT INTO MailTrap VALUES ('cowper@aptg.net','smtp01.aptg.net','222.250.108.105',25,0,0,20041215182534);
INSERT INTO MailTrap VALUES ('FdoOvXM@ara.seed.net.tw','smtp01.aptg.net','210.58.102.139',10,0,0,20041215183021);
INSERT INTO MailTrap VALUES ('paochingwang@aptg.net','smtp01.aptg.net','210.85.142.47',1,0,0,20041215182533);
INSERT INTO MailTrap VALUES ('cm267163@aptg.net','smtp01.aptg.net','222.250.19.3',1,0,0,20041215183021);
INSERT INTO MailTrap VALUES ('billy1213@aptg.net','smtp01.aptg.net','218.34.180.79',2,0,0,20041215182534);
INSERT INTO MailTrap VALUES ('45090@edm.etmall.com.tw','smtp01.aptg.net','220.130.115.1',1,0,41325,20041215183019);
INSERT INTO MailTrap VALUES ('jonyen@aptg.net','smtp01.aptg.net','210.85.58.109',1,0,0,20041215182523);
INSERT INTO MailTrap VALUES ('ys5250@aptg.net','smtp01.aptg.net','218.35.24.128',1,0,0,20041215183007);
INSERT INTO MailTrap VALUES ('daily_headlines@ms3.lga2.nytimes.com','smtp01.aptg.net','199.239.138.162',1,0,44129,20041215183014);
INSERT INTO MailTrap VALUES ('mridea02@aptg.net','smtp01.aptg.net','210.85.154.5',1,0,0,20041215182527);
INSERT INTO MailTrap VALUES ('feibihan@aptg.net','smtp01.aptg.net','222.250.164.2',4,0,0,20041215183014);
INSERT INTO MailTrap VALUES ('aey9919@aptg.net','smtp01.aptg.net','210.85.128.19',1,0,0,20041215182524);
INSERT INTO MailTrap VALUES ('jonathan711@aptg.net','smtp01.aptg.net','210.85.226.163',6,0,0,20041215182524);
INSERT INTO MailTrap VALUES ('long5@aptg.net','smtp01.aptg.net','218.35.1.243',1,0,0,20041215183014);
INSERT INTO MailTrap VALUES ('czc13@aptg.net','smtp01.aptg.net','202.178.154.134',6,0,0,20041215182523);
INSERT INTO MailTrap VALUES ('squallinck@aptg.net','smtp01.aptg.net','210.85.160.66',8,0,0,20041215182512);
INSERT INTO MailTrap VALUES ('duming@aptg.net','smtp01.aptg.net','219.91.117.78',1,0,0,20041215182516);
INSERT INTO MailTrap VALUES ('grace_1006@yahoo.com.tw','smtp01.aptg.net','218.184.113.46',1,0,0,20041215183013);
INSERT INTO MailTrap VALUES ('root@oms09.104.com.tw','smtp01.aptg.net','202.8.15.68',1,0,15294,20041215182522);
INSERT INTO MailTrap VALUES ('qqtim2631@yahoo.com.tw','smtp01.aptg.net','211.144.96.204',1,0,0,20041215182518);
INSERT INTO MailTrap VALUES ('tracey.c.huang@philips.com','smtp01.aptg.net','161.88.253.58',1,0,1129358,20041215183006);
INSERT INTO MailTrap VALUES ('roland@axion.com.cn','smtp01.aptg.net','202.109.116.235',1,0,0,20041215182517);
INSERT INTO MailTrap VALUES ('duming@aptg.net','smtp01.aptg.net','219.91.117.78',1,0,0,20041215183005);
INSERT INTO MailTrap VALUES ('cca370@cca.gov.tw','smtp01.aptg.net','210.69.23.252',1,0,0,20041215182516);
INSERT INTO MailTrap VALUES ('mridea02@aptg.net','smtp01.aptg.net','210.85.154.5',1,0,0,20041215183011);
INSERT INTO MailTrap VALUES ('bevin@aptg.net','smtp01.aptg.net','210.85.14.182',2,0,0,20041215183010);
INSERT INTO MailTrap VALUES ('susan@cc.chit.edu.tw','smtp01.aptg.net','192.192.231.194',1,0,0,20041215183010);
INSERT INTO MailTrap VALUES ('czc13@aptg.net','smtp01.aptg.net','202.178.154.134',6,0,0,20041215182500);
INSERT INTO MailTrap VALUES ('cosuntan@ms17.hinet.net','smtp01.aptg.net','210.85.0.227',1,0,0,20041215183010);
INSERT INTO MailTrap VALUES ('alala711@aptg.net','smtp01.aptg.net','222.156.120.245',2,0,0,20041215182500);
INSERT INTO MailTrap VALUES ('tim0088@aptg.net','smtp01.aptg.net','210.200.211.22',1,0,0,20041215183009);
INSERT INTO MailTrap VALUES ('mikecheng@lsc.net.tw','smtp01.aptg.net','222.250.108.177',1,0,0,20041215182514);
INSERT INTO MailTrap VALUES ('r9152122@aptg.net','smtp01.aptg.net','210.200.211.21',12,0,0,20041215183008);
INSERT INTO MailTrap VALUES ('king_wen@aptg.net','smtp01.aptg.net','210.58.18.153',1,0,0,20041215182931);
INSERT INTO MailTrap VALUES ('jaume@monty.es','smtp01.aptg.net','213.98.168.188',1,0,0,20041215182510);
INSERT INTO MailTrap VALUES ('lynn781109@yahoo.com.tw','smtp01.aptg.net','202.43.200.246',1,0,0,20041215182513);
INSERT INTO MailTrap VALUES ('cassie1226@aptg.net','smtp01.aptg.net','222.250.140.177',1,0,0,20041215182511);
INSERT INTO MailTrap VALUES ('yanbruce@ms71.hinet.net','smtp01.aptg.net','210.85.154.213',2,0,0,20041215182510);
INSERT INTO MailTrap VALUES ('bmbla.bmbla@rayman.com.cn','smtp01.aptg.net','61.159.253.224',1,0,0,20041215182505);
INSERT INTO MailTrap VALUES ('kay_ch@pchome.com.tw','smtp01.aptg.net','210.85.215.253',3,0,0,20041215182816);
INSERT INTO MailTrap VALUES ('A.Fleck@hoechstmass.com','smtp01.aptg.net','84.129.64.211',1,0,0,20041215182505);
INSERT INTO MailTrap VALUES ('insiderzedge-return-100@lists.insiderzedge.com','smtp01.aptg.net','64.151.71.156',1,0,0,20041215182507);
INSERT INTO MailTrap VALUES ('cm267163@aptg.net','smtp01.aptg.net','222.250.19.3',1,0,0,20041215183002);
INSERT INTO MailTrap VALUES ('jqZRN@mailfb.com','smtp01.aptg.net','195.243.66.139',1,0,0,20041215182506);
INSERT INTO MailTrap VALUES ('4y69m.b3tpj@yahoo.com','smtp01.aptg.net','200.50.124.130',1,0,0,20041215183001);
INSERT INTO MailTrap VALUES ('phee_boon_kang@alum.mit.edu','smtp01.aptg.net','210.85.162.36',1,0,0,20041215183001);
INSERT INTO MailTrap VALUES ('duming@aptg.net','smtp01.aptg.net','219.91.117.78',1,0,0,20041215182500);
INSERT INTO MailTrap VALUES ('liming@kaiphone.com','smtp01.aptg.net','218.247.38.220',1,0,0,20041215182501);

