select * from SalesPeople;
select * from Customers;
select * from Orders;

select count(Sname) from SalesPeople where Sname like 'a%';         --  ----------------->   Question no-1

select * from Orders join SalesPeople on Orders.Snum = SalesPeople.Snum where Amt > 2000;   --  --------------> Question No-2

select count(Sname) from SalesPeople where  City = "Newyork";       --  ----------------------> Question No-3

select * from SalesPeople where City = "London" || City = "Paris";  --  ---------------------------> Question No-4

select Onum, Odate from Orders right join SalesPeople on Orders.Snum = SalesPeople.Snum;   -- ---------> Question No-5

