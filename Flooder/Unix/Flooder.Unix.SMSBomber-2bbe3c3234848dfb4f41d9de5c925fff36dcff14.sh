#!/bin/csh
set outfile = ".requested.html"
if ( $1 == "" || $2 == "" ) then
echo You need to specify 2 parameters
echo example:  ./thisscript 323 235
echo 
exit
endif
w3c -get http://www.primeris.com/fonefind/findome.php -form "npa=$1" "nxx=$2" > $outfile 
lynx $outfile
clear;
rm -fr $outfile
./sms_bomber.csh
