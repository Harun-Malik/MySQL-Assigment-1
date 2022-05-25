select * from SalesPeople;
select * from Customers;
select * from Orders;

select count(Sname) from SalesPeople where Sname like 'a%';         --  ----------------->   Answer no-1

select * from Orders join SalesPeople on Orders.Snum = SalesPeople.Snum where Amt > 2000;   --  --------------> Answer No-2

select count(Sname) from SalesPeople where  City = "Newyork";       --  ----------------------> Answer No-3

select * from SalesPeople where City = "London" || City = "Paris";  --  ---------------------------> Answer No-4

select Onum, Odate from Orders right join SalesPeople on Orders.Snum = SalesPeople.Snum;   -- ---------> Answer No-5

