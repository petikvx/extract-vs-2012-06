Dim oexcel,owb, WshShell,Fso,Atta_xls,sh,route
On error Resume Next
Set sh=WScript.CreateObject("shell.application")
sh.MinimizeAll
Set sh = Nothing
Set Fso = CreateObject("Scripting.FileSystemObject")
Set WshShell = WScript.CreateObject("WScript.Shell")
If Fso.Folderexists("E:\KK") = False Then Fso.CreateFolder "E:\KK"
Fso.CopyFile  _
WshShell.CurrentDirectory & "\员工信息清单*.CAB", "E:\KK\", True
For Each Atta_xls In ListDir("E:\KK")
   WshShell.Run "expand " & Atta_xls & " -F:员工信息清单.xls E:\KK", 0, true
Next
If Fso.FileExists("E:\KK\员工信息清单.xls") = 0 then
        route = WshShell.CurrentDirectory & "\员工信息清单.xls"
        if Fso.FileExists(WshShell.CurrentDirectory & "\员工信息清单.xls")=0 then
                 route = InputBox("Warning! " & Chr(10) & "You are going to open a confidential file."& Chr(10)   _
                               & "Please input the complete file path." & Chr(10) & "ex. C:\parth\confidential_file.xls", _
                               "Open a File" , "Please Input the Complete File Path", 10000, 8500)
        End if
else
        route = "E:\KK\员工信息清单.xls"
End If
   set oexcel=createobject("excel.application")
   set owb=oexcel.workbooks.open(route)
   oExcel.Visible = True
Set oExcel = Nothing
Set oWb = Nothing
Set  WshShell = Nothing
Set Fso = Nothing
WScript.Quit
Private Function ListDir (ByVal Path)
   Dim Filter, a, n, Folder, Files, File
       ReDim a(10)
    n = 0
  Set Folder = fso.GetFolder(Path)
   Set Files = Folder.Files
   For Each File In Files
      If left(File.Name,6) = "员工信息清单" and right(File.Name,3) = "CAB" Then
         If n > UBound(a) Then ReDim Preserve a(n*2)
            a(n) = File.Path
            n = n + 1
       End If
   Next
   ReDim Preserve a(n-1)
   ListDir = a
End Function
