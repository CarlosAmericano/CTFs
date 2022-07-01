# Volatility
Learn how to perform memory forensics with Volatility!

## Task 3  Examining Our Patient

voluser@vol-server:~$ volatility -f cridex.vmem imageinfo
Volatility Foundation Volatility Framework 2.6
INFO    : volatility.debug    : Determining profile based on KDBG search...
          Suggested Profile(s) : WinXPSP2x86, WinXPSP3x86 (Instantiated with WinXPSP2x86)
                     AS Layer1 : IA32PagedMemoryPae (Kernel AS)
                     AS Layer2 : FileAddressSpace (/home/voluser/cridex.vmem)
                      PAE type : PAE
                           DTB : 0x2fe000L
                          KDBG : 0x80545ae0L
          Number of Processors : 1
     Image Type (Service Pack) : 3
                KPCR for CPU 0 : 0xffdff000L
             KUSER_SHARED_DATA : 0xffdf0000L
           Image date and time : 2012-07-22 02:45:08 UTC+0000
     Image local date and time : 2012-07-21 22:45:08 -0400


volatility -f cridex.vmem --profile=WinXPSP2x86 pslist

Offset(V)  Name                    PID   PPID   Thds     Hnds   Sess  Wow64 Start                          Exit                        
  
---------- -------------------- ------ ------ ------ -------- ------ ------ ------------------------------ ----------------------------
--
0x823c89c8 System                    4      0     53      240 ------      0                                                            
  
0x822f1020 smss.exe                368      4      3       19 ------      0 2012-07-22 02:42:31 UTC+0000                               
  
0x822a0598 csrss.exe               584    368      9      326      0      0 2012-07-22 02:42:32 UTC+0000                               
  
0x82298700 winlogon.exe            608    368     23      519      0      0 2012-07-22 02:42:32 UTC+0000                               
  
0x81e2ab28 services.exe            652    608     16      243      0      0 2012-07-22 02:42:32 UTC+0000                               
  
0x81e2a3b8 lsass.exe               664    608     24      330      0      0 2012-07-22 02:42:32 UTC+0000                               
  
0x82311360 svchost.exe             824    652     20      194      0      0 2012-07-22 02:42:33 UTC+0000                               
  
0x81e29ab8 svchost.exe             908    652      9      226      0      0 2012-07-22 02:42:33 UTC+0000                               
  
0x823001d0 svchost.exe            1004    652     64     1118      0      0 2012-07-22 02:42:33 UTC+0000                               
  
0x821dfda0 svchost.exe            1056    652      5       60      0      0 2012-07-22 02:42:33 UTC+0000                               
  
0x82295650 svchost.exe            1220    652     15      197      0      0 2012-07-22 02:42:35 UTC+0000                               
  
0x821dea70 explorer.exe           1484   1464     17      415      0      0 2012-07-22 02:42:36 UTC+0000                               
  
0x81eb17b8 spoolsv.exe            1512    652     14      113      0      0 2012-07-22 02:42:36 UTC+0000                               
  
0x81e7bda0 reader_sl.exe          1640   1484      5       39      0      0 2012-07-22 02:42:36 UTC+0000                               
  
0x820e8da0 alg.exe                 788    652      7      104      0      0 2012-07-22 02:43:01 UTC+0000                               
  
0x821fcda0 wuauclt.exe            1136   1004      8      173      0      0 2012-07-22 02:43:46 UTC+0000                               
  
0x8205bda0 wuauclt.exe            1588   1004      5      132      0      0 2012-07-22 02:44:01 UTC+0000  


voluser@vol-server:~$ volatility -f cridex.vmem --profile=WinXPSP2x86 psxview
Volatility Foundation Volatility Framework 2.6
Offset(P)  Name                    PID pslist psscan thrdproc pspcid csrss session deskthrd ExitTime
---------- -------------------- ------ ------ ------ -------- ------ ----- ------- -------- --------
0x02498700 winlogon.exe            608 True   True   True     True   True  True    True     
0x02511360 svchost.exe             824 True   True   True     True   True  True    True     
0x022e8da0 alg.exe                 788 True   True   True     True   True  True    True     
0x020b17b8 spoolsv.exe            1512 True   True   True     True   True  True    True     
0x0202ab28 services.exe            652 True   True   True     True   True  True    True     
0x02495650 svchost.exe            1220 True   True   True     True   True  True    True     
0x0207bda0 reader_sl.exe          1640 True   True   True     True   True  True    True     
0x025001d0 svchost.exe            1004 True   True   True     True   True  True    True     
0x02029ab8 svchost.exe             908 True   True   True     True   True  True    True     
0x023fcda0 wuauclt.exe            1136 True   True   True     True   True  True    True     
0x0225bda0 wuauclt.exe            1588 True   True   True     True   True  True    True     
0x0202a3b8 lsass.exe               664 True   True   True     True   True  True    True     
0x023dea70 explorer.exe           1484 True   True   True     True   True  True    True     
0x023dfda0 svchost.exe            1056 True   True   True     True   True  True    True     
0x024f1020 smss.exe                368 True   True   True     True   False False   False    
0x025c89c8 System                    4 True   True   True     True   False False   False    
0x024a0598 csrss.exe               584 True   True   True     True   False True    True    

voluser@vol-server:~$ volatility -f cridex.vmem --profile=WinXPSP2x86 ldrmodules > mem.txt

voluser@vol-server:~$ cat mem.txt | grep False
       4 System               0x7c900000 False  False  False \WINDOWS\system32\ntdll.dll
     368 smss.exe             0x48580000 True   False  True  \WINDOWS\system32\smss.exe
     584 csrss.exe            0x00460000 False  False  False \WINDOWS\Fonts\vgasys.fon
     584 csrss.exe            0x4a680000 True   False  True  \WINDOWS\system32\csrss.exe
     608 winlogon.exe         0x01000000 True   False  True  \WINDOWS\system32\winlogon.exe
     652 services.exe         0x01000000 True   False  True  \WINDOWS\system32\services.exe
     664 lsass.exe            0x01000000 True   False  True  \WINDOWS\system32\lsass.exe
     824 svchost.exe          0x01000000 True   False  True  \WINDOWS\system32\svchost.exe
     908 svchost.exe          0x01000000 True   False  True  \WINDOWS\system32\svchost.exe
    1004 svchost.exe          0x01000000 True   False  True  \WINDOWS\system32\svchost.exe
    1056 svchost.exe          0x01000000 True   False  True  \WINDOWS\system32\svchost.exe
    1220 svchost.exe          0x01000000 True   False  True  \WINDOWS\system32\svchost.exe
    1484 explorer.exe         0x01000000 True   False  True  \WINDOWS\explorer.exe
    1512 spoolsv.exe          0x01000000 True   False  True  \WINDOWS\system32\spoolsv.exe
    1640 reader_sl.exe        0x00400000 True   False  True  \Program Files\Adobe\Reader 9.0\Reader\reader_sl.exe
     788 alg.exe              0x01000000 True   False  True  \WINDOWS\system32\alg.exe
    1136 wuauclt.exe          0x00400000 True   False  True  \WINDOWS\system32\wuauclt.exe
    1588 wuauclt.exe          0x00400000 True   False  True  \WINDOWS\system32\wuauclt.exe

Using the 'apihooks' command we can view unexpected patches in the standard system DLLs.

volatility -f cridex.vmem --profile=WinXPSP2x86 apihooks


volatility -f cridex.vmem --profile=WinXPSP2x86 malfind -D malware/


volatility -f cridex.vmem --profile=WinXPSP2x86 dlllist

voluser@vol-server:~$ volatility -f cridex.vmem --profile=WinXPSP2x86 --pid=584 dlldump -D export/


https://www.virustotal.com/gui/home/upload
https://www.hybrid-analysis.com/