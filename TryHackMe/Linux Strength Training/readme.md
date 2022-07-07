# Linux Strength Training
Guided room for beginners to learn/reinforce linux command line skills

## Task 2  Finding your way around linux - overview

```
Find files based on filename
find [directory path] -type f -name [filename]
find /home/Andy -type f -name sales.txt

Find Directory based on directory name
find [directory path] -type d -name [filename]	
find /home/Andy -type d -name pictures

2>/dev/null - ignore errors
```



### What is the correct option for finding files based on group
f -group

### What is format for finding a file with the user named Francis and with a size of 52 kilobytes in the directory /home/francis/
find /home/francis/ type f -user francis -size 52k

### What is the name of the file that you found using this command?

```
topson@james:~/chatlogs$ grep -iRl 'keyword'
2019-10-11
```

### What are the characters subsequent to the word you found?

```
less 2019-10-11 /keyword
```
ttitor

### Read the file named 'ReadMeIfStuck.txt'. What is the Flag?

```
topson@james:~$ cat ReadMeIfStuck.txt
Looking for flag 1?:It seems you will have to think harder if you want to find the flag. Perhaps try looking for a file called additionalHINT if you can't find it..
Looking for flag 2?: look for a file named readME_hint.txt

topson@james:~$ find / -type f -iname *additionalHint* 2>/dev/null
/home/topson/channels/additionalHINT

iname is to search hidden files


topson@james:~$ cat /home/topson/channels/additionalHINT
try to find a directory called telephone numbers... Oh wait.. it  contains a space.. I wonder how we can find that....
topson@james:~$ find / -type d -iname 'telephone numbers' 2>/dev/null
/home/topson/corperateFiles/xch/telephone numbers


```

## Task 3 Working with files

### Hypothetically, you find yourself in a directory with many files and want to move all these files to the directory of /home/francis/logs. What is the correct command to do this?
mv . /home/francis/logs

### Hypothetically, you want to transfer a file from your /home/james/Desktop/ with the name script.py to the remote machine (192.168.10.5) directory of /home/john/scripts using the username of john. What would be the full command to do this?
scp /home/james/Desktop/script.py john@192.168.10.5:/home/john/scripts

### How would you rename a folder named -logs to -newlogs
mv * -logs -newlogs

### How would you copy the file named encryption keys to the directory of /home/john/logs
cp 'encryption keys' /home/john/logs

### Find a file named readME_hint.txt inside topson's directory and read it. Using the instructions it gives you, get the second flag.

A few additional things to remember is that occasionally you may encounter files/folders with special characters such as - (dash). Just remember that if you try to copy or move these files you will encounter errors because Linux interprets the - as a type of argument, therefore you will have to place -- just before the filename. For example: cp -- -filename.txt /home/folderExample.

```
topson@james:~$ find . -type f -iname readMe_hint.txt 2>/dev/null
./corperateFiles/RecordsFinances/readME_hint.txt

 188  find . -type f -iname -MoveMe.txt 2>/dev/null

  191  find . -type d -iname '*march*' 2>/dev/null
  192  cp ./corperateFiles/RecordsFinances/-MoveMe.txt './corperateFiles/RecordsFinances/-march folder'
  194  cd './corperateFiles/RecordsFinances/-march folder'
  199  ./-runME.sh

Flag{234@i4s87u5hbn$3}
```
