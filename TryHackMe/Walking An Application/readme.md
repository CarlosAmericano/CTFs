# DESCRIPTION

Walking An Application
  
Manually review a web application for security issues using only your browsers developer tools. Hacking with just your browser, no tools or scripts.

## Task 3  Viewing The Page Source

### What is the flag from the HTML comment?

```html
<!--
This page is temporary while we work on the new homepage @ /new-home-beta
-->
```

THM{HTML_COMMENTS_ARE_DANGEROUS}

### What is the flag from the secret link?


``` html
<p class="welcome-msg">Our dedicated staff are ready <a href="/secret-page">to</a> assist you with your IT problems.</p>
```

http://10.10.158.89/secret-page

THM{NOT_A_SECRET_ANYMORE}

### What is the directory listing flag?

http://10.10.158.89/assets/

http://10.10.158.89/assets/flag.txt

THM{INVALID_DIRECTORY_PERMISSIONS}

### What is the framework flag?

``` html
<!--
Page Generated in 0.03396 Seconds using the THM Framework v1.2 ( https://static-labs.tryhackme.cloud/sites/thm-web-framework )
-->
```

Release notes for the 1.3 version

"We've had an issue where our backup process was creating a file in the web directory called /tmp.zip which potentially could of been read by website visitors. This file is now stored in an area that is unreadable by the public."

http://10.10.158.89/tmp.zip

THM{KEEP_YOUR_SOFTWARE_UPDATED}

## Task 4  Developer Tools - Inspector

### What is the flag from the HTML comment?

``` css
div.premium-customer-blocker {
    display: none;
```

THM{NOT_SO_HIDDEN}

## Task 5  Developer Tools - Debugger

### What is the flag in the red box?

THM{CATCH_ME_IF_YOU_CAN}


## Task 6  Developer Tools - Network

### What is the flag shown on the contact-msg network request?

THM{GOT_AJAX_FLAG}