select id, movies_revenues.revenues_domestic, movies_revenues.revenues_international, greatest(revenues_domestic, revenues_international) from movies_revenues;

select id, movies_revenues.revenues_domestic, movies_revenues.revenues_international, least(revenues_domestic, revenues_international) from movies_revenues;

select id, movies_revenues.revenues_domestic, movies_revenues.revenues_international, revenues_domestic+revenues_international as total from movies_revenues;