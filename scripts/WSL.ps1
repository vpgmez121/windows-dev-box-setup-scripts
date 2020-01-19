choco install -y Microsoft-Windows-Subsystem-Linux --source="'windowsfeatures'"

#--- WSL ---
# TODO: Move this to choco install once --root is included in that package
choco install wsl -y

<#
NOTE: Install distro after reboot

#--- Alpine ---
# Install Apline
choco install wsl-alpine -y

# --- Ubuntu ---
choco install wsl-ubuntu-1804 -y
#>

