[Environment]::SetEnvironmentVariable("Path", "$env:Path;C:\Python27;C:\Python27\Scripts")

$script  = New-Object Net.WebClient
$script.DownloadString("https://chocolatey.org/install.ps1")
$commondest = "C:\Windows\Temp"
$sqlurl  = "https://download.microsoft.com/download/6/D/9/6D90C751-6FA3-4A78-A78E-D11E1C254700/SQLServer2014SP2-KB3171021-x64-ENU.exe"
$sqldest = "$commondest\SQLServer2014SP2-KB3171021-x64-ENU.exe"
$start_time = Get-Date 


iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
choco upgrade chocolatey
choco install -y python2
python -m pip install --upgrade pip
pip install ansible
Invoke-WebRequest -Uri $sqlurl -OutFile $sqldest
Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"
