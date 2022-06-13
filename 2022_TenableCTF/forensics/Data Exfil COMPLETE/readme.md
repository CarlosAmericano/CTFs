## DESCRIPTION
We noted some strange traffic on our network. Can you figure out what it is?



## NOTES
Figured out that the traffic was being exfiltrated using icmp packets.
Looking at the packets where the size is unusual big, saw that the data was a png file
Exported interesting packets to a separate pcap file and used scapy to assemble that (this took the longest)


## FLAG
flag{d4t4_over_1cmp}