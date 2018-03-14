select * from person;

select name, age from pet;

select name, age from pet where dead = 0;

select * from person where first_name != 'Zed';

select * from pet where age > 10;

select * from person where age < 22;

select * from person where age > 22;

select * from person where first_name = "Wanwan" and age < 30;

select first_name, last_name, age from person where id < 1 or age < 30 and age > 10;