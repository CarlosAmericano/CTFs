# Doesnt work =D
#!/bin/bash
# Tested using bash version 4.1.5
rm log.log
for ((i=1;i<=1000000;i++));
do
   # your-unix-command-here
   echo $i >> log.log
   echo $i | ./unpackme-upx >> log.log
done
