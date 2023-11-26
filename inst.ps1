$name = $env:computername
$path = Split-Path -Parent $MyInvocation.MyCommand.Path
Write-Host $path
Write-Host "Computer Name:" $name -ForegroundColor Green
$param1 = $args[0]
Write-Host "Argument:" $param1 -ForegroundColor Green
if ($param1 -eq "f" -Or $param1 -eq "-f" -Or $param1 -eq "F" -Or $param1 -eq "-F")
{
	if ($name -eq "ARTHUR")
	{
		powershell -Command $path"\freshLap.ps1 'pwrshell'"
	}
	elseif ($name -eq "BELL")
	{
		powershell -Command $path"\freshDesk.ps1 'pwrshell'"
		
	}
	elseif ($name -ne "ARTHUR" -Or "BELL")
	{
		$option = Read-Host "Is this a laptop or desktop: "
		if ($option -eq "laptop")
		{
			powershell -Command $path"\freshLap.ps1 'pwrshell'"
		}
		elseif ($option -eq "desktop")
		{
			powershell -Command $path"\freshDesk.ps1 'pwrshell'"
		}
	}
}
elseif ($param1 -eq "u" -Or $param1 -eq "-u" -Or $param1 -eq "U" -Or $param1 -eq "-U")
{
	powershell -Command "winget upgrade"
	powershell -Command "winget upgrade --all --include-unknown"
}
elseif ($param1 -eq "d" -Or $param1 -eq "-d" -Or $param1 -eq "D" -Or $param1 -eq "-D")
{
	Write-Host "Running Dianostics" -ForegroundColor Green
	dism /Online /Cleanup-Image /RestoreHealth
	sfc /scannow
}
elseif ($param1 -eq "h" -Or $param1 -eq "-h" -Or $param1 -eq "H" -Or $param1 -eq "-H" -Or $param1 -eq " ")
{
	Write-Host "This Program is meant to assist in using a new or current computer:`n
	Layout ./inst.ps1 -[Option]`n
	[f,-f,F,-F] - First install for a new computer, installs new software like discord and visual studio`n
	Detects if it is my laptop using the name assigned to my desktop and laptop`n
	[u,-u,U,-U] - Updates curreent programs installed using package manager`n
	[d,-d,D,-D] - Runs dianostic scans on computer" -ForegroundColor Blue
}