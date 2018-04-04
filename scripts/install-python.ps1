$script = New-Object Net.WebClient
$script.DownloadString("https://chocolatey.org/install.ps1")
iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
choco upgrade chocolatey
choco install -y python2
python -m pip install --upgrade pip
pip install ansible
