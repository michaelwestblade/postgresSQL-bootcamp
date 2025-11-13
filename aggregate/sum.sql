select * from movies_revenues;

select sum(movies_revenues.revenues_domestic), sum(revenues_international) from movies_revenues;

select sum(revenues_domestic) from movies_revenues;

select sum(distinct revenues_domestic) from movies_revenues;