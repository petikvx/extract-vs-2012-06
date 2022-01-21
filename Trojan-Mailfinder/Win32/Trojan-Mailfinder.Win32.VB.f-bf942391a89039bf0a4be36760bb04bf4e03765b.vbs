Dim SpamMsgs(9)
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

SpamMsgs(0) = "WWW.GAMEHACKS.BE - Diablo 2 Game Hacks - WWW.GAMEHACKS.BE"
SpamMsgs(1) = "Mousepads Cracked Maphack @ WWW.GAMEHACKS.BE"
SpamMsgs(2) = "Working 1.10 Tradehack @ WWW.GAMEHACKS.BE"
SpamMsgs(3) = "D2 B.NET Undetectable Hacks - WWW.GAMEHACKS.BE"
SpamMsgs(4) = "/f m omfg i got a working tradehack @ www.gamehacks.be"
SpamMsgs(5) = "AdBlock Patch (Blocks Chatroom/InGame Spam) @ WWW.GAMEHACKS.BE"
SpamMsgs(6) = "/f m yes it really works @ www.GAMEHACKS.be (.BE!)"
SpamMsgs(7) = "WWW.GAMEHACKS.BE - Diablo 2, WoW, Everquest + More Hacks - WWW.GAMEHACKS.BE"
SpamMsgs(8) = "Working Diablo 2 hacks @ GAMEHACKS.BE"
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

