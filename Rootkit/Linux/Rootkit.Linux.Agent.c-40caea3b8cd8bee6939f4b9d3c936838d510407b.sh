#!/bin/bash
# Part added to the original scan put-together by em1nem by EponaRhi
# Thanks to etC for the bind scan that this came from ...
#
dig @$1 VERSION.BIND chaos txt +retry=2 +time=2 +ignore > temp.dig
ver="`cat temp.dig |grep "VERSION.BIND\." |awk -F '"' '{print $2}'`"
echo -en "Version $ver ... "
for versiune in $(cat xlist|awk '{print $1}'); do
if [ "$ver" = "4.9.6-REL" ]; then
  ./x496 $1
  break
fi
if [ "$versiune" = "$ver" ]; then
  ./bind $1 -e
fi
done
rm -f temp.dig
