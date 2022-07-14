# Encryption - Crypto 101
An introduction to encryption, as part of a series on crypto

## Task 9  SSH Authentication

### Convert hash

wget https://raw.githubusercontent.com/magnumripper/JohnTheRipper/bleeding-jumbo/run/ssh2john.py

python3 ssh2john.py idrsa.id_rsa > idrsa.id_rsa.hash

### Install John Jumbi via snap

sudo apt remove john

sudo snap install john-the-ripper
 
john

 ```
 linux@ubuntu:~/Documents/MalwareRE$ john
John the Ripper 1.9.0-jumbo-1+bleeding-52a9bed 2022-05-13 11:45:08 +0200 OMP [linux-gnu 64-bit x86_64 AVX2 AC]
Copyright (c) 1996-2022 by Solar Designer and others
Homepage: https://www.openwall.com/john/
```

### Crack

john --wordlist=../wordlists/rockyou.txt idrsa.id_rsa.hash

```
linux@ubuntu:~/Documents/MalwareRE$ john idrsa.id_rsa.hash  --show
idrsa.id_rsa:delicious

1 password hash cracked, 0 left
```