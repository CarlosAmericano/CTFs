$array = (102, 109, 99, 100, 127, 100, 53, 62, 105, 57, 61, 106, 62, 62, 55, 110, 113, 114, 118, 39, 36, 118, 47, 35, 32, 125, 34, 46, 46, 124, 43, 124, 25, 71, 26, 71, 21, 88)
$flag=''
$i=0
foreach ($item in $array) {
    #Write-Host $item
    #Write-Host $i
    $x=[char]($item -bxor $i)
    $flag=$flag+$x
    $i=$i+1
}
Write-Host $flag