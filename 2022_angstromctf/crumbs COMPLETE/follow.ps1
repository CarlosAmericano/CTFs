## Follow the crumbs

$url='https://crumbs.web.actf.co/'

$req = (Invoke-WebRequest -Uri $url -UseBasicParsing).content
Write-Host $req

$guid=$req.Split(' ')[2]
Write-Host $guid
while ($req -like '*Go to*') {
    $newurl=$url+$guid
    $req = (Invoke-WebRequest -Uri $newurl -UseBasicParsing).content
    Write-Host $req
    $guid=$req.Split(' ')[2]
}