drop table pet;
drop table person;
drop table person_pet;


-- ex2.sql
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


create table person_pet (
	person_id integer,
	pet_id integer
);

-- ex3.sql
insert into person (id, first_name, last_name, age)
	values (0, 'Zed', 'Shaw', 37);

insert into pet (id, name, breed, age, dead)
	values (0, 'Fluffy', 'Unicorn', 1000, 0);

insert into pet values (1, 'Gigantor', 'Robot', 1, 1);

insert into person (id, first_name, last_name, age)
	values (1, 'Wanwan', 'Orange', 22);

insert into pet (id, name, breed, age, dead)
	values (2, 'Mika', 'Cat', 2, 0);

-- ex4.sql
insert into person_pet (person_id, pet_id) values (0, 0);
insert into person_pet values (0, 1);
insert into person_pet (person_id, pet_id) values (1, 2);

-- ex5.sql
select * from person;

select name, age from pet;

select name, age from pet where dead = 0;

select * from person where first_name != 'Zed';

select * from pet where age > 10;

select * from person where age < 22;

select * from person where age > 22;

select * from person where first_name = "Wanwan" and age < 30;

select first_name, last_name, age from person where id < 1 or age < 30 and age > 10;

-- ex6.sql
select pet.id, pet.name, pet.age, pet.dead
	from pet, person_pet, person
	where
	pet.id = person_pet.pet_id and
	person_pet.person_id = person.id and
	person.id = 0;

-- query to find the pets I've added thus far
select pet.id, pet.name, pet.age, pet.dead
	from pet, person_pet, person
	where 
	pet.id = person_pet.pet_id and
	person_pet.person_id = person.id and
	person.id = 1;

-- ex7.sql
-- make sure there's dead pets
select name, age from pet where dead = 1;

delete from pet where dead = 1;

select * from pet;

insert into pet values (1, "Gigantor", "Robot", 15, 0);

delete from pet where age < 10;

insert into pet (id, name, breed, age, dead) values (3, "Luella", "Chicken", 8, 0);

insert into pet (id, name, breed, age, dead) values (2, "Mika", "Cat", 17, 0);

select * from pet;