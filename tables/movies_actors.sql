CREATE TABLE movies_actors(
    movie_id int references movies(id),
    actor_id int references actors(id),
    PRIMARY KEY (movie_id, actor_id)
);