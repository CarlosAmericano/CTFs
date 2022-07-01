# Windows Forensics 1
Introduction to Windows Registry Forensics

Username: THM-4n6

Password: 123

## Task 10  Hands-on Challenge

### How many user created accounts are present on the system? 
Answer format: *

3

SAM\Domains\Account\Users

C:\Users\THM-4n6\Desktop\triage\C\Windows\System32\config\SAM: SAM\Domains\Account\Users

### What is the username of the account that has never been logged in?
Answer format: *********

thm-user2


### What's the password hint for the user THM-4n6?
Answer format: *****

count

### When was the file 'Changelog.txt' accessed?
Answer format: ********** **:**:**

NTUSER.DAT\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.txt

2021-11-24 18:18:48


### What is the complete path from where the python 3.8.2 installer was run? 
Answer format: *:****************.*.*.***

NTUSER.DAT\Software\Microsoft\Windows\Currentversion\Explorer\UserAssist\{GUID}\Count

Z:\setups\python-3.8.2.exe 

### When was the USB device with the friendly name 'USB' last connected?
Answer format: ********** **:**:**

SOFTWARE\Microsoft\Windows Portable Devices\Devices

SYSTEM\CurrentControlSet\Enum\USBSTOR

2021-11-24 18:40:06

