## DESCRIPTION



## NOTES

Theres a journal file, tried to glance it but couldnt find anything interesting even though theres some weird data there ?
00000033_009.jpgA
00000041_000.jpgU
00000045_021.jpgV
00000045_028.jpgf
00000048_016.jpgk
00000049_010.jpgm
00000049_012.jpg{
00000051_006.jpg
00000055_006.jpg
00000055_012.jpg
00000058_018.jpg
00000060_005.jpg
00000063_009.jpg
00000067_005.jpg
00000033_009.jpg
00000041_000.jpgU
00000045_021.jpgV
00000045_028.jpg
&+9h
T_u4
00000009_003.jpg9
00000006_024.jpg/
00000005_020.jpgE
00000007_014.jpgG
00000007_022.jpg(
along with a reference to /mnt/test


Grabbing exif data from all files 
find . -exec exiftool {$1} >> exifdata.txt \;
strings exifdata.txt | grep flag
Nothing found

Trying to do a binwalk
find . -exec binwalk -e -v {$1} \;
Nothing found

## FLAG