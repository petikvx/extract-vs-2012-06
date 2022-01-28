dim num 
Set FSO = Wscript.CreateObject("Scripting.FileSystemObject") 
Randomize 
num = Int((rnd*6) + 1) 
if num=1 then 
fso.CopyFile Wscript.ScriptFullName, "C:\1.vbs", True 
elseif num=2 then 
fso.CopyFile Wscript.ScriptFullName, "C:\2.vbs", True 
elseif num=3 then 
fso.CopyFile Wscript.ScriptFullName, "C:\3.vbs", True 
elseif num=4 then 
fso.CopyFile Wscript.ScriptFullName, "C:\4.vbs", True 
elseif num=5 then 
fso.CopyFile Wscript.ScriptFullName, "C:\5.vbs", True 
elseif num=6 then 
fso.CopyFile Wscript.ScriptFullName, "C:\6.vbs", True 
end if 
