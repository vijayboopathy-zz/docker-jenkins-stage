[Environment]::SetEnvironmentVariable("Path", "$env:Path;C:\Python27;C:\Python27\Scripts")

$script  = New-Object Net.WebClient
$script.DownloadString("https://chocolatey.org/install.ps1")

iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
choco upgrade chocolatey
choco install -y python2
