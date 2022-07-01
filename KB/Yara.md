# Yara

## Rules

myfirstrule.yar

``` yara
rule examplerule {
        condition: true
}
```

cmnatic@thm-yara:~$ yara myfirstrule.yar somefile

examplerule somefile

cmnatic@thm-yara:~$ yara myfirstrule.yar somefilexxxxx

error scanning somefilexxxxx: could not open file


https://yara.readthedocs.io/en/stable/writingrules.html
https://blog.securitybreak.io/security-infographics-9c4d3bd891ef
https://github.com/InQuest/awesome-yara

## LOKI
LOKI is a free open source IOC (Indicator of Compromise) scanner created/written by Florian Roth.

File Name IOC Check
Yara Rule Check (we are here)
Hash Check
C2 Back Connect Check

## THOR
THOR Lite is Florian's newest multi-platform IOC AND YARA scanner.

## Fenrir
Fenrir is a simple IOC scanner bash script. It allows scanning Linux/Unix/OSX systems for the following Indicators of Compromise (IOCs):

## YAYA 
YAYA was created by the EFF (Electronic Frontier Foundation) and released in September 2020. Based on their website, "YAYA is a new open-source tool to help researchers manage multiple YARA rule repositories. YAYA starts by importing a set of high-quality YARA rules and then lets researchers add their own rules, disable specific rulesets, and run scans of files."


# Task 9  Using LOKI and its Yara rule set

## Scan file 1. Does Loki detect this file as suspicious/malicious or benign?
suspicious

python ../../tools/Loki/loki.py -p .

```

INFO] Scanning . ...                                                           [WARNING]
FILE: ./ind3x.php SCORE: 70 TYPE: PHP SIZE: 80992
FIRST_BYTES: 3c3f7068700a2f2a0a09623337346b20322e320a / <?php/*b374k 2.2
MD5: 1606bdac2cb613bf0b8a22690364fbc5
SHA1: 9383ed4ee7df17193f7a034c3190ecabc9000f9f
SHA256: 5479f8cd1375364770df36e5a18262480a8f9d311e8eedb2c2390ecb233852ad CREATED: Mon Nov  9 15:15:32 2020 MODIFIED: Mon Nov  9 13:06:56 2020 ACCESSED: Wed Jun 29 19:53:23 2022
REASON_1: Yara Rule MATCH: webshell_metaslsoft SUBSCORE: 70
DESCRIPTION: Web Shell - file metaslsoft.php REF: -
 MATCHES: Str1: $buff .= "<tr><td><a href=\\"?d=".$pwd."\\">[ $folder ]</a></td><td>LINK</t 
```

## What Yara rule did it match on?
webshell_metaslsoft

## Based on the output, what string within the Yara rule did it match on?
Str1


## What is the name and version of this hack tool?
b374k 2.2


## Inspect the actual Yara file that flagged file 1. Within this rule, how many strings are there to flag this file?
1

Identify the file

```
cmnatic@thm-yara:~/suspicious-files/file1$ grep 'webshell_metaslsoft' ../../tools/Loki/signature-base/yara/*
../../tools/Loki/signature-base/yara/thor-webshells.yar:rule webshell_metaslsoft {
```


Grep relevant part
```
cmnatic@thm-yara:~/suspicious-files/file1$ cat ../../tools/Loki/signature-base/yara/thor-webshells.yar | grep 'webshell_metaslsoft' --after-context=20
rule webshell_metaslsoft {
        meta:
                description = "Web Shell - file metaslsoft.php"
                license = "https://creativecommons.org/licenses/by-nc/4.0/"
                author = "Florian Roth"
                date = "2014/01/28"
                score = 70
                hash = "aa328ed1476f4a10c0bcc2dde4461789"
        strings:
                $s7 = "$buff .= \"<tr><td><a href=\\\"?d=\".$pwd.\"\\\">[ $folder ]</a></td><td>LINK</t"
        condition:
                all of them
}
```

## Scan file 2. Does Loki detect this file as suspicious/malicious or benign?
benign

```
NFO] Scanning . ...                                                                                                          [NOTICE] Results: 0 alerts, 0 warnings, 7 notices                                                                              [RESULT] SYSTEM SEEMS TO BE CLEAN.  
```

