# Blue
Deploy & hack into a Windows machine, leveraging common misconfigurations issues.

## Task 1  Recon

### How many ports are open with a port number under 1000?

3

sudo nmap -sS -sC -sV -O -oA initialnmap -vv 10.10.70.21

Nmap scan report for 10.10.70.21
Host is up, received echo-reply ttl 127 (0.0097s latency).
Scanned at 2022-06-26 09:12:35 IST for 145s
Not shown: 991 closed ports
Reason: 991 resets
PORT      STATE SERVICE      REASON          VERSION
135/tcp   open  msrpc        syn-ack ttl 127 Microsoft Windows RPC
139/tcp   open  netbios-ssn  syn-ack ttl 127 Microsoft Windows netbios-ssn
445/tcp   open  microsoft-ds syn-ack ttl 127 Windows 7 Professional 7601 Service Pack 1 microsoft-ds (workgroup: WORKGROUP)
3389/tcp  open  tcpwrapped   syn-ack ttl 127
|_ssl-date: 2022-06-26T08:14:01+00:00; 0s from scanner time.
49152/tcp open  msrpc        syn-ack ttl 127 Microsoft Windows RPC
49153/tcp open  msrpc        syn-ack ttl 127 Microsoft Windows RPC
49154/tcp open  msrpc        syn-ack ttl 127 Microsoft Windows RPC
49158/tcp open  msrpc        syn-ack ttl 127 Microsoft Windows RPC
49160/tcp open  msrpc        syn-ack ttl 127 Microsoft Windows RPC


### What is this machine vulnerable to? (Answer in the form of: ms??-???, ex: ms08-067)

EternalBlue ( MS17-010) 

## Task 2  Gain Access

### Find the exploitation code we will run against the machine. What is the full path of the code? (Ex: exploit/........)
exploit/windows/smb/ms17_010_eternalblue

### Show options and set the one required value. What is the name of this value? (All caps for submission)
RHOSTS


## Task 3  Escalate
## Task 4  Cracking
## Task 5  Find flags!
