. { Invoke-WebRequest -UseBasicParsing  http://boxstarter.org/bootstrapper.ps1 } | Invoke-Expression; Get-Boxstarter -Force

$RepoUrl = "http://boxstarter.org/package/url?https://raw.githubusercontent.com/vpgmez121/windows-dev-box-setup-scripts/develop"

# Install-BoxstarterPackage -PackageName $RepoUrl/dev_app.ps1 -DisableReboots