#!/usr/local/bin/perl
#=======================
#Writer  : Mico Cheng
#Version : 20041203
#Use for : Monitor Spam Score
#Host    : smtp01/ms04
#========================
#system "gunzip -c /export/home/logs/syslog/syslog.0.gz|grep Hits > /mico/spam_reports/yesterday.log";
system "cat /var/log/syslog|grep Hits > /mico/spam_reports/yesterday.log";
#open LOG,"/mico/spam_reports/yesterday.log" or die "Can't open /mico/spam_reports/yesterday.log:$!\n";
open LOG,"/mico/spam_reports/yesterday.log" or die "Can't open /mico/spam_reports/yesterday.log:$!\n";
while (<LOG>) {
    chomp;
    $line = $_;
    next if ($_ =~ />,<|^$/);
    ($sender,$recipient,$score) = ($line =~/<(.*\@.*)> -> <(.*\@.*)>, Message-ID.*Hits: (\d+\.\d+)$/);
    next if ($sender eq '' || $recipient eq '' || $score eq ''); 
    print "$score\t$sender\t$recipient\n";
}
