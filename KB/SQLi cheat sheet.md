# SQLi

## Notes

/about/0 UNION ALL SELECT column_name,null,null,null,null FROM information_schema.columns WHERE table_name="people"

This creates a union query and selects our target then four null columns (to avoid the query erroring out). Notice that we also changed the ID that we are selecting from 2 to 0. By setting the ID to an invalid number, we  ensure that we don't retrieve anything with the original (legitimate) query; this means that the first row returned from the database will be our desired response from the injected query.

We have successfully pulled the first column name out of the database, but we now have a problem. The page is only displaying the first matching item -- we need to see all of the matching items.

Fortunately, we can use our SQLi to group the results. We can still only retrieve one result at a time, but by using the group_concat() function, we can amalgamate all of the column names into a single output:
/about/0 UNION ALL SELECT group_concat(column_name),null,null,null,null FROM information_schema.columns WHERE table_name="people"

0 UNION ALL SELECT notes,null,null,null,null FROM people WHERE id = 1

## Comments
Most commonly used comments for SQLi payloads:

```
--+
//
/*
```

What happens if we input ' or true -- username field there? This will turn the above query into this:

SELECT username,password FROM users WHERE username='' or true -- and password=''
The -- in this case has commented out the password checking part, making the application forget to check if the password was correct. This trick allows you to log in to any account by just putting a username and payload right after it.


Try putting anything') or true; -- in the password box (including the space)


##
Blind SQL

For asking the questions, you can use SUBSTR() SQL function. It extracts a substring from a string and allows us to compare the substring to a custom ASCII character.

substr((select database()),1,1)) = 115
The above code is asking the database if its name's first letter is equal to 155 ('s' in ASCII table).

Now put this into a payload:

?id=1' AND (ascii(substr((select database()),1,1))) = 115 --+
The payload is the question. If the application does not produce any changes, then the answer is 'Yes' (the database's first letter is 's'). Any error or change = 'No'.
