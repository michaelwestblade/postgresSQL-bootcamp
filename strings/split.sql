select split_part('1,2,3', ',', 2);

select split_part('A|B|C|D', '|', 2);

select name, release_date, split_part(release_date::varchar, '-', 1) as release_year from movies;