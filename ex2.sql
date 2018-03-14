create table person (
	id integer primary key,
	first_name text,
	last_name text,
	age integer
);

create table pet (
	id integer primary key,
	name text,
	breed text,
	age integer,
	dead integer
);

create table car (
	id integer primary key,
	model text,
	make text,
	year integer
);

create table person_pet (
	person_id integer,
	pet_id integer
);

create table person_car (
	person_id integer,
	car_id integer
);