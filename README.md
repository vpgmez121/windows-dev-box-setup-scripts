
# About this project

These scripts leverage two popular open source projects.
- Boxstarter [boxstarter.org](http://boxstarter.org)
- Chocolatey [chocolatey.org](http://chocolatey.org)

Boxstarter is a wrapper for Chocolatey and includes features like managing reboots for you. We're using the Boxstarter web launcher to start the installation process:<br/>
https://boxstarter.org/Learn/WebLauncher

## Project structure
The script code is organized in a hierarchy

**Recipes**
A recipe is the script you run.  It calls multiple helper scripts.  These currently live in the root of the project (dev_app.ps1, dev_webnodejs.ps1, etc.)

**Helper Scripts**: A helper script performs setup routines that may be useful by many recipes. Recipes call helper scripts (you don't run helper scripts directly).  The helper scripts live in the **scripts** folder

## You may want to customize the scripts
These scripts should cover a lot of what you need but will not likely match your personal preferences exactly. In this case please fork the project and change the scripts however you desire. We really appreciate PR's back to this project if you have recommended changes.

*Note: The one-click links use the following format.  When working out of a different Fork or Branch you'll want to update the links as follows:*

`http://boxstarter.org/package/url?https://raw.githubusercontent.com/GITHUB_DOMAIN/windows-dev-box-setup-scripts/YOUR_BRANCH/RECIPE_NAME.ps1
`

For more info on testing your changes take a look at the [contribution guidelines](CONTRIBUTING.md).

## How to run the scripts

To run a recipe script, click a link in the table below from your target machine. This will download the Boxstarter one-click application, and prompt you for Boxstarter to run with Administrator privileges (which it needs to do its job). Clicking yes in this dialog will cause the recipe to begin. You can then leave the job unattended and come back when it's finished.

|Click link to run  |Description  |
|---------|---------|
|<a href='http://boxstarter.org/package/url?https://raw.githubusercontent.com/vpgmez121/windows-dev-box-setup-scripts/develop/dev_app.ps1'>App</a>     | Desktop App Development |
|<a href='http://boxstarter.org/package/url?https://raw.githubusercontent.com/vpgmez121/windows-dev-box-setup-scripts/develop/dev_ml_wsl.ps1'>Machine Learning Linux</a>| Machine Learning with Linux tools running on WSL        |
|<a href='http://boxstarter.org/package/url?https://raw.githubusercontent.com/vpgmez121/windows-dev-box-setup-scripts/develop/devops_azure.ps1'>DevOps Azure</a>| Client setup for DevOps with Azure
**Notes:**  
1. If you are using WSL there's a followup step we recommend after running the setup script.  When the script finishes you will only have a root user with a blank password. You should  manually create a non-root user via `$ sudo adduser [USERNAME] sudo`
with a non-blank password. Use this user going forward. For more info on WSL please refer to the [documentation](https://docs.microsoft.com/en-us/windows/wsl/about).
2. If you're a Node.js contributor working on Node.js core, please see the [Node.js Bootstrapping Guide](https://github.com/nodejs/node/tree/master/tools/bootstrap) or [click here to run](http://boxstarter.org/package/nr/url?https://raw.githubusercontent.com/nodejs/node/master/tools/bootstrap/windows_boxstarter).

## Known issues
- The Boxstarter ClickOnce installer does not work when using Chrome.  This issue is being tracked [here](https://github.com/chocolatey/boxstarter/issues/345). Please use Edge to run the ClickOnce installer.
- Reboot is not always logging you back in to resume the script.  This is being tracked [here](https://github.com/chocolatey/boxstarter/issues/318).  The workaround is to login manually and the script will continue running. 
- There have been reports of Windows 1803 not successfully launching Boxstarter via the web launcher. See this issue for details: https://github.com/chocolatey/boxstarter/issues/301

Unfortunately some of Boxstarter's functionality does require administrative privileges to run, and it will prompt to elevate to administrator if not already elevated.
