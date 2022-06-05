## DESCRIPTION
Author: Enyei

We inspected our logs and found someone downloading a file from a machine within the same network.

Can you help find out what the contents of the file are?

For beginners:

https://www.javatpoint.com/wireshark


## NOTES

Exported objects thingamajig.zip, password protected file
Checked the pcap but couldnt find any reference to what the password could be
Trying to bruteforce it 
fcrackzip -u -D -p ./wordlists/rockyou.txt thingamajig.zip


## FLAG