SELECT LEFT('Hello', 2);
SELECT LEFT('Hello', -1);

SELECT LEFT(first_name, 1) as first_initial, last_name from directors;

select left(first_name, 1) as initial, count(*) as total_initials from directors group by 1 order by 1;