CREATE TABLE staff(
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    birth_date DATE CHECK ( birth_date > '1900-01-01' ),
    joined_date DATE CHECK ( joined_date > birth_date ),
    salary NUMERIC CHECK ( salary > 0 )
)

INSERT INTO staff (first_name, last_name, birth_date, joined_date, salary) VALUES ('John', 'Doe', '1980-01-01', '2010-01-01', 100000);
INSERT INTO staff (first_name, last_name, birth_date, joined_date, salary) VALUES ('John', 'Doe', '1899-01-01', '2010-01-01', 100000);
INSERT INTO staff (first_name, last_name, birth_date, joined_date, salary) VALUES ('John', 'Doe', '1980-01-01', '1979-01-01', 100000);
INSERT INTO staff (first_name, last_name, birth_date, joined_date, salary) VALUES ('John', 'Doe', '1980-01-01', '2010-01-01', 0);
