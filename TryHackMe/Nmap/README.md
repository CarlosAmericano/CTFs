# DESCRIPTION



# NOTES



# FLAG

## Does the target (10.10.242.247)respond to ICMP (ping) requests (Y/N)?
n


## Perform an Xmas scan on the first 999 ports of the target -- how many ports are shown to be open or filtered?

sudo nmap -sX -p1-999 -Pn -oA xmasscan -vv 10.10.242.247
All 999 scanned ports on 10.10.242.247 are open|filtered because of 99 no-responses

Answer format: 999


## There is a reason given for this -- what is it?
Note: The answer will be in your scan results. Think carefully about which switches to use -- and read the hint before asking for help!

All 999 scanned ports on 10.10.242.247 are open|filtered because of 99 no-responses

Answer format: no responses


## Perform a TCP SYN scan on the first 5000 ports of the target -- how many ports are shown to be open?

linux@ubuntu:~ sudo nmap -sS -p1-5000 -oA synscan -Pn 10.10.242.247
Starting Nmap 7.80 ( https://nmap.org ) at 2022-06-15 20:59 IST
Nmap scan report for 10.10.242.247
Host is up (0.0074s latency).
Not shown: 4995 filtered ports
PORT     STATE SERVICE
21/tcp   open  ftp
53/tcp   open  domain
80/tcp   open  http
135/tcp  open  msrpc
3389/tcp open  ms-wbt-server

Answer format: 5


## Deploy the ftp-anon script against the box. Can Nmap login successfully to the FTP server on port 21? (Y/N)

linux@ubuntu:~ nmap -p21 --script=ftp-anon.nse -vv -Pn 10.10.242.247
Starting Nmap 7.80 ( https://nmap.org ) at 2022-06-15 21:09 IST
NSE: Loaded 1 scripts for scanning.
NSE: Script Pre-scanning.
NSE: Starting runlevel 1 (of 1) scan.
Initiating NSE at 21:09
Completed NSE at 21:09, 0.00s elapsed
Initiating Parallel DNS resolution of 1 host. at 21:09
Completed Parallel DNS resolution of 1 host. at 21:09, 0.01s elapsed
Initiating Connect Scan at 21:09
Scanning 10.10.242.247 [1 port]
Discovered open port 21/tcp on 10.10.242.247
Completed Connect Scan at 21:09, 0.12s elapsed (1 total ports)
NSE: Script scanning 10.10.242.247.
NSE: Starting runlevel 1 (of 1) scan.
Initiating NSE at 21:09
Completed NSE at 21:10, 30.06s elapsed
Nmap scan report for 10.10.242.247
Host is up, received user-set (0.12s latency).
Scanned at 2022-06-15 21:09:40 IST for 30s

PORT   STATE SERVICE REASON
21/tcp open  ftp     syn-ack
| ftp-anon: Anonymous FTP login allowed (FTP code 230)
|_Can t get directory listing: TIMEOUT

NSE: Script Post-scanning.
NSE: Starting runlevel 1 (of 1) scan.
Initiating NSE at 21:10
Completed NSE at 21:10, 0.00s elapsed
Read data files from: /usr/bin/../share/nmap
Nmap done: 1 IP address (1 host up) scanned in 30.56 seconds

Answer format: y
