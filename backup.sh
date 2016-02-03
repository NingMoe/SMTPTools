#-----------------
# Writer : Mico Cheng
# Version: 2004052501
# use for : backup maillog & etc to EMC Storage (200g_1)
# Host : mx01
#-----------------
#!/usr/bin/bash
backup_me()
{
  TODAY=`date +%Y%m%d`
  YESTERDAY=`expr $TODAY - 1`
  cd /
  cp `/usr/local/bin/find /export/home/logs/syslog/* -name '*.gz' -mtime -1` /mico/tmp/mx01-maillog-`echo $YESTERDAY`.gz 2>/mico/tmp/backup-fail.log|| return $?
  cp `/usr/local/bin/find /export/home/logs/debuglog/* -name 'smtpd*' -mtime -1` /mico/tmp/mx01-smtpd-`echo $YESTERDAY`.gz 2>/mico/tmp/backup-fail.log|| return $?
}

backup_me

/usr/bin/chmod 600 /mico/tmp/mx01-maillog-`echo $YESTERDAY`.gz
/usr/bin/chmod 600 /mico/tmp/mx01-smtpd-`echo $YESTERDAY`.gz
/usr/bin/scp -p /mico/tmp/mx01-maillog-`echo $YESTERDAY`.gz backup_acc@210.200.211.17:/backup/maillog
/usr/bin/scp -p /mico/tmp/mx01-smtpd-`echo $YESTERDAY`.gz backup_acc@210.200.211.17:/backup/maildebug

/usr/bin/rm -f /mico/tmp/*
