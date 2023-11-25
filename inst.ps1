$name = $env:computername
Write-Host "Computer Name:" $name -ForegroundColor Green
$param1 = $args[0]
Write-Host "Argument:" $param1 -ForegroundColor Green
if ($param1 -eq "f" -Or $param1 -eq "-f" -Or $param1 -eq "F" -Or $param1 -eq "-F")
{
	if ($name -eq "ARTHUR")
	{
		powershell -Command "C:\Users\james\OneDrive\Documents\14_personal\02_scriptsPWR\01_Fresh\freshLap.ps1 'pwrshell'"
	}
	elseif ($name -eq "BELL")
	{
		powershell -Command "C:\Users\james\OneDrive\Documents\14_personal\02_scriptsPWR\01_Fresh\freshDesk.ps1 'pwrshell'"
		
	}
}
elseif ($param1 -eq "u" -Or $param1 -eq "-u" -Or $param1 -eq "U" -Or $param1 -eq "-U")
{
	powershell -Command "winget upgrade"
	powershell -Command "winget upgrade --all --include-unknown"
}
elseif ($param1 -eq "c" -Or $param1 -eq "-c" -Or $param1 -eq "C" -Or $param1 -eq "-C")
{
	dism /Online /Cleanup-Image /RestoreHealth
	sfc /scannow
}