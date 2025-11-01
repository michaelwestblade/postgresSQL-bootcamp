create table table_nn(
    id serial primary key,
    tag text not null
);

insert into table_nn (tag)
values ('none');