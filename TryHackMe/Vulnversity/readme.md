# Vulnversity
Learn about active recon, web app attacks and privilege escalation.

## Task 2  Reconnaissance

### Scan the box, how many ports are open?

6

```
sudo nmap -sS -sC -sV -O -oA initialnmap -vv 10.10.211.64


ubuntu@ubuntu:~/Vulnversity$ sudo nmap -sS -sC -sV -O -oA initialnmap -vv 10.10.                                                               211.64
[sudo] password for ubuntu:
Starting Nmap 7.80 ( https://nmap.org ) at 2022-07-11 15:33 UTC
NSE: Loaded 151 scripts for scanning.
NSE: Script Pre-scanning.
NSE: Starting runlevel 1 (of 3) scan.
Initiating NSE at 15:33
Completed NSE at 15:33, 0.00s elapsed
NSE: Starting runlevel 2 (of 3) scan.
Initiating NSE at 15:33
Completed NSE at 15:33, 0.00s elapsed
NSE: Starting runlevel 3 (of 3) scan.
Initiating NSE at 15:33
Completed NSE at 15:33, 0.00s elapsed
Initiating Ping Scan at 15:33
Scanning 10.10.211.64 [4 ports]
Completed Ping Scan at 15:33, 0.04s elapsed (1 total hosts)
Initiating Parallel DNS resolution of 1 host. at 15:33
Completed Parallel DNS resolution of 1 host. at 15:33, 0.01s elapsed
Initiating SYN Stealth Scan at 15:33
Scanning 10.10.211.64 [1000 ports]
Discovered open port 139/tcp on 10.10.211.64
Discovered open port 22/tcp on 10.10.211.64
Discovered open port 445/tcp on 10.10.211.64
Discovered open port 21/tcp on 10.10.211.64
Discovered open port 3128/tcp on 10.10.211.64
Discovered open port 3333/tcp on 10.10.211.64
Completed SYN Stealth Scan at 15:33, 0.10s elapsed (1000 total ports)
Initiating Service scan at 15:33
Scanning 6 services on 10.10.211.64
Completed Service scan at 15:33, 21.21s elapsed (6 services on 1 host)
Initiating OS detection (try #1) against 10.10.211.64
Retrying OS detection (try #2) against 10.10.211.64
Retrying OS detection (try #3) against 10.10.211.64
Retrying OS detection (try #4) against 10.10.211.64
Retrying OS detection (try #5) against 10.10.211.64
NSE: Script scanning 10.10.211.64.
NSE: Starting runlevel 1 (of 3) scan.
Initiating NSE at 15:33
Completed NSE at 15:33, 3.38s elapsed
NSE: Starting runlevel 2 (of 3) scan.
Initiating NSE at 15:33
Completed NSE at 15:33, 0.18s elapsed
NSE: Starting runlevel 3 (of 3) scan.
Initiating NSE at 15:33
Completed NSE at 15:33, 0.00s elapsed
Nmap scan report for 10.10.211.64
Host is up, received echo-reply ttl 63 (0.0022s latency).
Scanned at 2022-07-11 15:33:23 UTC for 36s
Not shown: 994 closed ports
Reason: 994 resets
PORT     STATE SERVICE     REASON         VERSION
21/tcp   open  ftp         syn-ack ttl 63 vsftpd 3.0.3
22/tcp   open  ssh         syn-ack ttl 63 OpenSSH 7.2p2 Ubuntu 4ubuntu2.7 (Ubunt                                                               u Linux; protocol 2.0)
| ssh-hostkey:
|   2048 5a:4f:fc:b8:c8:76:1c:b5:85:1c:ac:b2:86:41:1c:5a (RSA)
| ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDYQExoU9R0VCGoQW6bOwg0U7ILtmfBQ3x/rdK8uu                                                               SM/fEH80hgG81Xpqu52siXQXOn1hpppYs7rpZN+KdwAYYDmnxSPVwkj2yXT9hJ/fFAmge3vk0Gt5Kd8q                                                               3CdcLjgMcc8V4b8v6UpYemIgWFOkYTzji7ZPrTNlo4HbDgY5/F9evC9VaWgfnyiasyAT6aio4hecn0Sg                                                               1Ag35NTGnbgrMmDqk6hfxIBqjqyYLPgJ4V1QrqeqMrvyc6k1/XgsR7dlugmqXyICiXu03zz7lNUf6vuW                                                               T707yDi9wEdLE6Hmah78f+xDYUP7iNA0raxi2H++XQjktPqjKGQzJHemtPY5bn
|   256 ac:9d:ec:44:61:0c:28:85:00:88:e9:68:e9:d0:cb:3d (ECDSA)
| ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBHCK2y                                                               d1f39AlLoIZFsvpSlRlzyO1wjBoVy8NvMp4/6Db2TJNwcUNNFjYQRd5EhxNnP+oLvOTofBlF/n0ms6Sw                                                               E=
|   256 30:50:cb:70:5a:86:57:22:cb:52:d9:36:34:dc:a5:58 (ED25519)
|_ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGqh93OTpuL32KRVEn9zL/Ybk+5mAsT/81axilYUUv                                                               UB
139/tcp  open  netbios-ssn syn-ack ttl 63 Samba smbd 3.X - 4.X (workgroup: WORKG                                                               ROUP)
445/tcp  open  netbios-ssn syn-ack ttl 63 Samba smbd 4.3.11-Ubuntu (workgroup: W                                                               ORKGROUP)
3128/tcp open  http-proxy  syn-ack ttl 63 Squid http proxy 3.5.12
|_http-server-header: squid/3.5.12
|_http-title: ERROR: The requested URL could not be retrieved
3333/tcp open  http        syn-ack ttl 63 Apache httpd 2.4.18 ((Ubuntu))
| http-methods:
|_  Supported Methods: OPTIONS GET HEAD POST
|_http-server-header: Apache/2.4.18 (Ubuntu)
|_http-title: Vuln University
No exact OS matches for host (If you know what OS is running on it, see https://                                                               nmap.org/submit/ ).
TCP/IP fingerprint:
OS:SCAN(V=7.80%E=4%D=7/11%OT=21%CT=1%CU=38410%PV=Y%DS=2%DC=I%G=Y%TM=62CC42E
OS:7%P=x86_64-pc-linux-gnu)SEQ(SP=105%GCD=1%ISR=107%TI=Z%CI=I%II=I%TS=8)OPS
OS:(O1=M508ST11NW6%O2=M508ST11NW6%O3=M508NNT11NW6%O4=M508ST11NW6%O5=M508ST1
OS:1NW6%O6=M508ST11)WIN(W1=68DF%W2=68DF%W3=68DF%W4=68DF%W5=68DF%W6=68DF)ECN
OS:(R=Y%DF=Y%T=40%W=6903%O=M508NNSNW6%CC=Y%Q=)T1(R=Y%DF=Y%T=40%S=O%A=S+%F=A
OS:S%RD=0%Q=)T2(R=N)T3(R=N)T4(R=Y%DF=Y%T=40%W=0%S=A%A=Z%F=R%O=%RD=0%Q=)T5(R
OS:=Y%DF=Y%T=40%W=0%S=Z%A=S+%F=AR%O=%RD=0%Q=)T6(R=Y%DF=Y%T=40%W=0%S=A%A=Z%F
OS:=R%O=%RD=0%Q=)T7(R=Y%DF=Y%T=40%W=0%S=Z%A=S+%F=AR%O=%RD=0%Q=)U1(R=Y%DF=N%
OS:T=40%IPL=164%UN=0%RIPL=G%RID=G%RIPCK=G%RUCK=G%RUD=G)IE(R=Y%DFI=N%T=40%CD
OS:=S)

Uptime guess: 198.840 days (since Fri Dec 24 19:25:02 2021)
Network Distance: 2 hops
TCP Sequence Prediction: Difficulty=261 (Good luck!)
IP ID Sequence Generation: All zeros
Service Info: Host: VULNUNIVERSITY; OSs: Unix, Linux; CPE: cpe:/o:linux:linux_ke                                                               rnel

Host script results:
|_clock-skew: mean: 1h19m59s, deviation: 2h18m34s, median: 0s
| nbstat: NetBIOS name: VULNUNIVERSITY, NetBIOS user: <unknown>, NetBIOS MAC: <u                                                               nknown> (unknown)
| Names:
|   VULNUNIVERSITY<00>   Flags: <unique><active>
|   VULNUNIVERSITY<03>   Flags: <unique><active>
|   VULNUNIVERSITY<20>   Flags: <unique><active>
|   \x01\x02__MSBROWSE__\x02<01>  Flags: <group><active>
|   WORKGROUP<00>        Flags: <group><active>
|   WORKGROUP<1d>        Flags: <unique><active>
|   WORKGROUP<1e>        Flags: <group><active>
| Statistics:
|   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
|   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
|_  00 00 00 00 00 00 00 00 00 00 00 00 00 00
| p2p-conficker:
|   Checking for Conficker.C or higher...
|   Check 1 (port 52228/tcp): CLEAN (Couldn't connect)
|   Check 2 (port 54098/tcp): CLEAN (Couldn't connect)
|   Check 3 (port 65442/udp): CLEAN (Failed to receive data)
|   Check 4 (port 34531/udp): CLEAN (Failed to receive data)
|_  0/4 checks are positive: Host is CLEAN or ports are blocked
| smb-os-discovery:
|   OS: Windows 6.1 (Samba 4.3.11-Ubuntu)
|   Computer name: vulnuniversity
|   NetBIOS computer name: VULNUNIVERSITY\x00
|   Domain name: \x00
|   FQDN: vulnuniversity
|_  System time: 2022-07-11T11:33:56-04:00
| smb-security-mode:
|   account_used: guest
|   authentication_level: user
|   challenge_response: supported
|_  message_signing: disabled (dangerous, but default)
| smb2-security-mode:
|   2.02:
|_    Message signing enabled but not required
| smb2-time:
|   date: 2022-07-11T15:33:56
|_  start_date: N/A

NSE: Script Post-scanning.
NSE: Starting runlevel 1 (of 3) scan.
Initiating NSE at 15:33
Completed NSE at 15:33, 0.00s elapsed
NSE: Starting runlevel 2 (of 3) scan.
Initiating NSE at 15:33
Completed NSE at 15:33, 0.00s elapsed
NSE: Starting runlevel 3 (of 3) scan.
Initiating NSE at 15:33
Completed NSE at 15:33, 0.00s elapsed
Read data files from: /usr/bin/../share/nmap
OS and Service detection performed. Please report any incorrect results at https                                                               ://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 36.79 seconds
           Raw packets sent: 1114 (53.042KB) | Rcvd: 1071 (46.302KB)


```

### What version of the squid proxy is running on the machine?

3.5.12

### How many ports will nmap scan if the flag -p-400 was used?

400

### Using the nmap flag -n what will it not resolve?

DNS

### What is the most likely operating system this machine is running?

Ubuntu

### What port is the web server running on?

3333


## Task 3  Locating directories using GoBuster

### What is the directory that has an upload form page?

/internal/

```
ubuntu@ubuntu:/opt/Wordlists$ gobuster -u http://10.10.211.64:3333 -w Wordlists/directory_scanner/directory_list_2.3_medium.txt

=====================================================
Gobuster v2.0.1              OJ Reeves (@TheColonial)
=====================================================
[+] Mode         : dir
[+] Url/Domain   : http://10.10.211.64:3333/
[+] Threads      : 10
[+] Wordlist     : Wordlists/directory_scanner/directory_list_2.3_medium.txt
[+] Status codes : 200,204,301,302,307,403
[+] Timeout      : 10s
=====================================================
2022/07/11 16:03:21 Starting gobuster
=====================================================
/images (Status: 301)
/css (Status: 301)
/js (Status: 301)
/fonts (Status: 301)
/internal (Status: 301)
/server-status (Status: 403)
Progress: 102562 / 220546 (46.50%)
```

## Task 4  Compromise the webserver
	
### Try upload a few file types to the server, what common extension seems to be blocked?

.php

### Run this attack, what extension is allowed?

