select *
from movies where id = integer '1';

select cast('1' as integer);
select cast('10' as float);

select cast('2025-01-01' as date);
select cast('2025-01-01 12:00:00' as timestamp);

select cast('true' as boolean),
       cast('false' as boolean),
       cast('T' as boolean),
       cast('F' as boolean);

select '10'::integer, '2020-01-01'::date, '2020-01-01 12:00:00'::timestamp, 'true'::boolean;

select '10 minutes'::interval, '4 hours'::interval, '1 day'::interval, '1 week'::interval, '1 month'::interval;