CREATE TABLE customers(
    id serial primary key,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email varchar(50),
    age int
);

INSERT INTO customers(first_name, last_name, email, age) VALUES ('John', 'Doe', 'john@doe.com', 25);

INSERT INTO customers(first_name, last_name, email, age) VALUES
                                                             ('Billy', 'Bob', 'billy@bob.com', 66),
                                                             ('Jenny', 'Joe', 'jenny@joe.com', 44),
                                                             ('Frank', 'Farts', 'none@other.com', 33),
                                                             ('Susan', 'Slooze', 'mintz@tree.com', 88);


INSERT INTO customers(first_name, last_name, email, age) VALUES ('Bill', 'O''Sullivan', 'john@doe.com', 25);

INSERT INTO customers(first_name, last_name, email, age) VALUES ('Jack', 'Sprat', 'nothing@aol.com', 28) returning id;

UPDATE customers SET age = 29 WHERE id = 1;