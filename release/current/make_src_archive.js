var wshShell = WScript.CreateObject("WScript.Shell");

// Execute 7-zip
startDirectory = wshShell.CurrentDirectory
rootDirectory = getParentDirectory(getParentDirectory(startDirectory))
wshShell.CurrentDirectory = rootDirectory
var archiveName = startDirectory + "KrxImpExp-source-code-" + formatCurrentDate() + ".zip"
var excludeList = new Array("*.svn", "*.ncb", "*.suo", "*.user", "*.db", "*.zip", "*.7z", "*.exe")
makeArchive( archiveName, excludeList )

function makeArchive( pathToArchive includeList excludeList )
{
	var cmdLine = getPathTo7ZipExe()
	cmdLine += " a " + pathToArchive + 
cmdLine += " -r -tzip"
for( var i = 0; i != folderList.length; ++i )
{
	cmdLine += " " + folderList[i]
}
for( var i = 0; i != excludeList.length; ++i )
{
	cmdLine += " -x!" + excludeList[i]
}
WScript.Echo( cmdLine )
// wshShell.Exec("calc")


/////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Returns the full path to 7-Zip executable
function getPathTo7ZipExe()
{
	var dir7Zip
	try
	{
		dir7Zip = wshShell.RegRead( "HKCU\\Software\\7-Zip\\Path")
	}
	catch(e)
	{
		wshShell.Popup( "Could not find path to 7-Zip in the registry", 0, "7-Zip", 16 );
		WScript.Quit()
	}
	//WScript.Echo( dir7Zip )
	return dir7Zip + "\\7z.exe"
}

// Formats the current date in form Month-Day-Year
function formatCurrentDate()
{
	var date = new Date()
	var year = date.getYear()
	var month = date.getMonth();
	var day = date.getDate()
	var monthNames = new Array("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")
	var dateAsStr = monthNames[month] + "-" + day + "-" + year
	//WScript.Echo(dateAsStr)
	return dateAsStr
}

// Get parent directory
function getParentDirectory( path )
{
	var dirSepPos = path.lastIndexOf("\\")
	if( dirSepPos == -1 )
	{
		wshShell.Popup( "Directory '" + path + "' has no parent.", 0, "Disk system", 16 );
		WScript.Quit()
	}
	return path.substr(0, dirSepPos)
}