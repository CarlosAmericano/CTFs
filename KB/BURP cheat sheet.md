# Burp

## Proxy

Define scope:
Target Options, Target Scope

Remove proxy from out of scope:
Proxy Options sub-tab and select "And URL Is in target scope" from the Intercept Client Requests section

Change payload:
URL encode it with the Ctrl + U

before:
email=<script>alert("Succ3ssful XSS")</script>&content=aaaaa
after:
email=<script>alert("Succ3ssful+XSS")</script>&content=aaaaa

## Repeater

Bruteforce login forms
Burp / Intruder / Set payloads / Fill payload data / Clusterbomb 
