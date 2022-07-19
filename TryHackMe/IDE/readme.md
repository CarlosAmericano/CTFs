# IDE
An easy box to polish your enumeration skills!

## Task 1  Flags
Gain a shell on the box and escalate your privileges!

### Nmap

sudo nmap -sS -sC -sV -O -oA initialnmap -vv 10.10.37.133

```
Nmap scan report for 10.10.37.133
Host is up, received echo-reply ttl 63 (0.0070s latency).
Scanned at 2022-07-12 20:23:13 IST for 21s
Not shown: 997 closed ports
Reason: 997 resets
PORT   STATE SERVICE REASON         VERSION
21/tcp open  ftp     syn-ack ttl 63 vsftpd 3.0.3
|_ftp-anon: Anonymous FTP login allowed (FTP code 230)
| ftp-syst:
|   STAT:
| FTP server status:
|      Connected to ::ffff:10.8.76.111
|      Logged in as ftp
|      TYPE: ASCII
|      No session bandwidth limit
|      Session timeout in seconds is 300
|      Control connection is plain text
|      Data connections will be plain text
|      At session startup, client count was 4
|      vsFTPd 3.0.3 - secure, fast, stable
|_End of status
22/tcp open  ssh     syn-ack ttl 63 OpenSSH 7.6p1 Ubuntu 4ubuntu0.3 (Ubuntu Linu                                                                                        x; protocol 2.0)
| ssh-hostkey:
|   2048 e2:be:d3:3c:e8:76:81:ef:47:7e:d0:43:d4:28:14:28 (RSA)
| ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC94RvPaQ09Xx+jMj32opOMbghuvx4OeBVLc+/4Ha                                                                                        scmrtsa+SMtQGSY7b+eyW8Zymxi94rGBIN2ydPxy3XXGtkaCdQluOEw5CqSdb/qyeH+L/1PwIhLrr+jz                                                                                        UoUzmQil+oUOpVMOkcW7a00BMSxMCij0HdhlVDNkWvPdGxKBviBDEKZAH0hJEfexz3Tm65cmBpMe7WCP                                                                                        iJGTvoU9weXUnO3+41Ig8qF7kNNfbHjTgS0+XTnDXk03nZwIIwdvP8dZ8lZHdooM8J9u0Zecu4OvPiC4                                                                                        XBzPYNs+6ntLziKlRMgQls0e3yMOaAuKfGYHJKwu4AcluJ/+g90Hr0UqmYLHEV
|   256 a8:82:e9:61:e4:bb:61:af:9f:3a:19:3b:64:bc:de:87 (ECDSA)
| ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBBzKTu                                                                                        7YDGKubQ4ADeCztKu0LL5RtBXnjgjE07e3Go/GbZB2vAP2J9OEQH/PwlssyImSnS3myib+gPdQx54lqZ                                                                                        U=
|   256 24:46:75:a7:63:39:b6:3c:e9:f1:fc:a4:13:51:63:20 (ED25519)
|_ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJ+oGPm8ZVYNUtX4r3Fpmcj9T9F2SjcRg4ansmeGR3                                                                                        cP
80/tcp open  http    syn-ack ttl 63 Apache httpd 2.4.29 ((Ubuntu))
| http-methods:
|_  Supported Methods: POST OPTIONS HEAD GET
|_http-server-header: Apache/2.4.29 (Ubuntu)
|_http-title: Apache2 Ubuntu Default Page: It works
No exact OS matches for host (If you know what OS is running on it, see https://                                                                                        nmap.org/submit/ ).
TCP/IP fingerprint:
OS:SCAN(V=7.80%E=4%D=7/12%OT=21%CT=1%CU=40606%PV=Y%DS=2%DC=I%G=Y%TM=62CDCA3
OS:6%P=x86_64-pc-linux-gnu)SEQ(SP=104%GCD=3%ISR=10B%TI=Z%CI=Z%II=I%TS=A)OPS
OS:(O1=M508ST11NW6%O2=M508ST11NW6%O3=M508NNT11NW6%O4=M508ST11NW6%O5=M508ST1
OS:1NW6%O6=M508ST11)WIN(W1=F4B3%W2=F4B3%W3=F4B3%W4=F4B3%W5=F4B3%W6=F4B3)ECN
OS:(R=Y%DF=Y%T=40%W=F507%O=M508NNSNW6%CC=Y%Q=)T1(R=Y%DF=Y%T=40%S=O%A=S+%F=A
OS:S%RD=0%Q=)T2(R=N)T3(R=N)T4(R=Y%DF=Y%T=40%W=0%S=A%A=Z%F=R%O=%RD=0%Q=)T5(R
OS:=Y%DF=Y%T=40%W=0%S=Z%A=S+%F=AR%O=%RD=0%Q=)T6(R=Y%DF=Y%T=40%W=0%S=A%A=Z%F
OS:=R%O=%RD=0%Q=)T7(R=Y%DF=Y%T=40%W=0%S=Z%A=S+%F=AR%O=%RD=0%Q=)U1(R=Y%DF=N%
OS:T=40%IPL=164%UN=0%RIPL=G%RID=G%RIPCK=G%RUCK=G%RUD=G)IE(R=Y%DFI=N%T=40%CD
OS:=S)

Uptime guess: 11.646 days (since Fri Jul  1 04:53:15 2022)
Network Distance: 2 hops
TCP Sequence Prediction: Difficulty=260 (Good luck!)
IP ID Sequence Generation: All zeros
Service Info: OSs: Unix, Linux; CPE: cpe:/o:linux:linux_kernel

NSE: Script Post-scanning.
NSE: Starting runlevel 1 (of 3) scan.
Initiating NSE at 20:23
Completed NSE at 20:23, 0.00s elapsed
NSE: Starting runlevel 2 (of 3) scan.
Initiating NSE at 20:23
Completed NSE at 20:23, 0.00s elapsed
NSE: Starting runlevel 3 (of 3) scan.
Initiating NSE at 20:23
Completed NSE at 20:23, 0.00s elapsed
Read data files from: /usr/bin/../share/nmap
OS and Service detection performed. Please report any incorrect results at https                                                                                        ://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 22.38 seconds
           Raw packets sent: 1114 (53.042KB) | Rcvd: 1083 (47.298KB)
```


Full Nmap scan showing this

```

Scanning 10.10.37.133 [65535 ports]
Discovered open port 80/tcp on 10.10.37.133
Discovered open port 21/tcp on 10.10.37.133
Discovered open port 22/tcp on 10.10.37.133
Discovered open port 62337/tcp on 10.10.37.133
```

62337 is Codiad 2.8.4

gobuster on port 80 shows nothing

```
=====================================================
Gobuster v2.0.1              OJ Reeves (@TheColonial)
=====================================================
[+] Mode         : dir
[+] Url/Domain   : http://10.10.37.133/
[+] Threads      : 10
[+] Wordlist     : Discovery/Web-Content/directory-list-2.3-medium.txt
[+] Status codes : 200,204,301,302,307,403
[+] Timeout      : 10s
=====================================================
2022/07/12 20:27:28 Starting gobuster
=====================================================
/server-status (Status: 403)
=====================================================
2022/07/12 20:36:43 Finished
=====================================================
```

anon ftp shows nothing

Gobuster on port 62337
```
linux@ubuntu:/opt/seclists/SecLists$ gobuster -u http://10.10.37.133:62337 -w Di

=====================================================
Gobuster v2.0.1              OJ Reeves (@TheColonial)
=====================================================
[+] Mode         : dir
[+] Url/Domain   : http://10.10.37.133:62337/
[+] Threads      : 10
[+] Wordlist     : Discovery/Web-Content/directory-list-2.3-medium.txt
[+] Status codes : 200,204,301,302,307,403
[+] Timeout      : 10s
=====================================================
2022/07/12 20:40:23 Starting gobuster
=====================================================
/themes (Status: 301)
/data (Status: 301)
/plugins (Status: 301)
/lib (Status: 301)
/languages (Status: 301)
/js (Status: 301)
/components (Status: 301)
/workspace (Status: 301)
/server-status (Status: 403)
=====================================================
2022/07/12 20:46:22 Finished
=====================================================
linux@ubuntu:/opt/seclists/SecLists$
```

Codiad 2.8.4 has an authenticated RCE, pretty sure this is the way but cant login for the moment, tried hydra but not getting any luck with the failure detection

### user.txt


### root.txt
