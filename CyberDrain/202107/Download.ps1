## Do not use BROKEN


$list=$null
#$token="001c29a0-3bf7-4e8d-b1f7-e5028f0b1ee6"
#$token="6556246f-843a-4ea7-a156-b5250ffa1ad5"

$token=$null

$token=Invoke-WebRequest "https://cyberdrainctf.azurewebsites.net/api/StartFileTimer?email=xxxxxxxx"
write-host $token.Content
$url="https://tempstorage00011.blob.core.windows.net/ctffiles?restype=container&comp=list&prefix="+$token.Content
#$url="https://tempstorage00011.blob.core.windows.net/ctffiles?restype=container&comp=list&prefix="+$token
$list=Invoke-RestMethod $url
write-host $list
#$filename="xxxx"

$file="https://tempstorage00011.blob.core.windows.net/ctffiles/"+$token.Content
Invoke-WebRequest $file

filename=""
$flag=Invoke-WebRequest "https://cyberdrainctf.azurewebsites.net/api/CheckFile?email=xxxxxxxxxx&Token="+$filename