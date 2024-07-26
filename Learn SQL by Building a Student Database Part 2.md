psql -U postgres < students.sql: rebuilds database

AND, OR, ... : for multiple conditions. group conditions with parenthesis

LIKE : finding matching patterns

NOT LIKE : finding non-matching patterns

(NOT) ILIKE : patterns, but ignores case

\_ : for single wildcard

% : for wildcard of any length

IS (NOT) NULL : checking if column doesn't have entry

ORDER BY column (ASC, DESC): specify order of results

LIMIT number : number of rows. must be at end of query

SELECT math(column) from table : uses math on column and returns value: MIN,
MAX, SUM, AVG, CEIL, FLOOR, ROUND(number, places), COUNT, DISTINCT

GROUP BY : similar to DISTINCT. Returns unique values

HAVING COUNT(\*) > 0 : only shows rows that pass test

SELECT column AS new_name : renames column for display

SELECT \* FROM table1 FULL JOIN table2 ON table1.foreignKeyColumn =
table2.foreignKeyColumn : joins tables with a shared foreign key. shows all rows
regardless of missing values. can string multiple joins together

SELECT \* FROM table1 LEFT JOIN table2 ON table1.foreignKeyColumn =
table2.foreignKeyColumn : joins tables but only gets values that have a link to
the left table

SELECT \* FROM table1 RIGHT JOIN table2 ON table1.foreignKeyColumn =
table2.foreignKeyColumn : joins tables but only gets values that have a link to
the right table

SELECT \* FROM table1 INNER JOIN table2 ON table1.foreignKeyColumn =
table2.foreignKeyColumn : joins tables but only gets values that have a value in
the foreign key column of the opposite table

USING(foreign key) : shortcut for table1.foreignKeyColumn =
table2.foreignKeyColumn. groups foreign key columns if they share a name
