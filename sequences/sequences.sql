CREATE SEQUENCE IF NOT EXISTS test_seq;

select nextval('test_seq');
select currval('test_seq');

select setval('test_seq', 100);
select nextval('test_seq');

select setval('test_seq', 200, false);

select currval('test_seq');
alter sequence test_seq restart with 1;
select nextval('test_seq');

alter sequence test_seq rename to test_seq_new;
select nextval('test_seq_new');

alter sequence test_seq_new rename to test_seq;
alter sequence test_seq increment by 10;
select nextval('test_seq');
select nextval('test_seq');

CREATE SEQUENCE IF NOT EXISTS test_seq_2
INCREMENT BY 50
MINVALUE 400
MAXVALUE 6000
START WITH 5000
CACHE 10;

select nextval('test_seq_2');

CREATE SEQUENCE IF NOT EXISTS test_seq_3 as smallint;
select nextval('test_seq_3');

CREATE SEQUENCE IF NOT EXISTS test_seq_4
INCREMENT -1
MINVALUE 1
MAXVALUE 100
START WITH 100
CACHE 10;

select nextval('test_seq_4');