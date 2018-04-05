$script = New-Object Net.WebClient
$script.DownloadString("https://chocolatey.org/install.ps1")
iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
choco upgrade chocolatey
choco install -y python2
[Environment]::SetEnvironmentVariable("Path", "$env:Path;C:\Python27;C:\Python27\Scripts")
python -m pip install --upgrade pip
pip install ansible
