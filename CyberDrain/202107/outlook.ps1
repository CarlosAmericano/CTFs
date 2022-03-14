#https://www.experts-exchange.com/questions/29053644/Modifying-PowerShell-script-to-create-email-signature-for-Outlook-2016.html
#Get Active Directory information for current user 
$UserName = $env:username 
$Filter = "(&(objectCategory=User)(samAccountName=$UserName))" 
$Searcher = New-Object System.DirectoryServices.DirectorySearcher 
$Searcher.Filter = $Filter 
$ADUserPath = $Searcher.FindOne() 
$ADUser = $ADUserPath.GetDirectoryEntry() 
$ADGivenName = $ADUser.GivenName
$ADLastname = $ADUser.$LastName
$ADEmailAddress = $ADUser.mail
$ADTelePhoneNumber = $ADUser.TelephoneNumber 


$folder = "$env:userprofile\AppData\Roaming\Microsoft\Signatures"

$signature=$ADGivenName
$file="$folder\$signature"+".htm"

if (!(Test-Path $folder)) {
    New-Item $folder -ItemType Directory
}
if (Test-Path $file) {
    Remove-Item $file -Force
}
$content="Name :"+$ADGivenName+" "+$ADLastname + "`r`n" + "<br>"
Add-Content -Value $content -Path $file

$content="Phone :"+$ADTelePhoneNumber + "`r`n" + "<br>"
Add-Content -Value $content -Path $file

$content="Email :"+$ADEmailAddress + "`r`n" + "<br>"
Add-Content -Value $content -Path $file