create table table_emails(
    id serial primary key,
    emails text unique
);

insert into table_emails(emails) values ('test@test.com');
insert into table_emails(emails) values ('test@test.com');

create table table_products(
    id serial primary key,
    product_code varchar(10),
    product_name text,
    unique(product_code, product_name)
);

insert into table_products(product_code, product_name) values ('123456', 'test');
insert into table_products(product_code, product_name) values ('123456', 'test');