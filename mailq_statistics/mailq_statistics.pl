#!/usr/bin/perl
#-----------------------
# Version : 2004051501
# Writer  : Mico Cheng
# Server  : mx02.ebtnet.net
# Use for : Handling the mail queue to log/kill/spam-kill
#-----------------------

if ($#ARGV != 1)
{
     print "================================================================\n";
     print "\n".'usage:    mailq-statistics.pl'." '\x1b[4mRE\x1b[m'"." '\x1b[4mACTION\x1b[m'"."\n";
     print "\n".'example:  mailq-statistics.pl \'reason=.*timed.*mx.pchome.com.tw\''." kill\n";
     print "\n\"ACTION\" must be matched with (kill|stat|spamkill)\n";
     print "================================================================\n\n";
     exit;
}

if ($ARGV[1] !~ /^(kill|stat|spamkill)$/)
{
     print "\n   Error: Action must be matched with (kill|stat|spamkill)\n\n";
     exit;
}
$workdir = "/export/home/mico/mailq_statistics";
$mq_defer_basedir = "/var/postfix/queue/defer/";
$mq_deferred_basedir = "/var/postfix/queue/deferred/";
$mqfile = "$workdir/mailq_statistics.list";
$statfile = "$workdir/stat_statistics.list";
$killfile = "$workdir/kill_statistics.list";

$next = 0;
$match_count = 0;

#------- open mail-statistics.list-----------

open (IN,"mailq |")||die "can't open program:mailq\n";
open MAILQ, ">$mqfile" or warn "Can't create $mqfile:$!\n";
open STATQ, ">$statfile" or warn "Can't create $statfile:$!\n";
open KILLQ, ">$killfile" or warn "Can't create $killfile:$!\n";


#------- This is RE to match the fields------
$spam_re = '(MAILER|unknown|specified|refused|reject|Wrong|look|pchome|host not found|sina)';

$qid_re = '^([A-Z0-9]+) \*?\s+\d+? \w{3}';

$size_re = '^[A-Z0-9]+ \*?\s+(\d+?) \w{3}';

$qtime_re = '((Mon|Tue|Wed|Thu|Fri|Sat|Sun) (Feb|Jen|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) +[0-9]+ [0-2][0-9]:[0-5][0-9]:[0-5][0-9]) ';

$sender_re = '^[A-Z0-9]+ \*?\s+\d+? \w{3} .*:[0-5][0-9]  (.*)$';

$reason_re = '^\s*(.*\(.*\))$';

$recipient_re = '^\s+(.*@.*)$';
#-------------------------------------------
$re = $ARGV[0];
$action = $ARGV[1];
print " RE \t\t= $re\n";
print " ACTION \t= $action\n";
$_ = `/usr/local/bin/queuenum 2>/dev/null|tail -1`;
($total_queue) = /^\s+([0-9][0-9]*)/;
$progress_count = $total_queue;
print " Total Queue \t= $total_queue\n";
 
while(<IN>)
{
    $each_line = $_;
    if(/$qid_re/) {
       if($next == 1) {
           $progress_count--;
           print "                ";
           print "\r progress \t= $progress_count";
           print MAILQ "##########################################\n";
           if ($reason eq '') {
              $reason = "(Waitting to send....)";
           }
           @evelop = ("qid=$qid", "size=$size", "qtime=$qtime", "sender=$sender", "reason=$reason", @recipients);
           @recipients = ();
           undef($qid);
           undef($size);

           undef($qtime);
           undef($sender);
           undef($reason);
           $next = 0;
           foreach (@evelop) {
               print MAILQ "$_\n";
           }
           $evelop_join = join ";", @evelop;
       #-----------  kill mail queue if match RE--------------------
           if ($action eq 'kill') {
               if ($evelop_join =~ /$re/) {
                   $_ = $evelop[0];
                   s/qid=//;
                   $match_count++;
                   &queue_del($_);
               }
           } elsif ($action eq 'stat') {
               next if ($evelop_join !~ /$re/);
                   $match_count++;
                   foreach (@evelop) {
                       if (/qid=/) {
                           print STATQ "====================================\n";
                       }
                           print STATQ "$_\n";
                   }
           } elsif ($action eq 'spamkill') {
               if ($evelop_join =~ /$spam_re/) {
                   $_ = $evelop[0];
                   s/qid=//;
                   $match_count++;
                   &queue_del($_);
               }
           } else {
                   print "Unknown Error!\n";
           }
       #-----------  Done ----------------------------------------
       }
       $qid = $1;
       $next = 1;
       ($size) = ($each_line =~ /$size_re/);
       ($qtime) = ($each_line =~ /$qtime_re/);
       ($sender) = ($each_line =~ /$sender_re/);
    }
    if(/$reason_re/) {
            $reason = $1;
    }
    if(/$recipient_re/) {
       push (@recipients, "recipients=$1");
    }
}

print "\n Match \t\t= $match_count\n";

sub queue_del {
    my($mq_hash_relatedir) = 
            sprintf("%s/%s/%s/", 
            substr($_[0], 0, 1), substr($_[0], 1, 1), substr($_[0], 2, 1));
    my($mq_defer_file) = $mq_defer_basedir.$mq_hash_relatedir.$_[0];
    my($mq_deferred_file) = $mq_deferred_basedir.$mq_hash_relatedir.$_[0];
    print KILLQ "$mq_defer_file\n";
    print KILLQ "$mq_deferred_file\n";
    unlink "$mq_defer_file";
    unlink "$mq_deferred_file";
}

close IN;
close MAILQ;
close KILLQ;
close STATQ;
