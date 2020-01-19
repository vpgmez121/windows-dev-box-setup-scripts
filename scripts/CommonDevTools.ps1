
# tools we expect devs across many scenarios will want
choco install -y vscode
choco install -y git --package-parameters="'/GitAndUnixToolsOnPath /WindowsTerminal /NoAutoCrlf /NoShellIntegration /NoGuiHereIntegration /NoShellHereIntegration /SChannel'"
choco install -y poshgit
Install-Module -Force oh-my-posh