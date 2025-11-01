CREATE TYPE address AS (
    city VARCHAR(50),
    state VARCHAR(50),
    zip VARCHAR(10)
);

create table companies(
    id serial primary key,
    address address
);

insert into companies (address) VALUES (ROW('San Francisco', 'CA', '94105'));

select (address).zip from companies;

CREATE TYPE inventory_item as (
    name VARCHAR(50),
    supplier_id INT,
    price NUMERIC(10,2)
                              );

create table inventory(
    id serial primary key,
    item inventory_item
);

insert into inventory (item) VALUES (ROW('Widget', 1, 10.00));
insert into inventory (item) VALUES (ROW('Paper', 20, 10.99));
insert into inventory (item) VALUES (ROW('Bags', 34, 5.66));

select * from inventory where (item).price > 10;
