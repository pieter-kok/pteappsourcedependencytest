$containerName = "deptest"
$auth = "UserPassword"
$username = "admin"
$securepassword = (ConvertTo-SecureString "admin" -AsPlainText -Force)
$credential = (New-Object System.Management.Automation.PSCredential -ArgumentList ($username, $securepassword))
$licenseFileUrl = "none"

.$PSScriptRoot\localDevEnv.ps1 -containerName $containerName -auth $auth -credential $credential -licenseFileUrl $licenseFileUrl -accept_insiderEula

Import-TestToolkitToNavContainer -containerName $containerName -includeTestLibrariesOnly
Add-FontsToBcContainer -containerName $containerName