select lpad('hello', 10, 'x');
select rpad('hello', 10, 'x');


select m.name, mr.revenues_domestic, lpad('*', cast(trunc(mr.revenues_domestic/10) as int), '*') from movies m
join movies_revenues mr on m.id = mr.movie_id
order by 3 desc nulls last;