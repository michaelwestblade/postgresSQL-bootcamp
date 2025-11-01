CREATE DOMAIN addr VARCHAR(100) not null;

create table locations(
    address addr
);

INSERT INTO locations VALUES('123 Main St');

CREATE DOMAIN positive_numeric INT NOT NULL CHECK (VALUE > 0);

create table sample(
    id serial primary key,
    value positive_numeric
);

INSERT INTO sample (value) VALUES (10);
INSERT INTO sample (value) VALUES (-10);

CREATE DOMAIN us_postal_code AS TEXT CHECK (VALUE ~ '^\d{5}(?:[-\s]\d{4})?$');

create table addresses(
    id serial primary key,
    postal_code us_postal_code
);

INSERT INTO addresses (postal_code) VALUES ('12345');
INSERT INTO addresses (postal_code) VALUES ('12345555');

CREATE DOMAIN email AS TEXT CHECK (VALUE ~ '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$');

create table users(
    id serial primary key,
    email email
);

insert into users (email) values ('michael@test.com');

CREATE DOMAIN valid_color VARCHAR(10) CHECK (VALUE IN ('red', 'blue', 'green'));

create table colors(
    id serial primary key,
    color valid_color
);

insert into colors (color) values ('red');
insert into colors (color) values ('blue');
insert into colors (color) values ('green');
insert into colors (color) values ('yellow');

select typname from pg_catalog.pg_type
join pg_catalog.pg_namespace on pg_type.typnamespace = pg_namespace.oid
where typtype = 'd' and nspname = 'public';