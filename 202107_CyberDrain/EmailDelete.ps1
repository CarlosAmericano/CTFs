Import-Module ExchangeOnlineManagement
Connect-IPPSSession
$Search=New-ComplianceSearch -Name "xxxxxx" -ExchangeLocation All -ContentMatchQuery '(Subject:"c0ca2d5d-9180-48d4-b639-11a9d43f8f3c")'
Start-ComplianceSearch -Identity $Search.Identity
Get-ComplianceSearch -Identity $Search.Identity
New-ComplianceSearchAction -SearchName "xxxxx" -Purge -PurgeType HardDelete