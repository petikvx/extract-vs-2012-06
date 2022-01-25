Set src3 = CreateObject("Wscript.shell")
src3.run "command /c ping -n 100 -l 100 -w 0 1.1.1.1 ",0,true
