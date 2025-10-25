CREATE TABLE directors (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(150),
    last_name VARCHAR(150) not null,
    date_of_birth DATE,
    nationality VARCHAR(20),
    add_date DATE,
    updated_date DATE
);