#https://stuxnet999.github.io/wireshark/2018/09/09/Swamp-Orcish.html
#https://github.com/welchbj/ctf/blob/master/docs/pcap.md
from scapy.all import *

r = rdpcap("selected.pcapng")
print(r)

with open("out.raw", "wb") as f:
    for p in r:
        if ICMP in p:
            chunk = bytes(p[Raw])
            f.write(chunk)