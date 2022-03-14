$x=Invoke-RestMethod -Uri "https://cyberdrainctf.azurewebsites.net/api/CanonicalAPI?Signedstring=ReallySigned!&ReallySigned=xxx"
Write-Host $x
$string= 'TheCTFisMAGIC'


function HashString{
    Param (
    [Parameter(Mandatory=$true)]
    [string]
    $ClearString
)

$hasher = [System.Security.Cryptography.HashAlgorithm]::Create('sha256')
$hash = $hasher.ComputeHash([System.Text.Encoding]::UTF8.GetBytes($ClearString))

$hashString = [System.BitConverter]::ToString($hash)
$hashString.Replace('-', '')
}
$hash=HashString $string

$url="https://cyberdrainctf.azurewebsites.net/api/CanonicalAPI?signedstring="+$hash
Invoke-RestMethod -Uri $url