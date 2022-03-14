<#
The Riddler has poisoned an innocent member of the public. Use his clues to find who it was before it's too late!
Their favourite place contains Shire
Their worst place starts with a C or a D
Their favourite number is between 8000000000000 and 9000000000000
Their favourite colour is Gold, Blue, Pink or Green
Their worst colour is not Emerald, Red, Gray or Orange
Their firstname is 7 characters long.
The third letter of their last name is R
The Flag is the GUID of the correct entry.
#>

Measure-Command {
$people=Get-Content .\people.json | convertfrom-json 
$person = $people | Where-Object { ($_.FavouritePlace -like '*Shire*') -and `
                                    ($_.WorstPlace.StartsWith('C') -or $_.WorstPlace.StartsWith('D') ) -and `
                                    ($_.favouritenumber -ge 8000000000000 -and $_.favouritenumber -le 9000000000000 ) ` -and
                                    ($_.favouritecolour -eq 'Gold' -or $_.favouritecolour -eq 'Blue' -or $_.favouritecolour -eq 'Pink' -or $_.favouritecolour -eq 'Green') ` -and
                                    ($_.WorstColour -ne 'Emerald' -and $_.WorstColour -ne 'Red' -and $_.WorstColour -ne 'Gray' -and $_.WorstColour -ne 'Orange') ` -and
                                    ($_.firstname.length -eq 7 ) ` -and
                                    ($_.lastname[2] -eq 'R' )
}
Write-Host $person
}
