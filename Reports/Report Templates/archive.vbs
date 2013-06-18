target="./Reports/Archive"
Set objFSO = CreateObject("Scripting.FileSystemObject")

	objStartFolder = "./Reports/Daily"

	Set objFolder = objFSO.GetFolder(objStartFolder)
	Set colFiles = objFolder.Files
	target="./Reports/Archive/Daily"
		For Each objFile in colFiles
			if (DateDiff("d",objFile.DateCreated, NOW)>7) Then  
				objFSO.MoveFile objFile, target
				Wscript.Echo objFile.Name & vbcrlf  
			end if
		Next
		
	objStartFolder = "./Reports/Weekly"

	Set objFolder = objFSO.GetFolder(objStartFolder)
	Set colFiles = objFolder.Files
	target="./Reports/Archive/Weekly"
		For Each objFile in colFiles
			if (DateDiff("ww",objFile.DateCreated, NOW)>4) Then  
				objFSO.MoveFile objFile, target
				Wscript.Echo objFile.Name & vbcrlf  
			end if
		Next
		
	objStartFolder = "./Reports/Monthly"

	Set objFolder = objFSO.GetFolder(objStartFolder)
	Set colFiles = objFolder.Files
	target="./Reports/Archive/Monthly"
		For Each objFile in colFiles
			if (DateDiff("m",objFile.DateCreated, NOW)>3) Then  
				objFSO.MoveFile objFile, target
				Wscript.Echo objFile.Name & vbcrlf  
			end if
		Next