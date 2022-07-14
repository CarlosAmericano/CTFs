# Committed  
One of our developers accidentally committed some sensitive code to our GitHub repository. Well, at least, that is what they told us...

## NOTES

Extracted zip file

Show overview
```
buntu@thm-comitted:~/commited/commited$ git show-branch 
! [dbint] Reminder Added.
 * [master] Finished
--
 * [master] Finished
+  [dbint] Reminder Added.
+  [dbint^] Oops
+  [dbint~2] DB check
+  [dbint~3] Note added
+* [master^] Database management features added.
```

dbint branch details
```
git log dbint
    Reminder Added.

commit c56c470a2a9dfb5cfbd54cd614a9fdb1644412b5
Author: fumenoid <fumenoid@gmail.com>
Date:   Sun Feb 13 00:46:39 2022 -0800

    Oops


```   

Show details of the commit
```
git commit c56c470a2a9dfb5cfbd54cd614a9fdb1644412b5

@@ -4,7 +4,7 @@ def create_db():
     mydb = mysql.connector.connect(
     host="localhost",
     user="root", # Username Goes Here
-    password="flag{a489a9dbf8eb9d37c6e0cc1a92cda17b}" # Password Goes Here
+    password="" # Password Goes Here
     )
 
```

## FLAG
flag{a489a9dbf8eb9d37c6e0cc1a92cda17b}