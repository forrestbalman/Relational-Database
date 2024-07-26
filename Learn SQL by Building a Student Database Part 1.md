cat file_name: print contents of a file

cat file_name | while IFS='boundary' read ARG1 ARG2; do STATEMENTS; done: pipes file contents
into loop

IFS: internal field separator. determines word boundaries

PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c": allows to run SQL from script

MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'"): queries PSQL database for variable. Single quotes around variables

[[ -z $MAJOR_ID ]]: checks if variable is empty

TRUNCATE majors, students, majors_courses: removes data from tables

pg_dump --clean --create --inserts --username=freecodecamp students > students.sql