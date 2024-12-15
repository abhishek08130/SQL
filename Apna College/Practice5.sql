create database xyz;
use xyz;
create table employee(id int primary key,empname varchar(50) not null, salary float);

insert into employee values(2,"bob",30000),(3,"casey",40000);
select * from employee;