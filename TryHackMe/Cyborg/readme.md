# Cyborg
A box involving encrypted archives, source code analysis and more.


## Task 2  Compromise the System
Compromise the machine and read the user.txt and root.txt

### Scan the machine, how many ports are open?
Answer format: *

2

sudo nmap -sS -sC -sV -O -oA initialnmap -vv 10.10.228.213

port 22 and 80 open

### What service is running on port 22?
Answer format: ***

ssh

22/tcp open  ssh     syn-ack ttl 63 OpenSSH 7.2p2 Ubuntu 4ubuntu2.10 (Ubuntu Linux; protocol 2.0)

### What service is running on port 80?
Answer format: ****

http

80/tcp open  http    syn-ack ttl 63 Apache httpd 2.4.18 ((Ubuntu))

### What is the user.txt flag?
Answer format: ****{*********************************}

#### Discovery

Gobuster v2.0.1              OJ Reeves (@TheColonial)
=====================================================
[+] Mode         : dir
[+] Url/Domain   : http://10.10.228.213/
[+] Threads      : 10
[+] Wordlist     : wordlists/DirBuster-Lists/directory-list-2.3-medium.txt
[+] Status codes : 200,204,301,302,307,403
[+] Timeout      : 10s
=====================================================
2022/06/25 15:14:51 Starting gobuster
=====================================================
/admin (Status: 301)
/etc (Status: 301)
/server-status (Status: 403)
=====================================================
2022/06/25 15:25:59 Finished


#### User details
In the /etc found the following credentials lying around

http://10.10.228.213/etc/squid/passwd

music_archive:$apr1$BpZ.Q.1m$F0qqPwHSOG50URuOVQTTn.

hashcat hash -m 1600 /home/linux/Documents/wordlists/rockyou.txt --force

$apr1$BpZ.Q.1m$F0qqPwHSOG50URuOVQTTn.:squidward

Looking around the website saw mentions of the squid proxy setup, thats the stuff above and the "music_archive"

Downloading the archive.tar file, turns out is a borg backup repo

Mounted that, when asked for the password is the one that found above

One of the files has this

alex:S3cretP@s3

#### Flag
flag{1_hop3_y0u_ke3p_th3_arch1v3s_saf3}

### What is the root.txt flag?
Answer format: ****{***********************************}

#### Identify Priv Esc

Windows based python http server

python3 -m pip install simple_http_server

python -m http.server 80

and hosted linpeas

https://github.com/carlospolop/PEASS-ng/tree/master/linPEAS

╔══════════╣ Executing Linux Exploit Suggester
╚ https://github.com/mzet-/linux-exploit-suggester
[+] [CVE-2021-4034] PwnKit

   Details: https://www.qualys.com/2022/01/25/cve-2021-4034/pwnkit.txt
   Exposure: probable
   Tags: [ ubuntu=10|11|12|13|14|15|16|17|18|19|20|21 ],debian=7|8|9|10|11,fedora,manjaro
   Download URL: https://codeload.github.com/berdav/CVE-2021-4034/zip/main


#### Exploit Pwnkit

https://github.com/ly4k/PwnKit

This feels like cheating though, not sure if this was the intended way

#### Flag
flag{Than5s_f0r_play1ng_H0p£_y0u_enJ053d}
