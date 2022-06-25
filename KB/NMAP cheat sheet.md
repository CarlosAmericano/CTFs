# NMAP

-sS = TCP Connect scan
-sC = Scripts default
-sV = Probe open ports to determine service/version info
-oA = output all
-O = enable OS detection
-vv = verbose settings
-p- = All ports

nmap -sS -sC -sV -O -oA -vv nmap/initial $IP

NSE reference
https://nmap.org/nsedoc/

Stored in this location by default
/usr/share/nmap/scripts/