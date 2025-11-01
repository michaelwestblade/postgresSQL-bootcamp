CREATE TYPE currency AS ENUM ('USD', 'EUR', 'GBP', 'JPY', 'CAD', 'AUD', 'CHF', 'NZD', 'SEK', 'DKK', 'NOK', 'HRK', 'RUB', 'TRY', 'BGN', 'CZK', 'HUF', 'PLN', 'RON', 'SKK', 'ILS', 'INR', 'KRW', 'MXN', 'MYR', 'PHP', 'SGD', 'THB', 'ZAR', 'BRL', 'CLP', 'COP', 'PEN', 'VEF', 'ARS', 'COU');

select 'USD'::currency;

alter type currency add value 'ZWD';

alter type currency add value;

CREATE TABLE stocks (
    id serial PRIMARY KEY,
    name varchar(255),
    currency currency
);

insert into stocks (name, currency) values ('Tesla', 'USD');
insert into stocks (name, currency) values ('Apple', 'USD');
insert into stocks (name, currency) values ('Microsoft', 'USD');
insert into stocks (name, currency) values ('Google', 'USD');
insert into stocks (name, currency) values ('NKA', 'EUR');

insert into stocks (name, currency) values ('Tesla', 'ZWD');
insert into stocks (name, currency) values ('Apple', 'ZWDD');

CREATE TYPE sample_type as ENUM ('a', 'b', 'c');

CREATE TYPE status as ENUM ('pending', 'approved', 'rejected');
alter type status add value 'cancelled';
alter type status add value 'completed';

CREATE table cron_jobs (
    id serial PRIMARY KEY,
    name varchar(255),
    status status default 'pending'
);


