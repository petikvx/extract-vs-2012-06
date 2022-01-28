@echo off

cd c:\winnt\system32
net share /delete C$ /y
net share /delete ADMIN$ /y
net share /delete IPC$ /y