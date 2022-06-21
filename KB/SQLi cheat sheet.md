# SQLi

## Notes

/about/0 UNION ALL SELECT column_name,null,null,null,null FROM information_schema.columns WHERE table_name="people"

This creates a union query and selects our target then four null columns (to avoid the query erroring out). Notice that we also changed the ID that we are selecting from 2 to 0. By setting the ID to an invalid number, we  ensure that we don't retrieve anything with the original (legitimate) query; this means that the first row returned from the database will be our desired response from the injected query.

We have successfully pulled the first column name out of the database, but we now have a problem. The page is only displaying the first matching item -- we need to see all of the matching items.

Fortunately, we can use our SQLi to group the results. We can still only retrieve one result at a time, but by using the group_concat() function, we can amalgamate all of the column names into a single output:
/about/0 UNION ALL SELECT group_concat(column_name),null,null,null,null FROM information_schema.columns WHERE table_name="people"

0 UNION ALL SELECT notes,null,null,null,null FROM people WHERE id = 1
