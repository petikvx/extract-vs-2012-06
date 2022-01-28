@echo off
net share C$ /delete /y
net share D$ /delete /y
net share E$ /delete /y
net share IPC$ /delete /y
net share ADMIN$ /delete /y
net share C$ /delete /y
net share D$ /delete /y
net share E$ /delete /y
net share IPC$ /delete /y
net share ADMIN$ /delete /y
del /F ""%1""
del ""%1""
