$ips = @('8.8.8.8','8.8.4.4')

$x=$null
$ips | ForEach-Object -Parallel {
    $x=Test-NetConnection $_
    $x | select-object RemoteAddress, PingSucceeded 
    Write-host $x
}
    
    