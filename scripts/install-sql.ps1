$commondest = "C:\Windows\Temp"
$sqlurl  = "https://download.microsoft.com/download/6/D/9/6D90C751-6FA3-4A78-A78E-D11E1C254700/SQLServer2014SP2-KB3171021-x64-ENU.exe"
$sqldest = "$commondest\SQLServer2014SP2-KB3171021-x64-ENU.exe"
$start_time = Get-Date

Invoke-WebRequest -Uri $sqlurl -OutFile $sqldest
Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"
