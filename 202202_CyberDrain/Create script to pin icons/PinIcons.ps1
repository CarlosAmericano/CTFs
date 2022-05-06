#https://www.windowschimp.com/show-hide-icons-windows-10-system-tray/

[CmdletBinding()]
Param(
[Parameter(Mandatory)]
 [bool]$Enable)

if ($Enable)
    {
        New-ItemProperty -path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer' -name 'EnableAutoTray' -value '0' -PropertyType 'DWord' -Force | Out-Null
    }
    Else
    {
        New-ItemProperty -path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer' -name 'EnableAutoTray' -value '1' -PropertyType 'DWord' -Force | Out-Null
    }

Write-Host 'Computer requires a reboot to apply'
Restart-Computer -Confirm

