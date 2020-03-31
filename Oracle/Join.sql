Create table table1(
    id INT PRIMARY KEY,
    color VARCHAR2(100) NOT NULL,
    age VARCHAR2(100) NOT NULL
    );
Create table table2(
    id int primary key,
    color VARCHAR2(100) not null,
    salary VARCHAR2(100) NOT NULL
    );
insert into table1(id,color,age)
values(1,'Red',18);
insert into table1(id,color,age)
values(2,'Green',25);
insert into table1(id,color,age)
values(3,'Blue',19);
insert into table1(id,color,age)
values(4,'Purple',30);
insert into table1(id,color,age)
values(5,'white',20);
insert into table1(id,color,age)
values(6,'Purple',35);
insert into table1(id,color,age)
values(7,'Purple',22);
insert into table1(id,color,age)
values(8,'White',24);
insert into table1(id,color,age)
values(9,'Yellow',12);
-- for table 2
insert into table2(id,color,salary)
values(1,'Green',1000);
insert into table2(id,color,salary)
values(2,'Blue',1100);
insert into table2(id,color,salary)
values(3,'Black',1400);
insert into table2(id,color,salary)
values(4,'Green',1900);
insert into table2(id,color,salary)
values(5,'Red',1200);
insert into table2(id,color,salary)
values(6,'Cyan',1500);
insert into table2(id,color,salary)
values(7,'Brown',2000);

delete from Pallete_b 
    where id=4
select
    a.id id_a,
    a.color color_a,
    b.id id_b,
    b.color color_b
from
    pallete_a a
inner join pallete_b b on a.id = b.id;

select
    *
from
    pallete_b;
    
select
    a.id id_a,
    a.color color_a,
    b.id id_b,
    b.color color_b
from
    pallete_a a
inner join pallete_b b on a.color = b.color;
--where a.color is null;