select * from movies
fetch first 10 rows only;

select * from movies
 order by length desc
fetch first 5 rows only;

select * from directors
order by date_of_birth asc
fetch first 5 rows only;