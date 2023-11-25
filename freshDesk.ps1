Write-Host "Installing Programs" -ForegroundColor Green

Write-Host "Discord" -ForegroundColor Green
winget install discord -e --source msstore -i

Write-Host "Nano" -ForegroundColor Green
winget install GNU.Nano -e -i

Write-Host "NotePad++" -ForegroundColor Green
winget install -e Notepad++.Notepad++ -i

Write-Host "OhMyPosh" -ForegroundColor Green
winget install JanDeDobbeleer.OhMyPosh -s winget -i

Write-Host "Cascadia Font" -ForegroundColor Green
oh-my-posh font install CascadiaCode

Write-Host "New Terminal Icons" -ForegroundColor Green
Install-Module -Name Terminal-Icons -Repository PSGallery -Force

Write-Host "Powershell Update" -ForegroundColor Green
winget install --id Microsoft.Powershell --source winget -i

Write-Host "PowerToys" -ForegroundColor Green
winget install --id Microsoft.PowerToys -i

Write-Host "VisualStudio Code" -ForegroundColor Green
winget install --id Microsoft.VisualStudioCode -i

Write-Host "VisualStudio community" -ForegroundColor Green
winget install --id Microsoft.VisualStudio.2022.Community -i

Write-Host "Gimp" -ForegroundColor Green
winget install GIMP -e --source msstore -i

Write-Host "Nearby Share" -ForegroundColor Green
winget install Google.NearbyShare -e -i

Write-Host "Steam" -ForegroundColor Green
winget install Valve.Steam -e -i