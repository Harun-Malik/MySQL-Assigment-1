
create table SalesPeople(
Snum int(4) not null,
Sname varchar(100),
City varchar(100),
comm int(2),
primary key(Snum)
);
select * from SalesPeople;
insert into SalesPeople(Snum, Sname, City, comm)
values(1001, 'Peel', 'London', 12),
(1002, 'Seeres', 'Sanjose', 13),
(1004, 'Motika', 'London', 11),
(1007, 'Rifkin', 'Barcelona', 15),
(1003, 'Axelrod', 'Newyork', 10);

create table Customers(
Cnum int(4) not null,
Cname varchar(100),
City varchar(100) not null,
Snum int(4),
primary key(Cnum),
foreign key(Snum) references SalesPeople(Snum)
);
select * from Customers;

insert into Customers(Cnum, Cname, City, Snum)
values(2001, 'Hoffman', 'London', 1001),
(2002, 'Giovanni', 'Rom', 1003),
(2003,'Liu', 'Sanjose', 1002),
(2004, 'Grass', 'Berlin', 1002),
(2006, 'Clemens', 'London', 1001),
(2008, 'Cisnaros', 'Sanjose', 1007),
(2007, 'Pereira', 'Rome', 1004);

create table Orders(
Onum int(4) not null,
Amt int(6),
Odate date,
Cnum int(4),
Snum int(4),
primary key(Onum),
foreign key(Cnum) references Customers(Cnum),
foreign key(Snum) references salespeople(Snum)
);
select * from Orders;
insert into Orders(Onum, Amt, Odate, Cnum, Snum)
values(3001, 18.69, '1990-10-03', 2008, 1007),
(3003, 767.19, '1990-10-3', 2001, 1001),
(3002, 1900.10, '1990-10-3', 2007, 1004),
(3005, 5160.45, '1990-10-3', 2003, 1002),
(3006, 1098.16, '1990-10-3', 2008, 1007),
(3009, 1713.23, '1990-10-4', 2002, 1003),
(3007, 75.75, '1990-10-4', 2004, 1002),
(3008, 4273.00, '1990-10-5', 2006, 1001),
(3010, 1309.95, '1990-10-6', 2004, 1002),
(3011, 9891.88, '1990-10-6', 2006, 1001);