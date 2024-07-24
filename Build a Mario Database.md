types of relationships one-to-one, many-to-one, many-to-many

login to postgreSQL psql --username=freecodecamp --dbname=postgres

\l - list database content

CREATE DATABASE "database_name"; - create a database. use semicolon

\c "database_name" - connect to database

\d - display database tables. "table_name" after to looked at specific table

CREATE TABLE "table_name"("optional" "column_name" "DATATYPE" "CONSTRAINTS"); -
create a database table. use parentheses and semicolon

ALTER TABLE "table_name" ADD COLUMN "column_name" "DATATYPE" "CONSTRAINTS"; -
adds column of datatype to table. use semicolon. datatype is capitalized.
constraints are optional and are separated with spaces if there are multiple

ALTER TABLE "table_name" DROP COLUMN "column_name"; - deletes column from table.
use semicolon

VARCHAR("length") - a short string of varying characters. must provide length

ALTER TABLE "table_name" RENAME COLUMN "name" TO "new_name"; - renames column.
use semicolon. if units are being used, column name can reflect that for clarity

INSERT INTO "table_name"("column_name_1", "column_name_2", "more optional")
VALUES("value_1", "value_2", "more optional"),("value_1", "value_2", "more
optional"); - adds data into columns. use semicolon. VARCHAR value needs single
quotes. can add multiple rows at a time. if there's an key associated with the
value, it needs to be set here too. Can use NULL or leave values empty if you
want to exclude them

SELECT "columns" FROM "table_name" WHERE "condition"; - views column contents.
user semicolon. "\*" selects all columns. condition shows only info for
specified condition

DELETE FROM "table_name" WHERE "column_name=value"; - deletes value from column.
use semi colon. VARCHAR must use quotes

DROP TABLE "table_name"; - deletes table from database. use semicolon

ALTER DATABASE "database_name" RENAME TO "new_database_name"; - renames
database. use semicolon

SERIAL - INT datatype with "not null" constraint. will increment value as new
contents are added to the table

UPDATE "table_name" SET "column_name=new_value" WHERE "condition" - updates
value at the place that matches the condition

SELECT "columns" FROM "table_name" ORDER BY "column_name"; - sorts the rows in
order of column name. use semicolon

ALTER TABLE "table_name" ADD PRIMARY KEY("column_name", "more_optional"); -
makes a column the primary key for identification purposes. use semi colon. will
tell you primary key at bottom of \d if there is one. can have multiple columns
form composite key

ALTER TABLE "table_name" DROP CONSTRAINT "constraint_name"; - removes constraint
from table. dropping primary key would mean constraint is "table_name"\_pkey

DATE - data type for tracking date?

NUMERIC(X, Y) - data time for decimals. up to X digits, Y has to be to the right
of the decimal

ALTER TABLE "table_name" ADD COLUMN "column_name" "DATATYPE" REFERENCES
"referenced_table_name"("referenced_column_name"); - creates a "foreign key"
that relates one value from a table to another value in another table

ALTER TABLE "table_name" ADD UNIQUE("column_name") - adds unique constraint to
specified column

ALTER TABLE "table_name" ALTER COLUMN "column_name" SET NOT NULL; - makes sure
rows aren't made with nobody in them

ALTER TABLE "table_name" ADD FOREIGN KEY("column_name") REFERENCES
"referenced_table_name"("column_name") - adds a foreign key to table referenced
from specified table

SELECT "columns" FROM "table_1" FULL JOIN "table_2" ON
"table_1"."primary_key_column" = "table_2"."foreign_key_column"; - views all
info were the keys match. use "." to separate "table_name" and "key_column"