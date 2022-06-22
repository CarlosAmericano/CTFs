# DESCRIPTION

This is a challenge that is exactly what is says on the tin, there are a few challenges around investigating a windows machine that has been previously compromised.

Connect to the machine using RDP. The credentials the machine are as follows:

Username: Administrator
Password: letmein123!

Please note that this machine does not respond to ping (ICMP) and may take a few minutes to boot up.

## TASKS

Task 1  Investigating Windows
Answer the questions below

### Whats the version and year of the windows machine?

Answer format: ******* ****** ****
Windows server 2016

``` text
PS C:\Users\Administrator> systeminfo
Host Name:                 EC2AMAZ-I8UHO76
OS Name:                   Microsoft Windows Server 2016 Datacenter
```

### Which user logged in last?

Answer format: *************

administrator

Security Event log, filter 4624

### When did John log onto the system last?

Answer format: MM/DD/YYYY H:MM:SS AM/PM
03/02/2019 5:48:32 PM

``` cmd
net user john
```

### What IP does the system connect to when it first starts?

Answer format: **.**.*.*
10.34.2.3

UpdateSvc	Execute processes remotely	(Verified) Microsoft Corporation	C:\TMP\p.exe	Sat Mar  2 16:37:37 2019	
C:\TMP\p.exe -s \\10.34.2.3 'net user' > C:\TMP\o2.txt

### What two accounts had administrative privileges (other than the Administrator user)?

Answer format: username1, username2
Answer format: *****, *****
JENNY, GUEST

``` cmd
net user localgroup administrators
```

### Whats the name of the scheduled task that is malicous.

Answer format: ***** **** ******
Clean file system

### What file was the task trying to run daily?

Answer format: **.***
nc.ps1

### What port did this file listen locally for?

Answer format: ****
1348

### When did Jenny last logon?

Answer format: *****
never

``` cmd
net user jenny
```

## At what date did the compromise take place?

Answer format: MM/DD/YYYY
03/02/2019

Creation date of the scheduled tasks

### At what time did Windows first assign special privileges to a new logon?

Answer format: MM/DD/YYYY HH:MM:SS AM/PM
Answer format: **/**/**** *:**:** **
03/02/2019 4:04:49 PM

Security Event log, filter 4762

### What tool was used to get Windows passwords?

Answer format: ********
mimikatz

### What was the attackers external control and command servers IP?

Answer format: **.**.**.***
76.32.97.132

``` cmd
notepad c:\windows\system32\drivers\etc\hosts
```

### What was the extension name of the shell uploaded via the servers website?

Answer format: .***
.jsp

inetpub folder content

### What was the last port the attacker opened?

Answer format: ****
1337

'Allow outside connections for development' firewall rule

### Check for DNS poisoning, what site was targeted?

Answer format: ******.***
google.com

``` cmd
notepad c:\windows\system32\drivers\etc\hosts
```
