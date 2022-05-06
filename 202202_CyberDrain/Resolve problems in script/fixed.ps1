$Items = Get-ChildItem "C:\Temp"
foreach($Item in $Items){
write-host $Item
}
write-host "moving on to more important stuff"
#we will now get a list of files to play with
#this data comes from very important sources
#we only want to filter on all items that have the name John
$itemlist = get-item "C:\Temp" | Where-Object -Property Name -eq "John"
#then we want to loop through the list and get the items that make john happy
#his list of happystuff is:
# Beer,Cookies,French Fries
$HappyStuff = @('Beer', 'Cookies','French Fries')
if($HappyStuff -in $ListOfJohnsCurrentStuff){


}

if($HappyStuff -notin $ListOfJohnsCurrentStuff){
   New-Item "C:\Temp\JohnsNotHappyStuff.txt"
}