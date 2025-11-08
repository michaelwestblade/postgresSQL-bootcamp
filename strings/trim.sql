select trim('  abc  ');
select trim(leading '  ' from '  abc  '), trim(trailing '  ' from '  abc  '), trim('   abc   ');


select trim(leading '0' from 000123456::text);

select ltrim('yummy', 'y');
select rtrim('yummy', 'y');
select btrim('yummy', 'y');