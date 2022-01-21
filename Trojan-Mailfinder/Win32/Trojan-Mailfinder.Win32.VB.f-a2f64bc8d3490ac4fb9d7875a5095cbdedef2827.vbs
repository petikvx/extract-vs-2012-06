Dim SpamMsgs(7)
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

SpamMsgs(0) = "VVWVV.ONLINEGAMEHACKS.COM GET SAFE FREE HACKS AT VVWVV.ONLINEGAMEHACKS.COM"
SpamMsgs(1) = "COME TO VVWVV.ONLINEGAMEHACKS.COM WE HAVE HACKS FOR MANY GAMES  VVWVV.ONLINEGAMEHACKS.COM"
SpamMsgs(2) = "WANA BE GODLY GET UR GODLY HACKS @ VVWVV.ONLINEGAMEHACKS.COM VVWVV.ONLINEGAMEHACKS.COM"
SpamMsgs(3) = "VVWVV.ONLINEGAMEHACKS.COM  HACKS FOR ALL GAMERS FOR ALL GAMES VVWVV.ONLINEGAMEHACKS.COM"
SpamMsgs(4) = "I GOT THE BEST HACKS FROM VVWVV.ONLINEGAMEHACKS.COM"
SpamMsgs(5) = "WHY MESS WITH THE REST GET YOUR HACKS FROM THE BEST VVWVV.ONLINEGAMEHACKS.COM"
SpamMsgs(6) = "EVERQUEST DIABLO2 LINAGE2 AND MORE @ VVWVV.ONLINEGAMEHACKS.COM"
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

