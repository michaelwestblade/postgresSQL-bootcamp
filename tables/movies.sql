CREATE TABLE movies (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) not null unique,
    length INTEGER,
    language VARCHAR(20),
    age_certification VARCHAR(10),
    release_date DATE,
    director_id INTEGER REFERENCES directors(id),
    add_date DATE,
    updated_date DATE
);