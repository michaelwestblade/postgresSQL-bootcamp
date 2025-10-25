CREATE TABLE actors (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(150),
    last_name VARCHAR(150) not null,
    gender CHAR(1),
    date_of_birth DATE,
    add_date DATE,
    updated_date DATE
);