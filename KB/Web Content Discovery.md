# Content Discovery

## Favicon

https://wiki.owasp.org/index.php/OWASP_favicon_database

## Sitemap

http://10.10.34.23/sitemap.xml

Unlike the robots.txt file, which restricts what search engine crawlers can look at, the sitemap.xml file gives a list of every file the website owner wishes to be listed on a search engine. 

## Curl

curl http://10.10.34.23 -v

## GoBuster

gobuster -w wordlists/DirBuster-Lists/directory-list-2.3-medium.txt
gobuster -w wordlists/DirBuster-Lists/directory-list-2.3-medium.txt -u 10.10.194.73 -x .log
