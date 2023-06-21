select CategoryID,COUNT(*) from products where UnitPrice>20 group by CategoryID having count(*)<10

select Products.ProductID, Products.ProductName,Products.UnitPrice,Categories.CategoryName from 
products inner join Categories on Products.CategoryID=Categories.CategoryID where products.UnitPrice>10

select * from products p left join [Order Details] od on 
p.ProductID=od.OrderID

select * from Customers c left join Orders o on c.CustomerID=o.CustomerID where o.CustomerID is null
 
select * from products p inner join [Order Details] od on p.ProductID=od.ProductID inner join orders o on o.OrderID=od.OrderID

select p.ProductName UrunAdi, SUM(od.UnitPrice*od.Quantity) kazanilan from 
Products p inner join [Order Details] od on p.ProductID=od.ProductID inner join 
Orders o on od.OrderID=o.OrderID group by p.ProductName order by kazanilan desc