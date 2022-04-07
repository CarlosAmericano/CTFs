<#
0-25 is the alphabet (uppercase), 
26-35 are the decimal digits, and 
36 is an underscore.
#>

$mod=37

$message=Get-content message.txt
$message=$message.Split(' ')
[string]$decodedmessage=$null
foreach($char in $message) {
    $decodedchar=$char%$mod
    Write-Host $char
    Write-Host $decodedchar 
    if($decodedchar -eq 36) {
        $decodedmessage=$decodedmessage+"_"
    }
    if($decodedchar -ge 0 -and $decodedchar -le 25) {
        $decodedmessage=$decodedmessage+([char](65+$decodedchar))
    } 
    if($decodedchar -ge 26 -and $decodedchar -le 35) {
        $decodedmessage=$decodedmessage+([char](48+($decodedchar-26)))
    }
    Write-Host $decodedmessage
}
Write-Host $decodedmessage