CREATE TABLE movies_revenues(
    id serial primary key,
    movie_id int references movies(id) not null,
    revenues_domestic numeric (10,2),
    revenues_international numeric (10,2)
);