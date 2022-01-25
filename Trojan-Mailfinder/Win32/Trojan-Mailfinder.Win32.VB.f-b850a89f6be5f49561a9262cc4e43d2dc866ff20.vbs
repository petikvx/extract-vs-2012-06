Dim SpamMsgs(8)
Dim sc
' Sent packet event
Function PacketSend(myPacket)
	Select Case True
		Case mid(mypacket,1,2)=chra("FF 0C")
			module.setcallbackstate "spam",True
		Case mid(mypacket,1,2)=chra("FF 40")
			module.setcallbackstate "spam",False
	End Select
	
	PacketSend=myPacket
End Function

' Recieved packet event
Function PacketRecv(myPacket)
	
	Select Case True
		Case mid(mypacket,1,2)=chra("FF 3A")
			script.myOwner.myOwner.SendInfo
		Case mid(mypacket,1,2)=chra("FF 5A")
			myPacket=""
		Case mid(mypacket,1,2)=chra("FF 5B")
			myPacket=""
	End Select
	
	PacketRecv=myPacket
End Function

' Command event
Sub UserCommand(sCmd)


End Sub

' Load event
Sub ModuleLoad()
	spammsgs(0)="Get the latest maphack at www.d2dl.be !!!"
	spammsgs(1)="Get the new 1.10 trigger pk hack at www.d2dl.be"
	spammsgs(2)="Protect yourself from the new trigger pk hack. www.d2dl.be"
	spammsgs(3)="f m hey get the new Baal Dupe at www.d2dl.be"
	spammsgs(4)=".f m wow guess what i got at www.d2dl.be !!  tradehack dawg"
	spammsgs(5)="www.d2dl.be  official 1.10 maphack site"
	spammsgs(6)="get all the latest hacks at www.d2dl.be"
	spammsgs(7)="i got all this crazy $#%^ at www.d2dl.be"
	spammsgs(8)="get the best in d2 at www.d2dl.be"
	
	sc=0

	module.createcallback "Spambot","spam",8000

End Sub

Sub Spambot()
	If sc>ubound(spammsgs) Then sc=0
	sendchan spammsgs(sc)
	script.output "Spamming: " & spammsgs(sc),0
	sc=sc+1	
End Sub

Sub sendchan(s)
	script.SendToServer chra("FF 0E") & chr(len(s)+5) & chr(0) & s & chr(0)
End Sub

function chra(s)
	dim arr,c
	arr=split(s," ")
	for c=0 to ubound(arr)
		chra=chra & chr(clng("&H" & arr(c)))
	next
end function