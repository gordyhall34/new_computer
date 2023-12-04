Write-Host "Installing Programs" -ForegroundColor Green

Write-Host "Discord" -ForegroundColor Green
winget install discord -e --source msstore 

Write-Host "Nano" -ForegroundColor Green
winget install GNU.Nano -e 

Write-Host "NotePad++" -ForegroundColor Green
winget install -e Notepad++.Notepad++ 

Write-Host "OhMyPosh" -ForegroundColor Green
winget install JanDeDobbeleer.OhMyPosh -s winget 

Write-Host "Cascadia Font" -ForegroundColor Green
oh-my-posh font install CascadiaCode

Write-Host "New Terminal Icons" -ForegroundColor Green
Install-Module -Name Terminal-Icons -Repository PSGallery -Force

Write-Host "Powershell Update" -ForegroundColor Green
winget install --id Microsoft.Powershell --source winget 

Write-Host "PowerToys" -ForegroundColor Green
winget install --id Microsoft.PowerToys 

Write-Host "VisualStudio Code" -ForegroundColor Green
winget install --id Microsoft.VisualStudioCode 

Write-Host "VisualStudio community" -ForegroundColor Green
winget install --id Microsoft.VisualStudio.2022.Community 

Write-Host "Gimp" -ForegroundColor Green
winget install GIMP -e --source msstore 

Write-Host "Nearby Share" -ForegroundColor Green
winget install Google.NearbyShare -e 

Write-Host "Steam" -ForegroundColor Green
winget install Valve.Steam -e 

Write-Host "Git" -ForegroundColor Green
winget install --id Git.Git -e

Write-Host "Python" -ForegroundColor Green
winget install -e --id Python.Python.3.11 --scope machine

Write-Host "Editing Features" -ForegroundColor Green