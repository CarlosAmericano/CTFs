<#
1-26 are the alphabet, 
27-36 are the decimal digits
37 is an underscore.
#>

#https://rosettacode.org/wiki/Modular_inverse#PowerShell
function invmod($a,$n){
    if ([int]$n -lt 0) {$n = -$n}
    if ([int]$a -lt 0) {$a = $n - ((-$a) % $n)}

$t = 0
$nt = 1
$r = $n
$nr = $a % $n
while ($nr -ne 0) {
    $q = [Math]::truncate($r/$nr)
    $tmp = $nt
    $nt = $t - $q*$nt
    $t = $tmp
    $tmp = $nr
    $nr = $r - $q*$nr
    $r = $tmp
}
if ($r -gt 1) {return -1}
if ($t -lt 0) {$t += $n}
return $t
}

$mod=41

$message=Get-content message.txt
$message=$message.Split(' ')

[string]$decodedmessage=$null
foreach($char in $message) {
    $moddedchar= $char%$mod
    $decodedchar= invmod -a $moddedchar -n $mod
    Write-Host $char
    Write-Host $moddedchar
    Write-Host $decodedchar 
    if($decodedchar -eq 37) {
        $decodedmessage=$decodedmessage+"_"
    }
    if($decodedchar -ge 1 -and $decodedchar -le 26) {
        $decodedmessage=$decodedmessage+([char](65+[int]$decodedchar))
    } 
    if($decodedchar -ge 27 -and $decodedchar -le 36) {
        $decodedmessage=$decodedmessage+([char](48+([int]$decodedchar-27)))
    }
    Write-Host $decodedmessage
}
Write-Host $decodedmessage

<#






#>
