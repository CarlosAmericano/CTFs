
$guid="da8e89e8-0b7b-40e7-874c-4e826d097e8d"

$url="https://cyberdrainctf.azurewebsites.net/api/CTFAPI"

$body1="thank you"
$body2="You are very welcome!"
$body3="carlos.americano@gmail.com"

<#

https://cyberdrainctf.azurewebsites.net/api/API2022?email=carlos.americano@gmail.com



https://cyberdrainctf.azurewebsites.net/api/API2022?email=carlos.americano@gmail.com&Token=fb245a20-56aa-4fc9-8fd4-80db74aed574
#>

$message="Just because i know you will be looking at the logs, this is not cheating!! :D"


Invoke-RestMethod -Uri $url -Method Post -Body $message -ContentType "text/plain" -UserAgent $guid


Invoke-RestMethod -Uri $url -Method Post -Body $body1 -ContentType "text/plain" -UserAgent $guid

Invoke-RestMethod -Uri $url -Method Patch -Body $body2 -ContentType "text/plain" -UserAgent $guid

Invoke-RestMethod -Uri $url -Method Delete -Body $body3 -ContentType "text/plain" -UserAgent $guid
